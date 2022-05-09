; ModuleID = '/llk/IR_all_yes/net/ipv6/ah6.c_pt.bc'
source_filename = "../net/ipv6/ah6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfrm6_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.134 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.135, %union.anon.136, [48 x i8], %union.anon.137, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.139, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.135 = type { ptr }
%union.anon.136 = type { i64 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, ptr }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.141, i32, i32, i32, i16, i16, %union.anon.143, i32, %union.anon.144, %union.anon.145, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.141 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.ip_auth_hdr = type { i8, i8, i16, i32, i32, [0 x i8] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.132, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.133, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.132 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.133 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.ah_data = type { i32, i32, ptr }
%struct.xfrm_algo_auth = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon.160, %struct.sadb_alg }
%union.anon.160 = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }
%struct.xfrm_algo_auth_info = type { i16, i16 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.156, ptr, ptr, ptr, ptr, %union.anon.157, [120 x i8] }
%union.anon.156 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.157 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.30, %union.anon.91, %struct.atomic_t, i32 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.91 = type { %struct.atomic_t }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.ipv6_destopt_hao = type <{ i8, i8, %struct.in6_addr }>
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.rt0_hdr = type { %struct.ipv6_rt_hdr, i32, [0 x %struct.in6_addr] }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.168, i32, i32, i8, i8 }
%struct.anon.168 = type { i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }

@ah6_protocol = internal global { %struct.xfrm6_protocol, [40 x i8] } { %struct.xfrm6_protocol { ptr @xfrm6_rcv, ptr @xfrm_input, ptr @ah6_rcv_cb, ptr @ah6_err, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ah6_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016IPv6: %s: can't remove protocol\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ah6_fini\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/ipv6/ah6.c\00", [17 x i8] zeroinitializer }, align 32
@ah6_fini._entry_ptr = internal global ptr @ah6_fini._entry, section ".printk_index", align 4
@ah6_type = internal constant { %struct.xfrm_type, [36 x i8] } { %struct.xfrm_type { ptr null, i8 51, i8 2, ptr @ah6_init_state, ptr @ah6_destroy, ptr @ah6_input, ptr @ah6_output, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ah6__567_796_ah6_init6 = internal global ptr @ah6_init, section ".initcall6.init", align 4
@__exitcall_ah6_fini = internal global ptr @ah6_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file568 = internal constant [22 x i8] c"ah6.file=net/ipv6/ah6\00", section ".modinfo", align 1
@__UNIQUE_ID_license569 = internal constant [16 x i8] c"ah6.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias570 = internal constant [26 x i8] c"ah6.alias=xfrm-type-10-51\00", section ".modinfo", align 1
@ah6_init_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016IPv6: AH: %s digestsize %u != %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ah6_init_state\00", [17 x i8] zeroinitializer }, align 32
@ah6_init_state._entry_ptr = internal global ptr @ah6_init_state._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@ipv6_clear_mutable_options.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ah6\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ipv6_clear_mutable_options\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"overrun %sopts\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IPv6: overrun %sopts\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hop\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dest\00", [27 x i8] zeroinitializer }, align 32
@ipv6_rearrange_destopt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014IPv6: destopt hao: invalid header length: %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipv6_rearrange_destopt\00", [41 x i8] zeroinitializer }, align 32
@ipv6_rearrange_destopt._entry_ptr = internal global ptr @ipv6_rearrange_destopt._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ah6_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016IPv6: %s: can't add xfrm type\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ah6_init\00", [23 x i8] zeroinitializer }, align 32
@ah6_init._entry_ptr = internal global ptr @ah6_init._entry, section ".printk_index", align 4
@ah6_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016IPv6: %s: can't add protocol\0A\00", [32 x i8] zeroinitializer }, align 32
@ah6_init._entry_ptr.18 = internal global ptr @ah6_init._entry.16, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 137]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 43, i64 60]
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"ah6_protocol\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 764, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 791, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [9 x i8] c"ah6_type\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 754, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 705, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1719, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 262, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 182, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 775, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [18 x i8] c"../net/ipv6/ah6.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 780, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias570, ptr @__UNIQUE_ID_file568, ptr @__UNIQUE_ID_license569, ptr @__exitcall_ah6_fini, ptr @__initcall__kmod_ah6__567_796_ah6_init6, ptr @ah6_fini, ptr @ah6_fini._entry, ptr @ah6_fini._entry_ptr, ptr @ah6_init._entry, ptr @ah6_init._entry.16, ptr @ah6_init._entry_ptr, ptr @ah6_init._entry_ptr.18, ptr @ah6_init_state._entry, ptr @ah6_init_state._entry_ptr, ptr @ipv6_rearrange_destopt._entry, ptr @ipv6_rearrange_destopt._entry_ptr, ptr @ah6_protocol, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ah6_type, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah6_protocol to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah6_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah6_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah6_init_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_rearrange_destopt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah6_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah6_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ah6_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @ah6_protocol, i8 noundef zeroext 51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @xfrm_unregister_type(ptr noundef nonnull @ah6_type, i16 noundef zeroext 10) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_deregister(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_unregister_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ah6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm_register_type(ptr noundef nonnull @ah6_type, i16 noundef zeroext 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #13
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @xfrm6_protocol_register(ptr noundef nonnull @ah6_protocol, i8 noundef zeroext 51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15) #13
  tail call void @xfrm_unregister_type(ptr noundef nonnull @ah6_type, i16 noundef zeroext 10) #10
  br label %return

return:                                           ; preds = %do.end6, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ -11, %do.end6 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_rcv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ah6_rcv_cb(ptr nocapture noundef readnone %skb, i32 noundef %err) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ah6_err(ptr noundef %skb, ptr nocapture noundef readnone %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %5 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %entry.cleanup_crit_edge [
    i8 2, label %entry.if.end_crit_edge
    i8 -119, label %entry.if.end_crit_edge39
  ]

entry.if.end_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge39
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %offset
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %7, i32 0, i32 6
  %spi = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr, i32 0, i32 3
  %11 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spi, align 4
  %call6 = tail call ptr @xfrm_state_lookup(ptr noundef %4, i32 noundef %10, ptr noundef %daddr, i32 noundef %12, i8 noundef zeroext 51, i16 noundef zeroext 10) #10
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %type)
  %cmp10 = icmp eq i8 %type, -119
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ifindex, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %17 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user_ns.i, align 4
  %call.i = tail call i32 @make_kuid(ptr noundef %18, i32 noundef 0) #10
  %.fca.0.insert23 = insertvalue [1 x i32] poison, i32 %call.i, 0
  tail call void @ip6_redirect(ptr noundef %skb, ptr noundef %4, i32 noundef %16, i32 noundef 0, [1 x i32] %.fca.0.insert23) #10
  br label %if.end19

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %user_ns.i37 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %19 = ptrtoint ptr %user_ns.i37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %user_ns.i37, align 4
  %call.i38 = tail call i32 @make_kuid(ptr noundef %20, i32 noundef 0) #10
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call.i38, 0
  tail call void @ip6_update_pmtu(ptr noundef %skb, ptr noundef %4, i32 noundef %info, i32 noundef 0, i32 noundef 0, [1 x i32] %.fca.0.insert) #10
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then12
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call6, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !59

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call6, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ah6_init_state(ptr nocapture noundef %x) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aalg = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 16
  %0 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aalg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %2 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encap, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #14
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aalg, align 8
  %call8 = tail call ptr @crypto_alloc_ahash(ptr noundef %6, i32 noundef 0, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.if.then69_crit_edge, label %if.end11

if.end6.if.then69_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

if.end11:                                         ; preds = %if.end6
  %ahash12 = getelementptr inbounds %struct.ah_data, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ahash12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %ahash12, align 8
  %8 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aalg, align 8
  %alg_key = getelementptr inbounds %struct.xfrm_algo_auth, ptr %9, i32 0, i32 3
  %alg_key_len = getelementptr inbounds %struct.xfrm_algo_auth, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %alg_key_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alg_key_len, align 4
  %add = add i32 %11, 7
  %div100 = lshr i32 %add, 3
  %call16 = tail call i32 @crypto_ahash_setkey(ptr noundef %call8, ptr noundef %alg_key, i32 noundef %div100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end11.if.then69_crit_edge

if.end11.if.then69_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

if.end19:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aalg, align 8
  %call23 = tail call ptr @xfrm_aalg_get_byname(ptr noundef %13, i32 noundef 0) #10
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.body29, label %do.end35, !prof !61

do.body29:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/ah6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 701, 0\0A.popsection", ""() #10, !srcloc !62
  unreachable

do.end35:                                         ; preds = %if.end19
  %uinfo = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call23, i32 0, i32 3
  %icv_fullbits = getelementptr inbounds %struct.xfrm_algo_auth_info, ptr %uinfo, i32 0, i32 1
  %14 = ptrtoint ptr %icv_fullbits to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %icv_fullbits, align 2
  %16 = lshr i16 %15, 3
  %div36 = zext i16 %16 to i32
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call8, i32 0, i32 10, i32 3
  %17 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 -128
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %div36)
  %cmp.not = icmp eq i32 %20, %div36
  br i1 %cmp.not, label %if.end52, label %do.end42

do.end42:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aalg, align 8
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %22, i32 noundef %20, i32 noundef %div36) #13
  br label %if.then69

if.end52:                                         ; preds = %do.end35
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div36, ptr %call7.i.i, align 8
  %24 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aalg, align 8
  %alg_trunc_len = getelementptr inbounds %struct.xfrm_algo_auth, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %alg_trunc_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %alg_trunc_len, align 4
  %div58101 = lshr i32 %27, 3
  %icv_trunc_len = getelementptr inbounds %struct.ah_data, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div58101, ptr %icv_trunc_len, align 4
  %add61 = add nuw nsw i32 %div58101, 19
  %and = and i32 %add61, 1073741816
  %header_len = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %29 = ptrtoint ptr %header_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and, ptr %header_len, align 4
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mode, align 4
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %31, label %if.end52.if.then69_crit_edge [
    i8 4, label %if.end52.sw.epilog_crit_edge
    i8 0, label %if.end52.sw.epilog_crit_edge107
    i8 1, label %sw.bb64
  ]

if.end52.sw.epilog_crit_edge107:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end52.if.then69_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

sw.bb64:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %add67 = add nuw nsw i32 %and, 40
  %33 = ptrtoint ptr %header_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add67, ptr %header_len, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb64, %if.end52.sw.epilog_crit_edge, %if.end52.sw.epilog_crit_edge107
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %data, align 8
  br label %cleanup

if.then69:                                        ; preds = %if.end52.if.then69_crit_edge, %do.end42, %if.end11.if.then69_crit_edge, %if.end6.if.then69_crit_edge
  %ahash70 = getelementptr inbounds %struct.ah_data, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %ahash70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ahash70, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %36, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %36, ptr noundef %base.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %sw.epilog, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -12, %if.end3.cleanup_crit_edge ], [ -22, %if.then69 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ah6_destroy(ptr nocapture noundef readonly %x) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ahash = getelementptr inbounds %struct.ah_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ahash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ahash, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ah6_input(ptr nocapture noundef readonly %x, ptr noundef %skb) #4 align 64 {
entry:
  %trailer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trailer) #10
  %0 = ptrtoint ptr %trailer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %trailer, align 4, !annotation !63
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 12
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !61

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp3.i = icmp ult i32 %2, 12
  br i1 %cmp3.i, label %if.end.i.out_crit_edge, label %pskb_may_pull.exit, !prof !61

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 12, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pskb_may_pull.exit.out_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %5 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.if.end3_crit_edge, label %skb_cloned.exit.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

