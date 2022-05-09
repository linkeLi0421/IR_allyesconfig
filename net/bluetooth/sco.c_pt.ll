; ModuleID = '/llk/IR_all_yes/net/bluetooth/sco.c_pt.bc'
source_filename = "../net/bluetooth/sco.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.bt_sock_list = type { %struct.hlist_head, %struct.rwlock_t, ptr }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.129, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.129 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.48, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.140, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.140 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.1, i32, %struct.spinlock }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
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
%struct.hci_cb = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.87 }
%union.anon.87 = type { ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.bdaddr_t = type { [6 x i8] }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sock_common = type { %union.anon.122, %union.anon.124, %union.anon.125, i16, i8, i8, i32, %union.anon.127, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.130, [0 x i32], %union.anon.131, i16, i16, %union.anon.132, %struct.refcount_struct, [0 x i32], %union.anon.133 }
%union.anon.122 = type { i64 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.127 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.99 }
%union.anon.99 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { i32 }
%union.anon.131 = type { %struct.hlist_node }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%struct.sco_pinfo = type { %struct.bt_sock, %struct.bdaddr_t, %struct.bdaddr_t, i32, i16, i8, %struct.bt_codec, ptr }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.134, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.135, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.136, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.134 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.135 = type { ptr }
%union.anon.136 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.2, %union.anon.105, %union.anon.106, [48 x i8], %union.anon.107, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.109, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { i64 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, ptr }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.111, i32, i32, i32, i16, i16, %union.anon.113, i32, %union.anon.114, %union.anon.115, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.111 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i16 }
%struct.sco_conn = type { ptr, %struct.spinlock, ptr, %struct.delayed_work, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.68, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.68 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sockaddr_sco = type { i16, %struct.bdaddr_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bt_voice = type { i16 }
%struct.bt_codecs = type { i8, [0 x %struct.bt_codec] }
%struct.codec_list = type { %struct.list_head, i8, i16, i16, i8, i8, i32, [0 x %struct.hci_codec_caps] }
%struct.hci_codec_caps = type { i8, [0 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.128, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.79, %union.anon.80 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { i64 }
%union.anon.128 = type { ptr }
%struct.sco_options = type { i16 }
%struct.sco_conninfo = type { i16, [3 x i8] }
%struct.hci_cp_accept_conn_req = type { %struct.bdaddr_t, i8 }
%struct.hci_cp_accept_sync_conn_req = type <{ %struct.bdaddr_t, i32, i32, i16, i16, i8, i16 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.141, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.142, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.143, ptr, %struct.address_space, %struct.list_head, %union.anon.144, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.141 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.142 = type { %struct.callback_head }
%union.anon.143 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.144 = type { ptr }

@sco_connect_ind.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sco_connect_ind\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/bluetooth/sco.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hdev %s, bdaddr %pMR\0A\00", [42 x i8] zeroinitializer }, align 32
@sco_sk_list = internal global { %struct.bt_sock_list, [44 x i8] } { %struct.bt_sock_list { %struct.hlist_head zeroinitializer, %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } }, ptr null }, [44 x i8] zeroinitializer }, align 32
@sco_recv_scodata.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sco_recv_scodata\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"conn %p len %u\0A\00", [16 x i8] zeroinitializer }, align 32
@sco_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1016, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.129 zeroinitializer, ptr null, [32 x i8] c"SCO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@sco_sock_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 31, ptr @sco_sock_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SCO socket registration failed\0A\00", [32 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sco\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create SCO proc file\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SCO socket layer initialized\0A\00", [34 x i8] zeroinitializer }, align 32
@sco_cb = internal global { %struct.hci_cb, [32 x i8] } { %struct.hci_cb { %struct.list_head zeroinitializer, ptr @.str.70, ptr @sco_connect_cfm, ptr @sco_disconn_cfm, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@bt_debugfs = external dso_local local_unnamed_addr global ptr, align 4
@sco_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sco_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sco_debugfs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_str_disable_esco = internal constant [23 x i8] c"bluetooth.disable_esco\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@disable_esco = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_esco = internal constant %struct.kernel_param { ptr @__param_str_disable_esco, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.87 { ptr @disable_esco } }, section "__param", align 4
@__UNIQUE_ID_disable_escotype519 = internal constant [37 x i8] c"bluetooth.parmtype=disable_esco:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_esco520 = internal constant [61 x i8] c"bluetooth.parm=disable_esco:Disable eSCO connection creation\00", section ".modinfo", align 1
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sco_sk_list.lock\00", [47 x i8] zeroinitializer }, align 32
@sco_recv_frame.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sco_recv_frame\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sk %p len %u\0A\00", [18 x i8] zeroinitializer }, align 32
@sco_sock_create.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sco_sock_create\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sock %p\0A\00", [23 x i8] zeroinitializer }, align 32
@sco_sock_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 31, ptr null, ptr @sco_sock_release, ptr @sco_sock_bind, ptr @sco_sock_connect, ptr @sock_no_socketpair, ptr @sco_sock_accept, ptr @sco_sock_getname, ptr @bt_sock_poll, ptr @bt_sock_ioctl, ptr @sock_gettstamp, ptr @sco_sock_listen, ptr @sco_sock_shutdown, ptr @sco_sock_setsockopt, ptr @sco_sock_getsockopt, ptr null, ptr @sco_sock_sendmsg, ptr @sco_sock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@sco_sock_release.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sco_sock_release\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sock %p, sk %p\0A\00", [16 x i8] zeroinitializer }, align 32
@sco_sock_clear_timer.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sco_sock_clear_timer\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sock %p state %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__sco_sock_close.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__sco_sock_close\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sk %p state %d socket %p\0A\00", [38 x i8] zeroinitializer }, align 32
@sco_sock_cleanup_listen.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sco_sock_cleanup_listen\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parent %p\0A\00", [21 x i8] zeroinitializer }, align 32
@sco_sock_set_timer.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sco_sock_set_timer\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sock %p state %d timeout %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hci_conn_drop.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.26, ptr @.str.27, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_conn_drop\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/net/bluetooth/hci_core.h\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hcon %p orig refcnt %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sco_chan_del.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sco_chan_del\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sk %p, conn %p, err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sco_sock_kill.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sco_sock_kill\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sk %p state %d\0A\00", [16 x i8] zeroinitializer }, align 32
@sco_sock_bind.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sco_sock_bind\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sk %p %pMR\0A\00", [20 x i8] zeroinitializer }, align 32
@sco_sock_connect.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sco_sock_connect\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sk %p\0A\00", [25 x i8] zeroinitializer }, align 32
@sco_connect.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sco_connect\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%pMR -> %pMR\0A\00", [18 x i8] zeroinitializer }, align 32
@sco_conn_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&conn->lock\00", [20 x i8] zeroinitializer }, align 32
@sco_conn_add.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&conn->timeout_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@sco_conn_add.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&conn->timeout_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@sco_conn_add.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sco_conn_add\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hcon %p conn %p\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sco_sock_timeout.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.18, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sco_sock_timeout\00", [47 x i8] zeroinitializer }, align 32
@__sco_chan_add.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__sco_chan_add\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"conn %p\0A\00", [23 x i8] zeroinitializer }, align 32
@hci_dev_put.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.26, ptr @.str.49, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hci_dev_put\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s orig refcnt %d\0A\00", [45 x i8] zeroinitializer }, align 32
@sco_sock_accept.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sco_sock_accept\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sk %p timeo %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@sco_sock_accept.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.52, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"new socket %p\0A\00", [17 x i8] zeroinitializer }, align 32
@sco_sock_getname.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.16, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sco_sock_getname\00", [47 x i8] zeroinitializer }, align 32
@sco_sock_listen.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sco_sock_listen\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sk %p backlog %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sco_sock_shutdown.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.16, i8 1, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sco_sock_shutdown\00", [46 x i8] zeroinitializer }, align 32
@sco_sock_setsockopt.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.35, i8 0, i8 -47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sco_sock_setsockopt\00", [44 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@sco_sock_getsockopt.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.35, i8 1, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sco_sock_getsockopt\00", [44 x i8] zeroinitializer }, align 32
@sco_sock_getsockopt_old.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.35, i8 0, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sco_sock_getsockopt_old\00", [40 x i8] zeroinitializer }, align 32
@sco_sock_getsockopt_old.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtu %u\0A\00", [24 x i8] zeroinitializer }, align 32
@sco_sock_sendmsg.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.16, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sco_sock_sendmsg\00", [47 x i8] zeroinitializer }, align 32
@sco_send_frame.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sco_send_frame\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sk %p len %d\0A\00", [18 x i8] zeroinitializer }, align 32
@sco_conn_defer_accept.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.47, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sco_conn_defer_accept\00", [42 x i8] zeroinitializer }, align 32
@sco_sock_destruct.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.35, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sco_sock_destruct\00", [46 x i8] zeroinitializer }, align 32
@sco_sock_init.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.35, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sco_sock_init\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SCO\00", [28 x i8] zeroinitializer }, align 32
@sco_connect_cfm.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 1, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sco_connect_cfm\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hcon %p bdaddr %pMR status %u\0A\00", [33 x i8] zeroinitializer }, align 32
@sco_conn_ready.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.47, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sco_conn_ready\00", [17 x i8] zeroinitializer }, align 32
@hci_conn_hold.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.26, ptr @.str.27, i8 1, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci_conn_hold\00", [18 x i8] zeroinitializer }, align 32
@sco_conn_del.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sco_conn_del\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hcon %p conn %p, err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@sco_disconn_cfm.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 1, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sco_disconn_cfm\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hcon %p reason %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%pMR %pMR %d\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 7, i64 11, i64 16, i64 19]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 96]
@__sancov_gen_cov_switch_values.81 = internal global [9 x i64] [i64 7, i64 32, i64 7, i64 11, i64 12, i64 13, i64 14, i64 16, i64 19]
@__sancov_gen_cov_switch_values.82 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 128, i64 129]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1328, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"sco_sk_list\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 40, i32 28 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1384, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [10 x i8] c"sco_proto\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 472, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"sco_sock_family_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1442, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1460, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1464, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1466, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1471, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"sco_cb\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1395, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"sco_debugfs_fops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1417, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant [12 x i8] c"sco_debugfs\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1419, i32 23 }
@___asan_gen_.135 = private unnamed_addr constant [13 x i8] c"disable_esco\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 36, i32 13 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 41, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 311, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 513, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [13 x i8] c"sco_sock_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1421, i32 31 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1244, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 119, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 408, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 378, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 109, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1188, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 160, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 398, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 541, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 571, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 244, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 136, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 137, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 147, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 95, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 214, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1224, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 659, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 695, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 708, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 613, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1214, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 836, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 230, i32 6 }
@___asan_gen_.292 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 214, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 156, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1042, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 974, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 992, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 727, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 293, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 758, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 368, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 461, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1396, i32 11 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1355, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1268, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [36 x i8] c"../include/net/bluetooth/hci_core.h\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1180, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 187, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1372, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.352 = private constant [23 x i8] c"../net/bluetooth/sco.c\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1408, i32 17 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_disable_esco520, ptr @__UNIQUE_ID_disable_escotype519, ptr @__param_disable_esco, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sco_sk_list, ptr @.str.4, ptr @.str.5, ptr @sco_proto, ptr @sco_sock_family_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sco_cb, ptr @sco_debugfs_fops, ptr @sco_debugfs, ptr @disable_esco, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @sco_sock_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @sco_conn_add.__key, ptr @.str.38, ptr @sco_conn_add.__key.39, ptr @.str.40, ptr @sco_conn_add.__key.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sco_sk_list to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sco_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sco_sock_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sco_cb to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sco_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sco_debugfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_esco to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sco_sock_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sco_conn_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sco_conn_add.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sco_conn_add.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sco_connect_ind(ptr noundef %hdev, ptr noundef %bdaddr, ptr nocapture noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_connect_ind.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_connect_ind, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_connect_ind.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef %bdaddr) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #10
  %0 = load ptr, ptr @sco_sk_list, align 4
  %tobool4.not = icmp eq ptr %0, null
  %add.ptr = getelementptr i8, ptr %0, i32 -84
  %tobool6.not5861 = icmp eq ptr %add.ptr, null
  %tobool6.not58 = or i1 %tobool4.not, %tobool6.not5861
  br i1 %tobool6.not58, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %bdaddr10 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sk.059 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr37, %for.inc.for.body_crit_edge ]
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk.059, i32 0, i32 4
  %1 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %cmp.not = icmp eq i8 %2, 4
  br i1 %cmp.not, label %if.end9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %src = getelementptr inbounds %struct.sco_pinfo, ptr %sk.059, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src, ptr noundef dereferenceable(6) %bdaddr10, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool12.not = icmp eq i32 %bcmp, 0
  br i1 %tobool12.not, label %if.end9.if.then20_crit_edge, label %lor.lhs.false

if.end9.if.then20_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end9
  %3 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  %bcmp56 = call i32 @bcmp(ptr noundef dereferenceable(6) %src, ptr noundef nonnull dereferenceable(6) %.compoundliteral, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp56)
  %tobool19.not = icmp eq i32 %bcmp56, 0
  br i1 %tobool19.not, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end9.if.then20_crit_edge
  %flags21 = getelementptr inbounds %struct.bt_sock, ptr %sk.059, i32 0, i32 3
  %4 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags21, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool23.not = icmp eq i32 %and1.i, 0
  br i1 %tobool23.not, label %if.then20.for.end_crit_edge, label %if.then24

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  %8 = or i8 %7, 1
  store i8 %8, ptr %flags, align 1
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = getelementptr inbounds %struct.sock_common, ptr %sk.059, i32 0, i32 15
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool33.not = icmp eq ptr %11, null
  %add.ptr37 = getelementptr i8, ptr %11, i32 -84
  %tobool6.not64 = icmp eq ptr %add.ptr37, null
  %tobool6.not = or i1 %tobool33.not, %tobool6.not64
  br i1 %tobool6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then24, %if.then20.for.end_crit_edge, %do.end.for.end_crit_edge
  %lm.0 = phi i32 [ 32768, %if.then24 ], [ 32768, %if.then20.for.end_crit_edge ], [ 0, %do.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #10
  ret i32 %lm.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sco_recv_scodata(ptr nocapture noundef readonly %hcon, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sco_data = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 67
  %0 = ptrtoint ptr %sco_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sco_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %do.body

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_recv_scodata.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_recv_scodata, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !202

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_recv_scodata.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.5, ptr noundef nonnull %1, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %len6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %do.end.cleanup.sink.split_crit_edge, label %if.then8

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then8:                                         ; preds = %do.end
  %lock.i = getelementptr inbounds %struct.sco_conn, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %sk1.i = getelementptr inbounds %struct.sco_conn, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then8.cleanup.sink.split_crit_edge, label %do.body.i

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body.i:                                        ; preds = %if.then8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_recv_frame.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_recv_scodata, %if.then6.i)) #10
          to label %do.end.i [label %if.then6.i], !srcloc !202

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len6, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_recv_frame.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.12, ptr noundef nonnull %7, i32 noundef %9) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.end.i.cleanup.sink.split_crit_edge

do.end.i.cleanup.sink.split_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end10.i:                                       ; preds = %do.end.i
  %call11.i = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %7, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.cleanup_crit_edge, label %if.end10.i.cleanup.sink.split_crit_edge

if.end10.i.cleanup.sink.split_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end10.i.cleanup.sink.split_crit_edge, %do.end.i.cleanup.sink.split_crit_edge, %if.then8.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.i.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sco_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @sco_proto, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bt_sock_register(i32 noundef 2, ptr noundef nonnull @sco_sock_family_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6) #10
  br label %error

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @bt_procfs_init(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.7, ptr noundef nonnull @sco_sk_list, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8) #10
  tail call void @bt_sock_unregister(i32 noundef 2) #10
  br label %error

if.end8:                                          ; preds = %if.end4
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.9) #10
  %call9 = tail call i32 @hci_register_cb(ptr noundef nonnull @sco_cb) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bt_debugfs to i32))
  %0 = load ptr, ptr @bt_debugfs, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @sco_debugfs_fops) #10
  store ptr %call13, ptr @sco_debugfs, align 4
  br label %cleanup

error:                                            ; preds = %if.then7, %if.then3
  %err.0 = phi i32 [ %call1, %if.then3 ], [ %call5, %if.then7 ]
  tail call void @proto_unregister(ptr noundef nonnull @sco_proto) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end12, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end12 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_register(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_procfs_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sco_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bt_procfs_cleanup(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.7) #10
  %0 = load ptr, ptr @sco_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %0) #10
  %call = tail call i32 @hci_unregister_cb(ptr noundef nonnull @sco_cb) #10
  tail call void @bt_sock_unregister(i32 noundef 2) #10
  tail call void @proto_unregister(ptr noundef nonnull @sco_proto) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_procfs_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_unregister_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_sock_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_create.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_create, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_create.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.14, ptr noundef %sock) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %sock, align 128
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %2)
  %cmp.not = icmp eq i16 %2, 5
  br i1 %cmp.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sco_sock_ops, ptr %ops, align 4
  %call.i = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 31, i32 noundef 2592, ptr noundef nonnull @sco_proto, i32 noundef %kern) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call.i) #10
  %accept_q.i = getelementptr inbounds %struct.bt_sock, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %accept_q.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %accept_q.i, ptr %accept_q.i, align 4
  %prev.i.i = getelementptr inbounds %struct.bt_sock, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %accept_q.i, ptr %prev.i.i, align 4
  %sk_destruct.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 82
  %6 = ptrtoint ptr %sk_destruct.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sco_sock_destruct, ptr %sk_destruct.i, align 4
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 31
  %7 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4000, ptr %sk_sndtimeo.i, align 8
  %8 = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i.i = and i32 %10, -257
  store i32 %and.i.i.i, ptr %8, align 4
  %conv.i = trunc i32 %protocol to i16
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 46
  %11 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %sk_protocol.i, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 2, ptr %skc_state.i, align 2
  %setting.i = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %setting.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 96, ptr %setting.i, align 8
  %codec.i = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %codec.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %codec.i, align 1
  %cid.i = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %cid.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 -1, ptr %cid.i, align 1
  %vid.i = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %vid.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 -1, ptr %vid.i, align 1
  %data_path.i = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %data_path.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %data_path.i, align 1
  tail call void @bt_sock_link(ptr noundef nonnull @sco_sk_list, ptr noundef nonnull %call.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_init.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_create, %if.then.i)) #10
          to label %sco_sock_init.exit [label %if.then.i], !srcloc !202

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_init.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.35, ptr noundef nonnull %call.i) #10
  br label %sco_sock_init.exit

