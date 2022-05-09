; ModuleID = '/llk/IR_all_yes/net/key/af_key.c_pt.bc'
source_filename = "../net/key/af_key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfrm_mgr = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.125, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.125 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.113, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.113 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.108, i32, %struct.spinlock }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { ptr, ptr }
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
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfrm_mark = type { i32, i32 }
%struct.km_event = type { %union.anon.149, i32, i32, i32, ptr }
%union.anon.149 = type { i32 }
%struct.netns_pfkey = type { %struct.hlist_head, %struct.atomic_t }
%struct.sk_buff = type { %union.anon.21, %union.anon.24, %union.anon.25, [48 x i8], %union.anon.26, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.28, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, ptr, %union.anon.23 }
%union.anon.23 = type { ptr }
%union.anon.24 = type { ptr }
%union.anon.25 = type { i64 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i32, ptr }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.30, i32, i32, i32, i16, i16, %union.anon.32, i32, %union.anon.33, %union.anon.34, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.30 = type { i32 }
%union.anon.32 = type { i32 }
%union.anon.33 = type { i32 }
%union.anon.34 = type { i16 }
%struct.sadb_msg = type { i8, i8, i8, i8, i16, i16, i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.116, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.117, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.117 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.xfrm_tmpl = type { %struct.xfrm_id, %union.xfrm_address_t, i16, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon.154, %struct.sadb_alg }
%union.anon.154 = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }
%struct.xfrm_sec_ctx = type { i8, i8, i16, i32, [0 x i8] }
%struct.sadb_address = type { i16, i16, i8, i8, i16 }
%struct.sadb_x_policy = type { i16, i16, i16, i8, i8, i32, i32 }
%struct.xfrm_policy = type { %struct.possible_net_t, %struct.hlist_node, %struct.hlist_node, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.timer_list, %struct.atomic_t, i32, i32, i32, %struct.xfrm_mark, %struct.xfrm_selector, %struct.xfrm_lifetime_cfg, %struct.xfrm_lifetime_cur, %struct.xfrm_policy_walk_entry, %struct.xfrm_policy_queue, i8, i8, i8, i8, i8, i16, ptr, [6 x %struct.xfrm_tmpl], %struct.hlist_node, %struct.callback_head }
%struct.xfrm_policy_walk_entry = type { %struct.list_head, i8 }
%struct.xfrm_policy_queue = type { %struct.sk_buff_head, %struct.timer_list, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sadb_prop = type { i16, i16, i8, [3 x i8] }
%struct.sadb_comb = type { i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.sadb_x_sec_ctx = type { i16, i16, i8, i8, i16 }
%struct.sock_common = type { %union.anon.118, %union.anon.120, %union.anon.121, i16, i8, i8, i32, %union.anon.123, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.126, [0 x i32], %union.anon.127, i16, i16, %union.anon.128, %struct.refcount_struct, [0 x i32], %union.anon.129 }
%union.anon.118 = type { i64 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.123 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.20 }
%union.anon.20 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { %struct.hlist_node }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%struct.sadb_sa = type { i16, i16, i32, i8, i8, i8, i8, i32 }
%struct.sadb_x_nat_t_port = type { i16, i16, i16, i16 }
%struct.xfrm_encap_tmpl = type { i16, i16, i16, %union.xfrm_address_t }
%struct.xfrm_kmaddress = type { %union.xfrm_address_t, %union.xfrm_address_t, i32, i16 }
%struct.xfrm_migrate = type { %union.xfrm_address_t, %union.xfrm_address_t, %union.xfrm_address_t, %union.xfrm_address_t, i8, i8, i16, i32, i16, i16 }
%struct.sadb_x_kmaddress = type { i16, i16, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sadb_x_ipsecrequest = type { i16, i16, i8, i8, i16, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pfkey_sock = type { %struct.sock, i32, i32, %struct.anon.155, %struct.mutex }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.130, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.131, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.132, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.130 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.131 = type { ptr }
%union.anon.132 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.anon.155 = type { i8, i32, ptr, ptr, %union.anon.156, ptr }
%union.anon.156 = type { %struct.xfrm_policy_walk }
%struct.xfrm_policy_walk = type { %struct.xfrm_policy_walk_entry, i8, i32 }
%struct.xfrm_algo_auth = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_algo = type { [64 x i8], i32, [0 x i8] }
%struct.sadb_lifetime = type { i16, i16, i32, i64, i64, i64 }
%struct.sadb_key = type { i16, i16, i16, i16 }
%struct.sadb_x_sa2 = type { i16, i16, i8, i8, i16, i32, i32 }
%struct.sadb_x_nat_t_type = type { i16, i16, i8, [3 x i8] }
%struct.xfrm_user_sec_ctx = type { i16, i16, i8, i8, i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.56, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.56 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.68 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.68 = type { %struct.callback_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.124, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.97, %union.anon.98 }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.124 = type { ptr }
%struct.sadb_ext = type { i16, i16 }
%struct.sadb_spirange = type { i16, i16, i32, i32, i32 }
%struct.sadb_supported = type { i16, i16, i32 }
%struct.sadb_x_filter = type { i16, i16, [4 x i32], [4 x i32], i16, i8, i8 }
%struct.xfrm_address_filter = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i8, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@pfkeyv2_mgr = internal global { %struct.xfrm_mgr, [56 x i8] } { %struct.xfrm_mgr { %struct.list_head zeroinitializer, ptr @pfkey_send_notify, ptr @pfkey_send_acquire, ptr @pfkey_compile_policy, ptr @pfkey_send_new_mapping, ptr @pfkey_send_policy_notify, ptr null, ptr @pfkey_send_migrate, ptr @pfkey_is_alive }, [56 x i8] zeroinitializer }, align 32
@pfkey_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @pfkey_net_init, ptr null, ptr @pfkey_net_exit, ptr null, ptr @pfkey_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@key_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1104, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.125 zeroinitializer, ptr null, [32 x i8] c"KEY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_af_key__520_3908_ipsec_pfkey_init6 = internal global ptr @ipsec_pfkey_init, section ".initcall6.init", align 4
@__exitcall_ipsec_pfkey_exit = internal global ptr @ipsec_pfkey_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file521 = internal constant [27 x i8] c"af_key.file=net/key/af_key\00", section ".modinfo", align 1
@__UNIQUE_ID_license522 = internal constant [19 x i8] c"af_key.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias523 = internal constant [23 x i8] c"af_key.alias=net-pf-15\00", section ".modinfo", align 1
@pfkey_net_id = internal global i32 0, section ".data..read_mostly", align 4
@pfkey_send_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013pfkey: Unknown SA event %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pfkey_send_notify\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/key/af_key.c\00", [47 x i8] zeroinitializer }, align 32
@pfkey_send_notify._entry_ptr = internal global ptr @pfkey_send_notify._entry, section ".printk_index", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@pfkey_broadcast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@event2keytype._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 1465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"event2keytype\00", [18 x i8] zeroinitializer }, align 32
@event2keytype._entry_ptr = internal global ptr @event2keytype._entry, section ".printk_index", align 4
@get_acqseq.acqseq = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@gen_reqid.reqid = internal global { i32, [28 x i8] } { i32 16383, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pfkey_send_policy_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 3099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013pfkey: Unknown policy event %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pfkey_send_policy_notify\00", [39 x i8] zeroinitializer }, align 32
@pfkey_send_policy_notify._entry_ptr = internal global ptr @pfkey_send_policy_notify._entry, section ".printk_index", align 4
@event2poltype._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.12, ptr @.str.2, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"event2poltype\00", [18 x i8] zeroinitializer }, align 32
@event2poltype._entry_ptr = internal global ptr @event2poltype._entry, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@pfkey_is_alive.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pfkey\00", [26 x i8] zeroinitializer }, align 32
@pfkey_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @pfkey_seq_start, ptr @pfkey_seq_stop, ptr @pfkey_seq_next, ptr @pfkey_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sk       RefCnt Rmem   Wmem   User   Inode\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%pK %-6d %-6u %-6u %-6u %-6lu\0A\00", [33 x i8] zeroinitializer }, align 32
@pfkey_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 15, ptr @pfkey_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@pfkey_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pfk->dump_lock\00", [16 x i8] zeroinitializer }, align 32
@pfkey_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 15, ptr null, ptr @pfkey_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @datagram_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @pfkey_sendmsg, ptr @pfkey_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@pfkey_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pfkey_mutex, i64 52), ptr getelementptr (i8, ptr @pfkey_mutex, i64 52) }, ptr @pfkey_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pfkey_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pfkey_mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@pfkey_funcs = internal constant { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @pfkey_reserved, ptr @pfkey_getspi, ptr @pfkey_add, ptr @pfkey_add, ptr @pfkey_delete, ptr @pfkey_get, ptr @pfkey_acquire, ptr @pfkey_register, ptr null, ptr @pfkey_flush, ptr @pfkey_dump, ptr @pfkey_promisc, ptr null, ptr @pfkey_spdadd, ptr @pfkey_spdadd, ptr @pfkey_spddelete, ptr @pfkey_spdget, ptr null, ptr @pfkey_spddump, ptr @pfkey_spdflush, ptr @pfkey_spdadd, ptr null, ptr @pfkey_spdget, ptr null, ptr @pfkey_migrate], [60 x i8] zeroinitializer }, align 32
@sadb_ext_min_len = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\00\10   \08\08\08\08\08\10\10\10\08\08\08\10\08\10\10\08\08\08\08\08\08(", [37 x i8] zeroinitializer }, align 32
@dummy_mark = internal constant { %struct.xfrm_mark, [24 x i8] } zeroinitializer, align 32
@pfkey_sock_destruct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Attempt to release alive pfkey socket: %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pfkey_sock_destruct\00", [44 x i8] zeroinitializer }, align 32
@pfkey_sock_destruct._entry_ptr = internal global ptr @pfkey_sock_destruct._entry, section ".printk_index", align 4
@switch.table.pfkey_getspi = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\FF\FF32\FF\FF\FF\FF\FFl", [22 x i8] zeroinitializer }, align 32
@switch.table.pfkey_delete = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\FF\FF32\FF\FF\FF\FF\FFl", [22 x i8] zeroinitializer }, align 32
@switch.table.pfkey_get = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\FF\FF32\FF\FF\FF\FF\FFl", [22 x i8] zeroinitializer }, align 32
@switch.table.pfkey_flush = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 255, i16 255, i16 51, i16 50, i16 255, i16 255, i16 255, i16 255, i16 255, i16 108], [44 x i8] zeroinitializer }, align 32
@switch.table.pfkey_dump = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\FF\FF32\FF\FF\FF\FF\FFl", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 16, i64 17, i64 24, i64 26, i64 28, i64 30]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 16, i64 17, i64 24, i64 26]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 16, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 50, i64 51]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 50, i64 51]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [7 x i64] [i64 5, i64 32, i64 19, i64 20, i64 25, i64 27, i64 29]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 19, i64 20, i64 25]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [7 x i64] [i64 5, i64 8, i64 43, i64 50, i64 51, i64 60, i64 108]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.59 = internal global [9 x i64] [i64 7, i64 16, i64 5, i64 6, i64 7, i64 8, i64 9, i64 23, i64 24]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 3, i64 9]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 8, i64 50, i64 51, i64 108]
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"pfkeyv2_mgr\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3833, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"pfkey_net_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3865, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant [10 x i8] c"key_proto\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 132, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3075, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 45, i32 7 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 695, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 723, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 230, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1465, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"acqseq\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3109, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"reqid\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1923, i32 13 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3099, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1446, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3810, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant [14 x i8] c"pfkey_seq_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3799, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3762, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3764, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"pfkey_family_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3750, i32 38 }
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 157, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [10 x i8] c"pfkey_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 3728, i32 31 }
@___asan_gen_.174 = private unnamed_addr constant [12 x i8] c"pfkey_mutex\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 41, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 729, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 230, i32 6 }
@___asan_gen_.190 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 214, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"pfkey_funcs\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 2798, i32 28 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"sadb_ext_min_len\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 345, i32 17 }
@___asan_gen_.198 = private unnamed_addr constant [11 x i8] c"dummy_mark\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 44, i32 31 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [20 x i8] c"../net/key/af_key.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 103, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [26 x i8] c"switch.table.pfkey_getspi\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [26 x i8] c"switch.table.pfkey_delete\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [23 x i8] c"switch.table.pfkey_get\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [25 x i8] c"switch.table.pfkey_flush\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [24 x i8] c"switch.table.pfkey_dump\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias523, ptr @__UNIQUE_ID_file521, ptr @__UNIQUE_ID_license522, ptr @__exitcall_ipsec_pfkey_exit, ptr @__initcall__kmod_af_key__520_3908_ipsec_pfkey_init6, ptr @event2keytype._entry, ptr @event2keytype._entry_ptr, ptr @event2poltype._entry, ptr @event2poltype._entry_ptr, ptr @ipsec_pfkey_exit, ptr @pfkey_send_notify._entry, ptr @pfkey_send_notify._entry_ptr, ptr @pfkey_send_policy_notify._entry, ptr @pfkey_send_policy_notify._entry_ptr, ptr @pfkey_sock_destruct._entry, ptr @pfkey_sock_destruct._entry_ptr, ptr @pfkeyv2_mgr, ptr @pfkey_net_ops, ptr @key_proto, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @get_acqseq.acqseq, ptr @gen_reqid.reqid, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @pfkey_seq_ops, ptr @.str.14, ptr @.str.15, ptr @pfkey_family_ops, ptr @pfkey_create.__key, ptr @.str.16, ptr @pfkey_ops, ptr @pfkey_mutex, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pfkey_funcs, ptr @sadb_ext_min_len, ptr @dummy_mark, ptr @.str.22, ptr @.str.23, ptr @switch.table.pfkey_getspi, ptr @switch.table.pfkey_delete, ptr @switch.table.pfkey_get, ptr @switch.table.pfkey_flush, ptr @switch.table.pfkey_dump], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfkeyv2_mgr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfkey_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfkey_send_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event2keytype._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_acqseq.acqseq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_reqid.reqid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfkey_send_policy_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event2poltype._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfkey_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfkey_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfkey_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfkey_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfkey_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfkey_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sadb_ext_min_len to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_mark to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfkey_sock_destruct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pfkey_getspi to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pfkey_delete to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pfkey_get to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pfkey_flush to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pfkey_dump to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipsec_pfkey_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @xfrm_unregister_km(ptr noundef nonnull @pfkeyv2_mgr) #15
  tail call void @sock_unregister(i32 noundef 15) #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @pfkey_net_ops) #15
  tail call void @proto_unregister(ptr noundef nonnull @key_proto) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_unregister_km(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipsec_pfkey_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @key_proto, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @pfkey_net_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.out_unregister_key_proto_crit_edge

if.end.out_unregister_key_proto_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unregister_key_proto

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @sock_register(ptr noundef nonnull @pfkey_family_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %if.end4.out_unregister_pernet_crit_edge

if.end4.out_unregister_pernet_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unregister_pernet

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @xfrm_register_km(ptr noundef nonnull @pfkeyv2_mgr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end8.out_crit_edge, label %out_sock_unregister

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %out_unregister_key_proto, %if.end8.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.2, %out_unregister_key_proto ], [ 0, %if.end8.out_crit_edge ]
  ret i32 %err.0

out_sock_unregister:                              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sock_unregister(i32 noundef 15) #15
  br label %out_unregister_pernet

out_unregister_pernet:                            ; preds = %out_sock_unregister, %if.end4.out_unregister_pernet_crit_edge
  %err.1 = phi i32 [ %call5, %if.end4.out_unregister_pernet_crit_edge ], [ %call9, %out_sock_unregister ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @pfkey_net_ops) #15
  br label %out_unregister_key_proto

out_unregister_key_proto:                         ; preds = %out_unregister_pernet, %if.end.out_unregister_key_proto_crit_edge
  %err.2 = phi i32 [ %call1, %if.end.out_unregister_key_proto_crit_edge ], [ %err.1, %out_unregister_pernet ]
  tail call void @proto_unregister(ptr noundef nonnull @key_proto) #15
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_send_notify(ptr noundef %x, ptr nocapture noundef readonly %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %x, null
  %net1 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 4
  %cond.in = select i1 %tobool.not, ptr %net1, ptr %x
  %0 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond = load ptr, ptr %cond.in, align 4
  %1 = load i32, ptr @pfkey_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %1)
  %socks_nr = getelementptr inbounds %struct.netns_pfkey, ptr %call2, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %socks_nr, i32 noundef 4) #15
  %2 = ptrtoint ptr %socks_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %socks_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %event = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 24, label %sw.bb
    i32 17, label %if.end.sw.bb5_crit_edge
    i32 16, label %if.end.sw.bb5_crit_edge53
    i32 26, label %if.end.sw.bb5_crit_edge54
    i32 28, label %sw.bb7
    i32 30, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.sw.bb5_crit_edge54:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

if.end.sw.bb5_crit_edge53:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

sw.bb:                                            ; preds = %if.end
  %7 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 2
  %call.i.i20 = tail call fastcc ptr @__pfkey_xfrm_state2msg(ptr noundef %x, i32 noundef 0, i32 noundef %..i) #15
  %cmp.i.i = icmp ugt ptr %call.i.i20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %call.i.i20 to i32
  br label %cleanup

if.end4.i:                                        ; preds = %sw.bb
  %data5.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i20, i32 0, i32 19
  %10 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data5.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %11, align 1
  %sadb_msg_type.i = getelementptr inbounds %struct.sadb_msg, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %sadb_msg_type.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 8, ptr %sadb_msg_type.i, align 1
  %proto.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %proto.i, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %15, label %sw.default.i.i [
    i8 51, label %if.end4.i.pfkey_proto2satype.exit.i_crit_edge
    i8 50, label %sw.bb1.i.i
    i8 108, label %sw.bb2.i.i
  ]

if.end4.i.pfkey_proto2satype.exit.i_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit.i

sw.bb1.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit.i

sw.bb2.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit.i

sw.default.i.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit.i

pfkey_proto2satype.exit.i:                        ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end4.i.pfkey_proto2satype.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %sw.default.i.i ], [ 9, %sw.bb2.i.i ], [ 3, %sw.bb1.i.i ], [ 2, %if.end4.i.pfkey_proto2satype.exit.i_crit_edge ]
  %sadb_msg_satype.i = getelementptr inbounds %struct.sadb_msg, ptr %11, i32 0, i32 3
  %17 = ptrtoint ptr %sadb_msg_satype.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %retval.0.i.i, ptr %sadb_msg_satype.i, align 1
  %sadb_msg_errno.i = getelementptr inbounds %struct.sadb_msg, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %sadb_msg_errno.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %sadb_msg_errno.i, align 1
  %sadb_msg_reserved.i = getelementptr inbounds %struct.sadb_msg, ptr %11, i32 0, i32 5
  %19 = ptrtoint ptr %sadb_msg_reserved.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 0, ptr %sadb_msg_reserved.i, align 1
  %sadb_msg_seq.i = getelementptr inbounds %struct.sadb_msg, ptr %11, i32 0, i32 6
  %20 = ptrtoint ptr %sadb_msg_seq.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 0, ptr %sadb_msg_seq.i, align 1
  %sadb_msg_pid.i = getelementptr inbounds %struct.sadb_msg, ptr %11, i32 0, i32 7
  %21 = ptrtoint ptr %sadb_msg_pid.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %sadb_msg_pid.i, align 1
  %22 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %x, align 4
  %call8.i = tail call fastcc i32 @pfkey_broadcast(ptr noundef %call.i.i20, i32 noundef 2592, i32 noundef 2, ptr noundef null, ptr noundef %23) #15
  br label %cleanup

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge53, %if.end.sw.bb5_crit_edge54
  %call.i.i21 = tail call fastcc ptr @__pfkey_xfrm_state2msg(ptr noundef %x, i32 noundef 1, i32 noundef 3) #15
  %cmp.i.i22 = icmp ugt ptr %call.i.i21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i22, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %call.i.i21 to i32
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i21, i32 0, i32 19
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %26, align 1
  %28 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %event, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %29, label %do.end.i.i [
    i32 17, label %if.end.i.event2keytype.exit.i_crit_edge
    i32 16, label %sw.bb1.i.i23
    i32 26, label %sw.bb2.i.i24
    i32 24, label %sw.bb3.i.i
  ]

if.end.i.event2keytype.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %event2keytype.exit.i

sw.bb1.i.i23:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %event2keytype.exit.i

sw.bb2.i.i24:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %event2keytype.exit.i

sw.bb3.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %event2keytype.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %29) #18
  br label %event2keytype.exit.i

event2keytype.exit.i:                             ; preds = %do.end.i.i, %sw.bb3.i.i, %sw.bb2.i.i24, %sw.bb1.i.i23, %if.end.i.event2keytype.exit.i_crit_edge
  %retval.0.i.i25 = phi i8 [ 0, %do.end.i.i ], [ 8, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i24 ], [ 3, %sw.bb1.i.i23 ], [ 4, %if.end.i.event2keytype.exit.i_crit_edge ]
  %sadb_msg_type.i26 = getelementptr inbounds %struct.sadb_msg, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %sadb_msg_type.i26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %retval.0.i.i25, ptr %sadb_msg_type.i26, align 1
  %proto.i27 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %proto.i27 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %proto.i27, align 4
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %33, label %sw.default.i.i28 [
    i8 51, label %event2keytype.exit.i.pfkey_proto2satype.exit.i34_crit_edge
    i8 50, label %sw.bb1.i23.i
    i8 108, label %sw.bb2.i24.i
  ]

event2keytype.exit.i.pfkey_proto2satype.exit.i34_crit_edge: ; preds = %event2keytype.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit.i34

sw.bb1.i23.i:                                     ; preds = %event2keytype.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit.i34

sw.bb2.i24.i:                                     ; preds = %event2keytype.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit.i34

sw.default.i.i28:                                 ; preds = %event2keytype.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit.i34

pfkey_proto2satype.exit.i34:                      ; preds = %sw.default.i.i28, %sw.bb2.i24.i, %sw.bb1.i23.i, %event2keytype.exit.i.pfkey_proto2satype.exit.i34_crit_edge
  %retval.0.i25.i = phi i8 [ 0, %sw.default.i.i28 ], [ 9, %sw.bb2.i24.i ], [ 3, %sw.bb1.i23.i ], [ 2, %event2keytype.exit.i.pfkey_proto2satype.exit.i34_crit_edge ]
  %sadb_msg_satype.i29 = getelementptr inbounds %struct.sadb_msg, ptr %26, i32 0, i32 3
  %35 = ptrtoint ptr %sadb_msg_satype.i29 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %retval.0.i25.i, ptr %sadb_msg_satype.i29, align 1
  %sadb_msg_errno.i30 = getelementptr inbounds %struct.sadb_msg, ptr %26, i32 0, i32 2
  %36 = ptrtoint ptr %sadb_msg_errno.i30 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %sadb_msg_errno.i30, align 1
  %sadb_msg_reserved.i31 = getelementptr inbounds %struct.sadb_msg, ptr %26, i32 0, i32 5
  %37 = ptrtoint ptr %sadb_msg_reserved.i31 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 0, ptr %sadb_msg_reserved.i31, align 1
  %seq.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %38 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %seq.i, align 4
  %sadb_msg_seq.i32 = getelementptr inbounds %struct.sadb_msg, ptr %26, i32 0, i32 6
  %40 = ptrtoint ptr %sadb_msg_seq.i32 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %sadb_msg_seq.i32, align 1
  %portid.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %41 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %portid.i, align 4
  %sadb_msg_pid.i33 = getelementptr inbounds %struct.sadb_msg, ptr %26, i32 0, i32 7
  %43 = ptrtoint ptr %sadb_msg_pid.i33 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %sadb_msg_pid.i33, align 1
  %44 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %x, align 4
  %call7.i = tail call fastcc i32 @pfkey_broadcast(ptr noundef %call.i.i21, i32 noundef 2592, i32 noundef 0, ptr noundef null, ptr noundef %45) #15
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %call.i.i36 = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %tobool.not.i37 = icmp eq ptr %call.i.i36, null
  br i1 %tobool.not.i37, label %sw.bb7.cleanup_crit_edge, label %if.end.i38

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i38:                                       ; preds = %sw.bb7
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i36, i32 noundef 16) #15
  %46 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %c, align 4
  %conv.i = trunc i32 %47 to i16
  %48 = zext i16 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %conv.i, label %sw.default.i.i41 [
    i16 51, label %if.end.i38.pfkey_proto2satype.exit.i51_crit_edge
    i16 50, label %sw.bb1.i.i39
    i16 108, label %sw.bb2.i.i40
  ]

if.end.i38.pfkey_proto2satype.exit.i51_crit_edge: ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit.i51

sw.bb1.i.i39:                                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit.i51

sw.bb2.i.i40:                                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit.i51

sw.default.i.i41:                                 ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit.i51

pfkey_proto2satype.exit.i51:                      ; preds = %sw.default.i.i41, %sw.bb2.i.i40, %sw.bb1.i.i39, %if.end.i38.pfkey_proto2satype.exit.i51_crit_edge
  %retval.0.i.i42 = phi i8 [ 0, %sw.default.i.i41 ], [ 9, %sw.bb2.i.i40 ], [ 3, %sw.bb1.i.i39 ], [ 2, %if.end.i38.pfkey_proto2satype.exit.i51_crit_edge ]
  %sadb_msg_satype.i43 = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 3
  %49 = ptrtoint ptr %sadb_msg_satype.i43 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %retval.0.i.i42, ptr %sadb_msg_satype.i43, align 1
  %sadb_msg_type.i44 = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 1
  %50 = ptrtoint ptr %sadb_msg_type.i44 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 9, ptr %sadb_msg_type.i44, align 1
  %seq.i45 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %51 = ptrtoint ptr %seq.i45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %seq.i45, align 4
  %sadb_msg_seq.i46 = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 6
  %53 = ptrtoint ptr %sadb_msg_seq.i46 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %sadb_msg_seq.i46, align 1
  %portid.i47 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %54 = ptrtoint ptr %portid.i47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %portid.i47, align 4
  %sadb_msg_pid.i48 = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 7
  %56 = ptrtoint ptr %sadb_msg_pid.i48 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %sadb_msg_pid.i48, align 1
  %57 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %call1.i, align 1
  %sadb_msg_errno.i49 = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 2
  %58 = ptrtoint ptr %sadb_msg_errno.i49 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %sadb_msg_errno.i49, align 1
  %sadb_msg_len.i = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 4
  %59 = ptrtoint ptr %sadb_msg_len.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 2, ptr %sadb_msg_len.i, align 1
  %sadb_msg_reserved.i50 = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 5
  %60 = ptrtoint ptr %sadb_msg_reserved.i50 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 0, ptr %sadb_msg_reserved.i50, align 1
  %61 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net1, align 4
  %call3.i = tail call fastcc i32 @pfkey_broadcast(ptr noundef nonnull %call.i.i36, i32 noundef 2592, i32 noundef 0, ptr noundef null, ptr noundef %62) #15
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %pfkey_proto2satype.exit.i51, %sw.bb7.cleanup_crit_edge, %pfkey_proto2satype.exit.i34, %if.then.i, %pfkey_proto2satype.exit.i, %if.then2.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %9, %if.then2.i ], [ 0, %pfkey_proto2satype.exit.i ], [ %24, %if.then.i ], [ 0, %pfkey_proto2satype.exit.i34 ], [ 0, %pfkey_proto2satype.exit.i51 ], [ -105, %sw.bb7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_send_acquire(ptr nocapture noundef %x, ptr nocapture noundef readonly %t, ptr nocapture noundef readonly %xp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %switch.selectcmp.i.i = icmp eq i16 %1, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %switch.selectcmp2.i.i = icmp eq i16 %1, 2
  %switch.select.i.op.op.op.i = select i1 %switch.selectcmp.i.i, i32 32, i32 0
  %add.i = select i1 %switch.selectcmp2.i.i, i32 16, i32 %switch.select.i.op.op.op.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not = icmp eq i32 %add.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl nuw nsw i32 %add.i, 1
  %add1 = add nuw nsw i32 %mul, 48
  %id = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %proto, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %3, label %if.end.if.end15_crit_edge [
    i8 51, label %if.then3
    i8 50, label %if.then11
  ]

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then3:                                         ; preds = %if.end
  %call23.i = tail call ptr @xfrm_aalg_get_byidx(i32 noundef 0) #15
  %tobool.not24.i = icmp eq ptr %call23.i, null
  br i1 %tobool.not24.i, label %if.then3.count_ah_combs.exit_crit_edge, label %if.end.lr.ph.i

if.then3.count_ah_combs.exit_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %count_ah_combs.exit

if.end.lr.ph.i:                                   ; preds = %if.then3
  %aalgos.i.i = getelementptr inbounds %struct.xfrm_tmpl, ptr %t, i32 0, i32 8
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %call27.i = phi ptr [ %call23.i, %if.end.lr.ph.i ], [ %call.i, %for.inc.i.if.end.i_crit_edge ]
  %sz.026.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %sz.2.ph.i, %for.inc.i.if.end.i_crit_edge ]
  %i.025.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %inc.i, %for.inc.i.if.end.i_crit_edge ]
  %pfkey_supported.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call27.i, i32 0, i32 2
  %5 = ptrtoint ptr %pfkey_supported.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %pfkey_supported.i, align 4
  %6 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end3.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end3.i:                                        ; preds = %if.end.i
  %desc.i.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call27.i, i32 0, i32 4
  %7 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %desc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %8)
  %cmp.i.i = icmp ugt i8 %8, 31
  br i1 %cmp.i.i, label %if.end3.i.aalg_tmpl_set.exit.thread.i_crit_edge, label %aalg_tmpl_set.exit.i

if.end3.i.aalg_tmpl_set.exit.thread.i_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aalg_tmpl_set.exit.thread.i

aalg_tmpl_set.exit.i:                             ; preds = %if.end3.i
  %conv.i.i = zext i8 %8 to i32
  %9 = ptrtoint ptr %aalgos.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aalgos.i.i, align 4
  %11 = shl nuw i32 1, %conv.i.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not.i = icmp eq i32 %12, 0
  %add.i192 = add i32 %sz.026.i, 72
  br i1 %tobool5.not.i, label %aalg_tmpl_set.exit.i.aalg_tmpl_set.exit.thread.i_crit_edge, label %aalg_tmpl_set.exit.i.for.inc.i_crit_edge

aalg_tmpl_set.exit.i.for.inc.i_crit_edge:         ; preds = %aalg_tmpl_set.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

aalg_tmpl_set.exit.i.aalg_tmpl_set.exit.thread.i_crit_edge: ; preds = %aalg_tmpl_set.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aalg_tmpl_set.exit.thread.i

aalg_tmpl_set.exit.thread.i:                      ; preds = %aalg_tmpl_set.exit.i.aalg_tmpl_set.exit.thread.i_crit_edge, %if.end3.i.aalg_tmpl_set.exit.thread.i_crit_edge
  br label %for.inc.i

for.inc.i:                                        ; preds = %aalg_tmpl_set.exit.thread.i, %aalg_tmpl_set.exit.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %sz.2.ph.i = phi i32 [ %add.i192, %aalg_tmpl_set.exit.i.for.inc.i_crit_edge ], [ %sz.026.i, %aalg_tmpl_set.exit.thread.i ], [ %sz.026.i, %if.end.i.for.inc.i_crit_edge ]
  %inc.i = add i32 %i.025.i, 1
  %call.i = tail call ptr @xfrm_aalg_get_byidx(i32 noundef %inc.i) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.inc.i.count_ah_combs.exit_crit_edge, label %for.inc.i.if.end.i_crit_edge

for.inc.i.if.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

for.inc.i.count_ah_combs.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %count_ah_combs.exit

count_ah_combs.exit:                              ; preds = %for.inc.i.count_ah_combs.exit_crit_edge, %if.then3.count_ah_combs.exit_crit_edge
  %sz.0.lcssa.i = phi i32 [ 0, %if.then3.count_ah_combs.exit_crit_edge ], [ %sz.2.ph.i, %for.inc.i.count_ah_combs.exit_crit_edge ]
  %add8.i = add nuw nsw i32 %mul, 56
  %add5 = add i32 %add8.i, %sz.0.lcssa.i
  br label %if.end15

if.then11:                                        ; preds = %if.end
  %call71.i = tail call ptr @xfrm_ealg_get_byidx(i32 noundef 0) #15
  %tobool.not72.i = icmp eq ptr %call71.i, null
  br i1 %tobool.not72.i, label %if.then11.count_esp_combs.exit_crit_edge, label %if.end.lr.ph.i194

if.then11.count_esp_combs.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %count_esp_combs.exit

if.end.lr.ph.i194:                                ; preds = %if.then11
  %ealgos.i.i = getelementptr inbounds %struct.xfrm_tmpl, ptr %t, i32 0, i32 9
  %aalgos.i.i193 = getelementptr inbounds %struct.xfrm_tmpl, ptr %t, i32 0, i32 8
  br label %if.end.i198

if.end.i198:                                      ; preds = %for.inc27.i.if.end.i198_crit_edge, %if.end.lr.ph.i194
  %call75.i = phi ptr [ %call71.i, %if.end.lr.ph.i194 ], [ %call.i209, %for.inc27.i.if.end.i198_crit_edge ]
  %sz.074.i = phi i32 [ 0, %if.end.lr.ph.i194 ], [ %sz.4.ph.i, %for.inc27.i.if.end.i198_crit_edge ]
  %i.073.i = phi i32 [ 0, %if.end.lr.ph.i194 ], [ %inc28.i, %for.inc27.i.if.end.i198_crit_edge ]
  %pfkey_supported.i195 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call75.i, i32 0, i32 2
  %13 = ptrtoint ptr %pfkey_supported.i195 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i196 = load i8, ptr %pfkey_supported.i195, align 4
  %14 = and i8 %bf.load.i196, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i197 = icmp eq i8 %14, 0
  br i1 %tobool1.not.i197, label %if.end.i198.for.inc27.i_crit_edge, label %if.end3.i201

if.end.i198.for.inc27.i_crit_edge:                ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc27.i

if.end3.i201:                                     ; preds = %if.end.i198
  %desc.i.i199 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call75.i, i32 0, i32 4
  %15 = ptrtoint ptr %desc.i.i199 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %desc.i.i199, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %16)
  %cmp.i.i200 = icmp ugt i8 %16, 31
  br i1 %cmp.i.i200, label %if.end3.i201.for.inc27.i_crit_edge, label %ealg_tmpl_set.exit.i

if.end3.i201.for.inc27.i_crit_edge:               ; preds = %if.end3.i201
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc27.i

ealg_tmpl_set.exit.i:                             ; preds = %if.end3.i201
  %conv.i.i202 = zext i8 %16 to i32
  %17 = ptrtoint ptr %ealgos.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ealgos.i.i, align 4
  %19 = shl nuw i32 1, %conv.i.i202
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not.i203 = icmp eq i32 %20, 0
  br i1 %tobool5.not.i203, label %ealg_tmpl_set.exit.i.for.inc27.i_crit_edge, label %for.cond8.preheader.i

ealg_tmpl_set.exit.i.for.inc27.i_crit_edge:       ; preds = %ealg_tmpl_set.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc27.i

for.cond8.preheader.i:                            ; preds = %ealg_tmpl_set.exit.i
  %call966.i = tail call ptr @xfrm_aalg_get_byidx(i32 noundef 1) #15
  %tobool10.not67.i = icmp eq ptr %call966.i, null
  br i1 %tobool10.not67.i, label %for.cond8.preheader.i.for.inc27.i_crit_edge, label %for.cond8.preheader.i.if.end12.i_crit_edge

for.cond8.preheader.i.if.end12.i_crit_edge:       ; preds = %for.cond8.preheader.i
  br label %if.end12.i

for.cond8.preheader.i.for.inc27.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc27.i

if.end12.i:                                       ; preds = %for.inc.i208.if.end12.i_crit_edge, %for.cond8.preheader.i.if.end12.i_crit_edge
  %call970.i = phi ptr [ %call9.i, %for.inc.i208.if.end12.i_crit_edge ], [ %call966.i, %for.cond8.preheader.i.if.end12.i_crit_edge ]
  %sz.169.i = phi i32 [ %sz.3.ph.i, %for.inc.i208.if.end12.i_crit_edge ], [ %sz.074.i, %for.cond8.preheader.i.if.end12.i_crit_edge ]
  %k.068.i = phi i32 [ %inc.i207, %for.inc.i208.if.end12.i_crit_edge ], [ 1, %for.cond8.preheader.i.if.end12.i_crit_edge ]
  %pfkey_supported13.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call970.i, i32 0, i32 2
  %21 = ptrtoint ptr %pfkey_supported13.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load14.i = load i8, ptr %pfkey_supported13.i, align 4
  %22 = and i8 %bf.load14.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not.i = icmp eq i8 %22, 0
  br i1 %tobool17.not.i, label %if.end12.i.for.inc.i208_crit_edge, label %if.end19.i

if.end12.i.for.inc.i208_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i208

if.end19.i:                                       ; preds = %if.end12.i
  %desc.i44.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call970.i, i32 0, i32 4
  %23 = ptrtoint ptr %desc.i44.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %desc.i44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %24)
  %cmp.i45.i = icmp ugt i8 %24, 31
  br i1 %cmp.i45.i, label %if.end19.i.aalg_tmpl_set.exit.thread.i206_crit_edge, label %aalg_tmpl_set.exit.i205

if.end19.i.aalg_tmpl_set.exit.thread.i206_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aalg_tmpl_set.exit.thread.i206

aalg_tmpl_set.exit.i205:                          ; preds = %if.end19.i
  %conv.i46.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %aalgos.i.i193 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %aalgos.i.i193, align 4
  %27 = shl nuw i32 1, %conv.i46.i
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool21.not.i = icmp eq i32 %28, 0
  %add.i204 = add i32 %sz.169.i, 72
  br i1 %tobool21.not.i, label %aalg_tmpl_set.exit.i205.aalg_tmpl_set.exit.thread.i206_crit_edge, label %aalg_tmpl_set.exit.i205.for.inc.i208_crit_edge

aalg_tmpl_set.exit.i205.for.inc.i208_crit_edge:   ; preds = %aalg_tmpl_set.exit.i205
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i208

aalg_tmpl_set.exit.i205.aalg_tmpl_set.exit.thread.i206_crit_edge: ; preds = %aalg_tmpl_set.exit.i205
  call void @__sanitizer_cov_trace_pc() #17
  br label %aalg_tmpl_set.exit.thread.i206

aalg_tmpl_set.exit.thread.i206:                   ; preds = %aalg_tmpl_set.exit.i205.aalg_tmpl_set.exit.thread.i206_crit_edge, %if.end19.i.aalg_tmpl_set.exit.thread.i206_crit_edge
  br label %for.inc.i208

for.inc.i208:                                     ; preds = %aalg_tmpl_set.exit.thread.i206, %aalg_tmpl_set.exit.i205.for.inc.i208_crit_edge, %if.end12.i.for.inc.i208_crit_edge
  %sz.3.ph.i = phi i32 [ %add.i204, %aalg_tmpl_set.exit.i205.for.inc.i208_crit_edge ], [ %sz.169.i, %aalg_tmpl_set.exit.thread.i206 ], [ %sz.169.i, %if.end12.i.for.inc.i208_crit_edge ]
  %inc.i207 = add i32 %k.068.i, 1
  %call9.i = tail call ptr @xfrm_aalg_get_byidx(i32 noundef %inc.i207) #15
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %for.inc.i208.for.inc27.i_crit_edge, label %for.inc.i208.if.end12.i_crit_edge

for.inc.i208.if.end12.i_crit_edge:                ; preds = %for.inc.i208
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

for.inc.i208.for.inc27.i_crit_edge:               ; preds = %for.inc.i208
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc27.i

for.inc27.i:                                      ; preds = %for.inc.i208.for.inc27.i_crit_edge, %for.cond8.preheader.i.for.inc27.i_crit_edge, %ealg_tmpl_set.exit.i.for.inc27.i_crit_edge, %if.end3.i201.for.inc27.i_crit_edge, %if.end.i198.for.inc27.i_crit_edge
  %sz.4.ph.i = phi i32 [ %sz.074.i, %ealg_tmpl_set.exit.i.for.inc27.i_crit_edge ], [ %sz.074.i, %if.end.i198.for.inc27.i_crit_edge ], [ %sz.074.i, %if.end3.i201.for.inc27.i_crit_edge ], [ %sz.074.i, %for.cond8.preheader.i.for.inc27.i_crit_edge ], [ %sz.3.ph.i, %for.inc.i208.for.inc27.i_crit_edge ]
  %inc28.i = add i32 %i.073.i, 1
  %call.i209 = tail call ptr @xfrm_ealg_get_byidx(i32 noundef %inc28.i) #15
  %tobool.not.i210 = icmp eq ptr %call.i209, null
  br i1 %tobool.not.i210, label %for.inc27.i.count_esp_combs.exit_crit_edge, label %for.inc27.i.if.end.i198_crit_edge

for.inc27.i.if.end.i198_crit_edge:                ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i198

for.inc27.i.count_esp_combs.exit_crit_edge:       ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %count_esp_combs.exit

count_esp_combs.exit:                             ; preds = %for.inc27.i.count_esp_combs.exit_crit_edge, %if.then11.count_esp_combs.exit_crit_edge
  %sz.0.lcssa.i211 = phi i32 [ 0, %if.then11.count_esp_combs.exit_crit_edge ], [ %sz.4.ph.i, %for.inc27.i.count_esp_combs.exit_crit_edge ]
  %add30.i = add nuw nsw i32 %mul, 56
  %add13 = add i32 %add30.i, %sz.0.lcssa.i211
  br label %if.end15

if.end15:                                         ; preds = %count_esp_combs.exit, %count_ah_combs.exit, %if.end.if.end15_crit_edge
  %size.0 = phi i32 [ %add5, %count_ah_combs.exit ], [ %add13, %count_esp_combs.exit ], [ %add1, %if.end.if.end15_crit_edge ]
  %security = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 50
  %29 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %security, align 4
  %tobool16.not = icmp eq ptr %30, null
  br i1 %tobool16.not, label %if.end15.if.end22_crit_edge, label %if.then17

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %ctx_len = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ctx_len, align 2
  %conv18 = zext i16 %32 to i32
  %sub = add nsw i32 %conv18, -1
  %or = or i32 %sub, 7
  %add20 = add nsw i32 %or, 9
  %add21 = add i32 %add20, %size.0
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end15.if.end22_crit_edge
  %size.1 = phi i32 [ %add21, %if.then17 ], [ %size.0, %if.end15.if.end22_crit_edge ]
  %ctx_size.0 = phi i32 [ %add20, %if.then17 ], [ 8, %if.end15.if.end22_crit_edge ]
  %add23 = add i32 %size.1, 16
  %call.i212 = tail call ptr @__alloc_skb(i32 noundef %add23, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %cmp25 = icmp eq ptr %call.i212, null
  br i1 %cmp25, label %if.end22.cleanup_crit_edge, label %if.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %call29 = tail call ptr @skb_put(ptr noundef nonnull %call.i212, i32 noundef 16) #15
  %33 = ptrtoint ptr %call29 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %call29, align 1
  %sadb_msg_type = getelementptr inbounds %struct.sadb_msg, ptr %call29, i32 0, i32 1
  %34 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 6, ptr %sadb_msg_type, align 1
  %35 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %proto, align 4
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %36, label %sw.default.i [
    i8 51, label %if.end28.pfkey_proto2satype.exit_crit_edge
    i8 50, label %sw.bb1.i
    i8 108, label %sw.bb2.i
  ]

if.end28.pfkey_proto2satype.exit_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.bb1.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.bb2.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.default.i:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

pfkey_proto2satype.exit:                          ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end28.pfkey_proto2satype.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %sw.default.i ], [ 9, %sw.bb2.i ], [ 3, %sw.bb1.i ], [ 2, %if.end28.pfkey_proto2satype.exit_crit_edge ]
  %sadb_msg_satype = getelementptr inbounds %struct.sadb_msg, ptr %call29, i32 0, i32 3
  %38 = ptrtoint ptr %sadb_msg_satype to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %retval.0.i, ptr %sadb_msg_satype, align 1
  %div189 = lshr i32 %size.1, 3
  %conv34 = trunc i32 %div189 to i16
  %sadb_msg_len = getelementptr inbounds %struct.sadb_msg, ptr %call29, i32 0, i32 4
  %39 = ptrtoint ptr %sadb_msg_len to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %conv34, ptr %sadb_msg_len, align 1
  %sadb_msg_errno = getelementptr inbounds %struct.sadb_msg, ptr %call29, i32 0, i32 2
  %40 = ptrtoint ptr %sadb_msg_errno to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %sadb_msg_errno, align 1
  %sadb_msg_reserved = getelementptr inbounds %struct.sadb_msg, ptr %call29, i32 0, i32 5
  %41 = ptrtoint ptr %sadb_msg_reserved to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 0, ptr %sadb_msg_reserved, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %pfkey_proto2satype.exit
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @get_acqseq.acqseq, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !103
  tail call void @llvm.prefetch.p0(ptr nonnull @get_acqseq.acqseq, i32 1, i32 3, i32 1) #15
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @get_acqseq.acqseq, ptr nonnull @get_acqseq.acqseq, i32 1, ptr nonnull elementtype(i32) @get_acqseq.acqseq) #15, !srcloc !104
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !105
  %tobool.not.i213 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i213, label %do.body.i.do.body.i_crit_edge, label %get_acqseq.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

get_acqseq.exit:                                  ; preds = %do.body.i
  %asmresult.i.i.i.i.i.le = extractvalue { i32, i32 } %42, 0
  %seq = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 13, i32 4
  %43 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %asmresult.i.i.i.i.i.le, ptr %seq, align 4
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %call29, i32 0, i32 6
  %44 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %asmresult.i.i.i.i.i.le, ptr %sadb_msg_seq, align 1
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %call29, i32 0, i32 7
  %45 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 0, ptr %sadb_msg_pid, align 1
  %add36 = or i32 %add.i, 8
  %call37 = tail call ptr @skb_put(ptr noundef nonnull %call.i212, i32 noundef %add36) #15
  %div39190 = lshr exact i32 %add36, 3
  %conv40 = trunc i32 %div39190 to i16
  %46 = ptrtoint ptr %call37 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %conv40, ptr %call37, align 1
  %sadb_address_exttype = getelementptr inbounds %struct.sadb_address, ptr %call37, i32 0, i32 1
  %47 = ptrtoint ptr %sadb_address_exttype to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 5, ptr %sadb_address_exttype, align 1
  %sadb_address_proto = getelementptr inbounds %struct.sadb_address, ptr %call37, i32 0, i32 2
  %48 = ptrtoint ptr %sadb_address_proto to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %sadb_address_proto, align 1
  %sadb_address_reserved = getelementptr inbounds %struct.sadb_address, ptr %call37, i32 0, i32 4
  %49 = ptrtoint ptr %sadb_address_reserved to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 0, ptr %sadb_address_reserved, align 1
  %saddr = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %add.ptr = getelementptr %struct.sadb_address, ptr %call37, i32 1
  %50 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %family, align 2
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %51, label %do.body [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i214
  ]

sw.bb.i:                                          ; preds = %get_acqseq.exit
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 2, ptr %add.ptr, align 4
  %sin_port.i = getelementptr %struct.sadb_address, ptr %call37, i32 1, i32 1
  %54 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %sin_port.i, align 2
  %55 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %saddr, align 4
  %sin_addr.i = getelementptr %struct.sadb_address, ptr %call37, i32 1, i32 2
  %57 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %sin_addr.i, align 4
  %__pad.i = getelementptr %struct.sadb_address, ptr %call37, i32 2
  %58 = ptrtoint ptr %__pad.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 0, ptr %__pad.i, align 4
  br label %if.end52

sw.bb1.i214:                                      ; preds = %get_acqseq.exit
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 10, ptr %add.ptr, align 4
  %sin6_port.i = getelementptr %struct.sadb_address, ptr %call37, i32 1, i32 1
  %60 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %sin6_port.i, align 2
  %sin6_flowinfo.i = getelementptr %struct.sadb_address, ptr %call37, i32 1, i32 2
  %61 = ptrtoint ptr %sin6_flowinfo.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %sin6_flowinfo.i, align 4
  %sin6_addr.i = getelementptr %struct.sadb_address, ptr %call37, i32 2
  %62 = call ptr @memcpy(ptr %sin6_addr.i, ptr %saddr, i32 16)
  %sin6_scope_id.i = getelementptr %struct.sadb_address, ptr %call37, i32 4
  %63 = ptrtoint ptr %sin6_scope_id.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %sin6_scope_id.i, align 4
  br label %if.end52

do.body:                                          ; preds = %get_acqseq.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_address_prefixlen = getelementptr inbounds %struct.sadb_address, ptr %call37, i32 0, i32 3
  %64 = ptrtoint ptr %sadb_address_prefixlen to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %sadb_address_prefixlen, align 1
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/key/af_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3193, 0\0A.popsection", ""() #15, !srcloc !106
  unreachable

if.end52:                                         ; preds = %sw.bb1.i214, %sw.bb.i
  %retval.0.i215.ph = phi i8 [ 32, %sw.bb.i ], [ -128, %sw.bb1.i214 ]
  %sadb_address_prefixlen277 = getelementptr inbounds %struct.sadb_address, ptr %call37, i32 0, i32 3
  %65 = ptrtoint ptr %sadb_address_prefixlen277 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %retval.0.i215.ph, ptr %sadb_address_prefixlen277, align 1
  %call54 = tail call ptr @skb_put(ptr noundef nonnull %call.i212, i32 noundef %add36) #15
  %66 = ptrtoint ptr %call54 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %conv40, ptr %call54, align 1
  %sadb_address_exttype59 = getelementptr inbounds %struct.sadb_address, ptr %call54, i32 0, i32 1
  %67 = ptrtoint ptr %sadb_address_exttype59 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 6, ptr %sadb_address_exttype59, align 1
  %sadb_address_proto60 = getelementptr inbounds %struct.sadb_address, ptr %call54, i32 0, i32 2
  %68 = ptrtoint ptr %sadb_address_proto60 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %sadb_address_proto60, align 1
  %sadb_address_reserved61 = getelementptr inbounds %struct.sadb_address, ptr %call54, i32 0, i32 4
  %69 = ptrtoint ptr %sadb_address_reserved61 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 0, ptr %sadb_address_reserved61, align 1
  %add.ptr63 = getelementptr %struct.sadb_address, ptr %call54, i32 1
  %70 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %family, align 2
  %72 = zext i16 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %71, label %do.body72 [
    i16 2, label %sw.bb.i219
    i16 10, label %sw.bb1.i224
  ]

sw.bb.i219:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 2, ptr %add.ptr63, align 4
  %sin_port.i216 = getelementptr %struct.sadb_address, ptr %call54, i32 1, i32 1
  %74 = ptrtoint ptr %sin_port.i216 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %sin_port.i216, align 2
  %75 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id, align 4
  %sin_addr.i217 = getelementptr %struct.sadb_address, ptr %call54, i32 1, i32 2
  %77 = ptrtoint ptr %sin_addr.i217 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %sin_addr.i217, align 4
  %__pad.i218 = getelementptr %struct.sadb_address, ptr %call54, i32 2
  %78 = ptrtoint ptr %__pad.i218 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 0, ptr %__pad.i218, align 4
  br label %if.end78

sw.bb1.i224:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 10, ptr %add.ptr63, align 4
  %sin6_port.i220 = getelementptr %struct.sadb_address, ptr %call54, i32 1, i32 1
  %80 = ptrtoint ptr %sin6_port.i220 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %sin6_port.i220, align 2
  %sin6_flowinfo.i221 = getelementptr %struct.sadb_address, ptr %call54, i32 1, i32 2
  %81 = ptrtoint ptr %sin6_flowinfo.i221 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %sin6_flowinfo.i221, align 4
  %sin6_addr.i222 = getelementptr %struct.sadb_address, ptr %call54, i32 2
  %82 = call ptr @memcpy(ptr %sin6_addr.i222, ptr %id, i32 16)
  %sin6_scope_id.i223 = getelementptr %struct.sadb_address, ptr %call54, i32 4
  %83 = ptrtoint ptr %sin6_scope_id.i223 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %sin6_scope_id.i223, align 4
  br label %if.end78

do.body72:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_address_prefixlen68 = getelementptr inbounds %struct.sadb_address, ptr %call54, i32 0, i32 3
  %84 = ptrtoint ptr %sadb_address_prefixlen68 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %sadb_address_prefixlen68, align 1
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/key/af_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3208, 0\0A.popsection", ""() #15, !srcloc !107
  unreachable

if.end78:                                         ; preds = %sw.bb1.i224, %sw.bb.i219
  %retval.0.i225.ph = phi i8 [ 32, %sw.bb.i219 ], [ -128, %sw.bb1.i224 ]
  %sadb_address_prefixlen68281 = getelementptr inbounds %struct.sadb_address, ptr %call54, i32 0, i32 3
  %85 = ptrtoint ptr %sadb_address_prefixlen68281 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %retval.0.i225.ph, ptr %sadb_address_prefixlen68281, align 1
  %call79 = tail call ptr @skb_put(ptr noundef nonnull %call.i212, i32 noundef 16) #15
  %86 = ptrtoint ptr %call79 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 2, ptr %call79, align 1
  %sadb_x_policy_exttype = getelementptr inbounds %struct.sadb_x_policy, ptr %call79, i32 0, i32 1
  %87 = ptrtoint ptr %sadb_x_policy_exttype to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 18, ptr %sadb_x_policy_exttype, align 1
  %sadb_x_policy_type = getelementptr inbounds %struct.sadb_x_policy, ptr %call79, i32 0, i32 2
  %88 = ptrtoint ptr %sadb_x_policy_type to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 2, ptr %sadb_x_policy_type, align 1
  %sadb_x_policy_dir = getelementptr inbounds %struct.sadb_x_policy, ptr %call79, i32 0, i32 3
  %89 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 2, ptr %sadb_x_policy_dir, align 1
  %sadb_x_policy_reserved = getelementptr inbounds %struct.sadb_x_policy, ptr %call79, i32 0, i32 4
  %90 = ptrtoint ptr %sadb_x_policy_reserved to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %sadb_x_policy_reserved, align 1
  %index = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 9
  %91 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %index, align 8
  %sadb_x_policy_id = getelementptr inbounds %struct.sadb_x_policy, ptr %call79, i32 0, i32 5
  %93 = ptrtoint ptr %sadb_x_policy_id to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %92, ptr %sadb_x_policy_id, align 1
  %priority = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 8
  %94 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %priority, align 4
  %sadb_x_policy_priority = getelementptr inbounds %struct.sadb_x_policy, ptr %call79, i32 0, i32 6
  %96 = ptrtoint ptr %sadb_x_policy_priority to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %95, ptr %sadb_x_policy_priority, align 1
  %97 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %proto, align 4
  %99 = zext i8 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %98, label %if.end78.if.end94_crit_edge [
    i8 51, label %if.then85
    i8 50, label %if.then92
  ]

if.end78.if.end94_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.then85:                                        ; preds = %if.end78
  %call.i227 = tail call ptr @skb_put(ptr noundef nonnull %call.i212, i32 noundef 8) #15
  %100 = ptrtoint ptr %call.i227 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 1, ptr %call.i227, align 1
  %sadb_prop_exttype.i = getelementptr inbounds %struct.sadb_prop, ptr %call.i227, i32 0, i32 1
  %101 = ptrtoint ptr %sadb_prop_exttype.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 13, ptr %sadb_prop_exttype.i, align 1
  %sadb_prop_replay.i = getelementptr inbounds %struct.sadb_prop, ptr %call.i227, i32 0, i32 2
  %102 = ptrtoint ptr %sadb_prop_replay.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 32, ptr %sadb_prop_replay.i, align 1
  %sadb_prop_reserved.i = getelementptr inbounds %struct.sadb_prop, ptr %call.i227, i32 0, i32 3
  %103 = call ptr @memset(ptr %sadb_prop_reserved.i, i32 0, i32 3)
  %call141.i = tail call ptr @xfrm_aalg_get_byidx(i32 noundef 0) #15
  %tobool.not42.i = icmp eq ptr %call141.i, null
  br i1 %tobool.not42.i, label %if.then85.if.end94_crit_edge, label %if.end.lr.ph.i229

if.then85.if.end94_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.end.lr.ph.i229:                                ; preds = %if.then85
  %aalgos.i.i228 = getelementptr inbounds %struct.xfrm_tmpl, ptr %t, i32 0, i32 8
  br label %if.end.i232

if.end.i232:                                      ; preds = %for.inc.i240.if.end.i232_crit_edge, %if.end.lr.ph.i229
  %call144.i = phi ptr [ %call141.i, %if.end.lr.ph.i229 ], [ %call1.i, %for.inc.i240.if.end.i232_crit_edge ]
  %i.043.i = phi i32 [ 0, %if.end.lr.ph.i229 ], [ %inc.i238, %for.inc.i240.if.end.i232_crit_edge ]
  %pfkey_supported.i230 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call144.i, i32 0, i32 2
  %104 = ptrtoint ptr %pfkey_supported.i230 to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load.i231 = load i8, ptr %pfkey_supported.i230, align 4
  %105 = and i8 %bf.load.i231, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool2.not.i = icmp eq i8 %105, 0
  br i1 %tobool2.not.i, label %if.end.i232.for.inc.i240_crit_edge, label %if.end4.i

if.end.i232.for.inc.i240_crit_edge:               ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i240

if.end4.i:                                        ; preds = %if.end.i232
  %desc.i.i233 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call144.i, i32 0, i32 4
  %106 = ptrtoint ptr %desc.i.i233 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %desc.i.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %107)
  %cmp.i.i234 = icmp ugt i8 %107, 31
  br i1 %cmp.i.i234, label %if.end4.i.for.inc.i240_crit_edge, label %aalg_tmpl_set.exit.i236

if.end4.i.for.inc.i240_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i240

aalg_tmpl_set.exit.i236:                          ; preds = %if.end4.i
  %conv.i.i235 = zext i8 %107 to i32
  %108 = ptrtoint ptr %aalgos.i.i228 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %aalgos.i.i228, align 4
  %110 = shl nuw i32 1, %conv.i.i235
  %111 = and i32 %109, %110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool6.not.i = icmp eq i32 %111, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i231)
  %tobool9.not.i = icmp sgt i8 %bf.load.i231, -1
  %or.cond.i = select i1 %tobool6.not.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond.i, label %aalg_tmpl_set.exit.i236.for.inc.i240_crit_edge, label %if.then10.i

aalg_tmpl_set.exit.i236.for.inc.i240_crit_edge:   ; preds = %aalg_tmpl_set.exit.i236
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i240

if.then10.i:                                      ; preds = %aalg_tmpl_set.exit.i236
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i212, i32 noundef 72) #15
  %112 = call ptr @memset(ptr %call.i.i, i32 0, i32 72)
  %113 = ptrtoint ptr %call.i227 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %call.i227, align 1
  %add.i237 = add i16 %114, 9
  store i16 %add.i237, ptr %call.i227, align 1
  %115 = ptrtoint ptr %desc.i.i233 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %desc.i.i233, align 4
  %117 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %call.i.i, align 1
  %sadb_alg_minbits.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call144.i, i32 0, i32 4, i32 2
  %118 = ptrtoint ptr %sadb_alg_minbits.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %sadb_alg_minbits.i, align 2
  %sadb_comb_auth_minbits.i = getelementptr inbounds %struct.sadb_comb, ptr %call.i.i, i32 0, i32 3
  %120 = ptrtoint ptr %sadb_comb_auth_minbits.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 %119, ptr %sadb_comb_auth_minbits.i, align 1
  %sadb_alg_maxbits.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call144.i, i32 0, i32 4, i32 3
  %121 = ptrtoint ptr %sadb_alg_maxbits.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %sadb_alg_maxbits.i, align 4
  %sadb_comb_auth_maxbits.i = getelementptr inbounds %struct.sadb_comb, ptr %call.i.i, i32 0, i32 4
  %123 = ptrtoint ptr %sadb_comb_auth_maxbits.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 %122, ptr %sadb_comb_auth_maxbits.i, align 1
  %sadb_comb_hard_addtime.i = getelementptr inbounds %struct.sadb_comb, ptr %call.i.i, i32 0, i32 13
  %124 = ptrtoint ptr %sadb_comb_hard_addtime.i to i32
  call void @__asan_storeN_noabort(i32 %124, i32 8)
  store i64 86400, ptr %sadb_comb_hard_addtime.i, align 1
  %sadb_comb_soft_addtime.i = getelementptr inbounds %struct.sadb_comb, ptr %call.i.i, i32 0, i32 12
  %125 = ptrtoint ptr %sadb_comb_soft_addtime.i to i32
  call void @__asan_storeN_noabort(i32 %125, i32 8)
  store i64 72000, ptr %sadb_comb_soft_addtime.i, align 1
  %sadb_comb_hard_usetime.i = getelementptr inbounds %struct.sadb_comb, ptr %call.i.i, i32 0, i32 15
  %126 = ptrtoint ptr %sadb_comb_hard_usetime.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 8)
  store i64 28800, ptr %sadb_comb_hard_usetime.i, align 1
  %sadb_comb_soft_usetime.i = getelementptr inbounds %struct.sadb_comb, ptr %call.i.i, i32 0, i32 14
  %127 = ptrtoint ptr %sadb_comb_soft_usetime.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 8)
  store i64 25200, ptr %sadb_comb_soft_usetime.i, align 1
  br label %for.inc.i240

for.inc.i240:                                     ; preds = %if.then10.i, %aalg_tmpl_set.exit.i236.for.inc.i240_crit_edge, %if.end4.i.for.inc.i240_crit_edge, %if.end.i232.for.inc.i240_crit_edge
  %inc.i238 = add i32 %i.043.i, 1
  %call1.i = tail call ptr @xfrm_aalg_get_byidx(i32 noundef %inc.i238) #15
  %tobool.not.i239 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i239, label %for.inc.i240.if.end94_crit_edge, label %for.inc.i240.if.end.i232_crit_edge

for.inc.i240.if.end.i232_crit_edge:               ; preds = %for.inc.i240
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i232

for.inc.i240.if.end94_crit_edge:                  ; preds = %for.inc.i240
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.then92:                                        ; preds = %if.end78
  %call.i241 = tail call ptr @skb_put(ptr noundef nonnull %call.i212, i32 noundef 8) #15
  %128 = ptrtoint ptr %call.i241 to i32
  call void @__asan_storeN_noabort(i32 %128, i32 2)
  store i16 1, ptr %call.i241, align 1
  %sadb_prop_exttype.i242 = getelementptr inbounds %struct.sadb_prop, ptr %call.i241, i32 0, i32 1
  %129 = ptrtoint ptr %sadb_prop_exttype.i242 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 2)
  store i16 13, ptr %sadb_prop_exttype.i242, align 1
  %sadb_prop_replay.i243 = getelementptr inbounds %struct.sadb_prop, ptr %call.i241, i32 0, i32 2
  %130 = ptrtoint ptr %sadb_prop_replay.i243 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 32, ptr %sadb_prop_replay.i243, align 1
  %sadb_prop_reserved.i244 = getelementptr inbounds %struct.sadb_prop, ptr %call.i241, i32 0, i32 3
  %131 = call ptr @memset(ptr %sadb_prop_reserved.i244, i32 0, i32 3)
  %call1107.i = tail call ptr @xfrm_ealg_get_byidx(i32 noundef 0) #15
  %tobool.not108.i = icmp eq ptr %call1107.i, null
  br i1 %tobool.not108.i, label %if.then92.if.end94_crit_edge, label %if.end.lr.ph.i247

if.then92.if.end94_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.end.lr.ph.i247:                                ; preds = %if.then92
  %ealgos.i.i245 = getelementptr inbounds %struct.xfrm_tmpl, ptr %t, i32 0, i32 9
  %aalgos.i.i246 = getelementptr inbounds %struct.xfrm_tmpl, ptr %t, i32 0, i32 8
  br label %if.end.i251

if.end.i251:                                      ; preds = %for.inc50.i.if.end.i251_crit_edge, %if.end.lr.ph.i247
  %call1110.i = phi ptr [ %call1107.i, %if.end.lr.ph.i247 ], [ %call1.i273, %for.inc50.i.if.end.i251_crit_edge ]
  %i.0109.i = phi i32 [ 0, %if.end.lr.ph.i247 ], [ %inc51.i, %for.inc50.i.if.end.i251_crit_edge ]
  %pfkey_supported.i248 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1110.i, i32 0, i32 2
  %132 = ptrtoint ptr %pfkey_supported.i248 to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load.i249 = load i8, ptr %pfkey_supported.i248, align 4
  %133 = and i8 %bf.load.i249, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool2.not.i250 = icmp eq i8 %133, 0
  br i1 %tobool2.not.i250, label %if.end.i251.for.inc50.i_crit_edge, label %if.end4.i254

if.end.i251.for.inc50.i_crit_edge:                ; preds = %if.end.i251
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc50.i

if.end4.i254:                                     ; preds = %if.end.i251
  %desc.i.i252 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1110.i, i32 0, i32 4
  %134 = ptrtoint ptr %desc.i.i252 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %desc.i.i252, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %135)
  %cmp.i.i253 = icmp ugt i8 %135, 31
  br i1 %cmp.i.i253, label %if.end4.i254.for.inc50.i_crit_edge, label %ealg_tmpl_set.exit.i259

if.end4.i254.for.inc50.i_crit_edge:               ; preds = %if.end4.i254
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc50.i

ealg_tmpl_set.exit.i259:                          ; preds = %if.end4.i254
  %conv.i.i255 = zext i8 %135 to i32
  %136 = ptrtoint ptr %ealgos.i.i245 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ealgos.i.i245, align 4
  %138 = shl nuw i32 1, %conv.i.i255
  %139 = and i32 %137, %138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool6.not.i256 = icmp eq i32 %139, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i249)
  %tobool9.not.i257 = icmp sgt i8 %bf.load.i249, -1
  %or.cond.i258 = select i1 %tobool6.not.i256, i1 true, i1 %tobool9.not.i257
  br i1 %or.cond.i258, label %ealg_tmpl_set.exit.i259.for.inc50.i_crit_edge, label %for.cond12.preheader.i

ealg_tmpl_set.exit.i259.for.inc50.i_crit_edge:    ; preds = %ealg_tmpl_set.exit.i259
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc50.i

for.cond12.preheader.i:                           ; preds = %ealg_tmpl_set.exit.i259
  %call13103.i = tail call ptr @xfrm_aalg_get_byidx(i32 noundef 1) #15
  %tobool14.not104.i = icmp eq ptr %call13103.i, null
  br i1 %tobool14.not104.i, label %for.cond12.preheader.i.for.inc50.i_crit_edge, label %if.end16.lr.ph.i

for.cond12.preheader.i.for.inc50.i_crit_edge:     ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc50.i

if.end16.lr.ph.i:                                 ; preds = %for.cond12.preheader.i
  %sadb_alg_minbits43.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1110.i, i32 0, i32 4, i32 2
  %sadb_alg_maxbits45.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1110.i, i32 0, i32 4, i32 3
  br label %if.end16.i

if.end16.i:                                       ; preds = %for.inc.i272.if.end16.i_crit_edge, %if.end16.lr.ph.i
  %call13106.i = phi ptr [ %call13103.i, %if.end16.lr.ph.i ], [ %call13.i, %for.inc.i272.if.end16.i_crit_edge ]
  %k.0105.i = phi i32 [ 1, %if.end16.lr.ph.i ], [ %inc.i271, %for.inc.i272.if.end16.i_crit_edge ]
  %pfkey_supported17.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call13106.i, i32 0, i32 2
  %140 = ptrtoint ptr %pfkey_supported17.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load18.i = load i8, ptr %pfkey_supported17.i, align 4
  %141 = and i8 %bf.load18.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool21.not.i260 = icmp eq i8 %141, 0
  br i1 %tobool21.not.i260, label %if.end16.i.for.inc.i272_crit_edge, label %if.end23.i

if.end16.i.for.inc.i272_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i272

if.end23.i:                                       ; preds = %if.end16.i
  %desc.i85.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call13106.i, i32 0, i32 4
  %142 = ptrtoint ptr %desc.i85.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %desc.i85.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %143)
  %cmp.i86.i = icmp ugt i8 %143, 31
  br i1 %cmp.i86.i, label %if.end23.i.for.inc.i272_crit_edge, label %aalg_tmpl_set.exit.i261

if.end23.i.for.inc.i272_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i272

aalg_tmpl_set.exit.i261:                          ; preds = %if.end23.i
  %conv.i87.i = zext i8 %143 to i32
  %144 = ptrtoint ptr %aalgos.i.i246 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %aalgos.i.i246, align 4
  %146 = shl nuw i32 1, %conv.i87.i
  %147 = and i32 %145, %146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool25.not.i = icmp eq i32 %147, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load18.i)
  %tobool31.not.i = icmp sgt i8 %bf.load18.i, -1
  %or.cond102.i = select i1 %tobool25.not.i, i1 true, i1 %tobool31.not.i
  br i1 %or.cond102.i, label %aalg_tmpl_set.exit.i261.for.inc.i272_crit_edge, label %if.end33.i

aalg_tmpl_set.exit.i261.for.inc.i272_crit_edge:   ; preds = %aalg_tmpl_set.exit.i261
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i272

if.end33.i:                                       ; preds = %aalg_tmpl_set.exit.i261
  call void @__sanitizer_cov_trace_pc() #17
  %call34.i = tail call ptr @skb_put(ptr noundef nonnull %call.i212, i32 noundef 72) #15
  %148 = call ptr @memset(ptr %call34.i, i32 0, i32 72)
  %149 = ptrtoint ptr %call.i241 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %150 = load i16, ptr %call.i241, align 1
  %add.i262 = add i16 %150, 9
  store i16 %add.i262, ptr %call.i241, align 1
  %151 = ptrtoint ptr %desc.i85.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %desc.i85.i, align 4
  %153 = ptrtoint ptr %call34.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %call34.i, align 1
  %sadb_alg_minbits.i263 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call13106.i, i32 0, i32 4, i32 2
  %154 = ptrtoint ptr %sadb_alg_minbits.i263 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %sadb_alg_minbits.i263, align 2
  %sadb_comb_auth_minbits.i264 = getelementptr inbounds %struct.sadb_comb, ptr %call34.i, i32 0, i32 3
  %156 = ptrtoint ptr %sadb_comb_auth_minbits.i264 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 2)
  store i16 %155, ptr %sadb_comb_auth_minbits.i264, align 1
  %sadb_alg_maxbits.i265 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call13106.i, i32 0, i32 4, i32 3
  %157 = ptrtoint ptr %sadb_alg_maxbits.i265 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %sadb_alg_maxbits.i265, align 4
  %sadb_comb_auth_maxbits.i266 = getelementptr inbounds %struct.sadb_comb, ptr %call34.i, i32 0, i32 4
  %159 = ptrtoint ptr %sadb_comb_auth_maxbits.i266 to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 %158, ptr %sadb_comb_auth_maxbits.i266, align 1
  %160 = ptrtoint ptr %desc.i.i252 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %desc.i.i252, align 4
  %sadb_comb_encrypt.i = getelementptr inbounds %struct.sadb_comb, ptr %call34.i, i32 0, i32 1
  %162 = ptrtoint ptr %sadb_comb_encrypt.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %sadb_comb_encrypt.i, align 1
  %163 = ptrtoint ptr %sadb_alg_minbits43.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %sadb_alg_minbits43.i, align 2
  %sadb_comb_encrypt_minbits.i = getelementptr inbounds %struct.sadb_comb, ptr %call34.i, i32 0, i32 5
  %165 = ptrtoint ptr %sadb_comb_encrypt_minbits.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 2)
  store i16 %164, ptr %sadb_comb_encrypt_minbits.i, align 1
  %166 = ptrtoint ptr %sadb_alg_maxbits45.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %sadb_alg_maxbits45.i, align 4
  %sadb_comb_encrypt_maxbits.i = getelementptr inbounds %struct.sadb_comb, ptr %call34.i, i32 0, i32 6
  %168 = ptrtoint ptr %sadb_comb_encrypt_maxbits.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 2)
  store i16 %167, ptr %sadb_comb_encrypt_maxbits.i, align 1
  %sadb_comb_hard_addtime.i267 = getelementptr inbounds %struct.sadb_comb, ptr %call34.i, i32 0, i32 13
  %169 = ptrtoint ptr %sadb_comb_hard_addtime.i267 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 8)
  store i64 86400, ptr %sadb_comb_hard_addtime.i267, align 1
  %sadb_comb_soft_addtime.i268 = getelementptr inbounds %struct.sadb_comb, ptr %call34.i, i32 0, i32 12
  %170 = ptrtoint ptr %sadb_comb_soft_addtime.i268 to i32
  call void @__asan_storeN_noabort(i32 %170, i32 8)
  store i64 72000, ptr %sadb_comb_soft_addtime.i268, align 1
  %sadb_comb_hard_usetime.i269 = getelementptr inbounds %struct.sadb_comb, ptr %call34.i, i32 0, i32 15
  %171 = ptrtoint ptr %sadb_comb_hard_usetime.i269 to i32
  call void @__asan_storeN_noabort(i32 %171, i32 8)
  store i64 28800, ptr %sadb_comb_hard_usetime.i269, align 1
  %sadb_comb_soft_usetime.i270 = getelementptr inbounds %struct.sadb_comb, ptr %call34.i, i32 0, i32 14
  %172 = ptrtoint ptr %sadb_comb_soft_usetime.i270 to i32
  call void @__asan_storeN_noabort(i32 %172, i32 8)
  store i64 25200, ptr %sadb_comb_soft_usetime.i270, align 1
  br label %for.inc.i272

for.inc.i272:                                     ; preds = %if.end33.i, %aalg_tmpl_set.exit.i261.for.inc.i272_crit_edge, %if.end23.i.for.inc.i272_crit_edge, %if.end16.i.for.inc.i272_crit_edge
  %inc.i271 = add i32 %k.0105.i, 1
  %call13.i = tail call ptr @xfrm_aalg_get_byidx(i32 noundef %inc.i271) #15
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %for.inc.i272.for.inc50.i_crit_edge, label %for.inc.i272.if.end16.i_crit_edge

for.inc.i272.if.end16.i_crit_edge:                ; preds = %for.inc.i272
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

for.inc.i272.for.inc50.i_crit_edge:               ; preds = %for.inc.i272
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc50.i

for.inc50.i:                                      ; preds = %for.inc.i272.for.inc50.i_crit_edge, %for.cond12.preheader.i.for.inc50.i_crit_edge, %ealg_tmpl_set.exit.i259.for.inc50.i_crit_edge, %if.end4.i254.for.inc50.i_crit_edge, %if.end.i251.for.inc50.i_crit_edge
  %inc51.i = add i32 %i.0109.i, 1
  %call1.i273 = tail call ptr @xfrm_ealg_get_byidx(i32 noundef %inc51.i) #15
  %tobool.not.i274 = icmp eq ptr %call1.i273, null
  br i1 %tobool.not.i274, label %for.inc50.i.if.end94_crit_edge, label %for.inc50.i.if.end.i251_crit_edge

for.inc50.i.if.end.i251_crit_edge:                ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i251

for.inc50.i.if.end94_crit_edge:                   ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.end94:                                         ; preds = %for.inc50.i.if.end94_crit_edge, %if.then92.if.end94_crit_edge, %for.inc.i240.if.end94_crit_edge, %if.then85.if.end94_crit_edge, %if.end78.if.end94_crit_edge
  br i1 %tobool16.not, label %if.end94.if.end106_crit_edge, label %if.then96

if.end94.if.end106_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end106

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  %call98 = tail call ptr @skb_put(ptr noundef nonnull %call.i212, i32 noundef %ctx_size.0) #15
  %div100191 = lshr i32 %ctx_size.0, 3
  %conv101 = trunc i32 %div100191 to i16
  %173 = ptrtoint ptr %call98 to i32
  call void @__asan_storeN_noabort(i32 %173, i32 2)
  store i16 %conv101, ptr %call98, align 1
  %sadb_x_sec_exttype = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %call98, i32 0, i32 1
  %174 = ptrtoint ptr %sadb_x_sec_exttype to i32
  call void @__asan_storeN_noabort(i32 %174, i32 2)
  store i16 24, ptr %sadb_x_sec_exttype, align 1
  %175 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %30, align 4
  %sadb_x_ctx_doi = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %call98, i32 0, i32 3
  %177 = ptrtoint ptr %sadb_x_ctx_doi to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %sadb_x_ctx_doi, align 1
  %ctx_alg = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %30, i32 0, i32 1
  %178 = ptrtoint ptr %ctx_alg to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %ctx_alg, align 1
  %sadb_x_ctx_alg = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %call98, i32 0, i32 2
  %180 = ptrtoint ptr %sadb_x_ctx_alg to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %sadb_x_ctx_alg, align 1
  %ctx_len102 = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %30, i32 0, i32 2
  %181 = ptrtoint ptr %ctx_len102 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %ctx_len102, align 2
  %sadb_x_ctx_len = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %call98, i32 0, i32 4
  %183 = ptrtoint ptr %sadb_x_ctx_len to i32
  call void @__asan_storeN_noabort(i32 %183, i32 2)
  store i16 %182, ptr %sadb_x_ctx_len, align 1
  %add.ptr103 = getelementptr %struct.sadb_x_sec_ctx, ptr %call98, i32 1
  %ctx_str = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %30, i32 0, i32 4
  %184 = load i16, ptr %ctx_len102, align 2
  %conv105 = zext i16 %184 to i32
  %185 = call ptr @memcpy(ptr %add.ptr103, ptr %ctx_str, i32 %conv105)
  br label %if.end106

if.end106:                                        ; preds = %if.then96, %if.end94.if.end106_crit_edge
  %186 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %x, align 4
  %call108 = tail call fastcc i32 @pfkey_broadcast(ptr noundef nonnull %call.i212, i32 noundef 2592, i32 noundef 2, ptr noundef null, ptr noundef %187)
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call108, %if.end106 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pfkey_compile_policy(ptr nocapture noundef readonly %sk, i32 noundef %opt, ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %3, label %sw.default [
    i16 2, label %sw.bb
    i16 10, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %opt)
  %cmp.not = icmp eq i32 %opt, 16
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -95, ptr %dir, align 4
  br label %cleanup80

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %opt)
  %cmp3.not = icmp eq i32 %opt, 34
  br i1 %cmp3.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then5

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -95, ptr %dir, align 4
  br label %cleanup80

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -22, ptr %dir, align 4
  br label %cleanup80

sw.epilog:                                        ; preds = %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -22, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp7 = icmp ult i32 %len, 16
  br i1 %cmp7, label %sw.epilog.cleanup80_crit_edge, label %lor.lhs.false

sw.epilog.cleanup80_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup80

lor.lhs.false:                                    ; preds = %sw.epilog
  %9 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %data, align 1
  %conv9 = zext i16 %10 to i32
  %mul = shl nuw nsw i32 %conv9, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %len)
  %cmp10 = icmp sgt i32 %mul, %len
  br i1 %cmp10, label %lor.lhs.false.cleanup80_crit_edge, label %lor.lhs.false12

lor.lhs.false.cleanup80_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup80

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %sadb_x_policy_type = getelementptr inbounds %struct.sadb_x_policy, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %sadb_x_policy_type to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %sadb_x_policy_type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %12)
  %cmp14 = icmp ugt i16 %12, 4
  br i1 %cmp14, label %lor.lhs.false12.cleanup80_crit_edge, label %lor.lhs.false16

lor.lhs.false12.cleanup80_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup80

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %sadb_x_policy_dir = getelementptr inbounds %struct.sadb_x_policy, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sadb_x_policy_dir, align 1
  %15 = add i8 %14, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %15)
  %16 = icmp ult i8 %15, -2
  br i1 %16, label %lor.lhs.false16.cleanup80_crit_edge, label %if.end23

lor.lhs.false16.cleanup80_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup80

if.end23:                                         ; preds = %lor.lhs.false16
  %call24 = tail call ptr @xfrm_policy_alloc(ptr noundef %1, i32 noundef 2592) #15
  %cmp25 = icmp eq ptr %call24, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -105, ptr %dir, align 4
  br label %cleanup80

if.end28:                                         ; preds = %if.end23
  %18 = ptrtoint ptr %sadb_x_policy_type to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %sadb_x_policy_type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp31 = icmp eq i16 %19, 0
  %conv33 = zext i1 %cmp31 to i8
  %action = getelementptr inbounds %struct.xfrm_policy, ptr %call24, i32 0, i32 19
  %20 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv33, ptr %action, align 2
  %lft = getelementptr inbounds %struct.xfrm_policy, ptr %call24, i32 0, i32 13
  %21 = call ptr @memset(ptr %lft, i32 255, i32 32)
  %22 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %skc_family, align 8
  %family = getelementptr inbounds %struct.xfrm_policy, ptr %call24, i32 0, i32 22
  %24 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %family, align 2
  %xfrm_nr = getelementptr inbounds %struct.xfrm_policy, ptr %call24, i32 0, i32 21
  %25 = ptrtoint ptr %xfrm_nr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %xfrm_nr, align 4
  %26 = ptrtoint ptr %sadb_x_policy_type to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %sadb_x_policy_type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %27)
  %cmp41 = icmp eq i16 %27, 2
  br i1 %cmp41, label %land.lhs.true, label %if.end28.if.end47_crit_edge

if.end28.if.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end28
  %call43 = tail call fastcc i32 @parse_ipsecrequests(ptr noundef nonnull %call24, ptr noundef %data)
  %28 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call43, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.end28.if.end47_crit_edge
  %29 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %data, align 1
  %conv49 = zext i16 %30 to i32
  %mul50 = shl nuw nsw i32 %conv49, 3
  %add = add nuw nsw i32 %mul50, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp51.not = icmp ugt i32 %add, %len
  br i1 %cmp51.not, label %if.end47.if.end77_crit_edge, label %if.then53

if.end47.if.end77_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.then53:                                        ; preds = %if.end47
  %add.ptr = getelementptr i8, ptr %data, i32 %mul50
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %add.ptr, align 1
  %conv60 = zext i16 %32 to i32
  %33 = add nuw nsw i32 %conv60, %conv49
  %add62 = shl nuw nsw i32 %33, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add62, i32 %len)
  %cmp63 = icmp sgt i32 %add62, %len
  br i1 %cmp63, label %if.then53.out.sink.split_crit_edge, label %if.end66

if.then53.out.sink.split_crit_edge:               ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.end66:                                         ; preds = %if.then53
  %sadb_x_ctx_len.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %add.ptr, i32 0, i32 4
  %34 = ptrtoint ptr %sadb_x_ctx_len.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %sadb_x_ctx_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4097, i16 %35)
  %cmp.i = icmp ult i16 %35, 4097
  %conv.i.i = zext i16 %35 to i32
  %sub.i.i = add nuw nsw i32 %conv.i.i, 15
  %div2.i.i = lshr i32 %sub.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.i.i, i32 %conv60)
  %cmp3.not.i = icmp eq i32 %div2.i.i, %conv60
  %or.cond131 = select i1 %cmp.i, i1 %cmp3.not.i, i1 false
  br i1 %or.cond131, label %if.end70, label %if.end66.out.sink.split_crit_edge

if.end66.out.sink.split_crit_edge:                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.end70:                                         ; preds = %if.end66
  %36 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %dir, align 4
  %call71 = tail call fastcc ptr @pfkey_sadb2xfrm_user_sec_ctx(ptr noundef %add.ptr, i32 noundef 2592)
  %security = getelementptr inbounds %struct.xfrm_policy, ptr %call24, i32 0, i32 23
  %call72 = tail call i32 @security_xfrm_policy_alloc(ptr noundef %security, ptr noundef %call71, i32 noundef 2592) #15
  %37 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call72, ptr %dir, align 4
  tail call void @kfree(ptr noundef %call71) #15
  %38 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool73.not = icmp eq i32 %39, 0
  br i1 %tobool73.not, label %if.end70.if.end77_crit_edge, label %if.end70.out_crit_edge

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.end77:                                         ; preds = %if.end70.if.end77_crit_edge, %if.end47.if.end77_crit_edge
  %40 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sadb_x_policy_dir, align 1
  %conv79 = zext i8 %41 to i32
  %sub = add nsw i32 %conv79, -1
  %42 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub, ptr %dir, align 4
  br label %cleanup80

out.sink.split:                                   ; preds = %if.end66.out.sink.split_crit_edge, %if.then53.out.sink.split_crit_edge
  %43 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -22, ptr %dir, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end70.out_crit_edge, %land.lhs.true.out_crit_edge
  %dead = getelementptr inbounds %struct.xfrm_policy, ptr %call24, i32 0, i32 15, i32 1
  %44 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %dead, align 8
  tail call void @xfrm_policy_destroy(ptr noundef nonnull %call24) #15
  br label %cleanup80

cleanup80:                                        ; preds = %out, %if.end77, %if.then27, %lor.lhs.false16.cleanup80_crit_edge, %lor.lhs.false12.cleanup80_crit_edge, %lor.lhs.false.cleanup80_crit_edge, %sw.epilog.cleanup80_crit_edge, %sw.default, %if.then5, %if.then
  %retval.0 = phi ptr [ null, %sw.default ], [ null, %if.then5 ], [ null, %if.then27 ], [ null, %out ], [ %call24, %if.end77 ], [ null, %if.then ], [ null, %lor.lhs.false16.cleanup80_crit_edge ], [ null, %lor.lhs.false12.cleanup80_crit_edge ], [ null, %lor.lhs.false.cleanup80_crit_edge ], [ null, %sw.epilog.cleanup80_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_send_new_mapping(ptr nocapture noundef %x, ptr nocapture noundef readonly %ipaddr, i16 noundef zeroext %sport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %proto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %1)
  %cmp = icmp eq i8 %1, 50
  %conv2 = select i1 %cmp, i8 3, i8 0
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %switch.selectcmp.i.i = icmp eq i16 %3, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %switch.selectcmp2.i.i = icmp eq i16 %3, 2
  %switch.select.i.op.op.op.i = select i1 %switch.selectcmp.i.i, i32 32, i32 0
  %add.i = select i1 %switch.selectcmp2.i.i, i32 16, i32 %switch.select.i.op.op.op.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not = icmp eq i32 %add.i, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %entry
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %4 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encap, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %mul = shl nuw nsw i32 %add.i, 1
  %add11 = add nuw nsw i32 %mul, 80
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add11, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %cmp13 = icmp eq ptr %call.i, null
  br i1 %cmp13, label %if.end8.cleanup_crit_edge, label %if.end16

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %add10 = add nuw nsw i32 %mul, 64
  %call17 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #15
  %6 = ptrtoint ptr %call17 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %call17, align 1
  %sadb_msg_type = getelementptr inbounds %struct.sadb_msg, ptr %call17, i32 0, i32 1
  %7 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 23, ptr %sadb_msg_type, align 1
  %sadb_msg_satype = getelementptr inbounds %struct.sadb_msg, ptr %call17, i32 0, i32 3
  %8 = ptrtoint ptr %sadb_msg_satype to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2, ptr %sadb_msg_satype, align 1
  %div137 = lshr exact i32 %add10, 3
  %conv18 = trunc i32 %div137 to i16
  %sadb_msg_len = getelementptr inbounds %struct.sadb_msg, ptr %call17, i32 0, i32 4
  %9 = ptrtoint ptr %sadb_msg_len to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %conv18, ptr %sadb_msg_len, align 1
  %sadb_msg_errno = getelementptr inbounds %struct.sadb_msg, ptr %call17, i32 0, i32 2
  %10 = ptrtoint ptr %sadb_msg_errno to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %sadb_msg_errno, align 1
  %sadb_msg_reserved = getelementptr inbounds %struct.sadb_msg, ptr %call17, i32 0, i32 5
  %11 = ptrtoint ptr %sadb_msg_reserved to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %sadb_msg_reserved, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @get_acqseq.acqseq, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !103
  tail call void @llvm.prefetch.p0(ptr nonnull @get_acqseq.acqseq, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @get_acqseq.acqseq, ptr nonnull @get_acqseq.acqseq, i32 1, ptr nonnull elementtype(i32) @get_acqseq.acqseq) #15, !srcloc !104
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !105
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.body.i_crit_edge, label %get_acqseq.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

get_acqseq.exit:                                  ; preds = %do.body.i
  %asmresult.i.i.i.i.i.le = extractvalue { i32, i32 } %12, 0
  %seq = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 13, i32 4
  %13 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %asmresult.i.i.i.i.i.le, ptr %seq, align 4
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %call17, i32 0, i32 6
  %14 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %asmresult.i.i.i.i.i.le, ptr %sadb_msg_seq, align 1
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %call17, i32 0, i32 7
  %15 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %sadb_msg_pid, align 1
  %call20 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #15
  %16 = ptrtoint ptr %call20 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 2, ptr %call20, align 1
  %sadb_sa_exttype = getelementptr inbounds %struct.sadb_sa, ptr %call20, i32 0, i32 1
  %17 = ptrtoint ptr %sadb_sa_exttype to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 1, ptr %sadb_sa_exttype, align 1
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %spi, align 4
  %sadb_sa_spi = getelementptr inbounds %struct.sadb_sa, ptr %call20, i32 0, i32 2
  %20 = ptrtoint ptr %sadb_sa_spi to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %sadb_sa_spi, align 1
  %sadb_sa_replay = getelementptr inbounds %struct.sadb_sa, ptr %call20, i32 0, i32 3
  %add22 = or i32 %add.i, 8
  %21 = ptrtoint ptr %sadb_sa_replay to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 0, ptr %sadb_sa_replay, align 1
  %call23 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add22) #15
  %div25138 = lshr exact i32 %add22, 3
  %conv26 = trunc i32 %div25138 to i16
  %22 = ptrtoint ptr %call23 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %conv26, ptr %call23, align 1
  %sadb_address_exttype = getelementptr inbounds %struct.sadb_address, ptr %call23, i32 0, i32 1
  %23 = ptrtoint ptr %sadb_address_exttype to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 5, ptr %sadb_address_exttype, align 1
  %sadb_address_proto = getelementptr inbounds %struct.sadb_address, ptr %call23, i32 0, i32 2
  %24 = ptrtoint ptr %sadb_address_proto to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %sadb_address_proto, align 1
  %sadb_address_reserved = getelementptr inbounds %struct.sadb_address, ptr %call23, i32 0, i32 4
  %25 = ptrtoint ptr %sadb_address_reserved to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 0, ptr %sadb_address_reserved, align 1
  %saddr = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %add.ptr = getelementptr %struct.sadb_address, ptr %call23, i32 1
  %26 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %family, align 2
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %27, label %do.body [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %get_acqseq.exit
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2, ptr %add.ptr, align 4
  %sin_port.i = getelementptr %struct.sadb_address, ptr %call23, i32 1, i32 1
  %30 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %sin_port.i, align 2
  %31 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %saddr, align 4
  %sin_addr.i = getelementptr %struct.sadb_address, ptr %call23, i32 1, i32 2
  %33 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %sin_addr.i, align 4
  %__pad.i = getelementptr %struct.sadb_address, ptr %call23, i32 2
  %34 = ptrtoint ptr %__pad.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 0, ptr %__pad.i, align 4
  br label %if.end38

sw.bb1.i:                                         ; preds = %get_acqseq.exit
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 10, ptr %add.ptr, align 4
  %sin6_port.i = getelementptr %struct.sadb_address, ptr %call23, i32 1, i32 1
  %36 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %sin6_port.i, align 2
  %sin6_flowinfo.i = getelementptr %struct.sadb_address, ptr %call23, i32 1, i32 2
  %37 = ptrtoint ptr %sin6_flowinfo.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %sin6_flowinfo.i, align 4
  %sin6_addr.i = getelementptr %struct.sadb_address, ptr %call23, i32 2
  %38 = call ptr @memcpy(ptr %sin6_addr.i, ptr %saddr, i32 16)
  %sin6_scope_id.i = getelementptr %struct.sadb_address, ptr %call23, i32 4
  %39 = ptrtoint ptr %sin6_scope_id.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %sin6_scope_id.i, align 4
  br label %if.end38

do.body:                                          ; preds = %get_acqseq.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_address_prefixlen = getelementptr inbounds %struct.sadb_address, ptr %call23, i32 0, i32 3
  %40 = ptrtoint ptr %sadb_address_prefixlen to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %sadb_address_prefixlen, align 1
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/key/af_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3405, 0\0A.popsection", ""() #15, !srcloc !108
  unreachable

if.end38:                                         ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i.ph = phi i8 [ 32, %sw.bb.i ], [ -128, %sw.bb1.i ]
  %sadb_address_prefixlen152 = getelementptr inbounds %struct.sadb_address, ptr %call23, i32 0, i32 3
  %41 = ptrtoint ptr %sadb_address_prefixlen152 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %retval.0.i.ph, ptr %sadb_address_prefixlen152, align 1
  %call39 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #15
  %42 = ptrtoint ptr %call39 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 1, ptr %call39, align 1
  %sadb_x_nat_t_port_exttype = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %call39, i32 0, i32 1
  %43 = ptrtoint ptr %sadb_x_nat_t_port_exttype to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 21, ptr %sadb_x_nat_t_port_exttype, align 1
  %encap_sport = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %5, i32 0, i32 1
  %44 = ptrtoint ptr %encap_sport to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %encap_sport, align 2
  %sadb_x_nat_t_port_port = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %call39, i32 0, i32 2
  %46 = ptrtoint ptr %sadb_x_nat_t_port_port to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %sadb_x_nat_t_port_port, align 1
  %sadb_x_nat_t_port_reserved = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %call39, i32 0, i32 3
  %47 = ptrtoint ptr %sadb_x_nat_t_port_reserved to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 0, ptr %sadb_x_nat_t_port_reserved, align 1
  %call41 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add22) #15
  %48 = ptrtoint ptr %call41 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %conv26, ptr %call41, align 1
  %sadb_address_exttype46 = getelementptr inbounds %struct.sadb_address, ptr %call41, i32 0, i32 1
  %49 = ptrtoint ptr %sadb_address_exttype46 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 6, ptr %sadb_address_exttype46, align 1
  %sadb_address_proto47 = getelementptr inbounds %struct.sadb_address, ptr %call41, i32 0, i32 2
  %50 = ptrtoint ptr %sadb_address_proto47 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %sadb_address_proto47, align 1
  %sadb_address_reserved48 = getelementptr inbounds %struct.sadb_address, ptr %call41, i32 0, i32 4
  %51 = ptrtoint ptr %sadb_address_reserved48 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 0, ptr %sadb_address_reserved48, align 1
  %add.ptr49 = getelementptr %struct.sadb_address, ptr %call41, i32 1
  %52 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %family, align 2
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %53, label %do.body58 [
    i16 2, label %sw.bb.i142
    i16 10, label %sw.bb1.i147
  ]

sw.bb.i142:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 2, ptr %add.ptr49, align 4
  %sin_port.i139 = getelementptr %struct.sadb_address, ptr %call41, i32 1, i32 1
  %56 = ptrtoint ptr %sin_port.i139 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %sin_port.i139, align 2
  %57 = ptrtoint ptr %ipaddr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ipaddr, align 4
  %sin_addr.i140 = getelementptr %struct.sadb_address, ptr %call41, i32 1, i32 2
  %59 = ptrtoint ptr %sin_addr.i140 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %sin_addr.i140, align 4
  %__pad.i141 = getelementptr %struct.sadb_address, ptr %call41, i32 2
  %60 = ptrtoint ptr %__pad.i141 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 0, ptr %__pad.i141, align 4
  br label %if.end64

sw.bb1.i147:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 10, ptr %add.ptr49, align 4
  %sin6_port.i143 = getelementptr %struct.sadb_address, ptr %call41, i32 1, i32 1
  %62 = ptrtoint ptr %sin6_port.i143 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %sin6_port.i143, align 2
  %sin6_flowinfo.i144 = getelementptr %struct.sadb_address, ptr %call41, i32 1, i32 2
  %63 = ptrtoint ptr %sin6_flowinfo.i144 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %sin6_flowinfo.i144, align 4
  %sin6_addr.i145 = getelementptr %struct.sadb_address, ptr %call41, i32 2
  %64 = call ptr @memcpy(ptr %sin6_addr.i145, ptr %ipaddr, i32 16)
  %sin6_scope_id.i146 = getelementptr %struct.sadb_address, ptr %call41, i32 4
  %65 = ptrtoint ptr %sin6_scope_id.i146 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %sin6_scope_id.i146, align 4
  br label %if.end64

do.body58:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_address_prefixlen54 = getelementptr inbounds %struct.sadb_address, ptr %call41, i32 0, i32 3
  %66 = ptrtoint ptr %sadb_address_prefixlen54 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %sadb_address_prefixlen54, align 1
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/key/af_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3427, 0\0A.popsection", ""() #15, !srcloc !109
  unreachable

if.end64:                                         ; preds = %sw.bb1.i147, %sw.bb.i142
  %retval.0.i148.ph = phi i8 [ 32, %sw.bb.i142 ], [ -128, %sw.bb1.i147 ]
  %sadb_address_prefixlen54156 = getelementptr inbounds %struct.sadb_address, ptr %call41, i32 0, i32 3
  %67 = ptrtoint ptr %sadb_address_prefixlen54156 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %retval.0.i148.ph, ptr %sadb_address_prefixlen54156, align 1
  %call65 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #15
  %68 = ptrtoint ptr %call65 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 1, ptr %call65, align 1
  %sadb_x_nat_t_port_exttype67 = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %call65, i32 0, i32 1
  %69 = ptrtoint ptr %sadb_x_nat_t_port_exttype67 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 22, ptr %sadb_x_nat_t_port_exttype67, align 1
  %sadb_x_nat_t_port_port68 = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %call65, i32 0, i32 2
  %70 = ptrtoint ptr %sadb_x_nat_t_port_port68 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %sport, ptr %sadb_x_nat_t_port_port68, align 1
  %sadb_x_nat_t_port_reserved69 = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %call65, i32 0, i32 3
  %71 = ptrtoint ptr %sadb_x_nat_t_port_reserved69 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 0, ptr %sadb_x_nat_t_port_reserved69, align 1
  %72 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %x, align 4
  %call71 = tail call fastcc i32 @pfkey_broadcast(ptr noundef nonnull %call.i, i32 noundef 2592, i32 noundef 2, ptr noundef null, ptr noundef %73)
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call71, %if.end64 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_send_policy_notify(ptr noundef %xp, i32 noundef %dir, ptr nocapture noundef readonly %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %xp, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 18
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %event = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %3, label %do.end [
    i32 27, label %if.end.return_crit_edge
    i32 20, label %if.end.sw.bb2_crit_edge
    i32 19, label %if.end.sw.bb2_crit_edge29
    i32 25, label %if.end.sw.bb2_crit_edge30
    i32 29, label %sw.bb4
  ]

if.end.sw.bb2_crit_edge30:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb2

if.end.sw.bb2_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge29, %if.end.sw.bb2_crit_edge30
  %family.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 22
  %5 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %family.i.i.i, align 2
  %xfrm_nr.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 21
  %7 = ptrtoint ptr %xfrm_nr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %xfrm_nr.i.i.i, align 4
  %conv.i.i.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp20.not.i.i.i = icmp eq i8 %8, 0
  br i1 %cmp20.not.i.i.i, label %sw.bb2.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

sw.bb2.for.end.i.i.i_crit_edge:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %sw.bb2
  %xfrm_vec.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 24
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.022.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %socklen.021.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %encap_family.i.i.i = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec.i.i.i, i32 %i.022.i.i.i, i32 2
  %9 = ptrtoint ptr %encap_family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %encap_family.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %10)
  %switch.selectcmp.i.i.i.i = icmp eq i16 %10, 10
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %switch.selectcmp2.i.i.i.i = icmp eq i16 %10, 2
  %switch.select3.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, i32 16, i32 %switch.select.i.i.i.i
  %add.i.i.i = add i32 %switch.select3.i.i.i.i, %socklen.021.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.022.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.end.loopexit.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.end.loopexit.i.i.i:                           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %phi.bo.i.i.i = shl i32 %add.i.i.i, 1
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.end.loopexit.i.i.i, %sw.bb2.for.end.i.i.i_crit_edge
  %socklen.0.lcssa.i.i.i = phi i32 [ 0, %sw.bb2.for.end.i.i.i_crit_edge ], [ %phi.bo.i.i.i, %for.end.loopexit.i.i.i ]
  %security.i.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 23
  %11 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %security.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i.i, label %for.end.i.i.i.pfkey_xfrm_policy2msg_prep.exit.i_crit_edge, label %if.then.i.i.i.i

for.end.i.i.i.pfkey_xfrm_policy2msg_prep.exit.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_xfrm_policy2msg_prep.exit.i

if.then.i.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ctx_len.i.i.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ctx_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ctx_len.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %14 to i32
  %sub.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i, 7
  %or.i.i.i.i = or i32 %sub.i.i.i.i, 7
  %add1.i.i.i.i = add nuw nsw i32 %or.i.i.i.i, 1
  br label %pfkey_xfrm_policy2msg_prep.exit.i

pfkey_xfrm_policy2msg_prep.exit.i:                ; preds = %if.then.i.i.i.i, %for.end.i.i.i.pfkey_xfrm_policy2msg_prep.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %add1.i.i.i.i, %if.then.i.i.i.i ], [ 0, %for.end.i.i.i.pfkey_xfrm_policy2msg_prep.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %switch.selectcmp2.i.i.i.i.i = icmp eq i16 %6, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %6)
  %switch.selectcmp.i.i.i.i.i = icmp eq i16 %6, 10
  %mul7.i.i.i = shl nuw nsw i32 %conv.i.i.i, 4
  %switch.select.i.op.op.op.i.op.i.op.i.i = select i1 %switch.selectcmp.i.i.i.i.i, i32 224, i32 160
  %add8.i.i.i = select i1 %switch.selectcmp2.i.i.i.i.i, i32 192, i32 %switch.select.i.op.op.op.i.op.i.op.i.i
  %add10.i.i.i = add nuw nsw i32 %add8.i.i.i, %mul7.i.i.i
  %add12.i.i.i = add i32 %add10.i.i.i, %socklen.0.lcssa.i.i.i
  %add.i.i = add i32 %add12.i.i.i, %retval.0.i.i.i.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %cmp.i.i = icmp eq ptr %call.i.i.i, null
  %spec.select.i.i = select i1 %cmp.i.i, ptr inttoptr (i32 -105 to ptr), ptr %call.i.i.i
  %cmp.i34.i = icmp ugt ptr %spec.select.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %pfkey_xfrm_policy2msg_prep.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %spec.select.i.i to i32
  br label %return

if.end.i:                                         ; preds = %pfkey_xfrm_policy2msg_prep.exit.i
  %call3.i = tail call fastcc i32 @pfkey_xfrm_policy2msg(ptr noundef %spec.select.i.i, ptr noundef %xp, i32 noundef %dir) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef %spec.select.i.i, i32 noundef 0) #15
  br label %return

if.end5.i:                                        ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %spec.select.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %17, align 1
  %19 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp ne i32 %20, 0
  %21 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %.pr)
  %cmp7.i = icmp eq i32 %.pr, 20
  %or.cond = select i1 %tobool.not.i, i1 %cmp7.i, i1 false
  br i1 %or.cond, label %if.end5.i.if.end12.i_crit_edge, label %if.else.i

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end5.i
  %22 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %.pr, label %do.end.i.i [
    i32 20, label %if.else.i.if.end12.i_crit_edge
    i32 19, label %sw.bb1.i.i
    i32 25, label %sw.bb2.i.i
  ]

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

sw.bb1.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

sw.bb2.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

do.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %.pr) #18
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.else.i.if.end12.i_crit_edge, %if.end5.i.if.end12.i_crit_edge
  %retval.0.i.sink.i = phi i8 [ 0, %do.end.i.i ], [ 13, %sw.bb2.i.i ], [ 14, %sw.bb1.i.i ], [ 15, %if.else.i.if.end12.i_crit_edge ], [ 22, %if.end5.i.if.end12.i_crit_edge ]
  %sadb_msg_type11.i = getelementptr inbounds %struct.sadb_msg, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %sadb_msg_type11.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %retval.0.i.sink.i, ptr %sadb_msg_type11.i, align 1
  %sadb_msg_errno.i = getelementptr inbounds %struct.sadb_msg, ptr %17, i32 0, i32 2
  %24 = ptrtoint ptr %sadb_msg_errno.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %sadb_msg_errno.i, align 1
  %seq.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %25 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %seq.i, align 4
  %sadb_msg_seq.i = getelementptr inbounds %struct.sadb_msg, ptr %17, i32 0, i32 6
  %27 = ptrtoint ptr %sadb_msg_seq.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %sadb_msg_seq.i, align 1
  %portid.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %28 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %portid.i, align 4
  %sadb_msg_pid.i = getelementptr inbounds %struct.sadb_msg, ptr %17, i32 0, i32 7
  %30 = ptrtoint ptr %sadb_msg_pid.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %sadb_msg_pid.i, align 1
  %31 = ptrtoint ptr %xp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xp, align 4
  %call14.i = tail call fastcc i32 @pfkey_broadcast(ptr noundef %spec.select.i.i, i32 noundef 2592, i32 noundef 0, ptr noundef null, ptr noundef %32) #15
  br label %return

sw.bb4:                                           ; preds = %if.end
  %33 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp5.not = icmp eq i32 %34, 0
  br i1 %cmp5.not, label %if.end8, label %sw.bb4.return_crit_edge

sw.bb4.return_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end8:                                          ; preds = %sw.bb4
  %call.i.i20 = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %tobool.not.i21 = icmp eq ptr %call.i.i20, null
  br i1 %tobool.not.i21, label %if.end8.return_crit_edge, label %if.end.i27

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end.i27:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i20, i32 noundef 16) #15
  %sadb_msg_type.i = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 1
  %35 = ptrtoint ptr %sadb_msg_type.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 19, ptr %sadb_msg_type.i, align 1
  %seq.i22 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %36 = ptrtoint ptr %seq.i22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %seq.i22, align 4
  %sadb_msg_seq.i23 = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 6
  %38 = ptrtoint ptr %sadb_msg_seq.i23 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %sadb_msg_seq.i23, align 1
  %portid.i24 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %39 = ptrtoint ptr %portid.i24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %portid.i24, align 4
  %sadb_msg_pid.i25 = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 7
  %41 = ptrtoint ptr %sadb_msg_pid.i25 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %sadb_msg_pid.i25, align 1
  %42 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %call1.i, align 1
  %sadb_msg_errno.i26 = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 2
  %43 = ptrtoint ptr %sadb_msg_errno.i26 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %sadb_msg_errno.i26, align 1
  %sadb_msg_satype.i = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 3
  %44 = ptrtoint ptr %sadb_msg_satype.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %sadb_msg_satype.i, align 1
  %sadb_msg_len.i = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 4
  %45 = ptrtoint ptr %sadb_msg_len.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 2, ptr %sadb_msg_len.i, align 1
  %sadb_msg_reserved.i = getelementptr inbounds %struct.sadb_msg, ptr %call1.i, i32 0, i32 5
  %46 = ptrtoint ptr %sadb_msg_reserved.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 0, ptr %sadb_msg_reserved.i, align 1
  %net.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 4
  %47 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net.i, align 4
  %call2.i = tail call fastcc i32 @pfkey_broadcast(ptr noundef nonnull %call.i.i20, i32 noundef 2592, i32 noundef 0, ptr noundef null, ptr noundef %48) #15
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %3) #18
  br label %return

return:                                           ; preds = %do.end, %if.end.i27, %if.end8.return_crit_edge, %sw.bb4.return_crit_edge, %if.end12.i, %if.then4.i, %if.then.i, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.return_crit_edge ], [ 0, %sw.bb4.return_crit_edge ], [ 0, %do.end ], [ 0, %if.end.return_crit_edge ], [ %15, %if.then.i ], [ %call3.i, %if.then4.i ], [ 0, %if.end12.i ], [ 0, %if.end.i27 ], [ -105, %if.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_send_migrate(ptr nocapture noundef readonly %sel, i8 noundef zeroext %dir, i8 noundef zeroext %type, ptr nocapture noundef readonly %m, i32 noundef %num_bundles, ptr noundef readonly %k, ptr nocapture noundef readnone %encap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp.not = icmp eq i8 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup95_crit_edge

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup95

if.end:                                           ; preds = %entry
  %0 = add i32 %num_bundles, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %0)
  %1 = icmp ult i32 %0, -6
  br i1 %1, label %if.end.cleanup95_crit_edge, label %if.end7

if.end.cleanup95_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup95

if.end7:                                          ; preds = %if.end
  %cmp8.not = icmp eq ptr %k, null
  br i1 %cmp8.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %family = getelementptr inbounds %struct.xfrm_kmaddress, ptr %k, i32 0, i32 3
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %switch.selectcmp.i.i = icmp eq i16 %3, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %switch.selectcmp2.i.i = icmp eq i16 %3, 2
  %switch.select.i.op.op.i.op.op.op = select i1 %switch.selectcmp.i.i, i32 96, i32 40
  %phi.bo = select i1 %switch.selectcmp2.i.i, i32 72, i32 %switch.select.i.op.op.i.op.op.op
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %size.0 = phi i32 [ %phi.bo, %if.then10 ], [ 32, %if.end7.if.end13_crit_edge ]
  %family14 = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 6
  %4 = ptrtoint ptr %family14 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %family14, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %5)
  %switch.selectcmp.i.i167 = icmp eq i16 %5, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %switch.selectcmp2.i.i168 = icmp eq i16 %5, 2
  %switch.select.i.op.op.op.i = select i1 %switch.selectcmp.i.i167, i32 32, i32 0
  %add.i169 = select i1 %switch.selectcmp2.i.i168, i32 16, i32 %switch.select.i.op.op.op.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i169)
  %tobool.not = icmp eq i32 %add.i169, 0
  br i1 %tobool.not, label %if.end13.cleanup95_crit_edge, label %for.body.preheader

if.end13.cleanup95_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup95

for.body.preheader:                               ; preds = %if.end13
  %add18 = shl nuw nsw i32 %add.i169, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %mp.0271 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %m, %for.body.preheader ]
  %size_pol.0270 = phi i32 [ %add28, %for.body.for.body_crit_edge ], [ 16, %for.body.preheader ]
  %i.0269 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %old_family = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.0271, i32 0, i32 8
  %6 = ptrtoint ptr %old_family to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %old_family, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %7)
  %switch.selectcmp.i.i170 = icmp eq i16 %7, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %switch.selectcmp2.i.i171 = icmp eq i16 %7, 2
  %switch.select.i.op.op.i172.op = select i1 %switch.selectcmp.i.i170, i32 72, i32 16
  %add24 = select i1 %switch.selectcmp2.i.i171, i32 48, i32 %switch.select.i.op.op.i172.op
  %add25 = add i32 %add24, %size_pol.0270
  %new_family = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.0271, i32 0, i32 9
  %8 = ptrtoint ptr %new_family to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %new_family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %9)
  %switch.selectcmp.i.i174 = icmp eq i16 %9, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %switch.selectcmp2.i.i175 = icmp eq i16 %9, 2
  %switch.select.i.op.op.i176.op = select i1 %switch.selectcmp.i.i174, i32 72, i32 16
  %add27 = select i1 %switch.selectcmp2.i.i175, i32 48, i32 %switch.select.i.op.op.i176.op
  %add28 = add i32 %add25, %add27
  %inc = add nuw nsw i32 %i.0269, 1
  %incdec.ptr = getelementptr %struct.xfrm_migrate, ptr %mp.0271, i32 1
  %exitcond.not = icmp eq i32 %inc, %num_bundles
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %add19 = add nsw i32 %size.0, %add18
  %add30 = add i32 %add19, %add28
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add30, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %cmp32 = icmp eq ptr %call.i, null
  br i1 %cmp32, label %for.end.cleanup95_crit_edge, label %if.end35

for.end.cleanup95_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup95

if.end35:                                         ; preds = %for.end
  %call36 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #15
  %10 = ptrtoint ptr %call36 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %call36, align 1
  %sadb_msg_type = getelementptr inbounds %struct.sadb_msg, ptr %call36, i32 0, i32 1
  %11 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 24, ptr %sadb_msg_type, align 1
  %proto = getelementptr inbounds %struct.xfrm_migrate, ptr %m, i32 0, i32 4
  %12 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %proto, align 4
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %13, label %sw.default.i [
    i8 51, label %if.end35.pfkey_proto2satype.exit_crit_edge
    i8 50, label %sw.bb1.i
    i8 108, label %sw.bb2.i
  ]

if.end35.pfkey_proto2satype.exit_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.bb1.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.bb2.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.default.i:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

pfkey_proto2satype.exit:                          ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end35.pfkey_proto2satype.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %sw.default.i ], [ 9, %sw.bb2.i ], [ 3, %sw.bb1.i ], [ 2, %if.end35.pfkey_proto2satype.exit_crit_edge ]
  %sadb_msg_satype = getelementptr inbounds %struct.sadb_msg, ptr %call36, i32 0, i32 3
  %15 = ptrtoint ptr %sadb_msg_satype to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %retval.0.i, ptr %sadb_msg_satype, align 1
  %div = sdiv i32 %add30, 8
  %conv39 = trunc i32 %div to i16
  %sadb_msg_len = getelementptr inbounds %struct.sadb_msg, ptr %call36, i32 0, i32 4
  %16 = ptrtoint ptr %sadb_msg_len to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %conv39, ptr %sadb_msg_len, align 1
  %sadb_msg_errno = getelementptr inbounds %struct.sadb_msg, ptr %call36, i32 0, i32 2
  %17 = ptrtoint ptr %sadb_msg_errno to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %sadb_msg_errno, align 1
  %sadb_msg_reserved = getelementptr inbounds %struct.sadb_msg, ptr %call36, i32 0, i32 5
  %18 = ptrtoint ptr %sadb_msg_reserved to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 0, ptr %sadb_msg_reserved, align 1
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %call36, i32 0, i32 6
  %19 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %sadb_msg_seq, align 1
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %call36, i32 0, i32 7
  %20 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 0, ptr %sadb_msg_pid, align 1
  br i1 %cmp8.not, label %pfkey_proto2satype.exit.if.end46_crit_edge, label %land.lhs.true

pfkey_proto2satype.exit.if.end46_crit_edge:       ; preds = %pfkey_proto2satype.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

land.lhs.true:                                    ; preds = %pfkey_proto2satype.exit
  %family1.i = getelementptr inbounds %struct.xfrm_kmaddress, ptr %k, i32 0, i32 3
  %21 = ptrtoint ptr %family1.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %family1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %22)
  %switch.selectcmp.i.i178 = icmp eq i16 %22, 10
  %switch.select.i.i = select i1 %switch.selectcmp.i.i178, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %switch.selectcmp2.i.i179 = icmp eq i16 %22, 2
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i179, i32 16, i32 %switch.select.i.i
  %switch.select.i.op.op.i.op.i = select i1 %switch.selectcmp.i.i178, i32 64, i32 8
  %add.i180 = select i1 %switch.selectcmp2.i.i179, i32 40, i32 %switch.select.i.op.op.i.op.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add.i180) #15
  %23 = call ptr @memset(ptr %call.i.i, i32 0, i32 %add.i180)
  %div45.lhs.trunc.i = trunc i32 %add.i180 to i8
  %div454647.i = lshr exact i8 %div45.lhs.trunc.i, 3
  %conv6.i = zext i8 %div454647.i to i16
  %24 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %conv6.i, ptr %call.i.i, align 1
  %sadb_x_kmaddress_exttype.i = getelementptr inbounds %struct.sadb_x_kmaddress, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %sadb_x_kmaddress_exttype.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 25, ptr %sadb_x_kmaddress_exttype.i, align 1
  %reserved.i = getelementptr inbounds %struct.xfrm_kmaddress, ptr %k, i32 0, i32 2
  %26 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reserved.i, align 4
  %sadb_x_kmaddress_reserved.i = getelementptr inbounds %struct.sadb_x_kmaddress, ptr %call.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %sadb_x_kmaddress_reserved.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %sadb_x_kmaddress_reserved.i, align 1
  %add.ptr.i = getelementptr %struct.sadb_x_kmaddress, ptr %call.i.i, i32 1
  %29 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %22, label %land.lhs.true.err_crit_edge [
    i16 2, label %sw.bb.i31.i
    i16 10, label %sw.bb1.i36.i
  ]

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

sw.bb.i31.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2, ptr %add.ptr.i, align 4
  %sin_port.i.i = getelementptr %struct.sadb_x_kmaddress, ptr %call.i.i, i32 1, i32 1
  %31 = ptrtoint ptr %sin_port.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %sin_port.i.i, align 2
  %32 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %k, align 4
  %sin_addr.i.i = getelementptr %struct.sadb_x_kmaddress, ptr %call.i.i, i32 1, i32 2
  %34 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sin_addr.i.i, align 4
  %__pad.i.i = getelementptr %struct.sadb_x_kmaddress, ptr %call.i.i, i32 2
  %35 = ptrtoint ptr %__pad.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 0, ptr %__pad.i.i, align 4
  %remote41.i = getelementptr inbounds %struct.xfrm_kmaddress, ptr %k, i32 0, i32 1
  %add.ptr942.i = getelementptr i8, ptr %add.ptr.i, i32 %switch.select3.i.i
  %36 = ptrtoint ptr %add.ptr942.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 2, ptr %add.ptr942.i, align 4
  %sin_port.i28.i = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr942.i, i32 0, i32 1
  %37 = ptrtoint ptr %sin_port.i28.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %sin_port.i28.i, align 2
  %38 = ptrtoint ptr %remote41.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %remote41.i, align 4
  %sin_addr.i29.i = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr942.i, i32 0, i32 2
  %40 = ptrtoint ptr %sin_addr.i29.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %sin_addr.i29.i, align 4
  %__pad.i30.i = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr942.i, i32 0, i32 3
  %41 = ptrtoint ptr %__pad.i30.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 0, ptr %__pad.i30.i, align 4
  br label %if.end46

sw.bb1.i36.i:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 10, ptr %add.ptr.i, align 4
  %sin6_port.i.i = getelementptr %struct.sadb_x_kmaddress, ptr %call.i.i, i32 1, i32 1
  %43 = ptrtoint ptr %sin6_port.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %sin6_port.i.i, align 2
  %sin6_flowinfo.i.i = getelementptr %struct.sadb_x_kmaddress, ptr %call.i.i, i32 1, i32 2
  %44 = ptrtoint ptr %sin6_flowinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %sin6_flowinfo.i.i, align 4
  %sin6_addr.i.i = getelementptr %struct.sadb_x_kmaddress, ptr %call.i.i, i32 2
  %45 = call ptr @memcpy(ptr %sin6_addr.i.i, ptr %k, i32 16)
  %sin6_scope_id.i.i = getelementptr %struct.sadb_x_kmaddress, ptr %call.i.i, i32 4
  %46 = ptrtoint ptr %sin6_scope_id.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %sin6_scope_id.i.i, align 4
  %remote.i = getelementptr inbounds %struct.xfrm_kmaddress, ptr %k, i32 0, i32 1
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %switch.select3.i.i
  %47 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 10, ptr %add.ptr9.i, align 4
  %sin6_port.i32.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr9.i, i32 0, i32 1
  %48 = ptrtoint ptr %sin6_port.i32.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %sin6_port.i32.i, align 2
  %sin6_flowinfo.i33.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr9.i, i32 0, i32 2
  %49 = ptrtoint ptr %sin6_flowinfo.i33.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %sin6_flowinfo.i33.i, align 4
  %sin6_addr.i34.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr9.i, i32 0, i32 3
  %50 = call ptr @memcpy(ptr %sin6_addr.i34.i, ptr %remote.i, i32 16)
  %sin6_scope_id.i35.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr9.i, i32 0, i32 4
  %51 = ptrtoint ptr %sin6_scope_id.i35.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %sin6_scope_id.i35.i, align 4
  br label %if.end46

if.end46:                                         ; preds = %sw.bb1.i36.i, %sw.bb.i31.i, %pfkey_proto2satype.exit.if.end46_crit_edge
  %add.i182 = or i32 %add.i169, 8
  %call.i183 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add.i182) #15
  %div1.i = lshr exact i32 %add.i182, 3
  %conv.i = trunc i32 %div1.i to i16
  %52 = ptrtoint ptr %call.i183 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %conv.i, ptr %call.i183, align 1
  %sadb_address_exttype.i = getelementptr inbounds %struct.sadb_address, ptr %call.i183, i32 0, i32 1
  %53 = ptrtoint ptr %sadb_address_exttype.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 5, ptr %sadb_address_exttype.i, align 1
  %proto.i = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 9
  %54 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %proto.i, align 4
  %sadb_address_proto.i = getelementptr inbounds %struct.sadb_address, ptr %call.i183, i32 0, i32 2
  %56 = ptrtoint ptr %sadb_address_proto.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %sadb_address_proto.i, align 1
  %sadb_address_reserved.i = getelementptr inbounds %struct.sadb_address, ptr %call.i183, i32 0, i32 4
  %57 = ptrtoint ptr %sadb_address_reserved.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 0, ptr %sadb_address_reserved.i, align 1
  %prefixlen_s.i = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 8
  %58 = ptrtoint ptr %prefixlen_s.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %prefixlen_s.i, align 1
  %sadb_address_prefixlen.i = getelementptr inbounds %struct.sadb_address, ptr %call.i183, i32 0, i32 3
  %60 = ptrtoint ptr %sadb_address_prefixlen.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %sadb_address_prefixlen.i, align 1
  %saddr.i = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 1
  %add.ptr.i184 = getelementptr %struct.sadb_address, ptr %call.i183, i32 1
  %61 = ptrtoint ptr %family14 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %family14, align 4
  %63 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %62, label %if.end46.set_sadb_address.exit_crit_edge [
    i16 2, label %sw.bb.i.i
    i16 10, label %sw.bb1.i.i
  ]

if.end46.set_sadb_address.exit_crit_edge:         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_sadb_address.exit

sw.bb.i.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %add.ptr.i184 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 2, ptr %add.ptr.i184, align 4
  %sin_port.i.i185 = getelementptr %struct.sadb_address, ptr %call.i183, i32 1, i32 1
  %65 = ptrtoint ptr %sin_port.i.i185 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %sin_port.i.i185, align 2
  %66 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %saddr.i, align 4
  %sin_addr.i.i186 = getelementptr %struct.sadb_address, ptr %call.i183, i32 1, i32 2
  %68 = ptrtoint ptr %sin_addr.i.i186 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %sin_addr.i.i186, align 4
  %__pad.i.i187 = getelementptr %struct.sadb_address, ptr %call.i183, i32 2
  %69 = ptrtoint ptr %__pad.i.i187 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 0, ptr %__pad.i.i187, align 4
  br label %set_sadb_address.exit

sw.bb1.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  %70 = ptrtoint ptr %add.ptr.i184 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 10, ptr %add.ptr.i184, align 4
  %sin6_port.i.i188 = getelementptr %struct.sadb_address, ptr %call.i183, i32 1, i32 1
  %71 = ptrtoint ptr %sin6_port.i.i188 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %sin6_port.i.i188, align 2
  %sin6_flowinfo.i.i189 = getelementptr %struct.sadb_address, ptr %call.i183, i32 1, i32 2
  %72 = ptrtoint ptr %sin6_flowinfo.i.i189 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %sin6_flowinfo.i.i189, align 4
  %sin6_addr.i.i190 = getelementptr %struct.sadb_address, ptr %call.i183, i32 2
  %73 = call ptr @memcpy(ptr %sin6_addr.i.i190, ptr %saddr.i, i32 16)
  %sin6_scope_id.i.i191 = getelementptr %struct.sadb_address, ptr %call.i183, i32 4
  %74 = ptrtoint ptr %sin6_scope_id.i.i191 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %sin6_scope_id.i.i191, align 4
  br label %set_sadb_address.exit

set_sadb_address.exit:                            ; preds = %sw.bb1.i.i, %sw.bb.i.i, %if.end46.set_sadb_address.exit_crit_edge
  %call.i193 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add.i182) #15
  %75 = ptrtoint ptr %call.i193 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %conv.i, ptr %call.i193, align 1
  %sadb_address_exttype.i196 = getelementptr inbounds %struct.sadb_address, ptr %call.i193, i32 0, i32 1
  %76 = ptrtoint ptr %sadb_address_exttype.i196 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 6, ptr %sadb_address_exttype.i196, align 1
  %77 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %proto.i, align 4
  %sadb_address_proto.i198 = getelementptr inbounds %struct.sadb_address, ptr %call.i193, i32 0, i32 2
  %79 = ptrtoint ptr %sadb_address_proto.i198 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %sadb_address_proto.i198, align 1
  %sadb_address_reserved.i199 = getelementptr inbounds %struct.sadb_address, ptr %call.i193, i32 0, i32 4
  %80 = ptrtoint ptr %sadb_address_reserved.i199 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 0, ptr %sadb_address_reserved.i199, align 1
  %prefixlen_d.i = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 7
  %81 = ptrtoint ptr %prefixlen_d.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %prefixlen_d.i, align 2
  %sadb_address_prefixlen5.i = getelementptr inbounds %struct.sadb_address, ptr %call.i193, i32 0, i32 3
  %83 = ptrtoint ptr %sadb_address_prefixlen5.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %sadb_address_prefixlen5.i, align 1
  %add.ptr6.i = getelementptr %struct.sadb_address, ptr %call.i193, i32 1
  %84 = ptrtoint ptr %family14 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %family14, align 4
  %86 = zext i16 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %85, label %set_sadb_address.exit.for.body58.preheader_crit_edge [
    i16 2, label %sw.bb.i5.i
    i16 10, label %sw.bb1.i10.i
  ]

set_sadb_address.exit.for.body58.preheader_crit_edge: ; preds = %set_sadb_address.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body58.preheader

sw.bb.i5.i:                                       ; preds = %set_sadb_address.exit
  call void @__sanitizer_cov_trace_pc() #17
  %87 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 2, ptr %add.ptr6.i, align 4
  %sin_port.i2.i = getelementptr %struct.sadb_address, ptr %call.i193, i32 1, i32 1
  %88 = ptrtoint ptr %sin_port.i2.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %sin_port.i2.i, align 2
  %89 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sel, align 4
  %sin_addr.i3.i = getelementptr %struct.sadb_address, ptr %call.i193, i32 1, i32 2
  %91 = ptrtoint ptr %sin_addr.i3.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %sin_addr.i3.i, align 4
  %__pad.i4.i = getelementptr %struct.sadb_address, ptr %call.i193, i32 2
  %92 = ptrtoint ptr %__pad.i4.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 0, ptr %__pad.i4.i, align 4
  br label %for.body58.preheader

sw.bb1.i10.i:                                     ; preds = %set_sadb_address.exit
  call void @__sanitizer_cov_trace_pc() #17
  %93 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 10, ptr %add.ptr6.i, align 4
  %sin6_port.i6.i = getelementptr %struct.sadb_address, ptr %call.i193, i32 1, i32 1
  %94 = ptrtoint ptr %sin6_port.i6.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %sin6_port.i6.i, align 2
  %sin6_flowinfo.i7.i = getelementptr %struct.sadb_address, ptr %call.i193, i32 1, i32 2
  %95 = ptrtoint ptr %sin6_flowinfo.i7.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %sin6_flowinfo.i7.i, align 4
  %sin6_addr.i8.i = getelementptr %struct.sadb_address, ptr %call.i193, i32 2
  %96 = call ptr @memcpy(ptr %sin6_addr.i8.i, ptr %sel, i32 16)
  %sin6_scope_id.i9.i = getelementptr %struct.sadb_address, ptr %call.i193, i32 4
  %97 = ptrtoint ptr %sin6_scope_id.i9.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %sin6_scope_id.i9.i, align 4
  br label %for.body58.preheader

for.body58.preheader:                             ; preds = %sw.bb1.i10.i, %sw.bb.i5.i, %set_sadb_address.exit.for.body58.preheader_crit_edge
  %call49 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #15
  %div50 = sdiv i32 %add28, 8
  %conv51 = trunc i32 %div50 to i16
  %98 = ptrtoint ptr %call49 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 2)
  store i16 %conv51, ptr %call49, align 1
  %sadb_x_policy_exttype = getelementptr inbounds %struct.sadb_x_policy, ptr %call49, i32 0, i32 1
  %99 = ptrtoint ptr %sadb_x_policy_exttype to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 18, ptr %sadb_x_policy_exttype, align 1
  %sadb_x_policy_type = getelementptr inbounds %struct.sadb_x_policy, ptr %call49, i32 0, i32 2
  %100 = ptrtoint ptr %sadb_x_policy_type to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 2, ptr %sadb_x_policy_type, align 1
  %add53 = add i8 %dir, 1
  %sadb_x_policy_dir = getelementptr inbounds %struct.sadb_x_policy, ptr %call49, i32 0, i32 3
  %101 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %add53, ptr %sadb_x_policy_dir, align 1
  %sadb_x_policy_reserved = getelementptr inbounds %struct.sadb_x_policy, ptr %call49, i32 0, i32 4
  %102 = ptrtoint ptr %sadb_x_policy_reserved to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %sadb_x_policy_reserved, align 1
  %sadb_x_policy_id = getelementptr inbounds %struct.sadb_x_policy, ptr %call49, i32 0, i32 5
  %103 = ptrtoint ptr %sadb_x_policy_id to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 0, ptr %sadb_x_policy_id, align 1
  %sadb_x_policy_priority = getelementptr inbounds %struct.sadb_x_policy, ptr %call49, i32 0, i32 6
  %104 = ptrtoint ptr %sadb_x_policy_priority to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 0, ptr %sadb_x_policy_priority, align 1
  br label %for.body58

for.body58:                                       ; preds = %for.inc90.for.body58_crit_edge, %for.body58.preheader
  %mp.1274 = phi ptr [ %incdec.ptr92, %for.inc90.for.body58_crit_edge ], [ %m, %for.body58.preheader ]
  %i.1273 = phi i32 [ %inc91, %for.inc90.for.body58_crit_edge ], [ 0, %for.body58.preheader ]
  %mode59 = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.1274, i32 0, i32 5
  %105 = ptrtoint ptr %mode59 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %mode59, align 1
  %107 = zext i8 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %106, label %for.body58.err_crit_edge [
    i8 0, label %for.body58.if.end65_crit_edge
    i8 1, label %sw.bb1.i201
    i8 4, label %sw.bb2.i202
  ]

for.body58.if.end65_crit_edge:                    ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

for.body58.err_crit_edge:                         ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

sw.bb1.i201:                                      ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

sw.bb2.i202:                                      ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.end65:                                         ; preds = %sw.bb2.i202, %sw.bb1.i201, %for.body58.if.end65_crit_edge
  %retval.0.i204.ph = phi i8 [ 1, %for.body58.if.end65_crit_edge ], [ 2, %sw.bb1.i201 ], [ 3, %sw.bb2.i202 ]
  %proto66 = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.1274, i32 0, i32 4
  %108 = ptrtoint ptr %proto66 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %proto66, align 4
  %reqid = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.1274, i32 0, i32 7
  %110 = ptrtoint ptr %reqid to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %reqid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool68.not = icmp eq i32 %111, 0
  %old_family70 = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.1274, i32 0, i32 8
  %112 = ptrtoint ptr %old_family70 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %old_family70, align 4
  %conv71 = trunc i16 %113 to i8
  %old_saddr = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.1274, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv71)
  %switch.selectcmp.i.i205 = icmp eq i8 %conv71, 10
  %switch.select.i.i206 = select i1 %switch.selectcmp.i.i205, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv71)
  %switch.selectcmp2.i.i207 = icmp eq i8 %conv71, 2
  %switch.select3.i.i208 = select i1 %switch.selectcmp2.i.i207, i32 16, i32 %switch.select.i.i206
  %switch.select.i.op.op.i.op.i209 = select i1 %switch.selectcmp.i.i205, i32 72, i32 16
  %add.i210 = select i1 %switch.selectcmp2.i.i207, i32 48, i32 %switch.select.i.op.op.i.op.i209
  %call.i.i211 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add.i210) #15
  %114 = call ptr @memset(ptr %call.i.i211, i32 0, i32 %add.i210)
  %conv4.i = trunc i32 %add.i210 to i16
  %115 = ptrtoint ptr %call.i.i211 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 %conv4.i, ptr %call.i.i211, align 1
  %conv5.i = zext i8 %109 to i16
  %sadb_x_ipsecrequest_proto.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %call.i.i211, i32 0, i32 1
  %116 = ptrtoint ptr %sadb_x_ipsecrequest_proto.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 2)
  store i16 %conv5.i, ptr %sadb_x_ipsecrequest_proto.i, align 1
  %sadb_x_ipsecrequest_mode.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %call.i.i211, i32 0, i32 2
  %117 = ptrtoint ptr %sadb_x_ipsecrequest_mode.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %retval.0.i204.ph, ptr %sadb_x_ipsecrequest_mode.i, align 1
  %conv6.i212 = select i1 %tobool68.not, i8 2, i8 3
  %sadb_x_ipsecrequest_level.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %call.i.i211, i32 0, i32 3
  %118 = ptrtoint ptr %sadb_x_ipsecrequest_level.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv6.i212, ptr %sadb_x_ipsecrequest_level.i, align 1
  %sadb_x_ipsecrequest_reqid.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %call.i.i211, i32 0, i32 5
  %119 = ptrtoint ptr %sadb_x_ipsecrequest_reqid.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 %111, ptr %sadb_x_ipsecrequest_reqid.i, align 1
  %add.ptr.i213 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i211, i32 1
  %120 = zext i8 %conv71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %conv71, label %if.end65.err_crit_edge [
    i8 2, label %sw.bb.i29.i
    i8 10, label %sw.bb1.i34.i
  ]

if.end65.err_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

sw.bb.i29.i:                                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  %121 = ptrtoint ptr %add.ptr.i213 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 2, ptr %add.ptr.i213, align 4
  %sin_port.i.i214 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i211, i32 1, i32 1
  %122 = ptrtoint ptr %sin_port.i.i214 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %sin_port.i.i214, align 2
  %123 = ptrtoint ptr %old_saddr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %old_saddr, align 4
  %sin_addr.i.i215 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i211, i32 1, i32 2
  %125 = ptrtoint ptr %sin_addr.i.i215 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %sin_addr.i.i215, align 4
  %__pad.i.i216 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i211, i32 1, i32 5
  %126 = ptrtoint ptr %__pad.i.i216 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 8)
  store i64 0, ptr %__pad.i.i216, align 4
  %add.ptr939.i = getelementptr i8, ptr %add.ptr.i213, i32 %switch.select3.i.i208
  %127 = ptrtoint ptr %add.ptr939.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 2, ptr %add.ptr939.i, align 4
  %sin_port.i26.i = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr939.i, i32 0, i32 1
  %128 = ptrtoint ptr %sin_port.i26.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %sin_port.i26.i, align 2
  %129 = ptrtoint ptr %mp.1274 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mp.1274, align 4
  %sin_addr.i27.i = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr939.i, i32 0, i32 2
  %131 = ptrtoint ptr %sin_addr.i27.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %sin_addr.i27.i, align 4
  %__pad.i28.i = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr939.i, i32 0, i32 3
  %132 = ptrtoint ptr %__pad.i28.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 8)
  store i64 0, ptr %__pad.i28.i, align 4
  br label %if.end76

sw.bb1.i34.i:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  %133 = ptrtoint ptr %add.ptr.i213 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 10, ptr %add.ptr.i213, align 4
  %sin6_port.i.i217 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i211, i32 1, i32 1
  %134 = ptrtoint ptr %sin6_port.i.i217 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %sin6_port.i.i217, align 2
  %sin6_flowinfo.i.i218 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i211, i32 1, i32 2
  %135 = ptrtoint ptr %sin6_flowinfo.i.i218 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %sin6_flowinfo.i.i218, align 4
  %sin6_addr.i.i219 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i211, i32 1, i32 5
  %136 = call ptr @memcpy(ptr %sin6_addr.i.i219, ptr %old_saddr, i32 16)
  %sin6_scope_id.i.i220 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i211, i32 2, i32 5
  %137 = ptrtoint ptr %sin6_scope_id.i.i220 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %sin6_scope_id.i.i220, align 4
  %add.ptr9.i221 = getelementptr i8, ptr %add.ptr.i213, i32 %switch.select3.i.i208
  %138 = ptrtoint ptr %add.ptr9.i221 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 10, ptr %add.ptr9.i221, align 4
  %sin6_port.i30.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr9.i221, i32 0, i32 1
  %139 = ptrtoint ptr %sin6_port.i30.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %sin6_port.i30.i, align 2
  %sin6_flowinfo.i31.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr9.i221, i32 0, i32 2
  %140 = ptrtoint ptr %sin6_flowinfo.i31.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %sin6_flowinfo.i31.i, align 4
  %sin6_addr.i32.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr9.i221, i32 0, i32 3
  %141 = call ptr @memcpy(ptr %sin6_addr.i32.i, ptr %mp.1274, i32 16)
  %sin6_scope_id.i33.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr9.i221, i32 0, i32 4
  %142 = ptrtoint ptr %sin6_scope_id.i33.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %sin6_scope_id.i33.i, align 4
  br label %if.end76

if.end76:                                         ; preds = %sw.bb1.i34.i, %sw.bb.i29.i
  %143 = ptrtoint ptr %proto66 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %proto66, align 4
  %145 = ptrtoint ptr %reqid to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %reqid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool80.not = icmp eq i32 %146, 0
  %new_family83 = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.1274, i32 0, i32 9
  %147 = ptrtoint ptr %new_family83 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %new_family83, align 2
  %conv84 = trunc i16 %148 to i8
  %new_saddr = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.1274, i32 0, i32 3
  %new_daddr = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.1274, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv84)
  %switch.selectcmp.i.i223 = icmp eq i8 %conv84, 10
  %switch.select.i.i224 = select i1 %switch.selectcmp.i.i223, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv84)
  %switch.selectcmp2.i.i225 = icmp eq i8 %conv84, 2
  %switch.select3.i.i226 = select i1 %switch.selectcmp2.i.i225, i32 16, i32 %switch.select.i.i224
  %switch.select.i.op.op.i.op.i227 = select i1 %switch.selectcmp.i.i223, i32 72, i32 16
  %add.i228 = select i1 %switch.selectcmp2.i.i225, i32 48, i32 %switch.select.i.op.op.i.op.i227
  %call.i.i229 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add.i228) #15
  %149 = call ptr @memset(ptr %call.i.i229, i32 0, i32 %add.i228)
  %conv4.i230 = trunc i32 %add.i228 to i16
  %150 = ptrtoint ptr %call.i.i229 to i32
  call void @__asan_storeN_noabort(i32 %150, i32 2)
  store i16 %conv4.i230, ptr %call.i.i229, align 1
  %conv5.i231 = zext i8 %144 to i16
  %sadb_x_ipsecrequest_proto.i232 = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %call.i.i229, i32 0, i32 1
  %151 = ptrtoint ptr %sadb_x_ipsecrequest_proto.i232 to i32
  call void @__asan_storeN_noabort(i32 %151, i32 2)
  store i16 %conv5.i231, ptr %sadb_x_ipsecrequest_proto.i232, align 1
  %sadb_x_ipsecrequest_mode.i233 = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %call.i.i229, i32 0, i32 2
  %152 = ptrtoint ptr %sadb_x_ipsecrequest_mode.i233 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %retval.0.i204.ph, ptr %sadb_x_ipsecrequest_mode.i233, align 1
  %conv6.i234 = select i1 %tobool80.not, i8 2, i8 3
  %sadb_x_ipsecrequest_level.i235 = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %call.i.i229, i32 0, i32 3
  %153 = ptrtoint ptr %sadb_x_ipsecrequest_level.i235 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv6.i234, ptr %sadb_x_ipsecrequest_level.i235, align 1
  %sadb_x_ipsecrequest_reqid.i236 = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %call.i.i229, i32 0, i32 5
  %154 = ptrtoint ptr %sadb_x_ipsecrequest_reqid.i236 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 4)
  store i32 %146, ptr %sadb_x_ipsecrequest_reqid.i236, align 1
  %add.ptr.i237 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i229, i32 1
  %155 = zext i8 %conv84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %conv84, label %if.end76.err_crit_edge [
    i8 2, label %sw.bb.i29.i245
    i8 10, label %sw.bb1.i34.i255
  ]

if.end76.err_crit_edge:                           ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

sw.bb.i29.i245:                                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %156 = ptrtoint ptr %add.ptr.i237 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 2, ptr %add.ptr.i237, align 4
  %sin_port.i.i238 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i229, i32 1, i32 1
  %157 = ptrtoint ptr %sin_port.i.i238 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 0, ptr %sin_port.i.i238, align 2
  %158 = ptrtoint ptr %new_saddr to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %new_saddr, align 4
  %sin_addr.i.i239 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i229, i32 1, i32 2
  %160 = ptrtoint ptr %sin_addr.i.i239 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %sin_addr.i.i239, align 4
  %__pad.i.i240 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i229, i32 1, i32 5
  %161 = ptrtoint ptr %__pad.i.i240 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 8)
  store i64 0, ptr %__pad.i.i240, align 4
  %add.ptr939.i241 = getelementptr i8, ptr %add.ptr.i237, i32 %switch.select3.i.i226
  %162 = ptrtoint ptr %add.ptr939.i241 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 2, ptr %add.ptr939.i241, align 4
  %sin_port.i26.i242 = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr939.i241, i32 0, i32 1
  %163 = ptrtoint ptr %sin_port.i26.i242 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %sin_port.i26.i242, align 2
  %164 = ptrtoint ptr %new_daddr to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %new_daddr, align 4
  %sin_addr.i27.i243 = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr939.i241, i32 0, i32 2
  %166 = ptrtoint ptr %sin_addr.i27.i243 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %sin_addr.i27.i243, align 4
  %__pad.i28.i244 = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr939.i241, i32 0, i32 3
  %167 = ptrtoint ptr %__pad.i28.i244 to i32
  call void @__asan_storeN_noabort(i32 %167, i32 8)
  store i64 0, ptr %__pad.i28.i244, align 4
  br label %for.inc90

sw.bb1.i34.i255:                                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %168 = ptrtoint ptr %add.ptr.i237 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 10, ptr %add.ptr.i237, align 4
  %sin6_port.i.i246 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i229, i32 1, i32 1
  %169 = ptrtoint ptr %sin6_port.i.i246 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %sin6_port.i.i246, align 2
  %sin6_flowinfo.i.i247 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i229, i32 1, i32 2
  %170 = ptrtoint ptr %sin6_flowinfo.i.i247 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %sin6_flowinfo.i.i247, align 4
  %sin6_addr.i.i248 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i229, i32 1, i32 5
  %171 = call ptr @memcpy(ptr %sin6_addr.i.i248, ptr %new_saddr, i32 16)
  %sin6_scope_id.i.i249 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call.i.i229, i32 2, i32 5
  %172 = ptrtoint ptr %sin6_scope_id.i.i249 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %sin6_scope_id.i.i249, align 4
  %add.ptr9.i250 = getelementptr i8, ptr %add.ptr.i237, i32 %switch.select3.i.i226
  %173 = ptrtoint ptr %add.ptr9.i250 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 10, ptr %add.ptr9.i250, align 4
  %sin6_port.i30.i251 = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr9.i250, i32 0, i32 1
  %174 = ptrtoint ptr %sin6_port.i30.i251 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 0, ptr %sin6_port.i30.i251, align 2
  %sin6_flowinfo.i31.i252 = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr9.i250, i32 0, i32 2
  %175 = ptrtoint ptr %sin6_flowinfo.i31.i252 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %sin6_flowinfo.i31.i252, align 4
  %sin6_addr.i32.i253 = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr9.i250, i32 0, i32 3
  %176 = call ptr @memcpy(ptr %sin6_addr.i32.i253, ptr %new_daddr, i32 16)
  %sin6_scope_id.i33.i254 = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr9.i250, i32 0, i32 4
  %177 = ptrtoint ptr %sin6_scope_id.i33.i254 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %sin6_scope_id.i33.i254, align 4
  br label %for.inc90

for.inc90:                                        ; preds = %sw.bb1.i34.i255, %sw.bb.i29.i245
  %inc91 = add nuw nsw i32 %i.1273, 1
  %incdec.ptr92 = getelementptr %struct.xfrm_migrate, ptr %mp.1274, i32 1
  %exitcond276.not = icmp eq i32 %inc91, %num_bundles
  br i1 %exitcond276.not, label %for.end93, label %for.inc90.for.body58_crit_edge

for.inc90.for.body58_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body58

for.end93:                                        ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #17
  %call94 = tail call fastcc i32 @pfkey_broadcast(ptr noundef nonnull %call.i, i32 noundef 2592, i32 noundef 0, ptr noundef null, ptr noundef nonnull @init_net)
  br label %cleanup95

err:                                              ; preds = %if.end76.err_crit_edge, %if.end65.err_crit_edge, %for.body58.err_crit_edge, %land.lhs.true.err_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #15
  br label %cleanup95

cleanup95:                                        ; preds = %err, %for.end93, %for.end.cleanup95_crit_edge, %if.end13.cleanup95_crit_edge, %if.end.cleanup95_crit_edge, %entry.cleanup95_crit_edge
  %retval.0 = phi i32 [ -22, %err ], [ 0, %for.end93 ], [ 0, %entry.cleanup95_crit_edge ], [ -22, %if.end.cleanup95_crit_edge ], [ -22, %if.end13.cleanup95_crit_edge ], [ -12, %for.end.cleanup95_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @pfkey_is_alive(ptr nocapture noundef readonly %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 4
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %2 = load i32, ptr @pfkey_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = tail call i32 @llvm.read_register.i32(metadata !93) #15
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !110
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b39 = load i1, ptr @pfkey_is_alive.__warned, align 1
  br i1 %.b39, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @pfkey_is_alive.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 3124, ptr noundef nonnull @.str.8) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %call, align 4
  %tobool11.not = icmp eq ptr %8, null
  %add.ptr = getelementptr i8, ptr %8, i32 -84
  %tobool13.not5256 = icmp eq ptr %add.ptr, null
  %tobool13.not52 = or i1 %tobool11.not, %tobool13.not5256
  br i1 %tobool13.not52, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %sk.053 = phi ptr [ %add.ptr29, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %registered = getelementptr inbounds %struct.pfkey_sock, ptr %sk.053, i32 0, i32 1
  %9 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %registered, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %for.inc, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.loopexit

for.inc:                                          ; preds = %for.body
  %11 = getelementptr inbounds %struct.sock_common, ptr %sk.053, i32 0, i32 15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %11, align 4
  %tobool25.not = icmp eq ptr %13, null
  %add.ptr29 = getelementptr i8, ptr %13, i32 -84
  %tobool13.not57 = icmp eq ptr %add.ptr29, null
  %tobool13.not = or i1 %tobool25.not, %tobool13.not57
  br i1 %tobool13.not, label %for.inc.for.end.loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  %phi.bo = xor i1 %tobool15.not, true
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %do.end.for.end_crit_edge
  %tobool13.not.lcssa = phi i1 [ false, %do.end.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %call.i41 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i41, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i44

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i44:                                ; preds = %for.end
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i46

land.lhs.true.i44.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i46:                               ; preds = %land.lhs.true.i44
  %.b4.i45 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i45, label %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, label %if.then.i47

land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i47:                                      ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i47, %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !111
  %14 = tail call i32 @llvm.read_register.i32(metadata !93) #15
  %and.i.i.i.i.i48 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i48 to ptr
  %preempt_count.i.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i49, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i49, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret i1 %tobool13.not.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !110
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
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
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 45, ptr noundef nonnull @.str.4) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !111
  %8 = tail call i32 @llvm.read_register.i32(metadata !93) #15
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret ptr %7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pfkey_broadcast(ptr noundef %skb, i32 noundef %allocation, i32 noundef %broadcast_flags, ptr noundef %one_sk, ptr noundef %net) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pfkey_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup67_crit_edge, label %if.end

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup67

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !93) #15
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !110
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b90 = load i1, ptr @pfkey_broadcast.__warned, align 1
  br i1 %.b90, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @pfkey_broadcast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 230, ptr noundef nonnull @.str.8) #15
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %call, align 4
  %tobool14.not = icmp eq ptr %6, null
  %add.ptr = getelementptr i8, ptr %6, i32 -84
  %tobool16.not107112 = icmp eq ptr %add.ptr, null
  %tobool16.not107 = or i1 %tobool14.not, %tobool16.not107112
  br i1 %tobool16.not107, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %broadcast_flags)
  %cmp24.not = icmp eq i32 %broadcast_flags, 0
  %and = and i32 %broadcast_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  %and29 = and i32 %broadcast_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %and35 = and i32 %broadcast_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %sk.0109 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr59, %cleanup.for.body_crit_edge ]
  %err.0108 = phi i32 [ -3, %for.body.lr.ph ], [ %err.2, %cleanup.for.body_crit_edge ]
  %promisc = getelementptr inbounds %struct.pfkey_sock, ptr %sk.0109, i32 0, i32 2
  %7 = ptrtoint ptr %promisc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %promisc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool18.not = icmp eq i32 %8, 0
  br i1 %tobool18.not, label %for.body.if.end21_crit_edge, label %if.then19

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %call20 = tail call fastcc i32 @pfkey_broadcast_one(ptr noundef nonnull %skb, i32 noundef 2592, ptr noundef nonnull %sk.0109)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.body.if.end21_crit_edge
  %cmp = icmp eq ptr %sk.0109, %one_sk
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %if.end21
  br i1 %cmp24.not, label %if.end39.thread, label %if.then25

if.end39.thread:                                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %call40103 = tail call fastcc i32 @pfkey_broadcast_one(ptr noundef nonnull %skb, i32 noundef 2592, ptr noundef nonnull %sk.0109)
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  br i1 %tobool26.not, label %if.end28, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end28:                                         ; preds = %if.then25
  br i1 %tobool30.not, label %if.end34, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end28
  %registered = getelementptr inbounds %struct.pfkey_sock, ptr %sk.0109, i32 0, i32 1
  %9 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %registered, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool32.not = icmp ne i32 %10, 0
  %or.cond = and i1 %tobool36.not, %tobool32.not
  br i1 %or.cond, label %land.lhs.true43, label %land.lhs.true31.cleanup_crit_edge

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  br i1 %tobool36.not, label %if.end39.thread113, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end39.thread113:                               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %call40114 = tail call fastcc i32 @pfkey_broadcast_one(ptr noundef nonnull %skb, i32 noundef 2592, ptr noundef nonnull %sk.0109)
  br label %cleanup

land.lhs.true43:                                  ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  %call40 = tail call fastcc i32 @pfkey_broadcast_one(ptr noundef nonnull %skb, i32 noundef 2592, ptr noundef nonnull %sk.0109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0108)
  %tobool44.not = icmp eq i32 %err.0108, 0
  %spec.select91 = select i1 %tobool44.not, i32 0, i32 %call40
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true43, %if.end39.thread113, %if.end34.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end39.thread, %if.end21.cleanup_crit_edge
  %err.2 = phi i32 [ %err.0108, %if.end21.cleanup_crit_edge ], [ %err.0108, %if.then25.cleanup_crit_edge ], [ %err.0108, %land.lhs.true31.cleanup_crit_edge ], [ %err.0108, %if.end34.cleanup_crit_edge ], [ %spec.select91, %land.lhs.true43 ], [ %err.0108, %if.end39.thread ], [ %err.0108, %if.end39.thread113 ]
  %11 = getelementptr inbounds %struct.sock_common, ptr %sk.0109, i32 0, i32 15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %11, align 4
  %tobool55.not = icmp eq ptr %13, null
  %add.ptr59 = getelementptr i8, ptr %13, i32 -84
  %tobool16.not115 = icmp eq ptr %add.ptr59, null
  %tobool16.not = or i1 %tobool55.not, %tobool16.not115
  br i1 %tobool16.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end.for.end_crit_edge
  %err.0.lcssa = phi i32 [ -3, %do.end.for.end_crit_edge ], [ %err.2, %cleanup.for.end_crit_edge ]
  %call.i93 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i93, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i96

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i96:                                ; preds = %for.end
  %call1.i94 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool.not.i95 = icmp eq i32 %call1.i94, 0
  br i1 %tobool.not.i95, label %land.lhs.true.i96.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i98

land.lhs.true.i96.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i98:                               ; preds = %land.lhs.true.i96
  %.b4.i97 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i97, label %land.lhs.true2.i98.rcu_read_unlock.exit_crit_edge, label %if.then.i99

land.lhs.true2.i98.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i99:                                      ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i99, %land.lhs.true2.i98.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i96.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !111
  %14 = tail call i32 @llvm.read_register.i32(metadata !93) #15
  %and.i.i.i.i.i100 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i100 to ptr
  %preempt_count.i.i.i.i101 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i101, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i101, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %cmp63.not = icmp eq ptr %one_sk, null
  br i1 %cmp63.not, label %rcu_read_unlock.exit.if.end66_crit_edge, label %if.then64

rcu_read_unlock.exit.if.end66_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

if.then64:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call65 = tail call fastcc i32 @pfkey_broadcast_one(ptr noundef nonnull %skb, i32 noundef %allocation, ptr noundef nonnull %one_sk)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %rcu_read_unlock.exit.if.end66_crit_edge
  %err.3 = phi i32 [ %call65, %if.then64 ], [ %err.0.lcssa, %rcu_read_unlock.exit.if.end66_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #15
  br label %cleanup67

cleanup67:                                        ; preds = %if.end66, %entry.cleanup67_crit_edge
  %retval.0 = phi i32 [ %err.3, %if.end66 ], [ -12, %entry.cleanup67_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__pfkey_xfrm_state2msg(ptr noundef readonly %x, i32 noundef %add_keys, i32 noundef %hsc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %props = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %switch.selectcmp.i.i = icmp eq i16 %1, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %switch.selectcmp2.i.i = icmp eq i16 %1, 2
  %switch.select.i.op.op.op.i = select i1 %switch.selectcmp.i.i, i32 32, i32 0
  %add.i = select i1 %switch.selectcmp2.i.i, i32 16, i32 %switch.select.i.op.op.op.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not = icmp eq i32 %add.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %hsc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %2 = shl nuw nsw i32 %and, 5
  %and3 = and i32 %hsc, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %3 = shl nuw nsw i32 %and3, 4
  %mul = shl nuw nsw i32 %add.i, 1
  %add6 = add nuw nsw i32 %2, 96
  %add8 = add nuw nsw i32 %add6, %3
  %add9 = add nuw nsw i32 %add8, %mul
  %security = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 50
  %4 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ctx_len = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ctx_len, align 2
  %conv = zext i16 %7 to i32
  %sub = add nsw i32 %conv, -1
  %or = or i32 %sub, 7
  %add13 = add nsw i32 %or, 9
  %add14 = add nsw i32 %add13, %add9
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %ctx_size.0 = phi i32 [ %add13, %if.then11 ], [ 8, %if.end.if.end15_crit_edge ]
  %size.0 = phi i32 [ %add14, %if.then11 ], [ %add9, %if.end.if.end15_crit_edge ]
  %saddr = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 1
  %saddr17 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %8 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saddr, align 4
  %10 = ptrtoint ptr %saddr17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saddr17, align 4
  br i1 %switch.selectcmp.i.i, label %sw.bb2.i, label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i = icmp eq i32 %9, %11
  br label %xfrm_addr_equal.exit

sw.bb2.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %xor.i.i.i = xor i32 %11, %9
  %arrayidx4.i.i.i = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %15, %13
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %19, %17
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15.i.i.i, align 4
  %arrayidx17.i.i.i = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %23, %21
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br label %xfrm_addr_equal.exit

xfrm_addr_equal.exit:                             ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi i1 [ %cmp.i.i.i, %sw.bb2.i ], [ %cmp.i, %sw.bb.i ]
  %add22 = or i32 %add.i, 8
  %add23 = select i1 %retval.0.i, i32 0, i32 %add22
  %size.1 = add i32 %add23, %size.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add_keys)
  %tobool25.not = icmp eq i32 %add_keys, 0
  br i1 %tobool25.not, label %xfrm_addr_equal.exit.if.end56_crit_edge, label %if.then26

xfrm_addr_equal.exit.if.end56_crit_edge:          ; preds = %xfrm_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then26:                                        ; preds = %xfrm_addr_equal.exit
  %aalg = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 16
  %24 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aalg, align 8
  %tobool27.not = icmp eq ptr %25, null
  br i1 %tobool27.not, label %if.then26.if.end39_crit_edge, label %land.lhs.true

if.then26.if.end39_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

land.lhs.true:                                    ; preds = %if.then26
  %alg_key_len = getelementptr inbounds %struct.xfrm_algo_auth, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %alg_key_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %alg_key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool29.not = icmp eq i32 %27, 0
  br i1 %tobool29.not, label %land.lhs.true.if.end39_crit_edge, label %if.then30

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %add33 = add i32 %27, 7
  %div699 = lshr i32 %add33, 3
  %sub34 = add nsw i32 %div699, -1
  %or35 = or i32 %sub34, 7
  %add36 = add nsw i32 %or35, 1
  %add37 = add i32 %size.1, 9
  %add38 = add i32 %add37, %or35
  br label %if.end39

if.end39:                                         ; preds = %if.then30, %land.lhs.true.if.end39_crit_edge, %if.then26.if.end39_crit_edge
  %size.2 = phi i32 [ %add38, %if.then30 ], [ %size.1, %land.lhs.true.if.end39_crit_edge ], [ %size.1, %if.then26.if.end39_crit_edge ]
  %auth_key_size.0 = phi i32 [ %add36, %if.then30 ], [ 0, %land.lhs.true.if.end39_crit_edge ], [ 0, %if.then26.if.end39_crit_edge ]
  %ealg = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 17
  %28 = ptrtoint ptr %ealg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ealg, align 4
  %tobool40.not = icmp eq ptr %29, null
  br i1 %tobool40.not, label %if.end39.if.end56_crit_edge, label %land.lhs.true41

if.end39.if.end56_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

land.lhs.true41:                                  ; preds = %if.end39
  %alg_key_len43 = getelementptr inbounds %struct.xfrm_algo, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %alg_key_len43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %alg_key_len43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool44.not = icmp eq i32 %31, 0
  br i1 %tobool44.not, label %land.lhs.true41.if.end56_crit_edge, label %if.then45

land.lhs.true41.if.end56_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then45:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #17
  %add48 = add i32 %31, 7
  %div49698 = lshr i32 %add48, 3
  %sub50 = add nsw i32 %div49698, -1
  %or51 = or i32 %sub50, 7
  %add52 = add nsw i32 %or51, 1
  %add53 = add i32 %size.2, 9
  %add54 = add i32 %add53, %or51
  br label %if.end56

if.end56:                                         ; preds = %if.then45, %land.lhs.true41.if.end56_crit_edge, %if.end39.if.end56_crit_edge, %xfrm_addr_equal.exit.if.end56_crit_edge
  %size.3 = phi i32 [ %add54, %if.then45 ], [ %size.2, %land.lhs.true41.if.end56_crit_edge ], [ %size.2, %if.end39.if.end56_crit_edge ], [ %size.1, %xfrm_addr_equal.exit.if.end56_crit_edge ]
  %auth_key_size.1 = phi i32 [ %auth_key_size.0, %if.then45 ], [ %auth_key_size.0, %land.lhs.true41.if.end56_crit_edge ], [ %auth_key_size.0, %if.end39.if.end56_crit_edge ], [ 0, %xfrm_addr_equal.exit.if.end56_crit_edge ]
  %encrypt_key_size.0 = phi i32 [ %add52, %if.then45 ], [ 0, %land.lhs.true41.if.end56_crit_edge ], [ 0, %if.end39.if.end56_crit_edge ], [ 0, %xfrm_addr_equal.exit.if.end56_crit_edge ]
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %32 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %encap, align 8
  %tobool57.not = icmp eq ptr %33, null
  br i1 %tobool57.not, label %if.end56.if.end69_crit_edge, label %land.lhs.true62

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

land.lhs.true62:                                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool64.not = icmp eq i16 %35, 0
  %add68 = add i32 %size.3, 24
  %spec.select700 = select i1 %tobool64.not, i32 %size.3, i32 %add68
  br label %if.end69

if.end69:                                         ; preds = %land.lhs.true62, %if.end56.if.end69_crit_edge
  %size.4 = phi i32 [ %size.3, %if.end56.if.end69_crit_edge ], [ %spec.select700, %land.lhs.true62 ]
  %add70 = add i32 %size.4, 16
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add70, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end69.cleanup_crit_edge, label %if.end75

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end75:                                         ; preds = %if.end69
  %call76 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #15
  %36 = call ptr @memset(ptr %call76, i32 0, i32 %size.4)
  %div77690 = lshr i32 %size.4, 3
  %conv78 = trunc i32 %div77690 to i16
  %sadb_msg_len = getelementptr inbounds %struct.sadb_msg, ptr %call76, i32 0, i32 4
  %37 = ptrtoint ptr %sadb_msg_len to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %conv78, ptr %sadb_msg_len, align 1
  %call79 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #15
  %38 = ptrtoint ptr %call79 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 2, ptr %call79, align 1
  %sadb_sa_exttype = getelementptr inbounds %struct.sadb_sa, ptr %call79, i32 0, i32 1
  %39 = ptrtoint ptr %sadb_sa_exttype to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 1, ptr %sadb_sa_exttype, align 1
  %id = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %spi, align 4
  %sadb_sa_spi = getelementptr inbounds %struct.sadb_sa, ptr %call79, i32 0, i32 2
  %42 = ptrtoint ptr %sadb_sa_spi to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %sadb_sa_spi, align 1
  %replay_window = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 2
  %43 = ptrtoint ptr %replay_window to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %replay_window, align 1
  %sadb_sa_replay = getelementptr inbounds %struct.sadb_sa, ptr %call79, i32 0, i32 3
  %45 = ptrtoint ptr %sadb_sa_replay to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %sadb_sa_replay, align 1
  %state = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 13, i32 1
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %state, align 8
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %47, label %sw.default [
    i8 2, label %sw.bb
    i8 1, label %if.end75.sw.epilog_crit_edge
  ]

if.end75.sw.epilog_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  %dying = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 13, i32 2
  %49 = ptrtoint ptr %dying to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dying, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool84.not = icmp eq i8 %50, 0
  %conv86 = select i1 %tobool84.not, i8 1, i8 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %if.end75.sw.epilog_crit_edge
  %.sink = phi i8 [ 3, %sw.default ], [ %conv86, %sw.bb ], [ 0, %if.end75.sw.epilog_crit_edge ]
  %sadb_sa_state89 = getelementptr inbounds %struct.sadb_sa, ptr %call79, i32 0, i32 4
  %51 = ptrtoint ptr %sadb_sa_state89 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.sink, ptr %sadb_sa_state89, align 1
  %sadb_sa_auth = getelementptr inbounds %struct.sadb_sa, ptr %call79, i32 0, i32 5
  %52 = ptrtoint ptr %sadb_sa_auth to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %sadb_sa_auth, align 1
  %aalg90 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 16
  %53 = ptrtoint ptr %aalg90 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %aalg90, align 8
  %tobool91.not = icmp eq ptr %54, null
  br i1 %tobool91.not, label %sw.epilog.if.end103_crit_edge, label %if.then92

sw.epilog.if.end103_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103

if.then92:                                        ; preds = %sw.epilog
  %call94 = tail call ptr @xfrm_aalg_get_byname(ptr noundef nonnull %54, i32 noundef 0) #15
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %if.then92.cond.end_crit_edge, label %land.lhs.true96

if.then92.cond.end_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

land.lhs.true96:                                  ; preds = %if.then92
  %pfkey_supported = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call94, i32 0, i32 2
  %55 = ptrtoint ptr %pfkey_supported to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load = load i8, ptr %pfkey_supported, align 4
  %56 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool98.not = icmp eq i8 %56, 0
  br i1 %tobool98.not, label %land.lhs.true96.cond.end_crit_edge, label %cond.true

land.lhs.true96.cond.end_crit_edge:               ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #17
  %desc = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call94, i32 0, i32 4
  %57 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %desc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true96.cond.end_crit_edge, %if.then92.cond.end_crit_edge
  %cond100 = phi i8 [ %58, %cond.true ], [ 0, %land.lhs.true96.cond.end_crit_edge ], [ 0, %if.then92.cond.end_crit_edge ]
  %59 = ptrtoint ptr %sadb_sa_auth to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %cond100, ptr %sadb_sa_auth, align 1
  br label %if.end103

if.end103:                                        ; preds = %cond.end, %sw.epilog.if.end103_crit_edge
  %sadb_sa_encrypt = getelementptr inbounds %struct.sadb_sa, ptr %call79, i32 0, i32 6
  %60 = ptrtoint ptr %sadb_sa_encrypt to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %sadb_sa_encrypt, align 1
  %ealg104 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 17
  %61 = ptrtoint ptr %ealg104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ealg104, align 4
  %tobool105.not = icmp eq ptr %62, null
  br i1 %tobool105.not, label %if.end103.if.end142_crit_edge, label %land.rhs

if.end103.if.end142_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end142

land.rhs:                                         ; preds = %if.end103
  %calg = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 18
  %63 = ptrtoint ptr %calg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %calg, align 8
  %tobool106.not = icmp eq ptr %64, null
  br i1 %tobool106.not, label %if.then119, label %do.body110, !prof !112

do.body110:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/key/af_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 859, 0\0A.popsection", ""() #15, !srcloc !113
  unreachable

if.then119:                                       ; preds = %land.rhs
  %call124 = tail call ptr @xfrm_ealg_get_byname(ptr noundef nonnull %62, i32 noundef 0) #15
  %tobool125.not = icmp eq ptr %call124, null
  br i1 %tobool125.not, label %if.then119.cond.end138_crit_edge, label %land.lhs.true126

if.then119.cond.end138_crit_edge:                 ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end138

land.lhs.true126:                                 ; preds = %if.then119
  %pfkey_supported127 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call124, i32 0, i32 2
  %65 = ptrtoint ptr %pfkey_supported127 to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load128 = load i8, ptr %pfkey_supported127, align 4
  %66 = and i8 %bf.load128, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool132.not = icmp eq i8 %66, 0
  br i1 %tobool132.not, label %land.lhs.true126.cond.end138_crit_edge, label %cond.true133

land.lhs.true126.cond.end138_crit_edge:           ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end138

cond.true133:                                     ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #17
  %desc134 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call124, i32 0, i32 4
  %67 = ptrtoint ptr %desc134 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %desc134, align 4
  br label %cond.end138

cond.end138:                                      ; preds = %cond.true133, %land.lhs.true126.cond.end138_crit_edge, %if.then119.cond.end138_crit_edge
  %cond139 = phi i8 [ %68, %cond.true133 ], [ 0, %land.lhs.true126.cond.end138_crit_edge ], [ 0, %if.then119.cond.end138_crit_edge ]
  %69 = ptrtoint ptr %sadb_sa_encrypt to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %cond139, ptr %sadb_sa_encrypt, align 1
  br label %if.end142

if.end142:                                        ; preds = %cond.end138, %if.end103.if.end142_crit_edge
  %calg143 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 18
  %70 = ptrtoint ptr %calg143 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %calg143, align 8
  %tobool144.not = icmp eq ptr %71, null
  br i1 %tobool144.not, label %if.end142.if.end168_crit_edge, label %if.then145

if.end142.if.end168_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end168

if.then145:                                       ; preds = %if.end142
  %call150 = tail call ptr @xfrm_calg_get_byname(ptr noundef nonnull %71, i32 noundef 0) #15
  %tobool151.not = icmp eq ptr %call150, null
  br i1 %tobool151.not, label %if.then145.cond.end164_crit_edge, label %land.lhs.true152

if.then145.cond.end164_crit_edge:                 ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end164

land.lhs.true152:                                 ; preds = %if.then145
  %pfkey_supported153 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call150, i32 0, i32 2
  %72 = ptrtoint ptr %pfkey_supported153 to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load154 = load i8, ptr %pfkey_supported153, align 4
  %73 = and i8 %bf.load154, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool158.not = icmp eq i8 %73, 0
  br i1 %tobool158.not, label %land.lhs.true152.cond.end164_crit_edge, label %cond.true159

land.lhs.true152.cond.end164_crit_edge:           ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end164

cond.true159:                                     ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #17
  %desc160 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call150, i32 0, i32 4
  %74 = ptrtoint ptr %desc160 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %desc160, align 4
  br label %cond.end164

cond.end164:                                      ; preds = %cond.true159, %land.lhs.true152.cond.end164_crit_edge, %if.then145.cond.end164_crit_edge
  %cond165 = phi i8 [ %75, %cond.true159 ], [ 0, %land.lhs.true152.cond.end164_crit_edge ], [ 0, %if.then145.cond.end164_crit_edge ]
  %76 = ptrtoint ptr %sadb_sa_encrypt to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %cond165, ptr %sadb_sa_encrypt, align 1
  br label %if.end168

if.end168:                                        ; preds = %cond.end164, %if.end142.if.end168_crit_edge
  %sadb_sa_flags = getelementptr inbounds %struct.sadb_sa, ptr %call79, i32 0, i32 7
  %77 = ptrtoint ptr %sadb_sa_flags to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 0, ptr %sadb_sa_flags, align 1
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %flags, align 1
  %80 = zext i8 %79 to i32
  %81 = shl i32 %80, 31
  store i32 %81, ptr %sadb_sa_flags, align 1
  %82 = load i8, ptr %flags, align 1
  %83 = and i8 %82, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool181.not = icmp eq i8 %83, 0
  br i1 %tobool181.not, label %if.end168.if.end185_crit_edge, label %if.then182

if.end168.if.end185_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end185

if.then182:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #17
  %or184 = or i32 %81, 1073741824
  %84 = ptrtoint ptr %sadb_sa_flags to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %or184, ptr %sadb_sa_flags, align 1
  br label %if.end185

if.end185:                                        ; preds = %if.then182, %if.end168.if.end185_crit_edge
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %flags, align 1
  %87 = and i8 %86, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool190.not = icmp eq i8 %87, 0
  br i1 %tobool190.not, label %if.end185.if.end194_crit_edge, label %if.then191

if.end185.if.end194_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end194

if.then191:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %sadb_sa_flags to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %sadb_sa_flags, align 1
  %or193 = or i32 %89, 536870912
  store i32 %or193, ptr %sadb_sa_flags, align 1
  br label %if.end194

if.end194:                                        ; preds = %if.then191, %if.end185.if.end194_crit_edge
  br i1 %tobool4.not, label %if.end194.if.end219_crit_edge, label %if.then197

if.end194.if.end219_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end219

if.then197:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #17
  %call198 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 32) #15
  %90 = ptrtoint ptr %call198 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 4, ptr %call198, align 1
  %sadb_lifetime_exttype = getelementptr inbounds %struct.sadb_lifetime, ptr %call198, i32 0, i32 1
  %91 = ptrtoint ptr %sadb_lifetime_exttype to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 3, ptr %sadb_lifetime_exttype, align 1
  %hard_packet_limit = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 15, i32 3
  %92 = ptrtoint ptr %hard_packet_limit to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %hard_packet_limit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %93)
  %cmp199 = icmp eq i64 %93, -1
  %extract.t697 = trunc i64 %93 to i32
  %spec.select701 = select i1 %cmp199, i32 0, i32 %extract.t697
  %sadb_lifetime_allocations = getelementptr inbounds %struct.sadb_lifetime, ptr %call198, i32 0, i32 2
  %94 = ptrtoint ptr %sadb_lifetime_allocations to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %spec.select701, ptr %sadb_lifetime_allocations, align 1
  %hard_byte_limit = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 15, i32 1
  %95 = ptrtoint ptr %hard_byte_limit to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %hard_byte_limit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %96)
  %cmp209 = icmp eq i64 %96, -1
  %cond216 = select i1 %cmp209, i64 0, i64 %96
  %sadb_lifetime_bytes = getelementptr inbounds %struct.sadb_lifetime, ptr %call198, i32 0, i32 3
  %97 = ptrtoint ptr %sadb_lifetime_bytes to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 %cond216, ptr %sadb_lifetime_bytes, align 1
  %hard_add_expires_seconds = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 15, i32 5
  %98 = ptrtoint ptr %hard_add_expires_seconds to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %hard_add_expires_seconds, align 8
  %sadb_lifetime_addtime = getelementptr inbounds %struct.sadb_lifetime, ptr %call198, i32 0, i32 4
  %100 = ptrtoint ptr %sadb_lifetime_addtime to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 %99, ptr %sadb_lifetime_addtime, align 1
  %hard_use_expires_seconds = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 15, i32 7
  %101 = ptrtoint ptr %hard_use_expires_seconds to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %hard_use_expires_seconds, align 8
  %sadb_lifetime_usetime = getelementptr inbounds %struct.sadb_lifetime, ptr %call198, i32 0, i32 5
  %103 = ptrtoint ptr %sadb_lifetime_usetime to i32
  call void @__asan_storeN_noabort(i32 %103, i32 8)
  store i64 %102, ptr %sadb_lifetime_usetime, align 1
  br label %if.end219

if.end219:                                        ; preds = %if.then197, %if.end194.if.end219_crit_edge
  br i1 %tobool2.not, label %if.end219.if.end251_crit_edge, label %if.then222

if.end219.if.end251_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end251

if.then222:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #17
  %call223 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 32) #15
  %104 = ptrtoint ptr %call223 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 4, ptr %call223, align 1
  %sadb_lifetime_exttype225 = getelementptr inbounds %struct.sadb_lifetime, ptr %call223, i32 0, i32 1
  %105 = ptrtoint ptr %sadb_lifetime_exttype225 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 4, ptr %sadb_lifetime_exttype225, align 1
  %lft226 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 15
  %soft_packet_limit = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 15, i32 2
  %106 = ptrtoint ptr %soft_packet_limit to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %soft_packet_limit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %107)
  %cmp227 = icmp eq i64 %107, -1
  %extract.t = trunc i64 %107 to i32
  %spec.select702 = select i1 %cmp227, i32 0, i32 %extract.t
  %sadb_lifetime_allocations236 = getelementptr inbounds %struct.sadb_lifetime, ptr %call223, i32 0, i32 2
  %108 = ptrtoint ptr %sadb_lifetime_allocations236 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 %spec.select702, ptr %sadb_lifetime_allocations236, align 1
  %109 = ptrtoint ptr %lft226 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %lft226, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %110)
  %cmp238 = icmp eq i64 %110, -1
  %cond245 = select i1 %cmp238, i64 0, i64 %110
  %sadb_lifetime_bytes246 = getelementptr inbounds %struct.sadb_lifetime, ptr %call223, i32 0, i32 3
  %111 = ptrtoint ptr %sadb_lifetime_bytes246 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 8)
  store i64 %cond245, ptr %sadb_lifetime_bytes246, align 1
  %soft_add_expires_seconds = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 15, i32 4
  %112 = ptrtoint ptr %soft_add_expires_seconds to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %soft_add_expires_seconds, align 8
  %sadb_lifetime_addtime248 = getelementptr inbounds %struct.sadb_lifetime, ptr %call223, i32 0, i32 4
  %114 = ptrtoint ptr %sadb_lifetime_addtime248 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 8)
  store i64 %113, ptr %sadb_lifetime_addtime248, align 1
  %soft_use_expires_seconds = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 15, i32 6
  %115 = ptrtoint ptr %soft_use_expires_seconds to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %soft_use_expires_seconds, align 8
  %sadb_lifetime_usetime250 = getelementptr inbounds %struct.sadb_lifetime, ptr %call223, i32 0, i32 5
  %117 = ptrtoint ptr %sadb_lifetime_usetime250 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 8)
  store i64 %116, ptr %sadb_lifetime_usetime250, align 1
  br label %if.end251

if.end251:                                        ; preds = %if.then222, %if.end219.if.end251_crit_edge
  %call252 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 32) #15
  %118 = ptrtoint ptr %call252 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 4, ptr %call252, align 1
  %sadb_lifetime_exttype254 = getelementptr inbounds %struct.sadb_lifetime, ptr %call252, i32 0, i32 1
  %119 = ptrtoint ptr %sadb_lifetime_exttype254 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 2)
  store i16 2, ptr %sadb_lifetime_exttype254, align 1
  %curlft = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 39
  %packets = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 39, i32 1
  %120 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %packets, align 8
  %conv255 = trunc i64 %121 to i32
  %sadb_lifetime_allocations256 = getelementptr inbounds %struct.sadb_lifetime, ptr %call252, i32 0, i32 2
  %122 = ptrtoint ptr %sadb_lifetime_allocations256 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 %conv255, ptr %sadb_lifetime_allocations256, align 1
  %123 = ptrtoint ptr %curlft to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %curlft, align 8
  %sadb_lifetime_bytes258 = getelementptr inbounds %struct.sadb_lifetime, ptr %call252, i32 0, i32 3
  %125 = ptrtoint ptr %sadb_lifetime_bytes258 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 8)
  store i64 %124, ptr %sadb_lifetime_bytes258, align 1
  %add_time = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 39, i32 2
  %126 = ptrtoint ptr %add_time to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %add_time, align 8
  %sadb_lifetime_addtime260 = getelementptr inbounds %struct.sadb_lifetime, ptr %call252, i32 0, i32 4
  %128 = ptrtoint ptr %sadb_lifetime_addtime260 to i32
  call void @__asan_storeN_noabort(i32 %128, i32 8)
  store i64 %127, ptr %sadb_lifetime_addtime260, align 1
  %use_time = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 39, i32 3
  %129 = ptrtoint ptr %use_time to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %use_time, align 8
  %sadb_lifetime_usetime262 = getelementptr inbounds %struct.sadb_lifetime, ptr %call252, i32 0, i32 5
  %131 = ptrtoint ptr %sadb_lifetime_usetime262 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 %130, ptr %sadb_lifetime_usetime262, align 1
  %call264 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add22) #15
  %div266691 = lshr exact i32 %add22, 3
  %conv267 = trunc i32 %div266691 to i16
  %132 = ptrtoint ptr %call264 to i32
  call void @__asan_storeN_noabort(i32 %132, i32 2)
  store i16 %conv267, ptr %call264, align 1
  %sadb_address_exttype = getelementptr inbounds %struct.sadb_address, ptr %call264, i32 0, i32 1
  %133 = ptrtoint ptr %sadb_address_exttype to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 5, ptr %sadb_address_exttype, align 1
  %sadb_address_proto = getelementptr inbounds %struct.sadb_address, ptr %call264, i32 0, i32 2
  %134 = ptrtoint ptr %sadb_address_proto to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %sadb_address_proto, align 1
  %sadb_address_reserved = getelementptr inbounds %struct.sadb_address, ptr %call264, i32 0, i32 4
  %135 = ptrtoint ptr %sadb_address_reserved to i32
  call void @__asan_storeN_noabort(i32 %135, i32 2)
  store i16 0, ptr %sadb_address_reserved, align 1
  %add.ptr = getelementptr %struct.sadb_address, ptr %call264, i32 1
  %136 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %family, align 2
  %138 = zext i16 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %137, label %do.body286 [
    i16 2, label %sw.bb.i704
    i16 10, label %sw.bb1.i
  ]

sw.bb.i704:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #17
  %139 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 2, ptr %add.ptr, align 4
  %sin_port.i = getelementptr %struct.sadb_address, ptr %call264, i32 1, i32 1
  %140 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %sin_port.i, align 2
  %141 = ptrtoint ptr %saddr17 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %saddr17, align 4
  %sin_addr.i = getelementptr %struct.sadb_address, ptr %call264, i32 1, i32 2
  %143 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %sin_addr.i, align 4
  %__pad.i = getelementptr %struct.sadb_address, ptr %call264, i32 2
  %144 = ptrtoint ptr %__pad.i to i32
  call void @__asan_storeN_noabort(i32 %144, i32 8)
  store i64 0, ptr %__pad.i, align 4
  br label %do.end294

sw.bb1.i:                                         ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #17
  %145 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 10, ptr %add.ptr, align 4
  %sin6_port.i = getelementptr %struct.sadb_address, ptr %call264, i32 1, i32 1
  %146 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %sin6_port.i, align 2
  %sin6_flowinfo.i = getelementptr %struct.sadb_address, ptr %call264, i32 1, i32 2
  %147 = ptrtoint ptr %sin6_flowinfo.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %sin6_flowinfo.i, align 4
  %sin6_addr.i = getelementptr %struct.sadb_address, ptr %call264, i32 2
  %148 = call ptr @memcpy(ptr %sin6_addr.i, ptr %saddr17, i32 16)
  %sin6_scope_id.i = getelementptr %struct.sadb_address, ptr %call264, i32 4
  %149 = ptrtoint ptr %sin6_scope_id.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %sin6_scope_id.i, align 4
  br label %do.end294

do.body286:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_address_prefixlen = getelementptr inbounds %struct.sadb_address, ptr %call264, i32 0, i32 3
  %150 = ptrtoint ptr %sadb_address_prefixlen to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %sadb_address_prefixlen, align 1
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/key/af_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 927, 0\0A.popsection", ""() #15, !srcloc !114
  unreachable

do.end294:                                        ; preds = %sw.bb1.i, %sw.bb.i704
  %retval.0.i705.ph = phi i8 [ 32, %sw.bb.i704 ], [ -128, %sw.bb1.i ]
  %sadb_address_prefixlen753 = getelementptr inbounds %struct.sadb_address, ptr %call264, i32 0, i32 3
  %151 = ptrtoint ptr %sadb_address_prefixlen753 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %retval.0.i705.ph, ptr %sadb_address_prefixlen753, align 1
  %call296 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add22) #15
  %152 = ptrtoint ptr %call296 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 2)
  store i16 %conv267, ptr %call296, align 1
  %sadb_address_exttype301 = getelementptr inbounds %struct.sadb_address, ptr %call296, i32 0, i32 1
  %153 = ptrtoint ptr %sadb_address_exttype301 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 6, ptr %sadb_address_exttype301, align 1
  %sadb_address_proto302 = getelementptr inbounds %struct.sadb_address, ptr %call296, i32 0, i32 2
  %154 = ptrtoint ptr %sadb_address_proto302 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %sadb_address_proto302, align 1
  %sadb_address_reserved303 = getelementptr inbounds %struct.sadb_address, ptr %call296, i32 0, i32 4
  %155 = ptrtoint ptr %sadb_address_reserved303 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 2)
  store i16 0, ptr %sadb_address_reserved303, align 1
  %add.ptr305 = getelementptr %struct.sadb_address, ptr %call296, i32 1
  %156 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %family, align 2
  %158 = zext i16 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %157, label %do.body323 [
    i16 2, label %sw.bb.i709
    i16 10, label %sw.bb1.i714
  ]

sw.bb.i709:                                       ; preds = %do.end294
  call void @__sanitizer_cov_trace_pc() #17
  %159 = ptrtoint ptr %add.ptr305 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 2, ptr %add.ptr305, align 4
  %sin_port.i706 = getelementptr %struct.sadb_address, ptr %call296, i32 1, i32 1
  %160 = ptrtoint ptr %sin_port.i706 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %sin_port.i706, align 2
  %161 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %id, align 4
  %sin_addr.i707 = getelementptr %struct.sadb_address, ptr %call296, i32 1, i32 2
  %163 = ptrtoint ptr %sin_addr.i707 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %sin_addr.i707, align 4
  %__pad.i708 = getelementptr %struct.sadb_address, ptr %call296, i32 2
  %164 = ptrtoint ptr %__pad.i708 to i32
  call void @__asan_storeN_noabort(i32 %164, i32 8)
  store i64 0, ptr %__pad.i708, align 4
  br label %do.end331

sw.bb1.i714:                                      ; preds = %do.end294
  call void @__sanitizer_cov_trace_pc() #17
  %165 = ptrtoint ptr %add.ptr305 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 10, ptr %add.ptr305, align 4
  %sin6_port.i710 = getelementptr %struct.sadb_address, ptr %call296, i32 1, i32 1
  %166 = ptrtoint ptr %sin6_port.i710 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 0, ptr %sin6_port.i710, align 2
  %sin6_flowinfo.i711 = getelementptr %struct.sadb_address, ptr %call296, i32 1, i32 2
  %167 = ptrtoint ptr %sin6_flowinfo.i711 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %sin6_flowinfo.i711, align 4
  %sin6_addr.i712 = getelementptr %struct.sadb_address, ptr %call296, i32 2
  %168 = call ptr @memcpy(ptr %sin6_addr.i712, ptr %id, i32 16)
  %sin6_scope_id.i713 = getelementptr %struct.sadb_address, ptr %call296, i32 4
  %169 = ptrtoint ptr %sin6_scope_id.i713 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %sin6_scope_id.i713, align 4
  br label %do.end331

do.body323:                                       ; preds = %do.end294
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_address_prefixlen310 = getelementptr inbounds %struct.sadb_address, ptr %call296, i32 0, i32 3
  %170 = ptrtoint ptr %sadb_address_prefixlen310 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %sadb_address_prefixlen310, align 1
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/key/af_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 942, 0\0A.popsection", ""() #15, !srcloc !115
  unreachable

do.end331:                                        ; preds = %sw.bb1.i714, %sw.bb.i709
  %retval.0.i715.ph = phi i8 [ 32, %sw.bb.i709 ], [ -128, %sw.bb1.i714 ]
  %sadb_address_prefixlen310757 = getelementptr inbounds %struct.sadb_address, ptr %call296, i32 0, i32 3
  %171 = ptrtoint ptr %sadb_address_prefixlen310757 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %retval.0.i715.ph, ptr %sadb_address_prefixlen310757, align 1
  %172 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %173)
  %cond.i717 = icmp eq i16 %173, 10
  %174 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %saddr, align 4
  %176 = ptrtoint ptr %saddr17 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %saddr17, align 4
  br i1 %cond.i717, label %sw.bb2.i734, label %xfrm_addr_equal.exit736

sw.bb2.i734:                                      ; preds = %do.end331
  %xor.i.i.i720 = xor i32 %177, %175
  %arrayidx4.i.i.i721 = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 1, i32 0, i32 1
  %178 = ptrtoint ptr %arrayidx4.i.i.i721 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx4.i.i.i721, align 4
  %arrayidx6.i.i.i722 = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8, i32 0, i32 1
  %180 = ptrtoint ptr %arrayidx6.i.i.i722 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx6.i.i.i722, align 4
  %xor7.i.i.i723 = xor i32 %181, %179
  %or.i.i.i724 = or i32 %xor7.i.i.i723, %xor.i.i.i720
  %arrayidx9.i.i.i725 = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 1, i32 0, i32 2
  %182 = ptrtoint ptr %arrayidx9.i.i.i725 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx9.i.i.i725, align 4
  %arrayidx11.i.i.i726 = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8, i32 0, i32 2
  %184 = ptrtoint ptr %arrayidx11.i.i.i726 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx11.i.i.i726, align 4
  %xor12.i.i.i727 = xor i32 %185, %183
  %or13.i.i.i728 = or i32 %or.i.i.i724, %xor12.i.i.i727
  %arrayidx15.i.i.i729 = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 1, i32 0, i32 3
  %186 = ptrtoint ptr %arrayidx15.i.i.i729 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx15.i.i.i729, align 4
  %arrayidx17.i.i.i730 = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8, i32 0, i32 3
  %188 = ptrtoint ptr %arrayidx17.i.i.i730 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx17.i.i.i730, align 4
  %xor18.i.i.i731 = xor i32 %189, %187
  %or19.i.i.i732 = or i32 %or13.i.i.i728, %xor18.i.i.i731
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i732)
  %cmp.i.i.i733 = icmp eq i32 %or19.i.i.i732, 0
  br i1 %cmp.i.i.i733, label %sw.bb2.i734.if.end360_crit_edge, label %sw.bb2.i734.if.then339_crit_edge

sw.bb2.i734.if.then339_crit_edge:                 ; preds = %sw.bb2.i734
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then339

sw.bb2.i734.if.end360_crit_edge:                  ; preds = %sw.bb2.i734
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end360

xfrm_addr_equal.exit736:                          ; preds = %do.end331
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %177)
  %cmp.i718 = icmp eq i32 %175, %177
  br i1 %cmp.i718, label %xfrm_addr_equal.exit736.if.end360_crit_edge, label %xfrm_addr_equal.exit736.if.then339_crit_edge

xfrm_addr_equal.exit736.if.then339_crit_edge:     ; preds = %xfrm_addr_equal.exit736
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then339

xfrm_addr_equal.exit736.if.end360_crit_edge:      ; preds = %xfrm_addr_equal.exit736
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end360

if.then339:                                       ; preds = %xfrm_addr_equal.exit736.if.then339_crit_edge, %sw.bb2.i734.if.then339_crit_edge
  %call341 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add22) #15
  %190 = ptrtoint ptr %call341 to i32
  call void @__asan_storeN_noabort(i32 %190, i32 2)
  store i16 %conv267, ptr %call341, align 1
  %sadb_address_exttype346 = getelementptr inbounds %struct.sadb_address, ptr %call341, i32 0, i32 1
  %191 = ptrtoint ptr %sadb_address_exttype346 to i32
  call void @__asan_storeN_noabort(i32 %191, i32 2)
  store i16 7, ptr %sadb_address_exttype346, align 1
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 9
  %192 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %proto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool.not.i = icmp eq i8 %193, 0
  %spec.select.i = select i1 %tobool.not.i, i8 -1, i8 %193
  %sadb_address_proto349 = getelementptr inbounds %struct.sadb_address, ptr %call341, i32 0, i32 2
  %194 = ptrtoint ptr %sadb_address_proto349 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %spec.select.i, ptr %sadb_address_proto349, align 1
  %prefixlen_s = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 8
  %195 = ptrtoint ptr %prefixlen_s to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %prefixlen_s, align 1
  %sadb_address_prefixlen351 = getelementptr inbounds %struct.sadb_address, ptr %call341, i32 0, i32 3
  %197 = ptrtoint ptr %sadb_address_prefixlen351 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %sadb_address_prefixlen351, align 1
  %sadb_address_reserved352 = getelementptr inbounds %struct.sadb_address, ptr %call341, i32 0, i32 4
  %198 = ptrtoint ptr %sadb_address_reserved352 to i32
  call void @__asan_storeN_noabort(i32 %198, i32 2)
  store i16 0, ptr %sadb_address_reserved352, align 1
  %sport = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 4
  %199 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %sport, align 4
  %add.ptr356 = getelementptr %struct.sadb_address, ptr %call341, i32 1
  %201 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %family, align 2
  %203 = zext i16 %202 to i64
  call void @__sanitizer_cov_trace_switch(i64 %203, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %202, label %if.then339.if.end360_crit_edge [
    i16 2, label %sw.bb.i740
    i16 10, label %sw.bb1.i745
  ]

if.then339.if.end360_crit_edge:                   ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end360

sw.bb.i740:                                       ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #17
  %204 = ptrtoint ptr %add.ptr356 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 2, ptr %add.ptr356, align 4
  %sin_port.i737 = getelementptr %struct.sadb_address, ptr %call341, i32 1, i32 1
  %205 = ptrtoint ptr %sin_port.i737 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %200, ptr %sin_port.i737, align 2
  %206 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %saddr, align 4
  %sin_addr.i738 = getelementptr %struct.sadb_address, ptr %call341, i32 1, i32 2
  %208 = ptrtoint ptr %sin_addr.i738 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %sin_addr.i738, align 4
  %__pad.i739 = getelementptr %struct.sadb_address, ptr %call341, i32 2
  %209 = ptrtoint ptr %__pad.i739 to i32
  call void @__asan_storeN_noabort(i32 %209, i32 8)
  store i64 0, ptr %__pad.i739, align 4
  br label %if.end360

sw.bb1.i745:                                      ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #17
  %210 = ptrtoint ptr %add.ptr356 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 10, ptr %add.ptr356, align 4
  %sin6_port.i741 = getelementptr %struct.sadb_address, ptr %call341, i32 1, i32 1
  %211 = ptrtoint ptr %sin6_port.i741 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %200, ptr %sin6_port.i741, align 2
  %sin6_flowinfo.i742 = getelementptr %struct.sadb_address, ptr %call341, i32 1, i32 2
  %212 = ptrtoint ptr %sin6_flowinfo.i742 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %sin6_flowinfo.i742, align 4
  %sin6_addr.i743 = getelementptr %struct.sadb_address, ptr %call341, i32 2
  %213 = call ptr @memcpy(ptr %sin6_addr.i743, ptr %saddr, i32 16)
  %sin6_scope_id.i744 = getelementptr %struct.sadb_address, ptr %call341, i32 4
  %214 = ptrtoint ptr %sin6_scope_id.i744 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %sin6_scope_id.i744, align 4
  br label %if.end360

if.end360:                                        ; preds = %sw.bb1.i745, %sw.bb.i740, %if.then339.if.end360_crit_edge, %xfrm_addr_equal.exit736.if.end360_crit_edge, %sw.bb2.i734.if.end360_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %auth_key_size.1)
  %tobool363.not = icmp eq i32 %auth_key_size.1, 0
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool363.not
  br i1 %or.cond, label %if.end360.if.end380_crit_edge, label %if.then364

if.end360.if.end380_crit_edge:                    ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end380

if.then364:                                       ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #17
  %add365 = add nsw i32 %auth_key_size.1, 8
  %call366 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add365) #15
  %div368695 = lshr i32 %add365, 3
  %conv369 = trunc i32 %div368695 to i16
  %215 = ptrtoint ptr %call366 to i32
  call void @__asan_storeN_noabort(i32 %215, i32 2)
  store i16 %conv369, ptr %call366, align 1
  %sadb_key_exttype = getelementptr inbounds %struct.sadb_key, ptr %call366, i32 0, i32 1
  %216 = ptrtoint ptr %sadb_key_exttype to i32
  call void @__asan_storeN_noabort(i32 %216, i32 2)
  store i16 8, ptr %sadb_key_exttype, align 1
  %217 = ptrtoint ptr %aalg90 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %aalg90, align 8
  %alg_key_len371 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %alg_key_len371 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %alg_key_len371, align 4
  %conv372 = trunc i32 %220 to i16
  %sadb_key_bits = getelementptr inbounds %struct.sadb_key, ptr %call366, i32 0, i32 2
  %221 = ptrtoint ptr %sadb_key_bits to i32
  call void @__asan_storeN_noabort(i32 %221, i32 2)
  store i16 %conv372, ptr %sadb_key_bits, align 1
  %sadb_key_reserved = getelementptr inbounds %struct.sadb_key, ptr %call366, i32 0, i32 3
  %222 = ptrtoint ptr %sadb_key_reserved to i32
  call void @__asan_storeN_noabort(i32 %222, i32 2)
  store i16 0, ptr %sadb_key_reserved, align 1
  %add.ptr373 = getelementptr %struct.sadb_key, ptr %call366, i32 1
  %223 = load ptr, ptr %aalg90, align 8
  %alg_key = getelementptr inbounds %struct.xfrm_algo_auth, ptr %223, i32 0, i32 3
  %alg_key_len377 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %alg_key_len377 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %alg_key_len377, align 4
  %add378 = add i32 %225, 7
  %div379696 = lshr i32 %add378, 3
  %226 = call ptr @memcpy(ptr %add.ptr373, ptr %alg_key, i32 %div379696)
  br label %if.end380

if.end380:                                        ; preds = %if.then364, %if.end360.if.end380_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encrypt_key_size.0)
  %tobool383.not = icmp eq i32 %encrypt_key_size.0, 0
  %or.cond703 = select i1 %tobool25.not, i1 true, i1 %tobool383.not
  br i1 %or.cond703, label %if.end380.if.end405_crit_edge, label %if.then384

if.end380.if.end405_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end405

if.then384:                                       ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #17
  %add385 = add nsw i32 %encrypt_key_size.0, 8
  %call386 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add385) #15
  %div388693 = lshr i32 %add385, 3
  %conv389 = trunc i32 %div388693 to i16
  %227 = ptrtoint ptr %call386 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 2)
  store i16 %conv389, ptr %call386, align 1
  %sadb_key_exttype391 = getelementptr inbounds %struct.sadb_key, ptr %call386, i32 0, i32 1
  %228 = ptrtoint ptr %sadb_key_exttype391 to i32
  call void @__asan_storeN_noabort(i32 %228, i32 2)
  store i16 9, ptr %sadb_key_exttype391, align 1
  %229 = ptrtoint ptr %ealg104 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ealg104, align 4
  %alg_key_len393 = getelementptr inbounds %struct.xfrm_algo, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %alg_key_len393 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %alg_key_len393, align 4
  %conv394 = trunc i32 %232 to i16
  %sadb_key_bits395 = getelementptr inbounds %struct.sadb_key, ptr %call386, i32 0, i32 2
  %233 = ptrtoint ptr %sadb_key_bits395 to i32
  call void @__asan_storeN_noabort(i32 %233, i32 2)
  store i16 %conv394, ptr %sadb_key_bits395, align 1
  %sadb_key_reserved396 = getelementptr inbounds %struct.sadb_key, ptr %call386, i32 0, i32 3
  %234 = ptrtoint ptr %sadb_key_reserved396 to i32
  call void @__asan_storeN_noabort(i32 %234, i32 2)
  store i16 0, ptr %sadb_key_reserved396, align 1
  %add.ptr397 = getelementptr %struct.sadb_key, ptr %call386, i32 1
  %235 = load ptr, ptr %ealg104, align 4
  %alg_key399 = getelementptr inbounds %struct.xfrm_algo, ptr %235, i32 0, i32 2
  %alg_key_len402 = getelementptr inbounds %struct.xfrm_algo, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %alg_key_len402 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %alg_key_len402, align 4
  %add403 = add i32 %237, 7
  %div404694 = lshr i32 %add403, 3
  %238 = call ptr @memcpy(ptr %add.ptr397, ptr %alg_key399, i32 %div404694)
  br label %if.end405

if.end405:                                        ; preds = %if.then384, %if.end380.if.end405_crit_edge
  %call406 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #15
  %239 = ptrtoint ptr %call406 to i32
  call void @__asan_storeN_noabort(i32 %239, i32 2)
  store i16 2, ptr %call406, align 1
  %sadb_x_sa2_exttype = getelementptr inbounds %struct.sadb_x_sa2, ptr %call406, i32 0, i32 1
  %240 = ptrtoint ptr %sadb_x_sa2_exttype to i32
  call void @__asan_storeN_noabort(i32 %240, i32 2)
  store i16 19, ptr %sadb_x_sa2_exttype, align 1
  %mode408 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %241 = ptrtoint ptr %mode408 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %mode408, align 4
  %243 = zext i8 %242 to i64
  call void @__sanitizer_cov_trace_switch(i64 %243, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %242, label %if.then413 [
    i8 0, label %if.end405.if.end415_crit_edge
    i8 1, label %sw.bb1.i748
    i8 4, label %sw.bb2.i749
  ]

if.end405.if.end415_crit_edge:                    ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end415

sw.bb1.i748:                                      ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end415

sw.bb2.i749:                                      ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end415

if.then413:                                       ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #15
  br label %cleanup

if.end415:                                        ; preds = %sw.bb2.i749, %sw.bb1.i748, %if.end405.if.end415_crit_edge
  %retval.0.i750.ph = phi i8 [ 1, %if.end405.if.end415_crit_edge ], [ 2, %sw.bb1.i748 ], [ 3, %sw.bb2.i749 ]
  %sadb_x_sa2_mode = getelementptr inbounds %struct.sadb_x_sa2, ptr %call406, i32 0, i32 2
  %244 = ptrtoint ptr %sadb_x_sa2_mode to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %retval.0.i750.ph, ptr %sadb_x_sa2_mode, align 1
  %sadb_x_sa2_reserved1 = getelementptr inbounds %struct.sadb_x_sa2, ptr %call406, i32 0, i32 3
  %245 = ptrtoint ptr %sadb_x_sa2_reserved1 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 0, ptr %sadb_x_sa2_reserved1, align 1
  %sadb_x_sa2_reserved2 = getelementptr inbounds %struct.sadb_x_sa2, ptr %call406, i32 0, i32 4
  %246 = ptrtoint ptr %sadb_x_sa2_reserved2 to i32
  call void @__asan_storeN_noabort(i32 %246, i32 2)
  store i16 0, ptr %sadb_x_sa2_reserved2, align 1
  %sadb_x_sa2_sequence = getelementptr inbounds %struct.sadb_x_sa2, ptr %call406, i32 0, i32 5
  %247 = ptrtoint ptr %sadb_x_sa2_sequence to i32
  call void @__asan_storeN_noabort(i32 %247, i32 4)
  store i32 0, ptr %sadb_x_sa2_sequence, align 1
  %248 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %props, align 4
  %sadb_x_sa2_reqid = getelementptr inbounds %struct.sadb_x_sa2, ptr %call406, i32 0, i32 6
  %250 = ptrtoint ptr %sadb_x_sa2_reqid to i32
  call void @__asan_storeN_noabort(i32 %250, i32 4)
  store i32 %249, ptr %sadb_x_sa2_reqid, align 1
  br i1 %tobool57.not, label %if.end415.if.end437_crit_edge, label %land.lhs.true419

if.end415.if.end437_crit_edge:                    ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end437

land.lhs.true419:                                 ; preds = %if.end415
  %251 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %252)
  %tobool422.not = icmp eq i16 %252, 0
  br i1 %tobool422.not, label %land.lhs.true419.if.end437_crit_edge, label %if.then423

land.lhs.true419.if.end437_crit_edge:             ; preds = %land.lhs.true419
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end437

if.then423:                                       ; preds = %land.lhs.true419
  call void @__sanitizer_cov_trace_pc() #17
  %call424 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #15
  %253 = ptrtoint ptr %call424 to i32
  call void @__asan_storeN_noabort(i32 %253, i32 2)
  store i16 1, ptr %call424, align 1
  %sadb_x_nat_t_type_exttype = getelementptr inbounds %struct.sadb_x_nat_t_type, ptr %call424, i32 0, i32 1
  %254 = ptrtoint ptr %sadb_x_nat_t_type_exttype to i32
  call void @__asan_storeN_noabort(i32 %254, i32 2)
  store i16 20, ptr %sadb_x_nat_t_type_exttype, align 1
  %255 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %33, align 4
  %conv426 = trunc i16 %256 to i8
  %sadb_x_nat_t_type_type = getelementptr inbounds %struct.sadb_x_nat_t_type, ptr %call424, i32 0, i32 2
  %257 = ptrtoint ptr %sadb_x_nat_t_type_type to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv426, ptr %sadb_x_nat_t_type_type, align 1
  %sadb_x_nat_t_type_reserved = getelementptr inbounds %struct.sadb_x_nat_t_type, ptr %call424, i32 0, i32 3
  %258 = ptrtoint ptr %sadb_x_nat_t_type_reserved to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 0, ptr %sadb_x_nat_t_type_reserved, align 1
  %arrayidx428 = getelementptr %struct.sadb_x_nat_t_type, ptr %call424, i32 0, i32 3, i32 1
  %259 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 0, ptr %arrayidx428, align 1
  %arrayidx430 = getelementptr %struct.sadb_x_nat_t_type, ptr %call424, i32 0, i32 3, i32 2
  %260 = ptrtoint ptr %arrayidx430 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %arrayidx430, align 1
  %call431 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #15
  %261 = ptrtoint ptr %call431 to i32
  call void @__asan_storeN_noabort(i32 %261, i32 2)
  store i16 1, ptr %call431, align 1
  %sadb_x_nat_t_port_exttype = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %call431, i32 0, i32 1
  %262 = ptrtoint ptr %sadb_x_nat_t_port_exttype to i32
  call void @__asan_storeN_noabort(i32 %262, i32 2)
  store i16 21, ptr %sadb_x_nat_t_port_exttype, align 1
  %encap_sport = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %33, i32 0, i32 1
  %263 = ptrtoint ptr %encap_sport to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %encap_sport, align 2
  %sadb_x_nat_t_port_port = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %call431, i32 0, i32 2
  %265 = ptrtoint ptr %sadb_x_nat_t_port_port to i32
  call void @__asan_storeN_noabort(i32 %265, i32 2)
  store i16 %264, ptr %sadb_x_nat_t_port_port, align 1
  %sadb_x_nat_t_port_reserved = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %call431, i32 0, i32 3
  %266 = ptrtoint ptr %sadb_x_nat_t_port_reserved to i32
  call void @__asan_storeN_noabort(i32 %266, i32 2)
  store i16 0, ptr %sadb_x_nat_t_port_reserved, align 1
  %call432 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #15
  %267 = ptrtoint ptr %call432 to i32
  call void @__asan_storeN_noabort(i32 %267, i32 2)
  store i16 1, ptr %call432, align 1
  %sadb_x_nat_t_port_exttype434 = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %call432, i32 0, i32 1
  %268 = ptrtoint ptr %sadb_x_nat_t_port_exttype434 to i32
  call void @__asan_storeN_noabort(i32 %268, i32 2)
  store i16 22, ptr %sadb_x_nat_t_port_exttype434, align 1
  %encap_dport = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %33, i32 0, i32 2
  %269 = ptrtoint ptr %encap_dport to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %encap_dport, align 4
  %sadb_x_nat_t_port_port435 = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %call432, i32 0, i32 2
  %271 = ptrtoint ptr %sadb_x_nat_t_port_port435 to i32
  call void @__asan_storeN_noabort(i32 %271, i32 2)
  store i16 %270, ptr %sadb_x_nat_t_port_port435, align 1
  %sadb_x_nat_t_port_reserved436 = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %call432, i32 0, i32 3
  %272 = ptrtoint ptr %sadb_x_nat_t_port_reserved436 to i32
  call void @__asan_storeN_noabort(i32 %272, i32 2)
  store i16 0, ptr %sadb_x_nat_t_port_reserved436, align 1
  br label %if.end437

if.end437:                                        ; preds = %if.then423, %land.lhs.true419.if.end437_crit_edge, %if.end415.if.end437_crit_edge
  br i1 %tobool10.not, label %if.end437.cleanup_crit_edge, label %if.then439

if.end437.cleanup_crit_edge:                      ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then439:                                       ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #17
  %call441 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %ctx_size.0) #15
  %div443692 = lshr i32 %ctx_size.0, 3
  %conv444 = trunc i32 %div443692 to i16
  %273 = ptrtoint ptr %call441 to i32
  call void @__asan_storeN_noabort(i32 %273, i32 2)
  store i16 %conv444, ptr %call441, align 1
  %sadb_x_sec_exttype = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %call441, i32 0, i32 1
  %274 = ptrtoint ptr %sadb_x_sec_exttype to i32
  call void @__asan_storeN_noabort(i32 %274, i32 2)
  store i16 24, ptr %sadb_x_sec_exttype, align 1
  %275 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %5, align 4
  %sadb_x_ctx_doi = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %call441, i32 0, i32 3
  %277 = ptrtoint ptr %sadb_x_ctx_doi to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %276, ptr %sadb_x_ctx_doi, align 1
  %ctx_alg = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %5, i32 0, i32 1
  %278 = ptrtoint ptr %ctx_alg to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %ctx_alg, align 1
  %sadb_x_ctx_alg = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %call441, i32 0, i32 2
  %280 = ptrtoint ptr %sadb_x_ctx_alg to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %sadb_x_ctx_alg, align 1
  %ctx_len445 = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %5, i32 0, i32 2
  %281 = ptrtoint ptr %ctx_len445 to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %ctx_len445, align 2
  %sadb_x_ctx_len = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %call441, i32 0, i32 4
  %283 = ptrtoint ptr %sadb_x_ctx_len to i32
  call void @__asan_storeN_noabort(i32 %283, i32 2)
  store i16 %282, ptr %sadb_x_ctx_len, align 1
  %add.ptr446 = getelementptr %struct.sadb_x_sec_ctx, ptr %call441, i32 1
  %ctx_str = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %5, i32 0, i32 4
  %284 = load i16, ptr %ctx_len445, align 2
  %conv449 = zext i16 %284 to i32
  %285 = call ptr @memcpy(ptr %add.ptr446, ptr %ctx_str, i32 %conv449)
  br label %cleanup

cleanup:                                          ; preds = %if.then439, %if.end437.cleanup_crit_edge, %if.then413, %if.end69.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then413 ], [ %call.i, %if.then439 ], [ %call.i, %if.end437.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -105 to ptr), %if.end69.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_aalg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_ealg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_calg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pfkey_broadcast_one(ptr noundef %skb, i32 noundef %allocation, ptr noundef %sk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #15
  %0 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_backlog, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %2 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp sgt i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef %allocation) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %5(ptr noundef nonnull %call1) #15
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %if.then2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool3.not.i.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !112

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #15, !srcloc !116
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i
  %9 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sk, ptr %9, align 4
  %11 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sock_rfree, ptr %destructor.i.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 20
  %12 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %truesize.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %13, ptr elementtype(i32) %sk_backlog) #15, !srcloc !117
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %15 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.i.not.i.i, label %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge, label %if.end.i.i

skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge: ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_set_owner_r.exit

if.end.i.i:                                       ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %truesize.i, align 8
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %21 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sk_forward_alloc.i.i, align 8
  %sub.i.i = sub i32 %22, %20
  store i32 %sub.i.i, ptr %sk_forward_alloc.i.i, align 8
  br label %skb_set_owner_r.exit

skb_set_owner_r.exit:                             ; preds = %if.end.i.i, %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef nonnull %call1) #15
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %23 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk_data_ready, align 8
  tail call void %24(ptr noundef %sk) #15
  br label %cleanup

cleanup:                                          ; preds = %skb_set_owner_r.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %entry.cleanup_crit_edge ], [ 0, %skb_set_owner_r.exit ], [ -105, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_aalg_get_byidx(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_ealg_get_byidx(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_policy_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_ipsecrequests(ptr nocapture noundef %xp, ptr nocapture noundef readonly %pol) unnamed_addr #2 align 64 {
entry:
  %walk.i = alloca %struct.xfrm_policy_walk, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pol to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %pol, align 1
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %sub = add nsw i32 %mul, -16
  %add.ptr = getelementptr %struct.sadb_x_policy, ptr %pol, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp ult i16 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub)
  %cmp544 = icmp ugt i32 %sub, 15
  br i1 %cmp544, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %xfrm_vec.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 24
  %xfrm_nr.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 21
  %family.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 22
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.body.lr.ph
  %rq.046 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr25, %if.end19.while.body_crit_edge ]
  %len.045 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub22, %if.end19.while.body_crit_edge ]
  %2 = ptrtoint ptr %rq.046 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %rq.046, align 1
  %conv7 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.045, i32 %conv7)
  %cmp8 = icmp slt i32 %len.045, %conv7
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %3)
  %cmp12 = icmp ult i16 %3, 16
  %or.cond = or i1 %cmp12, %cmp8
  br i1 %or.cond, label %while.body.cleanup_crit_edge, label %if.end15

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %while.body
  %4 = ptrtoint ptr %xp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xp, align 4
  %6 = ptrtoint ptr %xfrm_nr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %xfrm_nr.i, align 4
  %conv.i = zext i8 %7 to i32
  %add.ptr.i = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec.i, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp.i = icmp ugt i8 %7, 5
  br i1 %cmp.i, label %if.end15.cleanup_crit_edge, label %if.end.i

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %sadb_x_ipsecrequest_mode.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %rq.046, i32 0, i32 2
  %8 = ptrtoint ptr %sadb_x_ipsecrequest_mode.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sadb_x_ipsecrequest_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp5.i = icmp eq i8 %9, 0
  br i1 %cmp5.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %sadb_x_ipsecrequest_proto.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %rq.046, i32 0, i32 1
  %10 = ptrtoint ptr %sadb_x_ipsecrequest_proto.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %sadb_x_ipsecrequest_proto.i, align 1
  %conv9.i = trunc i16 %11 to i8
  %12 = zext i8 %conv9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %conv9.i, label %if.end8.i.cleanup_crit_edge [
    i8 51, label %if.end8.i.if.end12.i_crit_edge
    i8 50, label %if.end8.i.if.end12.i_crit_edge65
    i8 108, label %if.end8.i.if.end12.i_crit_edge66
    i8 43, label %if.end8.i.if.end12.i_crit_edge67
    i8 60, label %if.end8.i.if.end12.i_crit_edge68
  ]

if.end8.i.if.end12.i_crit_edge68:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.end8.i.if.end12.i_crit_edge67:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.end8.i.if.end12.i_crit_edge66:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.end8.i.if.end12.i_crit_edge65:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12.i:                                       ; preds = %if.end8.i.if.end12.i_crit_edge, %if.end8.i.if.end12.i_crit_edge65, %if.end8.i.if.end12.i_crit_edge66, %if.end8.i.if.end12.i_crit_edge67, %if.end8.i.if.end12.i_crit_edge68
  %proto.i = getelementptr inbounds %struct.xfrm_id, ptr %add.ptr.i, i32 0, i32 2
  %13 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9.i, ptr %proto.i, align 4
  %14 = ptrtoint ptr %sadb_x_ipsecrequest_mode.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sadb_x_ipsecrequest_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %16 = icmp ult i8 %15, 4
  br i1 %16, label %switch.lookup, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.lookup:                                    ; preds = %if.end12.i
  %switch.cast = zext i8 %15 to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 67174400, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %mode23.i = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec.i, i32 %conv.i, i32 4
  %17 = ptrtoint ptr %mode23.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %switch.masked, ptr %mode23.i, align 4
  %sadb_x_ipsecrequest_level.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %rq.046, i32 0, i32 3
  %18 = ptrtoint ptr %sadb_x_ipsecrequest_level.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sadb_x_ipsecrequest_level.i, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %19, label %switch.lookup.if.end46.i_crit_edge [
    i8 1, label %if.then27.i
    i8 3, label %if.then32.i
  ]

switch.lookup.if.end46.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46.i

if.then27.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  %optional.i = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec.i, i32 %conv.i, i32 6
  %21 = ptrtoint ptr %optional.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %optional.i, align 2
  br label %if.end46thread-pre-split.i

if.then32.i:                                      ; preds = %switch.lookup
  %sadb_x_ipsecrequest_reqid.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %rq.046, i32 0, i32 5
  %22 = ptrtoint ptr %sadb_x_ipsecrequest_reqid.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %sadb_x_ipsecrequest_reqid.i, align 1
  %reqid.i = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec.i, i32 %conv.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %23)
  %cmp34.i = icmp ugt i32 %23, 16383
  %spec.select.i = select i1 %cmp34.i, i32 0, i32 %23
  %24 = ptrtoint ptr %reqid.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select.i, ptr %reqid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then32.i.if.end46thread-pre-split.i_crit_edge

if.then32.i.if.end46thread-pre-split.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46thread-pre-split.i

land.lhs.true.i:                                  ; preds = %if.then32.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %walk.i) #15
  %25 = call ptr @memset(ptr %walk.i, i32 255, i32 20)
  %26 = load i32, ptr @gen_reqid.reqid, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %land.lhs.true.i
  %27 = load i32, ptr @gen_reqid.reqid, align 4
  %inc.i37 = add i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i37)
  %cmp.i38 = icmp eq i32 %inc.i37, 0
  %spec.store.select.i = select i1 %cmp.i38, i32 16384, i32 %inc.i37
  store i32 %spec.store.select.i, ptr @gen_reqid.reqid, align 4
  call void @xfrm_policy_walk_init(ptr noundef nonnull %walk.i, i8 noundef zeroext 0) #15
  %call.i = call i32 @xfrm_policy_walk(ptr noundef %5, ptr noundef nonnull %walk.i, ptr noundef nonnull @check_reqid, ptr noundef nonnull @gen_reqid.reqid) #15
  call void @xfrm_policy_walk_done(ptr noundef nonnull %walk.i, ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, -17
  %28 = load i32, ptr @gen_reqid.reqid, align 4
  br i1 %cmp1.not.i, label %do.cond.i, label %gen_reqid.exit

do.cond.i:                                        ; preds = %do.body.i
  %cmp4.not.i = icmp eq i32 %28, %26
  br i1 %cmp4.not.i, label %gen_reqid.exit.thread, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

gen_reqid.exit.thread:                            ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %walk.i) #15
  %29 = ptrtoint ptr %reqid.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %reqid.i, align 4
  br label %cleanup

gen_reqid.exit:                                   ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %walk.i) #15
  %30 = ptrtoint ptr %reqid.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %reqid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool42.not.i = icmp eq i32 %28, 0
  br i1 %tobool42.not.i, label %gen_reqid.exit.cleanup_crit_edge, label %gen_reqid.exit.if.end46thread-pre-split.i_crit_edge

gen_reqid.exit.if.end46thread-pre-split.i_crit_edge: ; preds = %gen_reqid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46thread-pre-split.i

gen_reqid.exit.cleanup_crit_edge:                 ; preds = %gen_reqid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end46thread-pre-split.i:                       ; preds = %gen_reqid.exit.if.end46thread-pre-split.i_crit_edge, %if.then32.i.if.end46thread-pre-split.i_crit_edge, %if.then27.i
  %31 = ptrtoint ptr %mode23.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %.pr.i = load i8, ptr %mode23.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end46thread-pre-split.i, %switch.lookup.if.end46.i_crit_edge
  %32 = phi i8 [ %.pr.i, %if.end46thread-pre-split.i ], [ %switch.masked, %switch.lookup.if.end46.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp49.i = icmp eq i8 %32, 1
  br i1 %cmp49.i, label %if.then51.i, label %if.else59.i

if.then51.i:                                      ; preds = %if.end46.i
  %add.ptr52.i = getelementptr %struct.sadb_x_ipsecrequest, ptr %rq.046, i32 1
  %33 = ptrtoint ptr %rq.046 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %rq.046, align 1
  %saddr.i = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec.i, i32 %conv.i, i32 1
  %encap_family.i = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec.i, i32 %conv.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %34)
  %cmp.i.i = icmp ult i16 %34, 18
  br i1 %cmp.i.i, label %if.then51.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.then51.i.cleanup_crit_edge:                    ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.then51.i
  %conv53.i = zext i16 %34 to i32
  %sub.i = add nsw i32 %conv53.i, -16
  %35 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr52.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %36)
  %switch.selectcmp.i.i.i.i = icmp eq i16 %36, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %36)
  %switch.selectcmp2.i.i.i.i = icmp eq i16 %36, 2
  %switch.select.i.op.op.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i32 56, i32 0
  %add.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, i32 32, i32 %switch.select.i.op.op.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %sub.i)
  %cmp1.i.i = icmp ugt i32 %add.i.i.i, %sub.i
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %36, label %if.end.i.i.cleanup_crit_edge [
    i16 2, label %sw.bb.i.i.i
    i16 10, label %sw.bb1.i.i.i
  ]

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i.i = getelementptr %struct.sadb_x_ipsecrequest, ptr %rq.046, i32 1, i32 2
  %38 = ptrtoint ptr %sin_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sin_addr.i.i.i, align 4
  %40 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %saddr.i, align 4
  br label %if.end4.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i.i = getelementptr %struct.sadb_x_ipsecrequest, ptr %rq.046, i32 1, i32 5
  %41 = call ptr @memcpy(ptr %saddr.i, ptr %sin6_addr.i.i.i, i32 16)
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %sw.bb1.i.i.i, %sw.bb.i.i.i
  %retval.0.i.ph.i.i = phi i32 [ 2, %sw.bb.i.i.i ], [ 10, %sw.bb1.i.i.i ]
  %conv.i.i = trunc i32 %retval.0.i.ph.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %conv.i.i)
  %switch.selectcmp.i.i.i = icmp eq i16 %conv.i.i, 10
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv.i.i)
  %switch.selectcmp2.i.i.i = icmp eq i16 %conv.i.i, 2
  %switch.select3.i.i.i = select i1 %switch.selectcmp2.i.i.i, i32 16, i32 %switch.select.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr52.i, i32 %switch.select3.i.i.i
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i.i, align 2
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %43, label %if.end4.i.i.cleanup_crit_edge [
    i16 2, label %sw.bb.i20.i.i
    i16 10, label %sw.bb1.i22.i.i
  ]

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i20.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i19.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %sin_addr.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sin_addr.i19.i.i, align 4
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %add.ptr.i, align 4
  br label %pfkey_sockaddr_extract.exit24.i.i

sw.bb1.i22.i.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i21.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr.i.i, i32 0, i32 3
  %48 = call ptr @memcpy(ptr %add.ptr.i, ptr %sin6_addr.i21.i.i, i32 16)
  br label %pfkey_sockaddr_extract.exit24.i.i

pfkey_sockaddr_extract.exit24.i.i:                ; preds = %sw.bb1.i22.i.i, %sw.bb.i20.i.i
  %retval.0.i23.i.i = phi i32 [ 10, %sw.bb1.i22.i.i ], [ 2, %sw.bb.i20.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i23.i.i, i32 %retval.0.i.ph.i.i)
  %cmp7.not.i.i = icmp eq i32 %retval.0.i23.i.i, %retval.0.i.ph.i.i
  br i1 %cmp7.not.i.i, label %parse_sockaddr_pair.exit.i, label %pfkey_sockaddr_extract.exit24.i.i.cleanup_crit_edge

pfkey_sockaddr_extract.exit24.i.i.cleanup_crit_edge: ; preds = %pfkey_sockaddr_extract.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

parse_sockaddr_pair.exit.i:                       ; preds = %pfkey_sockaddr_extract.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %encap_family.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i.i, ptr %encap_family.i, align 2
  br label %if.end19

if.else59.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %family.i, align 2
  %encap_family60.i = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec.i, i32 %conv.i, i32 2
  %52 = ptrtoint ptr %encap_family60.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %encap_family60.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else59.i, %parse_sockaddr_pair.exit.i
  %allalgs.i = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec.i, i32 %conv.i, i32 7
  %53 = ptrtoint ptr %allalgs.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %allalgs.i, align 1
  %54 = ptrtoint ptr %xfrm_nr.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %xfrm_nr.i, align 4
  %inc.i = add i8 %55, 1
  store i8 %inc.i, ptr %xfrm_nr.i, align 4
  %56 = ptrtoint ptr %rq.046 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %rq.046, align 1
  %conv21 = zext i16 %57 to i32
  %sub22 = sub i32 %len.045, %conv21
  %add.ptr25 = getelementptr i8, ptr %rq.046, i32 %conv21
  %cmp5 = icmp ugt i32 %sub22, 15
  br i1 %cmp5, label %if.end19.while.body_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %pfkey_sockaddr_extract.exit24.i.i.cleanup_crit_edge, %if.end4.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.then51.i.cleanup_crit_edge, %gen_reqid.exit.cleanup_crit_edge, %gen_reqid.exit.thread, %if.end12.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -105, %gen_reqid.exit.thread ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ -40, %if.end15.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -105, %gen_reqid.exit.cleanup_crit_edge ], [ -22, %if.end8.i.cleanup_crit_edge ], [ -22, %if.end12.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -22, %if.then51.i.cleanup_crit_edge ], [ -22, %pfkey_sockaddr_extract.exit24.i.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.end4.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pfkey_sadb2xfrm_user_sec_ctx(ptr nocapture noundef readonly %sec_ctx, i32 noundef %gfp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_x_ctx_len = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %sec_ctx, i32 0, i32 4
  %0 = ptrtoint ptr %sadb_x_ctx_len to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %sadb_x_ctx_len, align 1
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %gfp) #19
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %sadb_x_ctx_len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %sadb_x_ctx_len, align 1
  %conv.i = zext i16 %3 to i32
  %sub.i = add nuw nsw i32 %conv.i, 15
  %div2.i = lshr i32 %sub.i, 3
  %conv2 = trunc i32 %div2.i to i16
  %4 = ptrtoint ptr %call9.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv2, ptr %call9.i, align 128
  %sadb_x_sec_exttype = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %sec_ctx, i32 0, i32 1
  %5 = ptrtoint ptr %sadb_x_sec_exttype to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %sadb_x_sec_exttype, align 1
  %exttype = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i, i32 0, i32 1
  %7 = ptrtoint ptr %exttype to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %exttype, align 2
  %sadb_x_ctx_doi = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %sec_ctx, i32 0, i32 3
  %8 = ptrtoint ptr %sadb_x_ctx_doi to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sadb_x_ctx_doi, align 1
  %ctx_doi = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i, i32 0, i32 3
  %10 = ptrtoint ptr %ctx_doi to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ctx_doi, align 1
  %sadb_x_ctx_alg = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %sec_ctx, i32 0, i32 2
  %11 = ptrtoint ptr %sadb_x_ctx_alg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sadb_x_ctx_alg, align 1
  %ctx_alg = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i, i32 0, i32 2
  %13 = ptrtoint ptr %ctx_alg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ctx_alg, align 4
  %ctx_len = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i, i32 0, i32 4
  %14 = ptrtoint ptr %ctx_len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %3, ptr %ctx_len, align 2
  %add.ptr = getelementptr %struct.xfrm_user_sec_ctx, ptr %call9.i, i32 1
  %add.ptr4 = getelementptr %struct.sadb_x_sec_ctx, ptr %sec_ctx, i32 1
  %15 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr4, i32 %conv.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call9.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_xfrm_policy_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_walk_init(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_policy_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @check_reqid(ptr nocapture noundef readonly %xp, i32 noundef %dir, i32 noundef %count, ptr nocapture noundef readonly %ptr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptr, align 4
  %xfrm_nr = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 21
  %2 = ptrtoint ptr %xfrm_nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xfrm_nr, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp9.not = icmp eq i8 %3, 0
  br i1 %cmp9.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %reqid2 = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.010, i32 3
  %4 = ptrtoint ptr %reqid2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reqid2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp3 = icmp eq i32 %5, %1
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ -17, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_walk_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pfkey_xfrm_policy2msg(ptr noundef %skb, ptr noundef %xp, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 22
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %switch.selectcmp.i.i = icmp eq i16 %1, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %switch.selectcmp2.i.i = icmp eq i16 %1, 2
  %switch.select.i = select i1 %switch.selectcmp.i.i, i32 28, i32 0
  %switch.select3.i = select i1 %switch.selectcmp2.i.i, i32 16, i32 %switch.select.i
  %xfrm_nr.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 21
  %2 = ptrtoint ptr %xfrm_nr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xfrm_nr.i, align 4
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp20.not.i = icmp eq i8 %3, 0
  br i1 %cmp20.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %xfrm_vec.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %socklen.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i326, %for.body.i.for.body.i_crit_edge ]
  %encap_family.i = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec.i, i32 %i.022.i, i32 2
  %4 = ptrtoint ptr %encap_family.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %encap_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %5)
  %switch.selectcmp.i.i324 = icmp eq i16 %5, 10
  %switch.select.i.i = select i1 %switch.selectcmp.i.i324, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %switch.selectcmp2.i.i325 = icmp eq i16 %5, 2
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i325, i32 16, i32 %switch.select.i.i
  %add.i326 = add i32 %switch.select3.i.i, %socklen.021.i
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %phi.bo.i = shl i32 %add.i326, 1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %entry.for.end.i_crit_edge
  %socklen.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %security.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %for.end.i.pfkey_xfrm_policy2msg_size.exit_crit_edge, label %if.then.i.i

for.end.i.pfkey_xfrm_policy2msg_size.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_xfrm_policy2msg_size.exit

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %ctx_len.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ctx_len.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ctx_len.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %sub.i.i = add nuw nsw i32 %conv.i.i, 7
  %or.i.i = or i32 %sub.i.i, 7
  %add1.i.i = add nuw nsw i32 %or.i.i, 1
  br label %pfkey_xfrm_policy2msg_size.exit

pfkey_xfrm_policy2msg_size.exit:                  ; preds = %if.then.i.i, %for.end.i.pfkey_xfrm_policy2msg_size.exit_crit_edge
  %retval.0.i.i = phi i32 [ %add1.i.i, %if.then.i.i ], [ 0, %for.end.i.pfkey_xfrm_policy2msg_size.exit_crit_edge ]
  %switch.select.i.op.op.op.i.op.i = select i1 %switch.selectcmp.i.i, i32 208, i32 144
  %add4.i = select i1 %switch.selectcmp2.i.i, i32 176, i32 %switch.select.i.op.op.op.i.op.i
  %mul7.i = shl nuw nsw i32 %conv.i, 4
  %add8.i = add nuw nsw i32 %mul7.i, %add4.i
  %add10.i = add i32 %add8.i, %socklen.0.lcssa.i
  %add12.i = add i32 %add10.i, %retval.0.i.i
  %call4 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 16) #15
  %10 = call ptr @memset(ptr %call4, i32 0, i32 %add12.i)
  %switch.select.i.op.op.op.i.op = select i1 %switch.selectcmp.i.i, i32 40, i32 8
  %add = select i1 %switch.selectcmp2.i.i, i32 24, i32 %switch.select.i.op.op.op.i.op
  %call5 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %add) #15
  %div318 = lshr exact i32 %add, 3
  %conv = trunc i32 %div318 to i16
  %11 = ptrtoint ptr %call5 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %conv, ptr %call5, align 1
  %sadb_address_exttype = getelementptr inbounds %struct.sadb_address, ptr %call5, i32 0, i32 1
  %12 = ptrtoint ptr %sadb_address_exttype to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 5, ptr %sadb_address_exttype, align 1
  %proto = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 12, i32 9
  %13 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %proto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %spec.select.i = select i1 %tobool.not.i, i8 -1, i8 %14
  %sadb_address_proto = getelementptr inbounds %struct.sadb_address, ptr %call5, i32 0, i32 2
  %15 = ptrtoint ptr %sadb_address_proto to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select.i, ptr %sadb_address_proto, align 1
  %prefixlen_s = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 12, i32 8
  %16 = ptrtoint ptr %prefixlen_s to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %prefixlen_s, align 1
  %sadb_address_prefixlen = getelementptr inbounds %struct.sadb_address, ptr %call5, i32 0, i32 3
  %18 = ptrtoint ptr %sadb_address_prefixlen to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %sadb_address_prefixlen, align 1
  %sadb_address_reserved = getelementptr inbounds %struct.sadb_address, ptr %call5, i32 0, i32 4
  %19 = ptrtoint ptr %sadb_address_reserved to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 0, ptr %sadb_address_reserved, align 1
  %saddr = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 12, i32 1
  %sport = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 12, i32 4
  %20 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sport, align 4
  %add.ptr = getelementptr %struct.sadb_address, ptr %call5, i32 1
  %22 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %family, align 2
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %23, label %do.body [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %pfkey_xfrm_policy2msg_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %add.ptr, align 4
  %sin_port.i = getelementptr %struct.sadb_address, ptr %call5, i32 1, i32 1
  %26 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %21, ptr %sin_port.i, align 2
  %27 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %saddr, align 4
  %sin_addr.i = getelementptr %struct.sadb_address, ptr %call5, i32 1, i32 2
  %29 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sin_addr.i, align 4
  %__pad.i = getelementptr %struct.sadb_address, ptr %call5, i32 2
  %30 = ptrtoint ptr %__pad.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 0, ptr %__pad.i, align 4
  br label %if.end

sw.bb1.i:                                         ; preds = %pfkey_xfrm_policy2msg_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 10, ptr %add.ptr, align 4
  %sin6_port.i = getelementptr %struct.sadb_address, ptr %call5, i32 1, i32 1
  %32 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %21, ptr %sin6_port.i, align 2
  %sin6_flowinfo.i = getelementptr %struct.sadb_address, ptr %call5, i32 1, i32 2
  %33 = ptrtoint ptr %sin6_flowinfo.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %sin6_flowinfo.i, align 4
  %sin6_addr.i = getelementptr %struct.sadb_address, ptr %call5, i32 2
  %34 = call ptr @memcpy(ptr %sin6_addr.i, ptr %saddr, i32 16)
  %sin6_scope_id.i = getelementptr %struct.sadb_address, ptr %call5, i32 4
  %35 = ptrtoint ptr %sin6_scope_id.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %sin6_scope_id.i, align 4
  br label %if.end

do.body:                                          ; preds = %pfkey_xfrm_policy2msg_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/key/af_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2090, 0\0A.popsection", ""() #15, !srcloc !118
  unreachable

if.end:                                           ; preds = %sw.bb1.i, %sw.bb.i
  %selector = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 12
  %call17 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %add) #15
  %36 = ptrtoint ptr %call17 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %conv, ptr %call17, align 1
  %sadb_address_exttype22 = getelementptr inbounds %struct.sadb_address, ptr %call17, i32 0, i32 1
  %37 = ptrtoint ptr %sadb_address_exttype22 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 6, ptr %sadb_address_exttype22, align 1
  %38 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %proto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i327 = icmp eq i8 %39, 0
  %spec.select.i328 = select i1 %tobool.not.i327, i8 -1, i8 %39
  %sadb_address_proto26 = getelementptr inbounds %struct.sadb_address, ptr %call17, i32 0, i32 2
  %40 = ptrtoint ptr %sadb_address_proto26 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %spec.select.i328, ptr %sadb_address_proto26, align 1
  %prefixlen_d = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 12, i32 7
  %41 = ptrtoint ptr %prefixlen_d to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %prefixlen_d, align 2
  %sadb_address_prefixlen28 = getelementptr inbounds %struct.sadb_address, ptr %call17, i32 0, i32 3
  %43 = ptrtoint ptr %sadb_address_prefixlen28 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %sadb_address_prefixlen28, align 1
  %sadb_address_reserved29 = getelementptr inbounds %struct.sadb_address, ptr %call17, i32 0, i32 4
  %44 = ptrtoint ptr %sadb_address_reserved29 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 0, ptr %sadb_address_reserved29, align 1
  %dport = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 12, i32 2
  %45 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %dport, align 8
  %add.ptr32 = getelementptr %struct.sadb_address, ptr %call17, i32 1
  %47 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %family, align 2
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %48, label %if.end.pfkey_sockaddr_fill.exit339_crit_edge [
    i16 2, label %sw.bb.i332
    i16 10, label %sw.bb1.i337
  ]

if.end.pfkey_sockaddr_fill.exit339_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_sockaddr_fill.exit339

sw.bb.i332:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2, ptr %add.ptr32, align 4
  %sin_port.i329 = getelementptr %struct.sadb_address, ptr %call17, i32 1, i32 1
  %51 = ptrtoint ptr %sin_port.i329 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %46, ptr %sin_port.i329, align 2
  %52 = ptrtoint ptr %selector to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %selector, align 4
  %sin_addr.i330 = getelementptr %struct.sadb_address, ptr %call17, i32 1, i32 2
  %54 = ptrtoint ptr %sin_addr.i330 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %sin_addr.i330, align 4
  %__pad.i331 = getelementptr %struct.sadb_address, ptr %call17, i32 2
  %55 = ptrtoint ptr %__pad.i331 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 0, ptr %__pad.i331, align 4
  br label %pfkey_sockaddr_fill.exit339

sw.bb1.i337:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 10, ptr %add.ptr32, align 4
  %sin6_port.i333 = getelementptr %struct.sadb_address, ptr %call17, i32 1, i32 1
  %57 = ptrtoint ptr %sin6_port.i333 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %46, ptr %sin6_port.i333, align 2
  %sin6_flowinfo.i334 = getelementptr %struct.sadb_address, ptr %call17, i32 1, i32 2
  %58 = ptrtoint ptr %sin6_flowinfo.i334 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %sin6_flowinfo.i334, align 4
  %sin6_addr.i335 = getelementptr %struct.sadb_address, ptr %call17, i32 2
  %59 = call ptr @memcpy(ptr %sin6_addr.i335, ptr %selector, i32 16)
  %sin6_scope_id.i336 = getelementptr %struct.sadb_address, ptr %call17, i32 4
  %60 = ptrtoint ptr %sin6_scope_id.i336 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %sin6_scope_id.i336, align 4
  br label %pfkey_sockaddr_fill.exit339

pfkey_sockaddr_fill.exit339:                      ; preds = %sw.bb1.i337, %sw.bb.i332, %if.end.pfkey_sockaddr_fill.exit339_crit_edge
  %call35 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 32) #15
  %61 = ptrtoint ptr %call35 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 4, ptr %call35, align 1
  %sadb_lifetime_exttype = getelementptr inbounds %struct.sadb_lifetime, ptr %call35, i32 0, i32 1
  %62 = ptrtoint ptr %sadb_lifetime_exttype to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 3, ptr %sadb_lifetime_exttype, align 1
  %lft = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 13
  %hard_packet_limit = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 13, i32 3
  %63 = ptrtoint ptr %hard_packet_limit to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %hard_packet_limit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %64)
  %cmp = icmp eq i64 %64, -1
  %extract.t = trunc i64 %64 to i32
  %spec.select = select i1 %cmp, i32 0, i32 %extract.t
  %sadb_lifetime_allocations = getelementptr inbounds %struct.sadb_lifetime, ptr %call35, i32 0, i32 2
  %65 = ptrtoint ptr %sadb_lifetime_allocations to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %spec.select, ptr %sadb_lifetime_allocations, align 1
  %hard_byte_limit = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 13, i32 1
  %66 = ptrtoint ptr %hard_byte_limit to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %hard_byte_limit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %67)
  %cmp41 = icmp eq i64 %67, -1
  %cond48 = select i1 %cmp41, i64 0, i64 %67
  %sadb_lifetime_bytes = getelementptr inbounds %struct.sadb_lifetime, ptr %call35, i32 0, i32 3
  %68 = ptrtoint ptr %sadb_lifetime_bytes to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 %cond48, ptr %sadb_lifetime_bytes, align 1
  %hard_add_expires_seconds = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 13, i32 5
  %69 = ptrtoint ptr %hard_add_expires_seconds to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %hard_add_expires_seconds, align 8
  %sadb_lifetime_addtime = getelementptr inbounds %struct.sadb_lifetime, ptr %call35, i32 0, i32 4
  %71 = ptrtoint ptr %sadb_lifetime_addtime to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 %70, ptr %sadb_lifetime_addtime, align 1
  %hard_use_expires_seconds = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 13, i32 7
  %72 = ptrtoint ptr %hard_use_expires_seconds to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %hard_use_expires_seconds, align 8
  %sadb_lifetime_usetime = getelementptr inbounds %struct.sadb_lifetime, ptr %call35, i32 0, i32 5
  %74 = ptrtoint ptr %sadb_lifetime_usetime to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 %73, ptr %sadb_lifetime_usetime, align 1
  %call51 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 32) #15
  %75 = ptrtoint ptr %call51 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 4, ptr %call51, align 1
  %sadb_lifetime_exttype53 = getelementptr inbounds %struct.sadb_lifetime, ptr %call51, i32 0, i32 1
  %76 = ptrtoint ptr %sadb_lifetime_exttype53 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 4, ptr %sadb_lifetime_exttype53, align 1
  %soft_packet_limit = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 13, i32 2
  %77 = ptrtoint ptr %soft_packet_limit to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %soft_packet_limit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %78)
  %cmp55 = icmp eq i64 %78, -1
  %extract.t319 = trunc i64 %78 to i32
  %cond62.off0 = select i1 %cmp55, i32 0, i32 %extract.t319
  %sadb_lifetime_allocations64 = getelementptr inbounds %struct.sadb_lifetime, ptr %call51, i32 0, i32 2
  %79 = ptrtoint ptr %sadb_lifetime_allocations64 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %cond62.off0, ptr %sadb_lifetime_allocations64, align 1
  %80 = ptrtoint ptr %lft to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %lft, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %81)
  %cmp66 = icmp eq i64 %81, -1
  %cond73 = select i1 %cmp66, i64 0, i64 %81
  %sadb_lifetime_bytes74 = getelementptr inbounds %struct.sadb_lifetime, ptr %call51, i32 0, i32 3
  %82 = ptrtoint ptr %sadb_lifetime_bytes74 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 %cond73, ptr %sadb_lifetime_bytes74, align 1
  %soft_add_expires_seconds = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 13, i32 4
  %83 = ptrtoint ptr %soft_add_expires_seconds to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %soft_add_expires_seconds, align 8
  %sadb_lifetime_addtime76 = getelementptr inbounds %struct.sadb_lifetime, ptr %call51, i32 0, i32 4
  %85 = ptrtoint ptr %sadb_lifetime_addtime76 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 %84, ptr %sadb_lifetime_addtime76, align 1
  %soft_use_expires_seconds = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 13, i32 6
  %86 = ptrtoint ptr %soft_use_expires_seconds to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %soft_use_expires_seconds, align 8
  %sadb_lifetime_usetime78 = getelementptr inbounds %struct.sadb_lifetime, ptr %call51, i32 0, i32 5
  %88 = ptrtoint ptr %sadb_lifetime_usetime78 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %87, ptr %sadb_lifetime_usetime78, align 1
  %call79 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 32) #15
  %89 = ptrtoint ptr %call79 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 4, ptr %call79, align 1
  %sadb_lifetime_exttype81 = getelementptr inbounds %struct.sadb_lifetime, ptr %call79, i32 0, i32 1
  %90 = ptrtoint ptr %sadb_lifetime_exttype81 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 2, ptr %sadb_lifetime_exttype81, align 1
  %curlft = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 14
  %packets = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 14, i32 1
  %91 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %packets, align 8
  %conv82 = trunc i64 %92 to i32
  %sadb_lifetime_allocations83 = getelementptr inbounds %struct.sadb_lifetime, ptr %call79, i32 0, i32 2
  %93 = ptrtoint ptr %sadb_lifetime_allocations83 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %conv82, ptr %sadb_lifetime_allocations83, align 1
  %94 = ptrtoint ptr %curlft to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %curlft, align 8
  %sadb_lifetime_bytes85 = getelementptr inbounds %struct.sadb_lifetime, ptr %call79, i32 0, i32 3
  %96 = ptrtoint ptr %sadb_lifetime_bytes85 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 8)
  store i64 %95, ptr %sadb_lifetime_bytes85, align 1
  %add_time = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 14, i32 2
  %97 = ptrtoint ptr %add_time to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %add_time, align 8
  %sadb_lifetime_addtime87 = getelementptr inbounds %struct.sadb_lifetime, ptr %call79, i32 0, i32 4
  %99 = ptrtoint ptr %sadb_lifetime_addtime87 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 8)
  store i64 %98, ptr %sadb_lifetime_addtime87, align 1
  %use_time = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 14, i32 3
  %100 = ptrtoint ptr %use_time to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %use_time, align 8
  %sadb_lifetime_usetime89 = getelementptr inbounds %struct.sadb_lifetime, ptr %call79, i32 0, i32 5
  %102 = ptrtoint ptr %sadb_lifetime_usetime89 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 %101, ptr %sadb_lifetime_usetime89, align 1
  %call90 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 16) #15
  %103 = ptrtoint ptr %call90 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 2)
  store i16 2, ptr %call90, align 1
  %sadb_x_policy_exttype = getelementptr inbounds %struct.sadb_x_policy, ptr %call90, i32 0, i32 1
  %104 = ptrtoint ptr %sadb_x_policy_exttype to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 18, ptr %sadb_x_policy_exttype, align 1
  %sadb_x_policy_type = getelementptr inbounds %struct.sadb_x_policy, ptr %call90, i32 0, i32 2
  %105 = ptrtoint ptr %sadb_x_policy_type to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 0, ptr %sadb_x_policy_type, align 1
  %action = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 19
  %106 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %action, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp92 = icmp eq i8 %107, 0
  br i1 %cmp92, label %if.then94, label %pfkey_sockaddr_fill.exit339.if.end100_crit_edge

pfkey_sockaddr_fill.exit339.if.end100_crit_edge:  ; preds = %pfkey_sockaddr_fill.exit339
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

if.then94:                                        ; preds = %pfkey_sockaddr_fill.exit339
  call void @__sanitizer_cov_trace_pc() #17
  %108 = ptrtoint ptr %xfrm_nr.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %xfrm_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool95.not = icmp eq i8 %109, 0
  %. = select i1 %tobool95.not, i16 1, i16 2
  %110 = ptrtoint ptr %sadb_x_policy_type to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 %., ptr %sadb_x_policy_type, align 1
  br label %if.end100

if.end100:                                        ; preds = %if.then94, %pfkey_sockaddr_fill.exit339.if.end100_crit_edge
  %111 = trunc i32 %dir to i8
  %conv102 = add i8 %111, 1
  %sadb_x_policy_dir = getelementptr inbounds %struct.sadb_x_policy, ptr %call90, i32 0, i32 3
  %112 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv102, ptr %sadb_x_policy_dir, align 1
  %sadb_x_policy_reserved = getelementptr inbounds %struct.sadb_x_policy, ptr %call90, i32 0, i32 4
  %113 = ptrtoint ptr %sadb_x_policy_reserved to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %sadb_x_policy_reserved, align 1
  %index = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 9
  %114 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %index, align 8
  %sadb_x_policy_id = getelementptr inbounds %struct.sadb_x_policy, ptr %call90, i32 0, i32 5
  %116 = ptrtoint ptr %sadb_x_policy_id to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 %115, ptr %sadb_x_policy_id, align 1
  %priority = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 8
  %117 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %priority, align 4
  %sadb_x_policy_priority = getelementptr inbounds %struct.sadb_x_policy, ptr %call90, i32 0, i32 6
  %119 = ptrtoint ptr %sadb_x_policy_priority to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 %118, ptr %sadb_x_policy_priority, align 1
  %120 = ptrtoint ptr %xfrm_nr.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %xfrm_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp105381.not = icmp eq i8 %121, 0
  br i1 %cmp105381.not, label %if.end100.for.end_crit_edge, label %for.body.lr.ph

if.end100.for.end_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end100
  %xfrm_vec = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %socklen.0386 = phi i32 [ %switch.select3.i, %for.body.lr.ph ], [ %socklen.1, %for.inc.for.body_crit_edge ]
  %size.0385 = phi i32 [ %add12.i, %for.body.lr.ph ], [ %size.1, %for.inc.for.body_crit_edge ]
  %i.0382 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr107 = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec, i32 %i.0382
  %mode108 = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec, i32 %i.0382, i32 4
  %122 = ptrtoint ptr %mode108 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %mode108, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %123)
  %cmp110 = icmp eq i8 %123, 1
  br i1 %cmp110, label %if.then112, label %if.else115

if.then112:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %encap_family = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec, i32 %i.0382, i32 2
  %124 = ptrtoint ptr %encap_family to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %encap_family, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %125)
  %switch.selectcmp.i340 = icmp eq i16 %125, 10
  %switch.select.i341 = select i1 %switch.selectcmp.i340, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %125)
  %switch.selectcmp2.i342 = icmp eq i16 %125, 2
  %switch.select3.i343 = select i1 %switch.selectcmp2.i342, i32 16, i32 %switch.select.i341
  %mul = shl nuw nsw i32 %switch.select3.i343, 1
  %add114 = add nuw nsw i32 %mul, 16
  br label %if.end117

if.else115:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %mul116.neg = mul i32 %socklen.0386, -2
  %sub = add i32 %mul116.neg, %size.0385
  br label %if.end117

if.end117:                                        ; preds = %if.else115, %if.then112
  %size.1 = phi i32 [ %size.0385, %if.then112 ], [ %sub, %if.else115 ]
  %socklen.1 = phi i32 [ %switch.select3.i343, %if.then112 ], [ %socklen.0386, %if.else115 ]
  %req_size.0 = phi i32 [ %add114, %if.then112 ], [ 16, %if.else115 ]
  %call118 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %req_size.0) #15
  %div119376.lhs.trunc = trunc i32 %req_size.0 to i8
  %div119376377378 = lshr i8 %div119376.lhs.trunc, 3
  %126 = ptrtoint ptr %call90 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %call90, align 1
  %128 = zext i8 %div119376377378 to i16
  %conv123 = add i16 %127, %128
  store i16 %conv123, ptr %call90, align 1
  %129 = getelementptr inbounds i8, ptr %call118, i32 2
  %130 = call ptr @memset(ptr %129, i32 0, i32 14)
  %conv124 = trunc i32 %req_size.0 to i16
  %131 = ptrtoint ptr %call118 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 %conv124, ptr %call118, align 1
  %proto125 = getelementptr inbounds %struct.xfrm_id, ptr %add.ptr107, i32 0, i32 2
  %132 = ptrtoint ptr %proto125 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %proto125, align 4
  %conv126 = zext i8 %133 to i16
  %sadb_x_ipsecrequest_proto = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %call118, i32 0, i32 1
  %134 = ptrtoint ptr %sadb_x_ipsecrequest_proto to i32
  call void @__asan_storeN_noabort(i32 %134, i32 2)
  store i16 %conv126, ptr %sadb_x_ipsecrequest_proto, align 1
  %135 = ptrtoint ptr %mode108 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %mode108, align 4
  %137 = zext i8 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %136, label %if.end117.cleanup177_crit_edge [
    i8 0, label %if.end117.if.end133_crit_edge
    i8 1, label %sw.bb1.i344
    i8 4, label %sw.bb2.i
  ]

if.end117.if.end133_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end133

if.end117.cleanup177_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup177

sw.bb1.i344:                                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end133

sw.bb2.i:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end133

if.end133:                                        ; preds = %sw.bb2.i, %sw.bb1.i344, %if.end117.if.end133_crit_edge
  %retval.0.i345.ph = phi i8 [ 1, %if.end117.if.end133_crit_edge ], [ 2, %sw.bb1.i344 ], [ 3, %sw.bb2.i ]
  %sadb_x_ipsecrequest_mode = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %call118, i32 0, i32 2
  %138 = ptrtoint ptr %sadb_x_ipsecrequest_mode to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %retval.0.i345.ph, ptr %sadb_x_ipsecrequest_mode, align 1
  %sadb_x_ipsecrequest_level = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %call118, i32 0, i32 3
  %139 = ptrtoint ptr %sadb_x_ipsecrequest_level to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 2, ptr %sadb_x_ipsecrequest_level, align 1
  %reqid = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec, i32 %i.0382, i32 3
  %140 = ptrtoint ptr %reqid to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %reqid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool135.not = icmp eq i32 %141, 0
  %spec.store.select = select i1 %tobool135.not, i8 2, i8 3
  %142 = ptrtoint ptr %sadb_x_ipsecrequest_level to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %spec.store.select, ptr %sadb_x_ipsecrequest_level, align 1
  %optional = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec, i32 %i.0382, i32 6
  %143 = ptrtoint ptr %optional to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %optional, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool139.not = icmp eq i8 %144, 0
  %spec.store.select323 = select i1 %tobool139.not, i8 %spec.store.select, i8 1
  %145 = ptrtoint ptr %sadb_x_ipsecrequest_level to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %spec.store.select323, ptr %sadb_x_ipsecrequest_level, align 1
  %146 = ptrtoint ptr %reqid to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %reqid, align 4
  %sadb_x_ipsecrequest_reqid = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %call118, i32 0, i32 5
  %148 = ptrtoint ptr %sadb_x_ipsecrequest_reqid to i32
  call void @__asan_storeN_noabort(i32 %148, i32 4)
  store i32 %147, ptr %sadb_x_ipsecrequest_reqid, align 1
  %149 = ptrtoint ptr %mode108 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %mode108, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %150)
  %cmp146 = icmp eq i8 %150, 1
  br i1 %cmp146, label %if.then148, label %if.end133.for.inc_crit_edge

if.end133.for.inc_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then148:                                       ; preds = %if.end133
  %add.ptr149 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call118, i32 1
  %saddr150 = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec, i32 %i.0382, i32 1
  %encap_family151 = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec, i32 %i.0382, i32 2
  %151 = ptrtoint ptr %encap_family151 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %encap_family151, align 4
  %153 = zext i16 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %152, label %if.then148.pfkey_sockaddr_fill.exit356_crit_edge [
    i16 2, label %sw.bb.i349
    i16 10, label %sw.bb1.i354
  ]

if.then148.pfkey_sockaddr_fill.exit356_crit_edge: ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_sockaddr_fill.exit356

sw.bb.i349:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  %154 = ptrtoint ptr %add.ptr149 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 2, ptr %add.ptr149, align 4
  %sin_port.i346 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call118, i32 1, i32 1
  %155 = ptrtoint ptr %sin_port.i346 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 0, ptr %sin_port.i346, align 2
  %156 = ptrtoint ptr %saddr150 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %saddr150, align 4
  %sin_addr.i347 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call118, i32 1, i32 2
  %158 = ptrtoint ptr %sin_addr.i347 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %sin_addr.i347, align 4
  %__pad.i348 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call118, i32 1, i32 5
  %159 = ptrtoint ptr %__pad.i348 to i32
  call void @__asan_storeN_noabort(i32 %159, i32 8)
  store i64 0, ptr %__pad.i348, align 4
  br label %pfkey_sockaddr_fill.exit356thread-pre-split

sw.bb1.i354:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  %160 = ptrtoint ptr %add.ptr149 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 10, ptr %add.ptr149, align 4
  %sin6_port.i350 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call118, i32 1, i32 1
  %161 = ptrtoint ptr %sin6_port.i350 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %sin6_port.i350, align 2
  %sin6_flowinfo.i351 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call118, i32 1, i32 2
  %162 = ptrtoint ptr %sin6_flowinfo.i351 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %sin6_flowinfo.i351, align 4
  %sin6_addr.i352 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call118, i32 1, i32 5
  %163 = call ptr @memcpy(ptr %sin6_addr.i352, ptr %saddr150, i32 16)
  %sin6_scope_id.i353 = getelementptr %struct.sadb_x_ipsecrequest, ptr %call118, i32 2, i32 5
  %164 = ptrtoint ptr %sin6_scope_id.i353 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %sin6_scope_id.i353, align 4
  br label %pfkey_sockaddr_fill.exit356thread-pre-split

pfkey_sockaddr_fill.exit356thread-pre-split:      ; preds = %sw.bb1.i354, %sw.bb.i349
  %165 = ptrtoint ptr %encap_family151 to i32
  call void @__asan_load2_noabort(i32 %165)
  %.pr = load i16, ptr %encap_family151, align 4
  br label %pfkey_sockaddr_fill.exit356

pfkey_sockaddr_fill.exit356:                      ; preds = %pfkey_sockaddr_fill.exit356thread-pre-split, %if.then148.pfkey_sockaddr_fill.exit356_crit_edge
  %166 = phi i16 [ %.pr, %pfkey_sockaddr_fill.exit356thread-pre-split ], [ %152, %if.then148.pfkey_sockaddr_fill.exit356_crit_edge ]
  %add.ptr155 = getelementptr i8, ptr %add.ptr149, i32 %socklen.1
  %167 = zext i16 %166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %166, label %pfkey_sockaddr_fill.exit356.for.inc_crit_edge [
    i16 2, label %sw.bb.i360
    i16 10, label %sw.bb1.i365
  ]

pfkey_sockaddr_fill.exit356.for.inc_crit_edge:    ; preds = %pfkey_sockaddr_fill.exit356
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.bb.i360:                                       ; preds = %pfkey_sockaddr_fill.exit356
  call void @__sanitizer_cov_trace_pc() #17
  %168 = ptrtoint ptr %add.ptr155 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 2, ptr %add.ptr155, align 4
  %sin_port.i357 = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr155, i32 0, i32 1
  %169 = ptrtoint ptr %sin_port.i357 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %sin_port.i357, align 2
  %170 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %add.ptr107, align 4
  %sin_addr.i358 = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr155, i32 0, i32 2
  %172 = ptrtoint ptr %sin_addr.i358 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %sin_addr.i358, align 4
  %__pad.i359 = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr155, i32 0, i32 3
  %173 = ptrtoint ptr %__pad.i359 to i32
  call void @__asan_storeN_noabort(i32 %173, i32 8)
  store i64 0, ptr %__pad.i359, align 4
  br label %for.inc

sw.bb1.i365:                                      ; preds = %pfkey_sockaddr_fill.exit356
  call void @__sanitizer_cov_trace_pc() #17
  %174 = ptrtoint ptr %add.ptr155 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 10, ptr %add.ptr155, align 4
  %sin6_port.i361 = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr155, i32 0, i32 1
  %175 = ptrtoint ptr %sin6_port.i361 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %sin6_port.i361, align 2
  %sin6_flowinfo.i362 = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr155, i32 0, i32 2
  %176 = ptrtoint ptr %sin6_flowinfo.i362 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %sin6_flowinfo.i362, align 4
  %sin6_addr.i363 = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr155, i32 0, i32 3
  %177 = call ptr @memcpy(ptr %sin6_addr.i363, ptr %add.ptr107, i32 16)
  %sin6_scope_id.i364 = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr155, i32 0, i32 4
  %178 = ptrtoint ptr %sin6_scope_id.i364 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %sin6_scope_id.i364, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb1.i365, %sw.bb.i360, %pfkey_sockaddr_fill.exit356.for.inc_crit_edge, %if.end133.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0382, 1
  %179 = ptrtoint ptr %xfrm_nr.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %xfrm_nr.i, align 4
  %conv104 = zext i8 %180 to i32
  %cmp105 = icmp ult i32 %inc, %conv104
  br i1 %cmp105, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end100.for.end_crit_edge
  %size.0.lcssa = phi i32 [ %add12.i, %if.end100.for.end_crit_edge ], [ %size.1, %for.inc.for.end_crit_edge ]
  %181 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %security.i.i, align 8
  %tobool162.not = icmp eq ptr %182, null
  br i1 %tobool162.not, label %for.end.if.end172_crit_edge, label %pfkey_xfrm_policy2sec_ctx_size.exit

for.end.if.end172_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end172

pfkey_xfrm_policy2sec_ctx_size.exit:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %ctx_len.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %ctx_len.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %ctx_len.i, align 2
  %conv.i369 = zext i16 %184 to i32
  %sub.i = add nuw nsw i32 %conv.i369, 7
  %or.i = or i32 %sub.i, 7
  %add1.i = add nuw nsw i32 %or.i, 1
  %call165 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %add1.i) #15
  %div166321 = lshr exact i32 %add1.i, 3
  %conv167 = trunc i32 %div166321 to i16
  %185 = ptrtoint ptr %call165 to i32
  call void @__asan_storeN_noabort(i32 %185, i32 2)
  store i16 %conv167, ptr %call165, align 1
  %sadb_x_sec_exttype = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %call165, i32 0, i32 1
  %186 = ptrtoint ptr %sadb_x_sec_exttype to i32
  call void @__asan_storeN_noabort(i32 %186, i32 2)
  store i16 24, ptr %sadb_x_sec_exttype, align 1
  %187 = ptrtoint ptr %182 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %182, align 4
  %sadb_x_ctx_doi = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %call165, i32 0, i32 3
  %189 = ptrtoint ptr %sadb_x_ctx_doi to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %sadb_x_ctx_doi, align 1
  %ctx_alg = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %182, i32 0, i32 1
  %190 = ptrtoint ptr %ctx_alg to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %ctx_alg, align 1
  %sadb_x_ctx_alg = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %call165, i32 0, i32 2
  %192 = ptrtoint ptr %sadb_x_ctx_alg to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %sadb_x_ctx_alg, align 1
  %193 = ptrtoint ptr %ctx_len.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %ctx_len.i, align 2
  %sadb_x_ctx_len = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %call165, i32 0, i32 4
  %195 = ptrtoint ptr %sadb_x_ctx_len to i32
  call void @__asan_storeN_noabort(i32 %195, i32 2)
  store i16 %194, ptr %sadb_x_ctx_len, align 1
  %add.ptr168 = getelementptr %struct.sadb_x_sec_ctx, ptr %call165, i32 1
  %ctx_str = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %182, i32 0, i32 4
  %196 = load i16, ptr %ctx_len.i, align 2
  %conv171 = zext i16 %196 to i32
  %197 = call ptr @memcpy(ptr %add.ptr168, ptr %ctx_str, i32 %conv171)
  br label %if.end172

if.end172:                                        ; preds = %pfkey_xfrm_policy2sec_ctx_size.exit, %for.end.if.end172_crit_edge
  %div173320 = lshr i32 %size.0.lcssa, 3
  %conv174 = trunc i32 %div173320 to i16
  %sadb_msg_len = getelementptr inbounds %struct.sadb_msg, ptr %call4, i32 0, i32 4
  %198 = ptrtoint ptr %sadb_msg_len to i32
  call void @__asan_storeN_noabort(i32 %198, i32 2)
  store i16 %conv174, ptr %sadb_msg_len, align 1
  %refcnt = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #15
  %199 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %refcnt, align 4
  %conv176 = trunc i32 %200 to i16
  %sadb_msg_reserved = getelementptr inbounds %struct.sadb_msg, ptr %call4, i32 0, i32 5
  %201 = ptrtoint ptr %sadb_msg_reserved to i32
  call void @__asan_storeN_noabort(i32 %201, i32 2)
  store i16 %conv176, ptr %sadb_msg_reserved, align 1
  br label %cleanup177

cleanup177:                                       ; preds = %if.end172, %if.end117.cleanup177_crit_edge
  %retval.2 = phi i32 [ 0, %if.end172 ], [ -22, %if.end117.cleanup177_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_net_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pfkey_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call, align 4
  %socks_nr = getelementptr inbounds %struct.netns_pfkey, ptr %call, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %socks_nr, i32 noundef 4) #15
  %2 = ptrtoint ptr %socks_nr to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %socks_nr, align 4
  %proc_net.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %3 = ptrtoint ptr %proc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %proc_net.i, align 4
  %call.i = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.13, i16 noundef zeroext 0, ptr noundef %4, ptr noundef nonnull @pfkey_seq_ops, i32 noundef 8, ptr noundef null) #15
  %cmp.i = icmp eq ptr %call.i, null
  %..i = select i1 %cmp.i, i32 -12, i32 0
  ret i32 %..i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pfkey_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pfkey_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %proc_net.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %1 = ptrtoint ptr %proc_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %proc_net.i, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.13, ptr noundef %2) #15
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %call, align 4
  %tobool.not.i.not = icmp eq ptr %4, null
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !112

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3862, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pfkey_seq_start(ptr nocapture noundef readonly %f, ptr nocapture noundef readonly %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = load i32, ptr @pfkey_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  %5 = tail call i32 @llvm.read_register.i32(metadata !93) #15
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !110
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %9 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ppos, align 8
  %call2 = tail call ptr @seq_hlist_start_head_rcu(ptr noundef %call1, i64 noundef %10) #15
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pfkey_seq_stop(ptr nocapture noundef readnone %f, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !111
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pfkey_seq_next(ptr nocapture noundef readonly %f, ptr noundef %v, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = load i32, ptr @pfkey_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  %call2 = tail call ptr @seq_hlist_next_rcu(ptr noundef %v, ptr noundef %call1, ptr noundef %ppos) #15
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_seq_show(ptr noundef %f, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.14) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %v, i32 -84
  %skc_refcnt = getelementptr i8, ptr %v, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #15
  %0 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %skc_refcnt, align 4
  %sk_backlog.i = getelementptr i8, ptr %v, i32 288
  %call.i.i.i17 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #15
  %2 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_wmem_alloc.i = getelementptr i8, ptr %v, i32 360
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #15
  %4 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %5, -1
  %file.i = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 10
  %6 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i, align 4
  %call5 = tail call i32 @sock_i_uid(ptr noundef %add.ptr.i) #15
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call5, 0
  %call7 = tail call i32 @from_kuid_munged(ptr noundef %11, [1 x i32] %.fca.0.insert) #15
  %call8 = tail call i32 @sock_i_ino(ptr noundef %add.ptr.i) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.15, ptr noundef %add.ptr.i, i32 noundef %1, i32 noundef %3, i32 noundef %sub.i, i32 noundef %call7, i32 noundef %call8) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_start_head_rcu(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_next_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_register_km(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pfkey_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %1 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %user_ns, align 4
  %call1 = tail call zeroext i1 @ns_capable(ptr noundef %2, i32 noundef 12) #15
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %4)
  %cmp.not = icmp eq i16 %4, 3
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %protocol)
  %cmp5.not = icmp eq i32 %protocol, 2
  br i1 %cmp5.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 15, i32 noundef 3264, ptr noundef nonnull @key_proto, i32 noundef %kern) #15
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %dump_lock = getelementptr inbounds %struct.pfkey_sock, ptr %call9, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %dump_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @pfkey_create.__key) #15
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pfkey_ops, ptr %ops, align 4
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call9) #15
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %call9, i32 0, i32 3
  %6 = ptrtoint ptr %skc_family to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 15, ptr %skc_family, align 8
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call9, i32 0, i32 82
  %7 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pfkey_sock_destruct, ptr %sk_destruct, align 4
  %socks_nr = getelementptr inbounds %struct.netns_pfkey, ptr %call, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %socks_nr, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %socks_nr, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %socks_nr, ptr %socks_nr, i32 1, ptr elementtype(i32) %socks_nr) #15, !srcloc !117
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %call9, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i.i, align 4
  %11 = load i32, ptr @pfkey_net_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %10, i32 noundef %11) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @pfkey_mutex, i32 noundef 0) #15
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call9, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #15, !srcloc !119
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end13.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !120

if.end13.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end13
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !112

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end13.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end13.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #15
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %skc_reuseport.i.i = getelementptr inbounds %struct.sock_common, ptr %call9, i32 0, i32 5
  %14 = ptrtoint ptr %skc_reuseport.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i = load i8, ptr %skc_reuseport.i.i, align 1
  %15 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %sock_hold.exit.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

sock_hold.exit.i.i.if.else.i.i_crit_edge:         ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %sock_hold.exit.i.i
  %16 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %17)
  %cmp.i.i = icmp eq i16 %17, 10
  br i1 %cmp.i.i, label %land.lhs.true.i.i.for.cond.i.i.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

land.lhs.true.i.i.for.cond.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %land.lhs.true.i.i.for.cond.i.i.i_crit_edge
  %last.0.i.i.i = phi ptr [ %i.0.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ], [ null, %land.lhs.true.i.i.for.cond.i.i.i_crit_edge ]
  %i.0.in.i.i.i = phi ptr [ %i.0.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ], [ %call1.i, %land.lhs.true.i.i.for.cond.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %i.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %i.0.i.i.i = load ptr, ptr %i.0.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %i.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.end.i.i.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.i

for.end.i.i.i:                                    ; preds = %for.cond.i.i.i
  %19 = getelementptr inbounds %struct.sock_common, ptr %call9, i32 0, i32 15
  %tobool1.not.i.i.i = icmp eq ptr %last.0.i.i.i, null
  br i1 %tobool1.not.i.i.i, label %if.else47.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %last.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %last.0.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %19, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call9, i32 0, i32 15, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %last.0.i.i.i, ptr %pprev.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !121
  br label %if.end48.sink.split.i.i.i

if.else47.i.i.i:                                  ; preds = %for.end.i.i.i
  %24 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call1.i, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %19, align 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call9, i32 0, i32 15, i32 0, i32 1
  %27 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call1.i, ptr %pprev.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !122
  %28 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %19, ptr %call1.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i.i, label %if.else47.i.i.i.pfkey_insert.exit_crit_edge, label %do.body49.i.i.i.i

if.else47.i.i.i.pfkey_insert.exit_crit_edge:      ; preds = %if.else47.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_insert.exit

do.body49.i.i.i.i:                                ; preds = %if.else47.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev51.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  br label %if.end48.sink.split.i.i.i

if.end48.sink.split.i.i.i:                        ; preds = %do.body49.i.i.i.i, %if.then.i.i.i
  %pprev51.i.sink.i.i.i = phi ptr [ %pprev51.i.i.i.i, %do.body49.i.i.i.i ], [ %last.0.i.i.i, %if.then.i.i.i ]
  %29 = ptrtoint ptr %pprev51.i.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %19, ptr %pprev51.i.sink.i.i.i, align 4
  br label %pfkey_insert.exit

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %sock_hold.exit.i.i.if.else.i.i_crit_edge
  %30 = getelementptr inbounds %struct.sock_common, ptr %call9, i32 0, i32 15
  %31 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call1.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %30, align 4
  %pprev.i11.i.i = getelementptr inbounds %struct.sock_common, ptr %call9, i32 0, i32 15, i32 0, i32 1
  %34 = ptrtoint ptr %pprev.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call1.i, ptr %pprev.i11.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !122
  %35 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %30, ptr %call1.i, align 4
  %tobool.not.i12.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i12.i.i, label %if.else.i.i.pfkey_insert.exit_crit_edge, label %do.body49.i.i.i

if.else.i.i.pfkey_insert.exit_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_insert.exit

do.body49.i.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %pprev51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %30, ptr %pprev51.i.i.i, align 4
  br label %pfkey_insert.exit

pfkey_insert.exit:                                ; preds = %do.body49.i.i.i, %if.else.i.i.pfkey_insert.exit_crit_edge, %if.end48.sink.split.i.i.i, %if.else47.i.i.i.pfkey_insert.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pfkey_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %pfkey_insert.exit, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pfkey_insert.exit ], [ -1, %entry.cleanup_crit_edge ], [ -94, %if.end.cleanup_crit_edge ], [ -93, %if.end4.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pfkey_sock_destruct(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = load i32, ptr @pfkey_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %dump1.i = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %dump1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dump1.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.pfkey_terminate_dump.exit_crit_edge, label %if.then.i

entry.pfkey_terminate_dump.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_terminate_dump.exit

if.then.i:                                        ; preds = %entry
  %skb.i = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3, i32 5
  %5 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb.i, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #15
  %7 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %skb.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %done.i = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %done.i, align 4
  tail call void %9(ptr noundef %sk) #15
  %10 = ptrtoint ptr %dump1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dump1.i, align 8
  %11 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %done.i, align 4
  br label %pfkey_terminate_dump.exit

pfkey_terminate_dump.exit:                        ; preds = %if.end.i, %entry.pfkey_terminate_dump.exit_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #15
  %12 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %pfkey_terminate_dump.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %sk) #18
  br label %cleanup

if.end:                                           ; preds = %pfkey_terminate_dump.exit
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #15
  %16 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sk_backlog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end.if.end23_crit_edge, label %do.end17, !prof !112

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 107, i32 noundef 9, ptr noundef null) #15
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %if.end.if.end23_crit_edge
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #15
  %18 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %sk_wmem_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool33.not = icmp eq i32 %19, 0
  br i1 %tobool33.not, label %if.end23.if.end55_crit_edge, label %do.end49, !prof !112

if.end23.if.end55_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

do.end49:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %if.end23.if.end55_crit_edge
  %socks_nr = getelementptr inbounds %struct.netns_pfkey, ptr %call1, i32 0, i32 1
  %call.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %socks_nr, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %socks_nr, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %socks_nr, ptr %socks_nr, i32 1, ptr elementtype(i32) %socks_nr) #15, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_release(ptr nocapture noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @pfkey_mutex, i32 noundef 0) #15
  %pprev.i.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i.i.not.i.i, label %if.end.pfkey_remove.exit_crit_edge, label %if.then.i.i.i

if.end.pfkey_remove.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_remove.exit

if.then.i.i.i:                                    ; preds = %if.end
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %3, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.if.then.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.if.then.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %3, ptr %pprev14.i.i.i.i.i, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.if.then.i.i_crit_edge
  %9 = ptrtoint ptr %pprev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i.i.i.i.i, align 4
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #15
  %10 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !120

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 729, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i.i, label %if.then3.i.i.i.i.i, label %if.end.i.i.pfkey_remove.exit_crit_edge, !prof !120

if.end.i.i.pfkey_remove.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_remove.exit

if.then3.i.i.i.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #15
  br label %pfkey_remove.exit

pfkey_remove.exit:                                ; preds = %if.then3.i.i.i.i.i, %if.end.i.i.pfkey_remove.exit_crit_edge, %if.end.pfkey_remove.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pfkey_mutex) #15
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #15
  %13 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %or.i.i.i = or i32 %15, 1
  store i32 %or.i.i.i, ptr %13, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %16 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sk_socket.i.i, align 8
  %17 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %17, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #15
  %19 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sk1, align 16
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #15
  tail call void @synchronize_rcu() #15
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %pfkey_remove.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !112

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %pfkey_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  tail call void @sk_free(ptr noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #2 align 64 {
entry:
  %ext_hdrs.i = alloca [26 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %4 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end26.thread76_crit_edge

entry.if.end26.thread76_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.thread76

if.end:                                           ; preds = %entry
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_sndbuf, align 4
  %sub = add i32 %7, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp = icmp ult i32 %sub, %len
  br i1 %cmp, label %if.end.if.end26.thread76_crit_edge, label %if.end3

if.end.if.end26.thread76_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.thread76

if.end3:                                          ; preds = %if.end
  %call.i = tail call ptr @__alloc_skb(i32 noundef %len, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #15
  %cmp5 = icmp eq ptr %call.i, null
  br i1 %cmp5, label %if.end3.if.end26.thread76_crit_edge, label %if.end7

if.end3.if.end26.thread76_crit_edge:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.thread76

if.end7:                                          ; preds = %if.end3
  %call8 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %len) #15
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end7
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !112

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__check_object_size(ptr noundef %call8, i32 noundef %len, i1 noundef zeroext false) #15
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef %call8, i32 noundef %len, ptr noundef %msg_iter.i) #15
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %len)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %len
  br i1 %cmp.i.i, label %if.end12, label %memcpy_from_msg.exit, !prof !112

memcpy_from_msg.exit:                             ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #15
  br label %if.end26.thread76

if.end12:                                         ; preds = %copy_from_iter.exit.i.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp.i = icmp ult i32 %9, 16
  br i1 %cmp.i, label %if.end12.if.end26.thread76_crit_edge, label %if.else.i

if.end12.if.end26.thread76_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.thread76

if.else.i:                                        ; preds = %if.end12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp1.not.i = icmp eq i8 %13, 2
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %if.else.i.if.end26.thread76_crit_edge

if.else.i.if.end26.thread76_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.thread76

lor.lhs.false.i:                                  ; preds = %if.else.i
  %sadb_msg_reserved.i = getelementptr inbounds %struct.sadb_msg, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %sadb_msg_reserved.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %sadb_msg_reserved.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp4.not.i = icmp eq i16 %15, 0
  br i1 %cmp4.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.if.end26.thread76_crit_edge

lor.lhs.false.i.if.end26.thread76_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.thread76

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %sadb_msg_type.i = getelementptr inbounds %struct.sadb_msg, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %sadb_msg_type.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sadb_msg_type.i, align 1
  %18 = add i8 %17, -25
  call void @__sanitizer_cov_trace_const_cmp1(i8 -24, i8 %18)
  %19 = icmp ult i8 %18, -24
  br i1 %19, label %lor.lhs.false6.i.if.end26.thread76_crit_edge, label %if.else16.i

lor.lhs.false6.i.if.end26.thread76_crit_edge:     ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.thread76

if.else16.i:                                      ; preds = %lor.lhs.false6.i
  %sadb_msg_len.i = getelementptr inbounds %struct.sadb_msg, ptr %11, i32 0, i32 4
  %20 = ptrtoint ptr %sadb_msg_len.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %sadb_msg_len.i, align 1
  %conv17.i = zext i16 %21 to i32
  %div41.i = lshr i32 %9, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div41.i, i32 %conv17.i)
  %cmp19.not.i = icmp eq i32 %div41.i, %conv17.i
  br i1 %cmp19.not.i, label %pfkey_get_base_msg.exit, label %if.end26.thread85

if.end26.thread85:                                ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #15
  br label %62

pfkey_get_base_msg.exit:                          ; preds = %if.else16.i
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %pfkey_get_base_msg.exit..sink.split_crit_edge, label %if.end16

pfkey_get_base_msg.exit..sink.split_crit_edge:    ; preds = %pfkey_get_base_msg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %.sink.split

if.end16:                                         ; preds = %pfkey_get_base_msg.exit
  %xfrm_cfg_mutex = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 46, i32 32
  tail call void @mutex_lock_nested(ptr noundef %xfrm_cfg_mutex, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %ext_hdrs.i) #15
  %call.i45 = tail call ptr @skb_clone(ptr noundef nonnull %call.i, i32 noundef 3264) #15
  %22 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skc_net.i, align 4
  %call2.i = tail call fastcc i32 @pfkey_broadcast(ptr noundef %call.i45, i32 noundef 3264, i32 noundef 4, ptr noundef null, ptr noundef %23) #15
  %24 = call ptr @memset(ptr %ext_hdrs.i, i32 0, i32 104)
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %sub.i.i = add i32 %26, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp94.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp94.i.i, label %while.body.preheader.i.i, label %if.end16.if.then.i_crit_edge

if.end16.if.then.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

while.body.preheader.i.i:                         ; preds = %if.end16
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 16
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup48.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %len.098.i.i = phi i32 [ %sub47.i.i, %cleanup48.i.i.while.body.i.i_crit_edge ], [ %sub.i.i, %while.body.preheader.i.i ]
  %p.095.i.i = phi ptr [ %add.ptr46.i.i, %cleanup48.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i.i, %while.body.preheader.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.098.i.i)
  %cmp2.i.i = icmp ult i32 %len.098.i.i, 4
  br i1 %cmp2.i.i, label %while.body.i.i.out.thread_crit_edge, label %if.end.i.i46

while.body.i.i.out.thread_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end.i.i46:                                     ; preds = %while.body.i.i
  %27 = ptrtoint ptr %p.095.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %p.095.i.i, align 1
  %conv.i.i = zext i16 %28 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 3
  %sadb_ext_type.i.i = getelementptr inbounds %struct.sadb_ext, ptr %p.095.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %sadb_ext_type.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %sadb_ext_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp3.i.i = icmp eq i16 %28, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %len.098.i.i, i32 %mul.i.i)
  %cmp5.i.i = icmp ult i32 %len.098.i.i, %mul.i.i
  %or.cond.i.i = select i1 %cmp3.i.i, i1 true, i1 %cmp5.i.i
  br i1 %or.cond.i.i, label %if.end.i.i46.out.thread_crit_edge, label %lor.lhs.false7.i.i

if.end.i.i46.out.thread_crit_edge:                ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

lor.lhs.false7.i.i:                               ; preds = %if.end.i.i46
  %conv8.i.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp9.i.i = icmp eq i16 %30, 0
  br i1 %cmp9.i.i, label %lor.lhs.false7.i.i.out.thread_crit_edge, label %if.end12.i.i

lor.lhs.false7.i.i.out.thread_crit_edge:          ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end12.i.i:                                     ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %30)
  %cmp14.i.i = icmp ult i16 %30, 27
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.end12.i.i.cleanup48.i.i_crit_edge

if.end12.i.i.cleanup48.i.i_crit_edge:             ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup48.i.i

if.then16.i.i:                                    ; preds = %if.end12.i.i
  %arrayidx.i.i = getelementptr [27 x i8], ptr @sadb_ext_min_len, i32 0, i32 %conv8.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i, align 1
  %conv17.i.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %conv17.i.i)
  %cmp18.i.i = icmp ult i32 %mul.i.i, %conv17.i.i
  br i1 %cmp18.i.i, label %if.then16.i.i.out.thread_crit_edge, label %if.end21.i.i

if.then16.i.i.out.thread_crit_edge:               ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end21.i.i:                                     ; preds = %if.then16.i.i
  %sub23.i.i = add nsw i32 %conv8.i.i, -1
  %arrayidx24.i.i = getelementptr ptr, ptr %ext_hdrs.i, i32 %sub23.i.i
  %33 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx24.i.i, align 4
  %cmp25.not.i.i = icmp eq ptr %34, null
  br i1 %cmp25.not.i.i, label %if.end28.i.i, label %if.end21.i.i.out.thread_crit_edge

if.end21.i.i.out.thread_crit_edge:                ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end28.i.i:                                     ; preds = %if.end21.i.i
  %35 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %30, label %if.end28.i.i.sw.epilog.i.i_crit_edge [
    i16 5, label %if.end28.i.i.sw.bb.i.i_crit_edge
    i16 6, label %if.end28.i.i.sw.bb.i.i_crit_edge87
    i16 7, label %if.end28.i.i.sw.bb.i.i_crit_edge88
    i16 23, label %if.end28.i.i.sw.bb.i.i_crit_edge89
    i16 24, label %sw.bb32.i.i
    i16 8, label %if.end28.i.i.sw.bb37.i.i_crit_edge
    i16 9, label %if.end28.i.i.sw.bb37.i.i_crit_edge90
  ]

if.end28.i.i.sw.bb37.i.i_crit_edge90:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb37.i.i

if.end28.i.i.sw.bb37.i.i_crit_edge:               ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb37.i.i

if.end28.i.i.sw.bb.i.i_crit_edge89:               ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

if.end28.i.i.sw.bb.i.i_crit_edge88:               ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

if.end28.i.i.sw.bb.i.i_crit_edge87:               ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

if.end28.i.i.sw.bb.i.i_crit_edge:                 ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i.i

if.end28.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end28.i.i.sw.bb.i.i_crit_edge, %if.end28.i.i.sw.bb.i.i_crit_edge87, %if.end28.i.i.sw.bb.i.i_crit_edge88, %if.end28.i.i.sw.bb.i.i_crit_edge89
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %28)
  %cmp.i.i.i = icmp ult i16 %28, 2
  br i1 %cmp.i.i.i, label %sw.bb.i.i.out.thread_crit_edge, label %if.end.i.i.i

sw.bb.i.i.out.thread_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  %add.ptr.i.i.i = getelementptr %struct.sadb_address, ptr %p.095.i.i, i32 1
  %36 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i.i, align 2
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %37, label %if.end.i.i.i.out.thread_crit_edge [
    i16 2, label %sw.bb.i.i.i
    i16 10, label %sw.bb12.i.i.i
  ]

if.end.i.i.i.out.thread_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

sw.bb.i.i.i:                                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %28)
  %cmp5.not.i.i.i = icmp eq i16 %28, 3
  br i1 %cmp5.not.i.i.i, label %lor.lhs.false.i.i.i, label %sw.bb.i.i.i.out.thread_crit_edge

sw.bb.i.i.i.out.thread_crit_edge:                 ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

lor.lhs.false.i.i.i:                              ; preds = %sw.bb.i.i.i
  %sadb_address_prefixlen.i.i.i = getelementptr inbounds %struct.sadb_address, ptr %p.095.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %sadb_address_prefixlen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sadb_address_prefixlen.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %40)
  %cmp8.i.i.i = icmp ugt i8 %40, 32
  br i1 %cmp8.i.i.i, label %lor.lhs.false.i.i.i.out.thread_crit_edge, label %lor.lhs.false.i.i.i.sw.epilog.i.i_crit_edge

lor.lhs.false.i.i.i.sw.epilog.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i

lor.lhs.false.i.i.i.out.thread_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

sw.bb12.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %28)
  %cmp15.not.i.i.i = icmp eq i16 %28, 5
  br i1 %cmp15.not.i.i.i, label %lor.lhs.false17.i.i.i, label %sw.bb12.i.i.i.out.thread_crit_edge

sw.bb12.i.i.i.out.thread_crit_edge:               ; preds = %sw.bb12.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

lor.lhs.false17.i.i.i:                            ; preds = %sw.bb12.i.i.i
  %sadb_address_prefixlen18.i.i.i = getelementptr inbounds %struct.sadb_address, ptr %p.095.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %sadb_address_prefixlen18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sadb_address_prefixlen18.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %42)
  %cmp20.i.i.i = icmp ugt i8 %42, -128
  br i1 %cmp20.i.i.i, label %lor.lhs.false17.i.i.i.out.thread_crit_edge, label %lor.lhs.false17.i.i.i.sw.epilog.i.i_crit_edge

lor.lhs.false17.i.i.i.sw.epilog.i.i_crit_edge:    ; preds = %lor.lhs.false17.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i

lor.lhs.false17.i.i.i.out.thread_crit_edge:       ; preds = %lor.lhs.false17.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

sw.bb32.i.i:                                      ; preds = %if.end28.i.i
  %sadb_x_ctx_len.i.i.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %p.095.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %sadb_x_ctx_len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %sadb_x_ctx_len.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4097, i16 %44)
  %cmp.i79.i.i = icmp ult i16 %44, 4097
  %conv.i.i.i.i = zext i16 %44 to i32
  %sub.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i, 15
  %div2.i.i.i.i = lshr i32 %sub.i.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.i.i.i.i, i32 %conv.i.i)
  %cmp3.not.i.i.i = icmp eq i32 %div2.i.i.i.i, %conv.i.i
  %or.cond93.i.i = select i1 %cmp.i79.i.i, i1 %cmp3.not.i.i.i, i1 false
  br i1 %or.cond93.i.i, label %sw.bb32.i.i.sw.epilog.i.i_crit_edge, label %sw.bb32.i.i.out.thread_crit_edge

sw.bb32.i.i.out.thread_crit_edge:                 ; preds = %sw.bb32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

sw.bb32.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i

sw.bb37.i.i:                                      ; preds = %if.end28.i.i.sw.bb37.i.i_crit_edge, %if.end28.i.i.sw.bb37.i.i_crit_edge90
  %sadb_key_bits.i.i.i.i = getelementptr inbounds %struct.sadb_key, ptr %p.095.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %sadb_key_bits.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %sadb_key_bits.i.i.i.i, align 1
  %conv.i.i82.i.i = zext i16 %46 to i32
  %sub.i.i83.i.i = add nuw nsw i32 %conv.i.i82.i.i, 7
  %div5.i.i.i.i = lshr i32 %sub.i.i83.i.i, 3
  %sub3.i.i.i.i = add nuw nsw i32 %div5.i.i.i.i, 15
  %div46.i.i.i.i = lshr i32 %sub3.i.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div46.i.i.i.i, i32 %conv.i.i)
  %cmp.i84.not.i.i = icmp ugt i32 %div46.i.i.i.i, %conv.i.i
  br i1 %cmp.i84.not.i.i, label %sw.bb37.i.i.out.thread_crit_edge, label %sw.bb37.i.i.sw.epilog.i.i_crit_edge

sw.bb37.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i

sw.bb37.i.i.out.thread_crit_edge:                 ; preds = %sw.bb37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

sw.epilog.i.i:                                    ; preds = %sw.bb37.i.i.sw.epilog.i.i_crit_edge, %sw.bb32.i.i.sw.epilog.i.i_crit_edge, %lor.lhs.false17.i.i.i.sw.epilog.i.i_crit_edge, %lor.lhs.false.i.i.i.sw.epilog.i.i_crit_edge, %if.end28.i.i.sw.epilog.i.i_crit_edge
  %47 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %p.095.i.i, ptr %arrayidx24.i.i, align 4
  br label %cleanup48.i.i

cleanup48.i.i:                                    ; preds = %sw.epilog.i.i, %if.end12.i.i.cleanup48.i.i_crit_edge
  %add.ptr46.i.i = getelementptr i8, ptr %p.095.i.i, i32 %mul.i.i
  %sub47.i.i = sub nsw i32 %len.098.i.i, %mul.i.i
  %cmp.i.i47 = icmp sgt i32 %sub47.i.i, 0
  br i1 %cmp.i.i47, label %cleanup48.i.i.while.body.i.i_crit_edge, label %cleanup48.i.i.if.then.i_crit_edge

cleanup48.i.i.if.then.i_crit_edge:                ; preds = %cleanup48.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

cleanup48.i.i.while.body.i.i_crit_edge:           ; preds = %cleanup48.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

if.then.i:                                        ; preds = %cleanup48.i.i.if.then.i_crit_edge, %if.end16.if.then.i_crit_edge
  %48 = ptrtoint ptr %sadb_msg_type.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sadb_msg_type.i, align 1
  %idxprom.i = zext i8 %49 to i32
  %50 = lshr i32 10621184, %idxprom.i
  %51 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool5.not.not.i = icmp eq i32 %51, 0
  br i1 %tobool5.not.not.i, label %out, label %if.then.i.out.thread_crit_edge

if.then.i.out.thread_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

out.thread:                                       ; preds = %if.then.i.out.thread_crit_edge, %sw.bb37.i.i.out.thread_crit_edge, %sw.bb32.i.i.out.thread_crit_edge, %lor.lhs.false17.i.i.i.out.thread_crit_edge, %sw.bb12.i.i.i.out.thread_crit_edge, %lor.lhs.false.i.i.i.out.thread_crit_edge, %sw.bb.i.i.i.out.thread_crit_edge, %if.end.i.i.i.out.thread_crit_edge, %sw.bb.i.i.out.thread_crit_edge, %if.end21.i.i.out.thread_crit_edge, %if.then16.i.i.out.thread_crit_edge, %lor.lhs.false7.i.i.out.thread_crit_edge, %if.end.i.i46.out.thread_crit_edge, %while.body.i.i.out.thread_crit_edge
  %err.0.i.ph = phi i32 [ -95, %if.then.i.out.thread_crit_edge ], [ -22, %sw.bb37.i.i.out.thread_crit_edge ], [ -22, %sw.bb32.i.i.out.thread_crit_edge ], [ -22, %lor.lhs.false17.i.i.i.out.thread_crit_edge ], [ -22, %sw.bb12.i.i.i.out.thread_crit_edge ], [ -22, %lor.lhs.false.i.i.i.out.thread_crit_edge ], [ -22, %sw.bb.i.i.i.out.thread_crit_edge ], [ -22, %if.end.i.i.i.out.thread_crit_edge ], [ -22, %sw.bb.i.i.out.thread_crit_edge ], [ -22, %if.end21.i.i.out.thread_crit_edge ], [ -22, %if.then16.i.i.out.thread_crit_edge ], [ -22, %lor.lhs.false7.i.i.out.thread_crit_edge ], [ -22, %if.end.i.i46.out.thread_crit_edge ], [ -22, %while.body.i.i.out.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %ext_hdrs.i) #15
  call void @mutex_unlock(ptr noundef %xfrm_cfg_mutex) #15
  br label %land.lhs.true22

out:                                              ; preds = %if.then.i
  %arrayidx.i = getelementptr [25 x ptr], ptr @pfkey_funcs, i32 0, i32 %idxprom.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %call11.i = call i32 %53(ptr noundef %1, ptr noundef nonnull %call.i, ptr noundef nonnull %11, ptr noundef nonnull %ext_hdrs.i) #15
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %ext_hdrs.i) #15
  call void @mutex_unlock(ptr noundef %xfrm_cfg_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool20.not = icmp eq i32 %call11.i, 0
  br i1 %tobool20.not, label %if.end26, label %out.land.lhs.true22_crit_edge

out.land.lhs.true22_crit_edge:                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true22

land.lhs.true22:                                  ; preds = %out.land.lhs.true22_crit_edge, %out.thread
  %err.0.i82 = phi i32 [ %err.0.i.ph, %out.thread ], [ %call11.i, %out.land.lhs.true22_crit_edge ]
  %call.i.i = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #15
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end26.thread72, label %if.end.i

if.end26.thread72:                                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #15
  br label %62

if.end.i:                                         ; preds = %land.lhs.true22
  %sub.i = sub i32 0, %err.0.i82
  %err.off.i = add i32 %err.0.i82, 514
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %err.off.i)
  %switch.i = icmp ult i32 %err.off.i, 3
  %spec.select37.i = select i1 %switch.i, i32 4, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %spec.select37.i)
  %cmp6.i = icmp sgt i32 %spec.select37.i, 511
  %spec.store.select.i = select i1 %cmp6.i, i32 22, i32 %spec.select37.i
  %54 = add i32 %spec.store.select.i, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %54)
  %55 = icmp ult i32 %54, -255
  br i1 %55, label %do.body14.i, label %if.end26.thread, !prof !120

do.body14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/key/af_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 332, 0\0A.popsection", ""() #15, !srcloc !127
  unreachable

if.end26.thread:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call21.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #15
  %56 = call ptr @memcpy(ptr %call21.i, ptr %11, i32 16)
  %conv.i = trunc i32 %spec.store.select.i to i8
  %sadb_msg_errno.i = getelementptr inbounds %struct.sadb_msg, ptr %call21.i, i32 0, i32 2
  %57 = ptrtoint ptr %sadb_msg_errno.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i, ptr %sadb_msg_errno.i, align 1
  %sadb_msg_len.i49 = getelementptr inbounds %struct.sadb_msg, ptr %call21.i, i32 0, i32 4
  %58 = ptrtoint ptr %sadb_msg_len.i49 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 2, ptr %sadb_msg_len.i49, align 1
  %59 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %skc_net.i, align 4
  %call23.i = call fastcc i32 @pfkey_broadcast(ptr noundef nonnull %call.i.i, i32 noundef 3264, i32 noundef 1, ptr noundef %1, ptr noundef %60) #15
  br label %.sink.split

if.end26.thread76:                                ; preds = %lor.lhs.false6.i.if.end26.thread76_crit_edge, %lor.lhs.false.i.if.end26.thread76_crit_edge, %if.else.i.if.end26.thread76_crit_edge, %if.end12.if.end26.thread76_crit_edge, %memcpy_from_msg.exit, %if.end3.if.end26.thread76_crit_edge, %if.end.if.end26.thread76_crit_edge, %entry.if.end26.thread76_crit_edge
  %skb.065.ph = phi ptr [ %call.i, %if.else.i.if.end26.thread76_crit_edge ], [ %call.i, %lor.lhs.false.i.if.end26.thread76_crit_edge ], [ %call.i, %lor.lhs.false6.i.if.end26.thread76_crit_edge ], [ %call.i, %if.end12.if.end26.thread76_crit_edge ], [ null, %entry.if.end26.thread76_crit_edge ], [ null, %if.end.if.end26.thread76_crit_edge ], [ null, %if.end3.if.end26.thread76_crit_edge ], [ %call.i, %memcpy_from_msg.exit ]
  %err.1.ph = phi i32 [ -22, %if.else.i.if.end26.thread76_crit_edge ], [ -22, %lor.lhs.false.i.if.end26.thread76_crit_edge ], [ -22, %lor.lhs.false6.i.if.end26.thread76_crit_edge ], [ -90, %if.end12.if.end26.thread76_crit_edge ], [ -95, %entry.if.end26.thread76_crit_edge ], [ -90, %if.end.if.end26.thread76_crit_edge ], [ -105, %if.end3.if.end26.thread76_crit_edge ], [ -14, %memcpy_from_msg.exit ]
  tail call void @kfree_skb_reason(ptr noundef %skb.065.ph, i32 noundef 0) #15
  br label %62

if.end26:                                         ; preds = %out
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #15
  br i1 %cmp19.not.i, label %if.end26._crit_edge, label %if.end26._crit_edge91

if.end26._crit_edge91:                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %62

if.end26._crit_edge:                              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %61

.sink.split:                                      ; preds = %if.end26.thread, %pfkey_get_base_msg.exit..sink.split_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #15
  br label %61

61:                                               ; preds = %.sink.split, %if.end26._crit_edge
  br label %62

62:                                               ; preds = %61, %if.end26._crit_edge91, %if.end26.thread76, %if.end26.thread72, %if.end26.thread85
  %63 = phi i32 [ %len, %61 ], [ 0, %if.end26._crit_edge91 ], [ %err.0.i82, %if.end26.thread72 ], [ %err.1.ph, %if.end26.thread76 ], [ -90, %if.end26.thread85 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #15
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -22, ptr %err, align 4
  %and = and i32 %flags, -99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %and2 = and i32 %flags, 64
  %call3 = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %flags, i32 noundef %and2, ptr noundef nonnull %err) #15
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end5:                                          ; preds = %if.end
  %len6 = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 6
  %3 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %len)
  %cmp7 = icmp ugt i32 %4, %len
  br i1 %cmp7, label %if.then8, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %5 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_flags, align 4
  %or = or i32 %6, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %copied.0 = phi i32 [ %len, %if.then8 ], [ %4, %if.end5.if.end9_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 18
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call3, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #15
  %12 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_free_crit_edge

if.end9.out_free_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end13:                                         ; preds = %if.end9
  %13 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and.i = and i32 %15, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end13.if.then.i_crit_edge

if.end13.if.then.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end13
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %16 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sk_tsflags.i, align 8
  %18 = and i16 %17, 80
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool2.not.i = icmp eq i16 %18, 0
  br i1 %tobool2.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end13.if.then.i_crit_edge
  call void @__sock_recv_ts_and_drops(ptr noundef %msg, ptr noundef %1, ptr noundef nonnull %call3) #15
  br label %sock_recv_ts_and_drops.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %13, align 4
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i, label %if.else6.i, label %if.then5.i, !prof !112

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %22 = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %1, i64 noundef %24) #15
  br label %sock_recv_ts_and_drops.exit

if.else6.i:                                       ; preds = %if.else.i
  %sk_stamp.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 63
  %25 = ptrtoint ptr %sk_stamp.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sk_stamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1000000000, i64 %26)
  %cmp.i = icmp eq i64 %26, -1000000000
  br i1 %cmp.i, label %if.then14.i, label %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, !prof !120

if.else6.i.sock_recv_ts_and_drops.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_recv_ts_and_drops.exit

if.then14.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @sock_write_timestamp(ptr noundef %1, i64 noundef 0) #15
  br label %sock_recv_ts_and_drops.exit

sock_recv_ts_and_drops.exit:                      ; preds = %if.then14.i, %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, %if.then5.i, %if.then.i
  %and14 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %sock_recv_ts_and_drops.exit.cond.end_crit_edge, label %cond.true

sock_recv_ts_and_drops.exit.cond.end_crit_edge:   ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sock_recv_ts_and_drops.exit.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.true ], [ %copied.0, %sock_recv_ts_and_drops.exit.cond.end_crit_edge ]
  %29 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %err, align 4
  %dump17 = getelementptr inbounds %struct.pfkey_sock, ptr %1, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %dump17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dump17, align 8
  %cmp18.not = icmp eq ptr %31, null
  br i1 %cmp18.not, label %cond.end.out_free_crit_edge, label %land.lhs.true

cond.end.out_free_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

land.lhs.true:                                    ; preds = %cond.end
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #15
  %32 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %sk_backlog, align 4
  %mul = mul i32 %33, 3
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  %34 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %35)
  %cmp20.not = icmp sgt i32 %mul, %35
  br i1 %cmp20.not, label %land.lhs.true.out_free_crit_edge, label %if.then21

land.lhs.true.out_free_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call22 = call fastcc i32 @pfkey_do_dump(ptr noundef %1)
  br label %out_free

out_free:                                         ; preds = %if.then21, %land.lhs.true.out_free_crit_edge, %cond.end.out_free_crit_edge, %if.end9.out_free_crit_edge
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call3) #15
  br label %out

out:                                              ; preds = %out_free, %if.end.out_crit_edge, %entry.out_crit_edge
  %36 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #15
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pfkey_reserved(ptr nocapture noundef readnone %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %hdr, ptr nocapture noundef readnone %ext_hdrs) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_getspi(ptr noundef %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %ext_hdrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %arrayidx = getelementptr ptr, ptr %ext_hdrs, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr ptr, ptr %ext_hdrs, i32 5
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %tobool1.not.i = icmp eq ptr %5, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr %struct.sadb_address, ptr %3, i32 1
  %add.ptr2.i = getelementptr %struct.sadb_address, ptr %5, i32 1
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %8 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp.not.i = icmp eq i16 %7, %9
  br i1 %cmp.not.i, label %present_and_same_family.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

present_and_same_family.exit:                     ; preds = %if.end.i
  %10 = add i16 %7, -2
  %switch.and.i = and i16 %10, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i)
  %switch.selectcmp.i.not = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp.i.not, label %if.end, label %present_and_same_family.exit.cleanup_crit_edge

present_and_same_family.exit.cleanup_crit_edge:   ; preds = %present_and_same_family.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %present_and_same_family.exit
  %sadb_msg_satype = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 3
  %11 = ptrtoint ptr %sadb_msg_satype to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sadb_msg_satype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %13 = icmp ult i8 %12, 10
  br i1 %13, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = zext i8 %12 to i16
  %switch.shifted = lshr i16 525, %switch.maskindex
  %14 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %switch.lobit.not = icmp eq i16 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %15 = sext i8 %12 to i32
  %switch.gep = getelementptr inbounds [10 x i8], ptr @switch.table.pfkey_getspi, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %16)
  %switch.load = load i8, ptr %switch.gep, align 1
  %arrayidx8 = getelementptr ptr, ptr %ext_hdrs, i32 18
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx8, align 4
  %cmp9.not = icmp eq ptr %18, null
  br i1 %cmp9.not, label %switch.lookup.if.end18_crit_edge, label %if.then11

switch.lookup.if.end18_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then11:                                        ; preds = %switch.lookup
  %sadb_x_sa2_mode = getelementptr inbounds %struct.sadb_x_sa2, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %sadb_x_sa2_mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sadb_x_sa2_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %21 = icmp ult i8 %20, 4
  br i1 %21, label %switch.lookup202, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.lookup202:                                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %switch.cast = zext i8 %20 to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 67174400, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %sadb_x_sa2_reqid = getelementptr inbounds %struct.sadb_x_sa2, ptr %18, i32 0, i32 6
  %22 = ptrtoint ptr %sadb_x_sa2_reqid to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %sadb_x_sa2_reqid, align 1
  br label %if.end18

if.end18:                                         ; preds = %switch.lookup202, %switch.lookup.if.end18_crit_edge
  %mode.0 = phi i8 [ %switch.masked, %switch.lookup202 ], [ 0, %switch.lookup.if.end18_crit_edge ]
  %reqid.0 = phi i32 [ %23, %switch.lookup202 ], [ 0, %switch.lookup.if.end18_crit_edge ]
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %25, label %if.end18.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb26
  ]

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr = getelementptr %struct.sadb_address, ptr %5, i32 1, i32 2
  %sin_addr24 = getelementptr %struct.sadb_address, ptr %3, i32 1, i32 2
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr = getelementptr %struct.sadb_address, ptr %5, i32 2
  %sin6_addr29 = getelementptr %struct.sadb_address, ptr %3, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb, %if.end18.sw.epilog_crit_edge
  %xsaddr.0 = phi ptr [ null, %if.end18.sw.epilog_crit_edge ], [ %sin6_addr29, %sw.bb26 ], [ %sin_addr24, %sw.bb ]
  %xdaddr.0 = phi ptr [ null, %if.end18.sw.epilog_crit_edge ], [ %sin6_addr, %sw.bb26 ], [ %sin_addr, %sw.bb ]
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 6
  %27 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %sadb_msg_seq, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool30.not = icmp eq i32 %28, 0
  br i1 %tobool30.not, label %sw.epilog.if.end44_crit_edge, label %if.then31

sw.epilog.if.end44_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then31:                                        ; preds = %sw.epilog
  %call33 = tail call ptr @xfrm_find_acq_byseq(ptr noundef %1, i32 noundef 0, i32 noundef %28) #15
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then31.if.end44_crit_edge, label %land.lhs.true

if.then31.if.end44_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

land.lhs.true:                                    ; preds = %if.then31
  %id = getelementptr inbounds %struct.xfrm_state, ptr %call33, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %25)
  %cond.i = icmp eq i16 %25, 10
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %31 = ptrtoint ptr %xdaddr.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xdaddr.0, align 4
  br i1 %cond.i, label %sw.bb2.i147, label %xfrm_addr_equal.exit

sw.bb2.i147:                                      ; preds = %land.lhs.true
  %xor.i.i.i = xor i32 %32, %30
  %arrayidx4.i.i.i = getelementptr %struct.xfrm_state, ptr %call33, i32 0, i32 7, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx4.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr [4 x i32], ptr %xdaddr.0, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %36, %34
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.xfrm_state, ptr %call33, i32 0, i32 7, i32 0, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr [4 x i32], ptr %xdaddr.0, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %40, %38
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.xfrm_state, ptr %call33, i32 0, i32 7, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx15.i.i.i, align 4
  %arrayidx17.i.i.i = getelementptr [4 x i32], ptr %xdaddr.0, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %44, %42
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %sw.bb2.i147.if.end48_crit_edge, label %sw.bb2.i147.if.then37_crit_edge

sw.bb2.i147.if.then37_crit_edge:                  ; preds = %sw.bb2.i147
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

sw.bb2.i147.if.end48_crit_edge:                   ; preds = %sw.bb2.i147
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

xfrm_addr_equal.exit:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.i = icmp eq i32 %30, %32
  br i1 %cmp.i, label %xfrm_addr_equal.exit.if.end48_crit_edge, label %xfrm_addr_equal.exit.if.then37_crit_edge

xfrm_addr_equal.exit.if.then37_crit_edge:         ; preds = %xfrm_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then37

xfrm_addr_equal.exit.if.end48_crit_edge:          ; preds = %xfrm_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then37:                                        ; preds = %xfrm_addr_equal.exit.if.then37_crit_edge, %sw.bb2.i147.if.then37_crit_edge
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call33, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end44_crit_edge, label %if.then10.i.i.i.i, !prof !112

if.end5.i.i.i.i.if.end44_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %if.end44

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call33, i1 noundef zeroext false) #15
  br label %if.end44

if.end44:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end44_crit_edge, %if.then31.if.end44_crit_edge, %sw.epilog.if.end44_crit_edge
  %call43 = tail call ptr @xfrm_find_acq(ptr noundef %1, ptr noundef nonnull @dummy_mark, i8 noundef zeroext %mode.0, i32 noundef %reqid.0, i32 noundef 0, i8 noundef zeroext %switch.load, ptr noundef %xdaddr.0, ptr noundef %xsaddr.0, i32 noundef 1, i16 noundef zeroext %25) #15
  %cmp45 = icmp eq ptr %call43, null
  br i1 %cmp45, label %if.end44.cleanup_crit_edge, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end48:                                         ; preds = %if.end44.if.end48_crit_edge, %xfrm_addr_equal.exit.if.end48_crit_edge, %sw.bb2.i147.if.end48_crit_edge
  %x.1200 = phi ptr [ %call43, %if.end44.if.end48_crit_edge ], [ %call33, %xfrm_addr_equal.exit.if.end48_crit_edge ], [ %call33, %sw.bb2.i147.if.end48_crit_edge ]
  %arrayidx49 = getelementptr ptr, ptr %ext_hdrs, i32 15
  %46 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %47, null
  br i1 %tobool50.not, label %if.end48.if.end52_crit_edge, label %if.then51

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_spirange_min = getelementptr inbounds %struct.sadb_spirange, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %sadb_spirange_min to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %sadb_spirange_min, align 1
  %sadb_spirange_max = getelementptr inbounds %struct.sadb_spirange, ptr %47, i32 0, i32 3
  %50 = ptrtoint ptr %sadb_spirange_max to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %sadb_spirange_max, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48.if.end52_crit_edge
  %min_spi.0 = phi i32 [ %49, %if.then51 ], [ 256, %if.end48.if.end52_crit_edge ]
  %max_spi.0 = phi i32 [ %51, %if.then51 ], [ 268435455, %if.end48.if.end52_crit_edge ]
  %proto54 = getelementptr inbounds %struct.xfrm_state, ptr %x.1200, i32 0, i32 7, i32 2
  %52 = ptrtoint ptr %proto54 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %proto54, align 4
  %call55 = tail call i32 @verify_spi_info(i8 noundef zeroext %53, i32 noundef %min_spi.0, i32 noundef %max_spi.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end52
  %refcnt.i150 = getelementptr inbounds %struct.xfrm_state, ptr %x.1200, i32 0, i32 5
  %call.i.i.i.i.i.i151 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i150, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %refcnt.i150, i32 1, i32 3, i32 1) #15
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i150, ptr %refcnt.i150, i32 1, ptr elementtype(i32) %refcnt.i150) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i152 = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i152)
  %cmp.i.i.i.i153 = icmp eq i32 %asmresult.i.i.i.i.i.i.i152, 1
  br i1 %cmp.i.i.i.i153, label %if.then.i157, label %if.end5.i.i.i.i155

if.end5.i.i.i.i155:                               ; preds = %if.then57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i152)
  %.not.i.i.i.i154 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i152, 0
  br i1 %.not.i.i.i.i154, label %if.end5.i.i.i.i155.cleanup_crit_edge, label %if.then10.i.i.i.i156, !prof !112

if.end5.i.i.i.i155.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i155
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i156:                             ; preds = %if.end5.i.i.i.i155
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i150, i32 noundef 3) #15
  br label %cleanup

if.then.i157:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %x.1200, i1 noundef zeroext false) #15
  br label %cleanup

if.end58:                                         ; preds = %if.end52
  %call59 = tail call i32 @xfrm_alloc_spi(ptr noundef nonnull %x.1200, i32 noundef %min_spi.0, i32 noundef %max_spi.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  %55 = inttoptr i32 %call59 to ptr
  br label %cond.end

cond.false:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call fastcc ptr @__pfkey_xfrm_state2msg(ptr noundef nonnull %x.1200, i32 noundef 1, i32 noundef 3) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %55, %cond.true ], [ %call.i, %cond.false ]
  %cmp.i160 = icmp ugt ptr %cond, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %if.then64, label %if.end66

if.then64:                                        ; preds = %cond.end
  %refcnt.i161 = getelementptr inbounds %struct.xfrm_state, ptr %x.1200, i32 0, i32 5
  %call.i.i.i.i.i.i162 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i161, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %refcnt.i161, i32 1, i32 3, i32 1) #15
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i161, ptr %refcnt.i161, i32 1, ptr elementtype(i32) %refcnt.i161) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i163 = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i163)
  %cmp.i.i.i.i164 = icmp eq i32 %asmresult.i.i.i.i.i.i.i163, 1
  br i1 %cmp.i.i.i.i164, label %if.then.i168, label %if.end5.i.i.i.i166

if.end5.i.i.i.i166:                               ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i163)
  %.not.i.i.i.i165 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i163, 0
  br i1 %.not.i.i.i.i165, label %if.end5.i.i.i.i166.xfrm_state_put.exit170_crit_edge, label %if.then10.i.i.i.i167, !prof !112

if.end5.i.i.i.i166.xfrm_state_put.exit170_crit_edge: ; preds = %if.end5.i.i.i.i166
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_state_put.exit170

if.then10.i.i.i.i167:                             ; preds = %if.end5.i.i.i.i166
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i161, i32 noundef 3) #15
  br label %xfrm_state_put.exit170

if.then.i168:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %x.1200, i1 noundef zeroext false) #15
  br label %xfrm_state_put.exit170

xfrm_state_put.exit170:                           ; preds = %if.then.i168, %if.then10.i.i.i.i167, %if.end5.i.i.i.i166.xfrm_state_put.exit170_crit_edge
  %57 = ptrtoint ptr %cond to i32
  br label %cleanup

if.end66:                                         ; preds = %cond.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %cond, i32 0, i32 19
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %60 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %hdr, align 1
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %59, align 1
  %sadb_msg_type = getelementptr inbounds %struct.sadb_msg, ptr %59, i32 0, i32 1
  %63 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %sadb_msg_type, align 1
  %64 = zext i8 %switch.load to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %switch.load, label %sw.default.i173 [
    i8 51, label %if.end66.pfkey_proto2satype.exit_crit_edge
    i8 50, label %sw.bb1.i171
    i8 108, label %sw.bb2.i172
  ]

if.end66.pfkey_proto2satype.exit_crit_edge:       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.bb1.i171:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.bb2.i172:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.default.i173:                                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

pfkey_proto2satype.exit:                          ; preds = %sw.default.i173, %sw.bb2.i172, %sw.bb1.i171, %if.end66.pfkey_proto2satype.exit_crit_edge
  %retval.0.i174 = phi i8 [ 0, %sw.default.i173 ], [ 9, %sw.bb2.i172 ], [ 3, %sw.bb1.i171 ], [ 2, %if.end66.pfkey_proto2satype.exit_crit_edge ]
  %sadb_msg_satype70 = getelementptr inbounds %struct.sadb_msg, ptr %59, i32 0, i32 3
  %65 = ptrtoint ptr %sadb_msg_satype70 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %retval.0.i174, ptr %sadb_msg_satype70, align 1
  %sadb_msg_errno = getelementptr inbounds %struct.sadb_msg, ptr %59, i32 0, i32 2
  %66 = ptrtoint ptr %sadb_msg_errno to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %sadb_msg_errno, align 1
  %sadb_msg_reserved = getelementptr inbounds %struct.sadb_msg, ptr %59, i32 0, i32 5
  %67 = ptrtoint ptr %sadb_msg_reserved to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 0, ptr %sadb_msg_reserved, align 1
  %68 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %sadb_msg_seq, align 1
  %sadb_msg_seq72 = getelementptr inbounds %struct.sadb_msg, ptr %59, i32 0, i32 6
  %70 = ptrtoint ptr %sadb_msg_seq72 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %sadb_msg_seq72, align 1
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 7
  %71 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %sadb_msg_pid, align 1
  %sadb_msg_pid73 = getelementptr inbounds %struct.sadb_msg, ptr %59, i32 0, i32 7
  %73 = ptrtoint ptr %sadb_msg_pid73 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %72, ptr %sadb_msg_pid73, align 1
  %refcnt.i175 = getelementptr inbounds %struct.xfrm_state, ptr %x.1200, i32 0, i32 5
  %call.i.i.i.i.i.i176 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i175, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %refcnt.i175, i32 1, i32 3, i32 1) #15
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i175, ptr %refcnt.i175, i32 1, ptr elementtype(i32) %refcnt.i175) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i177 = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i177)
  %cmp.i.i.i.i178 = icmp eq i32 %asmresult.i.i.i.i.i.i.i177, 1
  br i1 %cmp.i.i.i.i178, label %if.then.i182, label %if.end5.i.i.i.i180

if.end5.i.i.i.i180:                               ; preds = %pfkey_proto2satype.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i177)
  %.not.i.i.i.i179 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i177, 0
  br i1 %.not.i.i.i.i179, label %if.end5.i.i.i.i180.xfrm_state_put.exit184_crit_edge, label %if.then10.i.i.i.i181, !prof !112

if.end5.i.i.i.i180.xfrm_state_put.exit184_crit_edge: ; preds = %if.end5.i.i.i.i180
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_state_put.exit184

if.then10.i.i.i.i181:                             ; preds = %if.end5.i.i.i.i180
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i175, i32 noundef 3) #15
  br label %xfrm_state_put.exit184

if.then.i182:                                     ; preds = %pfkey_proto2satype.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %x.1200, i1 noundef zeroext false) #15
  br label %xfrm_state_put.exit184

xfrm_state_put.exit184:                           ; preds = %if.then.i182, %if.then10.i.i.i.i181, %if.end5.i.i.i.i180.xfrm_state_put.exit184_crit_edge
  %call74 = tail call fastcc i32 @pfkey_broadcast(ptr noundef %cond, i32 noundef 3264, i32 noundef 1, ptr noundef %sk, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %xfrm_state_put.exit184, %xfrm_state_put.exit170, %if.then.i157, %if.then10.i.i.i.i156, %if.end5.i.i.i.i155.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %present_and_same_family.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %57, %xfrm_state_put.exit170 ], [ 0, %xfrm_state_put.exit184 ], [ -22, %present_and_same_family.exit.cleanup_crit_edge ], [ -2, %if.end44.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ], [ %call55, %if.end5.i.i.i.i155.cleanup_crit_edge ], [ %call55, %if.then10.i.i.i.i156 ], [ %call55, %if.then.i157 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_add(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %ext_hdrs) #2 align 64 {
entry:
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #15
  %2 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %3 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %4 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %5 = call ptr @memset(ptr %c, i32 255, i32 20)
  %6 = ptrtoint ptr %ext_hdrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext_hdrs, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %lor.lhs.false.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx1.i = getelementptr ptr, ptr %ext_hdrs, i32 4
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %ext_hdrs, i32 5
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  %tobool1.not.i.i = icmp eq ptr %11, null
  %or.cond.i.i = or i1 %tobool.not.i.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false.i.if.then_crit_edge, label %if.end.i652.i

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end.i652.i:                                    ; preds = %lor.lhs.false.i
  %add.ptr.i.i = getelementptr %struct.sadb_address, ptr %9, i32 1
  %add.ptr2.i.i = getelementptr %struct.sadb_address, ptr %11, i32 1
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %14 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr2.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp.not.i.i = icmp eq i16 %13, %15
  br i1 %cmp.not.i.i, label %present_and_same_family.exit.i, label %if.end.i652.i.if.then_crit_edge

if.end.i652.i.if.then_crit_edge:                  ; preds = %if.end.i652.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

present_and_same_family.exit.i:                   ; preds = %if.end.i652.i
  %16 = add i16 %13, -2
  %switch.and.i.i = and i16 %16, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i.i)
  %switch.selectcmp.i.not.i = icmp eq i16 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.not.i, label %if.end.i, label %present_and_same_family.exit.i.if.then_crit_edge

present_and_same_family.exit.i.if.then_crit_edge: ; preds = %present_and_same_family.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end.i:                                         ; preds = %present_and_same_family.exit.i
  %sadb_msg_satype.i = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 3
  %17 = ptrtoint ptr %sadb_msg_satype.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sadb_msg_satype.i, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %18, label %if.end.i.if.end20.i_crit_edge [
    i8 3, label %land.lhs.true.i
    i8 2, label %land.lhs.true15.i
  ]

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx6.i = getelementptr ptr, ptr %ext_hdrs, i32 8
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %21, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true15.i:                                ; preds = %if.end.i
  %arrayidx16.i = getelementptr ptr, ptr %ext_hdrs, i32 7
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx16.i, align 4
  %tobool17.not.i = icmp eq ptr %23, null
  br i1 %tobool17.not.i, label %land.lhs.true15.i.if.then_crit_edge, label %land.lhs.true15.i.if.end20.i_crit_edge

land.lhs.true15.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

land.lhs.true15.i.if.then_crit_edge:              ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end20.i:                                       ; preds = %land.lhs.true15.i.if.end20.i_crit_edge, %land.lhs.true.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  %arrayidx21.i = getelementptr ptr, ptr %ext_hdrs, i32 2
  %24 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx21.i, align 4
  %tobool22.i = icmp eq ptr %25, null
  %arrayidx24.i = getelementptr ptr, ptr %ext_hdrs, i32 3
  %26 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.i = icmp ne ptr %27, null
  %cmp30.not.i = xor i1 %tobool22.i, %tobool25.i
  br i1 %cmp30.not.i, label %if.end34.i, label %if.end20.i.if.then_crit_edge

if.end20.i.if.then_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end34.i:                                       ; preds = %if.end20.i
  %28 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %18, label %if.end34.i.if.then_crit_edge [
    i8 0, label %if.end34.i.if.end42.i_crit_edge
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb2.i.i
    i8 9, label %if.end42.thread.i
  ]

if.end34.i.if.end42.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

if.end34.i.if.then_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

sw.bb1.i.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

sw.bb2.i.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

if.end42.i:                                       ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %if.end34.i.if.end42.i_crit_edge
  %retval.0.i653.ph.off0.i = phi i8 [ -1, %if.end34.i.if.end42.i_crit_edge ], [ 51, %sw.bb1.i.i ], [ 50, %sw.bb2.i.i ]
  %sadb_sa_auth.i = getelementptr inbounds %struct.sadb_sa, ptr %7, i32 0, i32 5
  %29 = ptrtoint ptr %sadb_sa_auth.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sadb_sa_auth.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %30)
  %cmp44.i = icmp ugt i8 %30, -5
  br i1 %cmp44.i, label %if.end42.i.if.then_crit_edge, label %if.end42.i.lor.lhs.false55.i_crit_edge

if.end42.i.lor.lhs.false55.i_crit_edge:           ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false55.i

if.end42.i.if.then_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end42.thread.i:                                ; preds = %if.end34.i
  %sadb_sa_auth681.i = getelementptr inbounds %struct.sadb_sa, ptr %7, i32 0, i32 5
  %31 = ptrtoint ptr %sadb_sa_auth681.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sadb_sa_auth681.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %32)
  %cmp44682.i = icmp ugt i8 %32, -5
  br i1 %cmp44682.i, label %if.end42.thread.i.if.then_crit_edge, label %land.lhs.true51.i

if.end42.thread.i.if.then_crit_edge:              ; preds = %if.end42.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true51.i:                                ; preds = %if.end42.thread.i
  %sadb_sa_encrypt.i = getelementptr inbounds %struct.sadb_sa, ptr %7, i32 0, i32 6
  %33 = ptrtoint ptr %sadb_sa_encrypt.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sadb_sa_encrypt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %34)
  %cmp53.i = icmp ugt i8 %34, 4
  br i1 %cmp53.i, label %land.lhs.true51.i.if.then_crit_edge, label %land.lhs.true51.i.lor.lhs.false55.i_crit_edge

land.lhs.true51.i.lor.lhs.false55.i_crit_edge:    ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false55.i

land.lhs.true51.i.if.then_crit_edge:              ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false55.i:                                ; preds = %land.lhs.true51.i.lor.lhs.false55.i_crit_edge, %if.end42.i.lor.lhs.false55.i_crit_edge
  %retval.0.i653.ph683690.off0.i = phi i8 [ 108, %land.lhs.true51.i.lor.lhs.false55.i_crit_edge ], [ %retval.0.i653.ph.off0.i, %if.end42.i.lor.lhs.false55.i_crit_edge ]
  %sadb_sa_auth684688.i = phi ptr [ %sadb_sa_auth681.i, %land.lhs.true51.i.lor.lhs.false55.i_crit_edge ], [ %sadb_sa_auth.i, %if.end42.i.lor.lhs.false55.i_crit_edge ]
  %35 = phi i8 [ %32, %land.lhs.true51.i.lor.lhs.false55.i_crit_edge ], [ %30, %if.end42.i.lor.lhs.false55.i_crit_edge ]
  %sadb_sa_encrypt56.i = getelementptr inbounds %struct.sadb_sa, ptr %7, i32 0, i32 6
  %36 = ptrtoint ptr %sadb_sa_encrypt56.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sadb_sa_encrypt56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %37)
  %cmp58.i = icmp ugt i8 %37, -3
  br i1 %cmp58.i, label %lor.lhs.false55.i.if.then_crit_edge, label %if.end62.i

lor.lhs.false55.i.if.then_crit_edge:              ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end62.i:                                       ; preds = %lor.lhs.false55.i
  %arrayidx63.i = getelementptr ptr, ptr %ext_hdrs, i32 7
  %38 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx63.i, align 4
  %cmp64.not.i = icmp eq ptr %39, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %35)
  %cmp69.not.i = icmp eq i8 %35, -5
  %or.cond.i = select i1 %cmp64.not.i, i1 true, i1 %cmp69.not.i
  br i1 %or.cond.i, label %if.end62.i.if.end77.i_crit_edge, label %land.lhs.true71.i

if.end62.i.if.end77.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77.i

land.lhs.true71.i:                                ; preds = %if.end62.i
  %sadb_key_bits.i = getelementptr inbounds %struct.sadb_key, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %sadb_key_bits.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %sadb_key_bits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp73.i = icmp eq i16 %41, 0
  br i1 %cmp73.i, label %land.lhs.true71.i.if.then_crit_edge, label %land.lhs.true71.i.if.end77.i_crit_edge

land.lhs.true71.i.if.end77.i_crit_edge:           ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77.i

land.lhs.true71.i.if.then_crit_edge:              ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end77.i:                                       ; preds = %land.lhs.true71.i.if.end77.i_crit_edge, %if.end62.i.if.end77.i_crit_edge
  %arrayidx78.i = getelementptr ptr, ptr %ext_hdrs, i32 8
  %42 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx78.i, align 4
  %cmp79.not.i = icmp eq ptr %43, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %37)
  %cmp84.not.i = icmp eq i8 %37, 11
  %or.cond713.i = select i1 %cmp79.not.i, i1 true, i1 %cmp84.not.i
  br i1 %or.cond713.i, label %if.end77.i.if.end93.i_crit_edge, label %land.lhs.true86.i

if.end77.i.if.end93.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end93.i

land.lhs.true86.i:                                ; preds = %if.end77.i
  %sadb_key_bits87.i = getelementptr inbounds %struct.sadb_key, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %sadb_key_bits87.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %sadb_key_bits87.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp89.i = icmp eq i16 %45, 0
  br i1 %cmp89.i, label %land.lhs.true86.i.if.then_crit_edge, label %land.lhs.true86.i.if.end93.i_crit_edge

land.lhs.true86.i.if.end93.i_crit_edge:           ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end93.i

land.lhs.true86.i.if.then_crit_edge:              ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end93.i:                                       ; preds = %land.lhs.true86.i.if.end93.i_crit_edge, %if.end77.i.if.end93.i_crit_edge
  %call94.i = tail call ptr @xfrm_state_alloc(ptr noundef %1) #15
  %cmp95.i = icmp eq ptr %call94.i, null
  br i1 %cmp95.i, label %if.end93.i.if.then_crit_edge, label %if.end99.i

if.end93.i.if.then_crit_edge:                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end99.i:                                       ; preds = %if.end93.i
  %id.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 7
  %proto101.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %proto101.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %retval.0.i653.ph683690.off0.i, ptr %proto101.i, align 4
  %sadb_sa_spi.i = getelementptr inbounds %struct.sadb_sa, ptr %7, i32 0, i32 2
  %47 = ptrtoint ptr %sadb_sa_spi.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %sadb_sa_spi.i, align 1
  %spi.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %spi.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %spi.i, align 4
  %sadb_sa_replay.i = getelementptr inbounds %struct.sadb_sa, ptr %7, i32 0, i32 3
  %50 = ptrtoint ptr %sadb_sa_replay.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sadb_sa_replay.i, align 1
  %52 = tail call i8 @llvm.umin.i8(i8 %51, i8 32) #15
  %props.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 14
  %replay_window.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 14, i32 2
  %53 = ptrtoint ptr %replay_window.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %replay_window.i, align 1
  %sadb_sa_flags.i = getelementptr inbounds %struct.sadb_sa, ptr %7, i32 0, i32 7
  %54 = ptrtoint ptr %sadb_sa_flags.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %sadb_sa_flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %tobool107.not.i = icmp sgt i32 %55, -1
  br i1 %tobool107.not.i, label %if.end99.i.if.end112.i_crit_edge, label %if.then108.i

if.end99.i.if.end112.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112.i

if.then108.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 14, i32 6
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %flags.i, align 1
  %58 = or i8 %57, 1
  store i8 %58, ptr %flags.i, align 1
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then108.i, %if.end99.i.if.end112.i_crit_edge
  %59 = ptrtoint ptr %sadb_sa_flags.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %sadb_sa_flags.i, align 1
  %and114.i = and i32 %60, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  br i1 %tobool115.not.i, label %if.end112.i.if.end122.i_crit_edge, label %if.then116.i

if.end112.i.if.end122.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end122.i

if.then116.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags118.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 14, i32 6
  %61 = ptrtoint ptr %flags118.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %flags118.i, align 1
  %63 = or i8 %62, 2
  store i8 %63, ptr %flags118.i, align 1
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then116.i, %if.end112.i.if.end122.i_crit_edge
  %64 = ptrtoint ptr %sadb_sa_flags.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %sadb_sa_flags.i, align 1
  %and124.i = and i32 %65, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool125.not.i = icmp eq i32 %and124.i, 0
  br i1 %tobool125.not.i, label %if.end122.i.if.end132.i_crit_edge, label %if.then126.i

if.end122.i.if.end132.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end132.i

if.then126.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags128.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 14, i32 6
  %66 = ptrtoint ptr %flags128.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %flags128.i, align 1
  %68 = or i8 %67, 4
  store i8 %68, ptr %flags128.i, align 1
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then126.i, %if.end122.i.if.end132.i_crit_edge
  %69 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx21.i, align 4
  %cmp134.not.i = icmp eq ptr %70, null
  br i1 %cmp134.not.i, label %if.end132.i.if.end155.i_crit_edge, label %if.then136.i

if.end132.i.if.end155.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155.i

if.then136.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_lifetime_allocations.i = getelementptr inbounds %struct.sadb_lifetime, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %sadb_lifetime_allocations.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %sadb_lifetime_allocations.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp137.i = icmp eq i32 %72, 0
  %conv142.i = zext i32 %72 to i64
  %spec.select.i = select i1 %cmp137.i, i64 -1, i64 %conv142.i
  %hard_packet_limit.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 15, i32 3
  %73 = ptrtoint ptr %hard_packet_limit.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %spec.select.i, ptr %hard_packet_limit.i, align 8
  %sadb_lifetime_bytes.i = getelementptr inbounds %struct.sadb_lifetime, ptr %70, i32 0, i32 3
  %74 = ptrtoint ptr %sadb_lifetime_bytes.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %sadb_lifetime_bytes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %cmp145.i = icmp eq i64 %75, 0
  %cond151.i = select i1 %cmp145.i, i64 -1, i64 %75
  %hard_byte_limit.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 15, i32 1
  %76 = ptrtoint ptr %hard_byte_limit.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %cond151.i, ptr %hard_byte_limit.i, align 8
  %sadb_lifetime_addtime.i = getelementptr inbounds %struct.sadb_lifetime, ptr %70, i32 0, i32 4
  %77 = ptrtoint ptr %sadb_lifetime_addtime.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 8)
  %78 = load i64, ptr %sadb_lifetime_addtime.i, align 1
  %hard_add_expires_seconds.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 15, i32 5
  %79 = ptrtoint ptr %hard_add_expires_seconds.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %hard_add_expires_seconds.i, align 8
  %sadb_lifetime_usetime.i = getelementptr inbounds %struct.sadb_lifetime, ptr %70, i32 0, i32 5
  %80 = ptrtoint ptr %sadb_lifetime_usetime.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 8)
  %81 = load i64, ptr %sadb_lifetime_usetime.i, align 1
  %hard_use_expires_seconds.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 15, i32 7
  %82 = ptrtoint ptr %hard_use_expires_seconds.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %hard_use_expires_seconds.i, align 8
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.then136.i, %if.end132.i.if.end155.i_crit_edge
  %83 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx24.i, align 4
  %cmp157.not.i = icmp eq ptr %84, null
  br i1 %cmp157.not.i, label %if.end155.i.if.end183.i_crit_edge, label %if.then159.i

if.end155.i.if.end183.i_crit_edge:                ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end183.i

if.then159.i:                                     ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_lifetime_allocations160.i = getelementptr inbounds %struct.sadb_lifetime, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %sadb_lifetime_allocations160.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %sadb_lifetime_allocations160.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp161.i = icmp eq i32 %86, 0
  %conv166.i = zext i32 %86 to i64
  %spec.select598.i = select i1 %cmp161.i, i64 -1, i64 %conv166.i
  %lft169.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 15
  %soft_packet_limit.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 15, i32 2
  %87 = ptrtoint ptr %soft_packet_limit.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %spec.select598.i, ptr %soft_packet_limit.i, align 8
  %sadb_lifetime_bytes170.i = getelementptr inbounds %struct.sadb_lifetime, ptr %84, i32 0, i32 3
  %88 = ptrtoint ptr %sadb_lifetime_bytes170.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 8)
  %89 = load i64, ptr %sadb_lifetime_bytes170.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %cmp171.i = icmp eq i64 %89, 0
  %cond177.i = select i1 %cmp171.i, i64 -1, i64 %89
  %90 = ptrtoint ptr %lft169.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %cond177.i, ptr %lft169.i, align 8
  %sadb_lifetime_addtime179.i = getelementptr inbounds %struct.sadb_lifetime, ptr %84, i32 0, i32 4
  %91 = ptrtoint ptr %sadb_lifetime_addtime179.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 8)
  %92 = load i64, ptr %sadb_lifetime_addtime179.i, align 1
  %soft_add_expires_seconds.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 15, i32 4
  %93 = ptrtoint ptr %soft_add_expires_seconds.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %soft_add_expires_seconds.i, align 8
  %sadb_lifetime_usetime181.i = getelementptr inbounds %struct.sadb_lifetime, ptr %84, i32 0, i32 5
  %94 = ptrtoint ptr %sadb_lifetime_usetime181.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 8)
  %95 = load i64, ptr %sadb_lifetime_usetime181.i, align 1
  %soft_use_expires_seconds.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 15, i32 6
  %96 = ptrtoint ptr %soft_use_expires_seconds.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %soft_use_expires_seconds.i, align 8
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.then159.i, %if.end155.i.if.end183.i_crit_edge
  %arrayidx184.i = getelementptr ptr, ptr %ext_hdrs, i32 23
  %97 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx184.i, align 4
  %cmp185.not.i = icmp eq ptr %98, null
  br i1 %cmp185.not.i, label %if.end183.i.if.end196.i_crit_edge, label %if.then187.i

if.end183.i.if.end196.i_crit_edge:                ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end196.i

if.then187.i:                                     ; preds = %if.end183.i
  %sadb_x_ctx_len.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %sadb_x_ctx_len.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %sadb_x_ctx_len.i, align 1
  %conv.i = zext i16 %100 to i32
  %add.i56 = add nuw nsw i32 %conv.i, 8
  %call9.i.i80 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i56, i32 noundef 3264) #19
  %tobool.not.i83 = icmp eq ptr %call9.i.i80, null
  br i1 %tobool.not.i83, label %if.then187.i.out.i_crit_edge, label %if.end191.i

if.then187.i.out.i_crit_edge:                     ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end191.i:                                      ; preds = %if.then187.i
  %101 = ptrtoint ptr %sadb_x_ctx_len.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %sadb_x_ctx_len.i, align 1
  %conv.i.i = zext i16 %102 to i32
  %sub.i.i = add nuw nsw i32 %conv.i.i, 15
  %div2.i.i = lshr i32 %sub.i.i, 3
  %conv2.i = trunc i32 %div2.i.i to i16
  %103 = ptrtoint ptr %call9.i.i80 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv2.i, ptr %call9.i.i80, align 128
  %sadb_x_sec_exttype.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %98, i32 0, i32 1
  %104 = ptrtoint ptr %sadb_x_sec_exttype.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %sadb_x_sec_exttype.i, align 1
  %exttype.i = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i.i80, i32 0, i32 1
  %106 = ptrtoint ptr %exttype.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %exttype.i, align 2
  %sadb_x_ctx_doi.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %98, i32 0, i32 3
  %107 = ptrtoint ptr %sadb_x_ctx_doi.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %sadb_x_ctx_doi.i, align 1
  %ctx_doi.i = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i.i80, i32 0, i32 3
  %109 = ptrtoint ptr %ctx_doi.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %ctx_doi.i, align 1
  %sadb_x_ctx_alg.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %98, i32 0, i32 2
  %110 = ptrtoint ptr %sadb_x_ctx_alg.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %sadb_x_ctx_alg.i, align 1
  %ctx_alg.i = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i.i80, i32 0, i32 2
  %112 = ptrtoint ptr %ctx_alg.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %ctx_alg.i, align 4
  %ctx_len.i = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i.i80, i32 0, i32 4
  %113 = ptrtoint ptr %ctx_len.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %102, ptr %ctx_len.i, align 2
  %add.ptr.i85 = getelementptr %struct.xfrm_user_sec_ctx, ptr %call9.i.i80, i32 1
  %add.ptr4.i = getelementptr %struct.sadb_x_sec_ctx, ptr %98, i32 1
  %114 = call ptr @memcpy(ptr %add.ptr.i85, ptr %add.ptr4.i, i32 %conv.i.i)
  %call192.i = tail call i32 @security_xfrm_state_alloc(ptr noundef nonnull %call94.i, ptr noundef nonnull %call9.i.i80) #15
  tail call void @kfree(ptr noundef nonnull %call9.i.i80) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192.i)
  %tobool193.not.i = icmp eq i32 %call192.i, 0
  br i1 %tobool193.not.i, label %if.end191.i.if.end196.i_crit_edge, label %if.end191.i.out.i_crit_edge

if.end191.i.out.i_crit_edge:                      ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end191.i.if.end196.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.end191.i.if.end196.i_crit_edge, %if.end183.i.if.end196.i_crit_edge
  %115 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx63.i, align 4
  %117 = ptrtoint ptr %sadb_sa_auth684688.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %sadb_sa_auth684688.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool199.not.i = icmp eq i8 %118, 0
  br i1 %tobool199.not.i, label %if.end196.i.if.end240.i_crit_edge, label %if.then200.i

if.end196.i.if.end240.i_crit_edge:                ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end240.i

if.then200.i:                                     ; preds = %if.end196.i
  %conv202.i = zext i8 %118 to i32
  %call203.i = tail call ptr @xfrm_aalg_get_byid(i32 noundef %conv202.i) #15
  %tobool204.not.i = icmp eq ptr %call203.i, null
  br i1 %tobool204.not.i, label %if.then200.i.out.i_crit_edge, label %lor.lhs.false205.i

if.then200.i.out.i_crit_edge:                     ; preds = %if.then200.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

lor.lhs.false205.i:                               ; preds = %if.then200.i
  %pfkey_supported.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call203.i, i32 0, i32 2
  %119 = ptrtoint ptr %pfkey_supported.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load.i = load i8, ptr %pfkey_supported.i, align 4
  %120 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool206.not.i = icmp eq i8 %120, 0
  br i1 %tobool206.not.i, label %lor.lhs.false205.i.out.i_crit_edge, label %if.end208.i

lor.lhs.false205.i.out.i_crit_edge:               ; preds = %lor.lhs.false205.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end208.i:                                      ; preds = %lor.lhs.false205.i
  %tobool209.not.i = icmp eq ptr %116, null
  br i1 %tobool209.not.i, label %if.end208.i.if.end8.i.i_crit_edge, label %if.then210.i

if.end208.i.if.end8.i.i_crit_edge:                ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i

if.then210.i:                                     ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_key_bits211.i = getelementptr inbounds %struct.sadb_key, ptr %116, i32 0, i32 2
  %121 = ptrtoint ptr %sadb_key_bits211.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %sadb_key_bits211.i, align 1
  %conv212.i = zext i16 %122 to i32
  %add.i = add nuw nsw i32 %conv212.i, 7
  %div597.i = lshr i32 %add.i, 3
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then210.i, %if.end208.i.if.end8.i.i_crit_edge
  %keysize.0.i = phi i32 [ %div597.i, %if.then210.i ], [ 0, %if.end208.i.if.end8.i.i_crit_edge ]
  %add214.i = add nuw nsw i32 %keysize.0.i, 72
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add214.i, i32 noundef 3264) #19
  %aalg.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 16
  %123 = ptrtoint ptr %aalg.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call9.i.i, ptr %aalg.i, align 8
  %tobool217.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool217.not.i, label %if.end8.i.i.out.i_crit_edge, label %if.end219.i

if.end8.i.i.out.i_crit_edge:                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end219.i:                                      ; preds = %if.end8.i.i
  %124 = ptrtoint ptr %call203.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call203.i, align 4
  %call221.i = tail call ptr @strcpy(ptr noundef nonnull %call9.i.i, ptr noundef %125) #20
  %126 = ptrtoint ptr %aalg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %aalg.i, align 8
  %alg_key_len.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %alg_key_len.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %alg_key_len.i, align 4
  br i1 %tobool209.not.i, label %if.end219.i.cleanup236.i_crit_edge, label %if.then224.i

if.end219.i.cleanup236.i_crit_edge:               ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup236.i

if.then224.i:                                     ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_key_bits225.i = getelementptr inbounds %struct.sadb_key, ptr %116, i32 0, i32 2
  %129 = ptrtoint ptr %sadb_key_bits225.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 2)
  %130 = load i16, ptr %sadb_key_bits225.i, align 1
  %conv226.i = zext i16 %130 to i32
  %131 = ptrtoint ptr %aalg.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %aalg.i, align 8
  %alg_key_len228.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %alg_key_len228.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %conv226.i, ptr %alg_key_len228.i, align 4
  %134 = load ptr, ptr %aalg.i, align 8
  %alg_key.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %134, i32 0, i32 3
  %add.ptr.i = getelementptr %struct.sadb_key, ptr %116, i32 1
  %135 = call ptr @memcpy(ptr %alg_key.i, ptr %add.ptr.i, i32 %keysize.0.i)
  br label %cleanup236.i

cleanup236.i:                                     ; preds = %if.then224.i, %if.end219.i.cleanup236.i_crit_edge
  %uinfo.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call203.i, i32 0, i32 3
  %136 = ptrtoint ptr %uinfo.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %uinfo.i, align 4
  %conv232.i = zext i16 %137 to i32
  %138 = ptrtoint ptr %aalg.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %aalg.i, align 8
  %alg_trunc_len.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %alg_trunc_len.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %conv232.i, ptr %alg_trunc_len.i, align 4
  %141 = ptrtoint ptr %sadb_sa_auth684688.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %sadb_sa_auth684688.i, align 1
  %aalgo.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 14, i32 3
  %143 = ptrtoint ptr %aalgo.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %aalgo.i, align 2
  br label %if.end240.i

if.end240.i:                                      ; preds = %cleanup236.i, %if.end196.i.if.end240.i_crit_edge
  %144 = ptrtoint ptr %sadb_sa_encrypt56.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %sadb_sa_encrypt56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool242.not.i = icmp eq i8 %145, 0
  br i1 %tobool242.not.i, label %if.end240.i.if.end332.i_crit_edge, label %if.then243.i

if.end240.i.if.end332.i_crit_edge:                ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end332.i

if.then243.i:                                     ; preds = %if.end240.i
  %146 = ptrtoint ptr %sadb_msg_satype.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %sadb_msg_satype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %147)
  %cmp246.i = icmp eq i8 %147, 9
  %conv251.i = zext i8 %145 to i32
  br i1 %cmp246.i, label %if.then248.i, label %if.else.i

if.then248.i:                                     ; preds = %if.then243.i
  %call252.i = tail call ptr @xfrm_calg_get_byid(i32 noundef %conv251.i) #15
  %tobool253.not.i = icmp eq ptr %call252.i, null
  br i1 %tobool253.not.i, label %if.then248.i.out.i_crit_edge, label %lor.lhs.false254.i

if.then248.i.out.i_crit_edge:                     ; preds = %if.then248.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

lor.lhs.false254.i:                               ; preds = %if.then248.i
  %pfkey_supported255.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call252.i, i32 0, i32 2
  %148 = ptrtoint ptr %pfkey_supported255.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load256.i = load i8, ptr %pfkey_supported255.i, align 4
  %149 = and i8 %bf.load256.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool259.not.i = icmp eq i8 %149, 0
  br i1 %tobool259.not.i, label %lor.lhs.false254.i.out.i_crit_edge, label %if.end261.i

lor.lhs.false254.i.out.i_crit_edge:               ; preds = %lor.lhs.false254.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end261.i:                                      ; preds = %lor.lhs.false254.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %150 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i616.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %150, i32 noundef 3264, i32 noundef 68) #21
  %calg.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 18
  %151 = ptrtoint ptr %calg.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call7.i616.i, ptr %calg.i, align 8
  %tobool264.not.i = icmp eq ptr %call7.i616.i, null
  br i1 %tobool264.not.i, label %if.end261.i.out.i_crit_edge, label %cleanup274.i

if.end261.i.out.i_crit_edge:                      ; preds = %if.end261.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

cleanup274.i:                                     ; preds = %if.end261.i
  call void @__sanitizer_cov_trace_pc() #17
  %152 = ptrtoint ptr %call252.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %call252.i, align 4
  %call271.i = tail call ptr @strcpy(ptr noundef nonnull %call7.i616.i, ptr noundef %153) #20
  %154 = ptrtoint ptr %sadb_sa_encrypt56.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %sadb_sa_encrypt56.i, align 1
  %calgo.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 14, i32 5
  %156 = ptrtoint ptr %calgo.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %calgo.i, align 4
  br label %if.end332.i

if.else.i:                                        ; preds = %if.then243.i
  %call281.i = tail call ptr @xfrm_ealg_get_byid(i32 noundef %conv251.i) #15
  %tobool282.not.i = icmp eq ptr %call281.i, null
  br i1 %tobool282.not.i, label %if.else.i.out.i_crit_edge, label %lor.lhs.false283.i

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

lor.lhs.false283.i:                               ; preds = %if.else.i
  %pfkey_supported284.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call281.i, i32 0, i32 2
  %157 = ptrtoint ptr %pfkey_supported284.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %bf.load285.i = load i8, ptr %pfkey_supported284.i, align 4
  %158 = and i8 %bf.load285.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool288.not.i = icmp eq i8 %158, 0
  br i1 %tobool288.not.i, label %lor.lhs.false283.i.out.i_crit_edge, label %if.end290.i

lor.lhs.false283.i.out.i_crit_edge:               ; preds = %lor.lhs.false283.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end290.i:                                      ; preds = %lor.lhs.false283.i
  %159 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx78.i, align 4
  %tobool292.not.i = icmp eq ptr %160, null
  br i1 %tobool292.not.i, label %if.end290.i.if.end8.i642.i_crit_edge, label %if.then293.i

if.end290.i.if.end8.i642.i_crit_edge:             ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i642.i

if.then293.i:                                     ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_key_bits294.i = getelementptr inbounds %struct.sadb_key, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %sadb_key_bits294.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 2)
  %162 = load i16, ptr %sadb_key_bits294.i, align 1
  %conv295.i = zext i16 %162 to i32
  %add296.i = add nuw nsw i32 %conv295.i, 7
  %div297596.i = lshr i32 %add296.i, 3
  br label %if.end8.i642.i

if.end8.i642.i:                                   ; preds = %if.then293.i, %if.end290.i.if.end8.i642.i_crit_edge
  %keysize277.0.i = phi i32 [ %div297596.i, %if.then293.i ], [ 0, %if.end290.i.if.end8.i642.i_crit_edge ]
  %add299.i = add nuw nsw i32 %keysize277.0.i, 68
  %call9.i641.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add299.i, i32 noundef 3264) #19
  %ealg.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 17
  %163 = ptrtoint ptr %ealg.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call9.i641.i, ptr %ealg.i, align 4
  %tobool302.not.i = icmp eq ptr %call9.i641.i, null
  br i1 %tobool302.not.i, label %if.end8.i642.i.out.i_crit_edge, label %if.end304.i

if.end8.i642.i.out.i_crit_edge:                   ; preds = %if.end8.i642.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end304.i:                                      ; preds = %if.end8.i642.i
  %164 = ptrtoint ptr %call281.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %call281.i, align 4
  %call309.i = tail call ptr @strcpy(ptr noundef nonnull %call9.i641.i, ptr noundef %165) #20
  %166 = ptrtoint ptr %ealg.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ealg.i, align 4
  %alg_key_len311.i = getelementptr inbounds %struct.xfrm_algo, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %alg_key_len311.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %alg_key_len311.i, align 4
  br i1 %tobool292.not.i, label %if.end304.i.cleanup327.i_crit_edge, label %if.then313.i

if.end304.i.cleanup327.i_crit_edge:               ; preds = %if.end304.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup327.i

if.then313.i:                                     ; preds = %if.end304.i
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_key_bits314.i = getelementptr inbounds %struct.sadb_key, ptr %160, i32 0, i32 2
  %169 = ptrtoint ptr %sadb_key_bits314.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %sadb_key_bits314.i, align 1
  %conv315.i = zext i16 %170 to i32
  %171 = ptrtoint ptr %ealg.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ealg.i, align 4
  %alg_key_len317.i = getelementptr inbounds %struct.xfrm_algo, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %alg_key_len317.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %conv315.i, ptr %alg_key_len317.i, align 4
  %174 = load ptr, ptr %ealg.i, align 4
  %alg_key319.i = getelementptr inbounds %struct.xfrm_algo, ptr %174, i32 0, i32 2
  %add.ptr321.i = getelementptr %struct.sadb_key, ptr %160, i32 1
  %175 = call ptr @memcpy(ptr %alg_key319.i, ptr %add.ptr321.i, i32 %keysize277.0.i)
  br label %cleanup327.i

cleanup327.i:                                     ; preds = %if.then313.i, %if.end304.i.cleanup327.i_crit_edge
  %176 = ptrtoint ptr %sadb_sa_encrypt56.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %sadb_sa_encrypt56.i, align 1
  %ealgo.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 14, i32 4
  %178 = ptrtoint ptr %ealgo.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %ealgo.i, align 1
  %uinfo325.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call281.i, i32 0, i32 3
  %179 = ptrtoint ptr %uinfo325.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %uinfo325.i, align 4
  %geniv326.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 20
  %181 = ptrtoint ptr %geniv326.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %180, ptr %geniv326.i, align 8
  br label %if.end332.i

if.end332.i:                                      ; preds = %cleanup327.i, %cleanup274.i, %if.end240.i.if.end332.i_crit_edge
  %182 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx1.i, align 4
  %saddr.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 14, i32 8
  %add.ptr.i654.i = getelementptr %struct.sadb_address, ptr %183, i32 1
  %184 = ptrtoint ptr %add.ptr.i654.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %add.ptr.i654.i, align 2
  %186 = zext i16 %185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %185, label %if.end332.i.pfkey_sadb_addr2xfrm_addr.exit.i_crit_edge [
    i16 2, label %sw.bb.i.i.i
    i16 10, label %sw.bb1.i.i.i
  ]

if.end332.i.pfkey_sadb_addr2xfrm_addr.exit.i_crit_edge: ; preds = %if.end332.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_sadb_addr2xfrm_addr.exit.i

sw.bb.i.i.i:                                      ; preds = %if.end332.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i.i = getelementptr %struct.sadb_address, ptr %183, i32 1, i32 2
  %187 = ptrtoint ptr %sin_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %sin_addr.i.i.i, align 4
  %189 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %saddr.i, align 4
  br label %pfkey_sadb_addr2xfrm_addr.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.end332.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i.i = getelementptr %struct.sadb_address, ptr %183, i32 2
  %190 = call ptr @memcpy(ptr %saddr.i, ptr %sin6_addr.i.i.i, i32 16)
  br label %pfkey_sadb_addr2xfrm_addr.exit.i

pfkey_sadb_addr2xfrm_addr.exit.i:                 ; preds = %sw.bb1.i.i.i, %sw.bb.i.i.i, %if.end332.i.pfkey_sadb_addr2xfrm_addr.exit.i_crit_edge
  %retval.0.i.i655.i = phi i16 [ 10, %sw.bb1.i.i.i ], [ 2, %sw.bb.i.i.i ], [ 0, %if.end332.i.pfkey_sadb_addr2xfrm_addr.exit.i_crit_edge ]
  %family.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 14, i32 7
  %191 = ptrtoint ptr %family.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %retval.0.i.i655.i, ptr %family.i, align 2
  %192 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx2.i, align 4
  %add.ptr.i656.i = getelementptr %struct.sadb_address, ptr %193, i32 1
  %194 = ptrtoint ptr %add.ptr.i656.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %add.ptr.i656.i, align 2
  %196 = zext i16 %195 to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %195, label %pfkey_sadb_addr2xfrm_addr.exit.i.pfkey_sadb_addr2xfrm_addr.exit662.i_crit_edge [
    i16 2, label %sw.bb.i.i658.i
    i16 10, label %sw.bb1.i.i660.i
  ]

pfkey_sadb_addr2xfrm_addr.exit.i.pfkey_sadb_addr2xfrm_addr.exit662.i_crit_edge: ; preds = %pfkey_sadb_addr2xfrm_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_sadb_addr2xfrm_addr.exit662.i

sw.bb.i.i658.i:                                   ; preds = %pfkey_sadb_addr2xfrm_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i657.i = getelementptr %struct.sadb_address, ptr %193, i32 1, i32 2
  %197 = ptrtoint ptr %sin_addr.i.i657.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %sin_addr.i.i657.i, align 4
  %199 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %id.i, align 4
  br label %pfkey_sadb_addr2xfrm_addr.exit662.i

sw.bb1.i.i660.i:                                  ; preds = %pfkey_sadb_addr2xfrm_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i659.i = getelementptr %struct.sadb_address, ptr %193, i32 2
  %200 = call ptr @memcpy(ptr %id.i, ptr %sin6_addr.i.i659.i, i32 16)
  br label %pfkey_sadb_addr2xfrm_addr.exit662.i

pfkey_sadb_addr2xfrm_addr.exit662.i:              ; preds = %sw.bb1.i.i660.i, %sw.bb.i.i658.i, %pfkey_sadb_addr2xfrm_addr.exit.i.pfkey_sadb_addr2xfrm_addr.exit662.i_crit_edge
  %arrayidx341.i = getelementptr ptr, ptr %ext_hdrs, i32 18
  %201 = ptrtoint ptr %arrayidx341.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx341.i, align 4
  %tobool342.not.i = icmp eq ptr %202, null
  br i1 %tobool342.not.i, label %pfkey_sadb_addr2xfrm_addr.exit662.i.if.end359.i_crit_edge, label %if.then343.i

pfkey_sadb_addr2xfrm_addr.exit662.i.if.end359.i_crit_edge: ; preds = %pfkey_sadb_addr2xfrm_addr.exit662.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end359.i

if.then343.i:                                     ; preds = %pfkey_sadb_addr2xfrm_addr.exit662.i
  %sadb_x_sa2_mode.i = getelementptr inbounds %struct.sadb_x_sa2, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %sadb_x_sa2_mode.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %sadb_x_sa2_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %204)
  %205 = icmp ult i8 %204, 4
  br i1 %205, label %switch.lookup, label %if.then343.i.out.i_crit_edge

if.then343.i.out.i_crit_edge:                     ; preds = %if.then343.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

switch.lookup:                                    ; preds = %if.then343.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.cast = zext i8 %204 to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 67174400, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %mode353.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 14, i32 1
  %206 = ptrtoint ptr %mode353.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %switch.masked, ptr %mode353.i, align 4
  %sadb_x_sa2_reqid.i = getelementptr inbounds %struct.sadb_x_sa2, ptr %202, i32 0, i32 6
  %207 = ptrtoint ptr %sadb_x_sa2_reqid.i to i32
  call void @__asan_loadN_noabort(i32 %207, i32 4)
  %208 = load i32, ptr %sadb_x_sa2_reqid.i, align 1
  %209 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %props.i, align 4
  br label %if.end359.i

if.end359.i:                                      ; preds = %switch.lookup, %pfkey_sadb_addr2xfrm_addr.exit662.i.if.end359.i_crit_edge
  %arrayidx360.i = getelementptr ptr, ptr %ext_hdrs, i32 6
  %210 = ptrtoint ptr %arrayidx360.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx360.i, align 4
  %tobool361.not.i = icmp eq ptr %211, null
  br i1 %tobool361.not.i, label %if.end359.i.if.end370.i_crit_edge, label %if.then362.i

if.end359.i.if.end370.i_crit_edge:                ; preds = %if.end359.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end370.i

if.then362.i:                                     ; preds = %if.end359.i
  %saddr364.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 8, i32 1
  %add.ptr.i667.i = getelementptr %struct.sadb_address, ptr %211, i32 1
  %212 = ptrtoint ptr %add.ptr.i667.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %add.ptr.i667.i, align 2
  %214 = zext i16 %213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %213, label %if.then362.i.pfkey_sadb_addr2xfrm_addr.exit673.i_crit_edge [
    i16 2, label %sw.bb.i.i669.i
    i16 10, label %sw.bb1.i.i671.i
  ]

if.then362.i.pfkey_sadb_addr2xfrm_addr.exit673.i_crit_edge: ; preds = %if.then362.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_sadb_addr2xfrm_addr.exit673.i

sw.bb.i.i669.i:                                   ; preds = %if.then362.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i668.i = getelementptr %struct.sadb_address, ptr %211, i32 1, i32 2
  %215 = ptrtoint ptr %sin_addr.i.i668.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %sin_addr.i.i668.i, align 4
  %217 = ptrtoint ptr %saddr364.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %saddr364.i, align 4
  br label %pfkey_sadb_addr2xfrm_addr.exit673.i

sw.bb1.i.i671.i:                                  ; preds = %if.then362.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i670.i = getelementptr %struct.sadb_address, ptr %211, i32 2
  %218 = call ptr @memcpy(ptr %saddr364.i, ptr %sin6_addr.i.i670.i, i32 16)
  br label %pfkey_sadb_addr2xfrm_addr.exit673.i

pfkey_sadb_addr2xfrm_addr.exit673.i:              ; preds = %sw.bb1.i.i671.i, %sw.bb.i.i669.i, %if.then362.i.pfkey_sadb_addr2xfrm_addr.exit673.i_crit_edge
  %retval.0.i.i672.i = phi i16 [ 10, %sw.bb1.i.i671.i ], [ 2, %sw.bb.i.i669.i ], [ 0, %if.then362.i.pfkey_sadb_addr2xfrm_addr.exit673.i_crit_edge ]
  %family368.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 8, i32 6
  %219 = ptrtoint ptr %family368.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %retval.0.i.i672.i, ptr %family368.i, align 4
  %sadb_address_prefixlen.i = getelementptr inbounds %struct.sadb_address, ptr %211, i32 0, i32 3
  %220 = ptrtoint ptr %sadb_address_prefixlen.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %sadb_address_prefixlen.i, align 1
  %prefixlen_s.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 8, i32 8
  %222 = ptrtoint ptr %prefixlen_s.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %prefixlen_s.i, align 1
  br label %if.end370.i

if.end370.i:                                      ; preds = %pfkey_sadb_addr2xfrm_addr.exit673.i, %if.end359.i.if.end370.i_crit_edge
  %family372.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 8, i32 6
  %223 = ptrtoint ptr %family372.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %family372.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %224)
  %tobool373.not.i = icmp eq i16 %224, 0
  br i1 %tobool373.not.i, label %if.then374.i, label %if.end370.i.if.end379.i_crit_edge

if.end370.i.if.end379.i_crit_edge:                ; preds = %if.end370.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end379.i

if.then374.i:                                     ; preds = %if.end370.i
  call void @__sanitizer_cov_trace_pc() #17
  %225 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %family.i, align 2
  %227 = ptrtoint ptr %family372.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %226, ptr %family372.i, align 4
  br label %if.end379.i

if.end379.i:                                      ; preds = %if.then374.i, %if.end370.i.if.end379.i_crit_edge
  %arrayidx380.i = getelementptr ptr, ptr %ext_hdrs, i32 19
  %228 = ptrtoint ptr %arrayidx380.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx380.i, align 4
  %tobool381.not.i = icmp eq ptr %229, null
  br i1 %tobool381.not.i, label %if.end379.i.if.end407.i_crit_edge, label %if.then382.i

if.end379.i.if.end407.i_crit_edge:                ; preds = %if.end379.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end407.i

if.then382.i:                                     ; preds = %if.end379.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %230 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i650.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %230, i32 noundef 3264, i32 noundef 24) #21
  %encap.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 24
  %231 = ptrtoint ptr %encap.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call7.i650.i, ptr %encap.i, align 8
  %tobool385.not.i = icmp eq ptr %call7.i650.i, null
  br i1 %tobool385.not.i, label %if.then382.i.out.i_crit_edge, label %if.end387.i

if.then382.i.out.i_crit_edge:                     ; preds = %if.then382.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end387.i:                                      ; preds = %if.then382.i
  %232 = ptrtoint ptr %arrayidx380.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx380.i, align 4
  %sadb_x_nat_t_type_type.i = getelementptr inbounds %struct.sadb_x_nat_t_type, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %sadb_x_nat_t_type_type.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %sadb_x_nat_t_type_type.i, align 1
  %conv390.i = zext i8 %235 to i16
  %236 = ptrtoint ptr %call7.i650.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %conv390.i, ptr %call7.i650.i, align 8
  %arrayidx391.i = getelementptr ptr, ptr %ext_hdrs, i32 20
  %237 = ptrtoint ptr %arrayidx391.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx391.i, align 4
  %tobool392.not.i = icmp eq ptr %238, null
  br i1 %tobool392.not.i, label %if.end387.i.if.end395.i_crit_edge, label %if.then393.i

if.end387.i.if.end395.i_crit_edge:                ; preds = %if.end387.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end395.i

if.then393.i:                                     ; preds = %if.end387.i
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_x_nat_t_port_port.i = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %238, i32 0, i32 2
  %239 = ptrtoint ptr %sadb_x_nat_t_port_port.i to i32
  call void @__asan_loadN_noabort(i32 %239, i32 2)
  %240 = load i16, ptr %sadb_x_nat_t_port_port.i, align 1
  %encap_sport.i = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %call7.i650.i, i32 0, i32 1
  %241 = ptrtoint ptr %encap_sport.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %240, ptr %encap_sport.i, align 2
  br label %if.end395.i

if.end395.i:                                      ; preds = %if.then393.i, %if.end387.i.if.end395.i_crit_edge
  %arrayidx396.i = getelementptr ptr, ptr %ext_hdrs, i32 21
  %242 = ptrtoint ptr %arrayidx396.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %arrayidx396.i, align 4
  %tobool397.not.i = icmp eq ptr %243, null
  br i1 %tobool397.not.i, label %if.end395.i.cleanup403.thread.i_crit_edge, label %if.then398.i

if.end395.i.cleanup403.thread.i_crit_edge:        ; preds = %if.end395.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup403.thread.i

if.then398.i:                                     ; preds = %if.end395.i
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_x_nat_t_port_port401.i = getelementptr inbounds %struct.sadb_x_nat_t_port, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %sadb_x_nat_t_port_port401.i to i32
  call void @__asan_loadN_noabort(i32 %244, i32 2)
  %245 = load i16, ptr %sadb_x_nat_t_port_port401.i, align 1
  %encap_dport.i = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %call7.i650.i, i32 0, i32 2
  %246 = ptrtoint ptr %encap_dport.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %245, ptr %encap_dport.i, align 4
  br label %cleanup403.thread.i

cleanup403.thread.i:                              ; preds = %if.then398.i, %if.end395.i.cleanup403.thread.i_crit_edge
  %encap_oa.i = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %call7.i650.i, i32 0, i32 3
  %247 = call ptr @memset(ptr %encap_oa.i, i32 0, i32 16)
  br label %if.end407.i

if.end407.i:                                      ; preds = %cleanup403.thread.i, %if.end379.i.if.end407.i_crit_edge
  %call408.i = tail call i32 @xfrm_init_state(ptr noundef nonnull %call94.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call408.i)
  %tobool409.not.i = icmp eq i32 %call408.i, 0
  br i1 %tobool409.not.i, label %if.end411.i, label %if.end407.i.out.i_crit_edge

if.end407.i.out.i_crit_edge:                      ; preds = %if.end407.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end411.i:                                      ; preds = %if.end407.i
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_msg_seq.i = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 6
  %248 = ptrtoint ptr %sadb_msg_seq.i to i32
  call void @__asan_loadN_noabort(i32 %248, i32 4)
  %249 = load i32, ptr %sadb_msg_seq.i, align 1
  %seq.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 13, i32 4
  %250 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %seq.i, align 4
  br label %pfkey_msg2xfrm_state.exit

out.i:                                            ; preds = %if.end407.i.out.i_crit_edge, %if.then382.i.out.i_crit_edge, %if.then343.i.out.i_crit_edge, %if.end8.i642.i.out.i_crit_edge, %lor.lhs.false283.i.out.i_crit_edge, %if.else.i.out.i_crit_edge, %if.end261.i.out.i_crit_edge, %lor.lhs.false254.i.out.i_crit_edge, %if.then248.i.out.i_crit_edge, %if.end8.i.i.out.i_crit_edge, %lor.lhs.false205.i.out.i_crit_edge, %if.then200.i.out.i_crit_edge, %if.end191.i.out.i_crit_edge, %if.then187.i.out.i_crit_edge
  %err.9.i = phi i32 [ %call408.i, %if.end407.i.out.i_crit_edge ], [ -22, %if.then343.i.out.i_crit_edge ], [ -12, %if.then382.i.out.i_crit_edge ], [ %call192.i, %if.end191.i.out.i_crit_edge ], [ -12, %if.end8.i.i.out.i_crit_edge ], [ -38, %if.then200.i.out.i_crit_edge ], [ -38, %lor.lhs.false205.i.out.i_crit_edge ], [ -12, %if.end261.i.out.i_crit_edge ], [ -38, %if.then248.i.out.i_crit_edge ], [ -38, %lor.lhs.false254.i.out.i_crit_edge ], [ -12, %if.end8.i642.i.out.i_crit_edge ], [ -38, %if.else.i.out.i_crit_edge ], [ -38, %lor.lhs.false283.i.out.i_crit_edge ], [ -105, %if.then187.i.out.i_crit_edge ]
  %state.i = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 13, i32 1
  %251 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 5, ptr %state.i, align 8
  %refcnt.i46 = getelementptr inbounds %struct.xfrm_state, ptr %call94.i, i32 0, i32 5
  %call.i.i.i.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i46, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %refcnt.i46, i32 1, i32 3, i32 1) #15
  %252 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i46, ptr %refcnt.i46, i32 1, ptr elementtype(i32) %refcnt.i46) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i48 = extractvalue { i32, i32, i32 } %252, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i48)
  %cmp.i.i.i.i49 = icmp eq i32 %asmresult.i.i.i.i.i.i.i48, 1
  br i1 %cmp.i.i.i.i49, label %if.then.i53, label %if.end5.i.i.i.i51

if.end5.i.i.i.i51:                                ; preds = %out.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i48)
  %.not.i.i.i.i50 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i48, 0
  br i1 %.not.i.i.i.i50, label %if.end5.i.i.i.i51.xfrm_state_put.exit55_crit_edge, label %if.then10.i.i.i.i52, !prof !112

if.end5.i.i.i.i51.xfrm_state_put.exit55_crit_edge: ; preds = %if.end5.i.i.i.i51
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_state_put.exit55

if.then10.i.i.i.i52:                              ; preds = %if.end5.i.i.i.i51
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i46, i32 noundef 3) #15
  br label %xfrm_state_put.exit55

if.then.i53:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call94.i, i1 noundef zeroext false) #15
  br label %xfrm_state_put.exit55

xfrm_state_put.exit55:                            ; preds = %if.then.i53, %if.then10.i.i.i.i52, %if.end5.i.i.i.i51.xfrm_state_put.exit55_crit_edge
  %253 = inttoptr i32 %err.9.i to ptr
  br label %pfkey_msg2xfrm_state.exit

pfkey_msg2xfrm_state.exit:                        ; preds = %xfrm_state_put.exit55, %if.end411.i
  %retval.0.i = phi ptr [ %253, %xfrm_state_put.exit55 ], [ %call94.i, %if.end411.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %pfkey_msg2xfrm_state.exit.if.then_crit_edge, label %if.end

pfkey_msg2xfrm_state.exit.if.then_crit_edge:      ; preds = %pfkey_msg2xfrm_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %pfkey_msg2xfrm_state.exit.if.then_crit_edge, %if.end93.i.if.then_crit_edge, %land.lhs.true86.i.if.then_crit_edge, %land.lhs.true71.i.if.then_crit_edge, %lor.lhs.false55.i.if.then_crit_edge, %land.lhs.true51.i.if.then_crit_edge, %if.end42.thread.i.if.then_crit_edge, %if.end42.i.if.then_crit_edge, %if.end34.i.if.then_crit_edge, %if.end20.i.if.then_crit_edge, %land.lhs.true15.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %present_and_same_family.exit.i.if.then_crit_edge, %if.end.i652.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i89 = phi ptr [ %retval.0.i, %pfkey_msg2xfrm_state.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i652.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.i.if.then_crit_edge ], [ inttoptr (i32 -105 to ptr), %if.end93.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true86.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true71.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end42.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true51.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false55.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end42.thread.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end34.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end20.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true15.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %present_and_same_family.exit.i.if.then_crit_edge ]
  %254 = ptrtoint ptr %retval.0.i89 to i32
  br label %cleanup

if.end:                                           ; preds = %pfkey_msg2xfrm_state.exit
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %retval.0.i, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %255 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !119
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %255, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !120

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %256 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %256)
  %.not.i.i.i.i = icmp sgt i32 %256, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.xfrm_state_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !112

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.xfrm_state_hold.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_state_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %xfrm_state_hold.exit

xfrm_state_hold.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.xfrm_state_hold.exit_crit_edge
  %sadb_msg_type = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 1
  %257 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %sadb_msg_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %258)
  %cmp = icmp eq i8 %258, 3
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %xfrm_state_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = tail call i32 @xfrm_state_add(ptr noundef %retval.0.i) #15
  br label %if.end8

if.else:                                          ; preds = %xfrm_state_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 @xfrm_state_update(ptr noundef %retval.0.i) #15
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %err.0 = phi i32 [ %call6, %if.then5 ], [ %call7, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp9 = icmp slt i32 %err.0, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %state = getelementptr inbounds %struct.xfrm_state, ptr %retval.0.i, i32 0, i32 13, i32 1
  %259 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 5, ptr %state, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %260 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i40 = extractvalue { i32, i32, i32 } %260, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i40)
  %cmp.i.i.i41 = icmp slt i32 %asmresult.i.i.i.i.i.i40, 2
  br i1 %cmp.i.i.i41, label %if.then3.i.i.i, label %if.then11.out_crit_edge, !prof !120

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then3.i.i.i:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 4) #15
  br label %out

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %261 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %sadb_msg_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %262)
  %cmp15 = icmp eq i8 %262, 3
  %. = select i1 %cmp15, i32 16, i32 26
  %263 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %., ptr %4, align 4
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 6
  %264 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_loadN_noabort(i32 %264, i32 4)
  %265 = load i32, ptr %sadb_msg_seq, align 1
  %266 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %2, align 4
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 7
  %267 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_loadN_noabort(i32 %267, i32 4)
  %268 = load i32, ptr %sadb_msg_pid, align 1
  %269 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %268, ptr %3, align 4
  call void @km_state_notify(ptr noundef %retval.0.i, ptr noundef nonnull %c) #15
  br label %out

out:                                              ; preds = %if.end12, %if.then3.i.i.i, %if.then11.out_crit_edge
  %call.i.i.i.i.i.i43 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %270 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %270, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i44 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i44, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !112

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  call void @__xfrm_state_destroy(ptr noundef %retval.0.i, i1 noundef zeroext false) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %254, %if.then ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_delete(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %ext_hdrs) #2 align 64 {
entry:
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #15
  %2 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %3 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %4 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %5 = call ptr @memset(ptr %c, i32 255, i32 20)
  %6 = ptrtoint ptr %ext_hdrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext_hdrs, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %ext_hdrs, i32 4
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr ptr, ptr %ext_hdrs, i32 5
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %tobool1.not.i = icmp eq ptr %11, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr %struct.sadb_address, ptr %9, i32 1
  %add.ptr2.i = getelementptr %struct.sadb_address, ptr %11, i32 1
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %14 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp.not.i = icmp eq i16 %13, %15
  br i1 %cmp.not.i, label %present_and_same_family.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

present_and_same_family.exit:                     ; preds = %if.end.i
  %16 = add i16 %13, -2
  %switch.and.i = and i16 %16, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i)
  %switch.selectcmp.i.not = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp.i.not, label %if.end.i37, label %present_and_same_family.exit.cleanup_crit_edge

present_and_same_family.exit.cleanup_crit_edge:   ; preds = %present_and_same_family.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i37:                                       ; preds = %present_and_same_family.exit
  %sadb_msg_satype.i = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 3
  %17 = ptrtoint ptr %sadb_msg_satype.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sadb_msg_satype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %18)
  %19 = icmp ult i8 %18, 10
  br i1 %19, label %switch.hole_check, label %if.end.i37.cleanup_crit_edge

if.end.i37.cleanup_crit_edge:                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.hole_check:                                ; preds = %if.end.i37
  %switch.maskindex = zext i8 %18 to i16
  %switch.shifted = lshr i16 525, %switch.maskindex
  %20 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %switch.lobit.not = icmp eq i16 %20, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %21 = sext i8 %18 to i32
  %switch.gep = getelementptr inbounds [10 x i8], ptr @switch.table.pfkey_delete, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %22)
  %switch.load = load i8, ptr %switch.gep, align 1
  %23 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr2.i, align 2
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %24, label %switch.lookup.cleanup_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb12.i
  ]

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i = getelementptr %struct.sadb_address, ptr %11, i32 1, i32 2
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i = getelementptr %struct.sadb_address, ptr %11, i32 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb12.i, %sw.bb.i
  %xaddr.0.i = phi ptr [ %sin6_addr.i, %sw.bb12.i ], [ %sin_addr.i, %sw.bb.i ]
  %tobool.not.i39 = icmp eq ptr %xaddr.0.i, null
  br i1 %tobool.not.i39, label %sw.epilog.i.cleanup_crit_edge, label %pfkey_xfrm_state_lookup.exit

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

pfkey_xfrm_state_lookup.exit:                     ; preds = %sw.epilog.i
  %sadb_sa_spi.i = getelementptr inbounds %struct.sadb_sa, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %sadb_sa_spi.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %sadb_sa_spi.i, align 1
  %call17.i = tail call ptr @xfrm_state_lookup(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %xaddr.0.i, i32 noundef %27, i8 noundef zeroext %switch.load, i16 noundef zeroext %24) #15
  %cmp = icmp eq ptr %call17.i, null
  br i1 %cmp, label %pfkey_xfrm_state_lookup.exit.cleanup_crit_edge, label %if.end7

pfkey_xfrm_state_lookup.exit.cleanup_crit_edge:   ; preds = %pfkey_xfrm_state_lookup.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %pfkey_xfrm_state_lookup.exit
  %call8 = tail call i32 @security_xfrm_state_delete(ptr noundef nonnull %call17.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end11:                                         ; preds = %if.end7
  %tunnel_users.i = getelementptr inbounds %struct.xfrm_state, ptr %call17.i, i32 0, i32 28
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tunnel_users.i, i32 noundef 4) #15
  %28 = ptrtoint ptr %tunnel_users.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %tunnel_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool13.not = icmp eq i32 %29, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @xfrm_state_delete(ptr noundef nonnull %call17.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.out_crit_edge, label %if.end19

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 6
  %30 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %sadb_msg_seq, align 1
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %2, align 4
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 7
  %33 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %sadb_msg_pid, align 1
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %3, align 4
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 17, ptr %4, align 4
  call void @km_state_notify(ptr noundef nonnull %call17.i, ptr noundef nonnull %c) #15
  br label %out

out:                                              ; preds = %if.end19, %if.end15.out_crit_edge, %if.end11.out_crit_edge, %if.end7.out_crit_edge
  %err.0 = phi i32 [ %call8, %if.end7.out_crit_edge ], [ %call16, %if.end15.out_crit_edge ], [ %call16, %if.end19 ], [ -1, %if.end11.out_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call17.i, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !112

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  call void @__xfrm_state_destroy(ptr noundef nonnull %call17.i, i1 noundef zeroext false) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %pfkey_xfrm_state_lookup.exit.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %if.end.i37.cleanup_crit_edge, %present_and_same_family.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %present_and_same_family.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -3, %pfkey_xfrm_state_lookup.exit.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -3, %sw.epilog.i.cleanup_crit_edge ], [ -3, %if.end.i37.cleanup_crit_edge ], [ -3, %switch.lookup.cleanup_crit_edge ], [ -3, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_get(ptr noundef %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %ext_hdrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = ptrtoint ptr %ext_hdrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_hdrs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %ext_hdrs, i32 4
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr ptr, ptr %ext_hdrs, i32 5
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %tobool1.not.i = icmp eq ptr %7, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr %struct.sadb_address, ptr %5, i32 1
  %add.ptr2.i = getelementptr %struct.sadb_address, ptr %7, i32 1
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %10 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp.not.i = icmp eq i16 %9, %11
  br i1 %cmp.not.i, label %present_and_same_family.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

present_and_same_family.exit:                     ; preds = %if.end.i
  %12 = add i16 %9, -2
  %switch.and.i = and i16 %12, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i)
  %switch.selectcmp.i.not = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp.i.not, label %if.end.i44, label %present_and_same_family.exit.cleanup_crit_edge

present_and_same_family.exit.cleanup_crit_edge:   ; preds = %present_and_same_family.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i44:                                       ; preds = %present_and_same_family.exit
  %sadb_msg_satype.i = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 3
  %13 = ptrtoint ptr %sadb_msg_satype.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sadb_msg_satype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %15 = icmp ult i8 %14, 10
  br i1 %15, label %switch.hole_check, label %if.end.i44.cleanup_crit_edge

if.end.i44.cleanup_crit_edge:                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.hole_check:                                ; preds = %if.end.i44
  %switch.maskindex = zext i8 %14 to i16
  %switch.shifted = lshr i16 525, %switch.maskindex
  %16 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %switch.lobit.not = icmp eq i16 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %17 = sext i8 %14 to i32
  %switch.gep = getelementptr inbounds [10 x i8], ptr @switch.table.pfkey_get, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %18)
  %switch.load = load i8, ptr %switch.gep, align 1
  %19 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr2.i, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %20, label %switch.lookup.cleanup_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb12.i
  ]

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i = getelementptr %struct.sadb_address, ptr %7, i32 1, i32 2
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i = getelementptr %struct.sadb_address, ptr %7, i32 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb12.i, %sw.bb.i
  %xaddr.0.i = phi ptr [ %sin6_addr.i, %sw.bb12.i ], [ %sin_addr.i, %sw.bb.i ]
  %tobool.not.i46 = icmp eq ptr %xaddr.0.i, null
  br i1 %tobool.not.i46, label %sw.epilog.i.cleanup_crit_edge, label %pfkey_xfrm_state_lookup.exit

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

pfkey_xfrm_state_lookup.exit:                     ; preds = %sw.epilog.i
  %sadb_sa_spi.i = getelementptr inbounds %struct.sadb_sa, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %sadb_sa_spi.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %sadb_sa_spi.i, align 1
  %call17.i = tail call ptr @xfrm_state_lookup(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %xaddr.0.i, i32 noundef %23, i8 noundef zeroext %switch.load, i16 noundef zeroext %20) #15
  %cmp = icmp eq ptr %call17.i, null
  br i1 %cmp, label %pfkey_xfrm_state_lookup.exit.cleanup_crit_edge, label %if.end7

pfkey_xfrm_state_lookup.exit.cleanup_crit_edge:   ; preds = %pfkey_xfrm_state_lookup.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %pfkey_xfrm_state_lookup.exit
  %call.i = tail call fastcc ptr @__pfkey_xfrm_state2msg(ptr noundef nonnull %call17.i, i32 noundef 1, i32 noundef 3) #15
  %proto9 = getelementptr inbounds %struct.xfrm_state, ptr %call17.i, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %proto9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %proto9, align 4
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call17.i, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.xfrm_state_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !112

if.end5.i.i.i.i.xfrm_state_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_state_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %xfrm_state_put.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call17.i, i1 noundef zeroext false) #15
  br label %xfrm_state_put.exit

xfrm_state_put.exit:                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.xfrm_state_put.exit_crit_edge
  %cmp.i49 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.then11, label %if.end13

if.then11:                                        ; preds = %xfrm_state_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end13:                                         ; preds = %xfrm_state_put.exit
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hdr, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %29, align 1
  %sadb_msg_type = getelementptr inbounds %struct.sadb_msg, ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 5, ptr %sadb_msg_type, align 1
  %34 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %25, label %sw.default.i [
    i8 51, label %if.end13.pfkey_proto2satype.exit_crit_edge
    i8 50, label %sw.bb1.i
    i8 108, label %sw.bb2.i
  ]

if.end13.pfkey_proto2satype.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.bb1.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.bb2.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.default.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

pfkey_proto2satype.exit:                          ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end13.pfkey_proto2satype.exit_crit_edge
  %retval.0.i50 = phi i8 [ 0, %sw.default.i ], [ 9, %sw.bb2.i ], [ 3, %sw.bb1.i ], [ 2, %if.end13.pfkey_proto2satype.exit_crit_edge ]
  %sadb_msg_satype = getelementptr inbounds %struct.sadb_msg, ptr %29, i32 0, i32 3
  %35 = ptrtoint ptr %sadb_msg_satype to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %retval.0.i50, ptr %sadb_msg_satype, align 1
  %sadb_msg_errno = getelementptr inbounds %struct.sadb_msg, ptr %29, i32 0, i32 2
  %36 = ptrtoint ptr %sadb_msg_errno to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %sadb_msg_errno, align 1
  %sadb_msg_reserved = getelementptr inbounds %struct.sadb_msg, ptr %29, i32 0, i32 5
  %37 = ptrtoint ptr %sadb_msg_reserved to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 0, ptr %sadb_msg_reserved, align 1
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 6
  %38 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %sadb_msg_seq, align 1
  %sadb_msg_seq16 = getelementptr inbounds %struct.sadb_msg, ptr %29, i32 0, i32 6
  %40 = ptrtoint ptr %sadb_msg_seq16 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %sadb_msg_seq16, align 1
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 7
  %41 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %sadb_msg_pid, align 1
  %sadb_msg_pid17 = getelementptr inbounds %struct.sadb_msg, ptr %29, i32 0, i32 7
  %43 = ptrtoint ptr %sadb_msg_pid17 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %sadb_msg_pid17, align 1
  %44 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skc_net.i, align 4
  %call19 = tail call fastcc i32 @pfkey_broadcast(ptr noundef %call.i, i32 noundef 2592, i32 noundef 1, ptr noundef %sk, ptr noundef %45)
  br label %cleanup

cleanup:                                          ; preds = %pfkey_proto2satype.exit, %if.then11, %pfkey_xfrm_state_lookup.exit.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %if.end.i44.cleanup_crit_edge, %present_and_same_family.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.then11 ], [ 0, %pfkey_proto2satype.exit ], [ -22, %present_and_same_family.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -3, %pfkey_xfrm_state_lookup.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -3, %sw.epilog.i.cleanup_crit_edge ], [ -3, %if.end.i44.cleanup_crit_edge ], [ -3, %switch.lookup.cleanup_crit_edge ], [ -3, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_acquire(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readnone %ext_hdrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %sadb_msg_len = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 4
  %2 = ptrtoint ptr %sadb_msg_len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %sadb_msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp.not = icmp eq i16 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 6
  %4 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %sadb_msg_seq, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %sadb_msg_errno = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 2
  %6 = ptrtoint ptr %sadb_msg_errno to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sadb_msg_errno, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp5 = icmp eq i8 %7, 0
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %call10 = tail call ptr @xfrm_find_acq_byseq(ptr noundef %1, i32 noundef 0, i32 noundef %5) #15
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %call10, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %state = getelementptr inbounds %struct.xfrm_state, ptr %call10, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp16 = icmp eq i8 %9, 1
  br i1 %cmp16, label %if.then18, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %state, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end14.if.end21_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call10, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !112

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call10, i1 noundef zeroext false) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_register(ptr noundef %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readnone %ext_hdrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sadb_msg_satype = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 3
  %0 = ptrtoint ptr %sadb_msg_satype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sadb_msg_satype, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp = icmp ugt i8 %1, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp4.not = icmp eq i8 %1, 0
  br i1 %cmp4.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then6:                                         ; preds = %if.end
  %registered = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %registered, align 8
  %shl = shl nuw i32 1, %conv
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %3, %shl
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %registered, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %if.end.if.end15_crit_edge
  tail call void @xfrm_probe_algs() #15
  %call.i = tail call i32 @xfrm_count_pfkey_auth_supported() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %mul.i = shl i32 %call.i, 3
  %add.i = add i32 %mul.i, 8
  %auth_len.0.i = select i1 %tobool.not.i, i32 0, i32 %add.i
  %call1.i = tail call i32 @xfrm_count_pfkey_enc_supported() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  %mul4.i = shl i32 %call1.i, 3
  %add5.i = add i32 %mul4.i, 8
  %enc_len.0.i = select i1 %tobool2.not.i, i32 0, i32 %add5.i
  %add7.i = add i32 %enc_len.0.i, %auth_len.0.i
  %add9.i = add i32 %add7.i, 32
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add9.i, i32 noundef 3520, i32 noundef 0, i32 noundef -1) #15
  %tobool11.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not.i, label %if.then18, label %if.end13.i

if.end13.i:                                       ; preds = %if.end15
  %add8.i = add i32 %add7.i, 16
  %call14.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #15
  %5 = call ptr @memcpy(ptr %call14.i, ptr %hdr, i32 16)
  %sadb_msg_errno.i = getelementptr inbounds %struct.sadb_msg, ptr %call14.i, i32 0, i32 2
  %6 = ptrtoint ptr %sadb_msg_errno.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %sadb_msg_errno.i, align 1
  %div1.i = lshr exact i32 %add8.i, 3
  %conv.i = trunc i32 %div1.i to i16
  %sadb_msg_len.i = getelementptr inbounds %struct.sadb_msg, ptr %call14.i, i32 0, i32 4
  %7 = ptrtoint ptr %sadb_msg_len.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %conv.i, ptr %sadb_msg_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %auth_len.0.i)
  %tobool15.not.i = icmp eq i32 %auth_len.0.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end32.i_crit_edge, label %if.then16.i

if.end13.i.if.end32.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i

if.then16.i:                                      ; preds = %if.end13.i
  %call17.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %auth_len.0.i) #15
  %div183.i = lshr exact i32 %auth_len.0.i, 3
  %conv19.i = trunc i32 %div183.i to i16
  %8 = ptrtoint ptr %call17.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %conv19.i, ptr %call17.i, align 1
  %sadb_supported_exttype.i = getelementptr inbounds %struct.sadb_supported, ptr %call17.i, i32 0, i32 1
  %9 = ptrtoint ptr %sadb_supported_exttype.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 14, ptr %sadb_supported_exttype.i, align 1
  %call2017.i = tail call ptr @xfrm_aalg_get_byidx(i32 noundef 0) #15
  %tobool21.not18.i = icmp eq ptr %call2017.i, null
  br i1 %tobool21.not18.i, label %if.then16.i.if.end32.i_crit_edge, label %if.end23.preheader.i

if.then16.i.if.end32.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i

if.end23.preheader.i:                             ; preds = %if.then16.i
  %add.ptr.i = getelementptr %struct.sadb_supported, ptr %call17.i, i32 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %for.inc.i.if.end23.i_crit_edge, %if.end23.preheader.i
  %call2021.i = phi ptr [ %call20.i, %for.inc.i.if.end23.i_crit_edge ], [ %call2017.i, %if.end23.preheader.i ]
  %ap.020.i = phi ptr [ %ap.2.ph.i, %for.inc.i.if.end23.i_crit_edge ], [ %add.ptr.i, %if.end23.preheader.i ]
  %i.019.i = phi i32 [ %inc.i, %for.inc.i.if.end23.i_crit_edge ], [ 0, %if.end23.preheader.i ]
  %pfkey_supported.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call2021.i, i32 0, i32 2
  %10 = ptrtoint ptr %pfkey_supported.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %pfkey_supported.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load.i)
  %.not.i = icmp ugt i8 %bf.load.i, -65
  br i1 %.not.i, label %if.then30.i, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then30.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr.i = getelementptr %struct.sadb_alg, ptr %ap.020.i, i32 1
  %desc.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call2021.i, i32 0, i32 4
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %desc.i, align 4
  %13 = ptrtoint ptr %ap.020.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %ap.020.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then30.i, %if.end23.i.for.inc.i_crit_edge
  %ap.2.ph.i = phi ptr [ %incdec.ptr.i, %if.then30.i ], [ %ap.020.i, %if.end23.i.for.inc.i_crit_edge ]
  %inc.i = add i32 %i.019.i, 1
  %call20.i = tail call ptr @xfrm_aalg_get_byidx(i32 noundef %inc.i) #15
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %for.inc.i.if.end32.i_crit_edge, label %for.inc.i.if.end23.i_crit_edge

for.inc.i.if.end23.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.i

for.inc.i.if.end32.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i

if.end32.i:                                       ; preds = %for.inc.i.if.end32.i_crit_edge, %if.then16.i.if.end32.i_crit_edge, %if.end13.i.if.end32.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enc_len.0.i)
  %tobool33.not.i = icmp eq i32 %enc_len.0.i, 0
  br i1 %tobool33.not.i, label %if.end32.i.if.end30_crit_edge, label %if.then34.i

if.end32.i.if.end30_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then34.i:                                      ; preds = %if.end32.i
  %call37.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %enc_len.0.i) #15
  %div392.i = lshr exact i32 %enc_len.0.i, 3
  %conv40.i = trunc i32 %div392.i to i16
  %14 = ptrtoint ptr %call37.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %conv40.i, ptr %call37.i, align 1
  %sadb_supported_exttype42.i = getelementptr inbounds %struct.sadb_supported, ptr %call37.i, i32 0, i32 1
  %15 = ptrtoint ptr %sadb_supported_exttype42.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 15, ptr %sadb_supported_exttype42.i, align 1
  %call4422.i = tail call ptr @xfrm_ealg_get_byidx(i32 noundef 0) #15
  %tobool45.not23.i = icmp eq ptr %call4422.i, null
  br i1 %tobool45.not23.i, label %if.then34.i.if.end30_crit_edge, label %if.end47.preheader.i

if.then34.i.if.end30_crit_edge:                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.end47.preheader.i:                             ; preds = %if.then34.i
  %add.ptr38.i = getelementptr %struct.sadb_supported, ptr %call37.i, i32 1
  br label %if.end47.i

if.end47.i:                                       ; preds = %for.inc66.i.if.end47.i_crit_edge, %if.end47.preheader.i
  %call4426.i = phi ptr [ %call44.i, %for.inc66.i.if.end47.i_crit_edge ], [ %call4422.i, %if.end47.preheader.i ]
  %ap36.025.i = phi ptr [ %ap36.2.ph.i, %for.inc66.i.if.end47.i_crit_edge ], [ %add.ptr38.i, %if.end47.preheader.i ]
  %i.124.i = phi i32 [ %inc67.i, %for.inc66.i.if.end47.i_crit_edge ], [ 0, %if.end47.preheader.i ]
  %pfkey_supported48.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call4426.i, i32 0, i32 2
  %16 = ptrtoint ptr %pfkey_supported48.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load49.i = load i8, ptr %pfkey_supported48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load49.i)
  %.not16.i = icmp ugt i8 %bf.load49.i, -65
  br i1 %.not16.i, label %if.then59.i, label %if.end47.i.for.inc66.i_crit_edge

if.end47.i.for.inc66.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc66.i

if.then59.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr60.i = getelementptr %struct.sadb_alg, ptr %ap36.025.i, i32 1
  %desc61.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call4426.i, i32 0, i32 4
  %17 = ptrtoint ptr %desc61.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %desc61.i, align 4
  %19 = ptrtoint ptr %ap36.025.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %ap36.025.i, align 1
  br label %for.inc66.i

for.inc66.i:                                      ; preds = %if.then59.i, %if.end47.i.for.inc66.i_crit_edge
  %ap36.2.ph.i = phi ptr [ %incdec.ptr60.i, %if.then59.i ], [ %ap36.025.i, %if.end47.i.for.inc66.i_crit_edge ]
  %inc67.i = add i32 %i.124.i, 1
  %call44.i = tail call ptr @xfrm_ealg_get_byidx(i32 noundef %inc67.i) #15
  %tobool45.not.i = icmp eq ptr %call44.i, null
  br i1 %tobool45.not.i, label %for.inc66.i.if.end30_crit_edge, label %for.inc66.i.if.end47.i_crit_edge

for.inc66.i.if.end47.i_crit_edge:                 ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i

for.inc66.i.if.end30_crit_edge:                   ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then18:                                        ; preds = %if.end15
  %20 = ptrtoint ptr %sadb_msg_satype to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sadb_msg_satype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp21.not = icmp eq i8 %21, 0
  br i1 %cmp21.not, label %if.then18.cleanup_crit_edge, label %if.then23

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  %conv20 = zext i8 %21 to i32
  %shl26 = shl nuw i32 1, %conv20
  %neg = xor i32 %shl26, -1
  %registered27 = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 1
  %22 = ptrtoint ptr %registered27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %registered27, align 8
  %and28 = and i32 %23, %neg
  store i32 %and28, ptr %registered27, align 8
  br label %cleanup

if.end30:                                         ; preds = %for.inc66.i.if.end30_crit_edge, %if.then34.i.if.end30_crit_edge, %if.end32.i.if.end30_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %24 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_net.i, align 4
  %call32 = tail call fastcc i32 @pfkey_broadcast(ptr noundef nonnull %call.i.i, i32 noundef 3264, i32 noundef 2, ptr noundef %sk, ptr noundef %25)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then23, %if.then18.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -22, %entry.cleanup_crit_edge ], [ -17, %if.then6.cleanup_crit_edge ], [ -105, %if.then23 ], [ -105, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_flush(ptr noundef %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readnone %ext_hdrs) #2 align 64 {
entry:
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #15
  %2 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %3 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %4 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %5 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 4
  %sadb_msg_satype = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 3
  %6 = ptrtoint ptr %sadb_msg_satype to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sadb_msg_satype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %8 = icmp ult i8 %7, 10
  br i1 %8, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %7 to i16
  %switch.shifted = lshr i16 525, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %10 = sext i8 %7 to i32
  %switch.gep = getelementptr inbounds [10 x i16], ptr @switch.table.pfkey_flush, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %11)
  %switch.load = load i16, ptr %switch.gep, align 2
  %conv32 = zext i16 %switch.load to i32
  %conv3 = trunc i16 %switch.load to i8
  %call4 = tail call i32 @xfrm_state_flush(ptr noundef %1, i8 noundef zeroext %conv3, i1 noundef zeroext true, i1 noundef zeroext false) #15
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %switch.lookup.if.then7_crit_edge, label %unicast_flush_resp.exit

switch.lookup.if.then7_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

unicast_flush_resp.exit:                          ; preds = %switch.lookup
  %call.i9.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #15
  %12 = call ptr @memcpy(ptr %call.i9.i, ptr %hdr, i32 16)
  %sadb_msg_errno.i = getelementptr inbounds %struct.sadb_msg, ptr %call.i9.i, i32 0, i32 2
  %13 = ptrtoint ptr %sadb_msg_errno.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %sadb_msg_errno.i, align 1
  %sadb_msg_len.i = getelementptr inbounds %struct.sadb_msg, ptr %call.i9.i, i32 0, i32 4
  %14 = ptrtoint ptr %sadb_msg_len.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 2, ptr %sadb_msg_len.i, align 1
  %15 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i, align 4
  %call3.i = tail call fastcc i32 @pfkey_broadcast(ptr noundef nonnull %call.i.i, i32 noundef 2592, i32 noundef 1, ptr noundef %sk, ptr noundef %16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool6.not = icmp eq i32 %call3.i, 0
  %or.cond = select i1 %tobool.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %if.end13, label %unicast_flush_resp.exit.if.then7_crit_edge

unicast_flush_resp.exit.if.then7_crit_edge:       ; preds = %unicast_flush_resp.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

if.then7:                                         ; preds = %unicast_flush_resp.exit.if.then7_crit_edge, %switch.lookup.if.then7_crit_edge
  %retval.0.i3040 = phi i32 [ %call3.i, %unicast_flush_resp.exit.if.then7_crit_edge ], [ -105, %switch.lookup.if.then7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call4)
  %cmp8 = icmp eq i32 %call4, -3
  %spec.store.select = select i1 %cmp8, i32 0, i32 %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool12.not = icmp eq i32 %spec.store.select, 0
  %call5.spec.store.select = select i1 %tobool12.not, i32 %retval.0.i3040, i32 %spec.store.select
  br label %cleanup

if.end13:                                         ; preds = %unicast_flush_resp.exit
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv32, ptr %c, align 4
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 6
  %18 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %sadb_msg_seq, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %2, align 4
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 7
  %21 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %sadb_msg_pid, align 1
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %3, align 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 28, ptr %4, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %5, align 4
  call void @km_state_notify(ptr noundef null, ptr noundef nonnull %c) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then7, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.spec.store.select, %if.then7 ], [ 0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_dump(ptr noundef %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %ext_hdrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dump_lock = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dump_lock, i32 noundef 0) #15
  %dump = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3
  %dump1 = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %dump1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dump1, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %dump_lock) #15
  br label %cleanup38

if.end:                                           ; preds = %entry
  %sadb_msg_satype = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %sadb_msg_satype to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sadb_msg_satype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %4 = icmp ult i8 %3, 10
  br i1 %4, label %switch.hole_check, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

if.then7:                                         ; preds = %switch.hole_check.if.then7_crit_edge, %if.end.if.then7_crit_edge
  tail call void @mutex_unlock(ptr noundef %dump_lock) #15
  br label %cleanup38

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = zext i8 %3 to i16
  %switch.shifted = lshr i16 525, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then7_crit_edge, label %switch.lookup

switch.hole_check.if.then7_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

switch.lookup:                                    ; preds = %switch.hole_check
  %6 = sext i8 %3 to i32
  %switch.gep = getelementptr inbounds [10 x i8], ptr @switch.table.pfkey_dump, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %7)
  %switch.load = load i8, ptr %switch.gep, align 1
  %arrayidx = getelementptr ptr, ptr %ext_hdrs, i32 25
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %switch.lookup.if.end29_crit_edge, label %if.then10

switch.lookup.if.end29_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then10:                                        ; preds = %switch.lookup
  %sadb_x_filter_splen = getelementptr inbounds %struct.sadb_x_filter, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %sadb_x_filter_splen to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sadb_x_filter_splen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp13 = icmp slt i8 %11, 0
  br i1 %cmp13, label %if.then10.if.then18_crit_edge, label %lor.lhs.false

if.then10.if.then18_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.then10
  %sadb_x_filter_dplen = getelementptr inbounds %struct.sadb_x_filter, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %sadb_x_filter_dplen to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sadb_x_filter_dplen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp16 = icmp slt i8 %13, 0
  br i1 %cmp16, label %lor.lhs.false.if.then18_crit_edge, label %if.end20

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.then10.if.then18_crit_edge
  tail call void @mutex_unlock(ptr noundef %dump_lock) #15
  br label %cleanup38

if.end20:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 36) #21
  %cmp22 = icmp eq ptr %call7.i, null
  br i1 %cmp22, label %if.then24, label %cleanup

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %dump_lock) #15
  br label %cleanup38

cleanup:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_x_filter_saddr = getelementptr inbounds %struct.sadb_x_filter, ptr %9, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %call7.i, ptr %sadb_x_filter_saddr, i32 16)
  %daddr = getelementptr inbounds %struct.xfrm_address_filter, ptr %call7.i, i32 0, i32 1
  %sadb_x_filter_daddr = getelementptr inbounds %struct.sadb_x_filter, ptr %9, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %daddr, ptr %sadb_x_filter_daddr, i32 16)
  %sadb_x_filter_family = getelementptr inbounds %struct.sadb_x_filter, ptr %9, i32 0, i32 4
  %17 = ptrtoint ptr %sadb_x_filter_family to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %sadb_x_filter_family, align 1
  %family = getelementptr inbounds %struct.xfrm_address_filter, ptr %call7.i, i32 0, i32 2
  %19 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %family, align 8
  %20 = ptrtoint ptr %sadb_x_filter_splen to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sadb_x_filter_splen, align 1
  %splen = getelementptr inbounds %struct.xfrm_address_filter, ptr %call7.i, i32 0, i32 3
  %22 = ptrtoint ptr %splen to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %splen, align 2
  %23 = ptrtoint ptr %sadb_x_filter_dplen to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sadb_x_filter_dplen, align 1
  %dplen = getelementptr inbounds %struct.xfrm_address_filter, ptr %call7.i, i32 0, i32 4
  %25 = ptrtoint ptr %dplen to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %dplen, align 1
  br label %if.end29

if.end29:                                         ; preds = %cleanup, %switch.lookup.if.end29_crit_edge
  %filter.1 = phi ptr [ %call7.i, %cleanup ], [ null, %switch.lookup.if.end29_crit_edge ]
  %26 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hdr, align 1
  %28 = ptrtoint ptr %dump to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %dump, align 8
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 7
  %29 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %sadb_msg_pid, align 1
  %msg_portid = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %msg_portid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %msg_portid, align 4
  %32 = ptrtoint ptr %dump1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @pfkey_dump_sa, ptr %dump1, align 8
  %done = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @pfkey_dump_sa_done, ptr %done, align 4
  %u = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3, i32 4
  tail call void @xfrm_state_walk_init(ptr noundef %u, i8 noundef zeroext %switch.load, ptr noundef %filter.1) #15
  tail call void @mutex_unlock(ptr noundef %dump_lock) #15
  %call37 = tail call fastcc i32 @pfkey_do_dump(ptr noundef %sk)
  br label %cleanup38

cleanup38:                                        ; preds = %if.end29, %if.then24, %if.then18, %if.then7, %if.then
  %retval.1 = phi i32 [ -16, %if.then ], [ -22, %if.then7 ], [ %call37, %if.end29 ], [ -12, %if.then24 ], [ -22, %if.then18 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_promisc(ptr nocapture noundef %sk, ptr noundef %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readnone %ext_hdrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sadb_msg_satype = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 3
  %0 = ptrtoint ptr %sadb_msg_satype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sadb_msg_satype, align 1
  %conv = zext i8 %1 to i32
  %sadb_msg_len = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 4
  %2 = ptrtoint ptr %sadb_msg_len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %sadb_msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp = icmp eq i16 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch = icmp ult i8 %1, 2
  br i1 %switch, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  %promisc = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 2
  %4 = ptrtoint ptr %promisc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %promisc, align 4
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %5 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %skb_cloned.exit

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

skb_cloned.exit:                                  ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #15
  %8 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.else_crit_edge, label %if.then13

skb_cloned.exit.if.else_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then13:                                        ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 3264) #15
  br label %if.end16

if.else:                                          ; preds = %skb_cloned.exit.if.else_crit_edge, %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  %call15 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 3264) #15
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %skb.addr.0 = phi ptr [ %call14, %if.then13 ], [ %call15, %if.else ]
  %cmp.not = xor i1 %cmp, true
  %tobool20.not = icmp eq ptr %skb.addr.0, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %if.end16.if.end22_crit_edge, label %if.then21

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %sadb_msg_errno = getelementptr inbounds %struct.sadb_msg, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %sadb_msg_errno to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %sadb_msg_errno, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end16.if.end22_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %13 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i, align 4
  %call24 = tail call fastcc i32 @pfkey_broadcast(ptr noundef %skb.addr.0, i32 noundef 3264, i32 noundef 0, ptr noundef null, ptr noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_spdadd(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %ext_hdrs) #2 align 64 {
entry:
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #15
  %2 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %3 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %4 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %arrayidx = getelementptr ptr, ptr %ext_hdrs, i32 4
  %5 = call ptr @memset(ptr %c, i32 255, i32 20)
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr ptr, ptr %ext_hdrs, i32 5
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %tobool1.not.i = icmp eq ptr %9, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.cleanup160_crit_edge, label %if.end.i

entry.cleanup160_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup160

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr %struct.sadb_address, ptr %7, i32 1
  %add.ptr2.i = getelementptr %struct.sadb_address, ptr %9, i32 1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %12 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp.not.i = icmp eq i16 %11, %13
  br i1 %cmp.not.i, label %present_and_same_family.exit, label %if.end.i.cleanup160_crit_edge

if.end.i.cleanup160_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup160

present_and_same_family.exit:                     ; preds = %if.end.i
  %14 = add i16 %11, -2
  %switch.and.i = and i16 %14, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i)
  %switch.selectcmp.i.not = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp.i.not, label %lor.lhs.false, label %present_and_same_family.exit.cleanup160_crit_edge

present_and_same_family.exit.cleanup160_crit_edge: ; preds = %present_and_same_family.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup160

lor.lhs.false:                                    ; preds = %present_and_same_family.exit
  %arrayidx3 = getelementptr ptr, ptr %ext_hdrs, i32 17
  %15 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup160_crit_edge, label %if.end

lor.lhs.false.cleanup160_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup160

if.end:                                           ; preds = %lor.lhs.false
  %sadb_x_policy_type = getelementptr inbounds %struct.sadb_x_policy, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %sadb_x_policy_type to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %sadb_x_policy_type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %18)
  %cmp = icmp ugt i16 %18, 2
  br i1 %cmp, label %if.end.cleanup160_crit_edge, label %if.end8

if.end.cleanup160_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup160

if.end8:                                          ; preds = %if.end
  %sadb_x_policy_dir = getelementptr inbounds %struct.sadb_x_policy, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sadb_x_policy_dir, align 1
  %21 = add i8 %20, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %21)
  %22 = icmp ult i8 %21, -3
  br i1 %22, label %if.end8.cleanup160_crit_edge, label %if.end16

if.end8.cleanup160_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup160

if.end16:                                         ; preds = %if.end8
  %call17 = tail call ptr @xfrm_policy_alloc(ptr noundef %1, i32 noundef 3264) #15
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.end16.cleanup160_crit_edge, label %if.end21

if.end16.cleanup160_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup160

if.end21:                                         ; preds = %if.end16
  %23 = ptrtoint ptr %sadb_x_policy_type to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %sadb_x_policy_type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp24 = icmp eq i16 %24, 0
  %conv26 = zext i1 %cmp24 to i8
  %action = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 19
  %25 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv26, ptr %action, align 2
  %sadb_x_policy_priority = getelementptr inbounds %struct.sadb_x_policy, ptr %16, i32 0, i32 6
  %26 = ptrtoint ptr %sadb_x_policy_priority to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %sadb_x_policy_priority, align 1
  %priority = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 8
  %28 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %priority, align 4
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %selector = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 12
  %saddr = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 12, i32 1
  %add.ptr.i260 = getelementptr %struct.sadb_address, ptr %30, i32 1
  %31 = ptrtoint ptr %add.ptr.i260 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i260, align 2
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %32, label %if.end21.pfkey_sadb_addr2xfrm_addr.exit_crit_edge [
    i16 2, label %sw.bb.i.i
    i16 10, label %sw.bb1.i.i
  ]

if.end21.pfkey_sadb_addr2xfrm_addr.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_sadb_addr2xfrm_addr.exit

sw.bb.i.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i = getelementptr %struct.sadb_address, ptr %30, i32 1, i32 2
  %34 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sin_addr.i.i, align 4
  %36 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %saddr, align 4
  br label %pfkey_sadb_addr2xfrm_addr.exit

sw.bb1.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i = getelementptr %struct.sadb_address, ptr %30, i32 2
  %37 = call ptr @memcpy(ptr %saddr, ptr %sin6_addr.i.i, i32 16)
  br label %pfkey_sadb_addr2xfrm_addr.exit

pfkey_sadb_addr2xfrm_addr.exit:                   ; preds = %sw.bb1.i.i, %sw.bb.i.i, %if.end21.pfkey_sadb_addr2xfrm_addr.exit_crit_edge
  %retval.0.i.i = phi i16 [ 10, %sw.bb1.i.i ], [ 2, %sw.bb.i.i ], [ 0, %if.end21.pfkey_sadb_addr2xfrm_addr.exit_crit_edge ]
  %family = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 22
  %38 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %retval.0.i.i, ptr %family, align 2
  %family32 = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 12, i32 6
  %39 = ptrtoint ptr %family32 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %retval.0.i.i, ptr %family32, align 8
  %sadb_address_prefixlen = getelementptr inbounds %struct.sadb_address, ptr %30, i32 0, i32 3
  %40 = ptrtoint ptr %sadb_address_prefixlen to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sadb_address_prefixlen, align 1
  %prefixlen_s = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 12, i32 8
  %42 = ptrtoint ptr %prefixlen_s to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %prefixlen_s, align 1
  %sadb_address_proto = getelementptr inbounds %struct.sadb_address, ptr %30, i32 0, i32 2
  %43 = ptrtoint ptr %sadb_address_proto to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sadb_address_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp.i = icmp eq i8 %44, -1
  %spec.select.i = select i1 %cmp.i, i8 0, i8 %44
  %proto = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 12, i32 9
  %45 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.select.i, ptr %proto, align 4
  %sin_port = getelementptr %struct.sadb_address, ptr %30, i32 1, i32 1
  %46 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sin_port, align 2
  %sport = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 12, i32 4
  %48 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %sport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool39.not = icmp eq i16 %47, 0
  br i1 %tobool39.not, label %pfkey_sadb_addr2xfrm_addr.exit.if.end42_crit_edge, label %if.then40

pfkey_sadb_addr2xfrm_addr.exit.if.end42_crit_edge: ; preds = %pfkey_sadb_addr2xfrm_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then40:                                        ; preds = %pfkey_sadb_addr2xfrm_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sport_mask = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 12, i32 5
  %49 = ptrtoint ptr %sport_mask to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %sport_mask, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %pfkey_sadb_addr2xfrm_addr.exit.if.end42_crit_edge
  %50 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx1, align 4
  %add.ptr.i261 = getelementptr %struct.sadb_address, ptr %51, i32 1
  %52 = ptrtoint ptr %add.ptr.i261 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i261, align 2
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %53, label %if.end42.pfkey_sadb_addr2xfrm_addr.exit267_crit_edge [
    i16 2, label %sw.bb.i.i263
    i16 10, label %sw.bb1.i.i265
  ]

if.end42.pfkey_sadb_addr2xfrm_addr.exit267_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_sadb_addr2xfrm_addr.exit267

sw.bb.i.i263:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i262 = getelementptr %struct.sadb_address, ptr %51, i32 1, i32 2
  %55 = ptrtoint ptr %sin_addr.i.i262 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sin_addr.i.i262, align 4
  %57 = ptrtoint ptr %selector to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %selector, align 4
  br label %pfkey_sadb_addr2xfrm_addr.exit267

sw.bb1.i.i265:                                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i264 = getelementptr %struct.sadb_address, ptr %51, i32 2
  %58 = call ptr @memcpy(ptr %selector, ptr %sin6_addr.i.i264, i32 16)
  br label %pfkey_sadb_addr2xfrm_addr.exit267

pfkey_sadb_addr2xfrm_addr.exit267:                ; preds = %sw.bb1.i.i265, %sw.bb.i.i263, %if.end42.pfkey_sadb_addr2xfrm_addr.exit267_crit_edge
  %sadb_address_prefixlen46 = getelementptr inbounds %struct.sadb_address, ptr %51, i32 0, i32 3
  %59 = ptrtoint ptr %sadb_address_prefixlen46 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sadb_address_prefixlen46, align 1
  %prefixlen_d = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 12, i32 7
  %61 = ptrtoint ptr %prefixlen_d to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %prefixlen_d, align 2
  %sadb_address_proto48 = getelementptr inbounds %struct.sadb_address, ptr %51, i32 0, i32 2
  %62 = ptrtoint ptr %sadb_address_proto48 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %sadb_address_proto48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %cmp.i268 = icmp eq i8 %63, -1
  %spec.select.i269 = select i1 %cmp.i268, i8 0, i8 %63
  %64 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %spec.select.i269, ptr %proto, align 4
  %sin_port53 = getelementptr %struct.sadb_address, ptr %51, i32 1, i32 1
  %65 = ptrtoint ptr %sin_port53 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %sin_port53, align 2
  %dport = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 12, i32 2
  %67 = ptrtoint ptr %dport to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %dport, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool57.not = icmp eq i16 %66, 0
  br i1 %tobool57.not, label %pfkey_sadb_addr2xfrm_addr.exit267.if.end60_crit_edge, label %if.then58

pfkey_sadb_addr2xfrm_addr.exit267.if.end60_crit_edge: ; preds = %pfkey_sadb_addr2xfrm_addr.exit267
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then58:                                        ; preds = %pfkey_sadb_addr2xfrm_addr.exit267
  call void @__sanitizer_cov_trace_pc() #17
  %dport_mask = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 12, i32 3
  %68 = ptrtoint ptr %dport_mask to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %dport_mask, align 2
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %pfkey_sadb_addr2xfrm_addr.exit267.if.end60_crit_edge
  %arrayidx61 = getelementptr ptr, ptr %ext_hdrs, i32 23
  %69 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx61, align 4
  %cmp62.not = icmp eq ptr %70, null
  br i1 %cmp62.not, label %if.end60.if.end73_crit_edge, label %if.then64

if.end60.if.end73_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

if.then64:                                        ; preds = %if.end60
  %sadb_x_ctx_len.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %sadb_x_ctx_len.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %sadb_x_ctx_len.i, align 1
  %conv.i = zext i16 %72 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #19
  %tobool.not.i270 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i270, label %if.then64.out_crit_edge, label %if.end68

if.then64.out_crit_edge:                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end68:                                         ; preds = %if.then64
  %73 = ptrtoint ptr %sadb_x_ctx_len.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %sadb_x_ctx_len.i, align 1
  %conv.i.i = zext i16 %74 to i32
  %sub.i.i = add nuw nsw i32 %conv.i.i, 15
  %div2.i.i = lshr i32 %sub.i.i, 3
  %conv2.i = trunc i32 %div2.i.i to i16
  %75 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv2.i, ptr %call9.i.i, align 128
  %sadb_x_sec_exttype.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %70, i32 0, i32 1
  %76 = ptrtoint ptr %sadb_x_sec_exttype.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %sadb_x_sec_exttype.i, align 1
  %exttype.i = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %exttype.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %exttype.i, align 2
  %sadb_x_ctx_doi.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %70, i32 0, i32 3
  %79 = ptrtoint ptr %sadb_x_ctx_doi.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %sadb_x_ctx_doi.i, align 1
  %ctx_doi.i = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i.i, i32 0, i32 3
  %81 = ptrtoint ptr %ctx_doi.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %ctx_doi.i, align 1
  %sadb_x_ctx_alg.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %70, i32 0, i32 2
  %82 = ptrtoint ptr %sadb_x_ctx_alg.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sadb_x_ctx_alg.i, align 1
  %ctx_alg.i = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %ctx_alg.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %ctx_alg.i, align 4
  %ctx_len.i = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i.i, i32 0, i32 4
  %85 = ptrtoint ptr %ctx_len.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %74, ptr %ctx_len.i, align 2
  %add.ptr.i271 = getelementptr %struct.xfrm_user_sec_ctx, ptr %call9.i.i, i32 1
  %add.ptr4.i = getelementptr %struct.sadb_x_sec_ctx, ptr %70, i32 1
  %86 = call ptr @memcpy(ptr %add.ptr.i271, ptr %add.ptr4.i, i32 %conv.i.i)
  %security = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 23
  %call69 = tail call i32 @security_xfrm_policy_alloc(ptr noundef %security, ptr noundef nonnull %call9.i.i, i32 noundef 3264) #15
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end68.if.end73_crit_edge, label %if.end68.out_crit_edge

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

if.end73:                                         ; preds = %if.end68.if.end73_crit_edge, %if.end60.if.end73_crit_edge
  %lft = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 13
  %soft_packet_limit = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 13, i32 2
  %arrayidx77 = getelementptr ptr, ptr %ext_hdrs, i32 2
  %87 = call ptr @memset(ptr %lft, i32 255, i32 32)
  %88 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx77, align 4
  %cmp78.not = icmp eq ptr %89, null
  br i1 %cmp78.not, label %if.end73.if.end99_crit_edge, label %if.then80

if.end73.if.end99_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99

if.then80:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  %hard_packet_limit = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 13, i32 3
  %hard_byte_limit = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 13, i32 1
  %sadb_lifetime_allocations = getelementptr inbounds %struct.sadb_lifetime, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %sadb_lifetime_allocations to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %sadb_lifetime_allocations, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp81 = icmp eq i32 %91, 0
  %conv84 = zext i32 %91 to i64
  %spec.select = select i1 %cmp81, i64 -1, i64 %conv84
  %92 = ptrtoint ptr %hard_packet_limit to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %spec.select, ptr %hard_packet_limit, align 8
  %sadb_lifetime_bytes = getelementptr inbounds %struct.sadb_lifetime, ptr %89, i32 0, i32 3
  %93 = ptrtoint ptr %sadb_lifetime_bytes to i32
  call void @__asan_loadN_noabort(i32 %93, i32 8)
  %94 = load i64, ptr %sadb_lifetime_bytes, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %94)
  %cmp88 = icmp eq i64 %94, 0
  %cond94 = select i1 %cmp88, i64 -1, i64 %94
  %95 = ptrtoint ptr %hard_byte_limit to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %cond94, ptr %hard_byte_limit, align 8
  %sadb_lifetime_addtime = getelementptr inbounds %struct.sadb_lifetime, ptr %89, i32 0, i32 4
  %96 = ptrtoint ptr %sadb_lifetime_addtime to i32
  call void @__asan_loadN_noabort(i32 %96, i32 8)
  %97 = load i64, ptr %sadb_lifetime_addtime, align 1
  %hard_add_expires_seconds = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 13, i32 5
  %98 = ptrtoint ptr %hard_add_expires_seconds to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %hard_add_expires_seconds, align 8
  %sadb_lifetime_usetime = getelementptr inbounds %struct.sadb_lifetime, ptr %89, i32 0, i32 5
  %99 = ptrtoint ptr %sadb_lifetime_usetime to i32
  call void @__asan_loadN_noabort(i32 %99, i32 8)
  %100 = load i64, ptr %sadb_lifetime_usetime, align 1
  %hard_use_expires_seconds = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 13, i32 7
  %101 = ptrtoint ptr %hard_use_expires_seconds to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %hard_use_expires_seconds, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then80, %if.end73.if.end99_crit_edge
  %arrayidx100 = getelementptr ptr, ptr %ext_hdrs, i32 3
  %102 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx100, align 4
  %cmp101.not = icmp eq ptr %103, null
  br i1 %cmp101.not, label %if.end99.if.end129_crit_edge, label %if.then103

if.end99.if.end129_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_lifetime_allocations104 = getelementptr inbounds %struct.sadb_lifetime, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %sadb_lifetime_allocations104 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %sadb_lifetime_allocations104, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp105 = icmp eq i32 %105, 0
  %conv110 = zext i32 %105 to i64
  %spec.select258 = select i1 %cmp105, i64 -1, i64 %conv110
  %106 = ptrtoint ptr %soft_packet_limit to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %spec.select258, ptr %soft_packet_limit, align 8
  %sadb_lifetime_bytes115 = getelementptr inbounds %struct.sadb_lifetime, ptr %103, i32 0, i32 3
  %107 = ptrtoint ptr %sadb_lifetime_bytes115 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 8)
  %108 = load i64, ptr %sadb_lifetime_bytes115, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %108)
  %cmp116 = icmp eq i64 %108, 0
  %cond122 = select i1 %cmp116, i64 -1, i64 %108
  %109 = ptrtoint ptr %lft to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %cond122, ptr %lft, align 8
  %sadb_lifetime_addtime125 = getelementptr inbounds %struct.sadb_lifetime, ptr %103, i32 0, i32 4
  %110 = ptrtoint ptr %sadb_lifetime_addtime125 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 8)
  %111 = load i64, ptr %sadb_lifetime_addtime125, align 1
  %soft_add_expires_seconds = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 13, i32 4
  %112 = ptrtoint ptr %soft_add_expires_seconds to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %soft_add_expires_seconds, align 8
  %sadb_lifetime_usetime127 = getelementptr inbounds %struct.sadb_lifetime, ptr %103, i32 0, i32 5
  %113 = ptrtoint ptr %sadb_lifetime_usetime127 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 8)
  %114 = load i64, ptr %sadb_lifetime_usetime127, align 1
  %soft_use_expires_seconds = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 13, i32 6
  %115 = ptrtoint ptr %soft_use_expires_seconds to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %soft_use_expires_seconds, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.then103, %if.end99.if.end129_crit_edge
  %xfrm_nr = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 21
  %116 = ptrtoint ptr %xfrm_nr to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %xfrm_nr, align 4
  %117 = ptrtoint ptr %sadb_x_policy_type to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %sadb_x_policy_type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %118)
  %cmp132 = icmp eq i16 %118, 2
  br i1 %cmp132, label %land.lhs.true, label %if.end129.if.end138_crit_edge

if.end129.if.end138_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end138

land.lhs.true:                                    ; preds = %if.end129
  %call134 = tail call fastcc i32 @parse_ipsecrequests(ptr noundef nonnull %call17, ptr noundef nonnull %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end138_crit_edge

land.lhs.true.if.end138_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end138

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end138:                                        ; preds = %land.lhs.true.if.end138_crit_edge, %if.end129.if.end138_crit_edge
  %119 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %sadb_x_policy_dir, align 1
  %conv140 = zext i8 %120 to i32
  %sub = add nsw i32 %conv140, -1
  %sadb_msg_type = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 1
  %121 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %sadb_msg_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %122)
  %cmp142 = icmp ne i8 %122, 13
  %conv143 = zext i1 %cmp142 to i32
  %call144 = tail call i32 @xfrm_policy_insert(i32 noundef %sub, ptr noundef nonnull %call17, i32 noundef %conv143) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end149, label %if.end138.out_crit_edge

if.end138.out_crit_edge:                          ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end149:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  %123 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %sadb_msg_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %124)
  %cmp152 = icmp eq i8 %124, 13
  %.259 = select i1 %cmp152, i32 25, i32 19
  %125 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %.259, ptr %4, align 4
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 6
  %126 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %sadb_msg_seq, align 1
  %128 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %2, align 4
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 7
  %129 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %sadb_msg_pid, align 1
  %131 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %3, align 4
  %132 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %sadb_x_policy_dir, align 1
  %conv158 = zext i8 %133 to i32
  %sub159 = add nsw i32 %conv158, -1
  call void @km_policy_notify(ptr noundef nonnull %call17, i32 noundef %sub159, ptr noundef nonnull %c) #15
  call fastcc void @xfrm_pol_put(ptr noundef nonnull %call17)
  br label %cleanup160

out:                                              ; preds = %if.end138.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end68.out_crit_edge, %if.then64.out_crit_edge
  %err.1 = phi i32 [ %call134, %land.lhs.true.out_crit_edge ], [ %call144, %if.end138.out_crit_edge ], [ %call69, %if.end68.out_crit_edge ], [ -105, %if.then64.out_crit_edge ]
  %dead = getelementptr inbounds %struct.xfrm_policy, ptr %call17, i32 0, i32 15, i32 1
  %134 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %dead, align 8
  tail call void @xfrm_policy_destroy(ptr noundef nonnull %call17) #15
  br label %cleanup160

cleanup160:                                       ; preds = %out, %if.end149, %if.end16.cleanup160_crit_edge, %if.end8.cleanup160_crit_edge, %if.end.cleanup160_crit_edge, %lor.lhs.false.cleanup160_crit_edge, %present_and_same_family.exit.cleanup160_crit_edge, %if.end.i.cleanup160_crit_edge, %entry.cleanup160_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ 0, %if.end149 ], [ -22, %lor.lhs.false.cleanup160_crit_edge ], [ -22, %present_and_same_family.exit.cleanup160_crit_edge ], [ -22, %if.end.cleanup160_crit_edge ], [ -22, %if.end8.cleanup160_crit_edge ], [ -105, %if.end16.cleanup160_crit_edge ], [ -22, %entry.cleanup160_crit_edge ], [ -22, %if.end.i.cleanup160_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_spddelete(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %ext_hdrs) #2 align 64 {
entry:
  %err = alloca i32, align 4
  %sel = alloca %struct.xfrm_selector, align 4
  %c = alloca %struct.km_event, align 4
  %pol_ctx = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #15
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %err, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sel) #15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #15
  %3 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %4 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %5 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %6 = call ptr @memset(ptr %c, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pol_ctx) #15
  %7 = ptrtoint ptr %pol_ctx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pol_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %ext_hdrs, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr ptr, ptr %ext_hdrs, i32 5
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %tobool1.not.i = icmp eq ptr %11, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.cleanup59_crit_edge, label %if.end.i

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr %struct.sadb_address, ptr %9, i32 1
  %add.ptr2.i = getelementptr %struct.sadb_address, ptr %11, i32 1
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %14 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp.not.i = icmp eq i16 %13, %15
  br i1 %cmp.not.i, label %present_and_same_family.exit, label %if.end.i.cleanup59_crit_edge

if.end.i.cleanup59_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

present_and_same_family.exit:                     ; preds = %if.end.i
  %16 = add i16 %13, -2
  %switch.and.i = and i16 %16, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i)
  %switch.selectcmp.i.not = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp.i.not, label %lor.lhs.false, label %present_and_same_family.exit.cleanup59_crit_edge

present_and_same_family.exit.cleanup59_crit_edge: ; preds = %present_and_same_family.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

lor.lhs.false:                                    ; preds = %present_and_same_family.exit
  %arrayidx3 = getelementptr ptr, ptr %ext_hdrs, i32 17
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %18, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup59_crit_edge, label %if.end

lor.lhs.false.cleanup59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

if.end:                                           ; preds = %lor.lhs.false
  %sadb_x_policy_dir = getelementptr inbounds %struct.sadb_x_policy, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sadb_x_policy_dir, align 1
  %21 = add i8 %20, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %21)
  %22 = icmp ult i8 %21, -3
  br i1 %22, label %if.end.cleanup59_crit_edge, label %if.end11

if.end.cleanup59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

if.end11:                                         ; preds = %if.end
  %23 = call ptr @memset(ptr %sel, i32 0, i32 56)
  %saddr = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 1
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %25, label %if.end11.pfkey_sadb_addr2xfrm_addr.exit_crit_edge [
    i16 2, label %sw.bb.i.i
    i16 10, label %sw.bb1.i.i
  ]

if.end11.pfkey_sadb_addr2xfrm_addr.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_sadb_addr2xfrm_addr.exit

sw.bb.i.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i = getelementptr %struct.sadb_address, ptr %9, i32 1, i32 2
  %27 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sin_addr.i.i, align 4
  %29 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %saddr, align 4
  br label %pfkey_sadb_addr2xfrm_addr.exit

sw.bb1.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i = getelementptr %struct.sadb_address, ptr %9, i32 2
  %30 = call ptr @memcpy(ptr %saddr, ptr %sin6_addr.i.i, i32 16)
  br label %pfkey_sadb_addr2xfrm_addr.exit

pfkey_sadb_addr2xfrm_addr.exit:                   ; preds = %sw.bb1.i.i, %sw.bb.i.i, %if.end11.pfkey_sadb_addr2xfrm_addr.exit_crit_edge
  %retval.0.i.i = phi i16 [ 10, %sw.bb1.i.i ], [ 2, %sw.bb.i.i ], [ 0, %if.end11.pfkey_sadb_addr2xfrm_addr.exit_crit_edge ]
  %family = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 6
  %31 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %retval.0.i.i, ptr %family, align 4
  %sadb_address_prefixlen = getelementptr inbounds %struct.sadb_address, ptr %9, i32 0, i32 3
  %32 = ptrtoint ptr %sadb_address_prefixlen to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sadb_address_prefixlen, align 1
  %prefixlen_s = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 8
  %34 = ptrtoint ptr %prefixlen_s to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %prefixlen_s, align 1
  %proto = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 9
  %sin_port = getelementptr %struct.sadb_address, ptr %9, i32 1, i32 1
  %35 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sin_port, align 2
  %sport = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 4
  %37 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %sport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool17.not = icmp eq i16 %36, 0
  br i1 %tobool17.not, label %pfkey_sadb_addr2xfrm_addr.exit.if.end19_crit_edge, label %if.then18

pfkey_sadb_addr2xfrm_addr.exit.if.end19_crit_edge: ; preds = %pfkey_sadb_addr2xfrm_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then18:                                        ; preds = %pfkey_sadb_addr2xfrm_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sport_mask = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 5
  %38 = ptrtoint ptr %sport_mask to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %sport_mask, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %pfkey_sadb_addr2xfrm_addr.exit.if.end19_crit_edge
  %39 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr2.i, align 2
  %41 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %40, label %if.end19.pfkey_sadb_addr2xfrm_addr.exit103_crit_edge [
    i16 2, label %sw.bb.i.i99
    i16 10, label %sw.bb1.i.i101
  ]

if.end19.pfkey_sadb_addr2xfrm_addr.exit103_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_sadb_addr2xfrm_addr.exit103

sw.bb.i.i99:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i98 = getelementptr %struct.sadb_address, ptr %11, i32 1, i32 2
  %42 = ptrtoint ptr %sin_addr.i.i98 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sin_addr.i.i98, align 4
  %44 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sel, align 4
  br label %pfkey_sadb_addr2xfrm_addr.exit103

sw.bb1.i.i101:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i100 = getelementptr %struct.sadb_address, ptr %11, i32 2
  %45 = call ptr @memcpy(ptr %sel, ptr %sin6_addr.i.i100, i32 16)
  br label %pfkey_sadb_addr2xfrm_addr.exit103

pfkey_sadb_addr2xfrm_addr.exit103:                ; preds = %sw.bb1.i.i101, %sw.bb.i.i99, %if.end19.pfkey_sadb_addr2xfrm_addr.exit103_crit_edge
  %sadb_address_prefixlen22 = getelementptr inbounds %struct.sadb_address, ptr %11, i32 0, i32 3
  %46 = ptrtoint ptr %sadb_address_prefixlen22 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sadb_address_prefixlen22, align 1
  %prefixlen_d = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 7
  %48 = ptrtoint ptr %prefixlen_d to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %prefixlen_d, align 2
  %sadb_address_proto23 = getelementptr inbounds %struct.sadb_address, ptr %11, i32 0, i32 2
  %49 = ptrtoint ptr %sadb_address_proto23 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sadb_address_proto23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %cmp.i104 = icmp eq i8 %50, -1
  %spec.select.i105 = select i1 %cmp.i104, i8 0, i8 %50
  %51 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %spec.select.i105, ptr %proto, align 4
  %sin_port27 = getelementptr %struct.sadb_address, ptr %11, i32 1, i32 1
  %52 = ptrtoint ptr %sin_port27 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sin_port27, align 2
  %dport = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 2
  %54 = ptrtoint ptr %dport to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %dport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool29.not = icmp eq i16 %53, 0
  br i1 %tobool29.not, label %pfkey_sadb_addr2xfrm_addr.exit103.if.end31_crit_edge, label %if.then30

pfkey_sadb_addr2xfrm_addr.exit103.if.end31_crit_edge: ; preds = %pfkey_sadb_addr2xfrm_addr.exit103
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then30:                                        ; preds = %pfkey_sadb_addr2xfrm_addr.exit103
  call void @__sanitizer_cov_trace_pc() #17
  %dport_mask = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 3
  %55 = ptrtoint ptr %dport_mask to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -1, ptr %dport_mask, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %pfkey_sadb_addr2xfrm_addr.exit103.if.end31_crit_edge
  %arrayidx32 = getelementptr ptr, ptr %ext_hdrs, i32 23
  %56 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx32, align 4
  %cmp33.not = icmp eq ptr %57, null
  br i1 %cmp33.not, label %if.end31.if.end44_crit_edge, label %if.then35

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then35:                                        ; preds = %if.end31
  %sadb_x_ctx_len.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %sadb_x_ctx_len.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %sadb_x_ctx_len.i, align 1
  %conv.i = zext i16 %59 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #19
  %tobool.not.i106 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i106, label %if.then35.cleanup59_crit_edge, label %cleanup

if.then35.cleanup59_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

cleanup:                                          ; preds = %if.then35
  %60 = ptrtoint ptr %sadb_x_ctx_len.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %sadb_x_ctx_len.i, align 1
  %conv.i.i = zext i16 %61 to i32
  %sub.i.i = add nuw nsw i32 %conv.i.i, 15
  %div2.i.i = lshr i32 %sub.i.i, 3
  %conv2.i = trunc i32 %div2.i.i to i16
  %62 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv2.i, ptr %call9.i.i, align 128
  %sadb_x_sec_exttype.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %57, i32 0, i32 1
  %63 = ptrtoint ptr %sadb_x_sec_exttype.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %sadb_x_sec_exttype.i, align 1
  %exttype.i = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %exttype.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %exttype.i, align 2
  %sadb_x_ctx_doi.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %57, i32 0, i32 3
  %66 = ptrtoint ptr %sadb_x_ctx_doi.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sadb_x_ctx_doi.i, align 1
  %ctx_doi.i = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %ctx_doi.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %ctx_doi.i, align 1
  %sadb_x_ctx_alg.i = getelementptr inbounds %struct.sadb_x_sec_ctx, ptr %57, i32 0, i32 2
  %69 = ptrtoint ptr %sadb_x_ctx_alg.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %sadb_x_ctx_alg.i, align 1
  %ctx_alg.i = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %ctx_alg.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %ctx_alg.i, align 4
  %ctx_len.i = getelementptr inbounds %struct.xfrm_user_sec_ctx, ptr %call9.i.i, i32 0, i32 4
  %72 = ptrtoint ptr %ctx_len.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %61, ptr %ctx_len.i, align 2
  %add.ptr.i107 = getelementptr %struct.xfrm_user_sec_ctx, ptr %call9.i.i, i32 1
  %add.ptr4.i = getelementptr %struct.sadb_x_sec_ctx, ptr %57, i32 1
  %73 = call ptr @memcpy(ptr %add.ptr.i107, ptr %add.ptr4.i, i32 %conv.i.i)
  %call40 = call i32 @security_xfrm_policy_alloc(ptr noundef nonnull %pol_ctx, ptr noundef nonnull %call9.i.i, i32 noundef 3264) #15
  %74 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call40, ptr %err, align 4
  call void @kfree(ptr noundef nonnull %call9.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup.if.end44_crit_edge, label %cleanup.cleanup59_crit_edge

cleanup.cleanup59_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

cleanup.if.end44_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.end44:                                         ; preds = %cleanup.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  %75 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %sadb_x_policy_dir, align 1
  %conv46 = zext i8 %76 to i32
  %sub = add nsw i32 %conv46, -1
  %77 = ptrtoint ptr %pol_ctx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pol_ctx, align 4
  %call47 = call ptr @xfrm_policy_bysel_ctx(ptr noundef %1, ptr noundef nonnull @dummy_mark, i32 noundef 0, i8 noundef zeroext 0, i32 noundef %sub, ptr noundef nonnull %sel, ptr noundef %78, i32 noundef 1, ptr noundef nonnull %err) #15
  %79 = ptrtoint ptr %pol_ctx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pol_ctx, align 4
  call void @security_xfrm_policy_free(ptr noundef %80) #15
  %cmp48 = icmp eq ptr %call47, null
  br i1 %cmp48, label %if.end44.cleanup59_crit_edge, label %if.end51

if.end44.cleanup59_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

if.end51:                                         ; preds = %if.end44
  %81 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool53.not = icmp eq i32 %82, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.out_crit_edge

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 6
  %83 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %sadb_msg_seq, align 1
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %3, align 4
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 7
  %86 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %sadb_msg_pid, align 1
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %4, align 4
  %89 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %c, align 4
  %90 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 20, ptr %5, align 4
  %91 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %sadb_x_policy_dir, align 1
  %conv57 = zext i8 %92 to i32
  %sub58 = add nsw i32 %conv57, -1
  call void @km_policy_notify(ptr noundef nonnull %call47, i32 noundef %sub58, ptr noundef nonnull %c) #15
  br label %out

out:                                              ; preds = %if.end55, %if.end51.out_crit_edge
  %refcnt.i = getelementptr inbounds %struct.xfrm_policy, ptr %call47, i32 0, i32 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %93 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.xfrm_pol_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !112

if.end5.i.i.i.i.xfrm_pol_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_pol_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %xfrm_pol_put.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  call void @xfrm_policy_destroy(ptr noundef nonnull %call47) #15
  br label %xfrm_pol_put.exit

xfrm_pol_put.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.xfrm_pol_put.exit_crit_edge
  %94 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %err, align 4
  br label %cleanup59

cleanup59:                                        ; preds = %xfrm_pol_put.exit, %if.end44.cleanup59_crit_edge, %cleanup.cleanup59_crit_edge, %if.then35.cleanup59_crit_edge, %if.end.cleanup59_crit_edge, %lor.lhs.false.cleanup59_crit_edge, %present_and_same_family.exit.cleanup59_crit_edge, %if.end.i.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.1 = phi i32 [ %95, %xfrm_pol_put.exit ], [ %call40, %cleanup.cleanup59_crit_edge ], [ -22, %lor.lhs.false.cleanup59_crit_edge ], [ -22, %present_and_same_family.exit.cleanup59_crit_edge ], [ -22, %if.end.cleanup59_crit_edge ], [ -2, %if.end44.cleanup59_crit_edge ], [ -22, %entry.cleanup59_crit_edge ], [ -22, %if.end.i.cleanup59_crit_edge ], [ -12, %if.then35.cleanup59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pol_ctx) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sel) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #15
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_spdget(ptr noundef %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %ext_hdrs) #2 align 64 {
entry:
  %err = alloca i32, align 4
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #15
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #15
  %3 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %4 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %5 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %arrayidx = getelementptr ptr, ptr %ext_hdrs, i32 17
  %6 = call ptr @memset(ptr %c, i32 255, i32 20)
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sadb_x_policy_id = getelementptr inbounds %struct.sadb_x_policy, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %sadb_x_policy_id to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %sadb_x_policy_id, align 1
  %and.i = and i32 %10, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp2 = icmp ugt i32 %and.i, 2
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sadb_msg_type = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 1
  %11 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sadb_msg_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %12)
  %cmp5 = icmp eq i8 %12, 22
  %conv6 = zext i1 %cmp5 to i32
  %call8 = call ptr @xfrm_policy_byid(ptr noundef %1, ptr noundef nonnull @dummy_mark, i32 noundef 0, i8 noundef zeroext 0, i32 noundef %and.i, i32 noundef %10, i32 noundef %conv6, ptr noundef nonnull %err) #15
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.end4.cleanup_crit_edge, label %if.end12

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  br i1 %cmp5, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end12
  %13 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then13.out_crit_edge

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 6
  %15 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %sadb_msg_seq, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %3, align 4
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 7
  %18 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %sadb_msg_pid, align 1
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %4, align 4
  %21 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %c, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 20, ptr %5, align 4
  call void @km_policy_notify(ptr noundef nonnull %call8, i32 noundef %and.i, ptr noundef nonnull %c) #15
  br label %out

if.else:                                          ; preds = %if.end12
  %family.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %call8, i32 0, i32 22
  %23 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %family.i.i.i, align 2
  %xfrm_nr.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %call8, i32 0, i32 21
  %25 = ptrtoint ptr %xfrm_nr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %xfrm_nr.i.i.i, align 4
  %conv.i.i.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp20.not.i.i.i = icmp eq i8 %26, 0
  br i1 %cmp20.not.i.i.i, label %if.else.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.else.for.end.i.i.i_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.else
  %xfrm_vec.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %call8, i32 0, i32 24
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.022.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %socklen.021.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %encap_family.i.i.i = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec.i.i.i, i32 %i.022.i.i.i, i32 2
  %27 = ptrtoint ptr %encap_family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %encap_family.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %28)
  %switch.selectcmp.i.i.i.i = icmp eq i16 %28, 10
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %28)
  %switch.selectcmp2.i.i.i.i = icmp eq i16 %28, 2
  %switch.select3.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, i32 16, i32 %switch.select.i.i.i.i
  %add.i.i.i = add i32 %switch.select3.i.i.i.i, %socklen.021.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.022.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.end.loopexit.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.end.loopexit.i.i.i:                           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %phi.bo.i.i.i = shl i32 %add.i.i.i, 1
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.end.loopexit.i.i.i, %if.else.for.end.i.i.i_crit_edge
  %socklen.0.lcssa.i.i.i = phi i32 [ 0, %if.else.for.end.i.i.i_crit_edge ], [ %phi.bo.i.i.i, %for.end.loopexit.i.i.i ]
  %security.i.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %call8, i32 0, i32 23
  %29 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %security.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i.i, label %for.end.i.i.i.pfkey_xfrm_policy2msg_prep.exit.i_crit_edge, label %if.then.i.i.i.i

for.end.i.i.i.pfkey_xfrm_policy2msg_prep.exit.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_xfrm_policy2msg_prep.exit.i

if.then.i.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ctx_len.i.i.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ctx_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ctx_len.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %32 to i32
  %sub.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i, 7
  %or.i.i.i.i = or i32 %sub.i.i.i.i, 7
  %add1.i.i.i.i = add nuw nsw i32 %or.i.i.i.i, 1
  br label %pfkey_xfrm_policy2msg_prep.exit.i

pfkey_xfrm_policy2msg_prep.exit.i:                ; preds = %if.then.i.i.i.i, %for.end.i.i.i.pfkey_xfrm_policy2msg_prep.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %add1.i.i.i.i, %if.then.i.i.i.i ], [ 0, %for.end.i.i.i.pfkey_xfrm_policy2msg_prep.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %24)
  %switch.selectcmp2.i.i.i.i.i = icmp eq i16 %24, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %24)
  %switch.selectcmp.i.i.i.i.i = icmp eq i16 %24, 10
  %mul7.i.i.i = shl nuw nsw i32 %conv.i.i.i, 4
  %switch.select.i.op.op.op.i.op.i.op.i.i = select i1 %switch.selectcmp.i.i.i.i.i, i32 224, i32 160
  %add8.i.i.i = select i1 %switch.selectcmp2.i.i.i.i.i, i32 192, i32 %switch.select.i.op.op.op.i.op.i.op.i.i
  %add10.i.i.i = add nuw nsw i32 %add8.i.i.i, %mul7.i.i.i
  %add12.i.i.i = add i32 %add10.i.i.i, %socklen.0.lcssa.i.i.i
  %add.i.i = add i32 %add12.i.i.i, %retval.0.i.i.i.i
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %cmp.i.i = icmp eq ptr %call.i.i.i, null
  %spec.select.i.i = select i1 %cmp.i.i, ptr inttoptr (i32 -105 to ptr), ptr %call.i.i.i
  %cmp.i28.i = icmp ugt ptr %spec.select.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %pfkey_xfrm_policy2msg_prep.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %spec.select.i.i to i32
  br label %key_pol_get_resp.exit

if.end.i:                                         ; preds = %pfkey_xfrm_policy2msg_prep.exit.i
  %call3.i = call fastcc i32 @pfkey_xfrm_policy2msg(ptr noundef %spec.select.i.i, ptr noundef nonnull %call8, i32 noundef %and.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree_skb_reason(ptr noundef %spec.select.i.i, i32 noundef 0) #15
  br label %key_pol_get_resp.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %spec.select.i.i, i32 0, i32 19
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %36 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hdr, align 1
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %35, align 1
  %39 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sadb_msg_type, align 1
  %sadb_msg_type7.i = getelementptr inbounds %struct.sadb_msg, ptr %35, i32 0, i32 1
  %41 = ptrtoint ptr %sadb_msg_type7.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %sadb_msg_type7.i, align 1
  %sadb_msg_satype.i = getelementptr inbounds %struct.sadb_msg, ptr %35, i32 0, i32 3
  %42 = ptrtoint ptr %sadb_msg_satype.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %sadb_msg_satype.i, align 1
  %sadb_msg_errno.i = getelementptr inbounds %struct.sadb_msg, ptr %35, i32 0, i32 2
  %43 = ptrtoint ptr %sadb_msg_errno.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %sadb_msg_errno.i, align 1
  %sadb_msg_seq.i = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 6
  %44 = ptrtoint ptr %sadb_msg_seq.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %sadb_msg_seq.i, align 1
  %sadb_msg_seq8.i = getelementptr inbounds %struct.sadb_msg, ptr %35, i32 0, i32 6
  %46 = ptrtoint ptr %sadb_msg_seq8.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %sadb_msg_seq8.i, align 1
  %sadb_msg_pid.i = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 7
  %47 = ptrtoint ptr %sadb_msg_pid.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %sadb_msg_pid.i, align 1
  %sadb_msg_pid9.i = getelementptr inbounds %struct.sadb_msg, ptr %35, i32 0, i32 7
  %49 = ptrtoint ptr %sadb_msg_pid9.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %sadb_msg_pid9.i, align 1
  %50 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call8, align 4
  %call11.i = call fastcc i32 @pfkey_broadcast(ptr noundef %spec.select.i.i, i32 noundef 2592, i32 noundef 1, ptr noundef %sk, ptr noundef %51) #15
  br label %key_pol_get_resp.exit

key_pol_get_resp.exit:                            ; preds = %if.end5.i, %if.then4.i, %if.then.i
  %err.0.i = phi i32 [ %33, %if.then.i ], [ %call3.i, %if.then4.i ], [ 0, %if.end5.i ]
  %52 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %err.0.i, ptr %err, align 4
  br label %out

out:                                              ; preds = %key_pol_get_resp.exit, %if.end17, %if.then13.out_crit_edge
  %refcnt.i = getelementptr inbounds %struct.xfrm_policy, ptr %call8, i32 0, i32 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i39, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.xfrm_pol_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !112

if.end5.i.i.i.i.xfrm_pol_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfrm_pol_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %xfrm_pol_put.exit

if.then.i39:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  call void @xfrm_policy_destroy(ptr noundef nonnull %call8) #15
  br label %xfrm_pol_put.exit

xfrm_pol_put.exit:                                ; preds = %if.then.i39, %if.then10.i.i.i.i, %if.end5.i.i.i.i.xfrm_pol_put.exit_crit_edge
  %54 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfrm_pol_put.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %55, %xfrm_pol_put.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -2, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_spddump(ptr noundef %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readnone %ext_hdrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dump_lock = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dump_lock, i32 noundef 0) #15
  %dump1 = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %dump1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dump1, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %dump_lock) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dump = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdr, align 1
  %4 = ptrtoint ptr %dump to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %dump, align 8
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 7
  %5 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %sadb_msg_pid, align 1
  %msg_portid = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %msg_portid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %msg_portid, align 4
  %8 = ptrtoint ptr %dump1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pfkey_dump_sp, ptr %dump1, align 8
  %done = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pfkey_dump_sp_done, ptr %done, align 4
  %u = getelementptr inbounds %struct.pfkey_sock, ptr %sk, i32 0, i32 3, i32 4
  tail call void @xfrm_policy_walk_init(ptr noundef %u, i8 noundef zeroext 0) #15
  tail call void @mutex_unlock(ptr noundef %dump_lock) #15
  %call10 = tail call fastcc i32 @pfkey_do_dump(ptr noundef %sk)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %call10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_spdflush(ptr noundef %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readnone %ext_hdrs) #2 align 64 {
entry:
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #15
  %2 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %3 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %4 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %5 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 4
  %call1 = tail call i32 @xfrm_policy_flush(ptr noundef %1, i8 noundef zeroext 0, i1 noundef zeroext true) #15
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %unicast_flush_resp.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

unicast_flush_resp.exit:                          ; preds = %entry
  %call.i9.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #15
  %6 = call ptr @memcpy(ptr %call.i9.i, ptr %hdr, i32 16)
  %sadb_msg_errno.i = getelementptr inbounds %struct.sadb_msg, ptr %call.i9.i, i32 0, i32 2
  %7 = ptrtoint ptr %sadb_msg_errno.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %sadb_msg_errno.i, align 1
  %sadb_msg_len.i = getelementptr inbounds %struct.sadb_msg, ptr %call.i9.i, i32 0, i32 4
  %8 = ptrtoint ptr %sadb_msg_len.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2, ptr %sadb_msg_len.i, align 1
  %9 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i, align 4
  %call3.i = tail call fastcc i32 @pfkey_broadcast(ptr noundef nonnull %call.i.i, i32 noundef 2592, i32 noundef 1, ptr noundef %sk, ptr noundef %10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool3.not = icmp eq i32 %call3.i, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.end5, label %unicast_flush_resp.exit.if.then_crit_edge

unicast_flush_resp.exit.if.then_crit_edge:        ; preds = %unicast_flush_resp.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %unicast_flush_resp.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call1)
  %cmp = icmp eq i32 %call1, -3
  %.call1 = select i1 %cmp, i32 0, i32 %call1
  br label %cleanup

if.end5:                                          ; preds = %unicast_flush_resp.exit
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %c, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 29, ptr %4, align 4
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 7
  %13 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %sadb_msg_pid, align 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %3, align 4
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %hdr, i32 0, i32 6
  %16 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %sadb_msg_seq, align 1
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %2, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %5, align 4
  call void @km_policy_notify(ptr noundef null, i32 noundef 0, ptr noundef nonnull %c) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %.call1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_migrate(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %hdr, ptr nocapture noundef readonly %ext_hdrs) #2 align 64 {
entry:
  %sel = alloca %struct.xfrm_selector, align 4
  %m = alloca [6 x %struct.xfrm_migrate], align 4
  %k = alloca %struct.xfrm_kmaddress, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sel) #15
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %m) #15
  %0 = call ptr @memset(ptr %m, i32 255, i32 456)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %k) #15
  %1 = call ptr @memset(ptr %k, i32 255, i32 40)
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %arrayidx = getelementptr ptr, ptr %ext_hdrs, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr ptr, ptr %ext_hdrs, i32 5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %tobool1.not.i = icmp eq ptr %7, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr %struct.sadb_address, ptr %5, i32 1
  %add.ptr2.i = getelementptr %struct.sadb_address, ptr %7, i32 1
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %10 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp.not.i = icmp eq i16 %9, %11
  br i1 %cmp.not.i, label %present_and_same_family.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

present_and_same_family.exit:                     ; preds = %if.end.i
  %12 = add i16 %9, -2
  %switch.and.i = and i16 %12, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i)
  %switch.selectcmp.i.not = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp.i.not, label %lor.lhs.false, label %present_and_same_family.exit.cleanup_crit_edge

present_and_same_family.exit.cleanup_crit_edge:   ; preds = %present_and_same_family.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %present_and_same_family.exit
  %arrayidx3 = getelementptr ptr, ptr %ext_hdrs, i32 17
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx5 = getelementptr ptr, ptr %ext_hdrs, i32 24
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5, align 4
  %sadb_x_policy_dir = getelementptr inbounds %struct.sadb_x_policy, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sadb_x_policy_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp = icmp ugt i8 %18, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %if.end9.if.end18_crit_edge, label %if.then11

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then11:                                        ; preds = %if.end9
  %sadb_x_kmaddress_reserved = getelementptr inbounds %struct.sadb_x_kmaddress, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %sadb_x_kmaddress_reserved to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %sadb_x_kmaddress_reserved, align 1
  %reserved = getelementptr inbounds %struct.xfrm_kmaddress, ptr %k, i32 0, i32 2
  %21 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %reserved, align 4
  %add.ptr = getelementptr %struct.sadb_x_kmaddress, ptr %16, i32 1
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %16, align 1
  %remote = getelementptr inbounds %struct.xfrm_kmaddress, ptr %k, i32 0, i32 1
  %family = getelementptr inbounds %struct.xfrm_kmaddress, ptr %k, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %23)
  %cmp.i = icmp ult i16 %23, 2
  br i1 %cmp.i, label %if.then11.cleanup_crit_edge, label %lor.lhs.false.i

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then11
  %conv12 = zext i16 %23 to i32
  %mul = shl nuw nsw i32 %conv12, 3
  %sub = add nsw i32 %mul, -8
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %25)
  %switch.selectcmp.i.i.i = icmp eq i16 %25, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %switch.selectcmp2.i.i.i = icmp eq i16 %25, 2
  %switch.select.i.op.op.i.i = select i1 %switch.selectcmp.i.i.i, i32 56, i32 0
  %add.i.i = select i1 %switch.selectcmp2.i.i.i, i32 32, i32 %switch.select.i.op.op.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub)
  %cmp1.i = icmp ugt i32 %add.i.i, %sub
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i115

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i115:                                      ; preds = %lor.lhs.false.i
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %25, label %if.end.i115.cleanup_crit_edge [
    i16 2, label %sw.bb.i.i
    i16 10, label %sw.bb1.i.i
  ]

if.end.i115.cleanup_crit_edge:                    ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i = getelementptr %struct.sadb_x_kmaddress, ptr %16, i32 1, i32 2
  %27 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sin_addr.i.i, align 4
  %29 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %k, align 4
  br label %if.end4.i

sw.bb1.i.i:                                       ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i = getelementptr %struct.sadb_x_kmaddress, ptr %16, i32 2
  %30 = call ptr @memcpy(ptr %k, ptr %sin6_addr.i.i, i32 16)
  br label %if.end4.i

if.end4.i:                                        ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.ph.i = phi i32 [ 2, %sw.bb.i.i ], [ 10, %sw.bb1.i.i ]
  %conv.i = trunc i32 %retval.0.i.ph.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %conv.i)
  %switch.selectcmp.i.i = icmp eq i16 %conv.i, 10
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv.i)
  %switch.selectcmp2.i.i = icmp eq i16 %conv.i, 2
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 16, i32 %switch.select.i.i
  %add.ptr.i116 = getelementptr i8, ptr %add.ptr, i32 %switch.select3.i.i
  %31 = ptrtoint ptr %add.ptr.i116 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i116, align 2
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %32, label %if.end4.i.cleanup_crit_edge [
    i16 2, label %sw.bb.i20.i
    i16 10, label %sw.bb1.i22.i
  ]

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i20.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i19.i = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr.i116, i32 0, i32 2
  %34 = ptrtoint ptr %sin_addr.i19.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sin_addr.i19.i, align 4
  %36 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %remote, align 4
  br label %pfkey_sockaddr_extract.exit24.i

sw.bb1.i22.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i21.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr.i116, i32 0, i32 3
  %37 = call ptr @memcpy(ptr %remote, ptr %sin6_addr.i21.i, i32 16)
  br label %pfkey_sockaddr_extract.exit24.i

pfkey_sockaddr_extract.exit24.i:                  ; preds = %sw.bb1.i22.i, %sw.bb.i20.i
  %retval.0.i23.i = phi i32 [ 10, %sw.bb1.i22.i ], [ 2, %sw.bb.i20.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i23.i, i32 %retval.0.i.ph.i)
  %cmp7.not.i = icmp eq i32 %retval.0.i23.i, %retval.0.i.ph.i
  br i1 %cmp7.not.i, label %parse_sockaddr_pair.exit, label %pfkey_sockaddr_extract.exit24.i.cleanup_crit_edge

pfkey_sockaddr_extract.exit24.i.cleanup_crit_edge: ; preds = %pfkey_sockaddr_extract.exit24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

parse_sockaddr_pair.exit:                         ; preds = %pfkey_sockaddr_extract.exit24.i
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i, ptr %family, align 4
  br label %if.end18

if.end18:                                         ; preds = %parse_sockaddr_pair.exit, %if.end9.if.end18_crit_edge
  %39 = ptrtoint ptr %sadb_x_policy_dir to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sadb_x_policy_dir, align 1
  %sub21 = add i8 %40, -1
  %41 = call ptr @memset(ptr %sel, i32 0, i32 56)
  %saddr = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 1
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i, align 2
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %43, label %if.end18.pfkey_sadb_addr2xfrm_addr.exit_crit_edge [
    i16 2, label %sw.bb.i.i120
    i16 10, label %sw.bb1.i.i122
  ]

if.end18.pfkey_sadb_addr2xfrm_addr.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_sadb_addr2xfrm_addr.exit

sw.bb.i.i120:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i119 = getelementptr %struct.sadb_address, ptr %5, i32 1, i32 2
  %45 = ptrtoint ptr %sin_addr.i.i119 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sin_addr.i.i119, align 4
  %47 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %saddr, align 4
  br label %pfkey_sadb_addr2xfrm_addr.exit

sw.bb1.i.i122:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i121 = getelementptr %struct.sadb_address, ptr %5, i32 2
  %48 = call ptr @memcpy(ptr %saddr, ptr %sin6_addr.i.i121, i32 16)
  br label %pfkey_sadb_addr2xfrm_addr.exit

pfkey_sadb_addr2xfrm_addr.exit:                   ; preds = %sw.bb1.i.i122, %sw.bb.i.i120, %if.end18.pfkey_sadb_addr2xfrm_addr.exit_crit_edge
  %retval.0.i.i = phi i16 [ 10, %sw.bb1.i.i122 ], [ 2, %sw.bb.i.i120 ], [ 0, %if.end18.pfkey_sadb_addr2xfrm_addr.exit_crit_edge ]
  %family26 = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 6
  %49 = ptrtoint ptr %family26 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %retval.0.i.i, ptr %family26, align 4
  %sadb_address_prefixlen = getelementptr inbounds %struct.sadb_address, ptr %5, i32 0, i32 3
  %50 = ptrtoint ptr %sadb_address_prefixlen to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sadb_address_prefixlen, align 1
  %prefixlen_s = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 8
  %52 = ptrtoint ptr %prefixlen_s to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %prefixlen_s, align 1
  %proto = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 9
  %sin_port = getelementptr %struct.sadb_address, ptr %5, i32 1, i32 1
  %53 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %sin_port, align 2
  %sport = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 4
  %55 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %sport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool30.not = icmp eq i16 %54, 0
  br i1 %tobool30.not, label %pfkey_sadb_addr2xfrm_addr.exit.if.end32_crit_edge, label %if.then31

pfkey_sadb_addr2xfrm_addr.exit.if.end32_crit_edge: ; preds = %pfkey_sadb_addr2xfrm_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then31:                                        ; preds = %pfkey_sadb_addr2xfrm_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sport_mask = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 5
  %56 = ptrtoint ptr %sport_mask to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -1, ptr %sport_mask, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %pfkey_sadb_addr2xfrm_addr.exit.if.end32_crit_edge
  %57 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr2.i, align 2
  %59 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %58, label %if.end32.pfkey_sadb_addr2xfrm_addr.exit130_crit_edge [
    i16 2, label %sw.bb.i.i126
    i16 10, label %sw.bb1.i.i128
  ]

if.end32.pfkey_sadb_addr2xfrm_addr.exit130_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_sadb_addr2xfrm_addr.exit130

sw.bb.i.i126:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i125 = getelementptr %struct.sadb_address, ptr %7, i32 1, i32 2
  %60 = ptrtoint ptr %sin_addr.i.i125 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sin_addr.i.i125, align 4
  %62 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %sel, align 4
  br label %pfkey_sadb_addr2xfrm_addr.exit130

sw.bb1.i.i128:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i127 = getelementptr %struct.sadb_address, ptr %7, i32 2
  %63 = call ptr @memcpy(ptr %sel, ptr %sin6_addr.i.i127, i32 16)
  br label %pfkey_sadb_addr2xfrm_addr.exit130

pfkey_sadb_addr2xfrm_addr.exit130:                ; preds = %sw.bb1.i.i128, %sw.bb.i.i126, %if.end32.pfkey_sadb_addr2xfrm_addr.exit130_crit_edge
  %sadb_address_prefixlen35 = getelementptr inbounds %struct.sadb_address, ptr %7, i32 0, i32 3
  %64 = ptrtoint ptr %sadb_address_prefixlen35 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sadb_address_prefixlen35, align 1
  %prefixlen_d = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 7
  %66 = ptrtoint ptr %prefixlen_d to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %prefixlen_d, align 2
  %sadb_address_proto36 = getelementptr inbounds %struct.sadb_address, ptr %7, i32 0, i32 2
  %67 = ptrtoint ptr %sadb_address_proto36 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sadb_address_proto36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %cmp.i131 = icmp eq i8 %68, -1
  %spec.select.i132 = select i1 %cmp.i131, i8 0, i8 %68
  %69 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %spec.select.i132, ptr %proto, align 4
  %sin_port40 = getelementptr %struct.sadb_address, ptr %7, i32 1, i32 1
  %70 = ptrtoint ptr %sin_port40 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %sin_port40, align 2
  %dport = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 2
  %72 = ptrtoint ptr %dport to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %dport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool42.not = icmp eq i16 %71, 0
  br i1 %tobool42.not, label %pfkey_sadb_addr2xfrm_addr.exit130.if.end44_crit_edge, label %if.then43

pfkey_sadb_addr2xfrm_addr.exit130.if.end44_crit_edge: ; preds = %pfkey_sadb_addr2xfrm_addr.exit130
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then43:                                        ; preds = %pfkey_sadb_addr2xfrm_addr.exit130
  call void @__sanitizer_cov_trace_pc() #17
  %dport_mask = getelementptr inbounds %struct.xfrm_selector, ptr %sel, i32 0, i32 3
  %73 = ptrtoint ptr %dport_mask to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -1, ptr %dport_mask, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %pfkey_sadb_addr2xfrm_addr.exit130.if.end44_crit_edge
  %74 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %75)
  %cmp49152 = icmp ugt i16 %75, 2
  br i1 %cmp49152, label %while.body.preheader, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body.preheader:                             ; preds = %if.end44
  %conv46 = zext i16 %75 to i32
  %mul47 = shl nuw nsw i32 %conv46, 3
  %sub48 = add nsw i32 %mul47, -16
  %add.ptr45 = getelementptr %struct.sadb_x_policy, ptr %14, i32 1
  br label %while.body

while.body:                                       ; preds = %switch.lookup.while.body_crit_edge, %while.body.preheader
  %rq.0155 = phi ptr [ %add.ptr58, %switch.lookup.while.body_crit_edge ], [ %add.ptr45, %while.body.preheader ]
  %len.0154 = phi i32 [ %sub59, %switch.lookup.while.body_crit_edge ], [ %sub48, %while.body.preheader ]
  %i.0153 = phi i32 [ %inc, %switch.lookup.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %arrayidx53 = getelementptr [6 x %struct.xfrm_migrate], ptr %m, i32 0, i32 %i.0153
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len.0154)
  %cmp.i133 = icmp ult i32 %len.0154, 16
  br i1 %cmp.i133, label %while.body.cleanup_crit_edge, label %lor.lhs.false.i137

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i137:                               ; preds = %while.body
  %76 = ptrtoint ptr %rq.0155 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %rq.0155, align 1
  %conv.i134 = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0154, i32 %conv.i134)
  %cmp1.i135 = icmp ult i32 %len.0154, %conv.i134
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %77)
  %cmp6.i = icmp ult i16 %77, 16
  %or.cond.i136 = or i1 %cmp6.i, %cmp1.i135
  br i1 %or.cond.i136, label %lor.lhs.false.i137.cleanup_crit_edge, label %if.end.i139

lor.lhs.false.i137.cleanup_crit_edge:             ; preds = %lor.lhs.false.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i139:                                      ; preds = %lor.lhs.false.i137
  %add.ptr.i138 = getelementptr %struct.sadb_x_ipsecrequest, ptr %rq.0155, i32 1
  %old_saddr.i = getelementptr [6 x %struct.xfrm_migrate], ptr %m, i32 0, i32 %i.0153, i32 1
  %old_family.i = getelementptr [6 x %struct.xfrm_migrate], ptr %m, i32 0, i32 %i.0153, i32 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %77)
  %cmp.i.i = icmp ult i16 %77, 18
  br i1 %cmp.i.i, label %if.end.i139.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i139.cleanup_crit_edge:                    ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i139
  %sub.i = add nsw i32 %conv.i134, -16
  %78 = ptrtoint ptr %add.ptr.i138 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr.i138, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %79)
  %switch.selectcmp.i.i.i.i = icmp eq i16 %79, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %79)
  %switch.selectcmp2.i.i.i.i = icmp eq i16 %79, 2
  %switch.select.i.op.op.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i32 56, i32 0
  %add.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, i32 32, i32 %switch.select.i.op.op.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %sub.i)
  %cmp1.i.i = icmp ugt i32 %add.i.i.i, %sub.i
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %80 = zext i16 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %79, label %if.end.i.i.cleanup_crit_edge [
    i16 2, label %sw.bb.i.i.i
    i16 10, label %sw.bb1.i.i.i
  ]

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i.i = getelementptr %struct.sadb_x_ipsecrequest, ptr %rq.0155, i32 1, i32 2
  %81 = ptrtoint ptr %sin_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sin_addr.i.i.i, align 4
  %83 = ptrtoint ptr %old_saddr.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %old_saddr.i, align 4
  br label %if.end4.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i.i = getelementptr %struct.sadb_x_ipsecrequest, ptr %rq.0155, i32 1, i32 5
  %84 = call ptr @memcpy(ptr %old_saddr.i, ptr %sin6_addr.i.i.i, i32 16)
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %sw.bb1.i.i.i, %sw.bb.i.i.i
  %retval.0.i.ph.i.i = phi i32 [ 2, %sw.bb.i.i.i ], [ 10, %sw.bb1.i.i.i ]
  %conv.i.i = trunc i32 %retval.0.i.ph.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %conv.i.i)
  %switch.selectcmp.i.i.i140 = icmp eq i16 %conv.i.i, 10
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i140, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv.i.i)
  %switch.selectcmp2.i.i.i141 = icmp eq i16 %conv.i.i, 2
  %switch.select3.i.i.i = select i1 %switch.selectcmp2.i.i.i141, i32 16, i32 %switch.select.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i138, i32 %switch.select3.i.i.i
  %85 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr.i.i, align 2
  %87 = zext i16 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %86, label %if.end4.i.i.cleanup_crit_edge [
    i16 2, label %sw.bb.i20.i.i
    i16 10, label %sw.bb1.i22.i.i
  ]

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i20.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i19.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %sin_addr.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sin_addr.i19.i.i, align 4
  %90 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx53, align 4
  br label %pfkey_sockaddr_extract.exit24.i.i

sw.bb1.i22.i.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i21.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr.i.i, i32 0, i32 3
  %91 = call ptr @memcpy(ptr %arrayidx53, ptr %sin6_addr.i21.i.i, i32 16)
  br label %pfkey_sockaddr_extract.exit24.i.i

pfkey_sockaddr_extract.exit24.i.i:                ; preds = %sw.bb1.i22.i.i, %sw.bb.i20.i.i
  %retval.0.i23.i.i = phi i32 [ 10, %sw.bb1.i22.i.i ], [ 2, %sw.bb.i20.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i23.i.i, i32 %retval.0.i.ph.i.i)
  %cmp7.not.i.i = icmp eq i32 %retval.0.i23.i.i, %retval.0.i.ph.i.i
  br i1 %cmp7.not.i.i, label %if.end11.i, label %pfkey_sockaddr_extract.exit24.i.i.cleanup_crit_edge

pfkey_sockaddr_extract.exit24.i.i.cleanup_crit_edge: ; preds = %pfkey_sockaddr_extract.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11.i:                                       ; preds = %pfkey_sockaddr_extract.exit24.i.i
  %92 = ptrtoint ptr %old_family.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv.i.i, ptr %old_family.i, align 4
  %93 = ptrtoint ptr %rq.0155 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %rq.0155, align 1
  %conv13.i = zext i16 %94 to i32
  %add.ptr14.i = getelementptr i8, ptr %rq.0155, i32 %conv13.i
  %sub17.i = sub nsw i32 %len.0154, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub17.i)
  %cmp18.i = icmp ult i32 %sub17.i, 17
  br i1 %cmp18.i, label %if.end11.i.cleanup_crit_edge, label %lor.lhs.false20.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false20.i:                                ; preds = %if.end11.i
  %95 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %add.ptr14.i, align 1
  %conv22.i = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17.i, i32 %conv22.i)
  %cmp23.i = icmp slt i32 %sub17.i, %conv22.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %96)
  %cmp28.i = icmp ult i16 %96, 16
  %or.cond110.i = or i1 %cmp28.i, %cmp23.i
  br i1 %or.cond110.i, label %lor.lhs.false20.i.cleanup_crit_edge, label %if.end31.i

lor.lhs.false20.i.cleanup_crit_edge:              ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end31.i:                                       ; preds = %lor.lhs.false20.i
  %add.ptr32.i = getelementptr %struct.sadb_x_ipsecrequest, ptr %add.ptr14.i, i32 1
  %new_saddr.i = getelementptr [6 x %struct.xfrm_migrate], ptr %m, i32 0, i32 %i.0153, i32 3
  %new_daddr.i = getelementptr [6 x %struct.xfrm_migrate], ptr %m, i32 0, i32 %i.0153, i32 2
  %new_family.i = getelementptr [6 x %struct.xfrm_migrate], ptr %m, i32 0, i32 %i.0153, i32 9
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %96)
  %cmp.i111.i = icmp ult i16 %96, 18
  br i1 %cmp.i111.i, label %if.end31.i.cleanup_crit_edge, label %lor.lhs.false.i117.i

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i117.i:                             ; preds = %if.end31.i
  %sub35.i = add nsw i32 %conv22.i, -16
  %97 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %add.ptr32.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %98)
  %switch.selectcmp.i.i.i112.i = icmp eq i16 %98, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %98)
  %switch.selectcmp2.i.i.i113.i = icmp eq i16 %98, 2
  %switch.select.i.op.op.i.i114.i = select i1 %switch.selectcmp.i.i.i112.i, i32 56, i32 0
  %add.i.i115.i = select i1 %switch.selectcmp2.i.i.i113.i, i32 32, i32 %switch.select.i.op.op.i.i114.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i115.i, i32 %sub35.i)
  %cmp1.i116.i = icmp ugt i32 %add.i.i115.i, %sub35.i
  br i1 %cmp1.i116.i, label %lor.lhs.false.i117.i.cleanup_crit_edge, label %if.end.i118.i

lor.lhs.false.i117.i.cleanup_crit_edge:           ; preds = %lor.lhs.false.i117.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i118.i:                                    ; preds = %lor.lhs.false.i117.i
  %99 = zext i16 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %98, label %if.end.i118.i.cleanup_crit_edge [
    i16 2, label %sw.bb.i.i120.i
    i16 10, label %sw.bb1.i.i122.i
  ]

if.end.i118.i.cleanup_crit_edge:                  ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i.i120.i:                                   ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i.i119.i = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr32.i, i32 0, i32 2
  %100 = ptrtoint ptr %sin_addr.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %sin_addr.i.i119.i, align 4
  %102 = ptrtoint ptr %new_saddr.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %new_saddr.i, align 4
  br label %if.end4.i130.i

sw.bb1.i.i122.i:                                  ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i.i121.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr32.i, i32 0, i32 3
  %103 = call ptr @memcpy(ptr %new_saddr.i, ptr %sin6_addr.i.i121.i, i32 16)
  br label %if.end4.i130.i

if.end4.i130.i:                                   ; preds = %sw.bb1.i.i122.i, %sw.bb.i.i120.i
  %retval.0.i.ph.i123.i = phi i32 [ 2, %sw.bb.i.i120.i ], [ 10, %sw.bb1.i.i122.i ]
  %conv.i124.i = trunc i32 %retval.0.i.ph.i123.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %conv.i124.i)
  %switch.selectcmp.i.i125.i = icmp eq i16 %conv.i124.i, 10
  %switch.select.i.i126.i = select i1 %switch.selectcmp.i.i125.i, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv.i124.i)
  %switch.selectcmp2.i.i127.i = icmp eq i16 %conv.i124.i, 2
  %switch.select3.i.i128.i = select i1 %switch.selectcmp2.i.i127.i, i32 16, i32 %switch.select.i.i126.i
  %add.ptr.i129.i = getelementptr i8, ptr %add.ptr32.i, i32 %switch.select3.i.i128.i
  %104 = ptrtoint ptr %add.ptr.i129.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %add.ptr.i129.i, align 2
  %106 = zext i16 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %105, label %if.end4.i130.i.cleanup_crit_edge [
    i16 2, label %sw.bb.i20.i132.i
    i16 10, label %sw.bb1.i22.i134.i
  ]

if.end4.i130.i.cleanup_crit_edge:                 ; preds = %if.end4.i130.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i20.i132.i:                                 ; preds = %if.end4.i130.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin_addr.i19.i131.i = getelementptr inbounds %struct.sockaddr_in, ptr %add.ptr.i129.i, i32 0, i32 2
  %107 = ptrtoint ptr %sin_addr.i19.i131.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sin_addr.i19.i131.i, align 4
  %109 = ptrtoint ptr %new_daddr.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %new_daddr.i, align 4
  br label %pfkey_sockaddr_extract.exit24.i137.i

sw.bb1.i22.i134.i:                                ; preds = %if.end4.i130.i
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_addr.i21.i133.i = getelementptr inbounds %struct.sockaddr_in6, ptr %add.ptr.i129.i, i32 0, i32 3
  %110 = call ptr @memcpy(ptr %new_daddr.i, ptr %sin6_addr.i21.i133.i, i32 16)
  br label %pfkey_sockaddr_extract.exit24.i137.i

pfkey_sockaddr_extract.exit24.i137.i:             ; preds = %sw.bb1.i22.i134.i, %sw.bb.i20.i132.i
  %retval.0.i23.i135.i = phi i32 [ 10, %sw.bb1.i22.i134.i ], [ 2, %sw.bb.i20.i132.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i23.i135.i, i32 %retval.0.i.ph.i123.i)
  %cmp7.not.i136.i = icmp eq i32 %retval.0.i23.i135.i, %retval.0.i.ph.i123.i
  br i1 %cmp7.not.i136.i, label %if.end39.i, label %pfkey_sockaddr_extract.exit24.i137.i.cleanup_crit_edge

pfkey_sockaddr_extract.exit24.i137.i.cleanup_crit_edge: ; preds = %pfkey_sockaddr_extract.exit24.i137.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end39.i:                                       ; preds = %pfkey_sockaddr_extract.exit24.i137.i
  %111 = ptrtoint ptr %new_family.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv.i124.i, ptr %new_family.i, align 2
  %sadb_x_ipsecrequest_proto.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %rq.0155, i32 0, i32 1
  %112 = ptrtoint ptr %sadb_x_ipsecrequest_proto.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %sadb_x_ipsecrequest_proto.i, align 1
  %sadb_x_ipsecrequest_proto41.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %add.ptr14.i, i32 0, i32 1
  %114 = ptrtoint ptr %sadb_x_ipsecrequest_proto41.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %sadb_x_ipsecrequest_proto41.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %113, i16 %115)
  %cmp43.not.i = icmp eq i16 %113, %115
  br i1 %cmp43.not.i, label %lor.lhs.false45.i, label %if.end39.i.cleanup_crit_edge

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false45.i:                                ; preds = %if.end39.i
  %sadb_x_ipsecrequest_mode.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %rq.0155, i32 0, i32 2
  %116 = ptrtoint ptr %sadb_x_ipsecrequest_mode.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %sadb_x_ipsecrequest_mode.i, align 1
  %sadb_x_ipsecrequest_mode47.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %add.ptr14.i, i32 0, i32 2
  %118 = ptrtoint ptr %sadb_x_ipsecrequest_mode47.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %sadb_x_ipsecrequest_mode47.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %117, i8 %119)
  %cmp49.not.i = icmp eq i8 %117, %119
  br i1 %cmp49.not.i, label %lor.lhs.false51.i, label %lor.lhs.false45.i.cleanup_crit_edge

lor.lhs.false45.i.cleanup_crit_edge:              ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false51.i:                                ; preds = %lor.lhs.false45.i
  %sadb_x_ipsecrequest_reqid.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %rq.0155, i32 0, i32 5
  %120 = ptrtoint ptr %sadb_x_ipsecrequest_reqid.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %sadb_x_ipsecrequest_reqid.i, align 1
  %sadb_x_ipsecrequest_reqid52.i = getelementptr inbounds %struct.sadb_x_ipsecrequest, ptr %add.ptr14.i, i32 0, i32 5
  %122 = ptrtoint ptr %sadb_x_ipsecrequest_reqid52.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %sadb_x_ipsecrequest_reqid52.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %123)
  %cmp53.not.i = icmp eq i32 %121, %123
  br i1 %cmp53.not.i, label %if.end56.i, label %lor.lhs.false51.i.cleanup_crit_edge

lor.lhs.false51.i.cleanup_crit_edge:              ; preds = %lor.lhs.false51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end56.i:                                       ; preds = %lor.lhs.false51.i
  %conv58.i = trunc i16 %113 to i8
  %proto.i = getelementptr [6 x %struct.xfrm_migrate], ptr %m, i32 0, i32 %i.0153, i32 4
  %124 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv58.i, ptr %proto.i, align 4
  %125 = ptrtoint ptr %sadb_x_ipsecrequest_mode.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %sadb_x_ipsecrequest_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %126)
  %127 = icmp ult i8 %126, 4
  br i1 %127, label %switch.lookup, label %if.end56.i.cleanup_crit_edge

if.end56.i.cleanup_crit_edge:                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.lookup:                                    ; preds = %if.end56.i
  %switch.cast = zext i8 %126 to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 67174400, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %mode67.i = getelementptr [6 x %struct.xfrm_migrate], ptr %m, i32 0, i32 %i.0153, i32 5
  %128 = ptrtoint ptr %mode67.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %switch.masked, ptr %mode67.i, align 1
  %129 = ptrtoint ptr %sadb_x_ipsecrequest_reqid.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %sadb_x_ipsecrequest_reqid.i, align 1
  %reqid.i = getelementptr [6 x %struct.xfrm_migrate], ptr %m, i32 0, i32 %i.0153, i32 7
  %131 = ptrtoint ptr %reqid.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %reqid.i, align 4
  %132 = ptrtoint ptr %rq.0155 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %133 = load i16, ptr %rq.0155, align 1
  %conv70.i = zext i16 %133 to i32
  %134 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %add.ptr14.i, align 1
  %conv72.i = zext i16 %135 to i32
  %add.i = add nuw nsw i32 %conv72.i, %conv70.i
  %add.ptr58 = getelementptr i8, ptr %rq.0155, i32 %add.i
  %sub59 = sub nsw i32 %len.0154, %add.i
  %inc = add nuw nsw i32 %i.0153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub59)
  %cmp49 = icmp sgt i32 %sub59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0153)
  %cmp51 = icmp ult i32 %i.0153, 5
  %or.cond = select i1 %cmp49, i1 %cmp51, i1 false
  br i1 %or.cond, label %switch.lookup.while.body_crit_edge, label %while.end

switch.lookup.while.body_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %switch.lookup
  br i1 %cmp49, label %while.end.cleanup_crit_edge, label %if.end66

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end66:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %k. = select i1 %tobool10.not, ptr null, ptr %k
  %call68 = call i32 @xfrm_migrate(ptr noundef nonnull %sel, i8 noundef zeroext %sub21, i8 noundef zeroext 0, ptr noundef nonnull %m, i32 noundef %inc, ptr noundef %k., ptr noundef %3, ptr noundef null, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %while.end.cleanup_crit_edge, %if.end56.i.cleanup_crit_edge, %lor.lhs.false51.i.cleanup_crit_edge, %lor.lhs.false45.i.cleanup_crit_edge, %if.end39.i.cleanup_crit_edge, %pfkey_sockaddr_extract.exit24.i137.i.cleanup_crit_edge, %if.end4.i130.i.cleanup_crit_edge, %if.end.i118.i.cleanup_crit_edge, %lor.lhs.false.i117.i.cleanup_crit_edge, %if.end31.i.cleanup_crit_edge, %lor.lhs.false20.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %pfkey_sockaddr_extract.exit24.i.i.cleanup_crit_edge, %if.end4.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i139.cleanup_crit_edge, %lor.lhs.false.i137.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %pfkey_sockaddr_extract.exit24.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i115.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %present_and_same_family.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call68, %if.end66 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %present_and_same_family.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %while.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ], [ -22, %pfkey_sockaddr_extract.exit24.i.cleanup_crit_edge ], [ -22, %if.end.i115.cleanup_crit_edge ], [ -22, %if.end4.i.cleanup_crit_edge ], [ -22, %if.end44.cleanup_crit_edge ], [ -22, %if.end56.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i137.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ], [ -22, %lor.lhs.false20.i.cleanup_crit_edge ], [ -22, %if.end11.i.cleanup_crit_edge ], [ -22, %lor.lhs.false51.i.cleanup_crit_edge ], [ -22, %lor.lhs.false45.i.cleanup_crit_edge ], [ -22, %if.end39.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -22, %if.end.i139.cleanup_crit_edge ], [ -22, %pfkey_sockaddr_extract.exit24.i.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.end4.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i117.i.cleanup_crit_edge ], [ -22, %if.end31.i.cleanup_crit_edge ], [ -22, %pfkey_sockaddr_extract.exit24.i137.i.cleanup_crit_edge ], [ -22, %if.end.i118.i.cleanup_crit_edge ], [ -22, %if.end4.i130.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %k) #15
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %m) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sel) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_find_acq_byseq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_find_acq(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_spi_info(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_alloc_spi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @km_state_notify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_xfrm_state_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_aalg_get_byid(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_calg_get_byid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_ealg_get_byid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_init_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_xfrm_state_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_probe_algs() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_count_pfkey_auth_supported() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_count_pfkey_enc_supported() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_flush(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_dump_sa(ptr noundef %pfk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %pfk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %u = getelementptr inbounds %struct.pfkey_sock, ptr %pfk, i32 0, i32 3, i32 4
  %call1 = tail call i32 @xfrm_state_walk(ptr noundef %1, ptr noundef %u, ptr noundef nonnull @dump_sa, ptr noundef %pfk) #15
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pfkey_dump_sa_done(ptr noundef %pfk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %pfk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %u = getelementptr inbounds %struct.pfkey_sock, ptr %pfk, i32 0, i32 3, i32 4
  tail call void @xfrm_state_walk_done(ptr noundef %u, ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_state_walk_init(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pfkey_do_dump(ptr noundef %pfk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dump_lock = getelementptr inbounds %struct.pfkey_sock, ptr %pfk, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dump_lock, i32 noundef 0) #15
  %dump1 = getelementptr inbounds %struct.pfkey_sock, ptr %pfk, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %dump1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dump1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(ptr noundef %pfk) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %call)
  %cmp = icmp eq i32 %call, -105
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end5:                                          ; preds = %if.end
  %skb = getelementptr inbounds %struct.pfkey_sock, ptr %pfk, i32 0, i32 3, i32 5
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end5.if.end23_crit_edge, label %if.then8

if.end5.if.end23_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then8:                                         ; preds = %if.end5
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %pfk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #15
  %4 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_backlog.i, align 4
  %mul.i = mul i32 %5, 3
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %pfk, i32 0, i32 15
  %6 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_rcvbuf.i, align 8
  %mul1.i = shl i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul1.i)
  %cmp.not.i.not = icmp sgt i32 %mul.i, %mul1.i
  br i1 %cmp.not.i.not, label %if.then8.out_crit_edge, label %if.end12

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %sadb_msg_seq, align 1
  %conv = trunc i32 %call to i8
  %sadb_msg_errno = getelementptr inbounds %struct.sadb_msg, ptr %11, i32 0, i32 2
  %13 = ptrtoint ptr %sadb_msg_errno to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %sadb_msg_errno, align 1
  %14 = load ptr, ptr %skb, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %pfk, i32 0, i32 9
  %15 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i, align 4
  %call20 = tail call fastcc i32 @pfkey_broadcast(ptr noundef %14, i32 noundef 2592, i32 noundef 1, ptr noundef %pfk, ptr noundef %16)
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %skb, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end12, %if.end5.if.end23_crit_edge
  %18 = ptrtoint ptr %dump1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dump1, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end23.out_crit_edge, label %if.then.i

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then.i:                                        ; preds = %if.end23
  %20 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef nonnull %21, i32 noundef 0) #15
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %skb, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %done.i = getelementptr inbounds %struct.pfkey_sock, ptr %pfk, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %done.i, align 4
  tail call void %24(ptr noundef %pfk) #15
  %25 = ptrtoint ptr %dump1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dump1, align 8
  %26 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %done.i, align 4
  br label %out

out:                                              ; preds = %if.end.i, %if.end23.out_crit_edge, %if.then8.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ 0, %if.then8.out_crit_edge ], [ %call, %if.end23.out_crit_edge ], [ %call, %if.end.i ]
  tail call void @mutex_unlock(ptr noundef %dump_lock) #15
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dump_sa(ptr noundef %x, i32 noundef %count, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %ptr, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #15
  %0 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_backlog.i, align 4
  %mul.i = mul i32 %1, 3
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %ptr, i32 0, i32 15
  %2 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_rcvbuf.i, align 8
  %mul1.i = shl i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul1.i)
  %cmp.not.i.not = icmp sgt i32 %mul.i, %mul1.i
  br i1 %cmp.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @__pfkey_xfrm_state2msg(ptr noundef %x, i32 noundef 1, i32 noundef 3) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %dump = getelementptr inbounds %struct.pfkey_sock, ptr %ptr, i32 0, i32 3
  %7 = ptrtoint ptr %dump to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dump, align 8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %6, align 1
  %sadb_msg_type = getelementptr inbounds %struct.sadb_msg, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %sadb_msg_type, align 1
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %proto, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %12, label %sw.default.i [
    i8 51, label %if.end5.pfkey_proto2satype.exit_crit_edge
    i8 50, label %sw.bb1.i
    i8 108, label %sw.bb2.i
  ]

if.end5.pfkey_proto2satype.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.bb1.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.bb2.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

sw.default.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_proto2satype.exit

pfkey_proto2satype.exit:                          ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end5.pfkey_proto2satype.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %sw.default.i ], [ 9, %sw.bb2.i ], [ 3, %sw.bb1.i ], [ 2, %if.end5.pfkey_proto2satype.exit_crit_edge ]
  %sadb_msg_satype = getelementptr inbounds %struct.sadb_msg, ptr %6, i32 0, i32 3
  %14 = ptrtoint ptr %sadb_msg_satype to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %retval.0.i, ptr %sadb_msg_satype, align 1
  %sadb_msg_errno = getelementptr inbounds %struct.sadb_msg, ptr %6, i32 0, i32 2
  %15 = ptrtoint ptr %sadb_msg_errno to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %sadb_msg_errno, align 1
  %sadb_msg_reserved = getelementptr inbounds %struct.sadb_msg, ptr %6, i32 0, i32 5
  %16 = ptrtoint ptr %sadb_msg_reserved to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 0, ptr %sadb_msg_reserved, align 1
  %add = add i32 %count, 1
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %6, i32 0, i32 6
  %17 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %add, ptr %sadb_msg_seq, align 1
  %msg_portid = getelementptr inbounds %struct.pfkey_sock, ptr %ptr, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %msg_portid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_portid, align 4
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %6, i32 0, i32 7
  %20 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %sadb_msg_pid, align 1
  %skb = getelementptr inbounds %struct.pfkey_sock, ptr %ptr, i32 0, i32 3, i32 5
  %21 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb, align 4
  %tobool9.not = icmp eq ptr %22, null
  br i1 %tobool9.not, label %pfkey_proto2satype.exit.if.end17_crit_edge, label %if.then10

pfkey_proto2satype.exit.if.end17_crit_edge:       ; preds = %pfkey_proto2satype.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then10:                                        ; preds = %pfkey_proto2satype.exit
  call void @__sanitizer_cov_trace_pc() #17
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %ptr, i32 0, i32 9
  %23 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skc_net.i, align 4
  %call16 = tail call fastcc i32 @pfkey_broadcast(ptr noundef nonnull %22, i32 noundef 2592, i32 noundef 1, ptr noundef %ptr, ptr noundef %24)
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %pfkey_proto2satype.exit.if.end17_crit_edge
  %25 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then3 ], [ 0, %if.end17 ], [ -105, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_state_walk_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_policy_insert(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @km_policy_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfrm_pol_put(ptr noundef %policy) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %refcnt = getelementptr inbounds %struct.xfrm_policy, ptr %policy, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #15, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !112

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !126
  tail call void @xfrm_policy_destroy(ptr noundef %policy) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_policy_bysel_ctx(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_xfrm_policy_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_policy_byid(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfkey_dump_sp(ptr noundef %pfk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %pfk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %u = getelementptr inbounds %struct.pfkey_sock, ptr %pfk, i32 0, i32 3, i32 4
  %call1 = tail call i32 @xfrm_policy_walk(ptr noundef %1, ptr noundef %u, ptr noundef nonnull @dump_sp, ptr noundef %pfk) #15
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pfkey_dump_sp_done(ptr noundef %pfk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %pfk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %u = getelementptr inbounds %struct.pfkey_sock, ptr %pfk, i32 0, i32 3, i32 4
  tail call void @xfrm_policy_walk_done(ptr noundef %u, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dump_sp(ptr noundef %xp, i32 noundef %dir, i32 noundef %count, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %ptr, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #15
  %0 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_backlog.i, align 4
  %mul.i = mul i32 %1, 3
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %ptr, i32 0, i32 15
  %2 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_rcvbuf.i, align 8
  %mul1.i = shl i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul1.i)
  %cmp.not.i.not = icmp sgt i32 %mul.i, %mul1.i
  br i1 %cmp.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %family.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 22
  %4 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %family.i.i, align 2
  %xfrm_nr.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 21
  %6 = ptrtoint ptr %xfrm_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %xfrm_nr.i.i, align 4
  %conv.i.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp20.not.i.i = icmp eq i8 %7, 0
  br i1 %cmp20.not.i.i, label %if.end.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.for.end.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %xfrm_vec.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 24
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.022.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %socklen.021.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %encap_family.i.i = getelementptr %struct.xfrm_tmpl, ptr %xfrm_vec.i.i, i32 %i.022.i.i, i32 2
  %8 = ptrtoint ptr %encap_family.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %encap_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %9)
  %switch.selectcmp.i.i.i = icmp eq i16 %9, 10
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 28, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %switch.selectcmp2.i.i.i = icmp eq i16 %9, 2
  %switch.select3.i.i.i = select i1 %switch.selectcmp2.i.i.i, i32 16, i32 %switch.select.i.i.i
  %add.i.i = add i32 %switch.select3.i.i.i, %socklen.021.i.i
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.end.loopexit.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.end.loopexit.i.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %phi.bo.i.i = shl i32 %add.i.i, 1
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.loopexit.i.i, %if.end.for.end.i.i_crit_edge
  %socklen.0.lcssa.i.i = phi i32 [ 0, %if.end.for.end.i.i_crit_edge ], [ %phi.bo.i.i, %for.end.loopexit.i.i ]
  %security.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 23
  %10 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %security.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %for.end.i.i.pfkey_xfrm_policy2msg_prep.exit_crit_edge, label %if.then.i.i.i

for.end.i.i.pfkey_xfrm_policy2msg_prep.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pfkey_xfrm_policy2msg_prep.exit

if.then.i.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ctx_len.i.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ctx_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ctx_len.i.i.i, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %sub.i.i.i = add nuw nsw i32 %conv.i.i.i, 7
  %or.i.i.i = or i32 %sub.i.i.i, 7
  %add1.i.i.i = add nuw nsw i32 %or.i.i.i, 1
  br label %pfkey_xfrm_policy2msg_prep.exit

pfkey_xfrm_policy2msg_prep.exit:                  ; preds = %if.then.i.i.i, %for.end.i.i.pfkey_xfrm_policy2msg_prep.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %add1.i.i.i, %if.then.i.i.i ], [ 0, %for.end.i.i.pfkey_xfrm_policy2msg_prep.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %switch.selectcmp2.i.i.i.i = icmp eq i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %5)
  %switch.selectcmp.i.i.i.i = icmp eq i16 %5, 10
  %mul7.i.i = shl nuw nsw i32 %conv.i.i, 4
  %switch.select.i.op.op.op.i.op.i.op.i = select i1 %switch.selectcmp.i.i.i.i, i32 224, i32 160
  %add8.i.i = select i1 %switch.selectcmp2.i.i.i.i, i32 192, i32 %switch.select.i.op.op.op.i.op.i.op.i
  %add10.i.i = add nuw nsw i32 %add8.i.i, %mul7.i.i
  %add12.i.i = add i32 %add10.i.i, %socklen.0.lcssa.i.i
  %add.i = add i32 %add12.i.i, %retval.0.i.i.i
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %cmp.i = icmp eq ptr %call.i.i, null
  %spec.select.i = select i1 %cmp.i, ptr inttoptr (i32 -105 to ptr), ptr %call.i.i
  %cmp.i44 = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %if.then3, label %if.end5

if.then3:                                         ; preds = %pfkey_xfrm_policy2msg_prep.exit
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %spec.select.i to i32
  br label %cleanup

if.end5:                                          ; preds = %pfkey_xfrm_policy2msg_prep.exit
  %call6 = tail call fastcc i32 @pfkey_xfrm_policy2msg(ptr noundef %spec.select.i, ptr noundef %xp, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef %spec.select.i, i32 noundef 0) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %data = getelementptr inbounds %struct.sk_buff, ptr %spec.select.i, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %dump = getelementptr inbounds %struct.pfkey_sock, ptr %ptr, i32 0, i32 3
  %17 = ptrtoint ptr %dump to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dump, align 8
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %16, align 1
  %sadb_msg_type = getelementptr inbounds %struct.sadb_msg, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %sadb_msg_type to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 18, ptr %sadb_msg_type, align 1
  %sadb_msg_satype = getelementptr inbounds %struct.sadb_msg, ptr %16, i32 0, i32 3
  %21 = ptrtoint ptr %sadb_msg_satype to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %sadb_msg_satype, align 1
  %sadb_msg_errno = getelementptr inbounds %struct.sadb_msg, ptr %16, i32 0, i32 2
  %22 = ptrtoint ptr %sadb_msg_errno to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %sadb_msg_errno, align 1
  %add = add i32 %count, 1
  %sadb_msg_seq = getelementptr inbounds %struct.sadb_msg, ptr %16, i32 0, i32 6
  %23 = ptrtoint ptr %sadb_msg_seq to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %add, ptr %sadb_msg_seq, align 1
  %msg_portid = getelementptr inbounds %struct.pfkey_sock, ptr %ptr, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %msg_portid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_portid, align 4
  %sadb_msg_pid = getelementptr inbounds %struct.sadb_msg, ptr %16, i32 0, i32 7
  %26 = ptrtoint ptr %sadb_msg_pid to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %sadb_msg_pid, align 1
  %skb = getelementptr inbounds %struct.pfkey_sock, ptr %ptr, i32 0, i32 3, i32 5
  %27 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb, align 4
  %tobool11.not = icmp eq ptr %28, null
  br i1 %tobool11.not, label %if.end8.if.end19_crit_edge, label %if.then12

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %ptr, i32 0, i32 9
  %29 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skc_net.i, align 4
  %call18 = tail call fastcc i32 @pfkey_broadcast(ptr noundef nonnull %28, i32 noundef 2592, i32 noundef 1, ptr noundef %ptr, ptr noundef %30)
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.end8.if.end19_crit_edge
  %31 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %spec.select.i, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then7, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then3 ], [ %call6, %if.then7 ], [ 0, %if.end19 ], [ -105, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_policy_flush(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_migrate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef %kt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %sk_stamp_seq = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64
  %lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #15
  %0 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !129
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 0, i32 0, i32 1
  %2 = tail call ptr @llvm.returnaddress(i32 0) #15
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #15
  %sk_stamp = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %4 = ptrtoint ptr %sk_stamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %kt, ptr %sk_stamp, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !130
  %5 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !30, !32, !33, !35, !36, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !74, !75, !77, !79, !80, !82, !84, !86, !88, !90, !91, !92}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_af_key__520_3908_ipsec_pfkey_init6, !1, !"__initcall__kmod_af_key__520_3908_ipsec_pfkey_init6", i1 false, i1 false}
!1 = !{!"../net/key/af_key.c", i32 3908, i32 1}
!2 = !{ptr @__exitcall_ipsec_pfkey_exit, !3, !"__exitcall_ipsec_pfkey_exit", i1 false, i1 false}
!3 = !{!"../net/key/af_key.c", i32 3909, i32 1}
!4 = !{ptr @__UNIQUE_ID_file521, !5, !"__UNIQUE_ID_file521", i1 false, i1 false}
!5 = !{!"../net/key/af_key.c", i32 3910, i32 1}
!6 = !{ptr @__UNIQUE_ID_license522, !5, !"__UNIQUE_ID_license522", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias523, !8, !"__UNIQUE_ID_alias523", i1 false, i1 false}
!8 = !{!"../net/key/af_key.c", i32 3911, i32 1}
!9 = !{ptr @pfkeyv2_mgr, !10, !"pfkeyv2_mgr", i1 false, i1 false}
!10 = !{!"../net/key/af_key.c", i32 3833, i32 24}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/key/af_key.c", i32 3075, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pfkey_send_notify._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @pfkey_send_notify._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pfkey_net_id, !29, !"pfkey_net_id", i1 false, i1 false}
!29 = !{!"../net/key/af_key.c", i32 35, i32 21}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/key/af_key.c", i32 230, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/key/af_key.c", i32 1465, i32 3}
!35 = !{ptr @event2keytype._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @event2keytype._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @get_acqseq.acqseq, !38, !"acqseq", i1 false, i1 false}
!38 = !{!"../net/key/af_key.c", i32 3109, i32 18}
!39 = !{ptr @gen_reqid.reqid, !40, !"reqid", i1 false, i1 false}
!40 = !{!"../net/key/af_key.c", i32 1923, i32 13}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/key/af_key.c", i32 3099, i32 3}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pfkey_send_policy_notify._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @pfkey_send_policy_notify._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/key/af_key.c", i32 1446, i32 3}
!48 = !{ptr @event2poltype._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @event2poltype._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/key/af_key.c", i32 3124, i32 2}
!52 = !{ptr @pfkey_net_ops, !53, !"pfkey_net_ops", i1 false, i1 false}
!53 = !{!"../net/key/af_key.c", i32 3865, i32 33}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/key/af_key.c", i32 3810, i32 6}
!56 = !{ptr @pfkey_seq_ops, !57, !"pfkey_seq_ops", i1 false, i1 false}
!57 = !{!"../net/key/af_key.c", i32 3799, i32 36}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/key/af_key.c", i32 3762, i32 17}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/key/af_key.c", i32 3764, i32 17}
!62 = !{ptr @key_proto, !63, !"key_proto", i1 false, i1 false}
!63 = !{!"../net/key/af_key.c", i32 132, i32 21}
!64 = !{ptr @pfkey_family_ops, !65, !"pfkey_family_ops", i1 false, i1 false}
!65 = !{!"../net/key/af_key.c", i32 3750, i32 38}
!66 = !{ptr @pfkey_create.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../net/key/af_key.c", i32 157, i32 2}
!68 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pfkey_ops, !70, !"pfkey_ops", i1 false, i1 false}
!70 = !{!"../net/key/af_key.c", i32 3728, i32 31}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/key/af_key.c", i32 41, i32 8}
!73 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @pfkey_mutex, !72, !"pfkey_mutex", i1 false, i1 false}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/net/sock.h", i32 729, i32 3}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!79 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!82 = !{ptr @sadb_ext_min_len, !83, !"sadb_ext_min_len", i1 false, i1 false}
!83 = !{!"../net/key/af_key.c", i32 345, i32 17}
!84 = !{ptr @pfkey_funcs, !85, !"pfkey_funcs", i1 false, i1 false}
!85 = !{!"../net/key/af_key.c", i32 2798, i32 28}
!86 = !{ptr @dummy_mark, !87, !"dummy_mark", i1 false, i1 false}
!87 = !{!"../net/key/af_key.c", i32 44, i32 31}
!88 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/key/af_key.c", i32 103, i32 3}
!90 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @pfkey_sock_destruct._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @pfkey_sock_destruct._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2148565148}
!104 = !{i64 2148480433, i64 2148480465, i64 2148480494, i64 2148480528, i64 2148480559, i64 2148480582}
!105 = !{i64 2148565377}
!106 = !{i64 2157978648, i64 2157979130, i64 2157978685, i64 2157978741, i64 2157978775, i64 2157978799, i64 2157978840, i64 2157978861, i64 2157978889, i64 2157978923}
!107 = !{i64 2157980122, i64 2157980604, i64 2157980159, i64 2157980215, i64 2157980249, i64 2157980273, i64 2157980314, i64 2157980335, i64 2157980363, i64 2157980397}
!108 = !{i64 2157983278, i64 2157987821, i64 2157983315, i64 2157983371, i64 2157983405, i64 2157983429, i64 2157983470, i64 2157983491, i64 2157983519, i64 2157983553}
!109 = !{i64 2157988816, i64 2157989298, i64 2157988853, i64 2157988909, i64 2157988943, i64 2157988967, i64 2157989008, i64 2157989029, i64 2157989057, i64 2157989091}
!110 = !{i64 2149485801}
!111 = !{i64 2149486067}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 2157930646, i64 2157931127, i64 2157930683, i64 2157930739, i64 2157930773, i64 2157930797, i64 2157930838, i64 2157930859, i64 2157930887, i64 2157930921}
!114 = !{i64 2157932650, i64 2157933131, i64 2157932687, i64 2157932743, i64 2157932777, i64 2157932801, i64 2157932842, i64 2157932863, i64 2157932891, i64 2157932925}
!115 = !{i64 2157934257, i64 2157934738, i64 2157934294, i64 2157934350, i64 2157934384, i64 2157934408, i64 2157934449, i64 2157934470, i64 2157934498, i64 2157934532}
!116 = !{i64 2154696351, i64 2154696839, i64 2154696388, i64 2154696444, i64 2154696478, i64 2154696502, i64 2154696543, i64 2154696564, i64 2154696592, i64 2154696626}
!117 = !{i64 2148479713, i64 2148479739, i64 2148479768, i64 2148479802, i64 2148479833, i64 2148479856}
!118 = !{i64 2157947527, i64 2157948009, i64 2157947564, i64 2157947620, i64 2157947654, i64 2157947678, i64 2157947719, i64 2157947740, i64 2157947768, i64 2157947802}
!119 = !{i64 2148481243, i64 2148481275, i64 2148481304, i64 2148481338, i64 2148481369, i64 2148481392}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i64 2152148424}
!122 = !{i64 2152133357}
!123 = !{i64 2148482178, i64 2148482204, i64 2148482233, i64 2148482267, i64 2148482298, i64 2148482321}
!124 = !{i64 2148569268}
!125 = !{i64 2148483708, i64 2148483740, i64 2148483769, i64 2148483803, i64 2148483834, i64 2148483857}
!126 = !{i64 2149435311}
!127 = !{i64 2157922012, i64 2157922493, i64 2157922049, i64 2157922105, i64 2157922139, i64 2157922163, i64 2157922204, i64 2157922225, i64 2157922253, i64 2157922287}
!128 = !{!"auto-init"}
!129 = !{i64 2150101793}
!130 = !{i64 2150102118}