skb_cloned.exit.i:                                ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end3_crit_edge, label %skb_unclone.exit

skb_cloned.exit.i.if.end3_crit_edge:              ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

skb_unclone.exit:                                 ; preds = %skb_cloned.exit.i
  %call7.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %skb_unclone.exit.if.end3_crit_edge, label %skb_unclone.exit.out_crit_edge

skb_unclone.exit.out_crit_edge:                   ; preds = %skb_unclone.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

skb_unclone.exit.if.end3_crit_edge:               ; preds = %skb_unclone.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %skb_unclone.exit.if.end3_crit_edge, %skb_cloned.exit.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %10 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %12 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %14 to i32
  %sub.i211 = sub nsw i32 %conv.i, %conv1.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %data5 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %17 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data5, align 8
  %ahash6 = getelementptr inbounds %struct.ah_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ahash6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ahash6, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %16, align 4
  %conv8 = zext i8 %22 to i32
  %hdrlen = getelementptr inbounds %struct.ip_auth_hdr, ptr %16, i32 0, i32 1
  %23 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hdrlen, align 1
  %conv9 = zext i8 %24 to i32
  %add = shl nuw nsw i32 %conv9, 2
  %shl = add nuw nsw i32 %add, 8
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %18, align 4
  %add13 = add i32 %26, 19
  %and = and i32 %add13, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and)
  %cmp.not = icmp eq i32 %shl, %and
  br i1 %cmp.not, label %if.end3.if.end22_crit_edge, label %land.lhs.true

if.end3.if.end22_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end3
  %icv_trunc_len = getelementptr inbounds %struct.ah_data, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %icv_trunc_len, align 4
  %add17 = add i32 %28, 19
  %and18 = and i32 %add17, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and18)
  %cmp19.not = icmp eq i32 %shl, %and18
  br i1 %cmp19.not, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end3.if.end22_crit_edge
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  %31 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i214 = sub i32 %30, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %sub.i.i214)
  %cmp.not.i215 = icmp ugt i32 %shl, %sub.i.i214
  br i1 %cmp.not.i215, label %if.end.i217, label %if.end22.if.end26_crit_edge, !prof !61

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end.i217:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %shl)
  %cmp3.i216 = icmp ult i32 %30, %shl
  br i1 %cmp3.i216, label %if.end.i217.out_crit_edge, label %pskb_may_pull.exit223, !prof !61

if.end.i217.out_crit_edge:                        ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

pskb_may_pull.exit223:                            ; preds = %if.end.i217
  %sub.i218 = sub i32 %shl, %sub.i.i214
  %call13.i219 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i218) #10
  %cmp14.i220.not = icmp eq ptr %call13.i219, null
  br i1 %cmp14.i220.not, label %pskb_may_pull.exit223.out_crit_edge, label %pskb_may_pull.exit223.if.end26_crit_edge

pskb_may_pull.exit223.if.end26_crit_edge:         ; preds = %pskb_may_pull.exit223
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