sco_sock_init.exit:                               ; preds = %if.then.i, %if.end9
  %skb_put_cmsg.i = getelementptr inbounds %struct.bt_sock, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %skb_put_cmsg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sco_skb_put_cmsg, ptr %skb_put_cmsg.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sco_sock_init.exit, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sco_sock_init.exit ], [ -94, %do.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_sock_release(ptr noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_release.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_release, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_release.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.16, ptr noundef %sock, ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #10
  %conn.i.i = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %conn.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end6.sco_sock_close.exit_crit_edge, label %do.body.i.i

if.end6.sco_sock_close.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_sock_close.exit

do.body.i.i:                                      ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_release, %if.then4.i.i)) #10
          to label %do.end.i.i [label %if.then4.i.i], !srcloc !202

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.18, ptr noundef nonnull %1, i32 noundef %conv.i.i) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then4.i.i, %do.body.i.i
  %6 = ptrtoint ptr %conn.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn.i.i, align 4
  %timeout_work.i.i = getelementptr inbounds %struct.sco_conn, ptr %7, i32 0, i32 3
  %call7.i.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i.i) #10
  br label %sco_sock_close.exit

sco_sock_close.exit:                              ; preds = %do.end.i.i, %if.end6.sco_sock_close.exit_crit_edge
  tail call fastcc void @__sco_sock_close(ptr noundef nonnull %1) #10
  tail call void @release_sock(ptr noundef nonnull %1) #10
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %sco_sock_close.exit.if.end15_crit_edge, label %land.lhs.true

sco_sock_close.exit.if.end15_crit_edge:           ; preds = %sco_sock_close.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %sco_sock_close.exit
  %sk_lingertime = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 48
  %12 = ptrtoint ptr %sk_lingertime to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sk_lingertime, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true9

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true9:                                   ; preds = %land.lhs.true
  %14 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true9.if.end15_crit_edge

land.lhs.true9.if.end15_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #10
  %20 = ptrtoint ptr %sk_lingertime to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sk_lingertime, align 8
  %call14 = tail call i32 @bt_sock_wait_state(ptr noundef nonnull %1, i32 noundef 9, i32 noundef %21) #10
  tail call void @release_sock(ptr noundef nonnull %1) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true9.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %sco_sock_close.exit.if.end15_crit_edge
  %err.0 = phi i32 [ 0, %land.lhs.true9.if.end15_crit_edge ], [ %call14, %if.then12 ], [ 0, %land.lhs.true.if.end15_crit_edge ], [ 0, %sco_sock_close.exit.if.end15_crit_edge ]
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %8, align 4
  %or.i.i.i = or i32 %23, 1
  store i32 %or.i.i.i, ptr %8, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %24 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sk_socket.i.i, align 8
  %25 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %25, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  tail call fastcc void @sco_sock_kill(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end15 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_sock_bind(ptr nocapture noundef readonly %sock, ptr noundef %addr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %addr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 8
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %3)
  %cmp3.not = icmp eq i16 %3, 31
  br i1 %cmp3.not, label %do.body, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_bind.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_bind, %if.then8)) #10
          to label %do.end [label %if.then8], !srcloc !202

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %sco_bdaddr = getelementptr inbounds %struct.sockaddr_sco, ptr %addr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_bind.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.33, ptr noundef %1, ptr noundef %sco_bdaddr) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp11.not = icmp eq i8 %5, 2
  br i1 %cmp11.not, label %if.end14, label %do.end.done_crit_edge

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end14:                                         ; preds = %do.end
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %7)
  %cmp16.not = icmp eq i16 %7, 5
  br i1 %cmp16.not, label %if.end19, label %if.end14.done_crit_edge

if.end14.done_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %src = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 1
  %sco_bdaddr20 = getelementptr inbounds %struct.sockaddr_sco, ptr %addr, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %src, ptr %sco_bdaddr20, i32 6)
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 3, ptr %skc_state, align 2
  br label %done

done:                                             ; preds = %if.end19, %if.end14.done_crit_edge, %do.end.done_crit_edge
  %err.0 = phi i32 [ 0, %if.end19 ], [ -77, %do.end.done_crit_edge ], [ -22, %if.end14.done_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %done, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %done ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_sock_connect(ptr nocapture noundef readonly %sock, ptr noundef %addr, i32 noundef %alen, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_connect.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_connect, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_connect.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.35, ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %alen)
  %cmp = icmp ult i32 %alen, 8
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %3)
  %cmp4.not = icmp eq i16 %3, 31
  br i1 %cmp4.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp9.not = icmp eq i8 %5, 2
  br i1 %cmp9.not, label %if.end7.if.end17_crit_edge, label %land.lhs.true

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end7
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp14.not = icmp eq i8 %7, 3
  br i1 %cmp14.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %8 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %9)
  %cmp19.not = icmp eq i16 %9, 5
  br i1 %cmp19.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %sco_bdaddr = getelementptr inbounds %struct.sockaddr_sco, ptr %addr, i32 0, i32 1
  %src = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 1
  %call23 = tail call ptr @hci_get_route(ptr noundef %sco_bdaddr, ptr noundef %src, i8 noundef zeroext 0) #10
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %lock = getelementptr inbounds %struct.hci_dev, ptr %call23, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %dst = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %dst, ptr %sco_bdaddr, i32 6)
  %call28 = tail call fastcc i32 @sco_connect(ptr noundef nonnull %call23, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_connect, %if.then.i)) #10
          to label %hci_dev_put.exit [label %if.then.i], !srcloc !202

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %call23, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %call23, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #10
  %11 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.49, ptr noundef %name.i, i32 noundef %12) #10
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i, %if.end26
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %call23, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool30.not = icmp eq i32 %call28, 0
  br i1 %tobool30.not, label %if.end32, label %hci_dev_put.exit.done_crit_edge

hci_dev_put.exit.done_crit_edge:                  ; preds = %hci_dev_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end32:                                         ; preds = %hci_dev_put.exit
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %cond.false.i, label %if.end32.sock_sndtimeo.exit_crit_edge

if.end32.sock_sndtimeo.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %13 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end32.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %14, %cond.false.i ], [ 0, %if.end32.sock_sndtimeo.exit_crit_edge ]
  %call35 = tail call i32 @bt_sock_wait_state(ptr noundef %1, i32 noundef 1, i32 noundef %cond.i) #10
  br label %done

done:                                             ; preds = %sock_sndtimeo.exit, %hci_dev_put.exit.done_crit_edge
  %err.0 = phi i32 [ %call28, %hci_dev_put.exit.done_crit_edge ], [ %call35, %sock_sndtimeo.exit ]
  tail call void @release_sock(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %done ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -77, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -113, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_sock_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
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
  %5 = tail call i32 @llvm.read_register.i32(metadata !192) #10
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
  %sk5 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %13 = ptrtoint ptr %sk5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk5, align 16
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #10
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_rcvtimeo.exit_crit_edge

entry.sock_rcvtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 62
  %15 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %16, %cond.false.i ], [ 0, %entry.sock_rcvtimeo.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_accept.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_accept, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_accept.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.51, ptr noundef %14, i32 noundef %cond.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %sock_rcvtimeo.exit
  %17 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %17, align 8
  call void @add_wait_queue_exclusive(ptr noundef %19, ptr noundef nonnull %wait) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %20 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp.not82 = icmp eq i8 %21, 4
  br i1 %cmp.not82, label %do.end.if.end15_crit_edge, label %do.end.while.end.thread_crit_edge

do.end.while.end.thread_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread

do.end.if.end15_crit_edge:                        ; preds = %do.end
  br label %if.end15

if.end15:                                         ; preds = %if.end29.if.end15_crit_edge, %do.end.if.end15_crit_edge
  %timeo.083 = phi i32 [ %call30, %if.end29.if.end15_crit_edge ], [ %cond.i, %do.end.if.end15_crit_edge ]
  %call16 = call ptr @bt_accept_dequeue(ptr noundef %14, ptr noundef %newsock) #10
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end19, label %if.end34

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.083)
  %tobool20.not = icmp eq i32 %timeo.083, 0
  br i1 %tobool20.not, label %if.end19.while.end.thread_crit_edge, label %if.end22

if.end19.while.end.thread_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread

if.end22:                                         ; preds = %if.end19
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end22.if.then27_crit_edge, !prof !203

if.end22.if.then27_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

signal_pending.exit:                              ; preds = %if.end22
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %and1.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool26.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool26.not, label %if.end29, label %signal_pending.exit.if.then27_crit_edge

signal_pending.exit.if.then27_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then27:                                        ; preds = %signal_pending.exit.if.then27_crit_edge, %if.end22.if.then27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %timeo.083)
  %cmp.i = icmp eq i32 %timeo.083, 2147483647
  %cond.i70 = select i1 %cmp.i, i32 -512, i32 -4
  br label %while.end.thread

if.end29:                                         ; preds = %signal_pending.exit
  call void @release_sock(ptr noundef %14) #10
  %call30 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %timeo.083) #10
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #10
  %31 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %skc_state, align 2
  %cmp.not = icmp eq i8 %32, 4
  br i1 %cmp.not, label %if.end29.if.end15_crit_edge, label %if.end29.while.end.thread_crit_edge

if.end29.while.end.thread_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread

if.end29.if.end15_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

while.end.thread:                                 ; preds = %if.end29.while.end.thread_crit_edge, %if.then27, %if.end19.while.end.thread_crit_edge, %do.end.while.end.thread_crit_edge
  %err.0.ph = phi i32 [ %cond.i70, %if.then27 ], [ -77, %do.end.while.end.thread_crit_edge ], [ -11, %if.end19.while.end.thread_crit_edge ], [ -77, %if.end29.while.end.thread_crit_edge ]
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %17, align 8
  call void @remove_wait_queue(ptr noundef %34, ptr noundef nonnull %wait) #10
  br label %done

if.end34:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %17, align 8
  call void @remove_wait_queue(ptr noundef %36, ptr noundef nonnull %wait) #10
  %37 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %newsock, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_accept.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_accept, %if.then47)) #10
          to label %done [label %if.then47], !srcloc !202

if.then47:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_accept.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.52, ptr noundef nonnull %call16) #10
  br label %done

done:                                             ; preds = %if.then47, %if.end34, %while.end.thread
  %err.077 = phi i32 [ %err.0.ph, %while.end.thread ], [ 0, %if.then47 ], [ 0, %if.end34 ]
  call void @release_sock(ptr noundef %14) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  ret i32 %err.077
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_sock_getname(ptr noundef %sock, ptr nocapture noundef writeonly %addr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_getname.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_getname, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_getname.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.16, ptr noundef %sock, ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 31, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool4.not = icmp eq i32 %peer, 0
  %sco_bdaddr6 = getelementptr inbounds %struct.sockaddr_sco, ptr %addr, i32 0, i32 1
  %src = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 1
  %dst = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 2
  %src.sink = select i1 %tobool4.not, ptr %src, ptr %dst
  %3 = call ptr @memcpy(ptr %sco_bdaddr6, ptr %src.sink, i32 6)
  ret i32 8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_sock_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %src2 = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_listen.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_listen, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_listen.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.55, ptr noundef %1, i32 noundef %backlog) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.not = icmp eq i8 %3, 3
  br i1 %cmp.not, label %if.end7, label %do.end.done_crit_edge

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end7:                                          ; preds = %do.end
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %4 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %5)
  %cmp9.not = icmp eq i16 %5, 5
  br i1 %cmp9.not, label %if.end12, label %if.end7.done_crit_edge

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end12:                                         ; preds = %if.end7
  tail call void @_raw_write_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #10
  %6 = load ptr, ptr @sco_sk_list, align 4
  %tobool.not.i = icmp eq ptr %6, null
  %add.ptr.i = getelementptr i8, ptr %6, i32 -84
  %tobool2.not2832.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not28.i = or i1 %tobool.not.i, %tobool2.not2832.i
  br i1 %tobool2.not28.i, label %if.end12.if.end16_crit_edge, label %if.end12.for.body.i_crit_edge

if.end12.for.body.i_crit_edge:                    ; preds = %if.end12
  br label %for.body.i

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12.for.body.i_crit_edge
  %sk.029.i = phi ptr [ %add.ptr14.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end12.for.body.i_crit_edge ]
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk.029.i, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp.not.i = icmp eq i8 %8, 4
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %src.i = getelementptr inbounds %struct.sco_pinfo, ptr %sk.029.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src.i, ptr noundef dereferenceable(6) %src2, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool4.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool4.not.i, label %if.end.i.unlock_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = getelementptr inbounds %struct.sock_common, ptr %sk.029.i, i32 0, i32 15
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool10.not.i = icmp eq ptr %11, null
  %add.ptr14.i = getelementptr i8, ptr %11, i32 -84
  %tobool2.not33.i = icmp eq ptr %add.ptr14.i, null
  %tobool2.not.i = or i1 %tobool10.not.i, %tobool2.not33.i
  br i1 %tobool2.not.i, label %for.inc.i.if.end16_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end16_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end16:                                         ; preds = %for.inc.i.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %12 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  %sk_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %13 = ptrtoint ptr %sk_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sk_ack_backlog, align 4
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 4, ptr %skc_state, align 2
  br label %unlock

unlock:                                           ; preds = %if.end16, %if.end.i.unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end16 ], [ -98, %if.end.i.unlock_crit_edge ]
  tail call void @_raw_write_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #10
  br label %done

done:                                             ; preds = %unlock, %if.end7.done_crit_edge, %do.end.done_crit_edge
  %err.1 = phi i32 [ %err.0, %unlock ], [ -77, %do.end.done_crit_edge ], [ -22, %if.end7.done_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #10
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_sock_shutdown(ptr noundef %sock, i32 noundef %how) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_shutdown.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_shutdown, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_shutdown.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.16, ptr noundef %sock, ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !204
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end6.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !205

if.end6.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end6
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !203

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end6.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end6.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #10
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %4 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sk_shutdown, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.then8, label %sock_hold.exit.if.end19_crit_edge

sock_hold.exit.if.end19_crit_edge:                ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then8:                                         ; preds = %sock_hold.exit
  %6 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %sk_shutdown, align 2
  %conn.i = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then8.sco_sock_clear_timer.exit_crit_edge, label %do.body.i

if.then8.sco_sock_clear_timer.exit_crit_edge:     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_sock_clear_timer.exit

do.body.i:                                        ; preds = %if.then8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_shutdown, %if.then4.i)) #10
          to label %do.end.i [label %if.then4.i], !srcloc !202

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.18, ptr noundef nonnull %1, i32 noundef %conv.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %11 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn.i, align 4
  %timeout_work.i = getelementptr inbounds %struct.sco_conn, ptr %12, i32 0, i32 3
  %call7.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #10
  br label %sco_sock_clear_timer.exit

sco_sock_clear_timer.exit:                        ; preds = %do.end.i, %if.then8.sco_sock_clear_timer.exit_crit_edge
  tail call fastcc void @__sco_sock_close(ptr noundef nonnull %1)
  %13 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %sco_sock_clear_timer.exit.if.end19_crit_edge, label %land.lhs.true

sco_sock_clear_timer.exit.if.end19_crit_edge:     ; preds = %sco_sock_clear_timer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %sco_sock_clear_timer.exit
  %sk_lingertime = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 48
  %17 = ptrtoint ptr %sk_lingertime to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_lingertime, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool11.not = icmp eq i32 %18, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true12

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true12:                                  ; preds = %land.lhs.true
  %19 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true12.if.end19_crit_edge

land.lhs.true12.if.end19_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 @bt_sock_wait_state(ptr noundef nonnull %1, i32 noundef 9, i32 noundef %18) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true12.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %sco_sock_clear_timer.exit.if.end19_crit_edge, %sock_hold.exit.if.end19_crit_edge
  %err.0 = phi i32 [ 0, %sock_hold.exit.if.end19_crit_edge ], [ 0, %land.lhs.true12.if.end19_crit_edge ], [ %call17, %if.then15 ], [ 0, %land.lhs.true.if.end19_crit_edge ], [ 0, %sco_sock_clear_timer.exit.if.end19_crit_edge ]
  tail call void @release_sock(ptr noundef nonnull %1) #10
  %call.i.i.i.i.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !207
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i38 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i38, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !203

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  tail call void @sk_free(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_sock_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %voice = alloca %struct.bt_voice, align 2
  %opt = alloca i32, align 4
  %buffer = alloca [255 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %voice) #10
  %2 = ptrtoint ptr %voice to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %voice, align 2, !annotation !209
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #10
  %3 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %opt, align 4, !annotation !209
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %buffer) #10
  %4 = call ptr @memset(ptr %buffer, i32 255, i32 255)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_setsockopt.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_setsockopt, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_setsockopt.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.35, ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %5 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %optname, label %do.end.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 11, label %sw.bb20
    i32 16, label %sw.bb74
    i32 19, label %sw.bb89
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.not = icmp eq i8 %7, 3
  br i1 %cmp.not, label %sw.bb.if.end11_crit_edge, label %land.lhs.true

sw.bb.if.end11_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %sw.bb
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp8.not = icmp eq i8 %9, 4
  br i1 %cmp8.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %sw.bb.if.end11_crit_edge
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %10 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end11
  tail call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 156) #10
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 4, i32 -1226833920) #15, !srcloc !210
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !203

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #10
  %12 = call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #6, !srcloc !211
  %and.i.i.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #10, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %10, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end15thread-pre-split, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !203

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i249 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i249
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i249)
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %10, align 1
  %18 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %opt, align 4
  br label %if.end15

if.end15thread-pre-split:                         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %opt, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15thread-pre-split, %if.end.i.i
  %20 = phi i32 [ %.pr, %if.end15thread-pre-split ], [ %17, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  %flags18 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 0, ptr noundef %flags18) #10
  br label %sw.epilog

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags18) #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end
  %skc_state22 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %skc_state22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp24.not = icmp eq i8 %22, 2
  br i1 %cmp24.not, label %sw.bb20.if.end39_crit_edge, label %land.lhs.true26

sw.bb20.if.end39_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true26:                                  ; preds = %sw.bb20
  %23 = ptrtoint ptr %skc_state22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %skc_state22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp30.not = icmp eq i8 %24, 3
  br i1 %cmp30.not, label %land.lhs.true26.if.end39_crit_edge, label %land.lhs.true32