pskb_may_pull.exit223.out_crit_edge:              ; preds = %pskb_may_pull.exit223
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end26:                                         ; preds = %pskb_may_pull.exit223.if.end26_crit_edge, %if.end22.if.end26_crit_edge
  %call27 = call i32 @skb_cow_data(ptr noundef %skb, i32 noundef 0, ptr noundef nonnull %trailer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.out_crit_edge, label %if.end31

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end31:                                         ; preds = %if.end26
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i, align 8
  %37 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %38 to i32
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %conv.i.i
  %conv34 = and i32 %sub.i211, 65535
  %call35 = call ptr @skb_push(ptr noundef %skb, i32 noundef %conv34) #10
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags, align 1
  %41 = lshr i8 %40, 5
  %42 = and i8 %41, 4
  %43 = zext i8 %42 to i32
  %.lobit = lshr i8 %40, 7
  %44 = zext i8 %.lobit to i32
  %add41 = add nuw i32 %call27, %44
  %icv_trunc_len43 = getelementptr inbounds %struct.ah_data, ptr %18, i32 0, i32 1
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %20, i32 0, i32 10, i32 3
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %20, i32 0, i32 8
  %45 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reqsize.i.i, align 32
  %add13.i = add i32 %46, 131
  %add44 = add nuw nsw i32 %conv34, 127
  %47 = ptrtoint ptr %icv_trunc_len43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %icv_trunc_len43, align 4
  %add45 = add i32 %add44, %48
  %add.i = add i32 %add45, %43
  %49 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %50, i32 -128
  %51 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %add3.i = add i32 %add.i, %52
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %50, i32 0, i32 5
  %53 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %and.i = and i32 %54, -128
  %add6.i = add i32 %add3.i, %and.i
  %and10.i = and i32 %add6.i, -128
  %add14.i = add i32 %add13.i, %and10.i
  %and15.i = and i32 %add14.i, -4
  %mul.i = mul i32 %add41, 20
  %add16.i = add i32 %and15.i, %mul.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add16.i, i32 noundef 2592) #15
  %tobool47.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool47.not, label %if.end31.out_crit_edge, label %if.end49

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end49:                                         ; preds = %if.end31
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %conv34
  %55 = ptrtoint ptr %icv_trunc_len43 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %icv_trunc_len43, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %56
  %add.ptr.i224 = getelementptr i8, ptr %add.ptr, i32 %43
  %57 = ptrtoint ptr %add.ptr.i224 to i32
  %58 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i226 = getelementptr inbounds %struct.crypto_alg, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %cra_alignmask.i.i.i226 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cra_alignmask.i.i.i226, align 4
  %add1.i = add i32 %61, %57
  %neg.i = xor i32 %61, -1
  %and.i227 = and i32 %add1.i, %neg.i
  %62 = inttoptr i32 %and.i227 to ptr
  %add.ptr.i.i.i.i229 = getelementptr i8, ptr %59, i32 -128
  %63 = ptrtoint ptr %add.ptr.i.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i.i.i229, align 128
  %add.ptr.i230 = getelementptr i8, ptr %62, i32 %64
  %65 = ptrtoint ptr %add.ptr.i230 to i32
  %add.i231 = add i32 %65, 127
  %and.i232 = and i32 %add.i231, -128
  %66 = inttoptr i32 %and.i232 to ptr
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %20, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %add.ptr.i233 = getelementptr %struct.ahash_request, ptr %66, i32 1
  %68 = ptrtoint ptr %add.ptr.i233 to i32
  %69 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reqsize.i.i, align 32
  %add.i235 = add i32 %70, 3
  %add1.i236 = add i32 %add.i235, %68
  %and.i237 = and i32 %add1.i236, -4
  %71 = inttoptr i32 %and.i237 to ptr
  %add.ptr56 = getelementptr %struct.scatterlist, ptr %71, i32 %call27
  %72 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr.i.i, i32 %conv34)
  %auth_data58 = getelementptr inbounds %struct.ip_auth_hdr, ptr %34, i32 0, i32 5
  %73 = load i32, ptr %icv_trunc_len43, align 4
  %74 = call ptr @memcpy(ptr %add.ptr.i, ptr %auth_data58, i32 %73)
  %75 = load i32, ptr %icv_trunc_len43, align 4
  %76 = call ptr @memset(ptr %auth_data58, i32 0, i32 %75)
  %call64 = call fastcc i32 @ipv6_clear_mutable_options(ptr noundef %add.ptr.i.i, i32 noundef %conv34, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end49.out_free_crit_edge

if.end49.out_free_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end67:                                         ; preds = %if.end49
  %77 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load68 = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear69 = and i8 %bf.load68, -16
  store i8 %bf.clear69, ptr %add.ptr.i.i, align 4
  %flow_lbl = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %flow_lbl to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %flow_lbl, align 1
  %arrayidx72 = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %arrayidx72, align 1
  %arrayidx74 = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 2
  %80 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %arrayidx74, align 1
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %81 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %hop_limit, align 1
  call void @sg_init_table(ptr noundef %71, i32 noundef %add41) #10
  %82 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len.i.i, align 4
  %call76 = call i32 @skb_to_sgvec_nomark(ptr noundef %skb, ptr noundef %71, i32 noundef 0, i32 noundef %83) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.end67.out_free_crit_edge, label %if.end82, !prof !61

if.end67.out_free_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end82:                                         ; preds = %if.end67
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %85)
  %tobool87.not = icmp sgt i8 %85, -1
  br i1 %tobool87.not, label %if.end82.if.end90_crit_edge, label %if.then88

if.end82.if.end90_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then88:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %hi = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %86 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hi, align 4
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %add.ptr, align 4
  call fastcc void @sg_set_buf(ptr noundef %add.ptr56, ptr noundef %add.ptr, i32 noundef %43)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end82.if.end90_crit_edge
  %89 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len.i.i, align 4
  %add92 = add i32 %90, %43
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %66, i32 0, i32 2
  %91 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %71, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %66, i32 0, i32 1
  %92 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add92, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %66, i32 0, i32 3
  %93 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %62, ptr %result3.i, align 32
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %66, i32 0, i32 1
  %94 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @ah6_input_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %66, i32 0, i32 2
  %95 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %skb, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %66, i32 0, i32 4
  %96 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %flags4.i, align 4
  %tmp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %97 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call9.i.i, ptr %tmp, align 4
  %call95 = call i32 @crypto_ahash_digest(ptr noundef %66) #10
  %98 = zext i32 %call95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call95, label %if.end90.out_free_crit_edge [
    i32 0, label %if.end102
    i32 -115, label %if.end90.out_crit_edge
  ]

if.end90.out_crit_edge:                           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end90.out_free_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end102:                                        ; preds = %if.end90
  %99 = ptrtoint ptr %icv_trunc_len43 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %icv_trunc_len43, align 4
  %call.i = call i32 @__crypto_memneq(ptr noundef %62, ptr noundef %add.ptr.i, i32 noundef %100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i238.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i238.not, label %if.end108, label %if.end102.out_free_crit_edge

if.end102.out_free_crit_edge:                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end108:                                        ; preds = %if.end102
  %101 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %network_header.i, align 4
  %103 = trunc i32 %shl to i16
  %conv112 = add i16 %102, %103
  store i16 %conv112, ptr %network_header.i, align 4
  %104 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head.i.i, align 8
  %conv.i240 = zext i16 %conv112 to i32
  %add.ptr.i241 = getelementptr i8, ptr %105, i32 %conv.i240
  %106 = call ptr @memcpy(ptr %add.ptr.i241, ptr %call9.i.i, i32 %conv34)
  %add117 = add nuw nsw i32 %shl, %conv34
  %107 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len.i.i, align 4
  %sub.i242 = sub i32 %108, %add117
  store i32 %sub.i242, ptr %len.i.i, align 4
  %109 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i242, i32 %110)
  %cmp.i = icmp ult i32 %sub.i242, %110
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !61

do.body4.i:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !64
  unreachable

__skb_pull.exit:                                  ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data, align 4
  %add.ptr.i243 = getelementptr i8, ptr %112, i32 %add117
  store ptr %add.ptr.i243, ptr %data, align 4
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %113 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %cmp121 = icmp eq i8 %114, 1
  %115 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i243 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %116 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i246 = trunc i32 %sub.ptr.sub.i to i16
  %117 = trunc i32 %sub.i211 to i16
  %conv1.i250 = select i1 %cmp121, i16 0, i16 %117
  %conv.i246.sink = sub i16 %conv.i246, %conv1.i250
  %118 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv.i246.sink, ptr %transport_header.i, align 2
  br label %out_free