land.lhs.true26.if.end39_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true32:                                  ; preds = %land.lhs.true26
  %25 = ptrtoint ptr %skc_state22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %skc_state22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %26)
  %cmp36.not = icmp eq i8 %26, 6
  br i1 %cmp36.not, label %land.lhs.true32.if.end39_crit_edge, label %land.lhs.true32.sw.epilog_crit_edge

land.lhs.true32.sw.epilog_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true32.if.end39_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true32.if.end39_crit_edge, %land.lhs.true26.if.end39_crit_edge, %sw.bb20.if.end39_crit_edge
  %setting = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %setting to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %setting, align 8
  %29 = ptrtoint ptr %voice to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %voice, align 2
  %30 = tail call i32 @llvm.umin.i32(i32 %optlen, i32 2)
  %call44 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %voice, [2 x i32] %optval.coerce, i32 noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end39.sw.epilog_crit_edge

if.end39.sw.epilog_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end47:                                         ; preds = %if.end39
  %31 = ptrtoint ptr %voice to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %voice, align 2
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %32, label %if.end47.sw.epilog_crit_edge [
    i16 3, label %if.end47.if.end58_crit_edge
    i16 96, label %if.end47.if.end58_crit_edge258
  ]

if.end47.if.end58_crit_edge258:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end58:                                         ; preds = %if.end47.if.end58_crit_edge, %if.end47.if.end58_crit_edge258
  %34 = ptrtoint ptr %setting to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %32, ptr %setting, align 8
  %dst = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 2
  %src = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 1
  %call61 = call ptr @hci_get_route(ptr noundef %dst, ptr noundef %src, i8 noundef zeroext 0) #10
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.end58.sw.epilog_crit_edge, label %if.end64

if.end58.sw.epilog_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end64:                                         ; preds = %if.end58
  %arrayidx = getelementptr %struct.hci_dev, ptr %call61, i32 0, i32 27, i32 29
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %37 = and i8 %36, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool66.not = icmp eq i8 %37, 0
  br i1 %tobool66.not, label %if.end64.if.end73_crit_edge, label %land.lhs.true67

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true67:                                  ; preds = %if.end64
  %38 = ptrtoint ptr %voice to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %voice, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %39)
  %cmp70 = icmp eq i16 %39, 3
  br i1 %cmp70, label %if.then72, label %land.lhs.true67.if.end73_crit_edge

land.lhs.true67.if.end73_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then72:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  %codec = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %codec to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %codec, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %land.lhs.true67.if.end73_crit_edge, %if.end64.if.end73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_setsockopt, %if.then.i)) #10
          to label %hci_dev_put.exit [label %if.then.i], !srcloc !202

if.then.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %call61, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %call61, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i205 = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #10
  %41 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %kref.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.49, ptr noundef %name.i, i32 noundef %42) #10
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i, %if.end73
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %call61, i32 0, i32 204
  call void @put_device(ptr noundef %dev4.i) #10
  br label %sw.epilog

sw.bb74:                                          ; preds = %do.end
  %src.coerce.fca.0.extract.i.i206 = extractvalue [2 x i32] %optval.coerce, 0
  %43 = inttoptr i32 %src.coerce.fca.0.extract.i.i206 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i207 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i207)
  %bf.cast.i.i.i208 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i207, 0
  br i1 %bf.cast.i.i.i208, label %if.end.i.i231, label %if.end8.i.i.i.i213

if.end8.i.i.i.i213:                               ; preds = %sw.bb74
  tail call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 156) #10
  %call.i.i.i.i214 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i.i214, label %if.end8.i.i.i.i213.if.then11.i.i.i.i230_crit_edge, label %land.lhs.true.i.i.i.i217

if.end8.i.i.i.i213.if.then11.i.i.i.i230_crit_edge: ; preds = %if.end8.i.i.i.i213
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i230

land.lhs.true.i.i.i.i217:                         ; preds = %if.end8.i.i.i.i213
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %43, i32 4, i32 -1226833920) #15, !srcloc !210
  %asmresult.i.i.i.i215 = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i215)
  %cmp.i6.i.i.i216 = icmp eq i32 %asmresult.i.i.i.i215, 0
  br i1 %cmp.i6.i.i.i216, label %if.end.i.i.i.i227, label %land.lhs.true.i.i.i.i217.if.then11.i.i.i.i230_crit_edge, !prof !203

land.lhs.true.i.i.i.i217.if.then11.i.i.i.i230_crit_edge: ; preds = %land.lhs.true.i.i.i.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i230

if.end.i.i.i.i227:                                ; preds = %land.lhs.true.i.i.i.i217
  %call.i.i.i.i.i218 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #10
  %45 = call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i.i.i.i.i219 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i.i.i219 to ptr
  %cpu_domain.i.i.i.i.i.i.i220 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i220) #6, !srcloc !211
  %and.i.i.i.i.i.i221 = and i32 %47, -13
  %or.i.i.i.i.i.i222 = or i32 %and.i.i.i.i.i.i221, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i222) #10, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %call1.i.i.i.i.i223 = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %43, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #10, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i223)
  %tobool4.not.i.i.i.i226 = icmp eq i32 %call1.i.i.i.i.i223, 0
  br i1 %tobool4.not.i.i.i.i226, label %if.end78thread-pre-split, label %if.end.i.i.i.i227.if.then11.i.i.i.i230_crit_edge, !prof !203

if.end.i.i.i.i227.if.then11.i.i.i.i230_crit_edge: ; preds = %if.end.i.i.i.i227
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i230

if.then11.i.i.i.i230:                             ; preds = %if.end.i.i.i.i227.if.then11.i.i.i.i230_crit_edge, %land.lhs.true.i.i.i.i217.if.then11.i.i.i.i230_crit_edge, %if.end8.i.i.i.i213.if.then11.i.i.i.i230_crit_edge
  %res.0.i.i.i.i225254 = phi i32 [ %call1.i.i.i.i.i223, %if.end.i.i.i.i227.if.then11.i.i.i.i230_crit_edge ], [ 4, %if.end8.i.i.i.i213.if.then11.i.i.i.i230_crit_edge ], [ 4, %land.lhs.true.i.i.i.i217.if.then11.i.i.i.i230_crit_edge ]
  %sub.i.i.i.i228 = sub i32 4, %res.0.i.i.i.i225254
  %add.ptr.i.i.i.i229 = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i228
  %48 = call ptr @memset(ptr %add.ptr.i.i.i.i229, i32 0, i32 %res.0.i.i.i.i225254)
  br label %sw.epilog

if.end.i.i231:                                    ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %43, align 1
  %51 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %opt, align 4
  br label %if.end78

if.end78thread-pre-split:                         ; preds = %if.end.i.i.i.i227
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr257 = load i32, ptr %opt, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.end78thread-pre-split, %if.end.i.i231
  %53 = phi i32 [ %.pr257, %if.end78thread-pre-split ], [ %50, %if.end.i.i231 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool79.not = icmp eq i32 %53, 0
  %cmsg_mask84 = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 5
  %54 = ptrtoint ptr %cmsg_mask84 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cmsg_mask84, align 2
  br i1 %tobool79.not, label %if.else83, label %if.then80

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %56 = or i8 %55, 1
  %57 = ptrtoint ptr %cmsg_mask84 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %cmsg_mask84, align 2
  br label %sw.epilog

if.else83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %58 = and i8 %55, 1
  %59 = ptrtoint ptr %cmsg_mask84 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %cmsg_mask84, align 2
  br label %sw.epilog

sw.bb89:                                          ; preds = %do.end
  %skc_state91 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %skc_state91 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load volatile i8, ptr %skc_state91, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp93.not = icmp eq i8 %61, 2
  br i1 %cmp93.not, label %sw.bb89.if.end108_crit_edge, label %land.lhs.true95

sw.bb89.if.end108_crit_edge:                      ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

land.lhs.true95:                                  ; preds = %sw.bb89
  %62 = ptrtoint ptr %skc_state91 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load volatile i8, ptr %skc_state91, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %63)
  %cmp99.not = icmp eq i8 %63, 3
  br i1 %cmp99.not, label %land.lhs.true95.if.end108_crit_edge, label %land.lhs.true101

land.lhs.true95.if.end108_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

land.lhs.true101:                                 ; preds = %land.lhs.true95
  %64 = ptrtoint ptr %skc_state91 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load volatile i8, ptr %skc_state91, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %65)
  %cmp105.not = icmp eq i8 %65, 6
  br i1 %cmp105.not, label %land.lhs.true101.if.end108_crit_edge, label %land.lhs.true101.sw.epilog_crit_edge

land.lhs.true101.sw.epilog_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true101.if.end108_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.end108:                                        ; preds = %land.lhs.true101.if.end108_crit_edge, %land.lhs.true95.if.end108_crit_edge, %sw.bb89.if.end108_crit_edge
  %dst109 = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 2
  %src110 = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 1
  %call111 = tail call ptr @hci_get_route(ptr noundef %dst109, ptr noundef %src110, i8 noundef zeroext 0) #10
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %if.end108.sw.epilog_crit_edge, label %if.end114

if.end108.sw.epilog_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end114:                                        ; preds = %if.end108
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %call111, i32 0, i32 206, i32 1
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %arrayidx.i, align 4
  %68 = and i32 %67, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool116.not = icmp eq i32 %68, 0
  br i1 %tobool116.not, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_setsockopt, %if.then.i237)) #10
          to label %hci_dev_put.exit239 [label %if.then.i237], !srcloc !202

if.then.i237:                                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  %name.i234 = getelementptr inbounds %struct.hci_dev, ptr %call111, i32 0, i32 2
  %kref.i235 = getelementptr inbounds %struct.hci_dev, ptr %call111, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i236 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i235, i32 noundef 4) #10
  %69 = ptrtoint ptr %kref.i235 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %kref.i235, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.49, ptr noundef %name.i234, i32 noundef %70) #10
  br label %hci_dev_put.exit239

hci_dev_put.exit239:                              ; preds = %if.then.i237, %if.then117
  %dev4.i238 = getelementptr inbounds %struct.hci_dev, ptr %call111, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i238) #10
  br label %sw.epilog

if.end118:                                        ; preds = %if.end114
  %get_data_path_id = getelementptr inbounds %struct.hci_dev, ptr %call111, i32 0, i32 246
  %71 = ptrtoint ptr %get_data_path_id to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %get_data_path_id, align 8
  %tobool119.not = icmp eq ptr %72, null
  br i1 %tobool119.not, label %if.then120, label %if.end121

if.then120:                                       ; preds = %if.end118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_setsockopt, %if.then.i243)) #10
          to label %hci_dev_put.exit245 [label %if.then.i243], !srcloc !202

if.then.i243:                                     ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  %name.i240 = getelementptr inbounds %struct.hci_dev, ptr %call111, i32 0, i32 2
  %kref.i241 = getelementptr inbounds %struct.hci_dev, ptr %call111, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i242 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i241, i32 noundef 4) #10
  %73 = ptrtoint ptr %kref.i241 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %kref.i241, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.49, ptr noundef %name.i240, i32 noundef %74) #10
  br label %hci_dev_put.exit245

hci_dev_put.exit245:                              ; preds = %if.then.i243, %if.then120
  %dev4.i244 = getelementptr inbounds %struct.hci_dev, ptr %call111, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i244) #10
  br label %sw.epilog

if.end121:                                        ; preds = %if.end118
  %75 = add i32 %optlen, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %75)
  %76 = icmp ult i32 %75, -255
  br i1 %76, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hci_dev_put(ptr noundef nonnull %call111)
  br label %sw.epilog

if.end127:                                        ; preds = %if.end121
  %call129 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %buffer, [2 x i32] %optval.coerce, i32 noundef %optlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.then131

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hci_dev_put(ptr noundef nonnull %call111)
  br label %sw.epilog

if.end132:                                        ; preds = %if.end127
  %77 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp135 = icmp ugt i8 %78, 1
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @hci_dev_put(ptr noundef nonnull %call111)
  br label %sw.epilog

if.end138:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  %codec139 = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 6
  %codecs140 = getelementptr inbounds %struct.bt_codecs, ptr %buffer, i32 0, i32 1
  %79 = call ptr @memcpy(ptr %codec139, ptr %codecs140, i32 7)
  call fastcc void @hci_dev_put(ptr noundef nonnull %call111)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end138, %if.then137, %if.then131, %if.then126, %hci_dev_put.exit245, %hci_dev_put.exit239, %if.end108.sw.epilog_crit_edge, %land.lhs.true101.sw.epilog_crit_edge, %if.else83, %if.then80, %if.then11.i.i.i.i230, %hci_dev_put.exit, %if.end58.sw.epilog_crit_edge, %if.end47.sw.epilog_crit_edge, %if.end39.sw.epilog_crit_edge, %land.lhs.true32.sw.epilog_crit_edge, %if.else, %if.then17, %if.then11.i.i.i.i, %land.lhs.true.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %if.then126 ], [ -14, %if.then131 ], [ -22, %if.then137 ], [ 0, %if.end138 ], [ -95, %hci_dev_put.exit245 ], [ -95, %hci_dev_put.exit239 ], [ 0, %if.then80 ], [ 0, %if.else83 ], [ 0, %hci_dev_put.exit ], [ 0, %if.then17 ], [ 0, %if.else ], [ -22, %land.lhs.true.sw.epilog_crit_edge ], [ -22, %land.lhs.true32.sw.epilog_crit_edge ], [ -14, %if.end39.sw.epilog_crit_edge ], [ -22, %if.end47.sw.epilog_crit_edge ], [ -77, %if.end58.sw.epilog_crit_edge ], [ -22, %land.lhs.true101.sw.epilog_crit_edge ], [ -77, %if.end108.sw.epilog_crit_edge ], [ -92, %do.end.sw.epilog_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i.i.i230 ]
  call void @release_sock(ptr noundef %1) #10
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %buffer) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %voice) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_sock_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  %voice = alloca %struct.bt_voice, align 2
  %codec = alloca %struct.bt_codec, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %voice) #10
  %2 = ptrtoint ptr %voice to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %voice, align 2, !annotation !209
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %codec) #10
  %3 = getelementptr inbounds %struct.bt_codec, ptr %codec, i32 0, i32 1
  %4 = getelementptr inbounds %struct.bt_codec, ptr %codec, i32 0, i32 2
  %5 = getelementptr inbounds %struct.bt_codec, ptr %codec, i32 0, i32 3
  %6 = getelementptr inbounds %struct.bt_codec, ptr %codec, i32 0, i32 4
  %7 = call ptr @memset(ptr %codec, i32 255, i32 7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_getsockopt.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_getsockopt, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_getsockopt.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.35, ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %level)
  %cmp = icmp eq i32 %level, 17
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call fastcc i32 @sco_sock_getsockopt_old(ptr noundef %sock, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen)
  br label %cleanup

if.end6:                                          ; preds = %do.end
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1047) #10
  %8 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !211
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %11 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #10, !srcloc !214
  %asmresult = extractvalue { i32, i32 } %11, 0
  %asmresult9 = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool11.not = icmp eq i32 %asmresult, 0
  br i1 %tobool11.not, label %if.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %12 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %optname, label %if.end13.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 11, label %sw.bb39
    i32 14, label %sw.bb48
    i32 16, label %sw.bb75
    i32 12, label %if.end13.sw.bb95_crit_edge
    i32 13, label %if.end13.sw.bb95_crit_edge485
    i32 19, label %sw.bb122
  ]

if.end13.sw.bb95_crit_edge485:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb95

if.end13.sw.bb95_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb95

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp14.not = icmp eq i8 %14, 3
  br i1 %cmp14.not, label %sw.bb.if.end22_crit_edge, label %land.lhs.true

sw.bb.if.end22_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %sw.bb
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp19.not = icmp eq i8 %16, 4
  br i1 %cmp19.not, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %sw.bb.if.end22_crit_edge
  %flags = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %18, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1061) #10
  %19 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i384 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i384 to ptr
  %cpu_domain.i.i385 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i385) #6, !srcloc !211
  %and.i386 = and i32 %21, -13
  %or.i387 = or i32 %and.i386, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i387) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %22 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %and1.i, i32 -1226833921) #10, !srcloc !215
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool36.not = icmp eq i32 %22, 0
  %spec.select = select i1 %tobool36.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end13
  %setting = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %setting to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %setting, align 8
  %25 = ptrtoint ptr %voice to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %voice, align 2
  %26 = tail call i32 @llvm.umin.i32(i32 %asmresult9, i32 2)
  call void @__check_object_size(ptr noundef nonnull %voice, i32 noundef %26, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.bb39.copy_to_user.exit_crit_edge, label %if.end.i.i

sw.bb39.copy_to_user.exit_crit_edge:              ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %sw.bb39
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %26, i32 -1226833920) #15, !srcloc !216
  %asmresult.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %voice, i32 noundef %26) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %voice, i32 noundef %26) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %sw.bb39.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %26, %sw.bb39.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %26, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool45.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select383 = select i1 %tobool45.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end13
  %skc_state50 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %skc_state50 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %skc_state50, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp52.not = icmp eq i8 %29, 1
  br i1 %cmp52.not, label %if.end55, label %sw.bb48.sw.epilog_crit_edge

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end55:                                         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  %conn = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %conn, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call56 = tail call i32 @hci_conn_get_phy(ptr noundef %33) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1083) #10
  %34 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i388 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i388 to ptr
  %cpu_domain.i.i389 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i389) #6, !srcloc !211
  %and.i390 = and i32 %36, -13
  %or.i391 = or i32 %and.i390, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i391) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %37 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %call56, i32 -1226833921) #10, !srcloc !217
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool72.not = icmp eq i32 %37, 0
  %spec.select379 = select i1 %tobool72.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %cmsg_mask = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %cmsg_mask to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cmsg_mask, align 2
  %40 = and i8 %39, 1
  %and = zext i8 %40 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1090) #10
  %41 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i392 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i392 to ptr
  %cpu_domain.i.i393 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i393) #6, !srcloc !211
  %and.i394 = and i32 %43, -13
  %or.i395 = or i32 %and.i394, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i395) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %44 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %and, i32 -1226833921) #10, !srcloc !218
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool92.not = icmp eq i32 %44, 0
  %spec.select380 = select i1 %tobool92.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end13.sw.bb95_crit_edge, %if.end13.sw.bb95_crit_edge485
  %skc_state97 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %skc_state97 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load volatile i8, ptr %skc_state97, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp99.not = icmp eq i8 %46, 1
  br i1 %cmp99.not, label %if.end102, label %sw.bb95.sw.epilog_crit_edge