out_free:                                         ; preds = %__skb_pull.exit, %if.end102.out_free_crit_edge, %if.end90.out_free_crit_edge, %if.end67.out_free_crit_edge, %if.end49.out_free_crit_edge
  %err.0 = phi i32 [ %call64, %if.end49.out_free_crit_edge ], [ %call76, %if.end67.out_free_crit_edge ], [ -74, %if.end102.out_free_crit_edge ], [ %call95, %if.end90.out_free_crit_edge ], [ %conv8, %__skb_pull.exit ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %out

out:                                              ; preds = %out_free, %if.end90.out_crit_edge, %if.end31.out_crit_edge, %if.end26.out_crit_edge, %pskb_may_pull.exit223.out_crit_edge, %if.end.i217.out_crit_edge, %land.lhs.true.out_crit_edge, %skb_unclone.exit.out_crit_edge, %pskb_may_pull.exit.out_crit_edge, %if.end.i.out_crit_edge
  %err.1 = phi i32 [ -12, %skb_unclone.exit.out_crit_edge ], [ -12, %land.lhs.true.out_crit_edge ], [ %call27, %if.end26.out_crit_edge ], [ %err.0, %out_free ], [ -12, %pskb_may_pull.exit223.out_crit_edge ], [ -12, %pskb_may_pull.exit.out_crit_edge ], [ -12, %if.end31.out_crit_edge ], [ %call95, %if.end90.out_crit_edge ], [ -12, %if.end.i.out_crit_edge ], [ -12, %if.end.i217.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer) #10
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ah6_output(ptr nocapture noundef readonly %x, ptr noundef %skb) #4 align 64 {
entry:
  %trailer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trailer) #10
  %0 = ptrtoint ptr %trailer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %trailer, align 4, !annotation !63
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 8
  %ahash1 = getelementptr inbounds %struct.ah_data, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %ahash1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ahash1, align 4
  %call = call i32 @skb_cow_data(ptr noundef %skb, i32 noundef 0, ptr noundef nonnull %trailer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %call3 = call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.neg) #10
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i, align 4
  %conv1.i = zext i16 %14 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i)
  %tobool.not = icmp eq i32 %sub.i, 40
  %add = add nsw i32 %sub.i, -8
  %spec.select = select i1 %tobool.not, i32 0, i32 %add
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 1
  %17 = lshr i8 %16, 5
  %18 = and i8 %17, 4
  %19 = zext i8 %18 to i32
  %.lobit = lshr i8 %16, 7
  %20 = zext i8 %.lobit to i32
  %add11 = add nuw i32 %call, %20
  %add12 = add nsw i32 %spec.select, 8
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %4, i32 0, i32 10, i32 3
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %4, i32 0, i32 8
  %21 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reqsize.i.i, align 32
  %add13.i = add i32 %22, 131
  %23 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 -128
  %25 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %add13 = add i32 %26, 127
  %add.i = add i32 %add13, %19
  %add3.i = add i32 %add.i, %add12
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %24, i32 0, i32 5
  %27 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %and.i = and i32 %28, -128
  %add6.i = add i32 %add3.i, %and.i
  %and10.i = and i32 %add6.i, -128
  %add14.i = add i32 %add13.i, %and10.i
  %and15.i = and i32 %add14.i, -4
  %mul.i = mul i32 %add11, 20
  %add16.i = add i32 %and15.i, %mul.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add16.i, i32 noundef 2592) #15
  %tobool15.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool15.not, label %if.end.out_crit_edge, label %if.end17

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end17:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 8
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %spec.select
  %add.ptr.i171 = getelementptr i8, ptr %add.ptr, i32 %19
  %29 = ptrtoint ptr %add.ptr.i171 to i32
  %30 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i173 = getelementptr inbounds %struct.crypto_alg, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %cra_alignmask.i.i.i173 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cra_alignmask.i.i.i173, align 4
  %add1.i = add i32 %33, %29
  %neg.i = xor i32 %33, -1
  %and.i174 = and i32 %add1.i, %neg.i
  %34 = inttoptr i32 %and.i174 to ptr
  %add.ptr.i.i.i.i176 = getelementptr i8, ptr %31, i32 -128
  %35 = ptrtoint ptr %add.ptr.i.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i.i.i176, align 128
  %add.ptr.i177 = getelementptr i8, ptr %34, i32 %36
  %37 = ptrtoint ptr %add.ptr.i177 to i32
  %add.i178 = add i32 %37, 127
  %and.i179 = and i32 %add.i178, -128
  %38 = inttoptr i32 %and.i179 to ptr
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %4, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %add.ptr.i180 = getelementptr %struct.ahash_request, ptr %38, i32 1
  %40 = ptrtoint ptr %add.ptr.i180 to i32
  %41 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reqsize.i.i, align 32
  %add.i182 = add i32 %42, 3
  %add1.i183 = add i32 %add.i182, %40
  %and.i184 = and i32 %add1.i183, -4
  %43 = inttoptr i32 %and.i184 to ptr
  %add.ptr22 = getelementptr %struct.scatterlist, ptr %43, i32 %call
  %44 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i.i, align 8
  %46 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %transport_header.i, align 2
  %conv.i.i186 = zext i16 %47 to i32
  %add.ptr.i.i187 = getelementptr i8, ptr %45, i32 %conv.i.i186
  %auth_data = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i187, i32 0, i32 5
  %icv_trunc_len = getelementptr inbounds %struct.ah_data, ptr %2, i32 0, i32 1
  %48 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %icv_trunc_len, align 4
  %50 = call ptr @memset(ptr %auth_data, i32 0, i32 %49)
  %51 = load ptr, ptr %head.i.i, align 8
  %52 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i190 = zext i16 %53 to i32
  %add.ptr.i.i191 = getelementptr i8, ptr %51, i32 %conv.i.i190
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 4
  %56 = trunc i32 %55 to i16
  %conv26 = add i16 %56, -40
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i191, i32 0, i32 2
  %57 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv26, ptr %payload_len, align 4
  %58 = load ptr, ptr %head.i.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %59 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %mac_header.i, align 2
  %conv.i192 = zext i16 %60 to i32
  %add.ptr.i193 = getelementptr i8, ptr %58, i32 %conv.i192
  %61 = ptrtoint ptr %add.ptr.i193 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %add.ptr.i193, align 1
  store i8 51, ptr %add.ptr.i193, align 1
  %63 = ptrtoint ptr %add.ptr.i.i191 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %add.ptr.i.i191, align 4
  %65 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool29.not = icmp eq i32 %spec.select, 0
  br i1 %tobool29.not, label %if.end17.if.end37_crit_edge, label %if.then30

if.end17.if.end37_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then30:                                        ; preds = %if.end17
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i191, i32 0, i32 5
  %66 = call ptr @memcpy(ptr %add.ptr.i, ptr %saddr, i32 %spec.select)
  %call33 = call fastcc i32 @ipv6_clear_mutable_options(ptr noundef %add.ptr.i.i191, i32 noundef %add12, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then30.if.end37_crit_edge, label %if.then30.out_free_crit_edge

if.then30.out_free_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %if.then30.if.end37_crit_edge, %if.end17.if.end37_crit_edge
  %67 = ptrtoint ptr %add.ptr.i.i187 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %62, ptr %add.ptr.i.i187, align 4
  %68 = ptrtoint ptr %add.ptr.i.i191 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load = load i8, ptr %add.ptr.i.i191, align 4
  %bf.clear = and i8 %bf.load, -16
  store i8 %bf.clear, ptr %add.ptr.i.i191, align 4
  %flow_lbl = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i191, i32 0, i32 1
  %69 = ptrtoint ptr %flow_lbl to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %flow_lbl, align 1
  %arrayidx40 = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i191, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx40, align 1
  %arrayidx42 = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i191, i32 0, i32 1, i32 2
  %71 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx42, align 1
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i191, i32 0, i32 4
  %72 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %hop_limit, align 1
  %73 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %icv_trunc_len, align 4
  %add45 = add i32 %74, 19
  %and46 = lshr i32 %add45, 2
  %75 = trunc i32 %and46 to i8
  %76 = add i8 %75, -2
  %conv48 = and i8 %76, -2
  %hdrlen = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i187, i32 0, i32 1
  %77 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv48, ptr %hdrlen, align 1
  %reserved = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i187, i32 0, i32 2
  %78 = ptrtoint ptr %reserved to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %reserved, align 2
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %79 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %spi, align 4
  %spi49 = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i187, i32 0, i32 3
  %81 = ptrtoint ptr %spi49 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %spi49, align 4
  %seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %82 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %seq, align 4
  %seq_no = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i187, i32 0, i32 4
  %84 = ptrtoint ptr %seq_no to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %seq_no, align 4
  call void @sg_init_table(ptr noundef %43, i32 noundef %add11) #10
  %85 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len, align 4
  %call53 = call i32 @skb_to_sgvec_nomark(ptr noundef %skb, ptr noundef %43, i32 noundef 0, i32 noundef %86) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end37.out_free_crit_edge, label %if.end59, !prof !61

if.end37.out_free_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end59:                                         ; preds = %if.end37
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %88)
  %tobool64.not = icmp sgt i8 %88, -1
  br i1 %tobool64.not, label %if.end59.if.end69_crit_edge, label %if.then65

if.end59.if.end69_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then65:                                        ; preds = %if.end59
  %hi = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %89 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hi, align 4
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %add.ptr, align 4
  %92 = ptrtoint ptr %add.ptr to i32
  %cmp.i = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then65.do.body5.i_crit_edge, !prof !59

if.then65.do.body5.i_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.then65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %93 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %93, %add.ptr
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !59

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i198 = add i32 %92, 1073741824
  %shr.i = lshr i32 %sub.i198, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %94 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i199 = add i32 %94, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i199) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !61

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.then65.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !65
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %95 = load ptr, ptr @mem_map, align 4
  %add.ptr.i200 = getelementptr %struct.page, ptr %95, i32 %shr.i
  %96 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr22, align 4
  %98 = ptrtoint ptr %add.ptr.i200 to i32
  %and2.i.i.i = and i32 %98, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i201 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i201, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !59

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !66
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !59

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i202 = and i32 %92, 4095
  %and.i.i.i = and i32 %97, 3
  %or.i.i.i = or i32 %and.i.i.i, %98
  %99 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or.i.i.i, ptr %add.ptr22, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %43, i32 %call, i32 1
  %100 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %and.i202, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %43, i32 %call, i32 2
  %101 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %19, ptr %length.i.i, align 4
  br label %if.end69

if.end69:                                         ; preds = %sg_set_buf.exit, %if.end59.if.end69_crit_edge
  %102 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len, align 4
  %add71 = add i32 %103, %19
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %38, i32 0, i32 2
  %104 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %43, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %38, i32 0, i32 1
  %105 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add71, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %38, i32 0, i32 3
  %106 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %34, ptr %result3.i, align 32
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %38, i32 0, i32 1
  %107 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @ah6_output_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %38, i32 0, i32 2
  %108 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %skb, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %38, i32 0, i32 4
  %109 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %flags4.i, align 4
  %tmp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %110 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call9.i.i, ptr %tmp, align 4
  %call74 = call i32 @crypto_ahash_digest(ptr noundef %38) #10
  %111 = zext i32 %call74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call74, label %if.end80 [
    i32 0, label %if.end85
    i32 -115, label %if.end69.out_crit_edge
  ]

if.end69.out_crit_edge:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end80:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call74)
  %cmp81 = icmp eq i32 %call74, -28
  %spec.store.select = select i1 %cmp81, i32 1, i32 %call74
  br label %out_free

if.end85:                                         ; preds = %if.end69
  %112 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %icv_trunc_len, align 4
  %114 = call ptr @memcpy(ptr %auth_data, ptr %34, i32 %113)
  %115 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %call9.i.i, align 128
  %117 = ptrtoint ptr %add.ptr.i.i191 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 8)
  store i64 %116, ptr %add.ptr.i.i191, align 4
  br i1 %tobool29.not, label %if.end85.out_free_crit_edge, label %if.then90

if.end85.out_free_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.then90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %saddr91 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i191, i32 0, i32 5
  %118 = call ptr @memcpy(ptr %saddr91, ptr %add.ptr.i, i32 %spec.select)
  br label %out_free

out_free:                                         ; preds = %if.then90, %if.end85.out_free_crit_edge, %if.end80, %if.end37.out_free_crit_edge, %if.then30.out_free_crit_edge
  %err.0 = phi i32 [ %call33, %if.then30.out_free_crit_edge ], [ %call53, %if.end37.out_free_crit_edge ], [ %spec.store.select, %if.end80 ], [ 0, %if.then90 ], [ 0, %if.end85.out_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %out

out:                                              ; preds = %out_free, %if.end69.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.0, %out_free ], [ -12, %if.end.out_crit_edge ], [ %call74, %if.end69.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer) #10
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_aalg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_cow_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_clear_mutable_options(ptr noundef %iph, i32 noundef %len, i32 noundef %dir) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %iph, i32 %len
  %incdec.ptr = getelementptr %struct.ipv6hdr, ptr %iph, i32 1
  %cmp73 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp73, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %nexthdr1 = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 3
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 6
  %final_addr.sroa.5.0.daddr9.sroa_idx.i = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 6, i32 0, i32 0, i32 1
  %final_addr.sroa.6.0.daddr9.sroa_idx.i = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 6, i32 0, i32 0, i32 2
  %final_addr.sroa.7.0.daddr9.sroa_idx.i = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 6, i32 0, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp3 = icmp eq i32 %dir, 1
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 5
  %__tmp.sroa.5.0.saddr35.sroa_idx.i = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 5, i32 0, i32 0, i32 1
  %__tmp.sroa.6.0.saddr35.sroa_idx.i = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 5, i32 0, i32 0, i32 2
  %__tmp.sroa.7.0.saddr35.sroa_idx.i = getelementptr inbounds %struct.ipv6hdr, ptr %iph, i32 0, i32 5, i32 0, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %nexthdr.0.in75.in = phi ptr [ %nexthdr1, %while.body.lr.ph ], [ %exthdr.sroa.0.074, %sw.epilog.while.body_crit_edge ]
  %exthdr.sroa.0.074 = phi ptr [ %incdec.ptr, %while.body.lr.ph ], [ %add.ptr21, %sw.epilog.while.body_crit_edge ]
  %0 = ptrtoint ptr %nexthdr.0.in75.in to i32
  call void @__asan_load1_noabort(i32 %0)
  %nexthdr.0.in75 = load i8, ptr %nexthdr.0.in75.in, align 1
  %1 = zext i8 %nexthdr.0.in75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %nexthdr.0.in75, label %while.body.cleanup_crit_edge [
    i8 60, label %sw.bb
    i8 0, label %while.body.sw.bb5_crit_edge
    i8 43, label %sw.bb17
  ]

while.body.sw.bb5_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %while.body
  br i1 %cmp3, label %if.then, label %sw.bb.sw.bb5_crit_edge

sw.bb.sw.bb5_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

if.then:                                          ; preds = %sw.bb
  %hdrlen.i = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %exthdr.sroa.0.074, i32 0, i32 1
  %2 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdrlen.i, align 1
  %conv.i = zext i8 %3 to i32
  %add.i = shl nuw nsw i32 %conv.i, 3
  %sub.i = or i32 %add.i, 6
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %if.then
  %len.073.i = phi i32 [ %sub.i, %if.then ], [ %sub40.i, %sw.epilog.i.while.body.i_crit_edge ]
  %off.071.i = phi i32 [ 2, %if.then ], [ %add39.i, %sw.epilog.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %exthdr.sroa.0.074, i32 %off.071.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cond.i = icmp eq i8 %5, 0
  br i1 %cond.i, label %while.body.i.sw.epilog.i_crit_edge, label %sw.default.i

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.073.i)
  %cmp4.i = icmp slt i32 %len.073.i, 2
  br i1 %cmp4.i, label %sw.default.i.sw.bb5_crit_edge, label %if.end.i

sw.default.i.sw.bb5_crit_edge:                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

if.end.i:                                         ; preds = %sw.default.i
  %add6.i = add i32 %off.071.i, 1
  %arrayidx7.i = getelementptr i8, ptr %exthdr.sroa.0.074, i32 %add6.i
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %7 to i32
  %add9.i = add nuw nsw i32 %conv8.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %len.073.i, i32 %add9.i)
  %cmp10.i = icmp ult i32 %len.073.i, %add9.i
  br i1 %cmp10.i, label %if.end.i.sw.bb5_crit_edge, label %if.end13.i