sw.bb95.sw.epilog_crit_edge:                      ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end102:                                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #12
  %conn107 = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 7
  %47 = ptrtoint ptr %conn107 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %conn107, align 4
  %mtu = getelementptr inbounds %struct.sco_conn, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mtu, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1101) #10
  %51 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i396 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i396 to ptr
  %cpu_domain.i.i397 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i397) #6, !srcloc !211
  %and.i398 = and i32 %53, -13
  %or.i399 = or i32 %and.i398, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i399) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %54 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %50, i32 -1226833921) #10, !srcloc !219
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool119.not = icmp eq i32 %54, 0
  %spec.select381 = select i1 %tobool119.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.end13
  %dst = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 2
  %src = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 1
  %call123 = tail call ptr @hci_get_route(ptr noundef %dst, ptr noundef %src, i8 noundef zeroext 0) #10
  %tobool124.not = icmp eq ptr %call123, null
  br i1 %tobool124.not, label %sw.bb122.sw.epilog_crit_edge, label %if.end126

sw.bb122.sw.epilog_crit_edge:                     ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end126:                                        ; preds = %sw.bb122
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %call123, i32 0, i32 206, i32 1
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %arrayidx.i, align 4
  %57 = and i32 %56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool128.not = icmp eq i32 %57, 0
  br i1 %tobool128.not, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hci_dev_put(ptr noundef nonnull %call123)
  br label %sw.epilog

if.end130:                                        ; preds = %if.end126
  %get_data_path_id = getelementptr inbounds %struct.hci_dev, ptr %call123, i32 0, i32 246
  %58 = ptrtoint ptr %get_data_path_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get_data_path_id, align 8
  %tobool131.not = icmp eq ptr %59, null
  br i1 %tobool131.not, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hci_dev_put(ptr noundef nonnull %call123)
  br label %sw.epilog

if.end133:                                        ; preds = %if.end130
  %lock = getelementptr inbounds %struct.hci_dev, ptr %call123, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %local_codecs = getelementptr inbounds %struct.hci_dev, ptr %call123, i32 0, i32 198
  %60 = ptrtoint ptr %local_codecs to i32
  call void @__asan_load4_noabort(i32 %60)
  %c.0458 = load ptr, ptr %local_codecs, align 4
  %cmp136.not459 = icmp eq ptr %c.0458, %local_codecs
  br i1 %cmp136.not459, label %if.end133.for.end165_crit_edge, label %if.end133.for.body_crit_edge

if.end133.for.body_crit_edge:                     ; preds = %if.end133
  br label %for.body

if.end133.for.end165_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end165

for.body:                                         ; preds = %for.inc159.for.body_crit_edge, %if.end133.for.body_crit_edge
  %c.0462 = phi ptr [ %c.0, %for.inc159.for.body_crit_edge ], [ %c.0458, %if.end133.for.body_crit_edge ]
  %buf_len.0461 = phi i32 [ %buf_len.2, %for.inc159.for.body_crit_edge ], [ 0, %if.end133.for.body_crit_edge ]
  %num_codecs.0460 = phi i8 [ %num_codecs.1, %for.inc159.for.body_crit_edge ], [ 0, %if.end133.for.body_crit_edge ]
  %transport = getelementptr inbounds %struct.codec_list, ptr %c.0462, i32 0, i32 4
  %61 = ptrtoint ptr %transport to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %transport, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp141.not = icmp eq i8 %62, 1
  br i1 %cmp141.not, label %if.end144, label %for.body.for.inc159_crit_edge

for.body.for.inc159_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc159

if.end144:                                        ; preds = %for.body
  %inc = add i8 %num_codecs.0460, 1
  %num_caps = getelementptr inbounds %struct.codec_list, ptr %c.0462, i32 0, i32 5
  %63 = ptrtoint ptr %num_caps to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %num_caps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp150454.not = icmp eq i8 %64, 0
  br i1 %cmp150454.not, label %if.end144.for.end_crit_edge, label %for.body152.preheader

if.end144.for.end_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body152.preheader:                            ; preds = %if.end144
  %caps145 = getelementptr inbounds %struct.codec_list, ptr %c.0462, i32 0, i32 7
  br label %for.body152

for.body152:                                      ; preds = %for.body152.for.body152_crit_edge, %for.body152.preheader
  %buf_len.1457 = phi i32 [ %add155, %for.body152.for.body152_crit_edge ], [ %buf_len.0461, %for.body152.preheader ]
  %i.0456 = phi i8 [ %inc157, %for.body152.for.body152_crit_edge ], [ 0, %for.body152.preheader ]
  %caps.0455 = phi ptr [ %arrayidx, %for.body152.for.body152_crit_edge ], [ %caps145, %for.body152.preheader ]
  %65 = ptrtoint ptr %caps.0455 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %caps.0455, align 1
  %conv154 = zext i8 %66 to i32
  %add = add i32 %buf_len.1457, 1
  %add155 = add i32 %add, %conv154
  %arrayidx = getelementptr %struct.hci_codec_caps, ptr %caps.0455, i32 0, i32 1, i32 %conv154
  %inc157 = add nuw i8 %i.0456, 1
  %cmp150 = icmp ult i8 %inc157, %64
  br i1 %cmp150, label %for.body152.for.body152_crit_edge, label %for.body152.for.end_crit_edge

for.body152.for.end_crit_edge:                    ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body152.for.body152_crit_edge:                ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body152

for.end:                                          ; preds = %for.body152.for.end_crit_edge, %if.end144.for.end_crit_edge
  %buf_len.1.lcssa = phi i32 [ %buf_len.0461, %if.end144.for.end_crit_edge ], [ %add155, %for.body152.for.end_crit_edge ]
  %add158 = add i32 %buf_len.1.lcssa, 7
  br label %for.inc159

for.inc159:                                       ; preds = %for.end, %for.body.for.inc159_crit_edge
  %num_codecs.1 = phi i8 [ %num_codecs.0460, %for.body.for.inc159_crit_edge ], [ %inc, %for.end ]
  %buf_len.2 = phi i32 [ %buf_len.0461, %for.body.for.inc159_crit_edge ], [ %add158, %for.end ]
  %67 = ptrtoint ptr %c.0462 to i32
  call void @__asan_load4_noabort(i32 %67)
  %c.0 = load ptr, ptr %c.0462, align 4
  %cmp136.not = icmp eq ptr %c.0, %local_codecs
  br i1 %cmp136.not, label %for.inc159.for.end165_crit_edge, label %for.inc159.for.body_crit_edge

for.inc159.for.body_crit_edge:                    ; preds = %for.inc159
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc159.for.end165_crit_edge:                  ; preds = %for.inc159
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end165

for.end165:                                       ; preds = %for.inc159.for.end165_crit_edge, %if.end133.for.end165_crit_edge
  %num_codecs.0.lcssa = phi i8 [ 0, %if.end133.for.end165_crit_edge ], [ %num_codecs.1, %for.inc159.for.end165_crit_edge ]
  %buf_len.0.lcssa = phi i32 [ 0, %if.end133.for.end165_crit_edge ], [ %buf_len.2, %for.inc159.for.end165_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %add167 = add i32 %buf_len.0.lcssa, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add167, i32 %asmresult9)
  %cmp168 = icmp sgt i32 %add167, %asmresult9
  br i1 %cmp168, label %if.then170, label %if.end171

if.then170:                                       ; preds = %for.end165
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hci_dev_put(ptr noundef nonnull %call123)
  br label %sw.epilog

if.end171:                                        ; preds = %for.end165
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1149) #10
  %68 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i401 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i401 to ptr
  %cpu_domain.i.i402 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 4
  %70 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i402) #6, !srcloc !211
  %and.i403 = and i32 %70, -13
  %or.i404 = or i32 %and.i403, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i404) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %71 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i8 %num_codecs.0.lcssa, i32 -1226833921) #10, !srcloc !220
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool187.not = icmp eq i32 %71, 0
  br i1 %tobool187.not, label %if.end189, label %if.then188

if.then188:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hci_dev_put(ptr noundef nonnull %call123)
  br label %sw.epilog

if.end189:                                        ; preds = %if.end171
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %72 = ptrtoint ptr %local_codecs to i32
  call void @__asan_load4_noabort(i32 %72)
  %c.1470 = load ptr, ptr %local_codecs, align 4
  %cmp200.not471 = icmp eq ptr %c.1470, %local_codecs
  br i1 %cmp200.not471, label %if.end189.land.lhs.true264_crit_edge, label %for.body204.preheader

if.end189.land.lhs.true264_crit_edge:             ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true264

for.body204.preheader:                            ; preds = %if.end189
  %add.ptr190 = getelementptr i8, ptr %optval, i32 1
  br label %for.body204

for.body204:                                      ; preds = %for.inc256.for.body204_crit_edge, %for.body204.preheader
  %c.1474 = phi ptr [ %c.1, %for.inc256.for.body204_crit_edge ], [ %c.1470, %for.body204.preheader ]
  %err.0473 = phi i32 [ %err.1, %for.inc256.for.body204_crit_edge ], [ 0, %for.body204.preheader ]
  %ptr.0472 = phi ptr [ %ptr.1, %for.inc256.for.body204_crit_edge ], [ %add.ptr190, %for.body204.preheader ]
  %transport205 = getelementptr inbounds %struct.codec_list, ptr %c.1474, i32 0, i32 4
  %73 = ptrtoint ptr %transport205 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %transport205, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp207.not = icmp eq i8 %74, 1
  br i1 %cmp207.not, label %if.end210, label %for.body204.for.inc256_crit_edge

for.body204.for.inc256_crit_edge:                 ; preds = %for.body204
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc256

if.end210:                                        ; preds = %for.body204
  %id = getelementptr inbounds %struct.codec_list, ptr %c.1474, i32 0, i32 1
  %75 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %id, align 4
  %77 = ptrtoint ptr %codec to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %codec, align 1
  %cid = getelementptr inbounds %struct.codec_list, ptr %c.1474, i32 0, i32 2
  %78 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %cid, align 2
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %79, ptr %3, align 1
  %vid = getelementptr inbounds %struct.codec_list, ptr %c.1474, i32 0, i32 3
  %81 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vid, align 4
  %83 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %82, ptr %4, align 1
  %84 = ptrtoint ptr %get_data_path_id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %get_data_path_id, align 8
  %call215 = call i32 %85(ptr noundef nonnull %call123, ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %cmp216 = icmp slt i32 %call215, 0
  br i1 %cmp216, label %if.end210.if.end282_crit_edge, label %if.end219

if.end210.if.end282_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

if.end219:                                        ; preds = %if.end210
  %num_caps220 = getelementptr inbounds %struct.codec_list, ptr %c.1474, i32 0, i32 5
  %86 = ptrtoint ptr %num_caps220 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %num_caps220, align 1
  %88 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %6, align 1
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 174) #10
  %call.i.i410 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i410, label %if.end219.if.end282_crit_edge, label %if.end.i.i414

if.end219.if.end282_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

if.end.i.i414:                                    ; preds = %if.end219
  %89 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ptr.0472, i32 7, i32 -1226833920) #15, !srcloc !216
  %asmresult.i.i412 = extractvalue { i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i412)
  %cmp.i6.i413 = icmp eq i32 %asmresult.i.i412, 0
  br i1 %cmp.i6.i413, label %copy_to_user.exit419, label %if.end.i.i414.if.end282_crit_edge

if.end.i.i414.if.end282_crit_edge:                ; preds = %if.end.i.i414
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

copy_to_user.exit419:                             ; preds = %if.end.i.i414
  %call.i.i.i415 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %codec, i32 noundef 7) #10
  %call.i12.i.i416 = call i32 @arm_copy_to_user(ptr noundef %ptr.0472, ptr noundef nonnull %codec, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i416)
  %tobool223.not = icmp eq i32 %call.i12.i.i416, 0
  br i1 %tobool223.not, label %if.end225, label %copy_to_user.exit419.if.end282_crit_edge

copy_to_user.exit419.if.end282_crit_edge:         ; preds = %copy_to_user.exit419
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

if.end225:                                        ; preds = %copy_to_user.exit419
  %add.ptr226 = getelementptr i8, ptr %ptr.0472, i32 7
  %caps227 = getelementptr inbounds %struct.codec_list, ptr %c.1474, i32 0, i32 7
  %90 = ptrtoint ptr %num_caps220 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %num_caps220, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp233465.not = icmp eq i8 %91, 0
  br i1 %cmp233465.not, label %if.end225.if.end254_crit_edge, label %if.end225.for.body235_crit_edge

if.end225.for.body235_crit_edge:                  ; preds = %if.end225
  br label %for.body235

if.end225.if.end254_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

for.body235:                                      ; preds = %for.body235.for.body235_crit_edge, %if.end225.for.body235_crit_edge
  %len.0468 = phi i32 [ %add239, %for.body235.for.body235_crit_edge ], [ 0, %if.end225.for.body235_crit_edge ]
  %i.1467 = phi i8 [ %inc245, %for.body235.for.body235_crit_edge ], [ 0, %if.end225.for.body235_crit_edge ]
  %caps.1466 = phi ptr [ %arrayidx243, %for.body235.for.body235_crit_edge ], [ %caps227, %if.end225.for.body235_crit_edge ]
  %92 = ptrtoint ptr %caps.1466 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %caps.1466, align 1
  %conv237 = zext i8 %93 to i32
  %add238 = add i32 %len.0468, 1
  %add239 = add i32 %add238, %conv237
  %arrayidx243 = getelementptr %struct.hci_codec_caps, ptr %caps.1466, i32 0, i32 1, i32 %conv237
  %inc245 = add nuw i8 %i.1467, 1
  %cmp233 = icmp ult i8 %inc245, %91
  br i1 %cmp233, label %for.body235.for.body235_crit_edge, label %for.end246

for.body235.for.body235_crit_edge:                ; preds = %for.body235
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body235

for.end246:                                       ; preds = %for.body235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add239)
  %tobool247.not = icmp eq i32 %add239, 0
  br i1 %tobool247.not, label %for.end246.if.end254_crit_edge, label %if.end8.i.i426

for.end246.if.end254_crit_edge:                   ; preds = %for.end246
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

if.end8.i.i426:                                   ; preds = %for.end246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add239)
  %cmp9.i.i = icmp slt i32 %add239, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i427

land.rhs16.i.i:                                   ; preds = %if.end8.i.i426
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.end282_crit_edge, label %if.then27.i.i, !prof !203

land.rhs16.i.i.if.end282_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %if.end282

if.then.i.i.i427:                                 ; preds = %if.end8.i.i426
  call void @__check_object_size(ptr noundef %caps227, i32 noundef %add239, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 174) #10
  %call.i.i428 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i428, label %if.then.i.i.i427.if.end282_crit_edge, label %if.end.i.i432

if.then.i.i.i427.if.end282_crit_edge:             ; preds = %if.then.i.i.i427
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

if.end.i.i432:                                    ; preds = %if.then.i.i.i427
  %94 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr226, i32 %add239, i32 -1226833920) #15, !srcloc !216
  %asmresult.i.i430 = extractvalue { i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i430)
  %cmp.i6.i431 = icmp eq i32 %asmresult.i.i430, 0
  br i1 %cmp.i6.i431, label %copy_to_user.exit437, label %if.end.i.i432.if.end282_crit_edge

if.end.i.i432.if.end282_crit_edge:                ; preds = %if.end.i.i432
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

copy_to_user.exit437:                             ; preds = %if.end.i.i432
  %call.i.i.i433 = call zeroext i1 @__kasan_check_read(ptr noundef %caps227, i32 noundef %add239) #10
  %call.i12.i.i434 = call i32 @arm_copy_to_user(ptr noundef %add.ptr226, ptr noundef %caps227, i32 noundef %add239) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i434)
  %tobool252.not = icmp eq i32 %call.i12.i.i434, 0
  br i1 %tobool252.not, label %copy_to_user.exit437.if.end254_crit_edge, label %copy_to_user.exit437.if.end282_crit_edge

copy_to_user.exit437.if.end282_crit_edge:         ; preds = %copy_to_user.exit437
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

copy_to_user.exit437.if.end254_crit_edge:         ; preds = %copy_to_user.exit437
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

if.end254:                                        ; preds = %copy_to_user.exit437.if.end254_crit_edge, %for.end246.if.end254_crit_edge, %if.end225.if.end254_crit_edge
  %len.0.lcssa480 = phi i32 [ %add239, %copy_to_user.exit437.if.end254_crit_edge ], [ 0, %for.end246.if.end254_crit_edge ], [ 0, %if.end225.if.end254_crit_edge ]
  %add.ptr255 = getelementptr i8, ptr %add.ptr226, i32 %len.0.lcssa480
  br label %for.inc256

for.inc256:                                       ; preds = %if.end254, %for.body204.for.inc256_crit_edge
  %ptr.1 = phi ptr [ %ptr.0472, %for.body204.for.inc256_crit_edge ], [ %add.ptr255, %if.end254 ]
  %err.1 = phi i32 [ %err.0473, %for.body204.for.inc256_crit_edge ], [ %call215, %if.end254 ]
  %95 = ptrtoint ptr %c.1474 to i32
  call void @__asan_load4_noabort(i32 %95)
  %c.1 = load ptr, ptr %c.1474, align 4
  %cmp200.not = icmp eq ptr %c.1, %local_codecs
  br i1 %cmp200.not, label %for.end262, label %for.inc256.for.body204_crit_edge

for.inc256.for.body204_crit_edge:                 ; preds = %for.inc256
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body204

for.end262:                                       ; preds = %for.inc256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool263.not = icmp eq i32 %err.1, 0
  br i1 %tobool263.not, label %for.end262.land.lhs.true264_crit_edge, label %for.end262.if.end282_crit_edge

for.end262.if.end282_crit_edge:                   ; preds = %for.end262
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282

for.end262.land.lhs.true264_crit_edge:            ; preds = %for.end262
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true264

land.lhs.true264:                                 ; preds = %for.end262.land.lhs.true264_crit_edge, %if.end189.land.lhs.true264_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1192) #10
  %96 = call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i438 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i438 to ptr
  %cpu_domain.i.i439 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 4
  %98 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i439) #6, !srcloc !211
  %and.i440 = and i32 %98, -13
  %or.i441 = or i32 %and.i440, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i441) #10, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %99 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %add167, i32 -1226833921) #10, !srcloc !221
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #10, !srcloc !212
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool280.not = icmp eq i32 %99, 0
  %spec.select382 = select i1 %tobool280.not, i32 0, i32 -14
  br label %if.end282