if.end.i.sw.bb5_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -55, i8 %5)
  %cmp16.i = icmp eq i8 %5, -55
  br i1 %cmp16.i, label %if.then18.i, label %if.end13.i.sw.epilog.i_crit_edge

if.end13.i.sw.epilog.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then18.i:                                      ; preds = %if.end13.i
  %length.i = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %arrayidx.i, i32 0, i32 1
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %9)
  %cmp21.not.i = icmp eq i8 %9, 16
  br i1 %cmp21.not.i, label %cleanup.i, label %do.body.i

do.body.i:                                        ; preds = %if.then18.i
  %call.i = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i.sw.bb5_crit_edge, label %do.end.i

do.body.i.sw.bb5_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %length.i.le = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %arrayidx.i, i32 0, i32 1
  %10 = ptrtoint ptr %length.i.le to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %length.i.le, align 1
  %conv27.i = zext i8 %11 to i32
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv27.i) #13
  br label %sw.bb5

cleanup.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr.i = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %arrayidx.i, i32 0, i32 2
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %__tmp.sroa.0.0.copyload.i = load i32, ptr %addr.i, align 1
  %__tmp.sroa.5.0.addr.sroa_idx.i = getelementptr inbounds i8, ptr %addr.i, i32 4
  %13 = ptrtoint ptr %__tmp.sroa.5.0.addr.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %__tmp.sroa.5.0.copyload.i = load i32, ptr %__tmp.sroa.5.0.addr.sroa_idx.i, align 1
  %__tmp.sroa.6.0.addr.sroa_idx.i = getelementptr inbounds i8, ptr %addr.i, i32 8
  %14 = ptrtoint ptr %__tmp.sroa.6.0.addr.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %__tmp.sroa.6.0.copyload.i = load i32, ptr %__tmp.sroa.6.0.addr.sroa_idx.i, align 1
  %__tmp.sroa.7.0.addr.sroa_idx.i = getelementptr inbounds i8, ptr %addr.i, i32 12
  %15 = ptrtoint ptr %__tmp.sroa.7.0.addr.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %__tmp.sroa.7.0.copyload.i = load i32, ptr %__tmp.sroa.7.0.addr.sroa_idx.i, align 1
  %16 = call ptr @memcpy(ptr %addr.i, ptr %saddr.i, i32 16)
  %17 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %__tmp.sroa.0.0.copyload.i, ptr %saddr.i, align 4
  %18 = ptrtoint ptr %__tmp.sroa.5.0.saddr35.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %__tmp.sroa.5.0.copyload.i, ptr %__tmp.sroa.5.0.saddr35.sroa_idx.i, align 4
  %19 = ptrtoint ptr %__tmp.sroa.6.0.saddr35.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %__tmp.sroa.6.0.copyload.i, ptr %__tmp.sroa.6.0.saddr35.sroa_idx.i, align 4
  %20 = ptrtoint ptr %__tmp.sroa.7.0.saddr35.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %__tmp.sroa.7.0.copyload.i, ptr %__tmp.sroa.7.0.saddr35.sroa_idx.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %cleanup.i, %if.end13.i.sw.epilog.i_crit_edge, %while.body.i.sw.epilog.i_crit_edge
  %optlen.0.i = phi i32 [ %add9.i, %cleanup.i ], [ %add9.i, %if.end13.i.sw.epilog.i_crit_edge ], [ 1, %while.body.i.sw.epilog.i_crit_edge ]
  %add39.i = add i32 %optlen.0.i, %off.071.i
  %sub40.i = sub i32 %len.073.i, %optlen.0.i
  %cmp.i = icmp sgt i32 %sub40.i, 0
  br i1 %cmp.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.sw.bb5_crit_edge

sw.epilog.i.sw.bb5_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

sw.bb5:                                           ; preds = %sw.epilog.i.sw.bb5_crit_edge, %do.end.i, %do.body.i.sw.bb5_crit_edge, %if.end.i.sw.bb5_crit_edge, %sw.default.i.sw.bb5_crit_edge, %sw.bb.sw.bb5_crit_edge, %while.body.sw.bb5_crit_edge
  %hdrlen.i36 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %exthdr.sroa.0.074, i32 0, i32 1
  %21 = ptrtoint ptr %hdrlen.i36 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hdrlen.i36, align 1
  %conv.i37 = zext i8 %22 to i32
  %add.i38 = shl nuw nsw i32 %conv.i37, 3
  %sub.i39 = or i32 %add.i38, 6
  br label %while.body.i42

while.body.i42:                                   ; preds = %sw.epilog.i55.while.body.i42_crit_edge, %sw.bb5
  %off.053.i = phi i32 [ 2, %sw.bb5 ], [ %add23.i, %sw.epilog.i55.while.body.i42_crit_edge ]
  %len.051.i = phi i32 [ %sub.i39, %sw.bb5 ], [ %sub24.i, %sw.epilog.i55.while.body.i42_crit_edge ]
  %arrayidx.i40 = getelementptr i8, ptr %exthdr.sroa.0.074, i32 %off.053.i
  %23 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cond.i41 = icmp eq i8 %24, 0
  br i1 %cond.i41, label %while.body.i42.sw.epilog.i55_crit_edge, label %sw.default.i44

while.body.i42.sw.epilog.i55_crit_edge:           ; preds = %while.body.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i55

sw.default.i44:                                   ; preds = %while.body.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.051.i)
  %cmp4.i43 = icmp ult i32 %len.051.i, 2
  br i1 %cmp4.i43, label %sw.default.i44.do.body_crit_edge, label %if.end.i50

sw.default.i44.do.body_crit_edge:                 ; preds = %sw.default.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.i50:                                       ; preds = %sw.default.i44
  %add6.i45 = add i32 %off.053.i, 1
  %arrayidx7.i46 = getelementptr i8, ptr %exthdr.sroa.0.074, i32 %add6.i45
  %25 = ptrtoint ptr %arrayidx7.i46 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx7.i46, align 1
  %conv8.i47 = zext i8 %26 to i32
  %add9.i48 = add nuw nsw i32 %conv8.i47, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %len.051.i, i32 %add9.i48)
  %cmp10.i49 = icmp ult i32 %len.051.i, %add9.i48
  br i1 %cmp10.i49, label %if.end.i50.do.body_crit_edge, label %if.end13.i52

if.end.i50.do.body_crit_edge:                     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end13.i52:                                     ; preds = %if.end.i50
  %27 = and i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i51 = icmp eq i8 %27, 0
  br i1 %tobool.not.i51, label %if.end13.i52.sw.epilog.i55_crit_edge, label %if.then16.i

if.end13.i52.sw.epilog.i55_crit_edge:             ; preds = %if.end13.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i55

if.then16.i:                                      ; preds = %if.end13.i52
  call void @__sanitizer_cov_trace_pc() #12
  %add17.i = add i32 %off.053.i, 2
  %arrayidx18.i = getelementptr i8, ptr %exthdr.sroa.0.074, i32 %add17.i
  %28 = call ptr @memset(ptr %arrayidx18.i, i32 0, i32 %conv8.i47)
  br label %sw.epilog.i55

sw.epilog.i55:                                    ; preds = %if.then16.i, %if.end13.i52.sw.epilog.i55_crit_edge, %while.body.i42.sw.epilog.i55_crit_edge
  %optlen.0.i53 = phi i32 [ %add9.i48, %if.then16.i ], [ %add9.i48, %if.end13.i52.sw.epilog.i55_crit_edge ], [ 1, %while.body.i42.sw.epilog.i55_crit_edge ]
  %add23.i = add i32 %optlen.0.i53, %off.053.i
  %sub24.i = sub i32 %len.051.i, %optlen.0.i53
  %cmp.i54 = icmp sgt i32 %sub24.i, 0
  br i1 %cmp.i54, label %sw.epilog.i55.while.body.i42_crit_edge, label %while.end.i