if.end282:                                        ; preds = %land.lhs.true264, %for.end262.if.end282_crit_edge, %copy_to_user.exit437.if.end282_crit_edge, %if.end.i.i432.if.end282_crit_edge, %if.then.i.i.i427.if.end282_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.end282_crit_edge, %copy_to_user.exit419.if.end282_crit_edge, %if.end.i.i414.if.end282_crit_edge, %if.end219.if.end282_crit_edge, %if.end210.if.end282_crit_edge
  %err.3 = phi i32 [ %err.1, %for.end262.if.end282_crit_edge ], [ %spec.select382, %land.lhs.true264 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.if.end282_crit_edge ], [ -14, %if.end.i.i432.if.end282_crit_edge ], [ -14, %if.then.i.i.i427.if.end282_crit_edge ], [ -14, %if.end.i.i414.if.end282_crit_edge ], [ -14, %if.end219.if.end282_crit_edge ], [ %call215, %if.end210.if.end282_crit_edge ], [ -14, %copy_to_user.exit419.if.end282_crit_edge ], [ -14, %copy_to_user.exit437.if.end282_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  call fastcc void @hci_dev_put(ptr noundef nonnull %call123)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end282, %if.then188, %if.then170, %if.then132, %if.then129, %sw.bb122.sw.epilog_crit_edge, %if.end102, %sw.bb95.sw.epilog_crit_edge, %sw.bb75, %if.end55, %sw.bb48.sw.epilog_crit_edge, %copy_to_user.exit, %if.end22, %land.lhs.true.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge
  %err.4 = phi i32 [ -105, %if.then170 ], [ -14, %if.then188 ], [ %err.3, %if.end282 ], [ -95, %if.then132 ], [ -95, %if.then129 ], [ -22, %land.lhs.true.sw.epilog_crit_edge ], [ %spec.select, %if.end22 ], [ -107, %sw.bb48.sw.epilog_crit_edge ], [ %spec.select379, %if.end55 ], [ %spec.select380, %sw.bb75 ], [ -107, %sw.bb95.sw.epilog_crit_edge ], [ %spec.select381, %if.end102 ], [ -77, %sw.bb122.sw.epilog_crit_edge ], [ -92, %if.end13.sw.epilog_crit_edge ], [ %spec.select383, %copy_to_user.exit ]
  call void @release_sock(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end6.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %err.4, %sw.epilog ], [ -14, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %codec) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %voice) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_sock_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_sendmsg.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_sendmsg, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_sendmsg.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.16, ptr noundef %sock, ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.end.if.end7_crit_edge, label %sock_error.exit, !prof !203

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

sock_error.exit:                                  ; preds = %do.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #10, !srcloc !223
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !224
  %sub.i = sub i32 0, %asmresult.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool5.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool5.not, label %sock_error.exit.if.end7_crit_edge, label %sock_error.exit.cleanup_crit_edge

sock_error.exit.cleanup_crit_edge:                ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sock_error.exit.if.end7_crit_edge:                ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %sock_error.exit.if.end7_crit_edge, %do.end.if.end7_crit_edge
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %5 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_flags, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #10
  %7 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %err.i, align 4, !annotation !209
  %and.i = and i32 %6, 64
  %add.i.i = add i32 %len, 8
  %call.i.i42 = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add.i.i, i32 noundef %and.i, ptr noundef nonnull %err.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i42, null
  br i1 %tobool.not.i.i, label %land.lhs.true.critedge.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i42, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i42, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %11, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  br label %if.end4.i.i

land.lhs.true.critedge.i.i:                       ; preds = %if.end10
  %12 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.critedge.i.i.if.end4.i.i_crit_edge, label %land.lhs.true.critedge.i.i.if.then.i_crit_edge

land.lhs.true.critedge.i.i.if.then.i_crit_edge:   ; preds = %land.lhs.true.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.critedge.i.i.if.end4.i.i_crit_edge: ; preds = %land.lhs.true.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %land.lhs.true.critedge.i.i.if.end4.i.i_crit_edge, %if.then.i.i
  %14 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %sock_error.exit.thread.i.i, label %sock_error.exit.i.i, !prof !203

sock_error.exit.thread.i.i:                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %err.i, align 4
  br label %if.end8.i.i

sock_error.exit.i.i:                              ; preds = %if.end4.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !222
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #10
  %17 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #10, !srcloc !223
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !224
  %sub.i.i.i = sub i32 0, %asmresult.i.i.i.i
  %18 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i.i.i, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool6.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool6.not.i.i, label %sock_error.exit.i.i.if.end8.i.i_crit_edge, label %sock_error.exit.i.i.out.i.i_crit_edge

sock_error.exit.i.i.out.i.i_crit_edge:            ; preds = %sock_error.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

sock_error.exit.i.i.if.end8.i.i_crit_edge:        ; preds = %sock_error.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %sock_error.exit.i.i.if.end8.i.i_crit_edge, %sock_error.exit.thread.i.i
  %sk_shutdown.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %19 = ptrtoint ptr %sk_shutdown.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sk_shutdown.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool9.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool9.not.i.i, label %bt_skb_send_alloc.exit.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -104, ptr %err.i, align 4
  br label %out.i.i

out.i.i:                                          ; preds = %if.then10.i.i, %sock_error.exit.i.i.out.i.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %call.i.i42, i32 noundef 0) #10
  br label %if.then.i

bt_skb_send_alloc.exit.i:                         ; preds = %if.end8.i.i
  br i1 %tobool.not.i.i, label %bt_skb_send_alloc.exit.i.if.then.i_crit_edge, label %if.end.i43

bt_skb_send_alloc.exit.i.if.then.i_crit_edge:     ; preds = %bt_skb_send_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %bt_skb_send_alloc.exit.i.if.then.i_crit_edge, %out.i.i, %land.lhs.true.critedge.i.i.if.then.i_crit_edge
  %22 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err.i, align 4
  %24 = inttoptr i32 %23 to ptr
  br label %bt_skb_sendmsg.exit

if.end.i43:                                       ; preds = %bt_skb_send_alloc.exit.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i42, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i.i, label %do.body2.i.i, !prof !203

do.body2.i.i:                                     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2502, 0\0A.popsection", ""() #10, !srcloc !225
  unreachable

skb_tailroom.exit.i.i:                            ; preds = %if.end.i43
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i42, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i42, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %len)
  %cmp.i2.i = icmp ugt i32 %sub.ptr.sub.i.i.i, %len
  %31 = add i32 %sub.ptr.rhs.cast.i.i.i, %len
  %sub9.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %31
  %.sink.i.i = select i1 %cmp.i2.i, i32 %sub9.i.i, i32 0
  %32 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i42, i32 0, i32 15, i32 0, i32 13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink.i.i, ptr %32, align 4
  %call3.i = call ptr @skb_put(ptr noundef nonnull %call.i.i42, i32 noundef %len) #10
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %skb_tailroom.exit.i.i
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !203

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__check_object_size(ptr noundef %call3.i, i32 noundef %len, i1 noundef zeroext false) #10
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call3.i, i32 noundef %len, ptr noundef %msg_iter.i) #10
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %len)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %len
  br i1 %cmp.i.i, label %if.end7.i, label %bt_skb_sendmsg.exit.thread, !prof !203

bt_skb_sendmsg.exit.thread:                       ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i42, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #10
  br label %if.then13

if.end7.i:                                        ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk_priority.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  %34 = ptrtoint ptr %sk_priority.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sk_priority.i, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i42, i32 0, i32 15, i32 0, i32 6
  %36 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %priority.i, align 4
  br label %bt_skb_sendmsg.exit

bt_skb_sendmsg.exit:                              ; preds = %if.end7.i, %if.then.i
  %retval.0.i44 = phi ptr [ %call.i.i42, %if.end7.i ], [ %24, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #10
  %cmp.i = icmp ugt ptr %retval.0.i44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bt_skb_sendmsg.exit.if.then13_crit_edge, label %if.end15

bt_skb_sendmsg.exit.if.then13_crit_edge:          ; preds = %bt_skb_sendmsg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %bt_skb_sendmsg.exit.if.then13_crit_edge, %bt_skb_sendmsg.exit.thread
  %retval.0.i4453 = phi ptr [ inttoptr (i32 -14 to ptr), %bt_skb_sendmsg.exit.thread ], [ %retval.0.i44, %bt_skb_sendmsg.exit.if.then13_crit_edge ]
  %37 = ptrtoint ptr %retval.0.i4453 to i32
  br label %cleanup

if.end15:                                         ; preds = %bt_skb_sendmsg.exit
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp = icmp eq i8 %39, 1
  br i1 %cmp, label %if.then17, label %if.end15.if.end19.thread_crit_edge

if.end15.if.end19.thread_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.thread

if.then17:                                        ; preds = %if.end15
  %conn1.i = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 7
  %40 = ptrtoint ptr %conn1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %conn1.i, align 4
  %len2.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i44, i32 0, i32 6
  %42 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len2.i, align 4
  %mtu.i = getelementptr inbounds %struct.sco_conn, ptr %41, i32 0, i32 4
  %44 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp.i45 = icmp ugt i32 %43, %45
  br i1 %cmp.i45, label %if.then17.if.end19.thread_crit_edge, label %do.body.i

if.then17.if.end19.thread_crit_edge:              ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.thread

do.body.i:                                        ; preds = %if.then17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_send_frame.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_sendmsg, %if.then5.i46)) #10
          to label %if.end19 [label %if.then5.i46], !srcloc !202

if.then5.i46:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_send_frame.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.66, ptr noundef %1, i32 noundef %43) #10
  br label %if.end19

if.end19.thread:                                  ; preds = %if.then17.if.end19.thread_crit_edge, %if.end15.if.end19.thread_crit_edge
  %err.0.ph = phi i32 [ -22, %if.then17.if.end19.thread_crit_edge ], [ -107, %if.end15.if.end19.thread_crit_edge ]
  call void @release_sock(ptr noundef %1) #10
  br label %if.then22

if.end19:                                         ; preds = %if.then5.i46, %do.body.i
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %41, align 4
  call void @hci_send_sco(ptr noundef %47, ptr noundef %retval.0.i44) #10
  call void @release_sock(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp20 = icmp slt i32 %43, 0
  br i1 %cmp20, label %if.end19.if.then22_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then22:                                        ; preds = %if.end19.if.then22_crit_edge, %if.end19.thread
  %err.060 = phi i32 [ %err.0.ph, %if.end19.thread ], [ %43, %if.end19.if.then22_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %retval.0.i44, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end19.cleanup_crit_edge, %if.then13, %if.end7.cleanup_crit_edge, %sock_error.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %37, %if.then13 ], [ %sub.i, %sock_error.exit.cleanup_crit_edge ], [ -95, %if.end7.cleanup_crit_edge ], [ %err.060, %if.then22 ], [ %43, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_sock_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp = icmp eq i8 %3, 6
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags3 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags3, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conn = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %setting = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %setting to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %setting, align 8
  tail call fastcc void @sco_conn_defer_accept(ptr noundef %9, i16 noundef zeroext %11)
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 7, ptr %skc_state, align 2
  tail call void @release_sock(ptr noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @release_sock(ptr noundef %1) #10
  %call6 = tail call i32 @bt_sock_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_wait_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sco_sock_kill(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %4 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_socket, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_kill.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_kill, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !202

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_kill.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.31, ptr noundef %sk, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call void @bt_sock_unlink(ptr noundef nonnull @sco_sk_list, ptr noundef %sk) #10
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %or.i.i = or i32 %9, 1
  store i32 %or.i.i, ptr %0, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !207
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !203

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %return

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  tail call void @sk_free(ptr noundef %sk) #10
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__sco_sock_close(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__sco_sock_close.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__sco_sock_close, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %1 to i32
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %2 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_socket, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__sco_sock_close.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.20, ptr noundef %sk, i32 noundef %conv, ptr noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %skc_state4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state4, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %5, label %sw.default [
    i8 4, label %sw.bb
    i8 1, label %do.end.sw.bb6_crit_edge
    i8 7, label %do.end.sw.bb6_crit_edge60
    i8 6, label %do.end.sw.bb19_crit_edge
    i8 5, label %do.end.sw.bb19_crit_edge61
    i8 8, label %do.end.sw.bb19_crit_edge62
  ]

do.end.sw.bb19_crit_edge62:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

do.end.sw.bb19_crit_edge61:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

do.end.sw.bb19_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

do.end.sw.bb6_crit_edge60:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

do.end.sw.bb6_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

sw.bb:                                            ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_cleanup_listen.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__sco_sock_close, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !202

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_cleanup_listen.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.22, ptr noundef %sk) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb
  %call3.i57 = tail call ptr @bt_accept_dequeue(ptr noundef %sk, ptr noundef null) #10
  %tobool4.not.i58 = icmp eq ptr %call3.i57, null
  br i1 %tobool4.not.i58, label %do.end.i.sco_sock_cleanup_listen.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.sco_sock_cleanup_listen.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_sock_cleanup_listen.exit

while.body.i:                                     ; preds = %sco_sock_close.exit.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %call3.i59 = phi ptr [ %call3.i, %sco_sock_close.exit.while.body.i_crit_edge ], [ %call3.i57, %do.end.i.while.body.i_crit_edge ]
  tail call void @lock_sock_nested(ptr noundef nonnull %call3.i59, i32 noundef 0) #10
  %conn.i.i = getelementptr inbounds %struct.sco_pinfo, ptr %call3.i59, i32 0, i32 7
  %7 = ptrtoint ptr %conn.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %while.body.i.sco_sock_close.exit_crit_edge, label %do.body.i.i

while.body.i.sco_sock_close.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_sock_close.exit

do.body.i.i:                                      ; preds = %while.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__sco_sock_close, %if.then4.i.i)) #10
          to label %do.end.i.i [label %if.then4.i.i], !srcloc !202

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %call3.i59, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.18, ptr noundef nonnull %call3.i59, i32 noundef %conv.i.i) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then4.i.i, %do.body.i.i
  %11 = ptrtoint ptr %conn.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn.i.i, align 4
  %timeout_work.i.i = getelementptr inbounds %struct.sco_conn, ptr %12, i32 0, i32 3
  %call7.i.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i.i) #10
  br label %sco_sock_close.exit

sco_sock_close.exit:                              ; preds = %do.end.i.i, %while.body.i.sco_sock_close.exit_crit_edge
  tail call fastcc void @__sco_sock_close(ptr noundef nonnull %call3.i59) #10
  tail call void @release_sock(ptr noundef nonnull %call3.i59) #10
  tail call fastcc void @sco_sock_kill(ptr noundef nonnull %call3.i59) #10
  %call3.i = tail call ptr @bt_accept_dequeue(ptr noundef %sk, ptr noundef null) #10
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %sco_sock_close.exit.sco_sock_cleanup_listen.exit_crit_edge, label %sco_sock_close.exit.while.body.i_crit_edge

sco_sock_close.exit.while.body.i_crit_edge:       ; preds = %sco_sock_close.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

sco_sock_close.exit.sco_sock_cleanup_listen.exit_crit_edge: ; preds = %sco_sock_close.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_sock_cleanup_listen.exit

sco_sock_cleanup_listen.exit:                     ; preds = %sco_sock_close.exit.sco_sock_cleanup_listen.exit_crit_edge, %do.end.i.sco_sock_cleanup_listen.exit_crit_edge
  %13 = ptrtoint ptr %skc_state4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 9, ptr %skc_state4, align 2
  %14 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %or.i.i54 = or i32 %16, 256
  store i32 %or.i.i54, ptr %14, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end.sw.bb6_crit_edge, %do.end.sw.bb6_crit_edge60
  %conn = getelementptr inbounds %struct.sco_pinfo, ptr %sk, i32 0, i32 7
  %17 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %conn, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool7.not = icmp eq ptr %20, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %sw.bb6
  %21 = ptrtoint ptr %skc_state4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store volatile i8 8, ptr %skc_state4, align 2
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then8.sco_sock_set_timer.exit_crit_edge, label %do.body.i

if.then8.sco_sock_set_timer.exit_crit_edge:       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_sock_set_timer.exit

do.body.i:                                        ; preds = %if.then8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_set_timer.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__sco_sock_close, %if.then4.i)) #10
          to label %do.end.i35 [label %if.then4.i], !srcloc !202

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %skc_state4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %skc_state4, align 2
  %conv.i = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_set_timer.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.24, ptr noundef %sk, i32 noundef %conv.i, i32 noundef 200) #10
  br label %do.end.i35

do.end.i35:                                       ; preds = %if.then4.i, %do.body.i
  %24 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %conn, align 4
  %timeout_work.i = getelementptr inbounds %struct.sco_conn, ptr %25, i32 0, i32 3
  %call7.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #10
  %26 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %conn, align 4
  %timeout_work9.i = getelementptr inbounds %struct.sco_conn, ptr %27, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %timeout_work9.i, i32 noundef 200) #10
  br label %sco_sock_set_timer.exit

sco_sock_set_timer.exit:                          ; preds = %do.end.i35, %if.then8.sco_sock_set_timer.exit_crit_edge
  %29 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %conn, align 4
  %lock = getelementptr inbounds %struct.sco_conn, ptr %30, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %31 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %conn, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  tail call fastcc void @hci_conn_drop(ptr noundef %34)
  %35 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %conn, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %36, align 4
  %38 = load ptr, ptr %conn, align 4
  %lock17 = getelementptr inbounds %struct.sco_conn, ptr %38, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock17) #10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_chan_del.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__sco_sock_close, %if.then.i36)) #10
          to label %do.end.i38 [label %if.then.i36], !srcloc !202

if.then.i36:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_chan_del.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.29, ptr noundef %sk, ptr noundef %18, i32 noundef 104) #10
  br label %do.end.i38

do.end.i38:                                       ; preds = %if.then.i36, %if.else
  %tobool4.not.i37 = icmp eq ptr %18, null
  br i1 %tobool4.not.i37, label %do.end.i38.sco_chan_del.exit_crit_edge, label %if.then5.i

do.end.i38.sco_chan_del.exit_crit_edge:           ; preds = %do.end.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_chan_del.exit

if.then5.i:                                       ; preds = %do.end.i38
  %lock.i = getelementptr inbounds %struct.sco_conn, ptr %18, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %sk6.i = getelementptr inbounds %struct.sco_conn, ptr %18, i32 0, i32 2
  %39 = ptrtoint ptr %sk6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %sk6.i, align 4
  %40 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %conn, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %41 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %18, align 4
  %tobool9.not.i = icmp eq ptr %42, null
  br i1 %tobool9.not.i, label %if.then5.i.sco_chan_del.exit_crit_edge, label %if.then10.i

if.then5.i.sco_chan_del.exit_crit_edge:           ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_chan_del.exit

if.then10.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hci_conn_drop(ptr noundef nonnull %42) #10
  br label %sco_chan_del.exit

sco_chan_del.exit:                                ; preds = %if.then10.i, %if.then5.i.sco_chan_del.exit_crit_edge, %do.end.i38.sco_chan_del.exit_crit_edge
  %43 = ptrtoint ptr %skc_state4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store volatile i8 9, ptr %skc_state4, align 2
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %44 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 104, ptr %sk_err.i, align 4
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %45 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk_state_change.i, align 4
  tail call void %46(ptr noundef %sk) #10
  %47 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %or.i.i.i = or i32 %49, 256
  store i32 %or.i.i.i, ptr %47, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end.sw.bb19_crit_edge, %do.end.sw.bb19_crit_edge61, %do.end.sw.bb19_crit_edge62
  %conn1.i40 = getelementptr inbounds %struct.sco_pinfo, ptr %sk, i32 0, i32 7
  %50 = ptrtoint ptr %conn1.i40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %conn1.i40, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_chan_del.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__sco_sock_close, %if.then.i41)) #10
          to label %do.end.i43 [label %if.then.i41], !srcloc !202

if.then.i41:                                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_chan_del.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.29, ptr noundef %sk, ptr noundef %51, i32 noundef 104) #10
  br label %do.end.i43

do.end.i43:                                       ; preds = %if.then.i41, %sw.bb19
  %tobool4.not.i42 = icmp eq ptr %51, null
  br i1 %tobool4.not.i42, label %do.end.i43.sco_chan_del.exit53_crit_edge, label %if.then5.i47

do.end.i43.sco_chan_del.exit53_crit_edge:         ; preds = %do.end.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_chan_del.exit53

if.then5.i47:                                     ; preds = %do.end.i43
  %lock.i44 = getelementptr inbounds %struct.sco_conn, ptr %51, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i44) #10
  %sk6.i45 = getelementptr inbounds %struct.sco_conn, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %sk6.i45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %sk6.i45, align 4
  %53 = ptrtoint ptr %conn1.i40 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %conn1.i40, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i44) #10
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %tobool9.not.i46 = icmp eq ptr %55, null
  br i1 %tobool9.not.i46, label %if.then5.i47.sco_chan_del.exit53_crit_edge, label %if.then10.i48

if.then5.i47.sco_chan_del.exit53_crit_edge:       ; preds = %if.then5.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_chan_del.exit53

if.then10.i48:                                    ; preds = %if.then5.i47
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hci_conn_drop(ptr noundef nonnull %55) #10
  br label %sco_chan_del.exit53

sco_chan_del.exit53:                              ; preds = %if.then10.i48, %if.then5.i47.sco_chan_del.exit53_crit_edge, %do.end.i43.sco_chan_del.exit53_crit_edge
  %56 = ptrtoint ptr %skc_state4 to i32
  call void @__asan_store1_noabort(i32 %56)
  store volatile i8 9, ptr %skc_state4, align 2
  %sk_err.i50 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %57 = ptrtoint ptr %sk_err.i50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 104, ptr %sk_err.i50, align 4
  %sk_state_change.i51 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %58 = ptrtoint ptr %sk_state_change.i51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sk_state_change.i51, align 4
  tail call void %59(ptr noundef %sk) #10
  %60 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %or.i.i.i52 = or i32 %62, 256
  store i32 %or.i.i.i52, ptr %60, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %63 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %or.i.i = or i32 %65, 256
  store i32 %or.i.i, ptr %63, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sco_chan_del.exit53, %sco_chan_del.exit, %sco_sock_set_timer.exit, %sco_sock_cleanup_listen.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_conn_drop(ptr noundef %conn) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_drop.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_conn_drop, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #10
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_drop.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.27, ptr noundef %conn, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %refcnt4 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 1
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @llvm.prefetch.p0(ptr %refcnt4, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4, ptr %refcnt4, i32 1, ptr elementtype(i32) %refcnt4) #10, !srcloc !227
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then6, label %do.end.if.end22_crit_edge

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then6:                                         ; preds = %do.end
  %type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 14
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %4, label %if.then6.sw.epilog_crit_edge [
    i8 1, label %if.then6.sw.bb_crit_edge
    i8 -128, label %if.then6.sw.bb_crit_edge37
    i8 -127, label %sw.bb16
  ]

if.then6.sw.bb_crit_edge37:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then6.sw.bb_crit_edge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then6.sw.epilog_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then6.sw.bb_crit_edge, %if.then6.sw.bb_crit_edge37
  %idle_work = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 60
  %call7 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %idle_work) #10
  %state = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 12
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp = icmp eq i16 %7, 1
  br i1 %cmp, label %if.then10, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %disc_timeout = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 31
  %8 = ptrtoint ptr %disc_timeout to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %disc_timeout, align 2
  %conv11 = zext i16 %9 to i32
  %out = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 16
  %10 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %out, align 1, !range !229
  %12 = xor i8 %11, 1
  %13 = zext i8 %12 to i32
  %spec.select = shl nuw nsw i32 %conv11, %13
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %disc_timeout17 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 31
  %14 = ptrtoint ptr %disc_timeout17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %disc_timeout17, align 2
  %conv18 = zext i16 %15 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %if.then10, %sw.bb.sw.epilog_crit_edge, %if.then6.sw.epilog_crit_edge
  %timeo.0 = phi i32 [ %conv18, %sw.bb16 ], [ %spec.select, %if.then10 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then6.sw.epilog_crit_edge ]
  %disc_work = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 58
  %call19 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %disc_work) #10
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %16 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev, align 4
  %workqueue = getelementptr inbounds %struct.hci_dev, ptr %17, i32 0, i32 138
  %18 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %workqueue, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %disc_work, i32 noundef %timeo.0) #10
  br label %if.end22

if.end22:                                         ; preds = %sw.epilog, %do.end.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bt_accept_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_get_route(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sco_connect(ptr noundef %hdev, ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_connect.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_connect, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %src = getelementptr inbounds %struct.sco_pinfo, ptr %sk, i32 0, i32 1
  %dst = getelementptr inbounds %struct.sco_pinfo, ptr %sk, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_connect.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.37, ptr noundef %src, ptr noundef %dst) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx3 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 0, i32 3
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool4.not = icmp sgt i8 %1, -1
  br i1 %tobool4.not, label %do.end.if.else_crit_edge, label %land.lhs.true

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %2 = load i8, ptr @disable_esco, align 1, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.else, %land.lhs.true.if.end7_crit_edge
  %type.0 = phi i32 [ 0, %if.else ], [ 2, %land.lhs.true.if.end7_crit_edge ]
  %setting = getelementptr inbounds %struct.sco_pinfo, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %setting to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %setting, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %4)
  %cmp = icmp eq i16 %4, 3
  br i1 %cmp, label %land.lhs.true10, label %if.end7.if.end24_crit_edge

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true10:                                  ; preds = %if.end7
  %arrayidx13 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx13, align 2
  %7 = and i8 %6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  %brmerge = select i1 %tobool16.not, i1 true, i1 %tobool4.not
  br i1 %brmerge, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end24_crit_edge

land.lhs.true10.if.end24_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true10.if.end24_crit_edge, %if.end7.if.end24_crit_edge
  %dst25 = getelementptr inbounds %struct.sco_pinfo, ptr %sk, i32 0, i32 2
  %codec = getelementptr inbounds %struct.sco_pinfo, ptr %sk, i32 0, i32 6
  %call27 = tail call ptr @hci_connect_sco(ptr noundef %hdev, i32 noundef %type.0, ptr noundef %dst25, i16 noundef zeroext %4, ptr noundef %codec) #10
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %call32 = tail call fastcc ptr @sco_conn_add(ptr noundef %call27)
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hci_conn_drop(ptr noundef %call27)
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %src36 = getelementptr inbounds %struct.sco_pinfo, ptr %sk, i32 0, i32 1
  %src37 = getelementptr inbounds %struct.hci_conn, ptr %call27, i32 0, i32 4
  %9 = call ptr @memcpy(ptr %src36, ptr %src37, i32 6)
  %lock.i = getelementptr inbounds %struct.sco_conn, ptr %call32, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %sk1.i = getelementptr inbounds %struct.sco_conn, ptr %call32, i32 0, i32 2
  %10 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk1.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else.i, label %sco_chan_add.exit

if.else.i:                                        ; preds = %if.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__sco_chan_add.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_connect, %if.then.i.i)) #10
          to label %if.end41 [label %if.then.i.i], !srcloc !202

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__sco_chan_add.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.47, ptr noundef nonnull %call32) #10
  br label %if.end41

sco_chan_add.exit:                                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  br label %cleanup

if.end41:                                         ; preds = %if.then.i.i, %if.else.i
  %conn3.i.i = getelementptr inbounds %struct.sco_pinfo, ptr %sk, i32 0, i32 7
  %12 = ptrtoint ptr %conn3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call32, ptr %conn3.i.i, align 4
  %13 = ptrtoint ptr %sk1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sk, ptr %sk1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %state = getelementptr inbounds %struct.hci_conn, ptr %call27, i32 0, i32 12
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp43 = icmp eq i16 %15, 1
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.end41
  %16 = ptrtoint ptr %conn3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conn3.i.i, align 4
  %tobool.not.i76 = icmp eq ptr %17, null
  br i1 %tobool.not.i76, label %if.then45.sco_sock_clear_timer.exit_crit_edge, label %do.body.i

if.then45.sco_sock_clear_timer.exit_crit_edge:    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_sock_clear_timer.exit

do.body.i:                                        ; preds = %if.then45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_connect, %if.then4.i)) #10
          to label %do.end.i [label %if.then4.i], !srcloc !202

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.18, ptr noundef %sk, i32 noundef %conv.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %20 = ptrtoint ptr %conn3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conn3.i.i, align 4
  %timeout_work.i = getelementptr inbounds %struct.sco_conn, ptr %21, i32 0, i32 3
  %call7.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #10
  br label %sco_sock_clear_timer.exit

sco_sock_clear_timer.exit:                        ; preds = %do.end.i, %if.then45.sco_sock_clear_timer.exit_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %22 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %22)
  store volatile i8 1, ptr %skc_state, align 2
  br label %cleanup

if.else46:                                        ; preds = %if.end41
  %skc_state48 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %23 = ptrtoint ptr %skc_state48 to i32
  call void @__asan_store1_noabort(i32 %23)
  store volatile i8 5, ptr %skc_state48, align 2
  %sk_sndtimeo = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 31
  %24 = ptrtoint ptr %sk_sndtimeo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sk_sndtimeo, align 8
  %26 = ptrtoint ptr %conn3.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %conn3.i.i, align 4
  %tobool.not.i78 = icmp eq ptr %27, null
  br i1 %tobool.not.i78, label %if.else46.cleanup_crit_edge, label %do.body.i79

if.else46.cleanup_crit_edge:                      ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i79:                                      ; preds = %if.else46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_set_timer.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_connect, %if.then4.i82)) #10
          to label %do.end.i85 [label %if.then4.i82], !srcloc !202

if.then4.i82:                                     ; preds = %do.body.i79
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %skc_state48 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %skc_state48, align 2
  %conv.i81 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_set_timer.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.24, ptr noundef %sk, i32 noundef %conv.i81, i32 noundef %25) #10
  br label %do.end.i85

do.end.i85:                                       ; preds = %if.then4.i82, %do.body.i79
  %30 = ptrtoint ptr %conn3.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %conn3.i.i, align 4
  %timeout_work.i83 = getelementptr inbounds %struct.sco_conn, ptr %31, i32 0, i32 3
  %call7.i84 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i83) #10
  %32 = ptrtoint ptr %conn3.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %conn3.i.i, align 4
  %timeout_work9.i = getelementptr inbounds %struct.sco_conn, ptr %33, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %timeout_work9.i, i32 noundef %25) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i85, %if.else46.cleanup_crit_edge, %sco_sock_clear_timer.exit, %sco_chan_add.exit, %if.then34, %if.then29, %land.lhs.true10.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then29 ], [ -12, %if.then34 ], [ -95, %land.lhs.true10.cleanup_crit_edge ], [ -16, %sco_chan_add.exit ], [ 0, %sco_sock_clear_timer.exit ], [ 0, %if.else46.cleanup_crit_edge ], [ 0, %do.end.i85 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_dev_put(ptr noundef %d) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hci_dev_put, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hci_dev, ptr %d, i32 0, i32 2
  %kref = getelementptr inbounds %struct.hci_dev, ptr %d, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #10
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.49, ptr noundef %name, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev4 = getelementptr inbounds %struct.hci_dev, ptr %d, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_connect_sco(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sco_conn_add(ptr noundef %hcon) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %sco_data = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 67
  %2 = ptrtoint ptr %sco_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sco_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 156) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.sco_conn, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @sco_conn_add.__key, i16 noundef signext 3) #10
  %timeout_work = getelementptr inbounds %struct.sco_conn, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #10
  %5 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %timeout_work, align 4
  %lockdep_map = getelementptr inbounds %struct.sco_conn, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.40, ptr noundef nonnull @sco_conn_add.__key.39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry14 = getelementptr inbounds %struct.sco_conn, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry14, ptr %entry14, align 8
  %prev.i = getelementptr inbounds %struct.sco_conn, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sco_conn, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sco_sock_timeout, ptr %func, align 8
  %timer = getelementptr inbounds %struct.sco_conn, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.42, ptr noundef nonnull @sco_conn_add.__key.41) #10
  %9 = ptrtoint ptr %sco_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %sco_data, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hcon, ptr %call7.i.i, align 8
  %sco_mtu = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 124
  %11 = ptrtoint ptr %sco_mtu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sco_mtu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  %spec.select = select i1 %cmp.not, i32 60, i32 %12
  %13 = getelementptr inbounds %struct.sco_conn, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %13, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_conn_add.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_conn_add, %if.then36)) #10
          to label %cleanup [label %if.then36], !srcloc !202

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_conn_add.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.44, ptr noundef %hcon, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i.i, %if.then36 ], [ %call7.i.i, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sco_sock_timeout(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %sk1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then4.critedge, label %if.then

if.then:                                          ; preds = %entry
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !204
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !205

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !203

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_timeout.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_timeout, %if.then10)) #10
          to label %do.end [label %if.then10], !srcloc !202

if.then4.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

if.then10:                                        ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_timeout.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.18, ptr noundef nonnull %1, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then10, %sock_hold.exit
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #10
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %6 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 110, ptr %sk_err, align 4
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %7 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_state_change, align 4
  tail call void %8(ptr noundef nonnull %1) #10
  tail call void @release_sock(ptr noundef nonnull %1) #10
  %call.i.i.i.i.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !207
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i27 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i27, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !203

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  tail call void @sk_free(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then4.critedge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_accept_enqueue(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %dst, [2 x i32] %src.coerce, i32 noundef %size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %src.coerce.fca.0.extract.i = extractvalue [2 x i32] %src.coerce, 0
  %0 = inttoptr i32 %src.coerce.fca.0.extract.i to ptr
  %sockptr.coerce.fca.1.extract.i.i = extractvalue [2 x i32] %src.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i)
  %bf.cast.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i, 0
  br i1 %bf.cast.i.i, label %if.end.i, label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp9.i.i.i = icmp slt i32 %size, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then27.i.i.i, !prof !203

land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_sockptr_offset.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_sockptr_offset.exit

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %size, i32 -1226833920) #15, !srcloc !210
  %asmresult.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !203

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !211
  %and.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %0, i32 noundef %size) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %size, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %size, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then11.i.i.i, !prof !203

if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_sockptr_offset.exit

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = sub i32 %size, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %dst, i32 %sub.i.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %copy_from_sockptr_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call ptr @memcpy(ptr %dst, ptr %0, i32 %size)
  br label %copy_from_sockptr_offset.exit

copy_from_sockptr_offset.exit:                    ; preds = %if.end.i, %if.then11.i.i.i, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 0, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge ], [ %res.0.i.i.i, %if.then11.i.i.i ], [ %size, %if.then27.i.i.i ], [ %size, %land.rhs16.i.i.i.copy_from_sockptr_offset.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sco_sock_getsockopt_old(ptr nocapture noundef readonly %sock, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) unnamed_addr #0 align 64 {
entry:
  %opts = alloca %struct.sco_options, align 2
  %cinfo = alloca %struct.sco_conninfo, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %opts) #10
  %2 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %opts, align 2, !annotation !209
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cinfo) #10
  %3 = call ptr @memset(ptr %cinfo, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_getsockopt_old.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_getsockopt_old, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_getsockopt_old.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.35, ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 976) #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !192) #10
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !211
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %7 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #10, !srcloc !230
  %asmresult = extractvalue { i32, i32 } %7, 0
  %asmresult6 = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool8.not = icmp eq i32 %asmresult, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %8 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %optname, label %if.end10.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb49
  ]

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.not = icmp eq i8 %10, 1
  br i1 %cmp.not, label %sw.bb.if.end21_crit_edge, label %land.lhs.true

sw.bb.if.end21_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true:                                    ; preds = %sw.bb
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %12)
  %cmp15 = icmp eq i8 %12, 6
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true17:                                  ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool19.not = icmp eq i32 %and1.i, 0
  br i1 %tobool19.not, label %land.lhs.true17.sw.epilog_crit_edge, label %land.lhs.true17.if.end21_crit_edge

land.lhs.true17.if.end21_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true17.sw.epilog_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end21:                                         ; preds = %land.lhs.true17.if.end21_crit_edge, %sw.bb.if.end21_crit_edge
  %conn = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %conn, align 4
  %mtu = getelementptr inbounds %struct.sco_conn, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mtu, align 4
  %conv22 = trunc i32 %18 to i16
  %19 = ptrtoint ptr %opts to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv22, ptr %opts, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_getsockopt_old.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_getsockopt_old, %if.then36)) #10
          to label %do.end41 [label %if.then36], !srcloc !202