sw.epilog.i55.while.body.i42_crit_edge:           ; preds = %sw.epilog.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i42

while.end.i:                                      ; preds = %sw.epilog.i55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24.i)
  %cmp25.i = icmp eq i32 %sub24.i, 0
  br i1 %cmp25.i, label %while.end.i.sw.epilog_crit_edge, label %while.end.i.do.body_crit_edge

while.end.i.do.body_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.end.i.sw.epilog_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %while.end.i.do.body_crit_edge, %if.end.i50.do.body_crit_edge, %sw.default.i44.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipv6_clear_mutable_options.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipv6_clear_mutable_options, %land.lhs.true)) #10
          to label %cleanup [label %land.lhs.true], !srcloc !68

land.lhs.true:                                    ; preds = %do.body
  %call10 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.cleanup_crit_edge, label %if.then12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nexthdr.0.in75)
  %cmp13 = icmp eq i8 %nexthdr.0.in75, 0
  %cond = select i1 %cmp13, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipv6_clear_mutable_options.descriptor, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond) #10
  br label %cleanup

sw.bb17:                                          ; preds = %while.body
  %segments_left1.i = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %exthdr.sroa.0.074, i32 0, i32 3
  %29 = ptrtoint ptr %segments_left1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %segments_left1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.i58 = icmp eq i8 %30, 0
  br i1 %cmp.i58, label %sw.bb17.sw.epilog_crit_edge, label %if.end.i64

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i64:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i59 = zext i8 %30 to i32
  %31 = ptrtoint ptr %segments_left1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %segments_left1.i, align 1
  %hdrlen.i60 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %exthdr.sroa.0.074, i32 0, i32 1
  %32 = ptrtoint ptr %hdrlen.i60 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hdrlen.i60, align 1
  %34 = lshr i8 %33, 1
  %35 = zext i8 %34 to i32
  %addr.i61 = getelementptr inbounds %struct.rt0_hdr, ptr %exthdr.sroa.0.074, i32 0, i32 2
  %sub.i62 = add nsw i32 %35, -1
  %arrayidx.i63 = getelementptr %struct.in6_addr, ptr %addr.i61, i32 %sub.i62
  %36 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %final_addr.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i63, align 4
  %final_addr.sroa.5.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i63, i32 4
  %37 = ptrtoint ptr %final_addr.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %final_addr.sroa.5.0.copyload.i = load i32, ptr %final_addr.sroa.5.0.arrayidx.sroa_idx.i, align 4
  %final_addr.sroa.6.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i63, i32 8
  %38 = ptrtoint ptr %final_addr.sroa.6.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %final_addr.sroa.6.0.copyload.i = load i32, ptr %final_addr.sroa.6.0.arrayidx.sroa_idx.i, align 4
  %final_addr.sroa.7.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i63, i32 12
  %39 = ptrtoint ptr %final_addr.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %final_addr.sroa.7.0.copyload.i = load i32, ptr %final_addr.sroa.7.0.arrayidx.sroa_idx.i, align 4
  %sub5.i = sub nsw i32 %35, %conv.i59
  %add.ptr.i = getelementptr %struct.in6_addr, ptr %addr.i61, i32 %sub5.i
  %add.ptr6.i = getelementptr %struct.in6_addr, ptr %add.ptr.i, i32 1
  %sub7.i = shl nuw nsw i32 %conv.i59, 4
  %mul.i = add nsw i32 %sub7.i, -16
  %40 = call ptr @memmove(ptr %add.ptr6.i, ptr %add.ptr.i, i32 %mul.i)
  %41 = call ptr @memcpy(ptr %add.ptr.i, ptr %daddr.i, i32 16)
  %42 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %final_addr.sroa.0.0.copyload.i, ptr %daddr.i, align 4
  %43 = ptrtoint ptr %final_addr.sroa.5.0.daddr9.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %final_addr.sroa.5.0.copyload.i, ptr %final_addr.sroa.5.0.daddr9.sroa_idx.i, align 4
  %44 = ptrtoint ptr %final_addr.sroa.6.0.daddr9.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %final_addr.sroa.6.0.copyload.i, ptr %final_addr.sroa.6.0.daddr9.sroa_idx.i, align 4
  %45 = ptrtoint ptr %final_addr.sroa.7.0.daddr9.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %final_addr.sroa.7.0.copyload.i, ptr %final_addr.sroa.7.0.daddr9.sroa_idx.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i64, %sw.bb17.sw.epilog_crit_edge, %while.end.i.sw.epilog_crit_edge
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %exthdr.sroa.0.074, i32 0, i32 1
  %46 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %hdrlen, align 1
  %conv20 = zext i8 %47 to i32
  %add = shl nuw nsw i32 %conv20, 3
  %shl = add nuw nsw i32 %add, 8
  %add.ptr21 = getelementptr i8, ptr %exthdr.sroa.0.074, i32 %shl
  %cmp = icmp ult ptr %add.ptr21, %add.ptr
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %if.then12, %land.lhs.true.cleanup_crit_edge, %do.body, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then12 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.body ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec_nomark(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_set_buf(ptr nocapture noundef %sg, ptr noundef %buf, i32 noundef %buflen) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %buf to i32
  %cmp = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %entry.do.body5_crit_edge, !prof !59

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ugt ptr %1, %buf
  br i1 %cmp1, label %land.rhs, label %land.lhs.true.do.body5_crit_edge, !prof !59

land.lhs.true.do.body5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

land.rhs:                                         ; preds = %land.lhs.true
  %sub = add i32 %0, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %2, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %land.rhs.do.body5_crit_edge, label %do.end8, !prof !61

land.rhs.do.body5_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

do.body5:                                         ; preds = %land.rhs.do.body5_crit_edge, %land.lhs.true.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !65
  unreachable

do.end8:                                          ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %add.ptr = getelementptr %struct.page, ptr %3, i32 %shr
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !59

do.body5.i.i:                                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !66
  unreachable

do.body11.i.i:                                    ; preds = %do.end8
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !59

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %0, 4095
  %and.i.i = and i32 %5, 3
  %or.i.i = or i32 %and.i.i, %6
  %7 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i.i, ptr %sg, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %8 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %buflen, ptr %length.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ah6_input_done(ptr nocapture noundef readonly %base, i32 noundef %err) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool.i.not.i.i.i, label %entry.xfrm_input_state.exit_crit_edge, label %if.then.i.i.i

entry.xfrm_input_state.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfrm_input_state.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %8 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %shl.i.i.i
  br label %xfrm_input_state.exit

xfrm_input_state.exit:                            ; preds = %if.then.i.i.i, %entry.xfrm_input_state.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ null, %entry.xfrm_input_state.exit_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retval.0.i.i.i, align 4
  %sub.i = add i32 %10, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %retval.0.i.i.i, i32 0, i32 2, i32 %sub.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 19
  %15 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %18 to i32
  %sub.i49 = sub nsw i32 %conv.i.i, %conv1.i
  %hdrlen = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %20 to i32
  %add = shl nuw nsw i32 %conv, 2
  %shl = add nuw nsw i32 %add, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %xfrm_input_state.exit.out_crit_edge

xfrm_input_state.exit.out_crit_edge:              ; preds = %xfrm_input_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %xfrm_input_state.exit
  %data1 = getelementptr inbounds %struct.xfrm_state, ptr %12, i32 0, i32 51
  %21 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data1, align 8
  %tmp = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tmp, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 %sub.i49
  %ahash = getelementptr inbounds %struct.ah_data, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %ahash to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ahash, align 4
  %icv_trunc_len = getelementptr inbounds %struct.ah_data, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %icv_trunc_len, align 4
  %add.ptr.i50 = getelementptr i8, ptr %add.ptr.i, i32 %28
  %29 = ptrtoint ptr %add.ptr.i50 to i32
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %26, i32 0, i32 10, i32 3
  %30 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %add1.i = add i32 %33, %29
  %neg.i = xor i32 %33, -1
  %and.i = and i32 %add1.i, %neg.i
  %34 = inttoptr i32 %and.i to ptr
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %34, ptr noundef %add.ptr.i, i32 noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end11, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end11:                                         ; preds = %if.end
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr.i.i, align 4
  %37 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i, align 4
  %39 = trunc i32 %shl to i16
  %conv15 = add i16 %38, %39
  store i16 %conv15, ptr %network_header.i, align 4
  %40 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i, align 8
  %conv.i52 = zext i16 %conv15 to i32
  %add.ptr.i53 = getelementptr i8, ptr %41, i32 %conv.i52
  %42 = call ptr @memcpy(ptr %add.ptr.i53, ptr %24, i32 %sub.i49)
  %add17 = add nsw i32 %shl, %sub.i49
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len1.i, align 4
  %sub.i54 = sub i32 %44, %add17
  store i32 %sub.i54, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i54, i32 %46)
  %cmp.i = icmp ult i32 %sub.i54, %46
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !61