if.then36:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %opts to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %opts, align 2
  %conv38 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_getsockopt_old.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.63, i32 noundef %conv38) #10
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %if.end21
  %22 = tail call i32 @llvm.umin.i32(i32 %asmresult6, i32 2)
  call void @__check_object_size(ptr noundef nonnull %opts, i32 noundef %22, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %do.end41.copy_to_user.exit_crit_edge, label %if.end.i.i

do.end41.copy_to_user.exit_crit_edge:             ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %do.end41
  %23 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %22, i32 -1226833920) #15, !srcloc !216
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %opts, i32 noundef %22) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %opts, i32 noundef %22) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %do.end41.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %22, %do.end41.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %22, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool46.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool46.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end10
  %skc_state51 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %skc_state51 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load volatile i8, ptr %skc_state51, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp53.not = icmp eq i8 %25, 1
  br i1 %cmp53.not, label %sw.bb49.if.end66_crit_edge, label %land.lhs.true55

sw.bb49.if.end66_crit_edge:                       ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

land.lhs.true55:                                  ; preds = %sw.bb49
  %26 = ptrtoint ptr %skc_state51 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load volatile i8, ptr %skc_state51, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp59 = icmp eq i8 %27, 6
  br i1 %cmp59, label %land.lhs.true61, label %land.lhs.true55.sw.epilog_crit_edge

land.lhs.true55.sw.epilog_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true61:                                  ; preds = %land.lhs.true55
  %flags62 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %flags62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags62, align 4
  %and1.i111 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i111)
  %tobool64.not = icmp eq i32 %and1.i111, 0
  br i1 %tobool64.not, label %land.lhs.true61.sw.epilog_crit_edge, label %land.lhs.true61.if.end66_crit_edge

land.lhs.true61.if.end66_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

land.lhs.true61.sw.epilog_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end66:                                         ; preds = %land.lhs.true61.if.end66_crit_edge, %sw.bb49.if.end66_crit_edge
  %30 = getelementptr inbounds i8, ptr %cinfo, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %30, align 2
  %conn67 = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %conn67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %conn67, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %handle = getelementptr inbounds %struct.hci_conn, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %handle, align 2
  %38 = ptrtoint ptr %cinfo to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %cinfo, align 2
  %dev_class = getelementptr inbounds %struct.sco_conninfo, ptr %cinfo, i32 0, i32 1
  %39 = load ptr, ptr %33, align 4
  %dev_class70 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 18
  %40 = call ptr @memcpy(ptr %dev_class, ptr %dev_class70, i32 3)
  %41 = tail call i32 @llvm.umin.i32(i32 %asmresult6, i32 6)
  call void @__check_object_size(ptr noundef nonnull %cinfo, i32 noundef %41, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 174) #10
  %call.i.i120 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i120, label %if.end66.copy_to_user.exit129_crit_edge, label %if.end.i.i124

if.end66.copy_to_user.exit129_crit_edge:          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit129

if.end.i.i124:                                    ; preds = %if.end66
  %42 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %41, i32 -1226833920) #15, !srcloc !216
  %asmresult.i.i122 = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i122)
  %cmp.i6.i123 = icmp eq i32 %asmresult.i.i122, 0
  br i1 %cmp.i6.i123, label %if.then2.i.i127, label %if.end.i.i124.copy_to_user.exit129_crit_edge

if.end.i.i124.copy_to_user.exit129_crit_edge:     ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit129

if.then2.i.i127:                                  ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i125 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cinfo, i32 noundef %41) #10
  %call.i12.i.i126 = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %cinfo, i32 noundef %41) #10
  br label %copy_to_user.exit129

copy_to_user.exit129:                             ; preds = %if.then2.i.i127, %if.end.i.i124.copy_to_user.exit129_crit_edge, %if.end66.copy_to_user.exit129_crit_edge
  %n.addr.0.i128 = phi i32 [ %41, %if.end66.copy_to_user.exit129_crit_edge ], [ %call.i12.i.i126, %if.then2.i.i127 ], [ %41, %if.end.i.i124.copy_to_user.exit129_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i128)
  %tobool80.not = icmp eq i32 %n.addr.0.i128, 0
  %spec.select107 = select i1 %tobool80.not, i32 0, i32 -14
  br label %sw.epilog

sw.epilog:                                        ; preds = %copy_to_user.exit129, %land.lhs.true61.sw.epilog_crit_edge, %land.lhs.true55.sw.epilog_crit_edge, %copy_to_user.exit, %land.lhs.true17.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %if.end10.sw.epilog_crit_edge
  %err.0 = phi i32 [ -107, %land.lhs.true17.sw.epilog_crit_edge ], [ -107, %land.lhs.true.sw.epilog_crit_edge ], [ -107, %land.lhs.true61.sw.epilog_crit_edge ], [ -107, %land.lhs.true55.sw.epilog_crit_edge ], [ -92, %if.end10.sw.epilog_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ %spec.select107, %copy_to_user.exit129 ]
  call void @release_sock(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %sw.epilog ], [ -14, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cinfo) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %opts) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_get_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_send_sco(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sco_conn_defer_accept(ptr noundef %conn, i16 noundef zeroext %setting) unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.hci_cp_accept_conn_req, align 1
  %cp8 = alloca %struct.hci_cp_accept_sync_conn_req, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_conn_defer_accept.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_conn_defer_accept, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_conn_defer_accept.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.47, ptr noundef %conn) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 7, ptr %state, align 4
  %arrayidx4 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 3
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %tobool5.not = icmp sgt i8 %4, -1
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cp) #10
  %5 = getelementptr inbounds %struct.hci_cp_accept_conn_req, ptr %cp, i32 0, i32 1
  %dst = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %cp, ptr %dst, i32 6)
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %5, align 1
  %call7 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 1033, i32 noundef 7, ptr noundef nonnull %cp) #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cp) #10
  br label %if.end28

if.else:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %cp8) #10
  %8 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %cp8, i32 0, i32 1
  %9 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %cp8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %cp8, i32 0, i32 4
  %11 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %cp8, i32 0, i32 5
  %12 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %cp8, i32 0, i32 6
  %dst10 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 2
  %13 = getelementptr inbounds i8, ptr %cp8, i32 14
  %14 = call ptr @memset(ptr %13, i32 255, i32 5)
  %15 = call ptr @memcpy(ptr %cp8, ptr %dst10, i32 6)
  %pkt_type = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 20
  %16 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pkt_type, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %12, align 1
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 1075773440, ptr %8, align 1
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 1075773440, ptr %9, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %setting)
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %10, align 1
  %24 = and i16 %setting, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %24)
  %cond = icmp eq i16 %24, 3
  br i1 %cond, label %sw.bb, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %25 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %cp8, i32 0, i32 3
  %26 = and i16 %17, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool17.not = icmp eq i16 %26, 0
  %. = select i1 %tobool17.not, i16 3328, i16 2048
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %., ptr %25, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.else.sw.epilog_crit_edge
  %.sink = phi i8 [ 2, %sw.bb ], [ -1, %if.else.sw.epilog_crit_edge ]
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink, ptr %11, align 1
  %call27 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 1065, i32 noundef 21, ptr noundef nonnull %cp8) #10
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %cp8) #10
  br label %if.end28

if.end28:                                         ; preds = %sw.epilog, %if.then6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_send_cmd(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sco_sock_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_destruct.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_sock_destruct, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_destruct.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.35, ptr noundef %sk) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #10
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_clone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sco_skb_put_cmsg(ptr noundef %skb, ptr noundef %msg, ptr nocapture noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmsg_mask = getelementptr inbounds %struct.sco_pinfo, ptr %sk, i32 0, i32 5
  %0 = ptrtoint ptr %cmsg_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmsg_mask, align 2
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %call = tail call i32 @put_cmsg(ptr noundef %msg, i32 noundef 274, i32 noundef 3, i32 noundef 1, ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sco_connect_cfm(ptr noundef %hcon, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 14
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %1, label %entry.if.end19_crit_edge [
    i8 0, label %entry.do.body_crit_edge
    i8 2, label %entry.do.body_crit_edge29
  ]

entry.do.body_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_connect_cfm.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_connect_cfm, %if.then8)) #10
          to label %do.end [label %if.then8], !srcloc !202

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dst = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 2
  %conv9 = zext i8 %status to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_connect_cfm.__UNIQUE_ID_ddebug515, ptr noundef nonnull @.str.72, ptr noundef %hcon, ptr noundef %dst, i32 noundef %conv9) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool11.not = icmp eq i8 %status, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %do.end
  %call13 = tail call fastcc ptr @sco_conn_add(ptr noundef %hcon)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then12.if.end19_crit_edge, label %if.then15

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sco_conn_ready(ptr noundef nonnull %call13)
  br label %if.end19

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv17 = zext i8 %status to i16
  %call18 = tail call i32 @bt_to_errno(i16 noundef zeroext %conv17) #10
  tail call fastcc void @sco_conn_del(ptr noundef %hcon, i32 noundef %call18)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15, %if.then12.if.end19_crit_edge, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sco_disconn_cfm(ptr noundef %hcon, i8 noundef zeroext %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 14
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %1, label %entry.return_crit_edge [
    i8 0, label %entry.do.body_crit_edge
    i8 2, label %entry.do.body_crit_edge18
  ]

entry.do.body_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_disconn_cfm.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_disconn_cfm, %if.then8)) #10
          to label %do.end [label %if.then8], !srcloc !202

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv9 = zext i8 %reason to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_disconn_cfm.__UNIQUE_ID_ddebug516, ptr noundef nonnull @.str.78, ptr noundef %hcon, i32 noundef %conv9) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %conv11 = zext i8 %reason to i16
  %call12 = tail call i32 @bt_to_errno(i16 noundef zeroext %conv11) #10
  tail call fastcc void @sco_conn_del(ptr noundef %hcon, i32 noundef %call12)
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sco_conn_ready(ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.sco_conn, ptr %conn, i32 0, i32 2
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_conn_ready.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_conn_ready, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !202

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_conn_ready.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.47, ptr noundef %conn) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #10
  %conn.i = getelementptr inbounds %struct.sco_pinfo, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then5.sco_sock_clear_timer.exit_crit_edge, label %do.body.i

if.then5.sco_sock_clear_timer.exit_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_sock_clear_timer.exit

do.body.i:                                        ; preds = %if.then5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_conn_ready, %if.then4.i)) #10
          to label %do.end.i [label %if.then4.i], !srcloc !202

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.18, ptr noundef nonnull %1, i32 noundef %conv.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %6 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn.i, align 4
  %timeout_work.i = getelementptr inbounds %struct.sco_conn, ptr %7, i32 0, i32 3
  %call7.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #10
  br label %sco_sock_clear_timer.exit

sco_sock_clear_timer.exit:                        ; preds = %do.end.i, %if.then5.sco_sock_clear_timer.exit_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store volatile i8 1, ptr %skc_state, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %9 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_state_change, align 4
  tail call void %10(ptr noundef nonnull %1) #10
  tail call void @release_sock(ptr noundef nonnull %1) #10
  br label %cleanup

if.else:                                          ; preds = %do.end
  %lock = getelementptr inbounds %struct.sco_conn, ptr %conn, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %11 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end9:                                          ; preds = %if.else
  %src = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %.compoundliteral.i)
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #10
  %13 = load ptr, ptr @sco_sk_list, align 4
  %tobool.not.i75 = icmp eq ptr %13, null
  %add.ptr.i = getelementptr i8, ptr %13, i32 -84
  %tobool2.not4954.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not49.i = or i1 %tobool.not.i75, %tobool2.not4954.i
  br i1 %tobool2.not49.i, label %sco_get_sock_listen.exit.thread, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

sco_get_sock_listen.exit.thread:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i)
  br label %if.then13

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %sk.051.i = phi ptr [ %add.ptr24.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end9.for.body.i_crit_edge ]
  %sk1.050.i = phi ptr [ %sk1.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end9.for.body.i_crit_edge ]
  %skc_state.i76 = getelementptr inbounds %struct.sock_common, ptr %sk.051.i, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state.i76 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state.i76, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %cmp.not.i = icmp eq i8 %15, 4
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %src4.i = getelementptr inbounds %struct.sco_pinfo, ptr %sk.051.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src4.i, ptr noundef dereferenceable(6) %src, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i, label %sco_get_sock_listen.exit.thread92, label %if.end7.i

sco_get_sock_listen.exit.thread92:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i)
  br label %if.end15

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = call ptr @memset(ptr %.compoundliteral.i, i32 0, i32 6)
  %bcmp48.i = call i32 @bcmp(ptr noundef dereferenceable(6) %src4.i, ptr noundef nonnull dereferenceable(6) %.compoundliteral.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp48.i)
  %tobool14.not.i = icmp eq i32 %bcmp48.i, 0
  %spec.select43.i = select i1 %tobool14.not.i, ptr %sk.051.i, ptr %sk1.050.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end7.i, %for.body.i.for.inc.i_crit_edge
  %sk1.1.i = phi ptr [ %sk1.050.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select43.i, %if.end7.i ]
  %17 = getelementptr inbounds %struct.sock_common, ptr %sk.051.i, i32 0, i32 15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool20.not.i = icmp eq ptr %19, null
  %add.ptr24.i = getelementptr i8, ptr %19, i32 -84
  %tobool2.not55.i = icmp eq ptr %add.ptr24.i, null
  %tobool2.not.i = or i1 %tobool20.not.i, %tobool2.not55.i
  br i1 %tobool2.not.i, label %sco_get_sock_listen.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sco_get_sock_listen.exit:                         ; preds = %for.inc.i
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral.i)
  %tobool12.not = icmp eq ptr %sk1.1.i, null
  br i1 %tobool12.not, label %sco_get_sock_listen.exit.if.then13_crit_edge, label %sco_get_sock_listen.exit.if.end15_crit_edge

sco_get_sock_listen.exit.if.end15_crit_edge:      ; preds = %sco_get_sock_listen.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

sco_get_sock_listen.exit.if.then13_crit_edge:     ; preds = %sco_get_sock_listen.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %sco_get_sock_listen.exit.if.then13_crit_edge, %sco_get_sock_listen.exit.thread
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end15:                                         ; preds = %sco_get_sock_listen.exit.if.end15_crit_edge, %sco_get_sock_listen.exit.thread92
  %sk1.0.sk.0.i95 = phi ptr [ %sk.051.i, %sco_get_sock_listen.exit.thread92 ], [ %sk1.1.i, %sco_get_sock_listen.exit.if.end15_crit_edge ]
  tail call void @lock_sock_nested(ptr noundef nonnull %sk1.0.sk.0.i95, i32 noundef 0) #10
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk1.0.sk.0.i95, i32 0, i32 9
  %20 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_net.i, align 4
  %call.i = tail call ptr @sk_alloc(ptr noundef %21, i32 noundef 31, i32 noundef 2592, ptr noundef nonnull @sco_proto, i32 noundef 0) #10
  %tobool.not.i77 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i77, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_sock(ptr noundef nonnull %sk1.0.sk.0.i95) #10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  tail call void @sock_init_data(ptr noundef null, ptr noundef nonnull %call.i) #10
  %accept_q.i = getelementptr inbounds %struct.bt_sock, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %accept_q.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %accept_q.i, ptr %accept_q.i, align 4
  %prev.i.i = getelementptr inbounds %struct.bt_sock, ptr %call.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %accept_q.i, ptr %prev.i.i, align 4
  %sk_destruct.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 82
  %24 = ptrtoint ptr %sk_destruct.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sco_sock_destruct, ptr %sk_destruct.i, align 4
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 31
  %25 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4000, ptr %sk_sndtimeo.i, align 8
  %26 = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %and.i.i.i = and i32 %28, -257
  store i32 %and.i.i.i, ptr %26, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 46
  %29 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2, ptr %sk_protocol.i, align 4
  %skc_state.i78 = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %skc_state.i78 to i32
  call void @__asan_store1_noabort(i32 %30)
  store volatile i8 2, ptr %skc_state.i78, align 2
  %setting.i = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %setting.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 96, ptr %setting.i, align 8
  %codec.i = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %codec.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %codec.i, align 1
  %cid.i = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %cid.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 -1, ptr %cid.i, align 1
  %vid.i = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 6, i32 2
  %34 = ptrtoint ptr %vid.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 -1, ptr %vid.i, align 1
  %data_path.i = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 6, i32 3
  %35 = ptrtoint ptr %data_path.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %data_path.i, align 1
  tail call void @bt_sock_link(ptr noundef nonnull @sco_sk_list, ptr noundef nonnull %call.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_init.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_conn_ready, %if.then.i)) #10
          to label %sco_sock_init.exit [label %if.then.i], !srcloc !202

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_init.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.35, ptr noundef nonnull %call.i) #10
  br label %sco_sock_init.exit

sco_sock_init.exit:                               ; preds = %if.then.i, %if.end21
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %sk1.0.sk.0.i95, i32 0, i32 45
  %36 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sk_type.i, align 2
  %sk_type5.i = getelementptr inbounds %struct.sock, ptr %call.i, i32 0, i32 45
  %38 = ptrtoint ptr %sk_type5.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %sk_type5.i, align 2
  %flags.i = getelementptr inbounds %struct.bt_sock, ptr %sk1.0.sk.0.i95, i32 0, i32 3
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 4
  %flags6.i = getelementptr inbounds %struct.bt_sock, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %flags6.i, align 4
  tail call void @security_sk_clone(ptr noundef nonnull %sk1.0.sk.0.i95, ptr noundef nonnull %call.i) #10
  %src22 = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %conn, align 4
  %src24 = getelementptr inbounds %struct.hci_conn, ptr %43, i32 0, i32 4
  %44 = call ptr @memcpy(ptr %src22, ptr %src24, i32 6)
  %dst = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 2
  %45 = load ptr, ptr %conn, align 4
  %dst26 = getelementptr inbounds %struct.hci_conn, ptr %45, i32 0, i32 2
  %46 = call ptr @memcpy(ptr %dst, ptr %dst26, i32 6)
  %47 = load ptr, ptr %conn, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_conn_hold.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_conn_ready, %if.then.i83)) #10
          to label %hci_conn_hold.exit [label %if.then.i83], !srcloc !202

if.then.i83:                                      ; preds = %sco_sock_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt.i = getelementptr inbounds %struct.hci_conn, ptr %47, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #10
  %48 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %refcnt.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_conn_hold.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.27, ptr noundef %47, i32 noundef %49) #10
  br label %hci_conn_hold.exit

hci_conn_hold.exit:                               ; preds = %if.then.i83, %sco_sock_init.exit
  %refcnt4.i = getelementptr inbounds %struct.hci_conn, ptr %47, i32 0, i32 1
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !231
  %disc_work.i = getelementptr inbounds %struct.hci_conn, ptr %47, i32 0, i32 58
  %call5.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %disc_work.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__sco_chan_add.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_conn_ready, %if.then.i85)) #10
          to label %__sco_chan_add.exit [label %if.then.i85], !srcloc !202

if.then.i85:                                      ; preds = %hci_conn_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__sco_chan_add.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.47, ptr noundef %conn) #10
  br label %__sco_chan_add.exit

__sco_chan_add.exit:                              ; preds = %if.then.i85, %hci_conn_hold.exit
  %conn3.i = getelementptr inbounds %struct.sco_pinfo, ptr %call.i, i32 0, i32 7
  %51 = ptrtoint ptr %conn3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %conn, ptr %conn3.i, align 4
  %52 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %sk1, align 4
  tail call void @bt_accept_enqueue(ptr noundef nonnull %sk1.0.sk.0.i95, ptr noundef nonnull %call.i, i1 noundef zeroext true) #10
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags.i, align 4
  %and1.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool29.not = icmp eq i32 %and1.i, 0
  %. = select i1 %tobool29.not, i8 1, i8 6
  %55 = ptrtoint ptr %skc_state.i78 to i32
  call void @__asan_store1_noabort(i32 %55)
  store volatile i8 %., ptr %skc_state.i78, align 2
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk1.0.sk.0.i95, i32 0, i32 77
  %56 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sk_data_ready, align 8
  tail call void %57(ptr noundef nonnull %sk1.0.sk.0.i95) #10
  tail call void @release_sock(ptr noundef nonnull %sk1.0.sk.0.i95) #10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %__sco_chan_add.exit, %if.then19, %if.then13, %if.then7, %sco_sock_clear_timer.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sco_conn_del(ptr noundef %hcon, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sco_data = getelementptr inbounds %struct.hci_conn, ptr %hcon, i32 0, i32 67
  %0 = ptrtoint ptr %sco_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sco_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_conn_del.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_conn_del, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !202

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_conn_del.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.76, ptr noundef %hcon, ptr noundef nonnull %1, i32 noundef %err) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %lock = getelementptr inbounds %struct.sco_conn, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %sk6 = getelementptr inbounds %struct.sco_conn, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sk6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk6, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end13.critedge, label %if.then8

if.then8:                                         ; preds = %do.end
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !204
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !205

if.then8.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !203

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  tail call void @lock_sock_nested(ptr noundef nonnull %3, i32 noundef 0) #10
  %conn.i = getelementptr inbounds %struct.sco_pinfo, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %sock_hold.exit.sco_sock_clear_timer.exit_crit_edge, label %do.body.i

sock_hold.exit.sco_sock_clear_timer.exit_crit_edge: ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_sock_clear_timer.exit

do.body.i:                                        ; preds = %sock_hold.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_conn_del, %if.then4.i)) #10
          to label %do.end.i [label %if.then4.i], !srcloc !202

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.18, ptr noundef nonnull %3, i32 noundef %conv.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %10 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conn.i, align 4
  %timeout_work.i = getelementptr inbounds %struct.sco_conn, ptr %11, i32 0, i32 3
  %call7.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #10
  %12 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load ptr, ptr %conn.i, align 4
  br label %sco_sock_clear_timer.exit

sco_sock_clear_timer.exit:                        ; preds = %do.end.i, %sock_hold.exit.sco_sock_clear_timer.exit_crit_edge
  %13 = phi ptr [ null, %sock_hold.exit.sco_sock_clear_timer.exit_crit_edge ], [ %.pr, %do.end.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sco_chan_del.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sco_conn_del, %if.then.i)) #10
          to label %do.end.i34 [label %if.then.i], !srcloc !202

if.then.i:                                        ; preds = %sco_sock_clear_timer.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sco_chan_del.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.29, ptr noundef nonnull %3, ptr noundef %13, i32 noundef %err) #10
  br label %do.end.i34

do.end.i34:                                       ; preds = %if.then.i, %sco_sock_clear_timer.exit
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %do.end.i34.sco_chan_del.exit_crit_edge, label %if.then5.i

do.end.i34.sco_chan_del.exit_crit_edge:           ; preds = %do.end.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_chan_del.exit

if.then5.i:                                       ; preds = %do.end.i34
  %lock.i = getelementptr inbounds %struct.sco_conn, ptr %13, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %sk6.i = getelementptr inbounds %struct.sco_conn, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %sk6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %sk6.i, align 4
  %15 = ptrtoint ptr %conn.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %conn.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %tobool9.not.i = icmp eq ptr %17, null
  br i1 %tobool9.not.i, label %if.then5.i.sco_chan_del.exit_crit_edge, label %if.then10.i

if.then5.i.sco_chan_del.exit_crit_edge:           ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sco_chan_del.exit

if.then10.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @hci_conn_drop(ptr noundef nonnull %17) #10
  br label %sco_chan_del.exit

sco_chan_del.exit:                                ; preds = %if.then10.i, %if.then5.i.sco_chan_del.exit_crit_edge, %do.end.i34.sco_chan_del.exit_crit_edge
  %skc_state.i35 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state.i35 to i32
  call void @__asan_store1_noabort(i32 %18)
  store volatile i8 9, ptr %skc_state.i35, align 2
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %19 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %err, ptr %sk_err.i, align 4
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 76
  %20 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk_state_change.i, align 4
  tail call void %21(ptr noundef nonnull %3) #10
  %22 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %or.i.i.i = or i32 %24, 256
  store i32 %or.i.i.i, ptr %22, align 4
  tail call void @release_sock(ptr noundef nonnull %3) #10
  %call.i.i.i.i.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !207
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i39, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sco_chan_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i38 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i38, label %if.end5.i.i.i.i.if.end13_crit_edge, label %if.then10.i.i.i.i, !prof !203

if.end5.i.i.i.i.if.end13_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %if.end13

if.then.i39:                                      ; preds = %sco_chan_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  tail call void @sk_free(ptr noundef nonnull %3) #10
  br label %if.end13

if.end13.critedge:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %if.end13

if.end13:                                         ; preds = %if.end13.critedge, %if.then.i39, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end13_crit_edge
  %timeout_work = getelementptr inbounds %struct.sco_conn, ptr %1, i32 0, i32 3
  %call14 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #10
  %26 = ptrtoint ptr %sco_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %sco_data, align 4
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_to_errno(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sco_debugfs_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sco_debugfs_show(ptr noundef %f, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #10
  %0 = load ptr, ptr @sco_sk_list, align 4
  %tobool.not = icmp eq ptr %0, null
  %add.ptr = getelementptr i8, ptr %0, i32 -84
  %tobool2.not2426 = icmp eq ptr %add.ptr, null
  %tobool2.not24 = or i1 %tobool.not, %tobool2.not2426
  br i1 %tobool2.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %sk.025 = phi ptr [ %add.ptr10, %for.body.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %src = getelementptr inbounds %struct.sco_pinfo, ptr %sk.025, i32 0, i32 1
  %dst = getelementptr inbounds %struct.sco_pinfo, ptr %sk.025, i32 0, i32 2
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk.025, i32 0, i32 4
  %1 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %2 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.79, ptr noundef %src, ptr noundef %dst, i32 noundef %conv) #10
  %3 = getelementptr inbounds %struct.sock_common, ptr %sk.025, i32 0, i32 15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool6.not = icmp eq ptr %5, null
  %add.ptr10 = getelementptr i8, ptr %5, i32 -84
  %tobool2.not27 = icmp eq ptr %add.ptr10, null
  %tobool2.not = or i1 %tobool6.not, %tobool2.not27
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !136, !138, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !156, !158, !159, !161, !162, !164, !165, !167, !169, !171, !172, !173, !175, !176, !178, !179, !181, !182, !183, !185, !186, !187, !189, !191}
!llvm.named.register.sp = !{!192}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/sco.c", i32 1328, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sco_connect_ind.__UNIQUE_ID_ddebug514, !1, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/sco.c", i32 1384, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sco_recv_scodata.__UNIQUE_ID_ddebug517, !7, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/bluetooth/sco.c", i32 1460, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bluetooth/sco.c", i32 1464, i32 34}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/bluetooth/sco.c", i32 1466, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/bluetooth/sco.c", i32 1471, i32 2}
!18 = !{ptr @__param_disable_esco, !19, !"__param_disable_esco", i1 false, i1 false}
!19 = !{!"../net/bluetooth/sco.c", i32 1501, i32 1}
!20 = !{ptr @__UNIQUE_ID_disable_escotype519, !19, !"__UNIQUE_ID_disable_escotype519", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_disable_esco520, !22, !"__UNIQUE_ID_disable_esco520", i1 false, i1 false}
!22 = !{!"../net/bluetooth/sco.c", i32 1502, i32 1}
!23 = !{ptr @disable_esco, !24, !"disable_esco", i1 false, i1 false}
!24 = !{!"../net/bluetooth/sco.c", i32 36, i32 13}
!25 = !{ptr @sco_debugfs, !26, !"sco_debugfs", i1 false, i1 false}
!26 = !{!"../net/bluetooth/sco.c", i32 1419, i32 23}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/bluetooth/sco.c", i32 41, i32 10}
!29 = !{ptr @sco_sk_list, !30, !"sco_sk_list", i1 false, i1 false}
!30 = !{!"../net/bluetooth/sco.c", i32 40, i32 28}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/bluetooth/sco.c", i32 311, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sco_recv_frame.__UNIQUE_ID_ddebug484, !32, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!35 = !{ptr @sco_proto, !36, !"sco_proto", i1 false, i1 false}
!36 = !{!"../net/bluetooth/sco.c", i32 472, i32 21}
!37 = !{ptr @sco_sock_family_ops, !38, !"sco_sock_family_ops", i1 false, i1 false}
!38 = !{!"../net/bluetooth/sco.c", i32 1442, i32 38}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/bluetooth/sco.c", i32 513, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sco_sock_create.__UNIQUE_ID_ddebug490, !40, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!43 = !{ptr @sco_sock_ops, !44, !"sco_sock_ops", i1 false, i1 false}
!44 = !{!"../net/bluetooth/sco.c", i32 1421, i32 31}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/bluetooth/sco.c", i32 1244, i32 2}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sco_sock_release.__UNIQUE_ID_ddebug512, !46, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/bluetooth/sco.c", i32 119, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sco_sock_clear_timer.__UNIQUE_ID_ddebug477, !50, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/bluetooth/sco.c", i32 408, i32 2}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__sco_sock_close.__UNIQUE_ID_ddebug488, !54, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/bluetooth/sco.c", i32 378, i32 2}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sco_sock_cleanup_listen.__UNIQUE_ID_ddebug486, !58, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/bluetooth/sco.c", i32 109, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sco_sock_set_timer.__UNIQUE_ID_ddebug476, !62, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/net/bluetooth/hci_core.h", i32 1188, i32 2}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @hci_conn_drop.__UNIQUE_ID_ddebug472, !66, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/bluetooth/sco.c", i32 160, i32 2}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sco_chan_del.__UNIQUE_ID_ddebug479, !71, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/bluetooth/sco.c", i32 398, i32 2}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sco_sock_kill.__UNIQUE_ID_ddebug487, !75, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/bluetooth/sco.c", i32 541, i32 2}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @sco_sock_bind.__UNIQUE_ID_ddebug491, !79, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/bluetooth/sco.c", i32 571, i32 2}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sco_sock_connect.__UNIQUE_ID_ddebug492, !83, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/bluetooth/sco.c", i32 244, i32 2}
!88 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @sco_connect.__UNIQUE_ID_ddebug482, !87, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!90 = !{ptr @sco_conn_add.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../net/bluetooth/sco.c", i32 136, i32 2}
!92 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @sco_conn_add.__key.39, !94, !"__key", i1 false, i1 false}
!94 = !{!"../net/bluetooth/sco.c", i32 137, i32 2}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @sco_conn_add.__key.41, !94, !"__key", i1 false, i1 false}
!97 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/bluetooth/sco.c", i32 147, i32 2}
!100 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sco_conn_add.__UNIQUE_ID_ddebug478, !99, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/bluetooth/sco.c", i32 95, i32 2}
!104 = !{ptr @sco_sock_timeout.__UNIQUE_ID_ddebug475, !103, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/bluetooth/sco.c", i32 214, i32 2}
!107 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @__sco_chan_add.__UNIQUE_ID_ddebug481, !106, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/net/bluetooth/hci_core.h", i32 1224, i32 2}
!111 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @hci_dev_put.__UNIQUE_ID_ddebug473, !110, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/bluetooth/sco.c", i32 659, i32 2}
!115 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @sco_sock_accept.__UNIQUE_ID_ddebug494, !114, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/bluetooth/sco.c", i32 695, i32 2}
!119 = !{ptr @sco_sock_accept.__UNIQUE_ID_ddebug495, !118, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/bluetooth/sco.c", i32 708, i32 2}
!122 = !{ptr @sco_sock_getname.__UNIQUE_ID_ddebug496, !121, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/bluetooth/sco.c", i32 613, i32 2}
!125 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @sco_sock_listen.__UNIQUE_ID_ddebug493, !124, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/bluetooth/sco.c", i32 1214, i32 2}
!129 = !{ptr @sco_sock_shutdown.__UNIQUE_ID_ddebug511, !128, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/bluetooth/sco.c", i32 836, i32 2}
!132 = !{ptr @sco_sock_setsockopt.__UNIQUE_ID_ddebug499, !131, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!135 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/bluetooth/sco.c", i32 1042, i32 2}
!142 = !{ptr @sco_sock_getsockopt.__UNIQUE_ID_ddebug508, !141, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/bluetooth/sco.c", i32 974, i32 2}
!145 = !{ptr @sco_sock_getsockopt_old.__UNIQUE_ID_ddebug502, !144, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/bluetooth/sco.c", i32 992, i32 3}
!148 = !{ptr @sco_sock_getsockopt_old.__UNIQUE_ID_ddebug503, !147, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../net/bluetooth/sco.c", i32 727, i32 2}
!151 = !{ptr @sco_sock_sendmsg.__UNIQUE_ID_ddebug497, !150, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/bluetooth/sco.c", i32 293, i32 2}
!154 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @sco_send_frame.__UNIQUE_ID_ddebug483, !153, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/bluetooth/sco.c", i32 758, i32 2}
!158 = !{ptr @sco_conn_defer_accept.__UNIQUE_ID_ddebug498, !157, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/bluetooth/sco.c", i32 368, i32 2}
!161 = !{ptr @sco_sock_destruct.__UNIQUE_ID_ddebug485, !160, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/bluetooth/sco.c", i32 461, i32 2}
!164 = !{ptr @sco_sock_init.__UNIQUE_ID_ddebug489, !163, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../net/bluetooth/sco.c", i32 1396, i32 11}
!167 = !{ptr @sco_cb, !168, !"sco_cb", i1 false, i1 false}
!168 = !{!"../net/bluetooth/sco.c", i32 1395, i32 22}
!169 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/bluetooth/sco.c", i32 1355, i32 2}
!171 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @sco_connect_cfm.__UNIQUE_ID_ddebug515, !170, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!173 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../net/bluetooth/sco.c", i32 1268, i32 2}
!175 = !{ptr @sco_conn_ready.__UNIQUE_ID_ddebug513, !174, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!176 = !{ptr @.str.74, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../include/net/bluetooth/hci_core.h", i32 1180, i32 2}
!178 = !{ptr @hci_conn_hold.__UNIQUE_ID_ddebug471, !177, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!179 = !{ptr @.str.75, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/bluetooth/sco.c", i32 187, i32 2}
!181 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @sco_conn_del.__UNIQUE_ID_ddebug480, !180, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!183 = !{ptr @.str.77, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/bluetooth/sco.c", i32 1372, i32 2}
!185 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @sco_disconn_cfm.__UNIQUE_ID_ddebug516, !184, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!187 = !{ptr @sco_debugfs_fops, !188, !"sco_debugfs_fops", i1 false, i1 false}
!188 = !{!"../net/bluetooth/sco.c", i32 1417, i32 1}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/bluetooth/sco.c", i32 1408, i32 17}
!191 = !{ptr @__param_str_disable_esco, !19, !"__param_str_disable_esco", i1 false, i1 false}
!192 = !{!"sp"}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{i64 2148981730, i64 2148981735, i64 2148981748, i64 2148981792, i64 2148981826, i64 2148981847}
!203 = !{!"branch_weights", i32 2000, i32 1}
!204 = !{i64 2148369883, i64 2148369915, i64 2148369944, i64 2148369978, i64 2148370009, i64 2148370032}
!205 = !{!"branch_weights", i32 1, i32 2000}
!206 = !{i64 2148457908}
!207 = !{i64 2148372348, i64 2148372380, i64 2148372409, i64 2148372443, i64 2148372474, i64 2148372497}
!208 = !{i64 2149334022}
!209 = !{!"auto-init"}
!210 = !{i64 2152444456, i64 2152444481}
!211 = !{i64 4940011}
!212 = !{i64 4940208}
!213 = !{i64 2152425441}
!214 = !{i64 2157391126, i64 2157391406, i64 2157391740, i64 2157392074}
!215 = !{i64 2157400889, i64 2157401169, i64 2157401503, i64 2157401837}
!216 = !{i64 2152445137, i64 2152445162}
!217 = !{i64 2157411751, i64 2157412031, i64 2157412365, i64 2157412699}
!218 = !{i64 2157420658, i64 2157420938, i64 2157421272, i64 2157421606}
!219 = !{i64 2157429645, i64 2157429925, i64 2157430259, i64 2157430593}
!220 = !{i64 2157437984, i64 2157438264, i64 2157438598, i64 2157438932}
!221 = !{i64 2157453999, i64 2157454279, i64 2157454613, i64 2157454947}
!222 = !{i64 2156804004}
!223 = !{i64 875121, i64 875138, i64 875162, i64 875188, i64 875206}
!224 = !{i64 2156804347}
!225 = !{i64 2155122224, i64 2155122712, i64 2155122261, i64 2155122317, i64 2155122351, i64 2155122375, i64 2155122416, i64 2155122437, i64 2155122465, i64 2155122499}
!226 = !{i64 2148456829}
!227 = !{i64 2148371538, i64 2148371570, i64 2148371599, i64 2148371633, i64 2148371664, i64 2148371687}
!228 = !{i64 2148457058}
!229 = !{i8 0, i8 2}
!230 = !{i64 2157370537, i64 2157370817, i64 2157371151, i64 2157371485}
!231 = !{i64 2148368353, i64 2148368379, i64 2148368408, i64 2148368442, i64 2148368473, i64 2148368496}