do.body4.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !64
  unreachable

__skb_pull.exit:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %conv12 = zext i8 %36 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %48, i32 %add17
  store ptr %add.ptr.i55, ptr %data.i, align 4
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %12, i32 0, i32 14, i32 1
  %49 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp = icmp eq i8 %50, 1
  %51 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i55 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i58 = trunc i32 %sub.ptr.sub.i to i16
  %53 = trunc i32 %sub.i49 to i16
  %conv1.i63 = select i1 %cmp, i16 0, i16 %53
  %conv.i58.sink = sub i16 %conv.i58, %conv1.i63
  %54 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i58.sink, ptr %transport_header.i.i, align 2
  br label %out

out:                                              ; preds = %__skb_pull.exit, %if.end.out_crit_edge, %xfrm_input_state.exit.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %xfrm_input_state.exit.out_crit_edge ], [ -74, %if.end.out_crit_edge ], [ %conv12, %__skb_pull.exit ]
  %tmp25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %55 = ptrtoint ptr %tmp25 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tmp25, align 4
  tail call void @kfree(ptr noundef %56) #10
  %call26 = tail call i32 @xfrm_input_resume(ptr noundef %1, i32 noundef %err.addr.0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ah6_output_done(ptr nocapture noundef readonly %base, i32 noundef %err) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !61

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %and25.i = and i32 %6, -2
  %7 = inttoptr i32 %and25.i to ptr
  %xfrm = getelementptr inbounds %struct.dst_entry, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xfrm, align 4
  %data1 = getelementptr inbounds %struct.xfrm_state, ptr %9, i32 0, i32 51
  %10 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data1, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 19
  %16 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i30 = zext i16 %17 to i32
  %add.ptr.i.i31 = getelementptr i8, ptr %13, i32 %conv.i.i30
  %sub.i = sub nsw i32 %conv.i.i30, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i)
  %tobool.not = icmp eq i32 %sub.i, 40
  %add = add nsw i32 %sub.i, -8
  %spec.select = select i1 %tobool.not, i32 0, i32 %add
  %tmp = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tmp, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 8
  %ahash = getelementptr inbounds %struct.ah_data, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %ahash to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ahash, align 4
  %add.ptr.i32 = getelementptr i8, ptr %add.ptr.i, i32 %spec.select
  %22 = ptrtoint ptr %add.ptr.i32 to i32
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %21, i32 0, i32 10, i32 3
  %23 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %add1.i = add i32 %26, %22
  %neg.i = xor i32 %26, -1
  %and.i33 = and i32 %add1.i, %neg.i
  %27 = inttoptr i32 %and.i33 to ptr
  %auth_data = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i31, i32 0, i32 5
  %icv_trunc_len = getelementptr inbounds %struct.ah_data, ptr %11, i32 0, i32 1
  %28 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %icv_trunc_len, align 4
  %30 = call ptr @memcpy(ptr %auth_data, ptr %27, i32 %29)
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %19, align 1
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool7.not = icmp eq i32 %spec.select, 0
  br i1 %tobool7.not, label %skb_dst.exit.if.end9_crit_edge, label %if.then8

skb_dst.exit.if.end9_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %34 = call ptr @memcpy(ptr %saddr, ptr %add.ptr.i, i32 %spec.select)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %skb_dst.exit.if.end9_crit_edge
  %35 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tmp, align 4
  tail call void @kfree(ptr noundef %36) #10
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call13 = tail call i32 @xfrm_output_resume(ptr noundef %39, ptr noundef %1, i32 noundef %err) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_output_resume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_register_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_register(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/ah6.c", i32 791, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ah6_fini._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ah6_fini._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_ah6__567_796_ah6_init6, !7, !"__initcall__kmod_ah6__567_796_ah6_init6", i1 false, i1 false}
!7 = !{!"../net/ipv6/ah6.c", i32 796, i32 1}
!8 = !{ptr @__exitcall_ah6_fini, !9, !"__exitcall_ah6_fini", i1 false, i1 false}
!9 = !{!"../net/ipv6/ah6.c", i32 797, i32 1}
!10 = !{ptr @__UNIQUE_ID_file568, !11, !"__UNIQUE_ID_file568", i1 false, i1 false}
!11 = !{!"../net/ipv6/ah6.c", i32 799, i32 1}
!12 = !{ptr @__UNIQUE_ID_license569, !11, !"__UNIQUE_ID_license569", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias570, !14, !"__UNIQUE_ID_alias570", i1 false, i1 false}
!14 = !{!"../net/ipv6/ah6.c", i32 800, i32 1}
!15 = !{ptr @ah6_protocol, !16, !"ah6_protocol", i1 false, i1 false}
!16 = !{!"../net/ipv6/ah6.c", i32 764, i32 30}
!17 = !{ptr @ah6_type, !18, !"ah6_type", i1 false, i1 false}
!18 = !{!"../net/ipv6/ah6.c", i32 754, i32 31}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ipv6/ah6.c", i32 705, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ah6_init_state._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ah6_init_state._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/skbuff.h", i32 1719, i32 2}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv6/ah6.c", i32 262, i32 5}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ipv6_clear_mutable_options.descriptor, !27, !"descriptor", i1 false, i1 false}
!31 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ipv6/ah6.c", i32 182, i32 6}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ipv6_rearrange_destopt._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ipv6_rearrange_destopt._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ipv6/ah6.c", i32 775, i32 3}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ah6_init._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ah6_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ipv6/ah6.c", i32 780, i32 3}
!46 = !{ptr @ah6_init._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ah6_init._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148261420}
!58 = !{i64 2148175884, i64 2148175916, i64 2148175945, i64 2148175979, i64 2148176010, i64 2148176033}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2148884588}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2158096088, i64 2158096567, i64 2158096125, i64 2158096181, i64 2158096215, i64 2158096239, i64 2158096280, i64 2158096301, i64 2158096329, i64 2158096363}
!63 = !{!"auto-init"}
!64 = !{i64 2154697431, i64 2154697919, i64 2154697468, i64 2154697524, i64 2154697558, i64 2154697582, i64 2154697623, i64 2154697644, i64 2154697672, i64 2154697706}
!65 = !{i64 2154467130, i64 2154467622, i64 2154467167, i64 2154467223, i64 2154467257, i64 2154467281, i64 2154467322, i64 2154467343, i64 2154467371, i64 2154467405}
!66 = !{i64 2154460811, i64 2154461303, i64 2154460848, i64 2154460904, i64 2154460938, i64 2154460962, i64 2154461003, i64 2154461024, i64 2154461052, i64 2154461086}
!67 = !{i64 2154462421, i64 2154462913, i64 2154462458, i64 2154462514, i64 2154462548, i64 2154462572, i64 2154462613, i64 2154462634, i64 2154462662, i64 2154462696}
!68 = !{i64 2148742853, i64 2148742858, i64 2148742871, i64 2148742915, i64 2148742949, i64 2148742970}
