; ModuleID = '/llk/IR_all_yes/net/xfrm/xfrm_user.c_pt.bc'
source_filename = "../net/xfrm/xfrm_user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+xfrm_msg_min\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm_msg_min\09\09\09\09"
module asm "\09.long\09__crc_xfrm_msg_min\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_msg_min:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_msg_min\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_msg_min:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xfrma_policy\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrma_policy\09\09\09\09"
module asm "\09.long\09__crc_xfrma_policy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrma_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrma_policy\22\09\09\09\09\09"
module asm "__kstrtabns_xfrma_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.xfrm_mgr = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
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
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.xfrm_link = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.km_event = type { %union.anon.147, i32, i32, i32, ptr }
%union.anon.147 = type { i32 }
%struct.sk_buff = type { %union.anon.23, %union.anon.26, %union.anon.27, [48 x i8], %union.anon.28, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.30, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, ptr, %union.anon.25 }
%union.anon.25 = type { ptr }
%union.anon.26 = type { ptr }
%union.anon.27 = type { i64 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32, ptr }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.32, i32, i32, i32, i16, i16, %union.anon.34, i32, %union.anon.35, %union.anon.36, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.32 = type { i32 }
%union.anon.34 = type { i32 }
%union.anon.35 = type { i32 }
%union.anon.36 = type { i16 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.114, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.115, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.114 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.115 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
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
%struct.xfrm_algo_aead = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_algo_auth = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_algo = type { [64 x i8], i32, [0 x i8] }
%struct.xfrm_sec_ctx = type { i8, i8, i16, i32, [0 x i8] }
%struct.xfrm_userpolicy_type = type { i8, i16, i8 }
%struct.xfrm_policy = type { %struct.possible_net_t, %struct.hlist_node, %struct.hlist_node, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.timer_list, %struct.atomic_t, i32, i32, i32, %struct.xfrm_mark, %struct.xfrm_selector, %struct.xfrm_lifetime_cfg, %struct.xfrm_lifetime_cur, %struct.xfrm_policy_walk_entry, %struct.xfrm_policy_queue, i8, i8, i8, i8, i8, i16, ptr, [6 x %struct.xfrm_tmpl], %struct.hlist_node, %struct.callback_head }
%struct.xfrm_policy_walk_entry = type { %struct.list_head, i8 }
%struct.xfrm_policy_queue = type { %struct.sk_buff_head, %struct.timer_list, i32 }
%struct.xfrm_tmpl = type { %struct.xfrm_id, %union.xfrm_address_t, i16, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.116, %union.anon.118, %union.anon.119, i16, i8, i8, i32, %union.anon.121, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.124, [0 x i32], %union.anon.125, i16, i16, %union.anon.126, %struct.refcount_struct, [0 x i32], %union.anon.127 }
%union.anon.116 = type { i64 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.121 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.22 }
%union.anon.22 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { %struct.hlist_node }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i32 }
%struct.xfrm_userpolicy_info = type { %struct.xfrm_selector, %struct.xfrm_lifetime_cfg, %struct.xfrm_lifetime_cur, i32, i32, i8, i8, i8, i8 }
%struct.xfrm_user_tmpl = type { %struct.xfrm_id, i16, %union.xfrm_address_t, i32, i8, i8, i8, i32, i32, i32 }
%struct.xfrm_encap_tmpl = type { i16, i16, i16, %union.xfrm_address_t }
%struct.xfrm_user_migrate = type { %union.xfrm_address_t, %union.xfrm_address_t, %union.xfrm_address_t, %union.xfrm_address_t, i8, i8, i16, i32, i16, i16 }
%struct.xfrm_user_kmaddress = type { %union.xfrm_address_t, %union.xfrm_address_t, i32, i16 }
%struct.xfrm_kmaddress = type { %union.xfrm_address_t, %union.xfrm_address_t, i32, i16 }
%struct.xfrm_migrate = type { %union.xfrm_address_t, %union.xfrm_address_t, %union.xfrm_address_t, %union.xfrm_address_t, i8, i8, i16, i32, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfrm_usersa_info = type { %struct.xfrm_selector, %struct.xfrm_id, %union.xfrm_address_t, %struct.xfrm_lifetime_cfg, %struct.xfrm_lifetime_cur, %struct.xfrm_stats, i32, i32, i16, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.132, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.132 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.146 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon.155, %struct.sadb_alg }
%union.anon.155 = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }
%struct.xfrm_algo_auth_info = type { i16, i16 }
%struct.xfrmdev_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.xfrm_dump_info = type { ptr, ptr, i32, i16 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.136 }
%union.anon.136 = type { [6 x i32], [24 x i8] }
%struct.xfrmk_sadinfo = type { i32, i32, i32 }
%struct.xfrmu_sadhinfo = type { i32, i32 }
%struct.xfrmu_spdhthresh = type { i8, i8 }
%struct.xfrmk_spdinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrmu_spdinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.xfrmu_spdhinfo = type { i32, i32 }

@xfrm_msg_min = dso_local constant { [25 x i32], [60 x i8] } { [25 x i32] [i32 224, i32 24, i32 24, i32 168, i32 64, i32 64, i32 232, i32 280, i32 232, i32 168, i32 224, i32 176, i32 1, i32 0, i32 48, i32 48, i32 60, i32 64, i32 0, i32 4, i32 4, i32 4, i32 0, i32 3, i32 3], [60 x i8] zeroinitializer }, align 32
@__kstrtab_xfrm_msg_min = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_msg_min = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_msg_min = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_msg_min to i32), ptr @__kstrtab_xfrm_msg_min, ptr @__kstrtabns_xfrm_msg_min }, section "___ksymtab_gpl+xfrm_msg_min", align 4
@xfrma_policy = dso_local constant { [33 x %struct.nla_policy], [88 x i8] } { [33 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 68, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 68, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 68, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 24, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 64, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 224, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 168, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 32, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 76, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 72, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 40, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 72, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 24, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 36, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer], [88 x i8] zeroinitializer }, align 32
@__kstrtab_xfrma_policy = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrma_policy = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrma_policy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrma_policy to i32), ptr @__kstrtab_xfrma_policy, ptr @__kstrtabns_xfrma_policy }, section "___ksymtab_gpl+xfrma_policy", align 4
@netlink_mgr = internal global { %struct.xfrm_mgr, [56 x i8] } { %struct.xfrm_mgr { %struct.list_head zeroinitializer, ptr @xfrm_send_state_notify, ptr @xfrm_send_acquire, ptr @xfrm_compile_policy, ptr @xfrm_send_mapping, ptr @xfrm_send_policy_notify, ptr @xfrm_send_report, ptr @xfrm_send_migrate, ptr @xfrm_is_alive }, [56 x i8] zeroinitializer }, align 32
@xfrm_user_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @xfrm_user_net_init, ptr @xfrm_user_net_pre_exit, ptr null, ptr @xfrm_user_net_exit, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_xfrm_user__518_3654_xfrm_user_init6 = internal global ptr @xfrm_user_init, section ".initcall6.init", align 4
@__exitcall_xfrm_user_exit = internal global ptr @xfrm_user_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file519 = internal constant [34 x i8] c"xfrm_user.file=net/xfrm/xfrm_user\00", section ".modinfo", align 1
@__UNIQUE_ID_license520 = internal constant [22 x i8] c"xfrm_user.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias521 = internal constant [34 x i8] c"xfrm_user.alias=net-pf-16-proto-6\00", section ".modinfo", align 1
@xfrm_send_state_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015xfrm_user: Unknown SA event %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xfrm_send_state_notify\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/xfrm/xfrm_user.c\00", [43 x i8] zeroinitializer }, align 32
@xfrm_send_state_notify._entry_ptr = internal global ptr @xfrm_send_state_notify._entry, section ".printk_index", align 4
@xfrm_nlmsg_multicast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@xfrm_send_policy_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 3475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015xfrm_user: Unknown Policy event %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xfrm_send_policy_notify\00", [40 x i8] zeroinitializer }, align 32
@xfrm_send_policy_notify._entry_ptr = internal global ptr @xfrm_send_policy_notify._entry, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@xfrm_acquire_is_on.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/xfrm.h\00", [45 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__const.xfrm_user_net_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 8, i32 0, ptr @xfrm_netlink_rcv, ptr null, ptr null, ptr null, ptr null }, align 4
@xfrm_dispatch = internal constant { [25 x %struct.xfrm_link], [136 x i8] } { [25 x %struct.xfrm_link] [%struct.xfrm_link { ptr @xfrm_add_sa, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_del_sa, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_get_sa, ptr null, ptr @xfrm_dump_sa, ptr @xfrm_dump_sa_done, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_add_policy, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_get_policy, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_get_policy, ptr @xfrm_dump_policy_start, ptr @xfrm_dump_policy, ptr @xfrm_dump_policy_done, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_alloc_userspi, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_add_acquire, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_add_sa_expire, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_add_policy, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_add_sa, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_add_pol_expire, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_flush_sa, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_flush_policy, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_new_ae, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_get_ae, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link zeroinitializer, %struct.xfrm_link { ptr @xfrm_do_migrate, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link zeroinitializer, %struct.xfrm_link { ptr @xfrm_get_sadinfo, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_set_spdinfo, ptr null, ptr null, ptr null, ptr @xfrma_spd_policy, i32 4 }, %struct.xfrm_link { ptr @xfrm_get_spdinfo, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link zeroinitializer, %struct.xfrm_link { ptr @xfrm_set_default, ptr null, ptr null, ptr null, ptr null, i32 0 }, %struct.xfrm_link { ptr @xfrm_get_default, ptr null, ptr null, ptr null, ptr null, i32 0 }], [136 x i8] zeroinitializer }, align 32
@xfrma_spd_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 2, %union.anon zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 2, %union.anon zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@__fib6_flush_trees = external dso_local local_unnamed_addr global ptr, align 4
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@xfrm_user_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 3637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016Initializing XFRM netlink socket\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xfrm_user_init\00", [17 x i8] zeroinitializer }, align 32
@xfrm_user_init._entry_ptr = internal global ptr @xfrm_user_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 16, i64 17, i64 24, i64 26, i64 28, i64 30]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 8, i64 43, i64 50, i64 51, i64 60, i64 108]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 32, i64 19, i64 20, i64 25, i64 27, i64 29]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 18, i64 21]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 18, i64 21]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [7 x i64] [i64 5, i64 8, i64 43, i64 50, i64 51, i64 60, i64 108]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 8, i64 50, i64 51, i64 108, i64 255]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 8, i64 50, i64 51, i64 108, i64 255]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967293]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967293]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [7 x i64] [i64 5, i64 8, i64 43, i64 50, i64 51, i64 60, i64 108]
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"xfrm_msg_min\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 2759, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"xfrma_policy\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 2788, i32 25 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"netlink_mgr\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 3587, i32 24 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"xfrm_user_net_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 3627, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 3170, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1171, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 991, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 3474, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"../include/net/xfrm.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1767, i32 9 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 695, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 723, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"xfrm_dispatch\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 2834, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"xfrma_spd_policy\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 2822, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [24 x i8] c"../net/xfrm/xfrm_user.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 3637, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias521, ptr @__UNIQUE_ID_file519, ptr @__UNIQUE_ID_license520, ptr @__exitcall_xfrm_user_exit, ptr @__initcall__kmod_xfrm_user__518_3654_xfrm_user_init6, ptr @__ksymtab_xfrm_msg_min, ptr @__ksymtab_xfrma_policy, ptr @xfrm_send_policy_notify._entry, ptr @xfrm_send_policy_notify._entry_ptr, ptr @xfrm_send_state_notify._entry, ptr @xfrm_send_state_notify._entry_ptr, ptr @xfrm_user_exit, ptr @xfrm_user_init._entry, ptr @xfrm_user_init._entry_ptr, ptr @xfrm_msg_min, ptr @xfrma_policy, ptr @netlink_mgr, ptr @xfrm_user_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @xfrm_dispatch, ptr @xfrma_spd_policy, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm_msg_min to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrma_policy to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_mgr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm_user_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm_send_state_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm_send_policy_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm_dispatch to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrma_spd_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm_user_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xfrm_user_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @xfrm_unregister_km(ptr noundef nonnull @netlink_mgr) #16
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @xfrm_user_net_ops) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_unregister_km(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_user_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #19
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @xfrm_user_net_ops) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @xfrm_register_km(ptr noundef nonnull @netlink_mgr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @xfrm_user_net_ops) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_send_state_notify(ptr noundef %x, ptr nocapture noundef readonly %c) #2 align 64 {
entry:
  %tmp.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 24, label %sw.bb
    i32 30, label %sw.bb1
    i32 17, label %entry.sw.bb3_crit_edge
    i32 26, label %entry.sw.bb3_crit_edge96
    i32 16, label %entry.sw.bb3_crit_edge97
    i32 28, label %sw.bb5
  ]

entry.sw.bb3_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

entry.sw.bb3_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %x, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 260, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %portid.i.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %5 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %portid.i.i, align 4
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i.i.i.i, label %skb_tailroom.exit.i.i.i, label %if.end.i.if.then5.i_crit_edge

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5.i

skb_tailroom.exit.i.i.i:                          ; preds = %if.end.i
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %9 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 248
  br i1 %cmp.i.i.i, label %skb_tailroom.exit.i.i.i.if.then5.i_crit_edge, label %nlmsg_put.exit.i.i, !prof !68

skb_tailroom.exit.i.i.i.if.then5.i_crit_edge:     ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5.i

nlmsg_put.exit.i.i:                               ; preds = %skb_tailroom.exit.i.i.i
  %call3.i.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %6, i32 noundef 0, i32 noundef 24, i32 noundef 232, i32 noundef 0) #16
  %cmp.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %cmp.i.i, label %nlmsg_put.exit.i.i.if.then5.i_crit_edge, label %if.end.i.i

nlmsg_put.exit.i.i.if.then5.i_crit_edge:          ; preds = %nlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5.i

if.end.i.i:                                       ; preds = %nlmsg_put.exit.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 16
  %13 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 224)
  %id.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 72
  %id1.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %14 = call ptr @memcpy(ptr %id.i.i.i, ptr %id1.i.i.i, i32 24)
  %sel2.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8
  %15 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %sel2.i.i.i, i32 56)
  %lft.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 112
  %lft3.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 15
  %16 = call ptr @memcpy(ptr %lft.i.i.i, ptr %lft3.i.i.i, i32 64)
  %curlft.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 176
  %curlft4.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 39
  %17 = call ptr @memcpy(ptr %curlft.i.i.i, ptr %curlft4.i.i.i, i32 32)
  %stats.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 208
  %stats5.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38
  %18 = ptrtoint ptr %stats5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stats5.i.i.i, align 4
  %20 = ptrtoint ptr %stats.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %stats.i.i.i, align 1
  %replay.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 212
  %replay12.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38, i32 1
  %21 = ptrtoint ptr %replay12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %replay12.i.i.i, align 4
  %23 = ptrtoint ptr %replay.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %replay.i.i.i, align 1
  %integrity_failed.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 216
  %integrity_failed19.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38, i32 2
  %24 = ptrtoint ptr %integrity_failed19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %integrity_failed19.i.i.i, align 4
  %26 = ptrtoint ptr %integrity_failed.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %integrity_failed.i.i.i, align 1
  %saddr.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 96
  %props.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14
  %saddr22.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %27 = call ptr @memcpy(ptr %saddr.i.i.i, ptr %saddr22.i.i.i, i32 16)
  %mode.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %28 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mode.i.i.i, align 4
  %mode24.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 230
  %30 = ptrtoint ptr %mode24.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %mode24.i.i.i, align 2
  %replay_window26.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 2
  %31 = ptrtoint ptr %replay_window26.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %replay_window26.i.i.i, align 1
  %replay_window27.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 231
  %33 = ptrtoint ptr %replay_window27.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %replay_window27.i.i.i, align 1
  %34 = ptrtoint ptr %props.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %props.i.i.i, align 4
  %reqid29.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 224
  %36 = ptrtoint ptr %reqid29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %reqid29.i.i.i, align 8
  %family.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %37 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %family.i.i.i, align 2
  %family31.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 228
  %39 = ptrtoint ptr %family31.i.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %family31.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %40 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flags.i.i.i, align 1
  %flags33.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 232
  %42 = ptrtoint ptr %flags33.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %flags33.i.i.i, align 8
  %seq.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 13, i32 4
  %43 = ptrtoint ptr %seq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %seq.i.i.i, align 4
  %seq34.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 220
  %45 = ptrtoint ptr %seq34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %seq34.i.i.i, align 4
  %46 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp2.not.i.i = icmp ne i32 %47, 0
  %conv.i.i = zext i1 %cmp2.not.i.i to i8
  %hard.i.i = getelementptr i8, ptr %call3.i.i.i, i32 240
  %48 = ptrtoint ptr %hard.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i.i, ptr %hard.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i.i, i32 241
  %49 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 7)
  %mark.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 9
  %m1.i.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 9, i32 1
  %50 = ptrtoint ptr %m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %m1.i.i.i, align 4
  %52 = ptrtoint ptr %mark.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mark.i.i, align 4
  %or.i.i.i = or i32 %53, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %xfrm_mark_put.exit.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i.i

xfrm_mark_put.exit.i.i:                           ; preds = %if.end.i.i
  %call.i.i13.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 21, i32 noundef 8, ptr noundef %mark.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i13.i, 0
  br i1 %tobool.not.i.i, label %xfrm_mark_put.exit.i.i.if.end5.i.i_crit_edge, label %xfrm_mark_put.exit.i.i.build_expire.exit.i_crit_edge

xfrm_mark_put.exit.i.i.build_expire.exit.i_crit_edge: ; preds = %xfrm_mark_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_expire.exit.i

xfrm_mark_put.exit.i.i.if.end5.i.i_crit_edge:     ; preds = %xfrm_mark_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %xfrm_mark_put.exit.i.i.if.end5.i.i_crit_edge, %if.end.i.i.if.end5.i.i_crit_edge
  %if_id.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 10
  %54 = ptrtoint ptr %if_id.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %if_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i26.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i26.i.i, label %if.end5.i.i.build_expire.exit.thread18.i_crit_edge, label %xfrm_if_id_put.exit.i.i

if.end5.i.i.build_expire.exit.thread18.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_expire.exit.thread18.i

xfrm_if_id_put.exit.i.i:                          ; preds = %if.end5.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #16
  %56 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 31, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool7.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool7.not.i.i, label %xfrm_if_id_put.exit.i.i.build_expire.exit.thread18.i_crit_edge, label %xfrm_if_id_put.exit.i.i.build_expire.exit.i_crit_edge

xfrm_if_id_put.exit.i.i.build_expire.exit.i_crit_edge: ; preds = %xfrm_if_id_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_expire.exit.i

xfrm_if_id_put.exit.i.i.build_expire.exit.thread18.i_crit_edge: ; preds = %xfrm_if_id_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_expire.exit.thread18.i

build_expire.exit.thread18.i:                     ; preds = %xfrm_if_id_put.exit.i.i.build_expire.exit.thread18.i_crit_edge, %if.end5.i.i.build_expire.exit.thread18.i_crit_edge
  %57 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %59 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub.ptr.sub.i.i.i, ptr %call3.i.i.i, align 4
  br label %if.end6.i

build_expire.exit.i:                              ; preds = %xfrm_if_id_put.exit.i.i.build_expire.exit.i_crit_edge, %xfrm_mark_put.exit.i.i.build_expire.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i13.i, %xfrm_mark_put.exit.i.i.build_expire.exit.i_crit_edge ], [ %call.i.i.i.i, %xfrm_if_id_put.exit.i.i.build_expire.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp4.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp4.i, label %build_expire.exit.i.if.then5.i_crit_edge, label %build_expire.exit.i.if.end6.i_crit_edge

build_expire.exit.i.if.end6.i_crit_edge:          ; preds = %build_expire.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

build_expire.exit.i.if.then5.i_crit_edge:         ; preds = %build_expire.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5.i

if.then5.i:                                       ; preds = %build_expire.exit.i.if.then5.i_crit_edge, %nlmsg_put.exit.i.i.if.then5.i_crit_edge, %skb_tailroom.exit.i.i.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  br label %return

if.end6.i:                                        ; preds = %build_expire.exit.i.if.end6.i_crit_edge, %build_expire.exit.thread18.i
  %nlsk1.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 17
  %60 = ptrtoint ptr %nlsk1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %nlsk1.i.i, align 8
  %call.i.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i14.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i14.i, label %land.lhs.true.i.i, label %if.end6.i.do.end8.i.i_crit_edge

if.end6.i.do.end8.i.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end6.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @xfrm_nlmsg_multicast.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_nlmsg_multicast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.end6.i.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %61, null
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end12.i.i

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  br label %return

if.end12.i.i:                                     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %62 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %dst_group.i.i.i, align 8
  %call.i.i15.i = call i32 @netlink_broadcast(ptr noundef nonnull %61, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef 2592) #16
  %63 = call i32 @llvm.smin.i32(i32 %call.i.i15.i, i32 0) #16
  br label %return

sw.bb1:                                           ; preds = %entry
  %64 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %x, align 4
  %replay_esn.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %66 = ptrtoint ptr %replay_esn.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %replay_esn.i.i, align 8
  %tobool.not.i.i16 = icmp eq ptr %67, null
  br i1 %tobool.not.i.i16, label %sw.bb1.xfrm_aevent_msgsize.exit.i_crit_edge, label %cond.true.i.i

sw.bb1.xfrm_aevent_msgsize.exit.i_crit_edge:      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_aevent_msgsize.exit.i

cond.true.i.i:                                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %mul.i.i.i = shl i32 %69, 2
  %70 = add i32 %mul.i.i.i, 143
  %phi.bo15.i.i = and i32 %70, -4
  %phi.bo.i = add i32 %phi.bo15.i.i, 19
  %phi.bo23.i = and i32 %phi.bo.i, -4
  br label %xfrm_aevent_msgsize.exit.i

xfrm_aevent_msgsize.exit.i:                       ; preds = %cond.true.i.i, %sw.bb1.xfrm_aevent_msgsize.exit.i_crit_edge
  %cond.i.i = phi i32 [ %phi.bo23.i, %cond.true.i.i ], [ 144, %sw.bb1.xfrm_aevent_msgsize.exit.i_crit_edge ]
  %call.i.i.i17 = tail call ptr @__alloc_skb(i32 noundef %cond.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp.i18 = icmp eq ptr %call.i.i.i17, null
  br i1 %cmp.i18, label %xfrm_aevent_msgsize.exit.i.return_crit_edge, label %if.end.i20

xfrm_aevent_msgsize.exit.i.return_crit_edge:      ; preds = %xfrm_aevent_msgsize.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i20:                                       ; preds = %xfrm_aevent_msgsize.exit.i
  %call3.i = tail call fastcc i32 @build_aevent(ptr noundef nonnull %call.i.i.i17, ptr noundef %x, ptr noundef %c) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i19 = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i19, label %do.body7.i, label %do.end13.i, !prof !68

do.body7.i:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3018, 0\0A.popsection", ""() #16, !srcloc !69
  unreachable

do.end13.i:                                       ; preds = %if.end.i20
  %nlsk1.i.i21 = getelementptr inbounds %struct.net, ptr %65, i32 0, i32 46, i32 17
  %71 = ptrtoint ptr %nlsk1.i.i21 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %nlsk1.i.i21, align 8
  %call.i.i22 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool.not.i21.i = icmp eq i32 %call.i.i22, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i.i25, label %do.end13.i.do.end8.i.i30_crit_edge

do.end13.i.do.end8.i.i30_crit_edge:               ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i30

land.lhs.true.i.i25:                              ; preds = %do.end13.i
  %call3.i.i23 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i23)
  %tobool4.not.i.i24 = icmp eq i32 %call3.i.i23, 0
  br i1 %tobool4.not.i.i24, label %land.lhs.true.i.i25.do.end8.i.i30_crit_edge, label %land.lhs.true5.i.i27

land.lhs.true.i.i25.do.end8.i.i30_crit_edge:      ; preds = %land.lhs.true.i.i25
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i30

land.lhs.true5.i.i27:                             ; preds = %land.lhs.true.i.i25
  %.b1.i.i26 = load i1, ptr @xfrm_nlmsg_multicast.__warned, align 1
  br i1 %.b1.i.i26, label %land.lhs.true5.i.i27.do.end8.i.i30_crit_edge, label %if.then.i.i28

land.lhs.true5.i.i27.do.end8.i.i30_crit_edge:     ; preds = %land.lhs.true5.i.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i30

if.then.i.i28:                                    ; preds = %land.lhs.true5.i.i27
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_nlmsg_multicast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i.i30

do.end8.i.i30:                                    ; preds = %if.then.i.i28, %land.lhs.true5.i.i27.do.end8.i.i30_crit_edge, %land.lhs.true.i.i25.do.end8.i.i30_crit_edge, %do.end13.i.do.end8.i.i30_crit_edge
  %tobool10.not.i.i29 = icmp eq ptr %72, null
  br i1 %tobool10.not.i.i29, label %if.then11.i.i31, label %if.end12.i.i33

if.then11.i.i31:                                  ; preds = %do.end8.i.i30
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i17, i32 noundef 0) #16
  br label %return

if.end12.i.i33:                                   ; preds = %do.end8.i.i30
  call void @__sanitizer_cov_trace_pc() #18
  %dst_group.i.i.i32 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i17, i32 0, i32 3, i32 16
  %73 = ptrtoint ptr %dst_group.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 5, ptr %dst_group.i.i.i32, align 8
  %call.i.i22.i = tail call i32 @netlink_broadcast(ptr noundef nonnull %72, ptr noundef nonnull %call.i.i.i17, i32 noundef 0, i32 noundef 5, i32 noundef 2592) #16
  %74 = tail call i32 @llvm.smin.i32(i32 %call.i.i22.i, i32 0) #16
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge96, %entry.sw.bb3_crit_edge97
  %75 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %x, align 4
  %aead.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 19
  %77 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %aead.i.i, align 4
  %tobool.not.i.i35 = icmp eq ptr %78, null
  br i1 %tobool.not.i.i35, label %sw.bb3.if.end.i.i37_crit_edge, label %if.then.i.i36

sw.bb3.if.end.i.i37_crit_edge:                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i37

if.then.i.i36:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #18
  %alg_key_len.i.i.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %alg_key_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %alg_key_len.i.i.i, align 4
  %add.i.i.i = add i32 %80, 7
  %div2.i.i.i = lshr i32 %add.i.i.i, 3
  %sub.i.i.i = add nuw nsw i32 %div2.i.i.i, 79
  %and.i.i.i = and i32 %sub.i.i.i, 1073741820
  br label %if.end.i.i37

if.end.i.i37:                                     ; preds = %if.then.i.i36, %sw.bb3.if.end.i.i37_crit_edge
  %l.0.i.i = phi i32 [ %and.i.i.i, %if.then.i.i36 ], [ 0, %sw.bb3.if.end.i.i37_crit_edge ]
  %aalg.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 16
  %81 = ptrtoint ptr %aalg.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %aalg.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %82, null
  br i1 %tobool3.not.i.i, label %if.end.i.i37.if.end14.i.i_crit_edge, label %if.then4.i.i

if.end.i.i37.if.end14.i.i_crit_edge:              ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #18
  %alg_key_len.i.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %alg_key_len.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %alg_key_len.i.i, align 4
  %add6.i.i = add i32 %84, 7
  %div132.i.i = lshr i32 %add6.i.i, 3
  %sub.i133.i.i = add nuw nsw i32 %div132.i.i, 75
  %and.i134.i.i = and i32 %sub.i133.i.i, 1073741820
  %add9.i.i = add nuw nsw i32 %and.i134.i.i, %l.0.i.i
  %sub.i139.i.i = add nuw nsw i32 %div132.i.i, 79
  %and.i140.i.i = and i32 %sub.i139.i.i, 1073741820
  %add13.i.i = add nuw nsw i32 %add9.i.i, %and.i140.i.i
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then4.i.i, %if.end.i.i37.if.end14.i.i_crit_edge
  %l.1.i.i = phi i32 [ %add13.i.i, %if.then4.i.i ], [ %l.0.i.i, %if.end.i.i37.if.end14.i.i_crit_edge ]
  %ealg.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 17
  %85 = ptrtoint ptr %ealg.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ealg.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %86, null
  br i1 %tobool15.not.i.i, label %if.end14.i.i.if.end21.i.i_crit_edge, label %if.then16.i.i

if.end14.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %alg_key_len.i141.i.i = getelementptr inbounds %struct.xfrm_algo, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %alg_key_len.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %alg_key_len.i141.i.i, align 4
  %add.i142.i.i = add i32 %88, 7
  %div2.i143.i.i = lshr i32 %add.i142.i.i, 3
  %sub.i145.i.i = add nuw nsw i32 %div2.i143.i.i, 75
  %and.i146.i.i = and i32 %sub.i145.i.i, 1073741820
  %add20.i.i = add nuw i32 %and.i146.i.i, %l.1.i.i
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then16.i.i, %if.end14.i.i.if.end21.i.i_crit_edge
  %l.2.i.i = phi i32 [ %add20.i.i, %if.then16.i.i ], [ %l.1.i.i, %if.end14.i.i.if.end21.i.i_crit_edge ]
  %calg.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 18
  %89 = ptrtoint ptr %calg.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %calg.i.i, align 8
  %tobool22.not.i.i = icmp eq ptr %90, null
  %add25.i.i = add nuw i32 %l.2.i.i, 72
  %spec.select.i.i = select i1 %tobool22.not.i.i, i32 %l.2.i.i, i32 %add25.i.i
  %encap.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %91 = ptrtoint ptr %encap.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %encap.i.i, align 8
  %tobool27.not.i.i = icmp eq ptr %92, null
  %add30.i.i = add nuw i32 %spec.select.i.i, 28
  %l.4.i.i = select i1 %tobool27.not.i.i, i32 %spec.select.i.i, i32 %add30.i.i
  %tfcpad.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 11
  %93 = ptrtoint ptr %tfcpad.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tfcpad.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool32.not.i.i = icmp eq i32 %94, 0
  %add35.i.i = add nuw i32 %l.4.i.i, 8
  %l.5.i.i = select i1 %tobool32.not.i.i, i32 %l.4.i.i, i32 %add35.i.i
  %replay_esn.i.i38 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %95 = ptrtoint ptr %replay_esn.i.i38 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %replay_esn.i.i38, align 8
  %tobool37.not.i.i = icmp eq ptr %96, null
  br i1 %tobool37.not.i.i, label %if.end21.i.i.if.end45.i.i_crit_edge, label %if.then38.i.i

if.end21.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45.i.i

if.then38.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %mul.i.i.i39 = shl i32 %98, 2
  %sub.i148.i.i = add i32 %mul.i.i.i39, 31
  %and.i149.i.i = and i32 %sub.i148.i.i, -4
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then38.i.i, %if.end21.i.i.if.end45.i.i_crit_edge
  %call41.pn.i.i = phi i32 [ %and.i149.i.i, %if.then38.i.i ], [ 16, %if.end21.i.i.if.end45.i.i_crit_edge ]
  %l.6.i.i = add i32 %call41.pn.i.i, %l.5.i.i
  %security.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 50
  %99 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %security.i.i, align 4
  %tobool46.not.i.i = icmp eq ptr %100, null
  br i1 %tobool46.not.i.i, label %if.end45.i.i.xfrm_sa_len.exit.i_crit_edge, label %if.then47.i.i

if.end45.i.i.xfrm_sa_len.exit.i_crit_edge:        ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_sa_len.exit.i

if.then47.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %ctx_len.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %ctx_len.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %ctx_len.i.i, align 2
  %conv.i.i40 = zext i16 %102 to i32
  %sub.i150.i.i = add nuw nsw i32 %conv.i.i40, 15
  %and.i151.i.i = and i32 %sub.i150.i.i, 131068
  %add51.i.i = add i32 %and.i151.i.i, %l.6.i.i
  br label %xfrm_sa_len.exit.i

xfrm_sa_len.exit.i:                               ; preds = %if.then47.i.i, %if.end45.i.i.xfrm_sa_len.exit.i_crit_edge
  %l.7.i.i = phi i32 [ %add51.i.i, %if.then47.i.i ], [ %l.6.i.i, %if.end45.i.i.xfrm_sa_len.exit.i_crit_edge ]
  %coaddr.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 26
  %103 = ptrtoint ptr %coaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %coaddr.i.i, align 8
  %tobool53.not.i.i = icmp eq ptr %104, null
  %add56.i.i = add i32 %l.7.i.i, 20
  %spec.select152.i.i = select i1 %tobool53.not.i.i, i32 %l.7.i.i, i32 %add56.i.i
  %extra_flags.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 11
  %105 = ptrtoint ptr %extra_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %extra_flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool58.not.i.i = icmp eq i32 %106, 0
  %add61.i.i = add i32 %spec.select152.i.i, 8
  %l.9.i.i = select i1 %tobool58.not.i.i, i32 %spec.select152.i.i, i32 %add61.i.i
  %xso.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41
  %107 = ptrtoint ptr %xso.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %xso.i.i, align 8
  %tobool63.not.i.i = icmp eq ptr %108, null
  %add66.i.i = add i32 %l.9.i.i, 12
  %l.10.i.i = select i1 %tobool63.not.i.i, i32 %l.9.i.i, i32 %add66.i.i
  %smark.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 12
  %109 = ptrtoint ptr %smark.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %smark.i.i, align 4
  %m.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 12, i32 1
  %111 = ptrtoint ptr %m.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %m.i.i, align 4
  %or.i.i = or i32 %112, %110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool71.not.i.i = icmp eq i32 %or.i.i, 0
  %add76.i.i = add i32 %l.10.i.i, 16
  %l.11.i.i = select i1 %tobool71.not.i.i, i32 %l.10.i.i, i32 %add76.i.i
  %if_id.i.i41 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 10
  %113 = ptrtoint ptr %if_id.i.i41 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %if_id.i.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool78.not.i.i = icmp eq i32 %114, 0
  %add81.i.i = add i32 %l.11.i.i, 8
  %l.12.i.i = select i1 %tobool78.not.i.i, i32 %l.11.i.i, i32 %add81.i.i
  %mapping_maxage.i.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 23
  %115 = ptrtoint ptr %mapping_maxage.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mapping_maxage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool85.not.i.i = icmp eq i32 %116, 0
  %l.13.v.i.i = select i1 %tobool85.not.i.i, i32 12, i32 20
  %l.13.i.i = add i32 %l.12.i.i, %l.13.v.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp.i42 = icmp eq i32 %1, 17
  %add4.i = add i32 %l.13.i.i, 240
  %len.0.i = select i1 %cmp.i42, i32 %add4.i, i32 %l.13.i.i
  %headlen.0.i = select i1 %cmp.i42, i32 24, i32 224
  %add6.i = add nuw nsw i32 %headlen.0.i, 19
  %sub.i.i77.i = add i32 %len.0.i, %add6.i
  %and.i.i78.i = and i32 %sub.i.i77.i, -4
  %call.i.i.i43 = tail call ptr @__alloc_skb(i32 noundef %and.i.i78.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp8.i = icmp eq ptr %call.i.i.i43, null
  br i1 %cmp8.i, label %xfrm_sa_len.exit.i.return_crit_edge, label %if.end10.i

xfrm_sa_len.exit.i.return_crit_edge:              ; preds = %xfrm_sa_len.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end10.i:                                       ; preds = %xfrm_sa_len.exit.i
  %portid.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %117 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %portid.i, align 4
  %seq.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %119 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %seq.i, align 4
  %121 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %event, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i43, i32 0, i32 7
  %123 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.i.not.i.i.i = icmp eq i32 %124, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end10.i.skb_tailroom.exit.i.i_crit_edge

if.end10.i.skb_tailroom.exit.i.i_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i43, i32 0, i32 17
  %125 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i43, i32 0, i32 16
  %127 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i44 = ptrtoint ptr %126 to i32
  %sub.ptr.rhs.cast.i.i.i45 = ptrtoint ptr %128 to i32
  %sub.ptr.sub.i.i.i46 = sub i32 %sub.ptr.lhs.cast.i.i.i44, %sub.ptr.rhs.cast.i.i.i45
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %if.end10.i.skb_tailroom.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i46, %cond.false.i.i.i ], [ 0, %if.end10.i.skb_tailroom.exit.i.i_crit_edge ]
  %and.i.i80.i = and i32 %add6.i, 504
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %and.i.i80.i)
  %cmp.i.i47 = icmp slt i32 %cond.i.i.i, %and.i.i80.i
  br i1 %cmp.i.i47, label %skb_tailroom.exit.i.i.out_free_skb.i_crit_edge, label %nlmsg_put.exit.i, !prof !68

skb_tailroom.exit.i.i.out_free_skb.i_crit_edge:   ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i48 = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i43, i32 noundef %118, i32 noundef %120, i32 noundef %122, i32 noundef %headlen.0.i, i32 noundef 0) #16
  %cmp13.i = icmp eq ptr %call3.i.i48, null
  br i1 %cmp13.i, label %nlmsg_put.exit.i.out_free_skb.i_crit_edge, label %if.end15.i

nlmsg_put.exit.i.out_free_skb.i_crit_edge:        ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i

if.end15.i:                                       ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i49 = getelementptr i8, ptr %call3.i.i48, i32 16
  %129 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %130)
  %cmp18.i = icmp eq i32 %130, 17
  br i1 %cmp18.i, label %if.then19.i, label %if.end15.i.if.end33.i_crit_edge

if.end15.i.if.end33.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33.i

if.then19.i:                                      ; preds = %if.end15.i
  %131 = call ptr @memset(ptr %add.ptr.i.i49, i32 0, i32 24)
  %id21.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %132 = call ptr @memcpy(ptr %add.ptr.i.i49, ptr %id21.i, i32 16)
  %spi.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %133 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %spi.i, align 4
  %spi24.i = getelementptr i8, ptr %call3.i.i48, i32 32
  %135 = ptrtoint ptr %spi24.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %spi24.i, align 4
  %family.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %136 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %family.i, align 2
  %family25.i = getelementptr i8, ptr %call3.i.i48, i32 36
  %138 = ptrtoint ptr %family25.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %family25.i, align 4
  %proto.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 2
  %139 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %proto.i, align 4
  %proto27.i = getelementptr i8, ptr %call3.i.i48, i32 38
  %141 = ptrtoint ptr %proto27.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %proto27.i, align 2
  %call28.i = tail call ptr @nla_reserve(ptr noundef nonnull %call.i.i.i43, i32 noundef 6, i32 noundef 224) #16
  %cmp29.i = icmp eq ptr %call28.i, null
  br i1 %cmp29.i, label %if.then19.i.out_free_skb.i_crit_edge, label %cleanup.thread.i

if.then19.i.out_free_skb.i_crit_edge:             ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i

cleanup.thread.i:                                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i83.i = getelementptr i8, ptr %call28.i, i32 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %cleanup.thread.i, %if.end15.i.if.end33.i_crit_edge
  %p.1.i = phi ptr [ %add.ptr.i.i49, %if.end15.i.if.end33.i_crit_edge ], [ %add.ptr.i83.i, %cleanup.thread.i ]
  %call34.i = tail call fastcc i32 @copy_to_user_state_extra(ptr noundef %x, ptr noundef %p.1.i, ptr noundef nonnull %call.i.i.i43) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool.not.i, label %if.end36.i, label %if.end33.i.out_free_skb.i_crit_edge

if.end33.i.out_free_skb.i_crit_edge:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i

if.end36.i:                                       ; preds = %if.end33.i
  %tail.i.i84.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i43, i32 0, i32 16
  %142 = ptrtoint ptr %tail.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tail.i.i84.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %143 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i48 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %144 = ptrtoint ptr %call3.i.i48 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i48, align 4
  %nlsk1.i.i50 = getelementptr inbounds %struct.net, ptr %76, i32 0, i32 46, i32 17
  %145 = ptrtoint ptr %nlsk1.i.i50 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile ptr, ptr %nlsk1.i.i50, align 8
  %call.i.i51 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %tobool.not.i85.i = icmp eq i32 %call.i.i51, 0
  br i1 %tobool.not.i85.i, label %land.lhs.true.i.i53, label %if.end36.i.do.end8.i.i57_crit_edge

if.end36.i.do.end8.i.i57_crit_edge:               ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i57

land.lhs.true.i.i53:                              ; preds = %if.end36.i
  %call3.i86.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i86.i)
  %tobool4.not.i.i52 = icmp eq i32 %call3.i86.i, 0
  br i1 %tobool4.not.i.i52, label %land.lhs.true.i.i53.do.end8.i.i57_crit_edge, label %land.lhs.true5.i.i55

land.lhs.true.i.i53.do.end8.i.i57_crit_edge:      ; preds = %land.lhs.true.i.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i57

land.lhs.true5.i.i55:                             ; preds = %land.lhs.true.i.i53
  %.b1.i.i54 = load i1, ptr @xfrm_nlmsg_multicast.__warned, align 1
  br i1 %.b1.i.i54, label %land.lhs.true5.i.i55.do.end8.i.i57_crit_edge, label %if.then.i87.i

land.lhs.true5.i.i55.do.end8.i.i57_crit_edge:     ; preds = %land.lhs.true5.i.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i57

if.then.i87.i:                                    ; preds = %land.lhs.true5.i.i55
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_nlmsg_multicast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i.i57

do.end8.i.i57:                                    ; preds = %if.then.i87.i, %land.lhs.true5.i.i55.do.end8.i.i57_crit_edge, %land.lhs.true.i.i53.do.end8.i.i57_crit_edge, %if.end36.i.do.end8.i.i57_crit_edge
  %tobool10.not.i.i56 = icmp eq ptr %146, null
  br i1 %tobool10.not.i.i56, label %if.then11.i.i58, label %if.end12.i.i60

if.then11.i.i58:                                  ; preds = %do.end8.i.i57
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i43, i32 noundef 0) #16
  br label %return

if.end12.i.i60:                                   ; preds = %do.end8.i.i57
  call void @__sanitizer_cov_trace_pc() #18
  %dst_group.i.i.i59 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i43, i32 0, i32 3, i32 16
  %147 = ptrtoint ptr %dst_group.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 3, ptr %dst_group.i.i.i59, align 8
  %call.i.i88.i = tail call i32 @netlink_broadcast(ptr noundef nonnull %146, ptr noundef nonnull %call.i.i.i43, i32 noundef 0, i32 noundef 3, i32 noundef 2592) #16
  %148 = tail call i32 @llvm.smin.i32(i32 %call.i.i88.i, i32 0) #16
  br label %return

out_free_skb.i:                                   ; preds = %if.end33.i.out_free_skb.i_crit_edge, %if.then19.i.out_free_skb.i_crit_edge, %nlmsg_put.exit.i.out_free_skb.i_crit_edge, %skb_tailroom.exit.i.i.out_free_skb.i_crit_edge
  %err.0.i = phi i32 [ -90, %nlmsg_put.exit.i.out_free_skb.i_crit_edge ], [ %call34.i, %if.end33.i.out_free_skb.i_crit_edge ], [ -90, %if.then19.i.out_free_skb.i_crit_edge ], [ -90, %skb_tailroom.exit.i.i.out_free_skb.i_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i43, i32 noundef 0) #16
  br label %return

sw.bb5:                                           ; preds = %entry
  %net1.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 4
  %149 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %net1.i, align 4
  %call.i.i.i62 = tail call ptr @__alloc_skb(i32 noundef 20, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp.i63 = icmp eq ptr %call.i.i.i62, null
  br i1 %cmp.i63, label %sw.bb5.return_crit_edge, label %if.end.i68

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i68:                                       ; preds = %sw.bb5
  %portid.i64 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %151 = ptrtoint ptr %portid.i64 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %portid.i64, align 4
  %seq.i65 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %153 = ptrtoint ptr %seq.i65 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %seq.i65, align 4
  %data_len.i.i.i.i66 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i62, i32 0, i32 7
  %155 = ptrtoint ptr %data_len.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %data_len.i.i.i.i66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.i.not.i.i.i67 = icmp eq i32 %156, 0
  br i1 %tobool.i.not.i.i.i67, label %skb_tailroom.exit.i.i75, label %if.end.i68.if.then4.i_crit_edge

if.end.i68.if.then4.i_crit_edge:                  ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4.i

skb_tailroom.exit.i.i75:                          ; preds = %if.end.i68
  %end.i.i.i69 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i62, i32 0, i32 17
  %157 = ptrtoint ptr %end.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %end.i.i.i69, align 4
  %tail.i.i.i70 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i62, i32 0, i32 16
  %159 = ptrtoint ptr %tail.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tail.i.i.i70, align 8
  %sub.ptr.lhs.cast.i.i.i71 = ptrtoint ptr %158 to i32
  %sub.ptr.rhs.cast.i.i.i72 = ptrtoint ptr %160 to i32
  %sub.ptr.sub.i.i.i73 = sub i32 %sub.ptr.lhs.cast.i.i.i71, %sub.ptr.rhs.cast.i.i.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i73)
  %cmp.i.i74 = icmp slt i32 %sub.ptr.sub.i.i.i73, 20
  br i1 %cmp.i.i74, label %skb_tailroom.exit.i.i75.if.then4.i_crit_edge, label %nlmsg_put.exit.i77, !prof !68

skb_tailroom.exit.i.i75.if.then4.i_crit_edge:     ; preds = %skb_tailroom.exit.i.i75
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4.i

nlmsg_put.exit.i77:                               ; preds = %skb_tailroom.exit.i.i75
  %call3.i.i76 = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i62, i32 noundef %152, i32 noundef %154, i32 noundef 28, i32 noundef 1, i32 noundef 0) #16
  %cmp3.i = icmp eq ptr %call3.i.i76, null
  br i1 %cmp3.i, label %nlmsg_put.exit.i77.if.then4.i_crit_edge, label %if.end5.i

nlmsg_put.exit.i77.if.then4.i_crit_edge:          ; preds = %nlmsg_put.exit.i77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4.i

if.then4.i:                                       ; preds = %nlmsg_put.exit.i77.if.then4.i_crit_edge, %skb_tailroom.exit.i.i75.if.then4.i_crit_edge, %if.end.i68.if.then4.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i62, i32 noundef 0) #16
  br label %return

if.end5.i:                                        ; preds = %nlmsg_put.exit.i77
  %add.ptr.i.i78 = getelementptr i8, ptr %call3.i.i76, i32 16
  %161 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %c, align 4
  %conv.i = trunc i32 %162 to i8
  %163 = ptrtoint ptr %add.ptr.i.i78 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv.i, ptr %add.ptr.i.i78, align 1
  %164 = ptrtoint ptr %tail.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %tail.i.i.i70, align 8
  %sub.ptr.lhs.cast.i.i79 = ptrtoint ptr %165 to i32
  %sub.ptr.rhs.cast.i.i80 = ptrtoint ptr %call3.i.i76 to i32
  %sub.ptr.sub.i.i81 = sub i32 %sub.ptr.lhs.cast.i.i79, %sub.ptr.rhs.cast.i.i80
  %166 = ptrtoint ptr %call3.i.i76 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %sub.ptr.sub.i.i81, ptr %call3.i.i76, align 4
  %nlsk1.i.i82 = getelementptr inbounds %struct.net, ptr %150, i32 0, i32 46, i32 17
  %167 = ptrtoint ptr %nlsk1.i.i82 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile ptr, ptr %nlsk1.i.i82, align 8
  %call.i.i83 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83)
  %tobool.not.i.i84 = icmp eq i32 %call.i.i83, 0
  br i1 %tobool.not.i.i84, label %land.lhs.true.i.i86, label %if.end5.i.do.end8.i.i91_crit_edge

if.end5.i.do.end8.i.i91_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i91

land.lhs.true.i.i86:                              ; preds = %if.end5.i
  %call3.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i22.i)
  %tobool4.not.i.i85 = icmp eq i32 %call3.i22.i, 0
  br i1 %tobool4.not.i.i85, label %land.lhs.true.i.i86.do.end8.i.i91_crit_edge, label %land.lhs.true5.i.i88

land.lhs.true.i.i86.do.end8.i.i91_crit_edge:      ; preds = %land.lhs.true.i.i86
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i91

land.lhs.true5.i.i88:                             ; preds = %land.lhs.true.i.i86
  %.b1.i.i87 = load i1, ptr @xfrm_nlmsg_multicast.__warned, align 1
  br i1 %.b1.i.i87, label %land.lhs.true5.i.i88.do.end8.i.i91_crit_edge, label %if.then.i.i89

land.lhs.true5.i.i88.do.end8.i.i91_crit_edge:     ; preds = %land.lhs.true5.i.i88
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i91

if.then.i.i89:                                    ; preds = %land.lhs.true5.i.i88
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_nlmsg_multicast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i.i91

do.end8.i.i91:                                    ; preds = %if.then.i.i89, %land.lhs.true5.i.i88.do.end8.i.i91_crit_edge, %land.lhs.true.i.i86.do.end8.i.i91_crit_edge, %if.end5.i.do.end8.i.i91_crit_edge
  %tobool10.not.i.i90 = icmp eq ptr %168, null
  br i1 %tobool10.not.i.i90, label %if.then11.i.i92, label %if.end12.i.i94

if.then11.i.i92:                                  ; preds = %do.end8.i.i91
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i62, i32 noundef 0) #16
  br label %return

if.end12.i.i94:                                   ; preds = %do.end8.i.i91
  call void @__sanitizer_cov_trace_pc() #18
  %dst_group.i.i.i93 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i62, i32 0, i32 3, i32 16
  %169 = ptrtoint ptr %dst_group.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 3, ptr %dst_group.i.i.i93, align 8
  %call.i.i23.i = tail call i32 @netlink_broadcast(ptr noundef nonnull %168, ptr noundef nonnull %call.i.i.i62, i32 noundef 0, i32 noundef 3, i32 noundef 2592) #16
  %170 = tail call i32 @llvm.smin.i32(i32 %call.i.i23.i, i32 0) #16
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #19
  br label %return

return:                                           ; preds = %do.end, %if.end12.i.i94, %if.then11.i.i92, %if.then4.i, %sw.bb5.return_crit_edge, %out_free_skb.i, %if.end12.i.i60, %if.then11.i.i58, %xfrm_sa_len.exit.i.return_crit_edge, %if.end12.i.i33, %if.then11.i.i31, %xfrm_aevent_msgsize.exit.i.return_crit_edge, %if.end12.i.i, %if.then11.i.i, %if.then5.i, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -90, %if.then5.i ], [ -12, %sw.bb.return_crit_edge ], [ %63, %if.end12.i.i ], [ -32, %if.then11.i.i ], [ -12, %xfrm_aevent_msgsize.exit.i.return_crit_edge ], [ %74, %if.end12.i.i33 ], [ -32, %if.then11.i.i31 ], [ %err.0.i, %out_free_skb.i ], [ -12, %xfrm_sa_len.exit.i.return_crit_edge ], [ %148, %if.end12.i.i60 ], [ -32, %if.then11.i.i58 ], [ -90, %if.then4.i ], [ -12, %sw.bb5.return_crit_edge ], [ %170, %if.end12.i.i94 ], [ -32, %if.then11.i.i92 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_send_acquire(ptr nocapture noundef %x, ptr nocapture noundef readonly %xt, ptr noundef %xp) #2 align 64 {
entry:
  %tmp.i.i.i = alloca i32, align 4
  %upt.i.i = alloca %struct.xfrm_userpolicy_type, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %x, align 4
  %xfrm_nr.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 21
  %2 = ptrtoint ptr %xfrm_nr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xfrm_nr.i, align 4
  %security.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 50
  %4 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %security.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.xfrm_acquire_msgsize.exit_crit_edge, label %if.then.i.i

entry.xfrm_acquire_msgsize.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_acquire_msgsize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ctx_len.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ctx_len.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ctx_len.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %phi.bo.i = add nuw nsw i32 %conv.i.i, 15
  %phi.bo10.i = and i32 %phi.bo.i, 131068
  br label %xfrm_acquire_msgsize.exit

xfrm_acquire_msgsize.exit:                        ; preds = %if.then.i.i, %entry.xfrm_acquire_msgsize.exit_crit_edge
  %len.0.i.i = phi i32 [ %phi.bo10.i, %if.then.i.i ], [ 4, %entry.xfrm_acquire_msgsize.exit_crit_edge ]
  %conv.i = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 6
  %add7.i = add nuw nsw i32 %mul.i, 327
  %sub.i.i = add nuw nsw i32 %add7.i, %len.0.i.i
  %and.i.i = and i32 %sub.i.i, 262140
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %xfrm_acquire_msgsize.exit.cleanup_crit_edge, label %if.end

xfrm_acquire_msgsize.exit.cleanup_crit_edge:      ; preds = %xfrm_acquire_msgsize.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %xfrm_acquire_msgsize.exit
  %call.i = tail call i32 @xfrm_get_acqseq() #16
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end.do.body7_crit_edge

if.end.do.body7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7

skb_tailroom.exit.i.i:                            ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 296, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 296
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.do.body7_crit_edge, label %nlmsg_put.exit.i, !prof !68

skb_tailroom.exit.i.i.do.body7_crit_edge:         ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 23, i32 noundef 280, i32 noundef 0) #16
  %cmp.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.i, label %nlmsg_put.exit.i.do.body7_crit_edge, label %if.end.i

nlmsg_put.exit.i.do.body7_crit_edge:              ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %id3.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %14 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %id3.i, i32 24)
  %saddr.i = getelementptr i8, ptr %call3.i.i, i32 40
  %saddr4.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %15 = call ptr @memcpy(ptr %saddr.i, ptr %saddr4.i, i32 16)
  %sel.i = getelementptr i8, ptr %call3.i.i, i32 56
  %sel5.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8
  %16 = call ptr @memcpy(ptr %sel.i, ptr %sel5.i, i32 56)
  %policy.i = getelementptr i8, ptr %call3.i.i, i32 112
  %17 = call ptr @memset(ptr %policy.i, i32 0, i32 168)
  %selector.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 12
  %18 = call ptr @memcpy(ptr %policy.i, ptr %selector.i.i, i32 56)
  %lft.i.i = getelementptr i8, ptr %call3.i.i, i32 168
  %lft1.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 13
  %19 = call ptr @memcpy(ptr %lft.i.i, ptr %lft1.i.i, i32 64)
  %curlft.i.i = getelementptr i8, ptr %call3.i.i, i32 232
  %curlft2.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 14
  %20 = call ptr @memcpy(ptr %curlft.i.i, ptr %curlft2.i.i, i32 32)
  %priority.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 8
  %21 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %priority.i.i, align 4
  %priority3.i.i = getelementptr i8, ptr %call3.i.i, i32 264
  %23 = ptrtoint ptr %priority3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %priority3.i.i, align 8
  %index.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 9
  %24 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i.i, align 8
  %index4.i.i = getelementptr i8, ptr %call3.i.i, i32 268
  %26 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %index4.i.i, align 4
  %family.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 22
  %27 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %family.i.i, align 2
  %family6.i.i = getelementptr i8, ptr %call3.i.i, i32 152
  %29 = ptrtoint ptr %family6.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %family6.i.i, align 8
  %dir7.i.i = getelementptr i8, ptr %call3.i.i, i32 272
  %30 = ptrtoint ptr %dir7.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %dir7.i.i, align 8
  %action.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 19
  %31 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %action.i.i, align 2
  %action8.i.i = getelementptr i8, ptr %call3.i.i, i32 273
  %33 = ptrtoint ptr %action8.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %action8.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 20
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags.i.i, align 1
  %flags9.i.i = getelementptr i8, ptr %call3.i.i, i32 274
  %36 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %flags9.i.i, align 2
  %share.i.i = getelementptr i8, ptr %call3.i.i, i32 275
  %37 = ptrtoint ptr %share.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %share.i.i, align 1
  %aalgos.i = getelementptr inbounds %struct.xfrm_tmpl, ptr %xt, i32 0, i32 8
  %38 = ptrtoint ptr %aalgos.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %aalgos.i, align 4
  %aalgos6.i = getelementptr i8, ptr %call3.i.i, i32 280
  %40 = ptrtoint ptr %aalgos6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %aalgos6.i, align 8
  %ealgos.i = getelementptr inbounds %struct.xfrm_tmpl, ptr %xt, i32 0, i32 9
  %41 = ptrtoint ptr %ealgos.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ealgos.i, align 4
  %ealgos7.i = getelementptr i8, ptr %call3.i.i, i32 284
  %43 = ptrtoint ptr %ealgos7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %ealgos7.i, align 4
  %calgos.i = getelementptr inbounds %struct.xfrm_tmpl, ptr %xt, i32 0, i32 10
  %44 = ptrtoint ptr %calgos.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %calgos.i, align 4
  %calgos8.i = getelementptr i8, ptr %call3.i.i, i32 288
  %46 = ptrtoint ptr %calgos8.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %calgos8.i, align 8
  %seq9.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 13, i32 4
  %47 = ptrtoint ptr %seq9.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call.i, ptr %seq9.i, align 4
  %seq10.i = getelementptr i8, ptr %call3.i.i, i32 292
  %48 = ptrtoint ptr %seq10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call.i, ptr %seq10.i, align 4
  %call11.i = tail call fastcc i32 @copy_to_user_tmpl(ptr noundef %xp, ptr noundef nonnull %call.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.then12.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.then12.i:                                      ; preds = %if.end.i
  %49 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %security.i, align 4
  %tobool.not.i.i22 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i22, label %if.then12.i.if.end18.i_crit_edge, label %if.then.i.i23

if.then12.i.if.end18.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.then.i.i23:                                    ; preds = %if.then12.i
  %ctx_len.i.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %ctx_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ctx_len.i.i.i, align 2
  %conv.i.i.i = zext i16 %52 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 8
  %call.i.i.i = tail call ptr @nla_reserve(ptr noundef nonnull %call.i.i, i32 noundef 8, i32 noundef %add.i.i.i) #16
  %cmp.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i.i, label %if.then.i.i23.if.then.i.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i23.if.then.i.i.i_crit_edge:            ; preds = %if.then.i.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i23
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 4
  %exttype.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 6
  %53 = ptrtoint ptr %exttype.i.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 8, ptr %exttype.i.i.i, align 2
  %conv3.i.i.i = trunc i32 %add.i.i.i to i16
  %54 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv3.i.i.i, ptr %add.ptr.i.i.i.i, align 2
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %50, align 4
  %ctx_doi4.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 9
  %57 = ptrtoint ptr %ctx_doi4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %ctx_doi4.i.i.i, align 1
  %ctx_alg.i.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %50, i32 0, i32 1
  %58 = ptrtoint ptr %ctx_alg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ctx_alg.i.i.i, align 1
  %ctx_alg5.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 8
  %60 = ptrtoint ptr %ctx_alg5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %ctx_alg5.i.i.i, align 2
  %61 = ptrtoint ptr %ctx_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %ctx_len.i.i.i, align 2
  %ctx_len7.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 10
  %63 = ptrtoint ptr %ctx_len7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %ctx_len7.i.i.i, align 2
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 12
  %ctx_str.i.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %50, i32 0, i32 4
  %64 = load i16, ptr %ctx_len.i.i.i, align 2
  %conv9.i.i.i = zext i16 %64 to i32
  %65 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %ctx_str.i.i.i, i32 %conv9.i.i.i)
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i.i.i, %if.then12.i.if.end18.i_crit_edge
  %type.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 18
  %66 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %type.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %upt.i.i) #16
  %68 = call ptr @memset(ptr %upt.i.i, i32 0, i32 6)
  %69 = ptrtoint ptr %upt.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %67, ptr %upt.i.i, align 2
  %call.i.i24 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 16, i32 noundef 6, ptr noundef nonnull %upt.i.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %upt.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool19.not.i = icmp eq i32 %call.i.i24, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end18.i.if.then.i.i.i_crit_edge

if.end18.i.if.then.i.i.i_crit_edge:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.then20.i:                                      ; preds = %if.end18.i
  %mark.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 11
  %m1.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 11, i32 1
  %70 = ptrtoint ptr %m1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %m1.i.i, align 4
  %72 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mark.i, align 4
  %or.i.i = or i32 %73, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool.not.i66.i = icmp eq i32 %or.i.i, 0
  br i1 %tobool.not.i66.i, label %if.then20.i.if.then24.i_crit_edge, label %if.end22.i

if.then20.i.if.then24.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24.i

if.end22.i:                                       ; preds = %if.then20.i
  %call.i67.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 21, i32 noundef 8, ptr noundef %mark.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool23.not.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool23.not.i, label %if.end22.i.if.then24.i_crit_edge, label %if.end22.i.if.then.i.i.i_crit_edge

if.end22.i.if.then.i.i.i_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end22.i.if.then24.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.end22.i.if.then24.i_crit_edge, %if.then20.i.if.then24.i_crit_edge
  %if_id.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 10
  %74 = ptrtoint ptr %if_id.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %if_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i70.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i70.i, label %if.then24.i.build_acquire.exit.thread30_crit_edge, label %if.end26.i

if.then24.i.build_acquire.exit.thread30_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_acquire.exit.thread30

if.end26.i:                                       ; preds = %if.then24.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #16
  %76 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %tmp.i.i.i, align 4
  %call.i.i71.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 31, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71.i)
  %tobool27.not.i = icmp eq i32 %call.i.i71.i, 0
  br i1 %tobool27.not.i, label %if.end26.i.build_acquire.exit.thread30_crit_edge, label %if.end26.i.if.then.i.i.i_crit_edge

if.end26.i.if.then.i.i.i_crit_edge:               ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end26.i.build_acquire.exit.thread30_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_acquire.exit.thread30

if.then.i.i.i:                                    ; preds = %if.end26.i.if.then.i.i.i_crit_edge, %if.end22.i.if.then.i.i.i_crit_edge, %if.end18.i.if.then.i.i.i_crit_edge, %if.then.i.i23.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %err.396.i = phi i32 [ %call.i.i71.i, %if.end26.i.if.then.i.i.i_crit_edge ], [ %call.i67.i, %if.end22.i.if.then.i.i.i_crit_edge ], [ %call.i.i24, %if.end18.i.if.then.i.i.i_crit_edge ], [ -90, %if.then.i.i23.if.then.i.i.i_crit_edge ], [ %call11.i, %if.end.i.if.then.i.i.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %77 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i75.i = icmp ugt ptr %78, %call3.i.i
  br i1 %cmp.i.i75.i, label %do.end.i.i.i, label %if.then.i.i.i.build_acquire.exit_crit_edge, !prof !68

if.then.i.i.i.build_acquire.exit_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_acquire.exit

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %build_acquire.exit

build_acquire.exit.thread30:                      ; preds = %if.end26.i.build_acquire.exit.thread30_crit_edge, %if.then24.i.build_acquire.exit.thread30_crit_edge
  %79 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %80 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %81 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  br label %do.end13

build_acquire.exit:                               ; preds = %do.end.i.i.i, %if.then.i.i.i.build_acquire.exit_crit_edge
  %82 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i76.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i77.i = ptrtoint ptr %83 to i32
  %sub.ptr.sub.i.i78.i = sub i32 %sub.ptr.lhs.cast.i.i76.i, %sub.ptr.rhs.cast.i.i77.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i78.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.396.i)
  %cmp4 = icmp slt i32 %err.396.i, 0
  br i1 %cmp4, label %build_acquire.exit.do.body7_crit_edge, label %build_acquire.exit.do.end13_crit_edge, !prof !68

build_acquire.exit.do.end13_crit_edge:            ; preds = %build_acquire.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13

build_acquire.exit.do.body7_crit_edge:            ; preds = %build_acquire.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7

do.body7:                                         ; preds = %build_acquire.exit.do.body7_crit_edge, %nlmsg_put.exit.i.do.body7_crit_edge, %skb_tailroom.exit.i.i.do.body7_crit_edge, %if.end.do.body7_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3241, 0\0A.popsection", ""() #16, !srcloc !70
  unreachable

do.end13:                                         ; preds = %build_acquire.exit.do.end13_crit_edge, %build_acquire.exit.thread30
  %nlsk1.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 46, i32 17
  %84 = ptrtoint ptr %nlsk1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %nlsk1.i, align 8
  %call.i25 = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i, label %do.end13.do.end8.i_crit_edge

do.end13.do.end8.i_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %do.end13
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @xfrm_nlmsg_multicast.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_nlmsg_multicast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %do.end13.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %85, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %cleanup

if.end12.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %86 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %dst_group.i.i, align 8
  %call.i.i27 = call i32 @netlink_broadcast(ptr noundef nonnull %85, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 1, i32 noundef 2592) #16
  %87 = call i32 @llvm.smin.i32(i32 %call.i.i27, i32 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.then11.i, %xfrm_acquire_msgsize.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %xfrm_acquire_msgsize.exit.cleanup_crit_edge ], [ %87, %if.end12.i ], [ -32, %if.then11.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfrm_compile_policy(ptr nocapture noundef readonly %sk, i32 noundef %opt, ptr nocapture noundef %data, i32 noundef %len, ptr nocapture noundef writeonly %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %add.ptr = getelementptr %struct.xfrm_userpolicy_info, ptr %data, i32 1
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %3, label %entry.cleanup.sink.split_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %opt)
  %cmp.not = icmp eq i32 %opt, 17
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %opt)
  %cmp3.not = icmp eq i32 %opt, 35
  br i1 %cmp3.not, label %sw.bb2.sw.epilog_crit_edge, label %sw.bb2.cleanup.sink.split_crit_edge

sw.bb2.cleanup.sink.split_crit_edge:              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %5 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -22, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 168, i32 %len)
  %cmp7 = icmp ult i32 %len, 168
  br i1 %cmp7, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.epilog
  %share.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %data, i32 0, i32 8
  %6 = ptrtoint ptr %share.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %share.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %switch.i = icmp ult i8 %7, 4
  br i1 %switch.i, label %sw.epilog.i, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog.i:                                      ; preds = %lor.lhs.false
  %action.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %data, i32 0, i32 6
  %8 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %action.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %switch52.i = icmp ult i8 %9, 2
  br i1 %switch52.i, label %sw.epilog4.i, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog4.i:                                     ; preds = %sw.epilog.i
  %family.i = getelementptr inbounds %struct.xfrm_selector, ptr %data, i32 0, i32 6
  %10 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %family.i, align 8
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %11, label %sw.epilog4.i.cleanup_crit_edge [
    i16 2, label %sw.bb6.i
    i16 10, label %sw.bb14.i
  ]

sw.epilog4.i.cleanup_crit_edge:                   ; preds = %sw.epilog4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb6.i:                                         ; preds = %sw.epilog4.i
  %prefixlen_d.i = getelementptr inbounds %struct.xfrm_selector, ptr %data, i32 0, i32 7
  %13 = ptrtoint ptr %prefixlen_d.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %prefixlen_d.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %cmp.i = icmp ugt i8 %14, 32
  br i1 %cmp.i, label %sw.bb6.i.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb6.i
  %prefixlen_s.i = getelementptr inbounds %struct.xfrm_selector, ptr %data, i32 0, i32 8
  %15 = ptrtoint ptr %prefixlen_s.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %prefixlen_s.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %16)
  %cmp12.i = icmp ugt i8 %16, 32
  br i1 %cmp12.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.sw.epilog29.i_crit_edge

lor.lhs.false.i.sw.epilog29.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog29.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb14.i:                                        ; preds = %sw.epilog4.i
  %prefixlen_d16.i = getelementptr inbounds %struct.xfrm_selector, ptr %data, i32 0, i32 7
  %17 = ptrtoint ptr %prefixlen_d16.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %prefixlen_d16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %18)
  %cmp18.i = icmp ugt i8 %18, -128
  br i1 %cmp18.i, label %sw.bb14.i.cleanup_crit_edge, label %lor.lhs.false20.i

sw.bb14.i.cleanup_crit_edge:                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false20.i:                                ; preds = %sw.bb14.i
  %prefixlen_s22.i = getelementptr inbounds %struct.xfrm_selector, ptr %data, i32 0, i32 8
  %19 = ptrtoint ptr %prefixlen_s22.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %prefixlen_s22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %20)
  %cmp24.i = icmp ugt i8 %20, -128
  br i1 %cmp24.i, label %lor.lhs.false20.i.cleanup_crit_edge, label %lor.lhs.false20.i.sw.epilog29.i_crit_edge

lor.lhs.false20.i.sw.epilog29.i_crit_edge:        ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog29.i

lor.lhs.false20.i.cleanup_crit_edge:              ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog29.i:                                    ; preds = %lor.lhs.false20.i.sw.epilog29.i_crit_edge, %lor.lhs.false.i.sw.epilog29.i_crit_edge
  %dir.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %data, i32 0, i32 5
  %21 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dir.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %switch.i.i = icmp ult i8 %22, 3
  br i1 %switch.i.i, label %if.end31.i, label %sw.epilog29.i.cleanup_crit_edge

sw.epilog29.i.cleanup_crit_edge:                  ; preds = %sw.epilog29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end31.i:                                       ; preds = %sw.epilog29.i
  %index.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %data, i32 0, i32 4
  %23 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool32.not.i = icmp eq i32 %24, 0
  %and.i.i = and i32 %24, 7
  %conv36.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %conv36.i)
  %cmp37.not.i = icmp eq i32 %and.i.i, %conv36.i
  %or.cond.i = select i1 %tobool32.not.i, i1 true, i1 %cmp37.not.i
  br i1 %or.cond.i, label %if.end11, label %if.end31.i.cleanup_crit_edge

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end31.i
  %sub = add i32 %len, -168
  %div52 = lshr i32 %sub, 6
  %25 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %sub)
  %cmp.i53 = icmp ugt i32 %sub, 447
  br i1 %cmp.i53, label %if.end11.cleanup_crit_edge, label %for.cond.preheader.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp154.i.not = icmp ult i32 %sub, 64
  br i1 %cmp154.i.not, label %for.cond.preheader.i.if.end15_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end15_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.056.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %prev_family.055.i = phi i16 [ %36, %for.inc.i.for.body.i_crit_edge ], [ %26, %for.cond.preheader.i.for.body.i_crit_edge ]
  %family2.i = getelementptr %struct.xfrm_user_tmpl, ptr %add.ptr, i32 %i.056.i, i32 1
  %27 = ptrtoint ptr %family2.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %family2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i = icmp eq i16 %28, 0
  br i1 %tobool.not.i, label %if.then3.i, label %for.body.i.if.end6.i_crit_edge

for.body.i.if.end6.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %family2.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %26, ptr %family2.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %for.body.i.if.end6.i_crit_edge
  %mode.i = getelementptr %struct.xfrm_user_tmpl, ptr %add.ptr, i32 %i.056.i, i32 4
  %30 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mode.i, align 4
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %31, label %sw.default.i [
    i8 1, label %if.end6.i.sw.epilog.thread.i_crit_edge
    i8 4, label %if.end6.i.sw.epilog.thread.i_crit_edge64
  ]

if.end6.i.sw.epilog.thread.i_crit_edge64:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.thread.i

if.end6.i.sw.epilog.thread.i_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.thread.i

sw.default.i:                                     ; preds = %if.end6.i
  %33 = ptrtoint ptr %family2.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %family2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %prev_family.055.i)
  %cmp12.not.i = icmp ne i16 %34, %prev_family.055.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %31)
  %cmp19.i = icmp ugt i8 %31, 4
  %or.cond.i54 = select i1 %cmp12.not.i, i1 true, i1 %cmp19.i
  br i1 %or.cond.i54, label %sw.default.i.cleanup_crit_edge, label %sw.default.i.if.end22.i_crit_edge

sw.default.i.if.end22.i_crit_edge:                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i

sw.default.i.cleanup_crit_edge:                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog.thread.i:                               ; preds = %if.end6.i.sw.epilog.thread.i_crit_edge, %if.end6.i.sw.epilog.thread.i_crit_edge64
  %35 = ptrtoint ptr %family2.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %.pr.i = load i16, ptr %family2.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %sw.epilog.thread.i, %sw.default.i.if.end22.i_crit_edge
  %36 = phi i16 [ %.pr.i, %sw.epilog.thread.i ], [ %prev_family.055.i, %sw.default.i.if.end22.i_crit_edge ]
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %36, label %if.end22.i.cleanup_crit_edge [
    i16 2, label %if.end22.i.sw.epilog29.i55_crit_edge
    i16 10, label %if.end22.i.sw.epilog29.i55_crit_edge65
  ]

if.end22.i.sw.epilog29.i55_crit_edge65:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog29.i55

if.end22.i.sw.epilog29.i55_crit_edge:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog29.i55

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog29.i55:                                  ; preds = %if.end22.i.sw.epilog29.i55_crit_edge, %if.end22.i.sw.epilog29.i55_crit_edge65
  %proto.i = getelementptr %struct.xfrm_user_tmpl, ptr %add.ptr, i32 %i.056.i, i32 0, i32 2
  %38 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %proto.i, align 4
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %39, label %sw.epilog29.i55.cleanup_crit_edge [
    i8 51, label %sw.epilog29.i55.for.inc.i_crit_edge
    i8 50, label %sw.epilog29.i55.for.inc.i_crit_edge66
    i8 108, label %sw.epilog29.i55.for.inc.i_crit_edge67
    i8 43, label %sw.epilog29.i55.for.inc.i_crit_edge68
    i8 60, label %sw.epilog29.i55.for.inc.i_crit_edge69
  ]

sw.epilog29.i55.for.inc.i_crit_edge69:            ; preds = %sw.epilog29.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

sw.epilog29.i55.for.inc.i_crit_edge68:            ; preds = %sw.epilog29.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

sw.epilog29.i55.for.inc.i_crit_edge67:            ; preds = %sw.epilog29.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

sw.epilog29.i55.for.inc.i_crit_edge66:            ; preds = %sw.epilog29.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

sw.epilog29.i55.for.inc.i_crit_edge:              ; preds = %sw.epilog29.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

sw.epilog29.i55.cleanup_crit_edge:                ; preds = %sw.epilog29.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc.i:                                        ; preds = %sw.epilog29.i55.for.inc.i_crit_edge, %sw.epilog29.i55.for.inc.i_crit_edge66, %sw.epilog29.i55.for.inc.i_crit_edge67, %sw.epilog29.i55.for.inc.i_crit_edge68, %sw.epilog29.i55.for.inc.i_crit_edge69
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div52
  br i1 %exitcond.not.i, label %for.inc.i.if.end15_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.end15_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.end15:                                         ; preds = %for.inc.i.if.end15_crit_edge, %for.cond.preheader.i.if.end15_crit_edge
  %41 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dir.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp18 = icmp ugt i8 %42, 1
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %call22 = tail call ptr @xfrm_policy_alloc(ptr noundef %1, i32 noundef 2592) #16
  %cmp23 = icmp eq ptr %call22, null
  br i1 %cmp23, label %if.end21.cleanup.sink.split_crit_edge, label %if.end26

if.end21.cleanup.sink.split_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %priority.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %data, i32 0, i32 3
  %43 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %priority.i, align 8
  %priority1.i = getelementptr inbounds %struct.xfrm_policy, ptr %call22, i32 0, i32 8
  %45 = ptrtoint ptr %priority1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %priority1.i, align 4
  %46 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.xfrm_policy, ptr %call22, i32 0, i32 9
  %48 = ptrtoint ptr %index2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %index2.i, align 8
  %selector.i = getelementptr inbounds %struct.xfrm_policy, ptr %call22, i32 0, i32 12
  %49 = call ptr @memcpy(ptr %selector.i, ptr %data, i32 56)
  %lft.i = getelementptr inbounds %struct.xfrm_policy, ptr %call22, i32 0, i32 13
  %lft3.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %data, i32 0, i32 1
  %50 = call ptr @memcpy(ptr %lft.i, ptr %lft3.i, i32 64)
  %51 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %action.i, align 1
  %action4.i = getelementptr inbounds %struct.xfrm_policy, ptr %call22, i32 0, i32 19
  %53 = ptrtoint ptr %action4.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %action4.i, align 2
  %flags.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %data, i32 0, i32 7
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %flags.i, align 2
  %flags5.i = getelementptr inbounds %struct.xfrm_policy, ptr %call22, i32 0, i32 20
  %56 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %flags5.i, align 1
  %57 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %family.i, align 8
  %family7.i = getelementptr inbounds %struct.xfrm_policy, ptr %call22, i32 0, i32 22
  %59 = ptrtoint ptr %family7.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %family7.i, align 2
  %type = getelementptr inbounds %struct.xfrm_policy, ptr %call22, i32 0, i32 18
  %60 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %type, align 1
  tail call fastcc void @copy_templates(ptr noundef nonnull %call22, ptr noundef %add.ptr, i32 noundef %div52)
  %61 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %dir.i, align 8
  %conv28 = zext i8 %62 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end26, %if.end21.cleanup.sink.split_crit_edge, %sw.bb2.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %conv28.sink = phi i32 [ %conv28, %if.end26 ], [ -95, %sw.bb.cleanup.sink.split_crit_edge ], [ -95, %sw.bb2.cleanup.sink.split_crit_edge ], [ -22, %entry.cleanup.sink.split_crit_edge ], [ -105, %if.end21.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi ptr [ %call22, %if.end26 ], [ null, %sw.bb.cleanup.sink.split_crit_edge ], [ null, %sw.bb2.cleanup.sink.split_crit_edge ], [ null, %entry.cleanup.sink.split_crit_edge ], [ null, %if.end21.cleanup.sink.split_crit_edge ]
  %63 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv28.sink, ptr %dir, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15.cleanup_crit_edge, %sw.epilog29.i55.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %sw.default.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end31.i.cleanup_crit_edge, %sw.epilog29.i.cleanup_crit_edge, %lor.lhs.false20.i.cleanup_crit_edge, %sw.bb14.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb6.i.cleanup_crit_edge, %sw.epilog4.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %sw.epilog.cleanup_crit_edge ], [ null, %if.end15.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %sw.epilog.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %sw.bb6.i.cleanup_crit_edge ], [ null, %lor.lhs.false20.i.cleanup_crit_edge ], [ null, %sw.bb14.i.cleanup_crit_edge ], [ null, %sw.epilog4.i.cleanup_crit_edge ], [ null, %sw.epilog29.i.cleanup_crit_edge ], [ null, %if.end31.i.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ null, %sw.default.i.cleanup_crit_edge ], [ null, %if.end22.i.cleanup_crit_edge ], [ null, %sw.epilog29.i55.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_send_mapping(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %ipaddr, i16 noundef zeroext %sport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %x, align 4
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %proto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %3)
  %cmp.not = icmp eq i8 %3, 50
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %4 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encap, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 80, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp6 = icmp eq ptr %call.i.i, null
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end9.do.body16_crit_edge

if.end9.do.body16_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body16

skb_tailroom.exit.i.i:                            ; preds = %if.end9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %8 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 80
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.do.body16_crit_edge, label %nlmsg_put.exit.i, !prof !68

skb_tailroom.exit.i.i.do.body16_crit_edge:        ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body16

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 38, i32 noundef 64, i32 noundef 0) #16
  %cmp.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.i, label %nlmsg_put.exit.i.do.body16_crit_edge, label %do.end22

nlmsg_put.exit.i.do.body16_crit_edge:             ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body16

do.body16:                                        ; preds = %nlmsg_put.exit.i.do.body16_crit_edge, %skb_tailroom.exit.i.i.do.body16_crit_edge, %if.end9.do.body16_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3577, 0\0A.popsection", ""() #16, !srcloc !71
  unreachable

do.end22:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %id2.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %12 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %id2.i, i32 16)
  %spi.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %spi.i, align 4
  %spi6.i = getelementptr i8, ptr %call3.i.i, i32 32
  %15 = ptrtoint ptr %spi6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %spi6.i, align 4
  %props.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14
  %family.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %16 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %family.i, align 2
  %family8.i = getelementptr i8, ptr %call3.i.i, i32 36
  %18 = ptrtoint ptr %family8.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %family8.i, align 4
  %19 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %proto, align 4
  %proto11.i = getelementptr i8, ptr %call3.i.i, i32 38
  %21 = ptrtoint ptr %proto11.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %proto11.i, align 2
  %new_saddr12.i = getelementptr i8, ptr %call3.i.i, i32 60
  %22 = call ptr @memcpy(ptr %new_saddr12.i, ptr %ipaddr, i32 16)
  %old_saddr.i = getelementptr i8, ptr %call3.i.i, i32 44
  %saddr.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %23 = call ptr @memcpy(ptr %old_saddr.i, ptr %saddr.i, i32 16)
  %new_sport14.i = getelementptr i8, ptr %call3.i.i, i32 78
  %24 = ptrtoint ptr %new_sport14.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %sport, ptr %new_sport14.i, align 2
  %25 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %encap, align 8
  %encap_sport.i = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %encap_sport.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %encap_sport.i, align 2
  %old_sport.i = getelementptr i8, ptr %call3.i.i, i32 76
  %29 = ptrtoint ptr %old_sport.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %old_sport.i, align 4
  %30 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %props.i, align 4
  %reqid16.i = getelementptr i8, ptr %call3.i.i, i32 40
  %32 = ptrtoint ptr %reqid16.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %reqid16.i, align 4
  %33 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %35 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  %nlsk1.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 46, i32 17
  %36 = ptrtoint ptr %nlsk1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %nlsk1.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end22.do.end8.i_crit_edge

do.end22.do.end8.i_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %do.end22
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @xfrm_nlmsg_multicast.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_nlmsg_multicast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %do.end22.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %37, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %cleanup

if.end12.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %38 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %dst_group.i.i, align 8
  %call.i.i31 = tail call i32 @netlink_broadcast(ptr noundef nonnull %37, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 8, i32 noundef 2592) #16
  %39 = tail call i32 @llvm.smin.i32(i32 %call.i.i31, i32 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.then11.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %39, %if.end12.i ], [ -32, %if.then11.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_send_policy_notify(ptr noundef %xp, i32 noundef %dir, ptr nocapture noundef readonly %c) #2 align 64 {
entry:
  %tmp.i.i.i.i = alloca i32, align 4
  %upt.i.i.i = alloca %struct.xfrm_userpolicy_type, align 2
  %upt.i.i13 = alloca %struct.xfrm_userpolicy_type, align 2
  %tmp.i.i.i = alloca i32, align 4
  %upt.i.i = alloca %struct.xfrm_userpolicy_type, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %1, label %do.end [
    i32 19, label %entry.sw.bb_crit_edge
    i32 25, label %entry.sw.bb_crit_edge73
    i32 20, label %entry.sw.bb_crit_edge74
    i32 29, label %sw.bb1
    i32 27, label %sw.bb3
  ]

entry.sw.bb_crit_edge74:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

entry.sw.bb_crit_edge73:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge73, %entry.sw.bb_crit_edge74
  %xfrm_nr.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 21
  %3 = ptrtoint ptr %xfrm_nr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %xfrm_nr.i, align 4
  %conv.i = zext i8 %4 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 6
  %sub.i.i = or i32 %mul.i, 4
  %5 = ptrtoint ptr %xp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp.i = icmp eq i32 %1, 20
  %add.i = add nuw nsw i32 %mul.i, 176
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %sub.i.i
  %spec.select143.i = select i1 %cmp.i, i32 64, i32 168
  %add9.i = add nuw nsw i32 %spec.select143.i, 43
  %sub.i.i.i = add nuw nsw i32 %add9.i, %spec.select.i
  %and.i.i.i = and i32 %sub.i.i.i, 65532
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp11.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp11.i, label %sw.bb.return_crit_edge, label %if.end14.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end14.i:                                       ; preds = %sw.bb
  %portid.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %7 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %portid.i, align 4
  %seq.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %9 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seq.i, align 4
  %11 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %event, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end14.i.out_free_skb.i_crit_edge

if.end14.i.out_free_skb.i_crit_edge:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i

skb_tailroom.exit.i.i:                            ; preds = %if.end14.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.i.i105.i = or i32 %spec.select143.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %sub.i.i105.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, %sub.i.i105.i
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.out_free_skb.i_crit_edge, label %nlmsg_put.exit.i, !prof !68

skb_tailroom.exit.i.i.out_free_skb.i_crit_edge:   ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %spec.select143.i, i32 noundef 0) #16
  %cmp17.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp17.i, label %nlmsg_put.exit.i.out_free_skb.i_crit_edge, label %if.end20.i

nlmsg_put.exit.i.out_free_skb.i_crit_edge:        ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i

if.end20.i:                                       ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %19 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %20)
  %cmp23.i = icmp eq i32 %20, 20
  br i1 %cmp23.i, label %if.then25.i, label %if.end20.if.end38_crit_edge.i

if.end20.if.end38_crit_edge.i:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  %.pre.i = trunc i32 %dir to i8
  br label %if.end38.i

if.then25.i:                                      ; preds = %if.end20.i
  %21 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 64)
  %conv27.i = trunc i32 %dir to i8
  %dir28.i = getelementptr i8, ptr %call3.i.i, i32 76
  %22 = ptrtoint ptr %dir28.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27.i, ptr %dir28.i, align 4
  %23 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #18
  %index.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 9
  %25 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i, align 8
  %index30.i = getelementptr i8, ptr %call3.i.i, i32 72
  %27 = ptrtoint ptr %index30.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %index30.i, align 4
  br label %if.end31.i

if.else.i:                                        ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #18
  %selector.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 12
  %28 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %selector.i, i32 56)
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i, %if.then29.i
  %call32.i = tail call ptr @nla_reserve(ptr noundef nonnull %call.i.i.i, i32 noundef 7, i32 noundef 168) #16
  %cmp33.i = icmp eq ptr %call32.i, null
  br i1 %cmp33.i, label %if.end31.i.out_free_skb.i_crit_edge, label %cleanup.thread.i

if.end31.i.out_free_skb.i_crit_edge:              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i

cleanup.thread.i:                                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i108.i = getelementptr i8, ptr %call32.i, i32 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %cleanup.thread.i, %if.end20.if.end38_crit_edge.i
  %conv.i.pre-phi.i = phi i8 [ %.pre.i, %if.end20.if.end38_crit_edge.i ], [ %conv27.i, %cleanup.thread.i ]
  %p.1.i = phi ptr [ %add.ptr.i.i, %if.end20.if.end38_crit_edge.i ], [ %add.ptr.i108.i, %cleanup.thread.i ]
  %29 = call ptr @memset(ptr %p.1.i, i32 0, i32 168)
  %selector.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 12
  %30 = call ptr @memcpy(ptr %p.1.i, ptr %selector.i.i, i32 56)
  %lft.i.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p.1.i, i32 0, i32 1
  %lft1.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 13
  %31 = call ptr @memcpy(ptr %lft.i.i, ptr %lft1.i.i, i32 64)
  %curlft.i.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p.1.i, i32 0, i32 2
  %curlft2.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 14
  %32 = call ptr @memcpy(ptr %curlft.i.i, ptr %curlft2.i.i, i32 32)
  %priority.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 8
  %33 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %priority.i.i, align 4
  %priority3.i.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p.1.i, i32 0, i32 3
  %35 = ptrtoint ptr %priority3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %priority3.i.i, align 8
  %index.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 9
  %36 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index.i.i, align 8
  %index4.i.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p.1.i, i32 0, i32 4
  %38 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %index4.i.i, align 4
  %family.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 22
  %39 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %family.i.i, align 2
  %family6.i.i = getelementptr inbounds %struct.xfrm_selector, ptr %p.1.i, i32 0, i32 6
  %41 = ptrtoint ptr %family6.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %family6.i.i, align 8
  %dir7.i.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p.1.i, i32 0, i32 5
  %42 = ptrtoint ptr %dir7.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i.pre-phi.i, ptr %dir7.i.i, align 8
  %action.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 19
  %43 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %action.i.i, align 2
  %action8.i.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p.1.i, i32 0, i32 6
  %45 = ptrtoint ptr %action8.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %action8.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 20
  %46 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %flags.i.i, align 1
  %flags9.i.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p.1.i, i32 0, i32 7
  %48 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %flags9.i.i, align 2
  %share.i.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p.1.i, i32 0, i32 8
  %49 = ptrtoint ptr %share.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %share.i.i, align 1
  %call39.i = tail call fastcc i32 @copy_to_user_tmpl(ptr noundef %xp, ptr noundef nonnull %call.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end43.i, label %if.end38.i.out_free_skb.i_crit_edge

if.end38.i.out_free_skb.i_crit_edge:              ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i

if.end43.i:                                       ; preds = %if.end38.i
  %type.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 18
  %50 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %type.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %upt.i.i) #16
  %52 = call ptr @memset(ptr %upt.i.i, i32 0, i32 6)
  %53 = ptrtoint ptr %upt.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %51, ptr %upt.i.i, align 2
  %call.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 16, i32 noundef 6, ptr noundef nonnull %upt.i.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %upt.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool44.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end43.i.out_free_skb.i_crit_edge

if.end43.i.out_free_skb.i_crit_edge:              ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i

if.then45.i:                                      ; preds = %if.end43.i
  %mark.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 11
  %m1.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 11, i32 1
  %54 = ptrtoint ptr %m1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %m1.i.i, align 4
  %56 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mark.i, align 4
  %or.i.i = or i32 %57, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool.not.i.i = icmp eq i32 %or.i.i, 0
  br i1 %tobool.not.i.i, label %if.then45.i.if.then49.i_crit_edge, label %if.end47.i

if.then45.i.if.then49.i_crit_edge:                ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49.i

if.end47.i:                                       ; preds = %if.then45.i
  %call.i109.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 21, i32 noundef 8, ptr noundef %mark.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109.i)
  %tobool48.not.i = icmp eq i32 %call.i109.i, 0
  br i1 %tobool48.not.i, label %if.end47.i.if.then49.i_crit_edge, label %if.end47.i.out_free_skb.i_crit_edge

if.end47.i.out_free_skb.i_crit_edge:              ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i

if.end47.i.if.then49.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49.i

if.then49.i:                                      ; preds = %if.end47.i.if.then49.i_crit_edge, %if.then45.i.if.then49.i_crit_edge
  %if_id.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 10
  %58 = ptrtoint ptr %if_id.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %if_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i111.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i111.i, label %if.then49.i.if.end54.i_crit_edge, label %if.end51.i

if.then49.i.if.end54.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54.i

if.end51.i:                                       ; preds = %if.then49.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #16
  %60 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tmp.i.i.i, align 4
  %call.i.i112.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 31, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i112.i)
  %tobool52.not.i = icmp eq i32 %call.i.i112.i, 0
  br i1 %tobool52.not.i, label %if.end51.i.if.end54.i_crit_edge, label %if.end51.i.out_free_skb.i_crit_edge

if.end51.i.out_free_skb.i_crit_edge:              ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i

if.end51.i.if.end54.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end51.i.if.end54.i_crit_edge, %if.then49.i.if.end54.i_crit_edge
  %61 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %63 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  %nlsk1.i.i = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 46, i32 17
  %64 = ptrtoint ptr %nlsk1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %nlsk1.i.i, align 8
  %call.i117.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i)
  %tobool.not.i118.i = icmp eq i32 %call.i117.i, 0
  br i1 %tobool.not.i118.i, label %land.lhs.true.i.i, label %if.end54.i.do.end8.i.i_crit_edge

if.end54.i.do.end8.i.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end54.i
  %call3.i119.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i119.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i119.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @xfrm_nlmsg_multicast.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i120.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

if.then.i120.i:                                   ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_nlmsg_multicast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i120.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.end54.i.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %65, null
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end12.i.i

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  br label %return

if.end12.i.i:                                     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %66 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %dst_group.i.i.i, align 8
  %call.i.i121.i = call i32 @netlink_broadcast(ptr noundef nonnull %65, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 4, i32 noundef 2592) #16
  %67 = call i32 @llvm.smin.i32(i32 %call.i.i121.i, i32 0) #16
  br label %return

out_free_skb.i:                                   ; preds = %if.end51.i.out_free_skb.i_crit_edge, %if.end47.i.out_free_skb.i_crit_edge, %if.end43.i.out_free_skb.i_crit_edge, %if.end38.i.out_free_skb.i_crit_edge, %if.end31.i.out_free_skb.i_crit_edge, %nlmsg_put.exit.i.out_free_skb.i_crit_edge, %skb_tailroom.exit.i.i.out_free_skb.i_crit_edge, %if.end14.i.out_free_skb.i_crit_edge
  %err.3.i = phi i32 [ -90, %nlmsg_put.exit.i.out_free_skb.i_crit_edge ], [ %call.i.i112.i, %if.end51.i.out_free_skb.i_crit_edge ], [ -90, %if.end31.i.out_free_skb.i_crit_edge ], [ -90, %skb_tailroom.exit.i.i.out_free_skb.i_crit_edge ], [ -90, %if.end14.i.out_free_skb.i_crit_edge ], [ %call.i109.i, %if.end47.i.out_free_skb.i_crit_edge ], [ %call.i.i, %if.end43.i.out_free_skb.i_crit_edge ], [ %call39.i, %if.end38.i.out_free_skb.i_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  br label %return

sw.bb1:                                           ; preds = %entry
  %net1.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 4
  %68 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %net1.i, align 4
  %call.i.i.i14 = tail call ptr @__alloc_skb(i32 noundef 28, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp.i15 = icmp eq ptr %call.i.i.i14, null
  br i1 %cmp.i15, label %sw.bb1.return_crit_edge, label %if.end.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i:                                         ; preds = %sw.bb1
  %portid.i16 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %70 = ptrtoint ptr %portid.i16 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %portid.i16, align 4
  %seq.i17 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %72 = ptrtoint ptr %seq.i17 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %seq.i17, align 4
  %data_len.i.i.i.i18 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i14, i32 0, i32 7
  %74 = ptrtoint ptr %data_len.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data_len.i.i.i.i18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.i.not.i.i.i19 = icmp eq i32 %75, 0
  br i1 %tobool.i.not.i.i.i19, label %skb_tailroom.exit.i.i26, label %if.end.i.out_free_skb.i46_crit_edge

if.end.i.out_free_skb.i46_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i46

skb_tailroom.exit.i.i26:                          ; preds = %if.end.i
  %end.i.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i14, i32 0, i32 17
  %76 = ptrtoint ptr %end.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %end.i.i.i20, align 4
  %tail.i.i.i21 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i14, i32 0, i32 16
  %78 = ptrtoint ptr %tail.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tail.i.i.i21, align 8
  %sub.ptr.lhs.cast.i.i.i22 = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast.i.i.i23 = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i.i.i24 = sub i32 %sub.ptr.lhs.cast.i.i.i22, %sub.ptr.rhs.cast.i.i.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i24)
  %cmp.i.i25 = icmp slt i32 %sub.ptr.sub.i.i.i24, 16
  br i1 %cmp.i.i25, label %skb_tailroom.exit.i.i26.out_free_skb.i46_crit_edge, label %nlmsg_put.exit.i28, !prof !68

skb_tailroom.exit.i.i26.out_free_skb.i46_crit_edge: ; preds = %skb_tailroom.exit.i.i26
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i46

nlmsg_put.exit.i28:                               ; preds = %skb_tailroom.exit.i.i26
  %call3.i.i27 = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i14, i32 noundef %71, i32 noundef %73, i32 noundef 29, i32 noundef 0, i32 noundef 0) #16
  %cmp4.i = icmp eq ptr %call3.i.i27, null
  br i1 %cmp4.i, label %nlmsg_put.exit.i28.out_free_skb.i46_crit_edge, label %if.end6.i

nlmsg_put.exit.i28.out_free_skb.i46_crit_edge:    ; preds = %nlmsg_put.exit.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i46

if.end6.i:                                        ; preds = %nlmsg_put.exit.i28
  %80 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %c, align 4
  %conv.i29 = trunc i32 %81 to i8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %upt.i.i13) #16
  %82 = call ptr @memset(ptr %upt.i.i13, i32 0, i32 6)
  %83 = ptrtoint ptr %upt.i.i13 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv.i29, ptr %upt.i.i13, align 2
  %call.i.i30 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i14, i32 noundef 16, i32 noundef 6, ptr noundef nonnull %upt.i.i13) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %upt.i.i13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %tobool.not.i31 = icmp eq i32 %call.i.i30, 0
  br i1 %tobool.not.i31, label %if.end9.i, label %if.end6.i.out_free_skb.i46_crit_edge

if.end6.i.out_free_skb.i46_crit_edge:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_skb.i46

if.end9.i:                                        ; preds = %if.end6.i
  %84 = ptrtoint ptr %tail.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tail.i.i.i21, align 8
  %sub.ptr.lhs.cast.i.i32 = ptrtoint ptr %85 to i32
  %sub.ptr.rhs.cast.i.i33 = ptrtoint ptr %call3.i.i27 to i32
  %sub.ptr.sub.i.i34 = sub i32 %sub.ptr.lhs.cast.i.i32, %sub.ptr.rhs.cast.i.i33
  %86 = ptrtoint ptr %call3.i.i27 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub.ptr.sub.i.i34, ptr %call3.i.i27, align 4
  %nlsk1.i.i35 = getelementptr inbounds %struct.net, ptr %69, i32 0, i32 46, i32 17
  %87 = ptrtoint ptr %nlsk1.i.i35 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %nlsk1.i.i35, align 8
  %call.i25.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool.not.i.i36 = icmp eq i32 %call.i25.i, 0
  br i1 %tobool.not.i.i36, label %land.lhs.true.i.i38, label %if.end9.i.do.end8.i.i42_crit_edge

if.end9.i.do.end8.i.i42_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i42

land.lhs.true.i.i38:                              ; preds = %if.end9.i
  %call3.i26.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i26.i)
  %tobool4.not.i.i37 = icmp eq i32 %call3.i26.i, 0
  br i1 %tobool4.not.i.i37, label %land.lhs.true.i.i38.do.end8.i.i42_crit_edge, label %land.lhs.true5.i.i40

land.lhs.true.i.i38.do.end8.i.i42_crit_edge:      ; preds = %land.lhs.true.i.i38
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i42

land.lhs.true5.i.i40:                             ; preds = %land.lhs.true.i.i38
  %.b1.i.i39 = load i1, ptr @xfrm_nlmsg_multicast.__warned, align 1
  br i1 %.b1.i.i39, label %land.lhs.true5.i.i40.do.end8.i.i42_crit_edge, label %if.then.i.i

land.lhs.true5.i.i40.do.end8.i.i42_crit_edge:     ; preds = %land.lhs.true5.i.i40
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i42

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i40
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_nlmsg_multicast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i.i42

do.end8.i.i42:                                    ; preds = %if.then.i.i, %land.lhs.true5.i.i40.do.end8.i.i42_crit_edge, %land.lhs.true.i.i38.do.end8.i.i42_crit_edge, %if.end9.i.do.end8.i.i42_crit_edge
  %tobool10.not.i.i41 = icmp eq ptr %88, null
  br i1 %tobool10.not.i.i41, label %if.then11.i.i43, label %if.end12.i.i45

if.then11.i.i43:                                  ; preds = %do.end8.i.i42
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i14, i32 noundef 0) #16
  br label %return

if.end12.i.i45:                                   ; preds = %do.end8.i.i42
  call void @__sanitizer_cov_trace_pc() #18
  %dst_group.i.i.i44 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i14, i32 0, i32 3, i32 16
  %89 = ptrtoint ptr %dst_group.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 4, ptr %dst_group.i.i.i44, align 8
  %call.i.i27.i = call i32 @netlink_broadcast(ptr noundef nonnull %88, ptr noundef nonnull %call.i.i.i14, i32 noundef 0, i32 noundef 4, i32 noundef 2592) #16
  %90 = call i32 @llvm.smin.i32(i32 %call.i.i27.i, i32 0) #16
  br label %return

out_free_skb.i46:                                 ; preds = %if.end6.i.out_free_skb.i46_crit_edge, %nlmsg_put.exit.i28.out_free_skb.i46_crit_edge, %skb_tailroom.exit.i.i26.out_free_skb.i46_crit_edge, %if.end.i.out_free_skb.i46_crit_edge
  %err.0.i = phi i32 [ -90, %nlmsg_put.exit.i28.out_free_skb.i46_crit_edge ], [ %call.i.i30, %if.end6.i.out_free_skb.i46_crit_edge ], [ -90, %skb_tailroom.exit.i.i26.out_free_skb.i46_crit_edge ], [ -90, %if.end.i.out_free_skb.i46_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i14, i32 noundef 0) #16
  br label %return

sw.bb3:                                           ; preds = %entry
  %91 = ptrtoint ptr %xp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %xp, align 4
  %xfrm_nr.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 21
  %93 = ptrtoint ptr %xfrm_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %xfrm_nr.i.i, align 4
  %security.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 23
  %95 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %security.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i.i, label %sw.bb3.xfrm_polexpire_msgsize.exit.i_crit_edge, label %if.then.i.i.i

sw.bb3.xfrm_polexpire_msgsize.exit.i_crit_edge:   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_polexpire_msgsize.exit.i

if.then.i.i.i:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #18
  %ctx_len.i.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %ctx_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %ctx_len.i.i.i, align 2
  %conv.i.i.i = zext i16 %98 to i32
  %phi.bo.i.i = add nuw nsw i32 %conv.i.i.i, 15
  %phi.bo11.i.i = and i32 %phi.bo.i.i, 131068
  br label %xfrm_polexpire_msgsize.exit.i

xfrm_polexpire_msgsize.exit.i:                    ; preds = %if.then.i.i.i, %sw.bb3.xfrm_polexpire_msgsize.exit.i_crit_edge
  %len.0.i.i.i = phi i32 [ %phi.bo11.i.i, %if.then.i.i.i ], [ 4, %sw.bb3.xfrm_polexpire_msgsize.exit.i_crit_edge ]
  %conv.i.i = zext i8 %94 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 6
  %add7.i.i = add nuw nsw i32 %mul.i.i, 223
  %sub.i.i.i48 = add nuw nsw i32 %add7.i.i, %len.0.i.i.i
  %and.i.i.i49 = and i32 %sub.i.i.i48, 262140
  %call.i.i.i50 = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i49, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp.i51 = icmp eq ptr %call.i.i.i50, null
  br i1 %cmp.i51, label %xfrm_polexpire_msgsize.exit.i.return_crit_edge, label %if.end.i52

xfrm_polexpire_msgsize.exit.i.return_crit_edge:   ; preds = %xfrm_polexpire_msgsize.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i52:                                       ; preds = %xfrm_polexpire_msgsize.exit.i
  %99 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %c, align 4
  %portid.i.i = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %101 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %portid.i.i, align 4
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i50, i32 0, i32 7
  %103 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.i.not.i.i.i.i = icmp eq i32 %104, 0
  br i1 %tobool.i.not.i.i.i.i, label %skb_tailroom.exit.i.i.i, label %if.end.i52.do.body7.i_crit_edge

if.end.i52.do.body7.i_crit_edge:                  ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7.i

skb_tailroom.exit.i.i.i:                          ; preds = %if.end.i52
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i50, i32 0, i32 17
  %105 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %end.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i50, i32 0, i32 16
  %107 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %106 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %108 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 192
  br i1 %cmp.i.i.i, label %skb_tailroom.exit.i.i.i.do.body7.i_crit_edge, label %nlmsg_put.exit.i.i, !prof !68

skb_tailroom.exit.i.i.i.do.body7.i_crit_edge:     ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7.i

nlmsg_put.exit.i.i:                               ; preds = %skb_tailroom.exit.i.i.i
  %call3.i.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i50, i32 noundef %102, i32 noundef 0, i32 noundef 27, i32 noundef 176, i32 noundef 0) #16
  %cmp.i.i53 = icmp eq ptr %call3.i.i.i, null
  br i1 %cmp.i.i53, label %nlmsg_put.exit.i.i.do.body7.i_crit_edge, label %if.end.i.i

nlmsg_put.exit.i.i.do.body7.i_crit_edge:          ; preds = %nlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7.i

if.end.i.i:                                       ; preds = %nlmsg_put.exit.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 16
  %109 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 168)
  %selector.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 12
  %110 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %selector.i.i.i, i32 56)
  %lft.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 72
  %lft1.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 13
  %111 = call ptr @memcpy(ptr %lft.i.i.i, ptr %lft1.i.i.i, i32 64)
  %curlft.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 136
  %curlft2.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 14
  %112 = call ptr @memcpy(ptr %curlft.i.i.i, ptr %curlft2.i.i.i, i32 32)
  %priority.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 8
  %113 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %priority.i.i.i, align 4
  %priority3.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 168
  %115 = ptrtoint ptr %priority3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %priority3.i.i.i, align 8
  %index.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 9
  %116 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %index.i.i.i, align 8
  %index4.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 172
  %118 = ptrtoint ptr %index4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %index4.i.i.i, align 4
  %family.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 22
  %119 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %family.i.i.i, align 2
  %family6.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 56
  %121 = ptrtoint ptr %family6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %family6.i.i.i, align 8
  %conv.i.i21.i = trunc i32 %dir to i8
  %dir7.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 176
  %122 = ptrtoint ptr %dir7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv.i.i21.i, ptr %dir7.i.i.i, align 8
  %action.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 19
  %123 = ptrtoint ptr %action.i.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %action.i.i.i, align 2
  %action8.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 177
  %125 = ptrtoint ptr %action8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %action8.i.i.i, align 1
  %flags.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 20
  %126 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %flags.i.i.i, align 1
  %flags9.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 178
  %128 = ptrtoint ptr %flags9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %flags9.i.i.i, align 2
  %share.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 179
  %129 = ptrtoint ptr %share.i.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %share.i.i.i, align 1
  %call2.i.i = tail call fastcc i32 @copy_to_user_tmpl(ptr noundef %xp, ptr noundef nonnull %call.i.i.i50) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i54 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i54, label %if.then3.i.i, label %if.end.i.i.if.then.i.i.i.i_crit_edge

if.end.i.i.if.then.i.i.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %130 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %security.i.i, align 8
  %tobool.not.i.i22.i = icmp eq ptr %131, null
  br i1 %tobool.not.i.i22.i, label %if.then3.i.i.if.end9.i.i_crit_edge, label %if.then.i.i23.i

if.then3.i.i.if.end9.i.i_crit_edge:               ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i.i

if.then.i.i23.i:                                  ; preds = %if.then3.i.i
  %ctx_len.i.i.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %ctx_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %ctx_len.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %133 to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i, 8
  %call.i.i.i.i = tail call ptr @nla_reserve(ptr noundef nonnull %call.i.i.i50, i32 noundef 8, i32 noundef %add.i.i.i.i) #16
  %cmp.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %cmp.i.i.i.i, label %if.then.i.i23.i.if.then.i.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i23.i.if.then.i.i.i.i_crit_edge:        ; preds = %if.then.i.i23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i23.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 4
  %exttype.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 6
  %134 = ptrtoint ptr %exttype.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 8, ptr %exttype.i.i.i.i, align 2
  %conv3.i.i.i.i = trunc i32 %add.i.i.i.i to i16
  %135 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv3.i.i.i.i, ptr %add.ptr.i.i.i.i.i, align 2
  %136 = ptrtoint ptr %131 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %131, align 4
  %ctx_doi4.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 9
  %138 = ptrtoint ptr %ctx_doi4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %ctx_doi4.i.i.i.i, align 1
  %ctx_alg.i.i.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %131, i32 0, i32 1
  %139 = ptrtoint ptr %ctx_alg.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %ctx_alg.i.i.i.i, align 1
  %ctx_alg5.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 8
  %141 = ptrtoint ptr %ctx_alg5.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %ctx_alg5.i.i.i.i, align 2
  %142 = ptrtoint ptr %ctx_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %ctx_len.i.i.i.i, align 2
  %ctx_len7.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 10
  %144 = ptrtoint ptr %ctx_len7.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %ctx_len7.i.i.i.i, align 2
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 12
  %ctx_str.i.i.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %131, i32 0, i32 4
  %145 = load i16, ptr %ctx_len.i.i.i.i, align 2
  %conv9.i.i.i.i = zext i16 %145 to i32
  %146 = call ptr @memcpy(ptr %add.ptr.i.i.i.i, ptr %ctx_str.i.i.i.i, i32 %conv9.i.i.i.i)
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i.i.i, %if.then3.i.i.if.end9.i.i_crit_edge
  %type.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 18
  %147 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %type.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %upt.i.i.i) #16
  %149 = call ptr @memset(ptr %upt.i.i.i, i32 0, i32 6)
  %150 = ptrtoint ptr %upt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %148, ptr %upt.i.i.i, align 2
  %call.i.i24.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i50, i32 noundef 16, i32 noundef 6, ptr noundef nonnull %upt.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %upt.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %tobool10.not.i.i55 = icmp eq i32 %call.i.i24.i, 0
  br i1 %tobool10.not.i.i55, label %if.then11.i.i56, label %if.end9.i.i.if.then.i.i.i.i_crit_edge

if.end9.i.i.if.then.i.i.i.i_crit_edge:            ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i.i

if.then11.i.i56:                                  ; preds = %if.end9.i.i
  %mark.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 11
  %m1.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 11, i32 1
  %151 = ptrtoint ptr %m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %m1.i.i.i, align 4
  %153 = ptrtoint ptr %mark.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %mark.i.i, align 4
  %or.i.i.i = or i32 %154, %152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %tobool.not.i50.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %tobool.not.i50.i.i, label %if.then11.i.i56.if.then15.i.i_crit_edge, label %if.end13.i.i

if.then11.i.i56.if.then15.i.i_crit_edge:          ; preds = %if.then11.i.i56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i.i

if.end13.i.i:                                     ; preds = %if.then11.i.i56
  %call.i51.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i50, i32 noundef 21, i32 noundef 8, ptr noundef %mark.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i51.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end13.i.i.if.then15.i.i_crit_edge, label %if.end13.i.i.if.then.i.i.i.i_crit_edge

if.end13.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i.i

if.end13.i.i.if.then15.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end13.i.i.if.then15.i.i_crit_edge, %if.then11.i.i56.if.then15.i.i_crit_edge
  %if_id.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 10
  %155 = ptrtoint ptr %if_id.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %if_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i54.i.i = icmp eq i32 %156, 0
  br i1 %tobool.not.i54.i.i, label %if.then15.i.i.build_polexpire.exit.thread32.i_crit_edge, label %if.end17.i.i

if.then15.i.i.build_polexpire.exit.thread32.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_polexpire.exit.thread32.i

if.end17.i.i:                                     ; preds = %if.then15.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #16
  %157 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %tmp.i.i.i.i, align 4
  %call.i.i55.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i50, i32 noundef 31, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55.i.i)
  %tobool18.not.i.i = icmp eq i32 %call.i.i55.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end17.i.i.build_polexpire.exit.thread32.i_crit_edge, label %if.end17.i.i.if.then.i.i.i.i_crit_edge

if.end17.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i.i

if.end17.i.i.build_polexpire.exit.thread32.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_polexpire.exit.thread32.i

if.then.i.i.i.i:                                  ; preds = %if.end17.i.i.if.then.i.i.i.i_crit_edge, %if.end13.i.i.if.then.i.i.i.i_crit_edge, %if.end9.i.i.if.then.i.i.i.i_crit_edge, %if.then.i.i23.i.if.then.i.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i.i_crit_edge
  %err.380.i.i = phi i32 [ %call.i.i55.i.i, %if.end17.i.i.if.then.i.i.i.i_crit_edge ], [ %call.i51.i.i, %if.end13.i.i.if.then.i.i.i.i_crit_edge ], [ %call.i.i24.i, %if.end9.i.i.if.then.i.i.i.i_crit_edge ], [ -90, %if.then.i.i23.i.if.then.i.i.i.i_crit_edge ], [ %call2.i.i, %if.end.i.i.if.then.i.i.i.i_crit_edge ]
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i50, i32 0, i32 19
  %158 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i59.i.i = icmp ugt ptr %159, %call3.i.i.i
  br i1 %cmp.i.i59.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.build_polexpire.exit.i_crit_edge, !prof !68

if.then.i.i.i.i.build_polexpire.exit.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_polexpire.exit.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %build_polexpire.exit.i

build_polexpire.exit.thread32.i:                  ; preds = %if.end17.i.i.build_polexpire.exit.thread32.i_crit_edge, %if.then15.i.i.build_polexpire.exit.thread32.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool21.i.i = icmp ne i32 %100, 0
  %conv.i25.i = zext i1 %tobool21.i.i to i8
  %hard23.i.i = getelementptr i8, ptr %call3.i.i.i, i32 184
  %160 = ptrtoint ptr %hard23.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv.i25.i, ptr %hard23.i.i, align 8
  %161 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i57 = ptrtoint ptr %162 to i32
  %sub.ptr.rhs.cast.i.i.i58 = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.sub.i.i.i59 = sub i32 %sub.ptr.lhs.cast.i.i.i57, %sub.ptr.rhs.cast.i.i.i58
  %163 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %sub.ptr.sub.i.i.i59, ptr %call3.i.i.i, align 4
  br label %do.end13.i

build_polexpire.exit.i:                           ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.build_polexpire.exit.i_crit_edge
  %164 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i60.i.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.rhs.cast.i.i61.i.i = ptrtoint ptr %165 to i32
  %sub.ptr.sub.i.i62.i.i = sub i32 %sub.ptr.lhs.cast.i.i60.i.i, %sub.ptr.rhs.cast.i.i61.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i.i50, i32 noundef %sub.ptr.sub.i.i62.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.380.i.i)
  %cmp4.i60 = icmp slt i32 %err.380.i.i, 0
  br i1 %cmp4.i60, label %build_polexpire.exit.i.do.body7.i_crit_edge, label %build_polexpire.exit.i.do.end13.i_crit_edge, !prof !68

build_polexpire.exit.i.do.end13.i_crit_edge:      ; preds = %build_polexpire.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13.i

build_polexpire.exit.i.do.body7.i_crit_edge:      ; preds = %build_polexpire.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7.i

do.body7.i:                                       ; preds = %build_polexpire.exit.i.do.body7.i_crit_edge, %nlmsg_put.exit.i.i.do.body7.i_crit_edge, %skb_tailroom.exit.i.i.i.do.body7.i_crit_edge, %if.end.i52.do.body7.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3359, 0\0A.popsection", ""() #16, !srcloc !72
  unreachable

do.end13.i:                                       ; preds = %build_polexpire.exit.i.do.end13.i_crit_edge, %build_polexpire.exit.thread32.i
  %nlsk1.i.i61 = getelementptr inbounds %struct.net, ptr %92, i32 0, i32 46, i32 17
  %166 = ptrtoint ptr %nlsk1.i.i61 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile ptr, ptr %nlsk1.i.i61, align 8
  %call.i.i62 = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62)
  %tobool.not.i26.i = icmp eq i32 %call.i.i62, 0
  br i1 %tobool.not.i26.i, label %land.lhs.true.i.i65, label %do.end13.i.do.end8.i.i69_crit_edge

do.end13.i.do.end8.i.i69_crit_edge:               ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i69

land.lhs.true.i.i65:                              ; preds = %do.end13.i
  %call3.i.i63 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i63)
  %tobool4.not.i.i64 = icmp eq i32 %call3.i.i63, 0
  br i1 %tobool4.not.i.i64, label %land.lhs.true.i.i65.do.end8.i.i69_crit_edge, label %land.lhs.true5.i.i67

land.lhs.true.i.i65.do.end8.i.i69_crit_edge:      ; preds = %land.lhs.true.i.i65
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i69

land.lhs.true5.i.i67:                             ; preds = %land.lhs.true.i.i65
  %.b1.i.i66 = load i1, ptr @xfrm_nlmsg_multicast.__warned, align 1
  br i1 %.b1.i.i66, label %land.lhs.true5.i.i67.do.end8.i.i69_crit_edge, label %if.then.i.i68

land.lhs.true5.i.i67.do.end8.i.i69_crit_edge:     ; preds = %land.lhs.true5.i.i67
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i69

if.then.i.i68:                                    ; preds = %land.lhs.true5.i.i67
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_nlmsg_multicast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i.i69

do.end8.i.i69:                                    ; preds = %if.then.i.i68, %land.lhs.true5.i.i67.do.end8.i.i69_crit_edge, %land.lhs.true.i.i65.do.end8.i.i69_crit_edge, %do.end13.i.do.end8.i.i69_crit_edge
  %tobool10.not.i27.i = icmp eq ptr %167, null
  br i1 %tobool10.not.i27.i, label %if.then11.i28.i, label %if.end12.i.i71

if.then11.i28.i:                                  ; preds = %do.end8.i.i69
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i50, i32 noundef 0) #16
  br label %return

if.end12.i.i71:                                   ; preds = %do.end8.i.i69
  call void @__sanitizer_cov_trace_pc() #18
  %dst_group.i.i.i70 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i50, i32 0, i32 3, i32 16
  %168 = ptrtoint ptr %dst_group.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 2, ptr %dst_group.i.i.i70, align 8
  %call.i.i29.i = call i32 @netlink_broadcast(ptr noundef nonnull %167, ptr noundef nonnull %call.i.i.i50, i32 noundef 0, i32 noundef 2, i32 noundef 2592) #16
  %169 = call i32 @llvm.smin.i32(i32 %call.i.i29.i, i32 0) #16
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1) #19
  br label %return

return:                                           ; preds = %do.end, %if.end12.i.i71, %if.then11.i28.i, %xfrm_polexpire_msgsize.exit.i.return_crit_edge, %out_free_skb.i46, %if.end12.i.i45, %if.then11.i.i43, %sw.bb1.return_crit_edge, %out_free_skb.i, %if.end12.i.i, %if.then11.i.i, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %err.3.i, %out_free_skb.i ], [ -12, %sw.bb.return_crit_edge ], [ %67, %if.end12.i.i ], [ -32, %if.then11.i.i ], [ %err.0.i, %out_free_skb.i46 ], [ -12, %sw.bb1.return_crit_edge ], [ %90, %if.end12.i.i45 ], [ -32, %if.then11.i.i43 ], [ -12, %xfrm_polexpire_msgsize.exit.i.return_crit_edge ], [ %169, %if.end12.i.i71 ], [ -32, %if.then11.i28.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_send_report(ptr noundef %net, i8 noundef zeroext %proto, ptr nocapture noundef readonly %sel, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 76, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end.do.body6_crit_edge

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body6

skb_tailroom.exit.i.i:                            ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 76
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.do.body6_crit_edge, label %nlmsg_put.exit.i, !prof !68

skb_tailroom.exit.i.i.do.body6_crit_edge:         ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body6

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 32, i32 noundef 60, i32 noundef 0) #16
  %cmp.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.i, label %nlmsg_put.exit.i.do.body6_crit_edge, label %if.end.i

nlmsg_put.exit.i.do.body6_crit_edge:              ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body6

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %proto, ptr %add.ptr.i.i, align 4
  %sel3.i = getelementptr i8, ptr %call3.i.i, i32 20
  %7 = call ptr @memcpy(ptr %sel3.i, ptr %sel, i32 56)
  %tobool.not.i = icmp eq ptr %addr, null
  br i1 %tobool.not.i, label %if.end.i.build_report.exit.thread22_crit_edge, label %if.then4.i

if.end.i.build_report.exit.thread22_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_report.exit.thread22

if.then4.i:                                       ; preds = %if.end.i
  %call5.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 14, i32 noundef 16, ptr noundef nonnull %addr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then4.i.build_report.exit.thread22_crit_edge, label %if.then.i.i.i

if.then4.i.build_report.exit.thread22_crit_edge:  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_report.exit.thread22

if.then.i.i.i:                                    ; preds = %if.then4.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %9, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.build_report.exit_crit_edge, !prof !68

if.then.i.i.i.build_report.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_report.exit

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %build_report.exit

build_report.exit.thread22:                       ; preds = %if.then4.i.build_report.exit.thread22_crit_edge, %if.end.i.build_report.exit.thread22_crit_edge
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %12 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  br label %do.end12

build_report.exit:                                ; preds = %do.end.i.i.i, %if.then.i.i.i.build_report.exit_crit_edge
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i21.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i22.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i23.i = sub i32 %sub.ptr.lhs.cast.i.i21.i, %sub.ptr.rhs.cast.i.i22.i
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i23.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp3 = icmp slt i32 %call5.i, 0
  br i1 %cmp3, label %build_report.exit.do.body6_crit_edge, label %build_report.exit.do.end12_crit_edge, !prof !68

build_report.exit.do.end12_crit_edge:             ; preds = %build_report.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

build_report.exit.do.body6_crit_edge:             ; preds = %build_report.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body6

do.body6:                                         ; preds = %build_report.exit.do.body6_crit_edge, %nlmsg_put.exit.i.do.body6_crit_edge, %skb_tailroom.exit.i.i.do.body6_crit_edge, %if.end.do.body6_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3523, 0\0A.popsection", ""() #16, !srcloc !73
  unreachable

do.end12:                                         ; preds = %build_report.exit.do.end12_crit_edge, %build_report.exit.thread22
  %nlsk1.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 17
  %15 = ptrtoint ptr %nlsk1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %nlsk1.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i17 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i, label %do.end12.do.end8.i_crit_edge

do.end12.do.end8.i_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %do.end12
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @xfrm_nlmsg_multicast.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_nlmsg_multicast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %do.end12.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %16, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %cleanup

if.end12.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %17 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %dst_group.i.i, align 8
  %call.i.i18 = tail call i32 @netlink_broadcast(ptr noundef nonnull %16, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 6, i32 noundef 2592) #16
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i.i18, i32 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.then11.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %18, %if.end12.i ], [ -32, %if.then11.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_send_migrate(ptr nocapture noundef readonly %sel, i8 noundef zeroext %dir, i8 noundef zeroext %type, ptr nocapture noundef readonly %m, i32 noundef %num_migrate, ptr noundef readonly %k, ptr noundef %encap) #2 align 64 {
entry:
  %um.i.i = alloca %struct.xfrm_user_migrate, align 4
  %upt.i.i = alloca %struct.xfrm_userpolicy_type, align 2
  %uk.i.i = alloca %struct.xfrm_user_kmaddress, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %k, null
  %tobool2.not = icmp eq ptr %encap, null
  %cond6.i = select i1 %tobool2.not, i32 0, i32 28
  %mul.i = mul i32 %num_migrate, 76
  %sub.i.i = add i32 %mul.i, 7
  %and.i.i = and i32 %sub.i.i, -4
  %add7.i = select i1 %tobool.not, i32 76, i32 120
  %add9.i = add i32 %and.i.i, 19
  %add11.i = add i32 %add9.i, %add7.i
  %sub.i.i31 = add i32 %add11.i, %cond6.i
  %and.i.i32 = and i32 %sub.i.i31, -4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end.do.body16_crit_edge

if.end.do.body16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body16

skb_tailroom.exit.i.i:                            ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 80
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.do.body16_crit_edge, label %nlmsg_put.exit.i, !prof !68

skb_tailroom.exit.i.i.do.body16_crit_edge:        ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body16

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 33, i32 noundef 64, i32 noundef 0) #16
  %cmp.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.i, label %nlmsg_put.exit.i.do.body16_crit_edge, label %if.end.i

nlmsg_put.exit.i.do.body16_crit_edge:             ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body16

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 64)
  %7 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %sel, i32 56)
  %dir3.i = getelementptr i8, ptr %call3.i.i, i32 76
  %8 = ptrtoint ptr %dir3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %dir, ptr %dir3.i, align 4
  br i1 %tobool.not, label %if.end.i.if.end9.i_crit_edge, label %if.then5.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %uk.i.i) #16
  %9 = getelementptr inbounds i8, ptr %uk.i.i, i32 36
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %family.i.i = getelementptr inbounds %struct.xfrm_kmaddress, ptr %k, i32 0, i32 3
  %11 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %family.i.i, align 4
  store i16 %12, ptr %9, align 4
  %reserved.i.i = getelementptr inbounds %struct.xfrm_kmaddress, ptr %k, i32 0, i32 2
  %13 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reserved.i.i, align 4
  %reserved2.i.i = getelementptr inbounds %struct.xfrm_user_kmaddress, ptr %uk.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %reserved2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %reserved2.i.i, align 4
  %16 = call ptr @memcpy(ptr %uk.i.i, ptr %k, i32 16)
  %remote.i.i = getelementptr inbounds %struct.xfrm_user_kmaddress, ptr %uk.i.i, i32 0, i32 1
  %remote4.i.i = getelementptr inbounds %struct.xfrm_kmaddress, ptr %k, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %remote.i.i, ptr %remote4.i.i, i32 16)
  %call.i.i33 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 19, i32 noundef 40, ptr noundef nonnull %uk.i.i) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %uk.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %tobool.not.i34 = icmp eq i32 %call.i.i33, 0
  br i1 %tobool.not.i34, label %if.then5.i.if.end9.i_crit_edge, label %if.then5.i.if.then.i.i.i_crit_edge

if.then5.i.if.then.i.i.i_crit_edge:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.then5.i.if.end9.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  br i1 %tobool2.not, label %if.end9.i.if.end16.i_crit_edge, label %if.then11.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end9.i
  %call12.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef 24, ptr noundef nonnull %encap) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then11.i.if.end16.i_crit_edge, label %if.then11.i.if.then.i.i.i_crit_edge

if.then11.i.if.then.i.i.i_crit_edge:              ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.then11.i.if.end16.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then11.i.if.end16.i_crit_edge, %if.end9.i.if.end16.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %upt.i.i) #16
  %18 = call ptr @memset(ptr %upt.i.i, i32 0, i32 6)
  %19 = ptrtoint ptr %upt.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %type, ptr %upt.i.i, align 2
  %call.i49.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 16, i32 noundef 6, ptr noundef nonnull %upt.i.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %upt.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool18.not.i = icmp eq i32 %call.i49.i, 0
  br i1 %tobool18.not.i, label %for.cond.preheader.i, label %if.end16.i.if.then.i.i.i_crit_edge

if.end16.i.if.then.i.i.i_crit_edge:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

for.cond.preheader.i:                             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_migrate)
  %cmp2160.i = icmp sgt i32 %num_migrate, 0
  br i1 %cmp2160.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.build_migrate.exit.thread41_crit_edge

for.cond.preheader.i.build_migrate.exit.thread41_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_migrate.exit.thread41

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %20 = getelementptr inbounds i8, ptr %um.i.i, i32 64
  %mode2.i.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.i.i, i32 0, i32 5
  %reqid3.i.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.i.i, i32 0, i32 7
  %old_family4.i.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.i.i, i32 0, i32 8
  %old_saddr.i.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.i.i, i32 0, i32 1
  %new_family7.i.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.i.i, i32 0, i32 9
  %new_daddr.i.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.i.i, i32 0, i32 2
  %new_saddr.i.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.062.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mp.061.i = phi ptr [ %m, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %um.i.i) #16
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %proto.i.i = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.061.i, i32 0, i32 4
  %22 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %proto.i.i, align 4
  store i8 %23, ptr %20, align 4
  %mode.i.i = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.061.i, i32 0, i32 5
  %24 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mode.i.i, align 1
  %26 = ptrtoint ptr %mode2.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %mode2.i.i, align 1
  %reqid.i.i = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.061.i, i32 0, i32 7
  %27 = ptrtoint ptr %reqid.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reqid.i.i, align 4
  %29 = ptrtoint ptr %reqid3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %reqid3.i.i, align 4
  %old_family.i.i = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.061.i, i32 0, i32 8
  %30 = ptrtoint ptr %old_family.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %old_family.i.i, align 4
  %32 = ptrtoint ptr %old_family4.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %old_family4.i.i, align 4
  %33 = call ptr @memcpy(ptr %um.i.i, ptr %mp.061.i, i32 16)
  %old_saddr6.i.i = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.061.i, i32 0, i32 1
  %34 = call ptr @memcpy(ptr %old_saddr.i.i, ptr %old_saddr6.i.i, i32 16)
  %new_family.i.i = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.061.i, i32 0, i32 9
  %35 = ptrtoint ptr %new_family.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %new_family.i.i, align 2
  %37 = ptrtoint ptr %new_family7.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %new_family7.i.i, align 2
  %new_daddr8.i.i = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.061.i, i32 0, i32 2
  %38 = call ptr @memcpy(ptr %new_daddr.i.i, ptr %new_daddr8.i.i, i32 16)
  %new_saddr9.i.i = getelementptr inbounds %struct.xfrm_migrate, ptr %mp.061.i, i32 0, i32 3
  %39 = call ptr @memcpy(ptr %new_saddr.i.i, ptr %new_saddr9.i.i, i32 16)
  %call.i50.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 17, i32 noundef 76, ptr noundef nonnull %um.i.i) #16
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %um.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %tobool23.not.i = icmp eq i32 %call.i50.i, 0
  br i1 %tobool23.not.i, label %for.inc.i, label %for.body.i.if.then.i.i.i_crit_edge

for.body.i.if.then.i.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %incdec.ptr.i = getelementptr %struct.xfrm_migrate, ptr %mp.061.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_migrate
  br i1 %exitcond.not.i, label %for.inc.i.build_migrate.exit.thread41_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.build_migrate.exit.thread41_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_migrate.exit.thread41

build_migrate.exit.thread41:                      ; preds = %for.inc.i.build_migrate.exit.thread41_crit_edge, %for.cond.preheader.i.build_migrate.exit.thread41_crit_edge
  %40 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %42 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  br label %do.end22

if.then.i.i.i:                                    ; preds = %for.body.i.if.then.i.i.i_crit_edge, %if.end16.i.if.then.i.i.i_crit_edge, %if.then11.i.if.then.i.i.i_crit_edge, %if.then5.i.if.then.i.i.i_crit_edge
  %err.0.i = phi i32 [ %call.i.i33, %if.then5.i.if.then.i.i.i_crit_edge ], [ %call12.i, %if.then11.i.if.then.i.i.i_crit_edge ], [ %call.i49.i, %if.end16.i.if.then.i.i.i_crit_edge ], [ %call.i50.i, %for.body.i.if.then.i.i.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %44, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.build_migrate.exit_crit_edge, !prof !68

if.then.i.i.i.build_migrate.exit_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_migrate.exit

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %build_migrate.exit

build_migrate.exit:                               ; preds = %do.end.i.i.i, %if.then.i.i.i.build_migrate.exit_crit_edge
  %45 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i52.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i53.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i.i54.i = sub i32 %sub.ptr.lhs.cast.i.i52.i, %sub.ptr.rhs.cast.i.i53.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i54.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp9 = icmp slt i32 %err.0.i, 0
  br i1 %cmp9, label %build_migrate.exit.do.body16_crit_edge, label %build_migrate.exit.do.end22_crit_edge, !prof !68

build_migrate.exit.do.end22_crit_edge:            ; preds = %build_migrate.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

build_migrate.exit.do.body16_crit_edge:           ; preds = %build_migrate.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body16

do.body16:                                        ; preds = %build_migrate.exit.do.body16_crit_edge, %nlmsg_put.exit.i.do.body16_crit_edge, %skb_tailroom.exit.i.i.do.body16_crit_edge, %if.end.do.body16_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2743, 0\0A.popsection", ""() #16, !srcloc !74
  unreachable

do.end22:                                         ; preds = %build_migrate.exit.do.end22_crit_edge, %build_migrate.exit.thread41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 46, i32 17) to i32))
  %47 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 46, i32 17), align 8
  %call.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i35 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i, label %do.end22.do.end8.i_crit_edge

do.end22.do.end8.i_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %do.end22
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @xfrm_nlmsg_multicast.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_nlmsg_multicast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %do.end22.do.end8.i_crit_edge
  %tobool10.not.i36 = icmp eq ptr %47, null
  br i1 %tobool10.not.i36, label %if.then11.i37, label %if.end12.i

if.then11.i37:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %cleanup

if.end12.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %48 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 7, ptr %dst_group.i.i, align 8
  %call.i.i38 = call i32 @netlink_broadcast(ptr noundef nonnull %47, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 7, i32 noundef 2592) #16
  %49 = call i32 @llvm.smin.i32(i32 %call.i.i38, i32 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.then11.i37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %49, %if.end12.i ], [ -32, %if.then11.i37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @xfrm_is_alive(ptr nocapture noundef readonly %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 4
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !58) #16
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %nlsk1.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 46, i32 17
  %6 = ptrtoint ptr %nlsk1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %nlsk1.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b15.i = load i1, ptr @xfrm_acquire_is_on.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_acquire_is_on.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1767, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %7, null
  br i1 %tobool10.not.i, label %do.end8.i.if.end13.i_crit_edge, label %if.then11.i

do.end8.i.if.end13.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.then11.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %call12.i = tail call i32 @netlink_has_listeners(ptr noundef nonnull %7, i32 noundef 1) #16
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %do.end8.i.if.end13.i_crit_edge
  %ret.0.i = phi i32 [ %call12.i, %if.then11.i ], [ 0, %do.end8.i.if.end13.i_crit_edge ]
  %call.i16.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i16.i, label %if.end13.i.xfrm_acquire_is_on.exit_crit_edge, label %land.lhs.true.i19.i

if.end13.i.xfrm_acquire_is_on.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_acquire_is_on.exit

land.lhs.true.i19.i:                              ; preds = %if.end13.i
  %call1.i17.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool.not.i18.i, label %land.lhs.true.i19.i.xfrm_acquire_is_on.exit_crit_edge, label %land.lhs.true2.i21.i

land.lhs.true.i19.i.xfrm_acquire_is_on.exit_crit_edge: ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_acquire_is_on.exit

land.lhs.true2.i21.i:                             ; preds = %land.lhs.true.i19.i
  %.b4.i20.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20.i, label %land.lhs.true2.i21.i.xfrm_acquire_is_on.exit_crit_edge, label %if.then.i22.i

land.lhs.true2.i21.i.xfrm_acquire_is_on.exit_crit_edge: ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_acquire_is_on.exit

if.then.i22.i:                                    ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #16
  br label %xfrm_acquire_is_on.exit

xfrm_acquire_is_on.exit:                          ; preds = %if.then.i22.i, %land.lhs.true2.i21.i.xfrm_acquire_is_on.exit_crit_edge, %land.lhs.true.i19.i.xfrm_acquire_is_on.exit_crit_edge, %if.end13.i.xfrm_acquire_is_on.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !76
  %8 = tail call i32 @llvm.read_register.i32(metadata !58) #16
  %and.i.i.i.i.i23.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23.i to ptr
  %preempt_count.i.i.i.i24.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24.i, align 4
  %sub.i.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i24.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool = icmp ne i32 %ret.0.i, 0
  ret i1 %tobool
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_aevent(ptr noundef %skb, ptr noundef %x, ptr nocapture noundef readonly %c) unnamed_addr #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %tmp.i101 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %portid = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %0 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %portid, align 4
  %seq = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 64
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !68

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %1, i32 noundef %3, i32 noundef 30, i32 noundef 48, i32 noundef 0) #16
  %cmp = icmp eq ptr %call3.i, null
  br i1 %cmp, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %10 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 24)
  %id3 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %add.ptr.i, ptr %id3, i32 16)
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spi, align 4
  %spi7 = getelementptr i8, ptr %call3.i, i32 32
  %14 = ptrtoint ptr %spi7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %spi7, align 4
  %props = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %family, align 2
  %family9 = getelementptr i8, ptr %call3.i, i32 36
  %17 = ptrtoint ptr %family9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %family9, align 4
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %proto, align 4
  %proto12 = getelementptr i8, ptr %call3.i, i32 38
  %20 = ptrtoint ptr %proto12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %proto12, align 2
  %saddr = getelementptr i8, ptr %call3.i, i32 40
  %saddr14 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %21 = call ptr @memcpy(ptr %saddr, ptr %saddr14, i32 16)
  %22 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %props, align 4
  %reqid16 = getelementptr i8, ptr %call3.i, i32 60
  %24 = ptrtoint ptr %reqid16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %reqid16, align 4
  %25 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %c, align 4
  %flags = getelementptr i8, ptr %call3.i, i32 56
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %flags, align 4
  %replay_esn = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %28 = ptrtoint ptr %replay_esn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %replay_esn, align 8
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %mul.i = shl i32 %31, 2
  %add.i = add i32 %mul.i, 24
  %call21 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 23, i32 noundef %add.i, ptr noundef nonnull %29) #16
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %replay = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29
  %call22 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 12, ptr noundef %replay) #16
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then17
  %err.0 = phi i32 [ %call21, %if.then17 ], [ %call22, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool24.not = icmp eq i32 %err.0, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.if.then.i.i_crit_edge

if.end23.if.then.i.i_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end26:                                         ; preds = %if.end23
  %curlft = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 39
  %call27 = tail call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 9, i32 noundef 32, ptr noundef %curlft, i32 noundef 27) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.if.then.i.i_crit_edge

if.end26.if.then.i.i_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end30:                                         ; preds = %if.end26
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end30.if.end38_crit_edge, label %if.then33

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then33:                                        ; preds = %if.end30
  %replay_maxdiff = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 36
  %34 = ptrtoint ptr %replay_maxdiff to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %replay_maxdiff, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %36 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %if.then33.if.end38_crit_edge, label %if.then33.if.then.i.i_crit_edge

if.then33.if.then.i.i_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.end38:                                         ; preds = %if.then33.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %and40 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end47_crit_edge, label %if.then42

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

if.then42:                                        ; preds = %if.end38
  %replay_maxage = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 35
  %39 = ptrtoint ptr %replay_maxage to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %replay_maxage, align 4
  %mul = mul i32 %40, 10
  %div = udiv i32 %mul, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i101) #16
  %41 = ptrtoint ptr %tmp.i101 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div, ptr %tmp.i101, align 4
  %call.i102 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i101) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i101) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool44.not = icmp eq i32 %call.i102, 0
  br i1 %tobool44.not, label %if.then42.if.end47_crit_edge, label %if.then42.if.then.i.i_crit_edge

if.then42.if.then.i.i_crit_edge:                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

if.end47:                                         ; preds = %if.then42.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  %mark = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 9
  %m1.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %m1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %m1.i, align 4
  %44 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mark, align 4
  %or.i = or i32 %45, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i, label %if.end47.if.end51_crit_edge, label %xfrm_mark_put.exit

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

xfrm_mark_put.exit:                               ; preds = %if.end47
  %call.i103 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 8, ptr noundef %mark) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool49.not = icmp eq i32 %call.i103, 0
  br i1 %tobool49.not, label %xfrm_mark_put.exit.if.end51_crit_edge, label %xfrm_mark_put.exit.if.then.i.i_crit_edge

xfrm_mark_put.exit.if.then.i.i_crit_edge:         ; preds = %xfrm_mark_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

xfrm_mark_put.exit.if.end51_crit_edge:            ; preds = %xfrm_mark_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.end51:                                         ; preds = %xfrm_mark_put.exit.if.end51_crit_edge, %if.end47.if.end51_crit_edge
  %if_id = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 10
  %46 = ptrtoint ptr %if_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %if_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i105 = icmp eq i32 %47, 0
  br i1 %tobool.not.i105, label %if.end51.if.end55_crit_edge, label %xfrm_if_id_put.exit

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

xfrm_if_id_put.exit:                              ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #16
  %48 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 31, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool53.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool53.not, label %xfrm_if_id_put.exit.if.end55_crit_edge, label %xfrm_if_id_put.exit.if.then.i.i_crit_edge

xfrm_if_id_put.exit.if.then.i.i_crit_edge:        ; preds = %xfrm_if_id_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

xfrm_if_id_put.exit.if.end55_crit_edge:           ; preds = %xfrm_if_id_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.end55:                                         ; preds = %xfrm_if_id_put.exit.if.end55_crit_edge, %if.end51.if.end55_crit_edge
  %49 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %51 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %xfrm_if_id_put.exit.if.then.i.i_crit_edge, %xfrm_mark_put.exit.if.then.i.i_crit_edge, %if.then42.if.then.i.i_crit_edge, %if.then33.if.then.i.i_crit_edge, %if.end26.if.then.i.i_crit_edge, %if.end23.if.then.i.i_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end23.if.then.i.i_crit_edge ], [ %call27, %if.end26.if.then.i.i_crit_edge ], [ %call.i, %if.then33.if.then.i.i_crit_edge ], [ %call.i102, %if.then42.if.then.i.i_crit_edge ], [ %call.i103, %xfrm_mark_put.exit.if.then.i.i_crit_edge ], [ %call.i.i, %xfrm_if_id_put.exit.if.then.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %53, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !68

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %54 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i110 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i111 = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i112 = sub i32 %sub.ptr.lhs.cast.i.i110, %sub.ptr.rhs.cast.i.i111
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i112) #16
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %if.end55, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %nlmsg_cancel.exit ], [ 0, %if.end55 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_to_user_state_extra(ptr noundef %x, ptr nocapture noundef writeonly %p, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  %tmp.i240 = alloca i32, align 4
  %tmp.i238 = alloca i32, align 4
  %tmp.i232 = alloca i32, align 4
  %tmp.i194 = alloca i64, align 8
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 0, i32 224)
  %id.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 1
  %id1.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %1 = call ptr @memcpy(ptr %id.i, ptr %id1.i, i32 24)
  %sel2.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8
  %2 = call ptr @memcpy(ptr %p, ptr %sel2.i, i32 56)
  %lft.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 3
  %lft3.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 15
  %3 = call ptr @memcpy(ptr %lft.i, ptr %lft3.i, i32 64)
  %curlft.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 4
  %curlft4.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 39
  %4 = call ptr @memcpy(ptr %curlft.i, ptr %curlft4.i, i32 32)
  %stats.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 5
  %stats5.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38
  %5 = ptrtoint ptr %stats5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stats5.i, align 4
  %7 = ptrtoint ptr %stats.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %stats.i, align 1
  %replay.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 5, i32 1
  %replay12.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38, i32 1
  %8 = ptrtoint ptr %replay12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %replay12.i, align 4
  %10 = ptrtoint ptr %replay.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %replay.i, align 1
  %integrity_failed.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 5, i32 2
  %integrity_failed19.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 38, i32 2
  %11 = ptrtoint ptr %integrity_failed19.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %integrity_failed19.i, align 4
  %13 = ptrtoint ptr %integrity_failed.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %integrity_failed.i, align 1
  %saddr.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 2
  %props.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14
  %saddr22.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %14 = call ptr @memcpy(ptr %saddr.i, ptr %saddr22.i, i32 16)
  %mode.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mode.i, align 4
  %mode24.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 9
  %17 = ptrtoint ptr %mode24.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %mode24.i, align 2
  %replay_window26.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 2
  %18 = ptrtoint ptr %replay_window26.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %replay_window26.i, align 1
  %replay_window27.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 10
  %20 = ptrtoint ptr %replay_window27.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %replay_window27.i, align 1
  %21 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %props.i, align 4
  %reqid29.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 7
  %23 = ptrtoint ptr %reqid29.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %reqid29.i, align 8
  %family.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %24 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %family.i, align 2
  %family31.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 8
  %26 = ptrtoint ptr %family31.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %family31.i, align 4
  %flags.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags.i, align 1
  %flags33.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 11
  %29 = ptrtoint ptr %flags33.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %flags33.i, align 8
  %seq.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 13, i32 4
  %30 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %seq.i, align 4
  %seq34.i = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 6
  %32 = ptrtoint ptr %seq34.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %seq34.i, align 4
  %extra_flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 11
  %33 = ptrtoint ptr %extra_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %extra_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %35 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 24, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %coaddr = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 26
  %36 = ptrtoint ptr %coaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %coaddr, align 8
  %tobool6.not = icmp eq ptr %37, null
  br i1 %tobool6.not, label %if.end5.if.end13_crit_edge, label %if.then7

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then7:                                         ; preds = %if.end5
  %call9 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 16, ptr noundef nonnull %37) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then7.out_crit_edge

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %lastused = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 43
  %38 = ptrtoint ptr %lastused to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %lastused, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool14.not = icmp eq i64 %39, 0
  br i1 %tobool14.not, label %if.end13.if.end21_crit_edge, label %if.then15

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i194) #16
  %40 = ptrtoint ptr %tmp.i194 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %tmp.i194, align 8
  %call.i195 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 15, i32 noundef 8, ptr noundef nonnull %tmp.i194, i32 noundef 27) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i194) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool18.not = icmp eq i32 %call.i195, 0
  br i1 %tobool18.not, label %if.then15.if.end21_crit_edge, label %if.then15.out_crit_edge

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %if.end13.if.end21_crit_edge
  %aead = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 19
  %41 = ptrtoint ptr %aead to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %aead, align 4
  %tobool22.not = icmp eq ptr %42, null
  br i1 %tobool22.not, label %if.end21.if.end29_crit_edge, label %if.then23

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then23:                                        ; preds = %if.end21
  %alg_key_len.i.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %alg_key_len.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %alg_key_len.i.i, align 4
  %add.i.i = add i32 %44, 7
  %div2.i.i = lshr i32 %add.i.i, 3
  %add1.i.i = add nuw nsw i32 %div2.i.i, 72
  %call1.i = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 18, i32 noundef %add1.i.i) #16
  %call.i.i = call i32 @security_locked_down(i32 noundef 24) #16
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then23.out_crit_edge, label %if.end.i

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end.i:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not.i = icmp eq i32 %call.i.i, 0
  %add.ptr.i.i = getelementptr i8, ptr %call1.i, i32 4
  %45 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %42, i32 72)
  br i1 %tobool.i.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %46 = ptrtoint ptr %alg_key_len.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %alg_key_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool5.not.i = icmp eq i32 %47, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %alg_key.i = getelementptr i8, ptr %call1.i, i32 76
  %add.i = add i32 %47, 7
  %div27.i = lshr i32 %add.i, 3
  %48 = call ptr @memset(ptr %alg_key.i, i32 0, i32 %div27.i)
  br label %if.end29

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %alg_key8.i = getelementptr i8, ptr %call1.i, i32 76
  %alg_key10.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %42, i32 0, i32 3
  %49 = ptrtoint ptr %alg_key_len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %alg_key_len.i.i, align 4
  %add13.i = add i32 %50, 7
  %div1426.i = lshr i32 %add13.i, 3
  %51 = call ptr @memcpy(ptr %alg_key8.i, ptr %alg_key10.i, i32 %div1426.i)
  br label %if.end29

if.end29:                                         ; preds = %if.else.i, %if.then6.i, %if.end21.if.end29_crit_edge
  %aalg = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 16
  %52 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %aalg, align 8
  %tobool30.not = icmp eq ptr %53, null
  br i1 %tobool30.not, label %if.end29.if.end37_crit_edge, label %if.then31

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then31:                                        ; preds = %if.end29
  %call.i.i196 = call i32 @security_locked_down(i32 noundef 24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i196)
  %tobool.i.not.i197 = icmp eq i32 %call.i.i196, 0
  %alg_key_len.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %alg_key_len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %alg_key_len.i, align 4
  %add.i198 = add i32 %55, 7
  %div76.i = lshr i32 %add.i198, 3
  %add1.i = add nuw nsw i32 %div76.i, 68
  %call2.i = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 1, i32 noundef %add1.i) #16
  %tobool.not.i199 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i199, label %if.then31.out_crit_edge, label %if.end.i201

if.then31.out_crit_edge:                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end.i201:                                      ; preds = %if.then31
  %add.ptr.i.i200 = getelementptr i8, ptr %call2.i, i32 4
  %call6.i = call ptr @strncpy(ptr noundef %add.ptr.i.i200, ptr noundef nonnull %53, i32 noundef 64) #16
  br i1 %tobool.i.not.i197, label %if.end.i201.if.else.i205_crit_edge, label %land.lhs.true.i202

if.end.i201.if.else.i205_crit_edge:               ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i205

land.lhs.true.i202:                               ; preds = %if.end.i201
  %56 = ptrtoint ptr %alg_key_len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %alg_key_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool9.not.i = icmp eq i32 %57, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i202.if.else.i205_crit_edge, label %if.then10.i

land.lhs.true.i202.if.else.i205_crit_edge:        ; preds = %land.lhs.true.i202
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i205

if.then10.i:                                      ; preds = %land.lhs.true.i202
  call void @__sanitizer_cov_trace_pc() #18
  %alg_key.i203 = getelementptr i8, ptr %call2.i, i32 72
  %add13.i204 = add i32 %57, 7
  %div1480.i = lshr i32 %add13.i204, 3
  %58 = call ptr @memset(ptr %alg_key.i203, i32 0, i32 %div1480.i)
  br label %if.end22.i

if.else.i205:                                     ; preds = %land.lhs.true.i202.if.else.i205_crit_edge, %if.end.i201.if.else.i205_crit_edge
  %alg_key15.i = getelementptr i8, ptr %call2.i, i32 72
  %alg_key17.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %53, i32 0, i32 3
  %59 = ptrtoint ptr %alg_key_len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %alg_key_len.i, align 4
  %add20.i = add i32 %60, 7
  %div2177.i = lshr i32 %add20.i, 3
  %61 = call ptr @memcpy(ptr %alg_key15.i, ptr %alg_key17.i, i32 %div2177.i)
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i205, %if.then10.i
  %62 = ptrtoint ptr %alg_key_len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %alg_key_len.i, align 4
  %alg_key_len24.i = getelementptr i8, ptr %call2.i, i32 68
  %64 = ptrtoint ptr %alg_key_len24.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %alg_key_len24.i, align 4
  %65 = load i32, ptr %alg_key_len.i, align 4
  %add.i.i206 = add i32 %65, 7
  %div2.i.i207 = lshr i32 %add.i.i206, 3
  %add1.i.i208 = add nuw nsw i32 %div2.i.i207, 72
  %call26.i = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 20, i32 noundef %add1.i.i208) #16
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end22.i.out_crit_edge, label %if.end29.i

if.end22.i.out_crit_edge:                         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end29.i:                                       ; preds = %if.end22.i
  %add.ptr.i81.i = getelementptr i8, ptr %call26.i, i32 4
  %66 = call ptr @memcpy(ptr %add.ptr.i81.i, ptr %53, i32 72)
  br i1 %tobool.i.not.i197, label %if.end29.i.if.else41.i_crit_edge, label %land.lhs.true32.i

if.end29.i.if.else41.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else41.i

land.lhs.true32.i:                                ; preds = %if.end29.i
  %67 = ptrtoint ptr %alg_key_len.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %alg_key_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool34.not.i = icmp eq i32 %68, 0
  br i1 %tobool34.not.i, label %land.lhs.true32.i.if.else41.i_crit_edge, label %if.then35.i

land.lhs.true32.i.if.else41.i_crit_edge:          ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else41.i

if.then35.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #18
  %alg_key36.i = getelementptr i8, ptr %call26.i, i32 76
  %add39.i = add i32 %68, 7
  %div4079.i = lshr i32 %add39.i, 3
  %69 = call ptr @memset(ptr %alg_key36.i, i32 0, i32 %div4079.i)
  br label %if.end37

if.else41.i:                                      ; preds = %land.lhs.true32.i.if.else41.i_crit_edge, %if.end29.i.if.else41.i_crit_edge
  %alg_key42.i = getelementptr i8, ptr %call26.i, i32 76
  %alg_key44.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %53, i32 0, i32 3
  %70 = ptrtoint ptr %alg_key_len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %alg_key_len.i, align 4
  %add47.i = add i32 %71, 7
  %div4878.i = lshr i32 %add47.i, 3
  %72 = call ptr @memcpy(ptr %alg_key42.i, ptr %alg_key44.i, i32 %div4878.i)
  br label %if.end37

if.end37:                                         ; preds = %if.else41.i, %if.then35.i, %if.end29.if.end37_crit_edge
  %ealg = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 17
  %73 = ptrtoint ptr %ealg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ealg, align 4
  %tobool38.not = icmp eq ptr %74, null
  br i1 %tobool38.not, label %if.end37.if.end45_crit_edge, label %if.then39

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then39:                                        ; preds = %if.end37
  %call.i.i210 = call i32 @security_locked_down(i32 noundef 24) #16
  %alg_key_len.i.i211 = getelementptr inbounds %struct.xfrm_algo, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %alg_key_len.i.i211 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %alg_key_len.i.i211, align 4
  %add.i.i212 = add i32 %76, 7
  %div2.i.i213 = lshr i32 %add.i.i212, 3
  %add1.i.i214 = add nuw nsw i32 %div2.i.i213, 68
  %call2.i215 = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 2, i32 noundef %add1.i.i214) #16
  %tobool.not.i216 = icmp eq ptr %call2.i215, null
  br i1 %tobool.not.i216, label %if.then39.out_crit_edge, label %if.end.i219

if.then39.out_crit_edge:                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end.i219:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i210)
  %tobool.i.not.i217 = icmp eq i32 %call.i.i210, 0
  %add.ptr.i.i218 = getelementptr i8, ptr %call2.i215, i32 4
  %77 = call ptr @memcpy(ptr %add.ptr.i.i218, ptr %74, i32 68)
  br i1 %tobool.i.not.i217, label %if.end.i219.if.else.i230_crit_edge, label %land.lhs.true.i221

if.end.i219.if.else.i230_crit_edge:               ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i230

land.lhs.true.i221:                               ; preds = %if.end.i219
  %78 = ptrtoint ptr %alg_key_len.i.i211 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %alg_key_len.i.i211, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool5.not.i220 = icmp eq i32 %79, 0
  br i1 %tobool5.not.i220, label %land.lhs.true.i221.if.else.i230_crit_edge, label %if.then6.i225

land.lhs.true.i221.if.else.i230_crit_edge:        ; preds = %land.lhs.true.i221
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i230

if.then6.i225:                                    ; preds = %land.lhs.true.i221
  call void @__sanitizer_cov_trace_pc() #18
  %alg_key.i222 = getelementptr i8, ptr %call2.i215, i32 72
  %add.i223 = add i32 %79, 7
  %div27.i224 = lshr i32 %add.i223, 3
  %80 = call ptr @memset(ptr %alg_key.i222, i32 0, i32 %div27.i224)
  br label %if.end45

if.else.i230:                                     ; preds = %land.lhs.true.i221.if.else.i230_crit_edge, %if.end.i219.if.else.i230_crit_edge
  %alg_key8.i226 = getelementptr i8, ptr %call2.i215, i32 72
  %alg_key10.i227 = getelementptr inbounds %struct.xfrm_algo, ptr %74, i32 0, i32 2
  %81 = ptrtoint ptr %alg_key_len.i.i211 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %alg_key_len.i.i211, align 4
  %add13.i228 = add i32 %82, 7
  %div1426.i229 = lshr i32 %add13.i228, 3
  %83 = call ptr @memcpy(ptr %alg_key8.i226, ptr %alg_key10.i227, i32 %div1426.i229)
  br label %if.end45

if.end45:                                         ; preds = %if.else.i230, %if.then6.i225, %if.end37.if.end45_crit_edge
  %calg = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 18
  %84 = ptrtoint ptr %calg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %calg, align 8
  %tobool46.not = icmp eq ptr %85, null
  br i1 %tobool46.not, label %if.end45.if.end53_crit_edge, label %if.then47

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then47:                                        ; preds = %if.end45
  %call49 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 68, ptr noundef nonnull %85) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then47.if.end53_crit_edge, label %if.then47.out_crit_edge

if.then47.out_crit_edge:                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then47.if.end53_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.end53:                                         ; preds = %if.then47.if.end53_crit_edge, %if.end45.if.end53_crit_edge
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %86 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %encap, align 8
  %tobool54.not = icmp eq ptr %87, null
  br i1 %tobool54.not, label %if.end53.if.end61_crit_edge, label %if.then55

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then55:                                        ; preds = %if.end53
  %call57 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 24, ptr noundef nonnull %87) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then55.if.end61_crit_edge, label %if.then55.out_crit_edge

if.then55.out_crit_edge:                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then55.if.end61_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.end61:                                         ; preds = %if.then55.if.end61_crit_edge, %if.end53.if.end61_crit_edge
  %tfcpad = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 11
  %88 = ptrtoint ptr %tfcpad to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tfcpad, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool62.not = icmp eq i32 %89, 0
  br i1 %tobool62.not, label %if.end61.if.end69_crit_edge, label %if.then63

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then63:                                        ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i232) #16
  %90 = ptrtoint ptr %tmp.i232 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %tmp.i232, align 4
  %call.i233 = call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 4, ptr noundef nonnull %tmp.i232) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i232) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %tobool66.not = icmp eq i32 %call.i233, 0
  br i1 %tobool66.not, label %if.then63.if.end69_crit_edge, label %if.then63.out_crit_edge

if.then63.out_crit_edge:                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then63.if.end69_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.end69:                                         ; preds = %if.then63.if.end69_crit_edge, %if.end61.if.end69_crit_edge
  %mark = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 9
  %m1.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 9, i32 1
  %91 = ptrtoint ptr %m1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %m1.i, align 4
  %93 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mark, align 4
  %or.i = or i32 %94, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i234 = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i234, label %if.end69.if.end73_crit_edge, label %xfrm_mark_put.exit

if.end69.if.end73_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end73

xfrm_mark_put.exit:                               ; preds = %if.end69
  %call.i235 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 8, ptr noundef %mark) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool71.not = icmp eq i32 %call.i235, 0
  br i1 %tobool71.not, label %xfrm_mark_put.exit.if.end73_crit_edge, label %xfrm_mark_put.exit.out_crit_edge

xfrm_mark_put.exit.out_crit_edge:                 ; preds = %xfrm_mark_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

xfrm_mark_put.exit.if.end73_crit_edge:            ; preds = %xfrm_mark_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end73

if.end73:                                         ; preds = %xfrm_mark_put.exit.if.end73_crit_edge, %if.end69.if.end73_crit_edge
  %smark = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 12
  %call75 = call fastcc i32 @xfrm_smark_put(ptr noundef %skb, ptr noundef %smark)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end73.out_crit_edge

if.end73.out_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end78:                                         ; preds = %if.end73
  %replay_esn = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %95 = ptrtoint ptr %replay_esn to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %replay_esn, align 8
  %tobool79.not = icmp eq ptr %96, null
  br i1 %tobool79.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %mul.i = shl i32 %98, 2
  %add.i237 = add i32 %mul.i, 24
  %call84 = call i32 @nla_put(ptr noundef %skb, i32 noundef 23, i32 noundef %add.i237, ptr noundef nonnull %96) #16
  br label %if.end86

if.else:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  %replay = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29
  %call85 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 12, ptr noundef %replay) #16
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then80
  %ret.0 = phi i32 [ %call84, %if.then80 ], [ %call85, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool87.not = icmp eq i32 %ret.0, 0
  br i1 %tobool87.not, label %if.end89, label %if.end86.out_crit_edge

if.end86.out_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end89:                                         ; preds = %if.end86
  %xso = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41
  %99 = ptrtoint ptr %xso to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %xso, align 8
  %tobool90.not = icmp eq ptr %100, null
  br i1 %tobool90.not, label %if.end89.if.end97_crit_edge, label %if.end94

if.end89.if.end97_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

if.end94:                                         ; preds = %if.end89
  %call93 = call fastcc i32 @copy_user_offload(ptr noundef %xso, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool95.not = icmp eq i32 %call93, 0
  br i1 %tobool95.not, label %if.end94.if.end97_crit_edge, label %if.end94.out_crit_edge

if.end94.out_crit_edge:                           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end94.if.end97_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

if.end97:                                         ; preds = %if.end94.if.end97_crit_edge, %if.end89.if.end97_crit_edge
  %if_id = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 10
  %101 = ptrtoint ptr %if_id to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %if_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool98.not = icmp eq i32 %102, 0
  br i1 %tobool98.not, label %if.end97.if.end105_crit_edge, label %if.then99

if.end97.if.end105_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

if.then99:                                        ; preds = %if.end97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i238) #16
  %103 = ptrtoint ptr %tmp.i238 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %tmp.i238, align 4
  %call.i239 = call i32 @nla_put(ptr noundef %skb, i32 noundef 31, i32 noundef 4, ptr noundef nonnull %tmp.i238) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i238) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool102.not = icmp eq i32 %call.i239, 0
  br i1 %tobool102.not, label %if.then99.if.end105_crit_edge, label %if.then99.out_crit_edge

if.then99.out_crit_edge:                          ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then99.if.end105_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

if.end105:                                        ; preds = %if.then99.if.end105_crit_edge, %if.end97.if.end105_crit_edge
  %security = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 50
  %104 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %security, align 4
  %tobool106.not = icmp eq ptr %105, null
  br i1 %tobool106.not, label %if.end105.if.end113_crit_edge, label %if.then107

if.end105.if.end113_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

if.then107:                                       ; preds = %if.end105
  %call109 = call fastcc i32 @copy_sec_ctx(ptr noundef nonnull %105, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then107.if.end113_crit_edge, label %if.then107.out_crit_edge

if.then107.out_crit_edge:                         ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then107.if.end113_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

if.end113:                                        ; preds = %if.then107.if.end113_crit_edge, %if.end105.if.end113_crit_edge
  %mapping_maxage = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 23
  %106 = ptrtoint ptr %mapping_maxage to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mapping_maxage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool114.not = icmp eq i32 %107, 0
  br i1 %tobool114.not, label %if.end113.out_crit_edge, label %if.then115

if.end113.out_crit_edge:                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then115:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i240) #16
  %108 = ptrtoint ptr %tmp.i240 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %tmp.i240, align 4
  %call.i241 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %tmp.i240) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i240) #16
  br label %out

out:                                              ; preds = %if.then115, %if.end113.out_crit_edge, %if.then107.out_crit_edge, %if.then99.out_crit_edge, %if.end94.out_crit_edge, %if.end86.out_crit_edge, %if.end73.out_crit_edge, %xfrm_mark_put.exit.out_crit_edge, %if.then63.out_crit_edge, %if.then55.out_crit_edge, %if.then47.out_crit_edge, %if.then39.out_crit_edge, %if.end22.i.out_crit_edge, %if.then31.out_crit_edge, %if.then23.out_crit_edge, %if.then15.out_crit_edge, %if.then7.out_crit_edge, %if.then.out_crit_edge
  %ret.4 = phi i32 [ %call.i, %if.then.out_crit_edge ], [ %call9, %if.then7.out_crit_edge ], [ %call.i195, %if.then15.out_crit_edge ], [ %call49, %if.then47.out_crit_edge ], [ %call57, %if.then55.out_crit_edge ], [ %call.i233, %if.then63.out_crit_edge ], [ %call.i235, %xfrm_mark_put.exit.out_crit_edge ], [ %call75, %if.end73.out_crit_edge ], [ %ret.0, %if.end86.out_crit_edge ], [ %call93, %if.end94.out_crit_edge ], [ %call.i239, %if.then99.out_crit_edge ], [ %call109, %if.then107.out_crit_edge ], [ %call.i241, %if.then115 ], [ 0, %if.end113.out_crit_edge ], [ -90, %if.then23.out_crit_edge ], [ -90, %if.then31.out_crit_edge ], [ -90, %if.end22.i.out_crit_edge ], [ -90, %if.then39.out_crit_edge ]
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrm_smark_put(ptr noundef %skb, ptr nocapture noundef readonly %m) unnamed_addr #2 align 64 {
entry:
  %tmp.i13 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m, align 4
  %m1 = getelementptr inbounds %struct.xfrm_mark, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %m1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m1, align 4
  %or = or i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 29, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %m1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %m1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i13) #16
  %7 = ptrtoint ptr %tmp.i13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i13, align 4
  %call.i14 = call i32 @nla_put(ptr noundef %skb, i32 noundef 30, i32 noundef 4, ptr noundef nonnull %tmp.i13) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i13) #16
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then.if.end7_crit_edge ], [ %call.i14, %if.then4 ], [ 0, %entry.if.end7_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_user_offload(ptr nocapture noundef readonly %xso, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nla_reserve(ptr noundef %skb, i32 noundef 28, i32 noundef 8) #16
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %call, i32 4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %add.ptr.i, align 4
  %1 = ptrtoint ptr %xso to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xso, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifindex, align 4
  store i32 %4, ptr %add.ptr.i, align 4
  %flags = getelementptr inbounds %struct.xfrm_state_offload, ptr %xso, i32 0, i32 5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 4
  %flags3 = getelementptr i8, ptr %call, i32 8
  %7 = ptrtoint ptr %flags3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %flags3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_sec_ctx(ptr nocapture noundef readonly %s, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_len = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ctx_len, align 2
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 8
  %call = tail call ptr @nla_reserve(ptr noundef %skb, i32 noundef 8, i32 noundef %add) #16
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %call, i32 4
  %exttype = getelementptr i8, ptr %call, i32 6
  %2 = ptrtoint ptr %exttype to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 8, ptr %exttype, align 2
  %conv3 = trunc i32 %add to i16
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv3, ptr %add.ptr.i, align 2
  %4 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s, align 4
  %ctx_doi4 = getelementptr i8, ptr %call, i32 9
  %6 = ptrtoint ptr %ctx_doi4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %ctx_doi4, align 1
  %ctx_alg = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %s, i32 0, i32 1
  %7 = ptrtoint ptr %ctx_alg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctx_alg, align 1
  %ctx_alg5 = getelementptr i8, ptr %call, i32 8
  %9 = ptrtoint ptr %ctx_alg5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %ctx_alg5, align 2
  %10 = ptrtoint ptr %ctx_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ctx_len, align 2
  %ctx_len7 = getelementptr i8, ptr %call, i32 10
  %12 = ptrtoint ptr %ctx_len7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %ctx_len7, align 2
  %add.ptr = getelementptr i8, ptr %call, i32 12
  %ctx_str = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %s, i32 0, i32 4
  %13 = load i16, ptr %ctx_len, align 2
  %conv9 = zext i16 %13 to i32
  %14 = call ptr @memcpy(ptr %add.ptr, ptr %ctx_str, i32 %conv9)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_get_acqseq() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_to_user_tmpl(ptr nocapture noundef readonly %xp, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  %vec = alloca [6 x %struct.xfrm_user_tmpl], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %vec) #16
  %0 = call ptr @memset(ptr %vec, i32 255, i32 384)
  %xfrm_nr = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 21
  %1 = ptrtoint ptr %xfrm_nr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %xfrm_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %conv3 = zext i8 %2 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.044 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.xfrm_user_tmpl], ptr %vec, i32 0, i32 %i.044
  %arrayidx6 = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044
  %3 = getelementptr i8, ptr %arrayidx, i32 24
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx6, i32 24)
  %encap_family = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 2
  %6 = ptrtoint ptr %encap_family to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %encap_family, align 4
  %family = getelementptr [6 x %struct.xfrm_user_tmpl], ptr %vec, i32 0, i32 %i.044, i32 1
  %8 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %family, align 4
  %saddr = getelementptr [6 x %struct.xfrm_user_tmpl], ptr %vec, i32 0, i32 %i.044, i32 2
  %saddr8 = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 1
  %9 = call ptr @memcpy(ptr %saddr, ptr %saddr8, i32 16)
  %reqid = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 3
  %10 = ptrtoint ptr %reqid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reqid, align 4
  %reqid9 = getelementptr [6 x %struct.xfrm_user_tmpl], ptr %vec, i32 0, i32 %i.044, i32 3
  %12 = ptrtoint ptr %reqid9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %reqid9, align 4
  %mode = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 4
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mode, align 4
  %mode10 = getelementptr [6 x %struct.xfrm_user_tmpl], ptr %vec, i32 0, i32 %i.044, i32 4
  %15 = ptrtoint ptr %mode10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %mode10, align 4
  %share = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 5
  %16 = ptrtoint ptr %share to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %share, align 1
  %share11 = getelementptr [6 x %struct.xfrm_user_tmpl], ptr %vec, i32 0, i32 %i.044, i32 5
  %18 = ptrtoint ptr %share11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %share11, align 1
  %optional = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 6
  %19 = ptrtoint ptr %optional to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %optional, align 2
  %optional12 = getelementptr [6 x %struct.xfrm_user_tmpl], ptr %vec, i32 0, i32 %i.044, i32 6
  %21 = ptrtoint ptr %optional12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %optional12, align 2
  %aalgos = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 8
  %22 = ptrtoint ptr %aalgos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aalgos, align 4
  %aalgos13 = getelementptr [6 x %struct.xfrm_user_tmpl], ptr %vec, i32 0, i32 %i.044, i32 7
  %24 = ptrtoint ptr %aalgos13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %aalgos13, align 4
  %ealgos = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 9
  %25 = ptrtoint ptr %ealgos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ealgos, align 4
  %ealgos14 = getelementptr [6 x %struct.xfrm_user_tmpl], ptr %vec, i32 0, i32 %i.044, i32 8
  %27 = ptrtoint ptr %ealgos14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ealgos14, align 4
  %calgos = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 10
  %28 = ptrtoint ptr %calgos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %calgos, align 4
  %calgos15 = getelementptr [6 x %struct.xfrm_user_tmpl], ptr %vec, i32 0, i32 %i.044, i32 9
  %30 = ptrtoint ptr %calgos15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %calgos15, align 4
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %conv3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %mul = shl nuw nsw i32 %conv3, 6
  %call = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef %mul, ptr noundef nonnull %vec) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %vec) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_policy_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_templates(ptr nocapture noundef %xp, ptr nocapture noundef readonly %ut, i32 noundef %nr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %nr to i8
  %xfrm_nr = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 21
  %0 = ptrtoint ptr %xfrm_nr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %xfrm_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp43 = icmp sgt i32 %nr, 0
  br i1 %cmp43, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ut.addr.045 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %ut, %entry.for.body_crit_edge ]
  %i.044 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044
  %1 = call ptr @memcpy(ptr %arrayidx, ptr %ut.addr.045, i32 24)
  %saddr = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 1
  %saddr3 = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %saddr, ptr %saddr3, i32 16)
  %reqid = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045, i32 0, i32 3
  %3 = ptrtoint ptr %reqid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqid, align 4
  %reqid4 = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 3
  %5 = ptrtoint ptr %reqid4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %reqid4, align 4
  %mode = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045, i32 0, i32 4
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode, align 4
  %mode5 = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 4
  %8 = ptrtoint ptr %mode5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %mode5, align 4
  %share = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045, i32 0, i32 5
  %9 = ptrtoint ptr %share to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %share, align 1
  %share6 = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 5
  %11 = ptrtoint ptr %share6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %share6, align 1
  %optional = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045, i32 0, i32 6
  %12 = ptrtoint ptr %optional to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %optional, align 2
  %optional7 = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 6
  %14 = ptrtoint ptr %optional7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %optional7, align 2
  %aalgos = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045, i32 0, i32 7
  %15 = ptrtoint ptr %aalgos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %aalgos, align 4
  %aalgos8 = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 8
  %17 = ptrtoint ptr %aalgos8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %aalgos8, align 4
  %ealgos = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045, i32 0, i32 8
  %18 = ptrtoint ptr %ealgos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ealgos, align 4
  %ealgos9 = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 9
  %20 = ptrtoint ptr %ealgos9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ealgos9, align 4
  %calgos = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045, i32 0, i32 9
  %21 = ptrtoint ptr %calgos to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %calgos, align 4
  %calgos10 = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 10
  %23 = ptrtoint ptr %calgos10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %calgos10, align 4
  %and = and i32 %19, %16
  %and14 = and i32 %and, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and14)
  %tobool.not = icmp eq i32 %and14, -1
  %conv15 = zext i1 %tobool.not to i8
  %allalgs = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 7
  %24 = ptrtoint ptr %allalgs to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv15, ptr %allalgs, align 1
  %family = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045, i32 0, i32 1
  %25 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %family, align 4
  %encap_family = getelementptr %struct.xfrm_policy, ptr %xp, i32 0, i32 24, i32 %i.044, i32 2
  %27 = ptrtoint ptr %encap_family to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %encap_family, align 4
  %inc = add nuw nsw i32 %i.044, 1
  %incdec.ptr = getelementptr %struct.xfrm_user_tmpl, ptr %ut.addr.045, i32 1
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_user_net_init(ptr noundef %net) #2 align 64 {
entry:
  %cfg = alloca %struct.netlink_kernel_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg) #16
  %0 = call ptr @memcpy(ptr %cfg, ptr @__const.xfrm_user_net_init.cfg, i32 28)
  %call.i = call ptr @__netlink_kernel_create(ptr noundef %net, i32 noundef 6, ptr noundef null, ptr noundef nonnull %cfg) #16
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %nlsk_stash = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 18
  %1 = ptrtoint ptr %nlsk_stash to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %nlsk_stash, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !77
  %nlsk26 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 17
  %2 = ptrtoint ptr %nlsk26 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call.i, ptr %nlsk26, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm_user_net_pre_exit(ptr noundef %net) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nlsk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 17
  %0 = ptrtoint ptr %nlsk to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr null, ptr %nlsk, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm_user_net_exit(ptr noundef readonly %net_exit_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %net_exit_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn9 = load ptr, ptr %net_exit_list, align 4
  %cmp.not10 = icmp eq ptr %.pn9, %net_exit_list
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn11 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn9, %entry.for.body_crit_edge ]
  %nlsk_stash = getelementptr i8, ptr %.pn11, i32 3560
  %1 = ptrtoint ptr %nlsk_stash to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nlsk_stash, align 4
  tail call void @netlink_kernel_release(ptr noundef %2) #16
  %3 = ptrtoint ptr %.pn11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn11, align 4
  %cmp.not = icmp eq ptr %.pn, %net_exit_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm_netlink_rcv(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %xfrm_cfg_mutex = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 32
  tail call void @mutex_lock_nested(ptr noundef %xfrm_cfg_mutex, i32 noundef 0) #16
  %call1 = tail call i32 @netlink_rcv_skb(ptr noundef %skb, ptr noundef nonnull @xfrm_user_rcv_msg) #16
  tail call void @mutex_unlock(ptr noundef %xfrm_cfg_mutex) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_user_rcv_msg(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack) #2 align 64 {
entry:
  %attrs = alloca [33 x ptr], align 4
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %attrs) #16
  %5 = call ptr @memset(ptr %attrs, i32 255, i32 132)
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %6 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nlmsg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %7)
  %cmp = icmp ugt i16 %7, 40
  br i1 %cmp, label %entry.cleanup66_crit_edge, label %if.end

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup66

if.end:                                           ; preds = %entry
  %conv = zext i16 %7 to i32
  %sub = add nsw i32 %conv, -16
  %arrayidx = getelementptr [25 x %struct.xfrm_link], ptr @xfrm_dispatch, i32 0, i32 %sub
  %call2 = tail call zeroext i1 @netlink_net_capable(ptr noundef %skb, i32 noundef 12) #16
  br i1 %call2, label %if.end4, label %if.end.cleanup66_crit_edge

if.end.cleanup66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup66

if.end4:                                          ; preds = %if.end
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %7, label %if.end4.if.end36_crit_edge [
    i16 18, label %if.end4.land.lhs.true_crit_edge
    i16 21, label %if.end4.land.lhs.true_crit_edge111
  ]

if.end4.land.lhs.true_crit_edge111:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end4.land.lhs.true_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end4.if.end36_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end4.land.lhs.true_crit_edge, %if.end4.land.lhs.true_crit_edge111
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 2
  %9 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nlmsg_flags, align 2
  %11 = and i16 %10, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool24.not = icmp eq i16 %11, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end36_crit_edge, label %if.then25

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then25:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #16
  %12 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 1
  %13 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 2
  %14 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 3
  %15 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 5
  %start26 = getelementptr [25 x %struct.xfrm_link], ptr @xfrm_dispatch, i32 0, i32 %sub, i32 1
  %16 = ptrtoint ptr %start26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %start26, align 4
  %18 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %c, align 4
  %dump27 = getelementptr [25 x %struct.xfrm_link], ptr @xfrm_dispatch, i32 0, i32 %sub, i32 2
  %19 = ptrtoint ptr %dump27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dump27, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %12, align 4
  %done28 = getelementptr [25 x %struct.xfrm_link], ptr @xfrm_dispatch, i32 0, i32 %sub, i32 3
  %22 = ptrtoint ptr %done28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %done28, align 4
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %13, align 4
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %14, align 4
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %15, align 4
  %27 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %7, label %if.then25.cleanup35_crit_edge [
    i16 21, label %if.then25.netlink_dump_start.exit_crit_edge
    i16 18, label %if.then25.netlink_dump_start.exit_crit_edge112
  ]

if.then25.netlink_dump_start.exit_crit_edge112:   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %netlink_dump_start.exit

if.then25.netlink_dump_start.exit_crit_edge:      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %netlink_dump_start.exit

if.then25.cleanup35_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup35

netlink_dump_start.exit:                          ; preds = %if.then25.netlink_dump_start.exit_crit_edge, %if.then25.netlink_dump_start.exit_crit_edge112
  %28 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 17
  %29 = ptrtoint ptr %nlsk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nlsk, align 8
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %28, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %30, ptr noundef %skb, ptr noundef %nlh, ptr noundef nonnull %c) #16
  br label %cleanup35

cleanup35:                                        ; preds = %netlink_dump_start.exit, %if.then25.cleanup35_crit_edge
  %err.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ -22, %if.then25.cleanup35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #16
  br label %err65

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end4.if.end36_crit_edge
  %arrayidx37 = getelementptr [25 x i32], ptr @xfrm_msg_min, i32 0, i32 %sub
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx37, align 4
  %34 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nlh, align 4
  %add.i.i.i = add i32 %33, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add.i.i.i)
  %cmp.i.i = icmp ult i32 %35, %add.i.i.i
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %if.end36
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #16
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.err65_crit_edge, label %if.then1.i.i

do.body.i.i.err65_crit_edge:                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err65

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %err65

nlmsg_parse_deprecated.exit:                      ; preds = %if.end36
  %37 = and i32 %sub, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %37)
  %tobool39.not.not = icmp eq i32 %37, 20
  %nla_pol40 = getelementptr [25 x %struct.xfrm_link], ptr @xfrm_dispatch, i32 0, i32 %sub, i32 4
  %38 = ptrtoint ptr %nla_pol40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nla_pol40, align 4
  %cond45 = select i1 %tobool39.not.not, ptr %39, ptr @xfrma_policy
  %nla_max38 = getelementptr [25 x %struct.xfrm_link], ptr @xfrm_dispatch, i32 0, i32 %sub, i32 5
  %40 = ptrtoint ptr %nla_max38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nla_max38, align 4
  %. = select i1 %tobool39.not.not, i32 %41, i32 32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %nlh, i32 16
  %sub.i.i.i = add i32 %33, 3
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %and.i.i.i
  %sub.i.i.i.i = add i32 %35, -16
  %sub1.i.i.i = sub i32 %sub.i.i.i.i, %and.i.i.i
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef %., ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef %cond45, i32 noundef 0, ptr noundef %extack) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp47 = icmp slt i32 %call5.i.i, 0
  br i1 %cmp47, label %nlmsg_parse_deprecated.exit.err65_crit_edge, label %if.end50

nlmsg_parse_deprecated.exit.err65_crit_edge:      ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err65

if.end50:                                         ; preds = %nlmsg_parse_deprecated.exit
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %cmp51 = icmp eq ptr %43, null
  br i1 %cmp51, label %if.end50.err65_crit_edge, label %if.end54

if.end50.err65_crit_edge:                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %err65

if.end54:                                         ; preds = %if.end50
  %call57 = call i32 %43(ptr noundef %skb, ptr noundef %nlh, ptr noundef nonnull %attrs) #16
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %44 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %frag_list.i, align 8
  %cmp.i.not = icmp eq ptr %47, null
  br i1 %cmp.i.not, label %if.end54.err65_crit_edge, label %if.then59

if.end54.err65_crit_edge:                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %err65

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %47, i32 noundef 0) #16
  %48 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i.i, align 4
  %frag_list62 = getelementptr inbounds %struct.skb_shared_info, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %frag_list62 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %frag_list62, align 8
  br label %err65

err65:                                            ; preds = %if.then59, %if.end54.err65_crit_edge, %if.end50.err65_crit_edge, %nlmsg_parse_deprecated.exit.err65_crit_edge, %if.then1.i.i, %do.body.i.i.err65_crit_edge, %cleanup35
  %err.1 = phi i32 [ %err.0, %cleanup35 ], [ %call5.i.i, %nlmsg_parse_deprecated.exit.err65_crit_edge ], [ %call57, %if.then59 ], [ %call57, %if.end54.err65_crit_edge ], [ -22, %if.end50.err65_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.err65_crit_edge ]
  call void @kvfree(ptr noundef null) #16
  br label %cleanup66

cleanup66:                                        ; preds = %err65, %if.end.cleanup66_crit_edge, %entry.cleanup66_crit_edge
  %retval.2 = phi i32 [ %err.1, %err65 ], [ -22, %entry.cleanup66_crit_edge ], [ -1, %if.end.cleanup66_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %attrs) #16
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_net_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_add_sa(ptr nocapture noundef readonly %skb, ptr noundef readonly %nlh, ptr noundef readonly %attrs) #2 align 64 {
entry:
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #16
  %5 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %6 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %7 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %family.i = getelementptr i8, ptr %nlh, i32 228
  %8 = call ptr @memset(ptr %c, i32 255, i32 20)
  %9 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %family.i, align 4
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %10, label %entry.cleanup_crit_edge [
    i16 2, label %entry.sw.epilog.i_crit_edge
    i16 10, label %entry.sw.epilog.i_crit_edge116
  ]

entry.sw.epilog.i_crit_edge116:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog.i:                                      ; preds = %entry.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge116
  %family1.i = getelementptr i8, ptr %nlh, i32 56
  %12 = ptrtoint ptr %family1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %family1.i, align 8
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %13, label %sw.epilog.i.cleanup_crit_edge [
    i16 0, label %sw.epilog.i.sw.epilog25.i_crit_edge
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb10.i
  ]

sw.epilog.i.sw.epilog25.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog25.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.epilog.i
  %prefixlen_d.i = getelementptr i8, ptr %nlh, i32 58
  %15 = ptrtoint ptr %prefixlen_d.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %prefixlen_d.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %16)
  %cmp.i = icmp ugt i8 %16, 32
  br i1 %cmp.i, label %sw.bb.i.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %prefixlen_s.i = getelementptr i8, ptr %nlh, i32 59
  %17 = ptrtoint ptr %prefixlen_s.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %prefixlen_s.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %18)
  %cmp8.i = icmp ugt i8 %18, 32
  br i1 %cmp8.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.sw.epilog25.i_crit_edge

lor.lhs.false.i.sw.epilog25.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog25.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb10.i:                                        ; preds = %sw.epilog.i
  %prefixlen_d12.i = getelementptr i8, ptr %nlh, i32 58
  %19 = ptrtoint ptr %prefixlen_d12.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %prefixlen_d12.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %20)
  %cmp14.i = icmp ugt i8 %20, -128
  br i1 %cmp14.i, label %sw.bb10.i.cleanup_crit_edge, label %lor.lhs.false16.i

sw.bb10.i.cleanup_crit_edge:                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false16.i:                                ; preds = %sw.bb10.i
  %prefixlen_s18.i = getelementptr i8, ptr %nlh, i32 59
  %21 = ptrtoint ptr %prefixlen_s18.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %prefixlen_s18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %22)
  %cmp20.i = icmp ugt i8 %22, -128
  br i1 %cmp20.i, label %lor.lhs.false16.i.cleanup_crit_edge, label %lor.lhs.false16.i.sw.epilog25.i_crit_edge

lor.lhs.false16.i.sw.epilog25.i_crit_edge:        ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog25.i

lor.lhs.false16.i.cleanup_crit_edge:              ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog25.i:                                    ; preds = %lor.lhs.false16.i.sw.epilog25.i_crit_edge, %lor.lhs.false.i.sw.epilog25.i_crit_edge, %sw.epilog.i.sw.epilog25.i_crit_edge
  %proto.i = getelementptr i8, ptr %nlh, i32 92
  %23 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %proto.i, align 4
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %24, label %sw.epilog25.i.cleanup_crit_edge [
    i8 51, label %sw.bb27.i
    i8 50, label %sw.bb44.i
    i8 108, label %sw.bb83.i
    i8 60, label %sw.epilog25.i.sw.bb107.i_crit_edge
    i8 43, label %sw.epilog25.i.sw.bb107.i_crit_edge117
  ]

sw.epilog25.i.sw.bb107.i_crit_edge117:            ; preds = %sw.epilog25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb107.i

sw.epilog25.i.sw.bb107.i_crit_edge:               ; preds = %sw.epilog25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb107.i

sw.epilog25.i.cleanup_crit_edge:                  ; preds = %sw.epilog25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb27.i:                                        ; preds = %sw.epilog25.i
  %arrayidx.i = getelementptr ptr, ptr %attrs, i32 1
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %sw.bb27.i.lor.lhs.false30.i_crit_edge

sw.bb27.i.lor.lhs.false30.i_crit_edge:            ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false30.i

land.lhs.true.i:                                  ; preds = %sw.bb27.i
  %arrayidx28.i = getelementptr ptr, ptr %attrs, i32 20
  %28 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx28.i, align 4
  %tobool29.not.i = icmp eq ptr %29, null
  br i1 %tobool29.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.lor.lhs.false30.i_crit_edge

land.lhs.true.i.lor.lhs.false30.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false30.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false30.i:                                ; preds = %land.lhs.true.i.lor.lhs.false30.i_crit_edge, %sw.bb27.i.lor.lhs.false30.i_crit_edge
  %arrayidx31.i = getelementptr ptr, ptr %attrs, i32 18
  %30 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx31.i, align 4
  %tobool32.not.i = icmp eq ptr %31, null
  br i1 %tobool32.not.i, label %lor.lhs.false33.i, label %lor.lhs.false30.i.cleanup_crit_edge

lor.lhs.false30.i.cleanup_crit_edge:              ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false33.i:                                ; preds = %lor.lhs.false30.i
  %arrayidx34.i = getelementptr ptr, ptr %attrs, i32 2
  %32 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx34.i, align 4
  %tobool35.not.i = icmp eq ptr %33, null
  br i1 %tobool35.not.i, label %lor.lhs.false36.i, label %lor.lhs.false33.i.cleanup_crit_edge

lor.lhs.false33.i.cleanup_crit_edge:              ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false36.i:                                ; preds = %lor.lhs.false33.i
  %arrayidx37.i = getelementptr ptr, ptr %attrs, i32 3
  %34 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx37.i, align 4
  %tobool38.not.i = icmp eq ptr %35, null
  br i1 %tobool38.not.i, label %lor.lhs.false39.i, label %lor.lhs.false36.i.cleanup_crit_edge

lor.lhs.false36.i.cleanup_crit_edge:              ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false39.i:                                ; preds = %lor.lhs.false36.i
  %arrayidx40.i = getelementptr ptr, ptr %attrs, i32 22
  %36 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx40.i, align 4
  %tobool41.not.i = icmp eq ptr %37, null
  br i1 %tobool41.not.i, label %lor.lhs.false39.i.sw.epilog137.i_crit_edge, label %lor.lhs.false39.i.cleanup_crit_edge

lor.lhs.false39.i.cleanup_crit_edge:              ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false39.i.sw.epilog137.i_crit_edge:       ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog137.i

sw.bb44.i:                                        ; preds = %sw.epilog25.i
  %arrayidx45.i = getelementptr ptr, ptr %attrs, i32 3
  %38 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx45.i, align 4
  %tobool46.not.i = icmp eq ptr %39, null
  br i1 %tobool46.not.i, label %if.end48.i, label %sw.bb44.i.cleanup_crit_edge

sw.bb44.i.cleanup_crit_edge:                      ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end48.i:                                       ; preds = %sw.bb44.i
  %arrayidx49.i = getelementptr ptr, ptr %attrs, i32 1
  %40 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx49.i, align 4
  %tobool50.not.i = icmp eq ptr %41, null
  br i1 %tobool50.not.i, label %land.lhs.true51.i, label %if.end48.i.land.lhs.true70.i_crit_edge

if.end48.i.land.lhs.true70.i_crit_edge:           ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true70.i

land.lhs.true51.i:                                ; preds = %if.end48.i
  %arrayidx52.i = getelementptr ptr, ptr %attrs, i32 20
  %42 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx52.i, align 4
  %tobool53.not.i = icmp eq ptr %43, null
  br i1 %tobool53.not.i, label %land.lhs.true54.i, label %land.lhs.true51.i.land.lhs.true70.i_crit_edge

land.lhs.true51.i.land.lhs.true70.i_crit_edge:    ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true70.i

land.lhs.true54.i:                                ; preds = %land.lhs.true51.i
  %arrayidx55.i = getelementptr ptr, ptr %attrs, i32 2
  %44 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx55.i, align 4
  %tobool56.not.i = icmp eq ptr %45, null
  br i1 %tobool56.not.i, label %land.lhs.true57.i, label %land.lhs.true54.i.land.lhs.true70.i_crit_edge

land.lhs.true54.i.land.lhs.true70.i_crit_edge:    ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true70.i

land.lhs.true57.i:                                ; preds = %land.lhs.true54.i
  %arrayidx58.i = getelementptr ptr, ptr %attrs, i32 18
  %46 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx58.i, align 4
  %tobool59.not.i = icmp eq ptr %47, null
  br i1 %tobool59.not.i, label %land.lhs.true57.i.cleanup_crit_edge, label %land.lhs.true57.i.if.end74.i_crit_edge

land.lhs.true57.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74.i

land.lhs.true57.i.cleanup_crit_edge:              ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true70.i:                                ; preds = %land.lhs.true54.i.land.lhs.true70.i_crit_edge, %land.lhs.true51.i.land.lhs.true70.i_crit_edge, %if.end48.i.land.lhs.true70.i_crit_edge
  %arrayidx71.i = getelementptr ptr, ptr %attrs, i32 18
  %48 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx71.i, align 4
  %tobool72.not.i = icmp eq ptr %49, null
  br i1 %tobool72.not.i, label %land.lhs.true70.i.if.end74.i_crit_edge, label %land.lhs.true70.i.cleanup_crit_edge

land.lhs.true70.i.cleanup_crit_edge:              ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true70.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74.i

if.end74.i:                                       ; preds = %land.lhs.true70.i.if.end74.i_crit_edge, %land.lhs.true57.i.if.end74.i_crit_edge
  %arrayidx75.i = getelementptr ptr, ptr %attrs, i32 22
  %50 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx75.i, align 4
  %tobool76.not.i = icmp eq ptr %51, null
  br i1 %tobool76.not.i, label %if.end74.i.sw.epilog137.i_crit_edge, label %land.lhs.true77.i

if.end74.i.sw.epilog137.i_crit_edge:              ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog137.i

land.lhs.true77.i:                                ; preds = %if.end74.i
  %mode.i = getelementptr i8, ptr %nlh, i32 230
  %52 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp79.not.i = icmp eq i8 %53, 1
  br i1 %cmp79.not.i, label %land.lhs.true77.i.sw.epilog137.i_crit_edge, label %land.lhs.true77.i.cleanup_crit_edge

land.lhs.true77.i.cleanup_crit_edge:              ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true77.i.sw.epilog137.i_crit_edge:       ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog137.i

sw.bb83.i:                                        ; preds = %sw.epilog25.i
  %arrayidx84.i = getelementptr ptr, ptr %attrs, i32 3
  %54 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx84.i, align 4
  %tobool85.not.i = icmp eq ptr %55, null
  br i1 %tobool85.not.i, label %sw.bb83.i.cleanup_crit_edge, label %lor.lhs.false86.i

sw.bb83.i.cleanup_crit_edge:                      ; preds = %sw.bb83.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false86.i:                                ; preds = %sw.bb83.i
  %arrayidx87.i = getelementptr ptr, ptr %attrs, i32 18
  %56 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx87.i, align 4
  %tobool88.not.i = icmp eq ptr %57, null
  br i1 %tobool88.not.i, label %lor.lhs.false89.i, label %lor.lhs.false86.i.cleanup_crit_edge

lor.lhs.false86.i.cleanup_crit_edge:              ; preds = %lor.lhs.false86.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false89.i:                                ; preds = %lor.lhs.false86.i
  %arrayidx90.i = getelementptr ptr, ptr %attrs, i32 1
  %58 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx90.i, align 4
  %tobool91.not.i = icmp eq ptr %59, null
  br i1 %tobool91.not.i, label %lor.lhs.false92.i, label %lor.lhs.false89.i.cleanup_crit_edge

lor.lhs.false89.i.cleanup_crit_edge:              ; preds = %lor.lhs.false89.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false92.i:                                ; preds = %lor.lhs.false89.i
  %arrayidx93.i = getelementptr ptr, ptr %attrs, i32 20
  %60 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx93.i, align 4
  %tobool94.not.i = icmp eq ptr %61, null
  br i1 %tobool94.not.i, label %lor.lhs.false95.i, label %lor.lhs.false92.i.cleanup_crit_edge

lor.lhs.false92.i.cleanup_crit_edge:              ; preds = %lor.lhs.false92.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false95.i:                                ; preds = %lor.lhs.false92.i
  %arrayidx96.i = getelementptr ptr, ptr %attrs, i32 2
  %62 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx96.i, align 4
  %tobool97.not.i = icmp eq ptr %63, null
  br i1 %tobool97.not.i, label %lor.lhs.false98.i, label %lor.lhs.false95.i.cleanup_crit_edge

lor.lhs.false95.i.cleanup_crit_edge:              ; preds = %lor.lhs.false95.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false98.i:                                ; preds = %lor.lhs.false95.i
  %arrayidx99.i = getelementptr ptr, ptr %attrs, i32 22
  %64 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx99.i, align 4
  %tobool100.not.i = icmp eq ptr %65, null
  br i1 %tobool100.not.i, label %lor.lhs.false101.i, label %lor.lhs.false98.i.cleanup_crit_edge

lor.lhs.false98.i.cleanup_crit_edge:              ; preds = %lor.lhs.false98.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false101.i:                               ; preds = %lor.lhs.false98.i
  %spi.i = getelementptr i8, ptr %nlh, i32 88
  %66 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %spi.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %67)
  %cmp103.i = icmp ugt i32 %67, 65535
  br i1 %cmp103.i, label %lor.lhs.false101.i.cleanup_crit_edge, label %lor.lhs.false101.i.sw.epilog137.i_crit_edge

lor.lhs.false101.i.sw.epilog137.i_crit_edge:      ; preds = %lor.lhs.false101.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog137.i

lor.lhs.false101.i.cleanup_crit_edge:             ; preds = %lor.lhs.false101.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb107.i:                                       ; preds = %sw.epilog25.i.sw.bb107.i_crit_edge, %sw.epilog25.i.sw.bb107.i_crit_edge117
  %arrayidx108.i = getelementptr ptr, ptr %attrs, i32 3
  %68 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx108.i, align 4
  %tobool109.not.i = icmp eq ptr %69, null
  br i1 %tobool109.not.i, label %lor.lhs.false110.i, label %sw.bb107.i.cleanup_crit_edge

sw.bb107.i.cleanup_crit_edge:                     ; preds = %sw.bb107.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false110.i:                               ; preds = %sw.bb107.i
  %arrayidx111.i = getelementptr ptr, ptr %attrs, i32 1
  %70 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx111.i, align 4
  %tobool112.not.i = icmp eq ptr %71, null
  br i1 %tobool112.not.i, label %lor.lhs.false113.i, label %lor.lhs.false110.i.cleanup_crit_edge

lor.lhs.false110.i.cleanup_crit_edge:             ; preds = %lor.lhs.false110.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false113.i:                               ; preds = %lor.lhs.false110.i
  %arrayidx114.i = getelementptr ptr, ptr %attrs, i32 20
  %72 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx114.i, align 4
  %tobool115.not.i = icmp eq ptr %73, null
  br i1 %tobool115.not.i, label %lor.lhs.false116.i, label %lor.lhs.false113.i.cleanup_crit_edge

lor.lhs.false113.i.cleanup_crit_edge:             ; preds = %lor.lhs.false113.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false116.i:                               ; preds = %lor.lhs.false113.i
  %arrayidx117.i = getelementptr ptr, ptr %attrs, i32 18
  %74 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx117.i, align 4
  %tobool118.not.i = icmp eq ptr %75, null
  br i1 %tobool118.not.i, label %lor.lhs.false119.i, label %lor.lhs.false116.i.cleanup_crit_edge

lor.lhs.false116.i.cleanup_crit_edge:             ; preds = %lor.lhs.false116.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false119.i:                               ; preds = %lor.lhs.false116.i
  %arrayidx120.i = getelementptr ptr, ptr %attrs, i32 2
  %76 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx120.i, align 4
  %tobool121.not.i = icmp eq ptr %77, null
  br i1 %tobool121.not.i, label %lor.lhs.false122.i, label %lor.lhs.false119.i.cleanup_crit_edge

lor.lhs.false119.i.cleanup_crit_edge:             ; preds = %lor.lhs.false119.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false122.i:                               ; preds = %lor.lhs.false119.i
  %arrayidx123.i = getelementptr ptr, ptr %attrs, i32 4
  %78 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx123.i, align 4
  %tobool124.not.i = icmp eq ptr %79, null
  br i1 %tobool124.not.i, label %lor.lhs.false125.i, label %lor.lhs.false122.i.cleanup_crit_edge

lor.lhs.false122.i.cleanup_crit_edge:             ; preds = %lor.lhs.false122.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false125.i:                               ; preds = %lor.lhs.false122.i
  %arrayidx126.i = getelementptr ptr, ptr %attrs, i32 8
  %80 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx126.i, align 4
  %tobool127.not.i = icmp eq ptr %81, null
  br i1 %tobool127.not.i, label %lor.lhs.false128.i, label %lor.lhs.false125.i.cleanup_crit_edge

lor.lhs.false125.i.cleanup_crit_edge:             ; preds = %lor.lhs.false125.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false128.i:                               ; preds = %lor.lhs.false125.i
  %arrayidx129.i = getelementptr ptr, ptr %attrs, i32 22
  %82 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx129.i, align 4
  %tobool130.not.i = icmp eq ptr %83, null
  br i1 %tobool130.not.i, label %lor.lhs.false131.i, label %lor.lhs.false128.i.cleanup_crit_edge

lor.lhs.false128.i.cleanup_crit_edge:             ; preds = %lor.lhs.false128.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false131.i:                               ; preds = %lor.lhs.false128.i
  %arrayidx132.i = getelementptr ptr, ptr %attrs, i32 14
  %84 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx132.i, align 4
  %tobool133.not.i = icmp eq ptr %85, null
  br i1 %tobool133.not.i, label %lor.lhs.false131.i.cleanup_crit_edge, label %lor.lhs.false131.i.sw.epilog137.i_crit_edge

lor.lhs.false131.i.sw.epilog137.i_crit_edge:      ; preds = %lor.lhs.false131.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog137.i

lor.lhs.false131.i.cleanup_crit_edge:             ; preds = %lor.lhs.false131.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog137.i:                                   ; preds = %lor.lhs.false131.i.sw.epilog137.i_crit_edge, %lor.lhs.false101.i.sw.epilog137.i_crit_edge, %land.lhs.true77.i.sw.epilog137.i_crit_edge, %if.end74.i.sw.epilog137.i_crit_edge, %lor.lhs.false39.i.sw.epilog137.i_crit_edge
  %arrayidx.i.i = getelementptr ptr, ptr %attrs, i32 18
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i, label %sw.epilog137.i.if.end140.i_crit_edge, label %if.end.i.i

sw.epilog137.i.if.end140.i_crit_edge:             ; preds = %sw.epilog137.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140.i

if.end.i.i:                                       ; preds = %sw.epilog137.i
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %87, align 2
  %conv.i.i.i = zext i16 %89 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %alg_key_len.i.i.i = getelementptr i8, ptr %87, i32 68
  %90 = ptrtoint ptr %alg_key_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %alg_key_len.i.i.i, align 4
  %add.i.i.i = add i32 %91, 7
  %div2.i.i.i = lshr i32 %add.i.i.i, 3
  %add1.i.i.i = add nuw nsw i32 %div2.i.i.i, 72
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %add1.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, %add1.i.i.i
  br i1 %cmp.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx5.i.i = getelementptr i8, ptr %87, i32 67
  %92 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx5.i.i, align 1
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.end4.i.i, %sw.epilog137.i.if.end140.i_crit_edge
  %arrayidx.i227.i = getelementptr ptr, ptr %attrs, i32 20
  %93 = ptrtoint ptr %arrayidx.i227.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i227.i, align 4
  %tobool.not.i228.i = icmp eq ptr %94, null
  br i1 %tobool.not.i228.i, label %if.end140.i.if.end144.i_crit_edge, label %if.end.i236.i

if.end140.i.if.end144.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end144.i

if.end.i236.i:                                    ; preds = %if.end140.i
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %94, align 2
  %conv.i.i229.i = zext i16 %96 to i32
  %sub.i.i230.i = add nsw i32 %conv.i.i229.i, -4
  %alg_key_len.i.i231.i = getelementptr i8, ptr %94, i32 68
  %97 = ptrtoint ptr %alg_key_len.i.i231.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %alg_key_len.i.i231.i, align 4
  %add.i.i232.i = add i32 %98, 7
  %div2.i.i233.i = lshr i32 %add.i.i232.i, 3
  %add1.i.i234.i = add nuw nsw i32 %div2.i.i233.i, 72
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i230.i, i32 %add1.i.i234.i)
  %cmp.i235.i = icmp slt i32 %sub.i.i230.i, %add1.i.i234.i
  br i1 %cmp.i235.i, label %if.end.i236.i.cleanup_crit_edge, label %if.end4.i238.i

if.end.i236.i.cleanup_crit_edge:                  ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4.i238.i:                                   ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx5.i237.i = getelementptr i8, ptr %94, i32 67
  %99 = ptrtoint ptr %arrayidx5.i237.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %arrayidx5.i237.i, align 1
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.end4.i238.i, %if.end140.i.if.end144.i_crit_edge
  %arrayidx.i240.i = getelementptr ptr, ptr %attrs, i32 1
  %100 = ptrtoint ptr %arrayidx.i240.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i240.i, align 4
  %tobool.not.i241.i = icmp eq ptr %101, null
  br i1 %tobool.not.i241.i, label %if.end144.i.if.end148.i_crit_edge, label %if.end.i249.i

if.end144.i.if.end148.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end148.i

if.end.i249.i:                                    ; preds = %if.end144.i
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %101, align 2
  %conv.i.i242.i = zext i16 %103 to i32
  %sub.i.i243.i = add nsw i32 %conv.i.i242.i, -4
  %alg_key_len.i.i244.i = getelementptr i8, ptr %101, i32 68
  %104 = ptrtoint ptr %alg_key_len.i.i244.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %alg_key_len.i.i244.i, align 4
  %add.i.i245.i = add i32 %105, 7
  %div2.i.i246.i = lshr i32 %add.i.i245.i, 3
  %add1.i.i247.i = add nuw nsw i32 %div2.i.i246.i, 68
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i243.i, i32 %add1.i.i247.i)
  %cmp.i248.not.i = icmp slt i32 %sub.i.i243.i, %add1.i.i247.i
  br i1 %cmp.i248.not.i, label %if.end.i249.i.cleanup_crit_edge, label %sw.epilog.i.i

if.end.i249.i.cleanup_crit_edge:                  ; preds = %if.end.i249.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog.i.i:                                    ; preds = %if.end.i249.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx5.i250.i = getelementptr i8, ptr %101, i32 67
  %106 = ptrtoint ptr %arrayidx5.i250.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %arrayidx5.i250.i, align 1
  br label %if.end148.i

if.end148.i:                                      ; preds = %sw.epilog.i.i, %if.end144.i.if.end148.i_crit_edge
  %arrayidx.i252.i = getelementptr ptr, ptr %attrs, i32 2
  %107 = ptrtoint ptr %arrayidx.i252.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i252.i, align 4
  %tobool.not.i253.i = icmp eq ptr %108, null
  br i1 %tobool.not.i253.i, label %if.end148.i.if.end152.i_crit_edge, label %if.end.i261.i

if.end148.i.if.end152.i_crit_edge:                ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end152.i

if.end.i261.i:                                    ; preds = %if.end148.i
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %108, align 2
  %conv.i.i254.i = zext i16 %110 to i32
  %sub.i.i255.i = add nsw i32 %conv.i.i254.i, -4
  %alg_key_len.i.i256.i = getelementptr i8, ptr %108, i32 68
  %111 = ptrtoint ptr %alg_key_len.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %alg_key_len.i.i256.i, align 4
  %add.i.i257.i = add i32 %112, 7
  %div2.i.i258.i = lshr i32 %add.i.i257.i, 3
  %add1.i.i259.i = add nuw nsw i32 %div2.i.i258.i, 68
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i255.i, i32 %add1.i.i259.i)
  %cmp.i260.not.i = icmp slt i32 %sub.i.i255.i, %add1.i.i259.i
  br i1 %cmp.i260.not.i, label %if.end.i261.i.cleanup_crit_edge, label %sw.epilog.i263.i

if.end.i261.i.cleanup_crit_edge:                  ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog.i263.i:                                 ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx5.i262.i = getelementptr i8, ptr %108, i32 67
  %113 = ptrtoint ptr %arrayidx5.i262.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayidx5.i262.i, align 1
  br label %if.end152.i

if.end152.i:                                      ; preds = %sw.epilog.i263.i, %if.end148.i.if.end152.i_crit_edge
  %arrayidx.i266.i = getelementptr ptr, ptr %attrs, i32 3
  %114 = ptrtoint ptr %arrayidx.i266.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i266.i, align 4
  %tobool.not.i267.i = icmp eq ptr %115, null
  br i1 %tobool.not.i267.i, label %if.end152.i.if.end156.i_crit_edge, label %if.end.i275.i

if.end152.i.if.end156.i_crit_edge:                ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end156.i

if.end.i275.i:                                    ; preds = %if.end152.i
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %115, align 2
  %conv.i.i268.i = zext i16 %117 to i32
  %sub.i.i269.i = add nsw i32 %conv.i.i268.i, -4
  %alg_key_len.i.i270.i = getelementptr i8, ptr %115, i32 68
  %118 = ptrtoint ptr %alg_key_len.i.i270.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %alg_key_len.i.i270.i, align 4
  %add.i.i271.i = add i32 %119, 7
  %div2.i.i272.i = lshr i32 %add.i.i271.i, 3
  %add1.i.i273.i = add nuw nsw i32 %div2.i.i272.i, 68
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i269.i, i32 %add1.i.i273.i)
  %cmp.i274.not.i = icmp slt i32 %sub.i.i269.i, %add1.i.i273.i
  br i1 %cmp.i274.not.i, label %if.end.i275.i.cleanup_crit_edge, label %sw.epilog.i277.i

if.end.i275.i.cleanup_crit_edge:                  ; preds = %if.end.i275.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog.i277.i:                                 ; preds = %if.end.i275.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx5.i276.i = getelementptr i8, ptr %115, i32 67
  %120 = ptrtoint ptr %arrayidx5.i276.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %arrayidx5.i276.i, align 1
  br label %if.end156.i

if.end156.i:                                      ; preds = %sw.epilog.i277.i, %if.end152.i.if.end156.i_crit_edge
  %arrayidx.i280.i = getelementptr ptr, ptr %attrs, i32 8
  %121 = ptrtoint ptr %arrayidx.i280.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i280.i, align 4
  %tobool.not.i281.i = icmp eq ptr %122, null
  br i1 %tobool.not.i281.i, label %if.end156.i.if.end160.i_crit_edge, label %if.end.i285.i

if.end156.i.if.end160.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end160.i

if.end.i285.i:                                    ; preds = %if.end156.i
  %add.ptr.i.i.i = getelementptr i8, ptr %122, i32 4
  %123 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i = zext i16 %124 to i32
  %125 = ptrtoint ptr %122 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %122, align 2
  %conv.i.i282.i = zext i16 %126 to i32
  %sub.i.i283.i = add nsw i32 %conv.i.i282.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i283.i, i32 %conv.i.i)
  %cmp.i284.i = icmp slt i32 %sub.i.i283.i, %conv.i.i
  br i1 %cmp.i284.i, label %if.end.i285.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i285.i.cleanup_crit_edge:                  ; preds = %if.end.i285.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i285.i
  %ctx_len.i.i = getelementptr i8, ptr %122, i32 10
  %127 = ptrtoint ptr %ctx_len.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %ctx_len.i.i, align 2
  %conv5.i.i = zext i16 %128 to i32
  %add.i.i = add nuw nsw i32 %conv5.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i)
  %cmp6.not.i.i = icmp eq i32 %add.i.i, %conv.i.i
  br i1 %cmp6.not.i.i, label %lor.lhs.false.i.i.if.end160.i_crit_edge, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i.i.if.end160.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end160.i

if.end160.i:                                      ; preds = %lor.lhs.false.i.i.if.end160.i_crit_edge, %if.end156.i.if.end160.i_crit_edge
  %call161.i = tail call fastcc i32 @verify_replay(ptr noundef %add.ptr.i, ptr noundef %attrs) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i)
  %tobool162.not.i = icmp eq i32 %call161.i, 0
  br i1 %tobool162.not.i, label %if.end164.i, label %if.end160.i.cleanup_crit_edge

if.end160.i.cleanup_crit_edge:                    ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end164.i:                                      ; preds = %if.end160.i
  %mode165.i = getelementptr i8, ptr %nlh, i32 230
  %129 = ptrtoint ptr %mode165.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %mode165.i, align 2
  %131 = zext i8 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %130, label %if.end164.i.cleanup_crit_edge [
    i8 0, label %if.end164.i.sw.epilog169.i_crit_edge
    i8 1, label %if.end164.i.sw.epilog169.i_crit_edge118
    i8 2, label %if.end164.i.sw.epilog169.i_crit_edge119
    i8 4, label %if.end164.i.sw.epilog169.i_crit_edge120
  ]

if.end164.i.sw.epilog169.i_crit_edge120:          ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog169.i

if.end164.i.sw.epilog169.i_crit_edge119:          ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog169.i

if.end164.i.sw.epilog169.i_crit_edge118:          ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog169.i

if.end164.i.sw.epilog169.i_crit_edge:             ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog169.i

if.end164.i.cleanup_crit_edge:                    ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog169.i:                                   ; preds = %if.end164.i.sw.epilog169.i_crit_edge, %if.end164.i.sw.epilog169.i_crit_edge118, %if.end164.i.sw.epilog169.i_crit_edge119, %if.end164.i.sw.epilog169.i_crit_edge120
  %arrayidx170.i = getelementptr ptr, ptr %attrs, i32 32
  %132 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx170.i, align 4
  %tobool171.not.i = icmp eq ptr %133, null
  br i1 %tobool171.not.i, label %sw.epilog169.i.if.end_crit_edge, label %if.then172.i

sw.epilog169.i.if.end_crit_edge:                  ; preds = %sw.epilog169.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then172.i:                                     ; preds = %sw.epilog169.i
  %arrayidx173.i = getelementptr ptr, ptr %attrs, i32 4
  %134 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx173.i, align 4
  %tobool174.not.i = icmp eq ptr %135, null
  br i1 %tobool174.not.i, label %if.then172.i.cleanup_crit_edge, label %if.then172.i.if.end_crit_edge

if.then172.i.if.end_crit_edge:                    ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then172.i.cleanup_crit_edge:                   ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then172.i.if.end_crit_edge, %sw.epilog169.i.if.end_crit_edge
  %call.i = tail call ptr @xfrm_state_alloc(ptr noundef %4) #16
  %tobool.not.i49 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i49, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %id.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 7
  %id1.i.i = getelementptr i8, ptr %nlh, i32 72
  %136 = call ptr @memcpy(ptr %id.i.i, ptr %id1.i.i, i32 24)
  %sel.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 8
  %137 = call ptr @memcpy(ptr %sel.i.i, ptr %add.ptr.i, i32 56)
  %lft.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 15
  %lft3.i.i = getelementptr i8, ptr %nlh, i32 112
  %138 = call ptr @memcpy(ptr %lft.i.i, ptr %lft3.i.i, i32 64)
  %139 = ptrtoint ptr %mode165.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %mode165.i, align 2
  %props.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14
  %mode4.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 1
  %141 = ptrtoint ptr %mode4.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %mode4.i.i, align 4
  %replay_window.i.i = getelementptr i8, ptr %nlh, i32 231
  %142 = ptrtoint ptr %replay_window.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %replay_window.i.i, align 1
  %144 = tail call i8 @llvm.umin.i8(i8 %143, i8 32) #16
  %replay_window8.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 2
  %145 = ptrtoint ptr %replay_window8.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %replay_window8.i.i, align 1
  %reqid.i.i = getelementptr i8, ptr %nlh, i32 224
  %146 = ptrtoint ptr %reqid.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %reqid.i.i, align 8
  %148 = ptrtoint ptr %props.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %props.i.i, align 4
  %149 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %family.i, align 4
  %family12.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 7
  %151 = ptrtoint ptr %family12.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %family12.i.i, align 2
  %saddr.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 8
  %saddr14.i.i = getelementptr i8, ptr %nlh, i32 96
  %152 = call ptr @memcpy(ptr %saddr.i.i, ptr %saddr14.i.i, i32 16)
  %flags.i.i = getelementptr i8, ptr %nlh, i32 232
  %153 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %flags.i.i, align 8
  %flags16.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 6
  %155 = ptrtoint ptr %flags16.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %flags16.i.i, align 1
  %family18.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 8, i32 6
  %156 = ptrtoint ptr %family18.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %family18.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %tobool.not.i.i50 = icmp eq i16 %157, 0
  br i1 %tobool.not.i.i50, label %land.lhs.true.i.i, label %if.end.i.copy_from_user_state.exit.i_crit_edge

if.end.i.copy_from_user_state.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_from_user_state.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %158 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %flags.i.i, align 8
  %160 = and i8 %159, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool21.not.i.i = icmp eq i8 %160, 0
  br i1 %tobool21.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.copy_from_user_state.exit.i_crit_edge

land.lhs.true.i.i.copy_from_user_state.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_from_user_state.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %161 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %family.i, align 4
  %163 = ptrtoint ptr %family18.i.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %162, ptr %family18.i.i, align 4
  br label %copy_from_user_state.exit.i

copy_from_user_state.exit.i:                      ; preds = %if.then.i.i, %land.lhs.true.i.i.copy_from_user_state.exit.i_crit_edge, %if.end.i.copy_from_user_state.exit.i_crit_edge
  %arrayidx.i51 = getelementptr ptr, ptr %attrs, i32 4
  %164 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i51, align 4
  %tobool1.not.i = icmp eq ptr %165, null
  br i1 %tobool1.not.i, label %copy_from_user_state.exit.i.if.end9.i_crit_edge, label %if.then2.i

copy_from_user_state.exit.i.if.end9.i_crit_edge:  ; preds = %copy_from_user_state.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then2.i:                                       ; preds = %copy_from_user_state.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %165, i32 4
  %call5.i = tail call ptr @kmemdup(ptr noundef %add.ptr.i.i, i32 noundef 24, i32 noundef 3264) #16
  %encap.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 24
  %166 = ptrtoint ptr %encap.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call5.i, ptr %encap.i, align 8
  %cmp.i52 = icmp eq ptr %call5.i, null
  br i1 %cmp.i52, label %if.then2.i.error.i_crit_edge, label %if.then2.i.if.end9.i_crit_edge

if.then2.i.if.end9.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then2.i.error.i_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end9.i:                                        ; preds = %if.then2.i.if.end9.i_crit_edge, %copy_from_user_state.exit.i.if.end9.i_crit_edge
  %arrayidx10.i = getelementptr ptr, ptr %attrs, i32 14
  %167 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx10.i, align 4
  %tobool11.not.i = icmp eq ptr %168, null
  br i1 %tobool11.not.i, label %if.end9.i.if.end20.i_crit_edge, label %if.then12.i

if.end9.i.if.end20.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i

if.then12.i:                                      ; preds = %if.end9.i
  %add.ptr.i183.i = getelementptr i8, ptr %168, i32 4
  %call15.i = tail call ptr @kmemdup(ptr noundef %add.ptr.i183.i, i32 noundef 16, i32 noundef 3264) #16
  %coaddr.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 26
  %169 = ptrtoint ptr %coaddr.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call15.i, ptr %coaddr.i, align 8
  %cmp17.i = icmp eq ptr %call15.i, null
  br i1 %cmp17.i, label %if.then12.i.error.i_crit_edge, label %if.then12.i.if.end20.i_crit_edge

if.then12.i.if.end20.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i

if.then12.i.error.i_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end20.i:                                       ; preds = %if.then12.i.if.end20.i_crit_edge, %if.end9.i.if.end20.i_crit_edge
  %arrayidx21.i = getelementptr ptr, ptr %attrs, i32 24
  %170 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx21.i, align 4
  %tobool22.not.i = icmp eq ptr %171, null
  br i1 %tobool22.not.i, label %if.end20.i.if.end26.i_crit_edge, label %if.then23.i

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i53 = getelementptr i8, ptr %171, i32 4
  %172 = ptrtoint ptr %add.ptr.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr.i.i.i53, align 4
  %extra_flags.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 11
  %174 = ptrtoint ptr %extra_flags.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %extra_flags.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end26.i_crit_edge
  %175 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i184.i = icmp eq ptr %176, null
  br i1 %tobool.not.i184.i, label %if.end26.i.if.end31.i_crit_edge, label %if.end.i.i54

if.end26.i.if.end31.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.end.i.i54:                                     ; preds = %if.end26.i
  %add.ptr.i.i185.i = getelementptr i8, ptr %176, i32 4
  %alg_icv_len.i.i = getelementptr i8, ptr %176, i32 72
  %177 = ptrtoint ptr %alg_icv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %alg_icv_len.i.i, align 4
  %call1.i.i = tail call ptr @xfrm_aead_get_byname(ptr noundef %add.ptr.i.i185.i, i32 noundef %178, i32 noundef 1) #16
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i54.error.i_crit_edge, label %if.end4.i.i59

if.end.i.i54.error.i_crit_edge:                   ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end4.i.i59:                                    ; preds = %if.end.i.i54
  %desc.i.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1.i.i, i32 0, i32 4
  %179 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %desc.i.i, align 4
  %ealgo.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 4
  %181 = ptrtoint ptr %ealgo.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %ealgo.i.i, align 1
  %alg_key_len.i.i.i55 = getelementptr i8, ptr %176, i32 68
  %182 = ptrtoint ptr %alg_key_len.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %alg_key_len.i.i.i55, align 4
  %add.i.i.i56 = add i32 %183, 7
  %div2.i.i.i57 = lshr i32 %add.i.i.i56, 3
  %add1.i.i.i58 = add nuw nsw i32 %div2.i.i.i57, 72
  %call6.i.i = tail call ptr @kmemdup(ptr noundef %add.ptr.i.i185.i, i32 noundef %add1.i.i.i58, i32 noundef 3264) #16
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %if.end4.i.i59.error.i_crit_edge, label %if.end9.i.i

if.end4.i.i59.error.i_crit_edge:                  ; preds = %if.end4.i.i59
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end9.i.i:                                      ; preds = %if.end4.i.i59
  call void @__sanitizer_cov_trace_pc() #18
  %184 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %call1.i.i, align 4
  %call12.i.i = tail call ptr @strcpy(ptr noundef nonnull %call6.i.i, ptr noundef %185) #20
  %aead.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 19
  %186 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call6.i.i, ptr %aead.i.i, align 4
  %uinfo.i.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1.i.i, i32 0, i32 3
  %187 = ptrtoint ptr %uinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %uinfo.i.i, align 4
  %geniv13.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 20
  %189 = ptrtoint ptr %geniv13.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %188, ptr %geniv13.i.i, align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end9.i.i, %if.end26.i.if.end31.i_crit_edge
  %aalg.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 16
  %aalgo.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 3
  %190 = ptrtoint ptr %arrayidx.i227.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx.i227.i, align 4
  %tobool.not.i186.i = icmp eq ptr %191, null
  br i1 %tobool.not.i186.i, label %if.end31.i.if.end37.i_crit_edge, label %if.end.i190.i

if.end31.i.if.end37.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37.i

if.end.i190.i:                                    ; preds = %if.end31.i
  %add.ptr.i.i187.i = getelementptr i8, ptr %191, i32 4
  %call1.i188.i = tail call ptr @xfrm_aalg_get_byname(ptr noundef %add.ptr.i.i187.i, i32 noundef 1) #16
  %tobool2.not.i189.i = icmp eq ptr %call1.i188.i, null
  br i1 %tobool2.not.i189.i, label %if.end.i190.i.error.i_crit_edge, label %if.end4.i192.i

if.end.i190.i.error.i_crit_edge:                  ; preds = %if.end.i190.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end4.i192.i:                                   ; preds = %if.end.i190.i
  %alg_trunc_len.i.i = getelementptr i8, ptr %191, i32 72
  %192 = ptrtoint ptr %alg_trunc_len.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %alg_trunc_len.i.i, align 4
  %uinfo.i191.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1.i188.i, i32 0, i32 3
  %icv_fullbits.i.i = getelementptr inbounds %struct.xfrm_algo_auth_info, ptr %uinfo.i191.i, i32 0, i32 1
  %194 = ptrtoint ptr %icv_fullbits.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %icv_fullbits.i.i, align 2
  %conv.i.i60 = zext i16 %195 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %conv.i.i60)
  %cmp.i.i61 = icmp ugt i32 %193, %conv.i.i60
  br i1 %cmp.i.i61, label %if.end4.i192.i.error.i_crit_edge, label %if.end7.i.i

if.end4.i192.i.error.i_crit_edge:                 ; preds = %if.end4.i192.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end7.i.i:                                      ; preds = %if.end4.i192.i
  %desc.i193.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1.i188.i, i32 0, i32 4
  %196 = ptrtoint ptr %desc.i193.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %desc.i193.i, align 4
  %198 = ptrtoint ptr %aalgo.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %aalgo.i, align 1
  %alg_key_len.i.i194.i = getelementptr i8, ptr %191, i32 68
  %199 = ptrtoint ptr %alg_key_len.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %alg_key_len.i.i194.i, align 4
  %add.i.i195.i = add i32 %200, 7
  %div2.i.i196.i = lshr i32 %add.i.i195.i, 3
  %add1.i.i197.i = add nuw nsw i32 %div2.i.i196.i, 72
  %call9.i.i = tail call ptr @kmemdup(ptr noundef %add.ptr.i.i187.i, i32 noundef %add1.i.i197.i, i32 noundef 3264) #16
  %tobool10.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i.i, label %if.end7.i.i.error.i_crit_edge, label %if.end12.i.i

if.end7.i.i.error.i_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  %201 = ptrtoint ptr %call1.i188.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %call1.i188.i, align 4
  %call15.i.i = tail call ptr @strcpy(ptr noundef nonnull %call9.i.i, ptr noundef %202) #20
  %alg_trunc_len16.i.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %call9.i.i, i32 0, i32 2
  %203 = ptrtoint ptr %alg_trunc_len16.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %alg_trunc_len16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool17.not.i.i = icmp eq i32 %204, 0
  br i1 %tobool17.not.i.i, label %if.then18.i.i, label %if.end12.i.i.if.end22.i.i_crit_edge

if.end12.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i.i

if.then18.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %205 = ptrtoint ptr %uinfo.i191.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %uinfo.i191.i, align 4
  %conv20.i.i = zext i16 %206 to i32
  %207 = ptrtoint ptr %alg_trunc_len16.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %conv20.i.i, ptr %alg_trunc_len16.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then18.i.i, %if.end12.i.i.if.end22.i.i_crit_edge
  %208 = ptrtoint ptr %aalg.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call9.i.i, ptr %aalg.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end22.i.i, %if.end31.i.if.end37.i_crit_edge
  %209 = ptrtoint ptr %aalgo.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %aalgo.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool40.not.i = icmp eq i8 %210, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %if.end37.i.if.end50.i_crit_edge

if.end37.i.if.end50.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

if.then41.i:                                      ; preds = %if.end37.i
  %211 = ptrtoint ptr %arrayidx.i240.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx.i240.i, align 4
  %tobool.not.i85 = icmp eq ptr %212, null
  br i1 %tobool.not.i85, label %if.then41.i.if.end50.i_crit_edge, label %if.end.i89

if.then41.i.if.end50.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

if.end.i89:                                       ; preds = %if.then41.i
  %add.ptr.i.i86 = getelementptr i8, ptr %212, i32 4
  %call1.i87 = tail call ptr @xfrm_aalg_get_byname(ptr noundef %add.ptr.i.i86, i32 noundef 1) #16
  %tobool2.not.i88 = icmp eq ptr %call1.i87, null
  br i1 %tobool2.not.i88, label %if.end.i89.error.i_crit_edge, label %if.end4.i91

if.end.i89.error.i_crit_edge:                     ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end4.i91:                                      ; preds = %if.end.i89
  %desc.i90 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1.i87, i32 0, i32 4
  %213 = ptrtoint ptr %desc.i90 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %desc.i90, align 4
  %215 = ptrtoint ptr %aalgo.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %aalgo.i, align 1
  %alg_key_len.i = getelementptr i8, ptr %212, i32 68
  %216 = ptrtoint ptr %alg_key_len.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %alg_key_len.i, align 4
  %add.i = add i32 %217, 7
  %div36.i = lshr i32 %add.i, 3
  %add5.i = add nuw nsw i32 %div36.i, 72
  %call9.i.i97 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add5.i, i32 noundef 3264) #21
  %tobool7.not.i98 = icmp eq ptr %call9.i.i97, null
  br i1 %tobool7.not.i98, label %if.end4.i91.error.i_crit_edge, label %if.end9.i100

if.end4.i91.error.i_crit_edge:                    ; preds = %if.end4.i91
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end9.i100:                                     ; preds = %if.end4.i91
  call void @__sanitizer_cov_trace_pc() #18
  %218 = ptrtoint ptr %call1.i87 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %call1.i87, align 4
  %call12.i99 = tail call ptr @strcpy(ptr noundef nonnull %call9.i.i97, ptr noundef %219) #20
  %220 = ptrtoint ptr %alg_key_len.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %alg_key_len.i, align 4
  %alg_key_len14.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %call9.i.i97, i32 0, i32 1
  %222 = ptrtoint ptr %alg_key_len14.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %alg_key_len14.i, align 64
  %uinfo.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1.i87, i32 0, i32 3
  %223 = ptrtoint ptr %uinfo.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %uinfo.i, align 4
  %conv.i = zext i16 %224 to i32
  %alg_trunc_len.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %call9.i.i97, i32 0, i32 2
  %225 = ptrtoint ptr %alg_trunc_len.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %conv.i, ptr %alg_trunc_len.i, align 4
  %alg_key.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %call9.i.i97, i32 0, i32 3
  %alg_key16.i = getelementptr i8, ptr %212, i32 72
  %add19.i = add i32 %221, 7
  %div2037.i = lshr i32 %add19.i, 3
  %226 = call ptr @memcpy(ptr %alg_key.i, ptr %alg_key16.i, i32 %div2037.i)
  %227 = ptrtoint ptr %aalg.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %call9.i.i97, ptr %aalg.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end9.i100, %if.then41.i.if.end50.i_crit_edge, %if.end37.i.if.end50.i_crit_edge
  %228 = ptrtoint ptr %arrayidx.i252.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx.i252.i, align 4
  %tobool.not.i199.i = icmp eq ptr %229, null
  br i1 %tobool.not.i199.i, label %if.end50.i.if.end55.i_crit_edge, label %if.end.i203.i

if.end50.i.if.end55.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55.i

if.end.i203.i:                                    ; preds = %if.end50.i
  %add.ptr.i.i200.i = getelementptr i8, ptr %229, i32 4
  %call1.i201.i = tail call ptr @xfrm_ealg_get_byname(ptr noundef %add.ptr.i.i200.i, i32 noundef 1) #16
  %tobool2.not.i202.i = icmp eq ptr %call1.i201.i, null
  br i1 %tobool2.not.i202.i, label %if.end.i203.i.error.i_crit_edge, label %if.end4.i212.i

if.end.i203.i.error.i_crit_edge:                  ; preds = %if.end.i203.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end4.i212.i:                                   ; preds = %if.end.i203.i
  %desc.i204.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1.i201.i, i32 0, i32 4
  %230 = ptrtoint ptr %desc.i204.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %desc.i204.i, align 4
  %ealgo.i205.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 4
  %232 = ptrtoint ptr %ealgo.i205.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %ealgo.i205.i, align 1
  %alg_key_len.i.i206.i = getelementptr i8, ptr %229, i32 68
  %233 = ptrtoint ptr %alg_key_len.i.i206.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %alg_key_len.i.i206.i, align 4
  %add.i.i207.i = add i32 %234, 7
  %div2.i.i208.i = lshr i32 %add.i.i207.i, 3
  %add1.i.i209.i = add nuw nsw i32 %div2.i.i208.i, 68
  %call6.i210.i = tail call ptr @kmemdup(ptr noundef %add.ptr.i.i200.i, i32 noundef %add1.i.i209.i, i32 noundef 3264) #16
  %tobool7.not.i211.i = icmp eq ptr %call6.i210.i, null
  br i1 %tobool7.not.i211.i, label %if.end4.i212.i.error.i_crit_edge, label %if.end9.i216.i

if.end4.i212.i.error.i_crit_edge:                 ; preds = %if.end4.i212.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end9.i216.i:                                   ; preds = %if.end4.i212.i
  call void @__sanitizer_cov_trace_pc() #18
  %235 = ptrtoint ptr %call1.i201.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %call1.i201.i, align 4
  %call12.i213.i = tail call ptr @strcpy(ptr noundef nonnull %call6.i210.i, ptr noundef %236) #20
  %ealg.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 17
  %237 = ptrtoint ptr %ealg.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call6.i210.i, ptr %ealg.i.i, align 4
  %uinfo.i214.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1.i201.i, i32 0, i32 3
  %238 = ptrtoint ptr %uinfo.i214.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %uinfo.i214.i, align 4
  %geniv13.i215.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 20
  %240 = ptrtoint ptr %geniv13.i215.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %239, ptr %geniv13.i215.i, align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end9.i216.i, %if.end50.i.if.end55.i_crit_edge
  %calg.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 18
  %calgo.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 5
  %241 = ptrtoint ptr %arrayidx.i266.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx.i266.i, align 4
  %tobool.not.i79 = icmp eq ptr %242, null
  br i1 %tobool.not.i79, label %if.end55.i.if.end61.i_crit_edge, label %if.end.i81

if.end55.i.if.end61.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61.i

if.end.i81:                                       ; preds = %if.end55.i
  %add.ptr.i.i80 = getelementptr i8, ptr %242, i32 4
  %call1.i = tail call ptr @xfrm_calg_get_byname(ptr noundef %add.ptr.i.i80, i32 noundef 1) #16
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i81.error.i_crit_edge, label %if.end4.i

if.end.i81.error.i_crit_edge:                     ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end4.i:                                        ; preds = %if.end.i81
  %desc.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call1.i, i32 0, i32 4
  %243 = ptrtoint ptr %desc.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %desc.i, align 4
  %245 = ptrtoint ptr %calgo.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %244, ptr %calgo.i, align 1
  %alg_key_len.i.i = getelementptr i8, ptr %242, i32 68
  %246 = ptrtoint ptr %alg_key_len.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %alg_key_len.i.i, align 4
  %add.i.i82 = add i32 %247, 7
  %div2.i.i = lshr i32 %add.i.i82, 3
  %add1.i.i = add nuw nsw i32 %div2.i.i, 68
  %call6.i = tail call ptr @kmemdup(ptr noundef %add.ptr.i.i80, i32 noundef %add1.i.i, i32 noundef 3264) #16
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end4.i.error.i_crit_edge, label %if.end9.i83

if.end4.i.error.i_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end9.i83:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %248 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %call1.i, align 4
  %call12.i = tail call ptr @strcpy(ptr noundef nonnull %call6.i, ptr noundef %249) #20
  %250 = ptrtoint ptr %calg.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %call6.i, ptr %calg.i, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end9.i83, %if.end55.i.if.end61.i_crit_edge
  %arrayidx62.i = getelementptr ptr, ptr %attrs, i32 22
  %251 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %arrayidx62.i, align 4
  %tobool63.not.i = icmp eq ptr %252, null
  br i1 %tobool63.not.i, label %if.end61.i.if.end67.i_crit_edge, label %if.then64.i

if.end61.i.if.end67.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67.i

if.then64.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i218.i = getelementptr i8, ptr %252, i32 4
  %253 = ptrtoint ptr %add.ptr.i.i218.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %add.ptr.i.i218.i, align 4
  %tfcpad.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 11
  %255 = ptrtoint ptr %tfcpad.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %tfcpad.i, align 8
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then64.i, %if.end61.i.if.end67.i_crit_edge
  %mark.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 9
  %arrayidx.i.i64 = getelementptr ptr, ptr %attrs, i32 21
  %256 = ptrtoint ptr %arrayidx.i.i64 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx.i.i64, align 4
  %tobool.not.i219.i = icmp eq ptr %257, null
  br i1 %tobool.not.i219.i, label %if.else.i.i, label %if.then.i221.i

if.then.i221.i:                                   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i220.i = getelementptr i8, ptr %257, i32 4
  %258 = ptrtoint ptr %add.ptr.i.i220.i to i32
  call void @__asan_loadN_noabort(i32 %258, i32 8)
  %259 = load i64, ptr %add.ptr.i.i220.i, align 1
  %260 = ptrtoint ptr %mark.i to i32
  call void @__asan_storeN_noabort(i32 %260, i32 8)
  store i64 %259, ptr %mark.i, align 4
  br label %xfrm_mark_get.exit.i

if.else.i.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #18
  %m2.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 9, i32 1
  %261 = ptrtoint ptr %m2.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 0, ptr %m2.i.i, align 4
  %262 = ptrtoint ptr %mark.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 0, ptr %mark.i, align 4
  br label %xfrm_mark_get.exit.i

xfrm_mark_get.exit.i:                             ; preds = %if.else.i.i, %if.then.i221.i
  %smark.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 12
  %arrayidx.i223.i = getelementptr ptr, ptr %attrs, i32 29
  %263 = ptrtoint ptr %arrayidx.i223.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %arrayidx.i223.i, align 4
  %tobool.not.i224.i = icmp eq ptr %264, null
  br i1 %tobool.not.i224.i, label %if.else9.i.i, label %if.then.i225.i

if.then.i225.i:                                   ; preds = %xfrm_mark_get.exit.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %264, i32 4
  %265 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %267 = ptrtoint ptr %smark.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %smark.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %attrs, i32 30
  %268 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %269, null
  br i1 %tobool3.not.i.i, label %if.else.i226.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i225.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i21.i.i = getelementptr i8, ptr %269, i32 4
  %270 = ptrtoint ptr %add.ptr.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %add.ptr.i.i21.i.i, align 4
  %m7.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 12, i32 1
  %272 = ptrtoint ptr %m7.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %m7.i.i, align 4
  br label %xfrm_smark_init.exit.i

if.else.i226.i:                                   ; preds = %if.then.i225.i
  call void @__sanitizer_cov_trace_pc() #18
  %m8.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 12, i32 1
  %273 = ptrtoint ptr %m8.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 -1, ptr %m8.i.i, align 4
  br label %xfrm_smark_init.exit.i

if.else9.i.i:                                     ; preds = %xfrm_mark_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %m10.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 14, i32 12, i32 1
  %274 = ptrtoint ptr %m10.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 0, ptr %m10.i.i, align 4
  %275 = ptrtoint ptr %smark.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 0, ptr %smark.i, align 4
  br label %xfrm_smark_init.exit.i

xfrm_smark_init.exit.i:                           ; preds = %if.else9.i.i, %if.else.i226.i, %if.then4.i.i
  %arrayidx70.i = getelementptr ptr, ptr %attrs, i32 31
  %276 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx70.i, align 4
  %tobool71.not.i = icmp eq ptr %277, null
  br i1 %tobool71.not.i, label %xfrm_smark_init.exit.i.if.end75.i_crit_edge, label %if.then72.i

xfrm_smark_init.exit.i.if.end75.i_crit_edge:      ; preds = %xfrm_smark_init.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75.i

if.then72.i:                                      ; preds = %xfrm_smark_init.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i228.i = getelementptr i8, ptr %277, i32 4
  %278 = ptrtoint ptr %add.ptr.i.i228.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %add.ptr.i.i228.i, align 4
  %if_id.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 10
  %280 = ptrtoint ptr %if_id.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %279, ptr %if_id.i, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then72.i, %xfrm_smark_init.exit.i.if.end75.i_crit_edge
  %arrayidx76.i = getelementptr ptr, ptr %attrs, i32 28
  %281 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %arrayidx76.i, align 4
  %tobool77.i = icmp ne ptr %282, null
  %call78.i = tail call i32 @__xfrm_init_state(ptr noundef nonnull %call.i, i1 noundef zeroext false, i1 noundef zeroext %tobool77.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.end81.i, label %if.end75.i.error.i_crit_edge

if.end75.i.error.i_crit_edge:                     ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end81.i:                                       ; preds = %if.end75.i
  %283 = ptrtoint ptr %arrayidx.i280.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %arrayidx.i280.i, align 4
  %tobool83.not.i = icmp eq ptr %284, null
  br i1 %tobool83.not.i, label %if.end81.i.if.end91.i_crit_edge, label %if.then84.i

if.end81.i.if.end91.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91.i

if.then84.i:                                      ; preds = %if.end81.i
  %add.ptr.i229.i = getelementptr i8, ptr %284, i32 4
  %call87.i = tail call i32 @security_xfrm_state_alloc(ptr noundef nonnull %call.i, ptr noundef %add.ptr.i229.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i65 = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i65, label %if.then84.i.if.end91.i_crit_edge, label %if.then84.i.error.i_crit_edge

if.then84.i.error.i_crit_edge:                    ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.then84.i.if.end91.i_crit_edge:                 ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then84.i.if.end91.i_crit_edge, %if.end81.i.if.end91.i_crit_edge
  %replay_esn.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 30
  %preplay_esn.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 32
  %arrayidx92.i = getelementptr ptr, ptr %attrs, i32 23
  %285 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %arrayidx92.i, align 4
  %call93.i = tail call fastcc i32 @xfrm_alloc_replay_state_esn(ptr noundef %replay_esn.i, ptr noundef %preplay_esn.i, ptr noundef %286) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i66 = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i66, label %if.end96.i, label %if.end91.i.error.i_crit_edge

if.end91.i.error.i_crit_edge:                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end96.i:                                       ; preds = %if.end91.i
  %seq.i = getelementptr i8, ptr %nlh, i32 220
  %287 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %seq.i, align 4
  %seq97.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 13, i32 4
  %289 = ptrtoint ptr %seq97.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %seq97.i, align 4
  %sysctl_aevent_rseqth.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 20
  %290 = ptrtoint ptr %sysctl_aevent_rseqth.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %sysctl_aevent_rseqth.i, align 4
  %replay_maxdiff.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 36
  %292 = ptrtoint ptr %replay_maxdiff.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %291, ptr %replay_maxdiff.i, align 8
  %sysctl_aevent_etime.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 19
  %293 = ptrtoint ptr %sysctl_aevent_etime.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %sysctl_aevent_etime.i, align 32
  %mul.i = mul i32 %294, 100
  %div.i = udiv i32 %mul.i, 10
  %replay_maxage.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 35
  %295 = ptrtoint ptr %replay_maxage.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %div.i, ptr %replay_maxage.i, align 4
  %call99.i = tail call i32 @xfrm_init_replay(ptr noundef nonnull %call.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool100.not.i67 = icmp eq i32 %call99.i, 0
  br i1 %tobool100.not.i67, label %if.end102.i, label %if.end96.i.error.i_crit_edge

if.end96.i.error.i_crit_edge:                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.end102.i:                                      ; preds = %if.end96.i
  tail call fastcc void @xfrm_update_ae_params(ptr noundef nonnull %call.i, ptr noundef %attrs, i32 noundef 0) #16
  %296 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx76.i, align 4
  %tobool104.not.i = icmp eq ptr %297, null
  br i1 %tobool104.not.i, label %if.end102.i.if.end6_crit_edge, label %if.then105.i

if.end102.i.if.end6_crit_edge:                    ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then105.i:                                     ; preds = %if.end102.i
  %add.ptr.i230.i = getelementptr i8, ptr %297, i32 4
  %call108.i = tail call i32 @xfrm_dev_state_add(ptr noundef %4, ptr noundef nonnull %call.i, ptr noundef %add.ptr.i230.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i68 = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i68, label %if.then105.i.if.end6_crit_edge, label %if.then105.i.error.i_crit_edge

if.then105.i.error.i_crit_edge:                   ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error.i

if.then105.i.if.end6_crit_edge:                   ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

error.i:                                          ; preds = %if.then105.i.error.i_crit_edge, %if.end96.i.error.i_crit_edge, %if.end91.i.error.i_crit_edge, %if.then84.i.error.i_crit_edge, %if.end75.i.error.i_crit_edge, %if.end4.i.error.i_crit_edge, %if.end.i81.error.i_crit_edge, %if.end4.i212.i.error.i_crit_edge, %if.end.i203.i.error.i_crit_edge, %if.end4.i91.error.i_crit_edge, %if.end.i89.error.i_crit_edge, %if.end7.i.i.error.i_crit_edge, %if.end4.i192.i.error.i_crit_edge, %if.end.i190.i.error.i_crit_edge, %if.end4.i.i59.error.i_crit_edge, %if.end.i.i54.error.i_crit_edge, %if.then12.i.error.i_crit_edge, %if.then2.i.error.i_crit_edge
  %err.0.i69 = phi i32 [ -12, %if.then2.i.error.i_crit_edge ], [ -12, %if.then12.i.error.i_crit_edge ], [ %call78.i, %if.end75.i.error.i_crit_edge ], [ %call87.i, %if.then84.i.error.i_crit_edge ], [ %call93.i, %if.end91.i.error.i_crit_edge ], [ %call99.i, %if.end96.i.error.i_crit_edge ], [ %call108.i, %if.then105.i.error.i_crit_edge ], [ -38, %if.end.i.i54.error.i_crit_edge ], [ -12, %if.end4.i.i59.error.i_crit_edge ], [ -38, %if.end.i203.i.error.i_crit_edge ], [ -12, %if.end4.i212.i.error.i_crit_edge ], [ -12, %if.end7.i.i.error.i_crit_edge ], [ -22, %if.end4.i192.i.error.i_crit_edge ], [ -38, %if.end.i190.i.error.i_crit_edge ], [ -38, %if.end.i89.error.i_crit_edge ], [ -12, %if.end4.i91.error.i_crit_edge ], [ -38, %if.end.i81.error.i_crit_edge ], [ -12, %if.end4.i.error.i_crit_edge ]
  %state.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 13, i32 1
  %298 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 5, ptr %state.i, align 8
  %refcnt.i.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #16
  %299 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %299, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i231.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %error.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !80

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #16
  br label %cleanup

if.then.i231.i:                                   ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call.i, i1 noundef zeroext false) #16
  br label %cleanup

if.end6:                                          ; preds = %if.then105.i.if.end6_crit_edge, %if.end102.i.if.end6_crit_edge
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %300 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !82
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %300, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end6.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !68

if.end6.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end6
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %301 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %301)
  %.not.i.i.i.i = icmp sgt i32 %301, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.xfrm_state_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !80

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.xfrm_state_hold.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_state_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end6.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end6.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #16
  br label %xfrm_state_hold.exit

xfrm_state_hold.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.xfrm_state_hold.exit_crit_edge
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %302 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %nlmsg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %303)
  %cmp = icmp eq i16 %303, 16
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %xfrm_state_hold.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 @xfrm_state_add(ptr noundef nonnull %call.i) #16
  br label %if.end11

if.else:                                          ; preds = %xfrm_state_hold.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = tail call i32 @xfrm_state_update(ptr noundef nonnull %call.i) #16
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %storemerge = phi i32 [ %call10, %if.else ], [ %call9, %if.then8 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %cmp13 = icmp slt i32 %storemerge, 0
  %state = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 13, i32 1
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  %304 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 5, ptr %state, align 8
  %xso1.i = getelementptr inbounds %struct.xfrm_state, ptr %call.i, i32 0, i32 41
  %305 = ptrtoint ptr %xso1.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %xso1.i, align 4
  %tobool.not.i70 = icmp eq ptr %306, null
  br i1 %tobool.not.i70, label %if.then15.xfrm_dev_state_delete.exit_crit_edge, label %if.then.i

if.then15.xfrm_dev_state_delete.exit_crit_edge:   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_dev_state_delete.exit

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %xfrmdev_ops.i = getelementptr inbounds %struct.net_device, ptr %306, i32 0, i32 47
  %307 = ptrtoint ptr %xfrmdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %xfrmdev_ops.i, align 4
  %xdo_dev_state_delete.i = getelementptr inbounds %struct.xfrmdev_ops, ptr %308, i32 0, i32 1
  %309 = ptrtoint ptr %xdo_dev_state_delete.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %xdo_dev_state_delete.i, align 4
  tail call void %310(ptr noundef nonnull %call.i) #16
  br label %xfrm_dev_state_delete.exit

xfrm_dev_state_delete.exit:                       ; preds = %if.then.i, %if.then15.xfrm_dev_state_delete.exit_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %311 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i73 = extractvalue { i32, i32, i32 } %311, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i73)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i73, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %xfrm_dev_state_delete.exit.out_crit_edge, !prof !68

xfrm_dev_state_delete.exit.out_crit_edge:         ; preds = %xfrm_dev_state_delete.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then3.i.i.i:                                   ; preds = %xfrm_dev_state_delete.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 4) #16
  br label %out

if.end16:                                         ; preds = %if.end11
  %312 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %cmp20 = icmp eq i8 %313, 0
  br i1 %cmp20, label %if.then22, label %if.end16.if.end25_crit_edge

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %314 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 2, ptr %state, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end16.if.end25_crit_edge
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %315 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %nlmsg_seq, align 4
  %317 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %316, ptr %5, align 4
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 4
  %318 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %nlmsg_pid, align 4
  %320 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %319, ptr %6, align 4
  %321 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %nlmsg_type, align 4
  %conv27 = zext i16 %322 to i32
  %323 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %conv27, ptr %7, align 4
  call void @km_state_notify(ptr noundef nonnull %call.i, ptr noundef nonnull %c) #16
  br label %out

out:                                              ; preds = %if.end25, %if.then3.i.i.i, %xfrm_dev_state_delete.exit.out_crit_edge
  %call.i.i.i.i.i.i75 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %324 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %324, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i77, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i76 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i76, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !80

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %cleanup

if.then.i77:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  call void @__xfrm_state_destroy(ptr noundef nonnull %call.i, i1 noundef zeroext false) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i77, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then.i231.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then172.i.cleanup_crit_edge, %if.end164.i.cleanup_crit_edge, %if.end160.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i285.i.cleanup_crit_edge, %if.end.i275.i.cleanup_crit_edge, %if.end.i261.i.cleanup_crit_edge, %if.end.i249.i.cleanup_crit_edge, %if.end.i236.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %lor.lhs.false131.i.cleanup_crit_edge, %lor.lhs.false128.i.cleanup_crit_edge, %lor.lhs.false125.i.cleanup_crit_edge, %lor.lhs.false122.i.cleanup_crit_edge, %lor.lhs.false119.i.cleanup_crit_edge, %lor.lhs.false116.i.cleanup_crit_edge, %lor.lhs.false113.i.cleanup_crit_edge, %lor.lhs.false110.i.cleanup_crit_edge, %sw.bb107.i.cleanup_crit_edge, %lor.lhs.false101.i.cleanup_crit_edge, %lor.lhs.false98.i.cleanup_crit_edge, %lor.lhs.false95.i.cleanup_crit_edge, %lor.lhs.false92.i.cleanup_crit_edge, %lor.lhs.false89.i.cleanup_crit_edge, %lor.lhs.false86.i.cleanup_crit_edge, %sw.bb83.i.cleanup_crit_edge, %land.lhs.true77.i.cleanup_crit_edge, %land.lhs.true70.i.cleanup_crit_edge, %land.lhs.true57.i.cleanup_crit_edge, %sw.bb44.i.cleanup_crit_edge, %lor.lhs.false39.i.cleanup_crit_edge, %lor.lhs.false36.i.cleanup_crit_edge, %lor.lhs.false33.i.cleanup_crit_edge, %lor.lhs.false30.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %sw.epilog25.i.cleanup_crit_edge, %lor.lhs.false16.i.cleanup_crit_edge, %sw.bb10.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.i69, %if.then.i231.i ], [ %err.0.i69, %if.then10.i.i.i.i.i ], [ %err.0.i69, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %storemerge, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %storemerge, %if.then10.i.i.i.i ], [ %storemerge, %if.then.i77 ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -22, %if.end.i285.i.cleanup_crit_edge ], [ -22, %if.end.i275.i.cleanup_crit_edge ], [ -22, %if.end.i261.i.cleanup_crit_edge ], [ -22, %if.end.i249.i.cleanup_crit_edge ], [ -22, %if.end.i236.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %lor.lhs.false39.i.cleanup_crit_edge ], [ -22, %lor.lhs.false36.i.cleanup_crit_edge ], [ -22, %lor.lhs.false33.i.cleanup_crit_edge ], [ -22, %lor.lhs.false30.i.cleanup_crit_edge ], [ -22, %land.lhs.true57.i.cleanup_crit_edge ], [ -22, %land.lhs.true77.i.cleanup_crit_edge ], [ -22, %land.lhs.true70.i.cleanup_crit_edge ], [ -22, %sw.bb44.i.cleanup_crit_edge ], [ -22, %sw.bb83.i.cleanup_crit_edge ], [ -22, %lor.lhs.false101.i.cleanup_crit_edge ], [ -22, %lor.lhs.false98.i.cleanup_crit_edge ], [ -22, %lor.lhs.false95.i.cleanup_crit_edge ], [ -22, %lor.lhs.false92.i.cleanup_crit_edge ], [ -22, %lor.lhs.false89.i.cleanup_crit_edge ], [ -22, %lor.lhs.false86.i.cleanup_crit_edge ], [ -22, %lor.lhs.false131.i.cleanup_crit_edge ], [ -22, %if.end164.i.cleanup_crit_edge ], [ %call161.i, %if.end160.i.cleanup_crit_edge ], [ -22, %lor.lhs.false128.i.cleanup_crit_edge ], [ -22, %lor.lhs.false125.i.cleanup_crit_edge ], [ -22, %lor.lhs.false122.i.cleanup_crit_edge ], [ -22, %lor.lhs.false119.i.cleanup_crit_edge ], [ -22, %lor.lhs.false116.i.cleanup_crit_edge ], [ -22, %lor.lhs.false113.i.cleanup_crit_edge ], [ -22, %lor.lhs.false110.i.cleanup_crit_edge ], [ -22, %sw.bb107.i.cleanup_crit_edge ], [ -22, %sw.epilog25.i.cleanup_crit_edge ], [ -22, %lor.lhs.false16.i.cleanup_crit_edge ], [ -22, %sw.bb10.i.cleanup_crit_edge ], [ -22, %sw.epilog.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then172.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_del_sa(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #16
  %5 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %6 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %7 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %arrayidx.i.i = getelementptr ptr, ptr %attrs, i32 21
  %8 = call ptr @memset(ptr %c, i32 255, i32 20)
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %entry.xfrm_mark_get.exit.i_crit_edge, label %if.then.i.i

entry.xfrm_mark_get.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_mark_get.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %add.ptr.i.i.i, align 1
  %m.sroa.0.0.extract.shift.i = lshr i64 %12, 32
  %13 = and i64 %m.sroa.0.0.extract.shift.i, %12
  %14 = trunc i64 %13 to i32
  br label %xfrm_mark_get.exit.i

xfrm_mark_get.exit.i:                             ; preds = %if.then.i.i, %entry.xfrm_mark_get.exit.i_crit_edge
  %and.i.i = phi i32 [ %14, %if.then.i.i ], [ 0, %entry.xfrm_mark_get.exit.i_crit_edge ]
  %proto.i = getelementptr i8, ptr %nlh, i32 38
  %15 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %proto.i, align 2
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %16, label %if.else.i [
    i8 -1, label %xfrm_mark_get.exit.i.if.then.i_crit_edge
    i8 51, label %xfrm_mark_get.exit.i.if.then.i_crit_edge40
    i8 50, label %xfrm_mark_get.exit.i.if.then.i_crit_edge41
    i8 108, label %xfrm_mark_get.exit.i.if.then.i_crit_edge42
  ]

xfrm_mark_get.exit.i.if.then.i_crit_edge42:       ; preds = %xfrm_mark_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

xfrm_mark_get.exit.i.if.then.i_crit_edge41:       ; preds = %xfrm_mark_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

xfrm_mark_get.exit.i.if.then.i_crit_edge40:       ; preds = %xfrm_mark_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

xfrm_mark_get.exit.i.if.then.i_crit_edge:         ; preds = %xfrm_mark_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %xfrm_mark_get.exit.i.if.then.i_crit_edge, %xfrm_mark_get.exit.i.if.then.i_crit_edge40, %xfrm_mark_get.exit.i.if.then.i_crit_edge41, %xfrm_mark_get.exit.i.if.then.i_crit_edge42
  %spi.i = getelementptr i8, ptr %nlh, i32 32
  %18 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %spi.i, align 4
  %family.i = getelementptr i8, ptr %nlh, i32 36
  %20 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %family.i, align 4
  %call3.i = tail call ptr @xfrm_state_lookup(ptr noundef %4, i32 noundef %and.i.i, ptr noundef %add.ptr.i, i32 noundef %19, i8 noundef zeroext %16, i16 noundef zeroext %21) #16
  br label %out.i

if.else.i:                                        ; preds = %xfrm_mark_get.exit.i
  %arrayidx.i31.i = getelementptr ptr, ptr %attrs, i32 13
  %22 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i31.i, align 4
  %tobool.not.i32.i = icmp eq ptr %23, null
  br i1 %tobool.not.i32.i, label %if.else.i.cleanup_crit_edge, label %verify_one_addr.exit.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

verify_one_addr.exit.i:                           ; preds = %if.else.i
  %add.ptr.i.i33.i = getelementptr i8, ptr %23, i32 4
  %tobool4.not.i = icmp eq ptr %add.ptr.i.i33.i, null
  br i1 %tobool4.not.i, label %verify_one_addr.exit.i.cleanup_crit_edge, label %if.end.i

verify_one_addr.exit.i.cleanup_crit_edge:         ; preds = %verify_one_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %verify_one_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %family8.i = getelementptr i8, ptr %nlh, i32 36
  %24 = ptrtoint ptr %family8.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %family8.i, align 4
  %call9.i = tail call ptr @xfrm_state_lookup_byaddr(ptr noundef %4, i32 noundef %and.i.i, ptr noundef %add.ptr.i, ptr noundef nonnull %add.ptr.i.i33.i, i8 noundef zeroext %16, i16 noundef zeroext %25) #16
  br label %out.i

out.i:                                            ; preds = %if.end.i, %if.then.i
  %x.1.i = phi ptr [ %call3.i, %if.then.i ], [ %call9.i, %if.end.i ]
  %tobool11.not.i.not = icmp eq ptr %x.1.i, null
  br i1 %tobool11.not.i.not, label %out.i.cleanup_crit_edge, label %if.end

out.i.cleanup_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %out.i
  %call3 = tail call i32 @security_xfrm_state_delete(ptr noundef nonnull %x.1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end6:                                          ; preds = %if.end
  %tunnel_users.i = getelementptr inbounds %struct.xfrm_state, ptr %x.1.i, i32 0, i32 28
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tunnel_users.i, i32 noundef 4) #16
  %26 = ptrtoint ptr %tunnel_users.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %tunnel_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.end9, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end9:                                          ; preds = %if.end6
  %call10 = tail call i32 @xfrm_state_delete(ptr noundef nonnull %x.1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.out_crit_edge, label %if.end13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %28 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nlmsg_seq, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %5, align 4
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 4
  %31 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nlmsg_pid, align 4
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %6, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %34 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nlmsg_type, align 4
  %conv = zext i16 %35 to i32
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv, ptr %7, align 4
  call void @km_state_notify(ptr noundef nonnull %x.1.i, ptr noundef nonnull %c) #16
  br label %out

out:                                              ; preds = %if.end13, %if.end9.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge
  %err.1 = phi i32 [ %call10, %if.end9.out_crit_edge ], [ %call10, %if.end13 ], [ %call3, %if.end.out_crit_edge ], [ -1, %if.end6.out_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %x.1.i, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i28, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !80

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %cleanup

if.then.i28:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  call void @__xfrm_state_destroy(ptr noundef nonnull %x.1.i, i1 noundef zeroext false) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i28, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %out.i.cleanup_crit_edge, %verify_one_addr.exit.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  %err.2 = phi i32 [ %err.1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.1, %if.then10.i.i.i.i ], [ %err.1, %if.then.i28 ], [ -3, %out.i.cleanup_crit_edge ], [ -22, %verify_one_addr.exit.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #16
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_get_sa(ptr noundef %skb, ptr noundef %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  %info.i = alloca %struct.xfrm_dump_info, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %arrayidx.i.i = getelementptr ptr, ptr %attrs, i32 21
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %entry.xfrm_mark_get.exit.i_crit_edge, label %if.then.i.i

entry.xfrm_mark_get.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_mark_get.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %add.ptr.i.i.i, align 1
  %m.sroa.0.0.extract.shift.i = lshr i64 %8, 32
  %9 = and i64 %m.sroa.0.0.extract.shift.i, %8
  %10 = trunc i64 %9 to i32
  br label %xfrm_mark_get.exit.i

xfrm_mark_get.exit.i:                             ; preds = %if.then.i.i, %entry.xfrm_mark_get.exit.i_crit_edge
  %and.i.i = phi i32 [ %10, %if.then.i.i ], [ 0, %entry.xfrm_mark_get.exit.i_crit_edge ]
  %proto.i = getelementptr i8, ptr %nlh, i32 38
  %11 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %proto.i, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %12, label %if.else.i [
    i8 -1, label %xfrm_mark_get.exit.i.if.then.i_crit_edge
    i8 51, label %xfrm_mark_get.exit.i.if.then.i_crit_edge38
    i8 50, label %xfrm_mark_get.exit.i.if.then.i_crit_edge39
    i8 108, label %xfrm_mark_get.exit.i.if.then.i_crit_edge40
  ]

xfrm_mark_get.exit.i.if.then.i_crit_edge40:       ; preds = %xfrm_mark_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

xfrm_mark_get.exit.i.if.then.i_crit_edge39:       ; preds = %xfrm_mark_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

xfrm_mark_get.exit.i.if.then.i_crit_edge38:       ; preds = %xfrm_mark_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

xfrm_mark_get.exit.i.if.then.i_crit_edge:         ; preds = %xfrm_mark_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %xfrm_mark_get.exit.i.if.then.i_crit_edge, %xfrm_mark_get.exit.i.if.then.i_crit_edge38, %xfrm_mark_get.exit.i.if.then.i_crit_edge39, %xfrm_mark_get.exit.i.if.then.i_crit_edge40
  %spi.i = getelementptr i8, ptr %nlh, i32 32
  %14 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %spi.i, align 4
  %family.i = getelementptr i8, ptr %nlh, i32 36
  %16 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %family.i, align 4
  %call3.i = tail call ptr @xfrm_state_lookup(ptr noundef %4, i32 noundef %and.i.i, ptr noundef %add.ptr.i, i32 noundef %15, i8 noundef zeroext %12, i16 noundef zeroext %17) #16
  br label %out.i

if.else.i:                                        ; preds = %xfrm_mark_get.exit.i
  %arrayidx.i31.i = getelementptr ptr, ptr %attrs, i32 13
  %18 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i31.i, align 4
  %tobool.not.i32.i = icmp eq ptr %19, null
  br i1 %tobool.not.i32.i, label %if.else.i.out_noput_crit_edge, label %verify_one_addr.exit.i

if.else.i.out_noput_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_noput

verify_one_addr.exit.i:                           ; preds = %if.else.i
  %add.ptr.i.i33.i = getelementptr i8, ptr %19, i32 4
  %tobool4.not.i = icmp eq ptr %add.ptr.i.i33.i, null
  br i1 %tobool4.not.i, label %verify_one_addr.exit.i.out_noput_crit_edge, label %if.end.i

verify_one_addr.exit.i.out_noput_crit_edge:       ; preds = %verify_one_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_noput

if.end.i:                                         ; preds = %verify_one_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %family8.i = getelementptr i8, ptr %nlh, i32 36
  %20 = ptrtoint ptr %family8.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %family8.i, align 4
  %call9.i = tail call ptr @xfrm_state_lookup_byaddr(ptr noundef %4, i32 noundef %and.i.i, ptr noundef %add.ptr.i, ptr noundef nonnull %add.ptr.i.i33.i, i8 noundef zeroext %12, i16 noundef zeroext %21) #16
  br label %out.i

out.i:                                            ; preds = %if.end.i, %if.then.i
  %x.1.i = phi ptr [ %call3.i, %if.then.i ], [ %call9.i, %if.end.i ]
  %tobool11.not.i.not = icmp eq ptr %x.1.i, null
  br i1 %tobool11.not.i.not, label %out.i.out_noput_crit_edge, label %if.end

out.i.out_noput_crit_edge:                        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_noput

if.end:                                           ; preds = %out.i
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %22 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nlmsg_seq, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #16
  %24 = getelementptr inbounds i8, ptr %info.i, i32 12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65535, ptr %24, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %xfrm_state_netlink.exit.thread, label %if.end.i19

xfrm_state_netlink.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #16
  br label %if.then5

if.end.i19:                                       ; preds = %if.end
  %26 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %skb, ptr %info.i, align 4
  %out_skb.i = getelementptr inbounds %struct.xfrm_dump_info, ptr %info.i, i32 0, i32 1
  %27 = ptrtoint ptr %out_skb.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i.i, ptr %out_skb.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.xfrm_dump_info, ptr %info.i, i32 0, i32 2
  %28 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %23, ptr %nlmsg_seq.i, align 4
  %call3.i17 = call i32 @dump_one_state(ptr noundef nonnull %x.1.i, i32 noundef 0, ptr noundef nonnull %info.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i17)
  %tobool4.not.i18 = icmp eq i32 %call3.i17, 0
  br i1 %tobool4.not.i18, label %if.end.i19.xfrm_state_netlink.exit_crit_edge, label %if.then5.i

if.end.i19.xfrm_state_netlink.exit_crit_edge:     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_state_netlink.exit

if.then5.i:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  %29 = inttoptr i32 %call3.i17 to ptr
  br label %xfrm_state_netlink.exit

xfrm_state_netlink.exit:                          ; preds = %if.then5.i, %if.end.i19.xfrm_state_netlink.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.then5.i ], [ %call.i.i.i, %if.end.i19.xfrm_state_netlink.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #16
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %xfrm_state_netlink.exit.if.then5_crit_edge, label %if.else

xfrm_state_netlink.exit.if.then5_crit_edge:       ; preds = %xfrm_state_netlink.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

if.then5:                                         ; preds = %xfrm_state_netlink.exit.if.then5_crit_edge, %xfrm_state_netlink.exit.thread
  %retval.0.i37 = phi ptr [ inttoptr (i32 -12 to ptr), %xfrm_state_netlink.exit.thread ], [ %retval.0.i, %xfrm_state_netlink.exit.if.then5_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i37 to i32
  br label %if.end8

if.else:                                          ; preds = %xfrm_state_netlink.exit
  call void @__sanitizer_cov_trace_pc() #18
  %nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 17
  %31 = ptrtoint ptr %nlsk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nlsk, align 8
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %33 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %portid, align 4
  %call.i = tail call i32 @netlink_unicast(ptr noundef %32, ptr noundef %retval.0.i, i32 noundef %34, i32 noundef 64) #16
  %35 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #16
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %storemerge = phi i32 [ %35, %if.else ], [ %30, %if.then5 ]
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %x.1.i, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i20, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_noput_crit_edge, label %if.then10.i.i.i.i, !prof !80

if.end5.i.i.i.i.out_noput_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_noput

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %out_noput

if.then.i20:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %x.1.i, i1 noundef zeroext false) #16
  br label %out_noput

out_noput:                                        ; preds = %if.then.i20, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_noput_crit_edge, %out.i.out_noput_crit_edge, %verify_one_addr.exit.i.out_noput_crit_edge, %if.else.i.out_noput_crit_edge
  %err.1 = phi i32 [ %storemerge, %if.end5.i.i.i.i.out_noput_crit_edge ], [ %storemerge, %if.then10.i.i.i.i ], [ %storemerge, %if.then.i20 ], [ -3, %out.i.out_noput_crit_edge ], [ -22, %verify_one_addr.exit.i.out_noput_crit_edge ], [ -22, %if.else.i.out_noput_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_dump_sa(ptr noundef %skb, ptr noundef %cb) #2 align 64 {
entry:
  %info = alloca %struct.xfrm_dump_info, align 4
  %attrs = alloca [33 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #16
  %6 = getelementptr inbounds i8, ptr %info, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %info, align 4
  %out_skb = getelementptr inbounds %struct.xfrm_dump_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %out_skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %skb, ptr %out_skb, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %12 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_seq2 = getelementptr inbounds %struct.xfrm_dump_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %nlmsg_seq2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %nlmsg_seq2, align 4
  %nlmsg_flags = getelementptr inbounds %struct.xfrm_dump_info, ptr %info, i32 0, i32 3
  %17 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %nlmsg_flags, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %attrs) #16
  %20 = call ptr @memset(ptr %attrs, i32 255, i32 132)
  %extack = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extack, align 4
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %24)
  %cmp.i.i = icmp ult i32 %24, 16
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #16
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup.thread_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup.thread_crit_edge:             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @__nlmsg_parse.__msg, ptr %22, align 4
  br label %cleanup.thread

nlmsg_parse_deprecated.exit:                      ; preds = %if.then
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 16
  %sub1.i.i.i = add i32 %24, -16
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 32, ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @xfrma_policy, i32 noundef 0, ptr noundef %22) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse_deprecated.exit.cleanup.thread_crit_edge, label %if.end

nlmsg_parse_deprecated.exit.cleanup.thread_crit_edge: ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end:                                           ; preds = %nlmsg_parse_deprecated.exit
  %arrayidx7 = getelementptr inbounds [33 x ptr], ptr %attrs, i32 0, i32 26
  %26 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %27, null
  br i1 %tobool8.not, label %if.end.if.end16_crit_edge, label %if.then9

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then9:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %27, i32 4
  %call12 = call ptr @kmemdup(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 3264) #16
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.then9.cleanup.thread_crit_edge, label %if.then9.if.end16_crit_edge

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then9.cleanup.thread_crit_edge:                ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end16:                                         ; preds = %if.then9.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %filter.0 = phi ptr [ %call12, %if.then9.if.end16_crit_edge ], [ null, %if.end.if.end16_crit_edge ]
  %arrayidx17 = getelementptr inbounds [33 x ptr], ptr %attrs, i32 0, i32 25
  %28 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %29, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.then19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.i.i, align 1
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then9.cleanup.thread_crit_edge, %nlmsg_parse_deprecated.exit.cleanup.thread_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.then9.cleanup.thread_crit_edge ], [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup.thread_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %attrs) #16
  br label %cleanup29

cleanup:                                          ; preds = %if.then19, %if.end16.cleanup_crit_edge
  %proto.0 = phi i8 [ %31, %if.then19 ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @xfrm_state_walk_init(ptr noundef %arrayidx, i8 noundef zeroext %proto.0, ptr noundef %filter.0) #16
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %attrs) #16
  br label %if.end27

if.end27:                                         ; preds = %cleanup, %entry.if.end27_crit_edge
  %call28 = call i32 @xfrm_state_walk(ptr noundef %4, ptr noundef %arrayidx, ptr noundef nonnull @dump_one_state, ptr noundef nonnull %info) #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %if.end27, %cleanup.thread
  %retval.1 = phi i32 [ %34, %if.end27 ], [ %retval.0.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #16
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_dump_sa_done(ptr noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  tail call void @xfrm_state_walk_done(ptr noundef %arrayidx, ptr noundef %9) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_add_policy(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  %c = alloca %struct.km_event, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #16
  %5 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %6 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %7 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %8 = call ptr @memset(ptr %c, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %share.i = getelementptr i8, ptr %nlh, i32 179
  %9 = ptrtoint ptr %share.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %share.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %switch.i = icmp ult i8 %10, 4
  br i1 %switch.i, label %sw.epilog.i, label %entry.verify_newpolicy_info.exit.thread_crit_edge

entry.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

sw.epilog.i:                                      ; preds = %entry
  %action.i = getelementptr i8, ptr %nlh, i32 177
  %11 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %action.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %switch52.i = icmp ult i8 %12, 2
  br i1 %switch52.i, label %sw.epilog4.i, label %sw.epilog.i.verify_newpolicy_info.exit.thread_crit_edge

sw.epilog.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

sw.epilog4.i:                                     ; preds = %sw.epilog.i
  %family.i = getelementptr i8, ptr %nlh, i32 56
  %13 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %family.i, align 8
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %14, label %sw.epilog4.i.verify_newpolicy_info.exit.thread_crit_edge [
    i16 2, label %sw.bb6.i
    i16 10, label %sw.bb14.i
  ]

sw.epilog4.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %sw.epilog4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

sw.bb6.i:                                         ; preds = %sw.epilog4.i
  %prefixlen_d.i = getelementptr i8, ptr %nlh, i32 58
  %16 = ptrtoint ptr %prefixlen_d.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %prefixlen_d.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %17)
  %cmp.i = icmp ugt i8 %17, 32
  br i1 %cmp.i, label %sw.bb6.i.verify_newpolicy_info.exit.thread_crit_edge, label %lor.lhs.false.i

sw.bb6.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

lor.lhs.false.i:                                  ; preds = %sw.bb6.i
  %prefixlen_s.i = getelementptr i8, ptr %nlh, i32 59
  %18 = ptrtoint ptr %prefixlen_s.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %prefixlen_s.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %19)
  %cmp12.i = icmp ugt i8 %19, 32
  br i1 %cmp12.i, label %lor.lhs.false.i.verify_newpolicy_info.exit.thread_crit_edge, label %lor.lhs.false.i.sw.epilog29.i_crit_edge

lor.lhs.false.i.sw.epilog29.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog29.i

lor.lhs.false.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

sw.bb14.i:                                        ; preds = %sw.epilog4.i
  %prefixlen_d16.i = getelementptr i8, ptr %nlh, i32 58
  %20 = ptrtoint ptr %prefixlen_d16.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %prefixlen_d16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %21)
  %cmp18.i = icmp ugt i8 %21, -128
  br i1 %cmp18.i, label %sw.bb14.i.verify_newpolicy_info.exit.thread_crit_edge, label %lor.lhs.false20.i

sw.bb14.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

lor.lhs.false20.i:                                ; preds = %sw.bb14.i
  %prefixlen_s22.i = getelementptr i8, ptr %nlh, i32 59
  %22 = ptrtoint ptr %prefixlen_s22.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %prefixlen_s22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %23)
  %cmp24.i = icmp ugt i8 %23, -128
  br i1 %cmp24.i, label %lor.lhs.false20.i.verify_newpolicy_info.exit.thread_crit_edge, label %lor.lhs.false20.i.sw.epilog29.i_crit_edge

lor.lhs.false20.i.sw.epilog29.i_crit_edge:        ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog29.i

lor.lhs.false20.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

sw.epilog29.i:                                    ; preds = %lor.lhs.false20.i.sw.epilog29.i_crit_edge, %lor.lhs.false.i.sw.epilog29.i_crit_edge
  %dir.i = getelementptr i8, ptr %nlh, i32 176
  %24 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dir.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %switch.i.i = icmp ult i8 %25, 3
  br i1 %switch.i.i, label %if.end31.i, label %sw.epilog29.i.verify_newpolicy_info.exit.thread_crit_edge

sw.epilog29.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %sw.epilog29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

if.end31.i:                                       ; preds = %sw.epilog29.i
  %index.i = getelementptr i8, ptr %nlh, i32 172
  %26 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool32.not.i = icmp eq i32 %27, 0
  %and.i.i = and i32 %27, 7
  %conv36.i = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %conv36.i)
  %cmp37.not.i = icmp eq i32 %and.i.i, %conv36.i
  %or.cond.i = select i1 %tobool32.not.i, i1 true, i1 %cmp37.not.i
  br i1 %or.cond.i, label %if.end, label %if.end31.i.verify_newpolicy_info.exit.thread_crit_edge

if.end31.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

verify_newpolicy_info.exit.thread:                ; preds = %if.end31.i.verify_newpolicy_info.exit.thread_crit_edge, %sw.epilog29.i.verify_newpolicy_info.exit.thread_crit_edge, %lor.lhs.false20.i.verify_newpolicy_info.exit.thread_crit_edge, %sw.bb14.i.verify_newpolicy_info.exit.thread_crit_edge, %lor.lhs.false.i.verify_newpolicy_info.exit.thread_crit_edge, %sw.bb6.i.verify_newpolicy_info.exit.thread_crit_edge, %sw.epilog4.i.verify_newpolicy_info.exit.thread_crit_edge, %sw.epilog.i.verify_newpolicy_info.exit.thread_crit_edge, %entry.verify_newpolicy_info.exit.thread_crit_edge
  %28 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -22, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end31.i
  %arrayidx.i = getelementptr ptr, ptr %attrs, i32 8
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %if.end.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.end.i:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i = zext i16 %32 to i32
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %30, align 2
  %conv.i.i = zext i16 %34 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i)
  %cmp.i41 = icmp slt i32 %sub.i.i, %conv.i
  br i1 %cmp.i41, label %if.end.i.verify_sec_ctx_len.exit_crit_edge, label %lor.lhs.false.i43

if.end.i.verify_sec_ctx_len.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_sec_ctx_len.exit

lor.lhs.false.i43:                                ; preds = %if.end.i
  %ctx_len.i = getelementptr i8, ptr %30, i32 10
  %35 = ptrtoint ptr %ctx_len.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ctx_len.i, align 2
  %conv5.i = zext i16 %36 to i32
  %add.i = add nuw nsw i32 %conv5.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp6.not.i = icmp eq i32 %add.i, %conv.i
  br i1 %cmp6.not.i, label %lor.lhs.false.i43.if.end6_crit_edge, label %lor.lhs.false.i43.verify_sec_ctx_len.exit_crit_edge

lor.lhs.false.i43.verify_sec_ctx_len.exit_crit_edge: ; preds = %lor.lhs.false.i43
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_sec_ctx_len.exit

lor.lhs.false.i43.if.end6_crit_edge:              ; preds = %lor.lhs.false.i43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

verify_sec_ctx_len.exit:                          ; preds = %lor.lhs.false.i43.verify_sec_ctx_len.exit_crit_edge, %if.end.i.verify_sec_ctx_len.exit_crit_edge
  %37 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -22, ptr %err, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false.i43.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %38 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %err, align 4
  %call7 = call fastcc ptr @xfrm_policy_construct(ptr noundef %4, ptr noundef %add.ptr.i, ptr noundef %attrs, ptr noundef nonnull %err)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %err, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %41 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %nlmsg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %42)
  %cmp = icmp eq i16 %42, 19
  %conv11 = zext i1 %cmp to i32
  %43 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dir.i, align 8
  %conv12 = zext i8 %44 to i32
  %call13 = tail call i32 @xfrm_policy_insert(i32 noundef %conv12, ptr noundef nonnull %call7, i32 noundef %conv11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %security = getelementptr inbounds %struct.xfrm_policy, ptr %call7, i32 0, i32 23
  %45 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %security, align 8
  tail call void @security_xfrm_policy_free(ptr noundef %46) #16
  tail call void @kfree(ptr noundef nonnull %call7) #16
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %47 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %nlmsg_type, align 4
  %conv19 = zext i16 %48 to i32
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv19, ptr %7, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %50 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nlmsg_seq, align 4
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %5, align 4
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 4
  %53 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nlmsg_pid, align 4
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %6, align 4
  %56 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dir.i, align 8
  %conv21 = zext i8 %57 to i32
  call void @km_policy_notify(ptr noundef nonnull %call7, i32 noundef %conv21, ptr noundef nonnull %c) #16
  %refcnt.i = getelementptr inbounds %struct.xfrm_policy, ptr %call7, i32 0, i32 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !80

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  call void @xfrm_policy_destroy(ptr noundef nonnull %call7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then16, %if.then9, %verify_sec_ctx_len.exit, %verify_newpolicy_info.exit.thread
  %retval.0 = phi i32 [ %call13, %if.then16 ], [ %40, %if.then9 ], [ -22, %verify_sec_ctx_len.exit ], [ -22, %verify_newpolicy_info.exit.thread ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_get_policy(ptr noundef %skb, ptr noundef %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  %info.i = alloca %struct.xfrm_dump_info, align 4
  %err = alloca i32, align 4
  %c = alloca %struct.km_event, align 4
  %m = alloca %struct.xfrm_mark, align 8
  %ctx = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #16
  %5 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %6 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %7 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %8 = call ptr @memset(ptr %c, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m) #16
  %9 = getelementptr inbounds %struct.xfrm_mark, ptr %m, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %10 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nlmsg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %11)
  %cmp = icmp eq i16 %11, 20
  %conv2 = zext i1 %cmp to i32
  %arrayidx.i = getelementptr ptr, ptr %attrs, i32 16
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %switch.i.i = icmp ult i8 %15, 2
  br i1 %switch.i.i, label %if.end.i.if.end_crit_edge, label %if.end.i.cleanup70_crit_edge

if.end.i.cleanup70_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup70

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %type.015.i = phi i8 [ %15, %if.end.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %dir = getelementptr i8, ptr %nlh, i32 76
  %16 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %switch.i = icmp ult i8 %17, 3
  %..i = select i1 %switch.i, i32 0, i32 -22
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %..i, ptr %err, align 4
  br i1 %switch.i, label %if.end7, label %if.end.cleanup70_crit_edge

if.end.cleanup70_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup70

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr ptr, ptr %attrs, i32 31
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %20, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i116 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i116 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i116, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %if_id.0 = phi i32 [ %22, %if.then9 ], [ 0, %if.end7.if.end12_crit_edge ]
  %arrayidx.i117 = getelementptr ptr, ptr %attrs, i32 21
  %23 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i117, align 4
  %tobool.not.i118 = icmp eq ptr %24, null
  br i1 %tobool.not.i118, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i119 = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i119 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %add.ptr.i.i119, align 1
  %27 = ptrtoint ptr %m to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %m, align 8
  br label %xfrm_mark_get.exit

if.else.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %9, align 4
  %29 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %m, align 8
  br label %xfrm_mark_get.exit

xfrm_mark_get.exit:                               ; preds = %if.else.i, %if.then.i
  %index = getelementptr i8, ptr %nlh, i32 72
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool14.not = icmp eq i32 %31, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %xfrm_mark_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %conv17 = zext i8 %17 to i32
  %call19 = call ptr @xfrm_policy_byid(ptr noundef %4, ptr noundef nonnull %m, i32 noundef %if_id.0, i8 noundef zeroext %type.015.i, i32 noundef %conv17, i32 noundef %31, i32 noundef %conv2, ptr noundef nonnull %err) #16
  br label %if.end40

if.else:                                          ; preds = %xfrm_mark_get.exit
  %arrayidx20 = getelementptr ptr, ptr %attrs, i32 8
  %32 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctx) #16
  %tobool.not.i122 = icmp eq ptr %33, null
  br i1 %tobool.not.i122, label %if.end24.thread, label %if.end.i124

if.end24.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %err, align 4
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %ctx, align 4
  br label %cleanup36

if.end.i124:                                      ; preds = %if.else
  %add.ptr.i.i123 = getelementptr i8, ptr %33, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i123 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i123, align 2
  %conv.i = zext i16 %37 to i32
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %33, align 2
  %conv.i.i = zext i16 %39 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i)
  %cmp.i = icmp slt i32 %sub.i.i, %conv.i
  br i1 %cmp.i, label %if.end.i124.cleanup36.thread_crit_edge, label %lor.lhs.false.i

if.end.i124.cleanup36.thread_crit_edge:           ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup36.thread

lor.lhs.false.i:                                  ; preds = %if.end.i124
  %ctx_len.i = getelementptr i8, ptr %33, i32 10
  %40 = ptrtoint ptr %ctx_len.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ctx_len.i, align 2
  %conv5.i = zext i16 %41 to i32
  %add.i = add nuw nsw i32 %conv5.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp6.not.i = icmp eq i32 %add.i, %conv.i
  br i1 %cmp6.not.i, label %if.then26, label %lor.lhs.false.i.cleanup36.thread_crit_edge

lor.lhs.false.i.cleanup36.thread_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup36.thread

if.then26:                                        ; preds = %lor.lhs.false.i
  %42 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %err, align 4
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %ctx, align 4
  %call28 = call i32 @security_xfrm_policy_alloc(ptr noundef nonnull %ctx, ptr noundef %add.ptr.i.i123, i32 noundef 3264) #16
  %44 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call28, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then26.cleanup36_crit_edge, label %if.then26.cleanup36.thread_crit_edge

if.then26.cleanup36.thread_crit_edge:             ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup36.thread

if.then26.cleanup36_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup36

cleanup36.thread:                                 ; preds = %if.then26.cleanup36.thread_crit_edge, %lor.lhs.false.i.cleanup36.thread_crit_edge, %if.end.i124.cleanup36.thread_crit_edge
  %retval.2.ph = phi i32 [ %call28, %if.then26.cleanup36.thread_crit_edge ], [ -22, %lor.lhs.false.i.cleanup36.thread_crit_edge ], [ -22, %if.end.i124.cleanup36.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx) #16
  br label %cleanup70

cleanup36:                                        ; preds = %if.then26.cleanup36_crit_edge, %if.end24.thread
  %45 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dir, align 4
  %conv34 = zext i8 %46 to i32
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 4
  %call35 = call ptr @xfrm_policy_bysel_ctx(ptr noundef %4, ptr noundef nonnull %m, i32 noundef %if_id.0, i8 noundef zeroext %type.015.i, i32 noundef %conv34, ptr noundef %add.ptr.i, ptr noundef %48, i32 noundef %conv2, ptr noundef nonnull %err) #16
  %49 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx, align 4
  call void @security_xfrm_policy_free(ptr noundef %50) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx) #16
  br label %if.end40

if.end40:                                         ; preds = %cleanup36, %if.then15
  %xp.1 = phi ptr [ %call19, %if.then15 ], [ %call35, %cleanup36 ]
  %cmp41 = icmp eq ptr %xp.1, null
  br i1 %cmp41, label %if.end40.cleanup70_crit_edge, label %if.end44

if.end40.cleanup70_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup70

if.end44:                                         ; preds = %if.end40
  br i1 %cmp, label %if.else56, label %if.then46

if.then46:                                        ; preds = %if.end44
  %51 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dir, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %53 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nlmsg_seq, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #16
  %55 = getelementptr inbounds i8, ptr %info.i, i32 12
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 65535, ptr %55, align 4
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool.not.i127 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i127, label %xfrm_policy_netlink.exit.thread, label %if.end.i128

xfrm_policy_netlink.exit.thread:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #16
  br label %if.then51

if.end.i128:                                      ; preds = %if.then46
  %conv48 = zext i8 %52 to i32
  %57 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %skb, ptr %info.i, align 4
  %out_skb.i = getelementptr inbounds %struct.xfrm_dump_info, ptr %info.i, i32 0, i32 1
  %58 = ptrtoint ptr %out_skb.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i.i, ptr %out_skb.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.xfrm_dump_info, ptr %info.i, i32 0, i32 2
  %59 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %54, ptr %nlmsg_seq.i, align 4
  %call3.i = call i32 @dump_one_policy(ptr noundef nonnull %xp.1, i32 noundef %conv48, i32 noundef 0, ptr noundef nonnull %info.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i128.xfrm_policy_netlink.exit_crit_edge, label %if.then5.i

if.end.i128.xfrm_policy_netlink.exit_crit_edge:   ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_policy_netlink.exit

if.then5.i:                                       ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  %60 = inttoptr i32 %call3.i to ptr
  br label %xfrm_policy_netlink.exit

xfrm_policy_netlink.exit:                         ; preds = %if.then5.i, %if.end.i128.xfrm_policy_netlink.exit_crit_edge
  %retval.0.i129 = phi ptr [ %60, %if.then5.i ], [ %call.i.i.i, %if.end.i128.xfrm_policy_netlink.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #16
  %cmp.i130 = icmp ugt ptr %retval.0.i129, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %xfrm_policy_netlink.exit.if.then51_crit_edge, label %if.else53

xfrm_policy_netlink.exit.if.then51_crit_edge:     ; preds = %xfrm_policy_netlink.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then51

if.then51:                                        ; preds = %xfrm_policy_netlink.exit.if.then51_crit_edge, %xfrm_policy_netlink.exit.thread
  %retval.0.i129145 = phi ptr [ inttoptr (i32 -12 to ptr), %xfrm_policy_netlink.exit.thread ], [ %retval.0.i129, %xfrm_policy_netlink.exit.if.then51_crit_edge ]
  %61 = ptrtoint ptr %retval.0.i129145 to i32
  br label %if.end55

if.else53:                                        ; preds = %xfrm_policy_netlink.exit
  call void @__sanitizer_cov_trace_pc() #18
  %nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 17
  %62 = ptrtoint ptr %nlsk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nlsk, align 8
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %64 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %portid, align 4
  %call.i = call i32 @netlink_unicast(ptr noundef %63, ptr noundef %retval.0.i129, i32 noundef %65, i32 noundef 64) #16
  %66 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #16
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then51
  %storemerge = phi i32 [ %66, %if.else53 ], [ %61, %if.then51 ]
  %67 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %storemerge, ptr %err, align 4
  br label %out

if.else56:                                        ; preds = %if.end44
  %68 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp58.not = icmp eq i32 %69, 0
  br i1 %cmp58.not, label %if.end61, label %if.else56.out_crit_edge

if.else56.out_crit_edge:                          ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end61:                                         ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #18
  %70 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index, align 4
  %72 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %c, align 4
  %73 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %nlmsg_type, align 4
  %conv64 = zext i16 %74 to i32
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv64, ptr %7, align 4
  %nlmsg_seq65 = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %76 = ptrtoint ptr %nlmsg_seq65 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nlmsg_seq65, align 4
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %5, align 4
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 4
  %79 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nlmsg_pid, align 4
  %81 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %6, align 4
  %82 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %dir, align 4
  %conv68 = zext i8 %83 to i32
  call void @km_policy_notify(ptr noundef nonnull %xp.1, i32 noundef %conv68, ptr noundef nonnull %c) #16
  br label %out

out:                                              ; preds = %if.end61, %if.else56.out_crit_edge, %if.end55
  %refcnt.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp.1, i32 0, i32 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i131, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.xfrm_pol_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !80

if.end5.i.i.i.i.xfrm_pol_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_pol_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %xfrm_pol_put.exit

if.then.i131:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  call void @xfrm_policy_destroy(ptr noundef nonnull %xp.1) #16
  br label %xfrm_pol_put.exit

xfrm_pol_put.exit:                                ; preds = %if.then.i131, %if.then10.i.i.i.i, %if.end5.i.i.i.i.xfrm_pol_put.exit_crit_edge
  %85 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %err, align 4
  br label %cleanup70

cleanup70:                                        ; preds = %xfrm_pol_put.exit, %if.end40.cleanup70_crit_edge, %cleanup36.thread, %if.end.cleanup70_crit_edge, %if.end.i.cleanup70_crit_edge
  %retval.3 = phi i32 [ %86, %xfrm_pol_put.exit ], [ -22, %if.end.cleanup70_crit_edge ], [ -2, %if.end40.cleanup70_crit_edge ], [ %retval.2.ph, %cleanup36.thread ], [ -22, %if.end.i.cleanup70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_dump_policy_start(ptr noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  tail call void @xfrm_policy_walk_init(ptr noundef %0, i8 noundef zeroext -1) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_dump_policy(ptr noundef %skb, ptr noundef %cb) #2 align 64 {
entry:
  %info = alloca %struct.xfrm_dump_info, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #16
  %6 = getelementptr inbounds i8, ptr %info, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %info, align 4
  %out_skb = getelementptr inbounds %struct.xfrm_dump_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %out_skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %skb, ptr %out_skb, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %12 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_seq2 = getelementptr inbounds %struct.xfrm_dump_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %nlmsg_seq2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %nlmsg_seq2, align 4
  %nlmsg_flags = getelementptr inbounds %struct.xfrm_dump_info, ptr %info, i32 0, i32 3
  %17 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %nlmsg_flags, align 4
  %call3 = call i32 @xfrm_policy_walk(ptr noundef %4, ptr noundef %5, ptr noundef nonnull @dump_one_policy, ptr noundef nonnull %info) #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #16
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_dump_policy_done(ptr noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cb, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  tail call void @xfrm_policy_walk_done(ptr noundef %0, ptr noundef %7) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_alloc_userspi(ptr noundef %skb, ptr noundef %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  %info.i = alloca %struct.xfrm_dump_info, align 4
  %m = alloca %struct.xfrm_mark, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m) #16
  %5 = getelementptr inbounds %struct.xfrm_mark, ptr %m, i32 0, i32 1
  %id = getelementptr i8, ptr %nlh, i32 72
  %proto = getelementptr i8, ptr %nlh, i32 92
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %proto, align 4
  %min = getelementptr i8, ptr %nlh, i32 240
  %8 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min, align 8
  %max = getelementptr i8, ptr %nlh, i32 244
  %10 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max, align 4
  %call2 = tail call i32 @verify_spi_info(i8 noundef zeroext %7, i32 noundef %9, i32 noundef %11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_noput_crit_edge

entry.out_noput_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_noput

if.end:                                           ; preds = %entry
  %family4 = getelementptr i8, ptr %nlh, i32 228
  %12 = ptrtoint ptr %family4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %family4, align 4
  %arrayidx.i = getelementptr ptr, ptr %attrs, i32 21
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %add.ptr.i.i, align 1
  %18 = ptrtoint ptr %m to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %m, align 8
  br label %xfrm_mark_get.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %5, align 4
  %20 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %m, align 8
  br label %xfrm_mark_get.exit

xfrm_mark_get.exit:                               ; preds = %if.else.i, %if.then.i
  %21 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %m, align 8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  %and.i = and i32 %24, %22
  %arrayidx = getelementptr ptr, ptr %attrs, i32 31
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %26, null
  br i1 %tobool9.not, label %xfrm_mark_get.exit.if.end13_crit_edge, label %if.then10

xfrm_mark_get.exit.if.end13_crit_edge:            ; preds = %xfrm_mark_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then10:                                        ; preds = %xfrm_mark_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i102 = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i102 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i102, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %xfrm_mark_get.exit.if.end13_crit_edge
  %if_id.0 = phi i32 [ %28, %if.then10 ], [ 0, %xfrm_mark_get.exit.if.end13_crit_edge ]
  %seq = getelementptr i8, ptr %nlh, i32 220
  %29 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool15.not = icmp eq i32 %30, 0
  br i1 %tobool15.not, label %if.end13.if.end38_crit_edge, label %if.then16

if.end13.if.end38_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then16:                                        ; preds = %if.end13
  %call19 = tail call ptr @xfrm_find_acq_byseq(ptr noundef %4, i32 noundef %and.i, i32 noundef %30) #16
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then16.if.end38_crit_edge, label %land.lhs.true

if.then16.if.end38_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

land.lhs.true:                                    ; preds = %if.then16
  %id21 = getelementptr inbounds %struct.xfrm_state, ptr %call19, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %13)
  %cond.i = icmp eq i16 %13, 10
  %31 = ptrtoint ptr %id21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id21, align 4
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 4
  br i1 %cond.i, label %sw.bb2.i, label %xfrm_addr_equal.exit

sw.bb2.i:                                         ; preds = %land.lhs.true
  %xor.i.i.i = xor i32 %34, %32
  %arrayidx4.i.i.i = getelementptr %struct.xfrm_state, ptr %call19, i32 0, i32 7, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr i8, ptr %nlh, i32 76
  %37 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %38, %36
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.xfrm_state, ptr %call19, i32 0, i32 7, i32 0, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr i8, ptr %nlh, i32 80
  %41 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %42, %40
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.xfrm_state, ptr %call19, i32 0, i32 7, i32 0, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx15.i.i.i, align 4
  %arrayidx17.i.i.i = getelementptr i8, ptr %nlh, i32 84
  %45 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %46, %44
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %sw.bb2.i.if.end41_crit_edge, label %sw.bb2.i.if.then25_crit_edge

sw.bb2.i.if.then25_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

sw.bb2.i.if.end41_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

xfrm_addr_equal.exit:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.i = icmp eq i32 %32, %34
  br i1 %cmp.i, label %xfrm_addr_equal.exit.if.end41_crit_edge, label %xfrm_addr_equal.exit.if.then25_crit_edge

xfrm_addr_equal.exit.if.then25_crit_edge:         ; preds = %xfrm_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

xfrm_addr_equal.exit.if.end41_crit_edge:          ; preds = %xfrm_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then25:                                        ; preds = %xfrm_addr_equal.exit.if.then25_crit_edge, %sw.bb2.i.if.then25_crit_edge
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call19, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i103, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end38_crit_edge, label %if.then10.i.i.i.i, !prof !80

if.end5.i.i.i.i.if.end38_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %if.end38

if.then.i103:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call19, i1 noundef zeroext false) #16
  br label %if.end38

if.end38:                                         ; preds = %if.then.i103, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end38_crit_edge, %if.then16.if.end38_crit_edge, %if.end13.if.end38_crit_edge
  %mode = getelementptr i8, ptr %nlh, i32 230
  %48 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %mode, align 2
  %reqid = getelementptr i8, ptr %nlh, i32 224
  %50 = ptrtoint ptr %reqid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reqid, align 8
  %52 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %proto, align 4
  %saddr = getelementptr i8, ptr %nlh, i32 96
  %call37 = call ptr @xfrm_find_acq(ptr noundef %4, ptr noundef nonnull %m, i8 noundef zeroext %49, i32 noundef %51, i32 noundef %if_id.0, i8 noundef zeroext %53, ptr noundef %id, ptr noundef %saddr, i32 noundef 1, i16 noundef zeroext %13) #16
  %cmp = icmp eq ptr %call37, null
  br i1 %cmp, label %if.end38.out_noput_crit_edge, label %if.end38.if.end41_crit_edge

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.end38.out_noput_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_noput

if.end41:                                         ; preds = %if.end38.if.end41_crit_edge, %xfrm_addr_equal.exit.if.end41_crit_edge, %sw.bb2.i.if.end41_crit_edge
  %x.1121 = phi ptr [ %call37, %if.end38.if.end41_crit_edge ], [ %call19, %xfrm_addr_equal.exit.if.end41_crit_edge ], [ %call19, %sw.bb2.i.if.end41_crit_edge ]
  %54 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %min, align 8
  %56 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max, align 4
  %call44 = call i32 @xfrm_alloc_spi(ptr noundef nonnull %x.1121, i32 noundef %55, i32 noundef %57) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end47:                                         ; preds = %if.end41
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %58 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nlmsg_seq, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #16
  %60 = getelementptr inbounds i8, ptr %info.i, i32 12
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 65535, ptr %60, align 4
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %tobool.not.i104 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i104, label %xfrm_state_netlink.exit.thread, label %if.end.i

xfrm_state_netlink.exit.thread:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #16
  br label %if.then50

if.end.i:                                         ; preds = %if.end47
  %62 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %skb, ptr %info.i, align 4
  %out_skb.i = getelementptr inbounds %struct.xfrm_dump_info, ptr %info.i, i32 0, i32 1
  %63 = ptrtoint ptr %out_skb.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i.i, ptr %out_skb.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.xfrm_dump_info, ptr %info.i, i32 0, i32 2
  %64 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %59, ptr %nlmsg_seq.i, align 4
  %call3.i = call i32 @dump_one_state(ptr noundef nonnull %x.1121, i32 noundef 0, ptr noundef nonnull %info.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.xfrm_state_netlink.exit_crit_edge, label %if.then5.i

if.end.i.xfrm_state_netlink.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_state_netlink.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  %65 = inttoptr i32 %call3.i to ptr
  br label %xfrm_state_netlink.exit

xfrm_state_netlink.exit:                          ; preds = %if.then5.i, %if.end.i.xfrm_state_netlink.exit_crit_edge
  %retval.0.i105 = phi ptr [ %65, %if.then5.i ], [ %call.i.i.i, %if.end.i.xfrm_state_netlink.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #16
  %cmp.i106 = icmp ugt ptr %retval.0.i105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %xfrm_state_netlink.exit.if.then50_crit_edge, label %if.end52

xfrm_state_netlink.exit.if.then50_crit_edge:      ; preds = %xfrm_state_netlink.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then50

if.then50:                                        ; preds = %xfrm_state_netlink.exit.if.then50_crit_edge, %xfrm_state_netlink.exit.thread
  %retval.0.i105128 = phi ptr [ inttoptr (i32 -12 to ptr), %xfrm_state_netlink.exit.thread ], [ %retval.0.i105, %xfrm_state_netlink.exit.if.then50_crit_edge ]
  %66 = ptrtoint ptr %retval.0.i105128 to i32
  br label %out

if.end52:                                         ; preds = %xfrm_state_netlink.exit
  call void @__sanitizer_cov_trace_pc() #18
  %nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 17
  %67 = ptrtoint ptr %nlsk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nlsk, align 8
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %69 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %portid, align 4
  %call.i = call i32 @netlink_unicast(ptr noundef %68, ptr noundef %retval.0.i105, i32 noundef %70, i32 noundef 64) #16
  %71 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #16
  br label %out

out:                                              ; preds = %if.end52, %if.then50, %if.end41.out_crit_edge
  %err.0 = phi i32 [ %call44, %if.end41.out_crit_edge ], [ %66, %if.then50 ], [ %71, %if.end52 ]
  %refcnt.i107 = getelementptr inbounds %struct.xfrm_state, ptr %x.1121, i32 0, i32 5
  %call.i.i.i.i.i.i108 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i107, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  call void @llvm.prefetch.p0(ptr %refcnt.i107, i32 1, i32 3, i32 1) #16
  %72 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i107, ptr %refcnt.i107, i32 1, ptr elementtype(i32) %refcnt.i107) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i109 = extractvalue { i32, i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i109)
  %cmp.i.i.i.i110 = icmp eq i32 %asmresult.i.i.i.i.i.i.i109, 1
  br i1 %cmp.i.i.i.i110, label %if.then.i114, label %if.end5.i.i.i.i112

if.end5.i.i.i.i112:                               ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i109)
  %.not.i.i.i.i111 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i109, 0
  br i1 %.not.i.i.i.i111, label %if.end5.i.i.i.i112.out_noput_crit_edge, label %if.then10.i.i.i.i113, !prof !80

if.end5.i.i.i.i112.out_noput_crit_edge:           ; preds = %if.end5.i.i.i.i112
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_noput

if.then10.i.i.i.i113:                             ; preds = %if.end5.i.i.i.i112
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcnt.i107, i32 noundef 3) #16
  br label %out_noput

if.then.i114:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  call void @__xfrm_state_destroy(ptr noundef nonnull %x.1121, i1 noundef zeroext false) #16
  br label %out_noput

out_noput:                                        ; preds = %if.then.i114, %if.then10.i.i.i.i113, %if.end5.i.i.i.i112.out_noput_crit_edge, %if.end38.out_noput_crit_edge, %entry.out_noput_crit_edge
  %err.1 = phi i32 [ %call2, %entry.out_noput_crit_edge ], [ -2, %if.end38.out_noput_crit_edge ], [ %err.0, %if.end5.i.i.i.i112.out_noput_crit_edge ], [ %err.0, %if.then10.i.i.i.i113 ], [ %err.0, %if.then.i114 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m) #16
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_add_acquire(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %arrayidx = getelementptr ptr, ptr %attrs, i32 5
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %call2 = tail call ptr @xfrm_state_alloc(ptr noundef %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -12, ptr %err, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.nomem_crit_edge, label %if.end

entry.nomem_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %nomem

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %attrs, i32 21
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.xfrm_mark_get.exit_crit_edge, label %if.then.i

if.end.xfrm_mark_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_mark_get.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %add.ptr.i.i, align 1
  %mark.sroa.0.0.extract.shift = lshr i64 %11, 32
  %mark.sroa.0.0.extract.trunc = trunc i64 %mark.sroa.0.0.extract.shift to i32
  %mark.sroa.7.0.extract.trunc = trunc i64 %11 to i32
  br label %xfrm_mark_get.exit

xfrm_mark_get.exit:                               ; preds = %if.then.i, %if.end.xfrm_mark_get.exit_crit_edge
  %mark.sroa.7.0 = phi i32 [ %mark.sroa.7.0.extract.trunc, %if.then.i ], [ 0, %if.end.xfrm_mark_get.exit_crit_edge ]
  %mark.sroa.0.0 = phi i32 [ %mark.sroa.0.0.extract.trunc, %if.then.i ], [ 0, %if.end.xfrm_mark_get.exit_crit_edge ]
  %policy = getelementptr i8, ptr %nlh, i32 112
  %share.i = getelementptr i8, ptr %nlh, i32 275
  %12 = ptrtoint ptr %share.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %share.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %switch.i = icmp ult i8 %13, 4
  br i1 %switch.i, label %sw.epilog.i, label %xfrm_mark_get.exit.verify_newpolicy_info.exit.thread_crit_edge

xfrm_mark_get.exit.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %xfrm_mark_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

sw.epilog.i:                                      ; preds = %xfrm_mark_get.exit
  %action.i = getelementptr i8, ptr %nlh, i32 273
  %14 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %action.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %switch52.i = icmp ult i8 %15, 2
  br i1 %switch52.i, label %sw.epilog4.i, label %sw.epilog.i.verify_newpolicy_info.exit.thread_crit_edge

sw.epilog.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

sw.epilog4.i:                                     ; preds = %sw.epilog.i
  %family.i = getelementptr i8, ptr %nlh, i32 152
  %16 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %family.i, align 8
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %17, label %sw.epilog4.i.verify_newpolicy_info.exit.thread_crit_edge [
    i16 2, label %sw.bb6.i
    i16 10, label %sw.bb14.i
  ]

sw.epilog4.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %sw.epilog4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

sw.bb6.i:                                         ; preds = %sw.epilog4.i
  %prefixlen_d.i = getelementptr i8, ptr %nlh, i32 154
  %19 = ptrtoint ptr %prefixlen_d.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %prefixlen_d.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %cmp.i = icmp ugt i8 %20, 32
  br i1 %cmp.i, label %sw.bb6.i.verify_newpolicy_info.exit.thread_crit_edge, label %lor.lhs.false.i

sw.bb6.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

lor.lhs.false.i:                                  ; preds = %sw.bb6.i
  %prefixlen_s.i = getelementptr i8, ptr %nlh, i32 155
  %21 = ptrtoint ptr %prefixlen_s.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %prefixlen_s.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %22)
  %cmp12.i = icmp ugt i8 %22, 32
  br i1 %cmp12.i, label %lor.lhs.false.i.verify_newpolicy_info.exit.thread_crit_edge, label %lor.lhs.false.i.sw.epilog29.i_crit_edge

lor.lhs.false.i.sw.epilog29.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog29.i

lor.lhs.false.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

sw.bb14.i:                                        ; preds = %sw.epilog4.i
  %prefixlen_d16.i = getelementptr i8, ptr %nlh, i32 154
  %23 = ptrtoint ptr %prefixlen_d16.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %prefixlen_d16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %24)
  %cmp18.i = icmp ugt i8 %24, -128
  br i1 %cmp18.i, label %sw.bb14.i.verify_newpolicy_info.exit.thread_crit_edge, label %lor.lhs.false20.i

sw.bb14.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

lor.lhs.false20.i:                                ; preds = %sw.bb14.i
  %prefixlen_s22.i = getelementptr i8, ptr %nlh, i32 155
  %25 = ptrtoint ptr %prefixlen_s22.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %prefixlen_s22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %26)
  %cmp24.i = icmp ugt i8 %26, -128
  br i1 %cmp24.i, label %lor.lhs.false20.i.verify_newpolicy_info.exit.thread_crit_edge, label %lor.lhs.false20.i.sw.epilog29.i_crit_edge

lor.lhs.false20.i.sw.epilog29.i_crit_edge:        ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog29.i

lor.lhs.false20.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

sw.epilog29.i:                                    ; preds = %lor.lhs.false20.i.sw.epilog29.i_crit_edge, %lor.lhs.false.i.sw.epilog29.i_crit_edge
  %dir.i = getelementptr i8, ptr %nlh, i32 272
  %27 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dir.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %switch.i.i = icmp ult i8 %28, 3
  br i1 %switch.i.i, label %if.end31.i, label %sw.epilog29.i.verify_newpolicy_info.exit.thread_crit_edge

sw.epilog29.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %sw.epilog29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

if.end31.i:                                       ; preds = %sw.epilog29.i
  %index.i = getelementptr i8, ptr %nlh, i32 268
  %29 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool32.not.i = icmp eq i32 %30, 0
  %and.i.i = and i32 %30, 7
  %conv36.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %conv36.i)
  %cmp37.not.i = icmp eq i32 %and.i.i, %conv36.i
  %or.cond.i = select i1 %tobool32.not.i, i1 true, i1 %cmp37.not.i
  br i1 %or.cond.i, label %if.end7, label %if.end31.i.verify_newpolicy_info.exit.thread_crit_edge

if.end31.i.verify_newpolicy_info.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_newpolicy_info.exit.thread

verify_newpolicy_info.exit.thread:                ; preds = %if.end31.i.verify_newpolicy_info.exit.thread_crit_edge, %sw.epilog29.i.verify_newpolicy_info.exit.thread_crit_edge, %lor.lhs.false20.i.verify_newpolicy_info.exit.thread_crit_edge, %sw.bb14.i.verify_newpolicy_info.exit.thread_crit_edge, %lor.lhs.false.i.verify_newpolicy_info.exit.thread_crit_edge, %sw.bb6.i.verify_newpolicy_info.exit.thread_crit_edge, %sw.epilog4.i.verify_newpolicy_info.exit.thread_crit_edge, %sw.epilog.i.verify_newpolicy_info.exit.thread_crit_edge, %xfrm_mark_get.exit.verify_newpolicy_info.exit.thread_crit_edge
  %31 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -22, ptr %err, align 4
  br label %free_state

if.end7:                                          ; preds = %if.end31.i
  %arrayidx.i89 = getelementptr ptr, ptr %attrs, i32 8
  %32 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i89, align 4
  %tobool.not.i90 = icmp eq ptr %33, null
  br i1 %tobool.not.i90, label %if.end7.if.end11_crit_edge, label %if.end.i

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end.i:                                         ; preds = %if.end7
  %add.ptr.i.i91 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i91 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i.i91, align 2
  %conv.i = zext i16 %35 to i32
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %33, align 2
  %conv.i.i = zext i16 %37 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i)
  %cmp.i92 = icmp slt i32 %sub.i.i, %conv.i
  br i1 %cmp.i92, label %if.end.i.verify_sec_ctx_len.exit_crit_edge, label %lor.lhs.false.i94

if.end.i.verify_sec_ctx_len.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_sec_ctx_len.exit

lor.lhs.false.i94:                                ; preds = %if.end.i
  %ctx_len.i = getelementptr i8, ptr %33, i32 10
  %38 = ptrtoint ptr %ctx_len.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ctx_len.i, align 2
  %conv5.i = zext i16 %39 to i32
  %add.i = add nuw nsw i32 %conv5.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp6.not.i = icmp eq i32 %add.i, %conv.i
  br i1 %cmp6.not.i, label %lor.lhs.false.i94.if.end11_crit_edge, label %lor.lhs.false.i94.verify_sec_ctx_len.exit_crit_edge

lor.lhs.false.i94.verify_sec_ctx_len.exit_crit_edge: ; preds = %lor.lhs.false.i94
  call void @__sanitizer_cov_trace_pc() #18
  br label %verify_sec_ctx_len.exit

lor.lhs.false.i94.if.end11_crit_edge:             ; preds = %lor.lhs.false.i94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

verify_sec_ctx_len.exit:                          ; preds = %lor.lhs.false.i94.verify_sec_ctx_len.exit_crit_edge, %if.end.i.verify_sec_ctx_len.exit_crit_edge
  %40 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -22, ptr %err, align 4
  br label %free_state

if.end11:                                         ; preds = %lor.lhs.false.i94.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %41 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %err, align 4
  %call13 = call fastcc ptr @xfrm_policy_construct(ptr noundef %4, ptr noundef %policy, ptr noundef %attrs, ptr noundef nonnull %err)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.free_state_crit_edge, label %if.end16

if.end11.free_state_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_state

if.end16:                                         ; preds = %if.end11
  %id = getelementptr inbounds %struct.xfrm_state, ptr %call2, i32 0, i32 7
  %42 = call ptr @memcpy(ptr %id, ptr %add.ptr.i, i32 24)
  %props = getelementptr inbounds %struct.xfrm_state, ptr %call2, i32 0, i32 14
  %saddr = getelementptr inbounds %struct.xfrm_state, ptr %call2, i32 0, i32 14, i32 8
  %saddr18 = getelementptr i8, ptr %nlh, i32 40
  %43 = call ptr @memcpy(ptr %saddr, ptr %saddr18, i32 16)
  %sel = getelementptr inbounds %struct.xfrm_state, ptr %call2, i32 0, i32 8
  %sel19 = getelementptr i8, ptr %nlh, i32 56
  %44 = call ptr @memcpy(ptr %sel, ptr %sel19, i32 56)
  %mark20 = getelementptr inbounds %struct.xfrm_state, ptr %call2, i32 0, i32 9
  %m21 = getelementptr inbounds %struct.xfrm_state, ptr %call2, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %m21 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mark.sroa.7.0, ptr %m21, align 4
  %mark22 = getelementptr inbounds %struct.xfrm_policy, ptr %call13, i32 0, i32 11
  %m23 = getelementptr inbounds %struct.xfrm_policy, ptr %call13, i32 0, i32 11, i32 1
  %46 = ptrtoint ptr %m23 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mark.sroa.7.0, ptr %m23, align 4
  %47 = ptrtoint ptr %mark20 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mark.sroa.0.0, ptr %mark20, align 4
  %48 = ptrtoint ptr %mark22 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mark.sroa.0.0, ptr %mark22, align 8
  %xfrm_nr = getelementptr inbounds %struct.xfrm_policy, ptr %call13, i32 0, i32 21
  %49 = ptrtoint ptr %xfrm_nr to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %xfrm_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp106.not = icmp eq i8 %50, 0
  br i1 %cmp106.not, label %if.end16.for.end_crit_edge, label %for.body.lr.ph

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %add.ptr.i96 = getelementptr i8, ptr %6, i32 4
  %mode34 = getelementptr inbounds %struct.xfrm_state, ptr %call2, i32 0, i32 14, i32 1
  %family38 = getelementptr inbounds %struct.xfrm_state, ptr %call2, i32 0, i32 14, i32 7
  %aalgos = getelementptr i8, ptr %nlh, i32 280
  %ealgos = getelementptr i8, ptr %nlh, i32 284
  %calgos = getelementptr i8, ptr %nlh, i32 288
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %ut.0107 = phi ptr [ %add.ptr.i96, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %arrayidx30 = getelementptr %struct.xfrm_policy, ptr %call13, i32 0, i32 24, i32 %i.0108
  %51 = call ptr @memcpy(ptr %id, ptr %arrayidx30, i32 24)
  %mode = getelementptr %struct.xfrm_policy, ptr %call13, i32 0, i32 24, i32 %i.0108, i32 4
  %52 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %mode, align 4
  %54 = ptrtoint ptr %mode34 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %mode34, align 4
  %reqid = getelementptr %struct.xfrm_policy, ptr %call13, i32 0, i32 24, i32 %i.0108, i32 3
  %55 = ptrtoint ptr %reqid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reqid, align 4
  %57 = ptrtoint ptr %props to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %props, align 4
  %family = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.0107, i32 0, i32 1
  %58 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %family, align 4
  %60 = ptrtoint ptr %family38 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %family38, align 2
  %61 = ptrtoint ptr %aalgos to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %aalgos, align 8
  %aalgos39 = getelementptr %struct.xfrm_policy, ptr %call13, i32 0, i32 24, i32 %i.0108, i32 8
  %63 = ptrtoint ptr %aalgos39 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %aalgos39, align 4
  %64 = ptrtoint ptr %ealgos to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ealgos, align 4
  %ealgos40 = getelementptr %struct.xfrm_policy, ptr %call13, i32 0, i32 24, i32 %i.0108, i32 9
  %66 = ptrtoint ptr %ealgos40 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %ealgos40, align 4
  %67 = ptrtoint ptr %calgos to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %calgos, align 8
  %calgos41 = getelementptr %struct.xfrm_policy, ptr %call13, i32 0, i32 24, i32 %i.0108, i32 10
  %69 = ptrtoint ptr %calgos41 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %calgos41, align 4
  %call42 = tail call i32 @km_query(ptr noundef nonnull %call2, ptr noundef %arrayidx30, ptr noundef nonnull %call13) #16
  %inc = add nuw nsw i32 %i.0108, 1
  %incdec.ptr = getelementptr %struct.xfrm_user_tmpl, ptr %ut.0107, i32 1
  %70 = ptrtoint ptr %xfrm_nr to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %xfrm_nr, align 4
  %conv = zext i8 %71 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  tail call void @xfrm_state_free(ptr noundef nonnull %call2) #16
  tail call void @kfree(ptr noundef nonnull %call13) #16
  br label %cleanup

free_state:                                       ; preds = %if.end11.free_state_crit_edge, %verify_sec_ctx_len.exit, %verify_newpolicy_info.exit.thread
  tail call void @xfrm_state_free(ptr noundef nonnull %call2) #16
  br label %nomem

nomem:                                            ; preds = %free_state, %entry.nomem_crit_edge
  %72 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %for.end
  %retval.0 = phi i32 [ %73, %nomem ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_add_sa_expire(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %attrs, i32 21
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.xfrm_mark_get.exit_crit_edge, label %if.then.i

entry.xfrm_mark_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_mark_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %add.ptr.i.i, align 1
  %m.sroa.0.0.extract.shift = lshr i64 %8, 32
  %9 = and i64 %m.sroa.0.0.extract.shift, %8
  %10 = trunc i64 %9 to i32
  br label %xfrm_mark_get.exit

xfrm_mark_get.exit:                               ; preds = %if.then.i, %entry.xfrm_mark_get.exit_crit_edge
  %and.i = phi i32 [ %10, %if.then.i ], [ 0, %entry.xfrm_mark_get.exit_crit_edge ]
  %id = getelementptr i8, ptr %nlh, i32 72
  %spi = getelementptr i8, ptr %nlh, i32 88
  %11 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spi, align 8
  %proto = getelementptr i8, ptr %nlh, i32 92
  %13 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %proto, align 4
  %family = getelementptr i8, ptr %nlh, i32 228
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %family, align 4
  %call5 = tail call ptr @xfrm_state_lookup(ptr noundef %4, i32 noundef %and.i, ptr noundef %id, i32 noundef %12, i8 noundef zeroext %14, i16 noundef zeroext %16) #16
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %xfrm_mark_get.exit.cleanup_crit_edge, label %if.end

xfrm_mark_get.exit.cleanup_crit_edge:             ; preds = %xfrm_mark_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %xfrm_mark_get.exit
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %call5, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %state6 = getelementptr inbounds %struct.xfrm_state, ptr %call5, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %state6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %state6, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp7.not = icmp eq i8 %18, 2
  br i1 %cmp7.not, label %if.end10, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end10:                                         ; preds = %if.end
  %hard = getelementptr i8, ptr %nlh, i32 240
  %19 = ptrtoint ptr %hard to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hard, align 8
  %conv11 = zext i8 %20 to i32
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 4
  %21 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nlmsg_pid, align 4
  tail call void @km_state_expired(ptr noundef nonnull %call5, i32 noundef %conv11, i32 noundef %22) #16
  %23 = ptrtoint ptr %hard to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hard, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.end10.out_crit_edge, label %if.then13

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %call14 = tail call i32 @__xfrm_state_delete(ptr noundef nonnull %call5) #16
  br label %out

out:                                              ; preds = %if.then13, %if.end10.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ -22, %if.end.out_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end10.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call5, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i37, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !80

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %cleanup

if.then.i37:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call5, i1 noundef zeroext false) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i37, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %xfrm_mark_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %xfrm_mark_get.exit.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_add_pol_expire(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  %err = alloca i32, align 4
  %m = alloca %struct.xfrm_mark, align 8
  %ctx = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m) #16
  %5 = getelementptr inbounds %struct.xfrm_mark, ptr %m, i32 0, i32 1
  %arrayidx.i = getelementptr ptr, ptr %attrs, i32 16
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %switch.i.i = icmp ult i8 %9, 2
  br i1 %switch.i.i, label %if.end.i.if.end_crit_edge, label %if.end.i.cleanup57_crit_edge

if.end.i.cleanup57_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup57

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %type.015.i = phi i8 [ %9, %if.end.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %dir = getelementptr i8, ptr %nlh, i32 176
  %10 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dir, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %switch.i = icmp ult i8 %11, 3
  %..i = select i1 %switch.i, i32 0, i32 -22
  %12 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %..i, ptr %err, align 4
  br i1 %switch.i, label %if.end6, label %if.end.cleanup57_crit_edge

if.end.cleanup57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup57

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr ptr, ptr %attrs, i32 31
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i92 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i92, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %if_id.0 = phi i32 [ %16, %if.then8 ], [ 0, %if.end6.if.end11_crit_edge ]
  %arrayidx.i93 = getelementptr ptr, ptr %attrs, i32 21
  %17 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i93, align 4
  %tobool.not.i94 = icmp eq ptr %18, null
  br i1 %tobool.not.i94, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i95 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i95 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %add.ptr.i.i95, align 1
  %21 = ptrtoint ptr %m to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %m, align 8
  br label %xfrm_mark_get.exit

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %5, align 4
  %23 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %m, align 8
  br label %xfrm_mark_get.exit

xfrm_mark_get.exit:                               ; preds = %if.else.i, %if.then.i
  %index = getelementptr i8, ptr %nlh, i32 172
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool13.not = icmp eq i32 %25, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %xfrm_mark_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %11 to i32
  %call17 = call ptr @xfrm_policy_byid(ptr noundef %4, ptr noundef nonnull %m, i32 noundef %if_id.0, i8 noundef zeroext %type.015.i, i32 noundef %conv, i32 noundef %25, i32 noundef 0, ptr noundef nonnull %err) #16
  br label %if.end38

if.else:                                          ; preds = %xfrm_mark_get.exit
  %arrayidx18 = getelementptr ptr, ptr %attrs, i32 8
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctx) #16
  %tobool.not.i98 = icmp eq ptr %27, null
  br i1 %tobool.not.i98, label %if.end22.thread, label %if.end.i100

if.end22.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %err, align 4
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %ctx, align 4
  br label %cleanup34

if.end.i100:                                      ; preds = %if.else
  %add.ptr.i.i99 = getelementptr i8, ptr %27, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i99, align 2
  %conv.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %27, align 2
  %conv.i.i = zext i16 %33 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i)
  %cmp.i = icmp slt i32 %sub.i.i, %conv.i
  br i1 %cmp.i, label %if.end.i100.cleanup34.thread_crit_edge, label %lor.lhs.false.i

if.end.i100.cleanup34.thread_crit_edge:           ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup34.thread

lor.lhs.false.i:                                  ; preds = %if.end.i100
  %ctx_len.i = getelementptr i8, ptr %27, i32 10
  %34 = ptrtoint ptr %ctx_len.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ctx_len.i, align 2
  %conv5.i = zext i16 %35 to i32
  %add.i = add nuw nsw i32 %conv5.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp6.not.i = icmp eq i32 %add.i, %conv.i
  br i1 %cmp6.not.i, label %if.then24, label %lor.lhs.false.i.cleanup34.thread_crit_edge

lor.lhs.false.i.cleanup34.thread_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup34.thread

if.then24:                                        ; preds = %lor.lhs.false.i
  %36 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %err, align 4
  %37 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %ctx, align 4
  %call26 = call i32 @security_xfrm_policy_alloc(ptr noundef nonnull %ctx, ptr noundef %add.ptr.i.i99, i32 noundef 3264) #16
  %38 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call26, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then24.cleanup34_crit_edge, label %if.then24.cleanup34.thread_crit_edge

if.then24.cleanup34.thread_crit_edge:             ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup34.thread

if.then24.cleanup34_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup34

cleanup34.thread:                                 ; preds = %if.then24.cleanup34.thread_crit_edge, %lor.lhs.false.i.cleanup34.thread_crit_edge, %if.end.i100.cleanup34.thread_crit_edge
  %retval.2.ph = phi i32 [ %call26, %if.then24.cleanup34.thread_crit_edge ], [ -22, %lor.lhs.false.i.cleanup34.thread_crit_edge ], [ -22, %if.end.i100.cleanup34.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx) #16
  br label %cleanup57

cleanup34:                                        ; preds = %if.then24.cleanup34_crit_edge, %if.end22.thread
  %39 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dir, align 8
  %conv32 = zext i8 %40 to i32
  %41 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx, align 4
  %call33 = call ptr @xfrm_policy_bysel_ctx(ptr noundef %4, ptr noundef nonnull %m, i32 noundef %if_id.0, i8 noundef zeroext %type.015.i, i32 noundef %conv32, ptr noundef %add.ptr.i, ptr noundef %42, i32 noundef 0, ptr noundef nonnull %err) #16
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 4
  call void @security_xfrm_policy_free(ptr noundef %44) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx) #16
  br label %if.end38

if.end38:                                         ; preds = %cleanup34, %if.then14
  %xp.1 = phi ptr [ %call17, %if.then14 ], [ %call33, %cleanup34 ]
  %cmp = icmp eq ptr %xp.1, null
  br i1 %cmp, label %if.end38.cleanup57_crit_edge, label %if.end41

if.end38.cleanup57_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup57

if.end41:                                         ; preds = %if.end38
  %dead = getelementptr inbounds %struct.xfrm_policy, ptr %xp.1, i32 0, i32 15, i32 1
  %45 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dead, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool42.not = icmp eq i8 %46, 0
  br i1 %tobool42.not, label %if.end46, label %if.end41.out_crit_edge, !prof !80

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end46:                                         ; preds = %if.end41
  %47 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %err, align 4
  %hard = getelementptr i8, ptr %nlh, i32 184
  %48 = ptrtoint ptr %hard to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hard, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool47.not = icmp eq i8 %49, 0
  br i1 %tobool47.not, label %if.end46.if.end52_crit_edge, label %if.then48

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dir, align 8
  %conv50 = zext i8 %51 to i32
  %call51 = call i32 @xfrm_policy_delete(ptr noundef nonnull %xp.1, i32 noundef %conv50) #16
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end46.if.end52_crit_edge
  %52 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dir, align 8
  %conv54 = zext i8 %53 to i32
  %54 = ptrtoint ptr %hard to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hard, align 8
  %conv56 = zext i8 %55 to i32
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 4
  %56 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nlmsg_pid, align 4
  call void @km_policy_expired(ptr noundef nonnull %xp.1, i32 noundef %conv54, i32 noundef %conv56, i32 noundef %57) #16
  br label %out

out:                                              ; preds = %if.end52, %if.end41.out_crit_edge
  %refcnt.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp.1, i32 0, i32 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i103, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.xfrm_pol_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !80

if.end5.i.i.i.i.xfrm_pol_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_pol_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %xfrm_pol_put.exit

if.then.i103:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  call void @xfrm_policy_destroy(ptr noundef nonnull %xp.1) #16
  br label %xfrm_pol_put.exit

xfrm_pol_put.exit:                                ; preds = %if.then.i103, %if.then10.i.i.i.i, %if.end5.i.i.i.i.xfrm_pol_put.exit_crit_edge
  %59 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %err, align 4
  br label %cleanup57

cleanup57:                                        ; preds = %xfrm_pol_put.exit, %if.end38.cleanup57_crit_edge, %cleanup34.thread, %if.end.cleanup57_crit_edge, %if.end.i.cleanup57_crit_edge
  %retval.3 = phi i32 [ %60, %xfrm_pol_put.exit ], [ -22, %if.end.cleanup57_crit_edge ], [ -2, %if.end38.cleanup57_crit_edge ], [ %retval.2.ph, %cleanup34.thread ], [ -22, %if.end.i.cleanup57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_flush_sa(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %nlh, ptr nocapture noundef readnone %attrs) #2 align 64 {
entry:
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #16
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i, align 1
  %call2 = tail call i32 @xfrm_state_flush(ptr noundef %4, i8 noundef zeroext %6, i1 noundef zeroext true, i1 noundef zeroext false) #16
  %7 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call2, label %if.end [
    i32 0, label %if.end4
    i32 -3, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 4
  %9 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %10 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %11 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i, align 1
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %c, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %15 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nlmsg_type, align 4
  %conv6 = zext i16 %16 to i32
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv6, ptr %9, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %18 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nlmsg_seq, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %11, align 4
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 4
  %21 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nlmsg_pid, align 4
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %10, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %4, ptr %8, align 4
  call void @km_state_notify(ptr noundef null, ptr noundef nonnull %c) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_flush_policy(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #16
  %5 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %6 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %7 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %8 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 4
  %arrayidx.i = getelementptr ptr, ptr %attrs, i32 16
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %switch.i.i = icmp ult i8 %12, 2
  br i1 %switch.i.i, label %if.end.i.if.end_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %type.015.i = phi i8 [ %12, %if.end.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %call2 = tail call i32 @xfrm_policy_flush(ptr noundef %4, i8 noundef zeroext %type.015.i, i1 noundef zeroext true) #16
  %13 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call2, label %if.end6 [
    i32 0, label %if.end7
    i32 -3, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %type.015.i to i32
  %14 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %c, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %15 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nlmsg_type, align 4
  %conv8 = zext i16 %16 to i32
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv8, ptr %7, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %18 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nlmsg_seq, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %5, align 4
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 4
  %21 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nlmsg_pid, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %6, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %4, ptr %8, align 4
  call void @km_policy_notify(ptr noundef null, i32 noundef 0, ptr noundef nonnull %c) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end6, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end6 ], [ 0, %if.end7 ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_new_ae(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #16
  %5 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %6 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %7 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %arrayidx2 = getelementptr ptr, ptr %attrs, i32 23
  %8 = call ptr @memset(ptr %c, i32 255, i32 20)
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr ptr, ptr %attrs, i32 9
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr ptr, ptr %attrs, i32 12
  %arrayidx5 = getelementptr ptr, ptr %attrs, i32 11
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx5, align 4
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx4, align 4
  %arrayidx = getelementptr ptr, ptr %attrs, i32 10
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %18, null
  %tobool8.not = icmp eq ptr %10, null
  %or.cond = select i1 %tobool6.not, i1 %tobool8.not, i1 false
  %tobool10.not = icmp eq ptr %16, null
  %or.cond70 = select i1 %or.cond, i1 %tobool10.not, i1 false
  %tobool12.not = icmp eq ptr %14, null
  %or.cond71 = select i1 %or.cond70, i1 %tobool12.not, i1 false
  br i1 %or.cond71, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 2
  %19 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %nlmsg_flags, align 2
  %21 = and i16 %20, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool13.not = icmp eq i16 %21, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %arrayidx.i = getelementptr ptr, ptr %attrs, i32 21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end15.xfrm_mark_get.exit_crit_edge, label %if.then.i

if.end15.xfrm_mark_get.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_mark_get.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %add.ptr.i.i, align 1
  %m.sroa.0.0.extract.shift = lshr i64 %25, 32
  %26 = and i64 %m.sroa.0.0.extract.shift, %25
  %27 = trunc i64 %26 to i32
  br label %xfrm_mark_get.exit

xfrm_mark_get.exit:                               ; preds = %if.then.i, %if.end15.xfrm_mark_get.exit_crit_edge
  %and.i = phi i32 [ %27, %if.then.i ], [ 0, %if.end15.xfrm_mark_get.exit_crit_edge ]
  %spi = getelementptr i8, ptr %nlh, i32 32
  %28 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %spi, align 4
  %proto = getelementptr i8, ptr %nlh, i32 38
  %30 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %proto, align 2
  %family = getelementptr i8, ptr %nlh, i32 36
  %32 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %family, align 4
  %call20 = tail call ptr @xfrm_state_lookup(ptr noundef %4, i32 noundef %and.i, ptr noundef %add.ptr.i, i32 noundef %29, i8 noundef zeroext %31, i16 noundef zeroext %33) #16
  %cmp = icmp eq ptr %call20, null
  br i1 %cmp, label %xfrm_mark_get.exit.cleanup_crit_edge, label %if.end23

xfrm_mark_get.exit.cleanup_crit_edge:             ; preds = %xfrm_mark_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end23:                                         ; preds = %xfrm_mark_get.exit
  %state = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 13, i32 1
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp25.not = icmp eq i8 %35, 2
  br i1 %cmp25.not, label %if.end28, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end28:                                         ; preds = %if.end23
  %replay_esn = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 30
  %36 = ptrtoint ptr %replay_esn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %replay_esn, align 8
  %tobool.not.i72 = icmp eq ptr %37, null
  %tobool1.not.i = icmp eq ptr %10, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i72
  br i1 %or.cond.i, label %if.end28.if.end32_crit_edge, label %if.end.i

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.end.i:                                         ; preds = %if.end28
  %add.ptr.i.i73 = getelementptr i8, ptr %10, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i73, align 4
  %mul.i.i = shl i32 %39, 2
  %add.i.i = add i32 %mul.i.i, 24
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %10, align 2
  %conv.i.i = zext i16 %41 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %add.i.i)
  %cmp.i = icmp slt i32 %sub.i.i, %add.i.i
  br i1 %cmp.i, label %if.end.i.out_crit_edge, label %lor.lhs.false4.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false4.i:                                 ; preds = %if.end.i
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %37, align 4
  %mul.i26.i = shl i32 %43, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i26.i, i32 %mul.i.i)
  %cmp6.not.i = icmp eq i32 %mul.i26.i, %mul.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %39)
  %cmp9.not.i = icmp eq i32 %43, %39
  %or.cond28.i = and i1 %cmp9.not.i, %cmp6.not.i
  br i1 %or.cond28.i, label %if.end11.i, label %lor.lhs.false4.i.out_crit_edge

lor.lhs.false4.i.out_crit_edge:                   ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end11.i:                                       ; preds = %lor.lhs.false4.i
  %replay_window.i = getelementptr i8, ptr %10, i32 24
  %44 = ptrtoint ptr %replay_window.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %replay_window.i, align 4
  %mul13.i = shl i32 %39, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %mul13.i)
  %cmp14.i = icmp ugt i32 %45, %mul13.i
  br i1 %cmp14.i, label %if.end11.i.out_crit_edge, label %if.end11.i.if.end32_crit_edge

if.end11.i.if.end32_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.end11.i.out_crit_edge:                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end32:                                         ; preds = %if.end11.i.if.end32_crit_edge, %if.end28.if.end32_crit_edge
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %arrayidx.i74 = getelementptr ptr, ptr %attrs, i32 10
  %46 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i74, align 4
  %48 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx2, align 4
  %50 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx3, align 4
  %52 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx4, align 4
  %54 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx5, align 4
  %arrayidx5.i = getelementptr ptr, ptr %attrs, i32 32
  %56 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %49, null
  br i1 %tobool6.not.i, label %if.end32.if.end.i79_crit_edge, label %if.then.i78

if.end32.if.end.i79_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i79

if.then.i78:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i75 = getelementptr i8, ptr %49, i32 4
  %58 = ptrtoint ptr %replay_esn to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %replay_esn, align 8
  %60 = ptrtoint ptr %add.ptr.i.i75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i.i75, align 4
  %mul.i.i76 = shl i32 %61, 2
  %add.i.i77 = add i32 %mul.i.i76, 24
  %62 = call ptr @memcpy(ptr %59, ptr %add.ptr.i.i75, i32 %add.i.i77)
  %preplay_esn.i = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 32
  %63 = ptrtoint ptr %preplay_esn.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %preplay_esn.i, align 8
  %65 = load i32, ptr %add.ptr.i.i75, align 4
  %mul.i70.i = shl i32 %65, 2
  %add.i71.i = add i32 %mul.i70.i, 24
  %66 = call ptr @memcpy(ptr %64, ptr %add.ptr.i.i75, i32 %add.i71.i)
  br label %if.end.i79

if.end.i79:                                       ; preds = %if.then.i78, %if.end32.if.end.i79_crit_edge
  %tobool10.not.i = icmp eq ptr %47, null
  br i1 %tobool10.not.i, label %if.end.i79.if.end14.i_crit_edge, label %if.then11.i

if.end.i79.if.end14.i_crit_edge:                  ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i72.i = getelementptr i8, ptr %47, i32 4
  %replay13.i = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 29
  %67 = call ptr @memcpy(ptr %replay13.i, ptr %add.ptr.i72.i, i32 12)
  %preplay.i = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 31
  %68 = call ptr @memcpy(ptr %preplay.i, ptr %add.ptr.i72.i, i32 12)
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end.i79.if.end14.i_crit_edge
  %tobool15.not.i = icmp eq ptr %51, null
  br i1 %tobool15.not.i, label %if.end14.i.if.end25.i_crit_edge, label %if.then16.i

if.end14.i.if.end25.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i73.i = getelementptr i8, ptr %51, i32 4
  %69 = ptrtoint ptr %add.ptr.i73.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %add.ptr.i73.i, align 8
  %curlft.i = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 39
  %71 = ptrtoint ptr %curlft.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %curlft.i, align 8
  %packets.i = getelementptr i8, ptr %51, i32 12
  %72 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %packets.i, align 8
  %packets20.i = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 39, i32 1
  %74 = ptrtoint ptr %packets20.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %packets20.i, align 8
  %add_time.i = getelementptr i8, ptr %51, i32 20
  %75 = ptrtoint ptr %add_time.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %add_time.i, align 8
  %add_time22.i = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 39, i32 2
  %77 = ptrtoint ptr %add_time22.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %add_time22.i, align 8
  %use_time.i = getelementptr i8, ptr %51, i32 28
  %78 = ptrtoint ptr %use_time.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %use_time.i, align 8
  %use_time24.i = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 39, i32 3
  %80 = ptrtoint ptr %use_time24.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %use_time24.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end25.i_crit_edge
  %tobool26.not.i = icmp eq ptr %53, null
  br i1 %tobool26.not.i, label %if.end25.i.if.end29.i_crit_edge, label %if.then27.i

if.end25.i.if.end29.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 4
  %81 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i.i.i, align 4
  %replay_maxage.i = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 35
  %83 = ptrtoint ptr %replay_maxage.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %replay_maxage.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end25.i.if.end29.i_crit_edge
  %tobool30.not.i = icmp eq ptr %55, null
  br i1 %tobool30.not.i, label %if.end29.i.if.end33.i_crit_edge, label %if.then31.i

if.end29.i.if.end33.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33.i

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i74.i = getelementptr i8, ptr %55, i32 4
  %84 = ptrtoint ptr %add.ptr.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.i.i74.i, align 4
  %replay_maxdiff.i = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 36
  %86 = ptrtoint ptr %replay_maxdiff.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %replay_maxdiff.i, align 8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %if.end29.i.if.end33.i_crit_edge
  %tobool34.not.i = icmp eq ptr %57, null
  br i1 %tobool34.not.i, label %if.end33.i.xfrm_update_ae_params.exit_crit_edge, label %if.then35.i

if.end33.i.xfrm_update_ae_params.exit_crit_edge:  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_update_ae_params.exit

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i75.i = getelementptr i8, ptr %57, i32 4
  %87 = ptrtoint ptr %add.ptr.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr.i.i75.i, align 4
  %mapping_maxage.i = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 23
  %89 = ptrtoint ptr %mapping_maxage.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %mapping_maxage.i, align 4
  br label %xfrm_update_ae_params.exit

xfrm_update_ae_params.exit:                       ; preds = %if.then35.i, %if.end33.i.xfrm_update_ae_params.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %90 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %nlmsg_type, align 4
  %conv34 = zext i16 %91 to i32
  %92 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv34, ptr %7, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %93 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nlmsg_seq, align 4
  %95 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %5, align 4
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 4
  %96 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nlmsg_pid, align 4
  %98 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %6, align 4
  %99 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 64, ptr %c, align 4
  call void @km_state_notify(ptr noundef nonnull %call20, ptr noundef nonnull %c) #16
  br label %out

out:                                              ; preds = %xfrm_update_ae_params.exit, %if.end11.i.out_crit_edge, %lor.lhs.false4.i.out_crit_edge, %if.end.i.out_crit_edge, %if.end23.out_crit_edge
  %err.0 = phi i32 [ -22, %if.end23.out_crit_edge ], [ 0, %xfrm_update_ae_params.exit ], [ -22, %lor.lhs.false4.i.out_crit_edge ], [ -22, %if.end.i.out_crit_edge ], [ -22, %if.end11.i.out_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call20, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i80, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !80

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %cleanup

if.then.i80:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  call void @__xfrm_state_destroy(ptr noundef nonnull %call20, i1 noundef zeroext false) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i80, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %xfrm_mark_get.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -3, %xfrm_mark_get.exit.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i80 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_get_ae(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  %c = alloca %struct.km_event, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %c) #16
  %5 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 1
  %6 = getelementptr inbounds %struct.km_event, ptr %c, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %arrayidx.i = getelementptr ptr, ptr %attrs, i32 21
  %7 = getelementptr inbounds i8, ptr %c, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 -1, ptr %7, align 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.xfrm_mark_get.exit_crit_edge, label %if.then.i

entry.xfrm_mark_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_mark_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %add.ptr.i.i, align 1
  %m.sroa.0.0.extract.shift = lshr i64 %12, 32
  %13 = and i64 %m.sroa.0.0.extract.shift, %12
  %14 = trunc i64 %13 to i32
  br label %xfrm_mark_get.exit

xfrm_mark_get.exit:                               ; preds = %if.then.i, %entry.xfrm_mark_get.exit_crit_edge
  %and.i = phi i32 [ %14, %if.then.i ], [ 0, %entry.xfrm_mark_get.exit_crit_edge ]
  %spi = getelementptr i8, ptr %nlh, i32 32
  %15 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %spi, align 4
  %proto = getelementptr i8, ptr %nlh, i32 38
  %17 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %proto, align 2
  %family = getelementptr i8, ptr %nlh, i32 36
  %19 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %family, align 4
  %call3 = tail call ptr @xfrm_state_lookup(ptr noundef %4, i32 noundef %and.i, ptr noundef %add.ptr.i, i32 noundef %16, i8 noundef zeroext %18, i16 noundef zeroext %20) #16
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %xfrm_mark_get.exit.cleanup_crit_edge, label %if.end

xfrm_mark_get.exit.cleanup_crit_edge:             ; preds = %xfrm_mark_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %xfrm_mark_get.exit
  %replay_esn.i = getelementptr inbounds %struct.xfrm_state, ptr %call3, i32 0, i32 30
  %21 = ptrtoint ptr %replay_esn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %replay_esn.i, align 8
  %tobool.not.i48 = icmp eq ptr %22, null
  br i1 %tobool.not.i48, label %if.end.xfrm_aevent_msgsize.exit_crit_edge, label %cond.true.i

if.end.xfrm_aevent_msgsize.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_aevent_msgsize.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %mul.i.i = shl i32 %24, 2
  %25 = add i32 %mul.i.i, 143
  %phi.bo15.i = and i32 %25, -4
  %phi.bo = add i32 %phi.bo15.i, 19
  %phi.bo59 = and i32 %phi.bo, -4
  br label %xfrm_aevent_msgsize.exit

xfrm_aevent_msgsize.exit:                         ; preds = %cond.true.i, %if.end.xfrm_aevent_msgsize.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo59, %cond.true.i ], [ 144, %if.end.xfrm_aevent_msgsize.exit_crit_edge ]
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %cond.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp6 = icmp eq ptr %call.i.i, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %xfrm_aevent_msgsize.exit
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call3, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i49, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !80

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %cleanup

if.then.i49:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call3, i1 noundef zeroext false) #16
  br label %cleanup

if.end8:                                          ; preds = %xfrm_aevent_msgsize.exit
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %call3, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %flags = getelementptr i8, ptr %nlh, i32 56
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %29 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %c, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %30 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nlmsg_seq, align 4
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %5, align 4
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 4
  %33 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nlmsg_pid, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %6, align 4
  %call9 = call fastcc i32 @build_aevent(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call3, ptr noundef nonnull %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.body13, label %do.end19, !prof !68

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2293, 0\0A.popsection", ""() #16, !srcloc !83
  unreachable

do.end19:                                         ; preds = %if.end8
  %nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 17
  %36 = ptrtoint ptr %nlsk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nlsk, align 8
  %portid20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %38 = ptrtoint ptr %portid20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %portid20, align 4
  %call.i = tail call i32 @netlink_unicast(ptr noundef %37, ptr noundef nonnull %call.i.i, i32 noundef %39, i32 noundef 64) #16
  %40 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  %refcnt.i50 = getelementptr inbounds %struct.xfrm_state, ptr %call3, i32 0, i32 5
  %call.i.i.i.i.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i50, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %refcnt.i50, i32 1, i32 3, i32 1) #16
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i50, ptr %refcnt.i50, i32 1, ptr elementtype(i32) %refcnt.i50) #16, !srcloc !79
  %asmresult.i.i.i.i.i.i.i52 = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i52)
  %cmp.i.i.i.i53 = icmp eq i32 %asmresult.i.i.i.i.i.i.i52, 1
  br i1 %cmp.i.i.i.i53, label %if.then.i57, label %if.end5.i.i.i.i55

if.end5.i.i.i.i55:                                ; preds = %do.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i52)
  %.not.i.i.i.i54 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i52, 0
  br i1 %.not.i.i.i.i54, label %if.end5.i.i.i.i55.cleanup_crit_edge, label %if.then10.i.i.i.i56, !prof !80

if.end5.i.i.i.i55.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i56:                              ; preds = %if.end5.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i50, i32 noundef 3) #16
  br label %cleanup

if.then.i57:                                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !81
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call3, i1 noundef zeroext false) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i57, %if.then10.i.i.i.i56, %if.end5.i.i.i.i55.cleanup_crit_edge, %if.then.i49, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %xfrm_mark_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %xfrm_mark_get.exit.cleanup_crit_edge ], [ -12, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -12, %if.then10.i.i.i.i ], [ -12, %if.then.i49 ], [ %40, %if.end5.i.i.i.i55.cleanup_crit_edge ], [ %40, %if.then10.i.i.i.i56 ], [ %40, %if.then.i57 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %c) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_do_migrate(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  %m = alloca [6 x %struct.xfrm_migrate], align 4
  %km = alloca %struct.xfrm_kmaddress, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %m) #16
  %0 = call ptr @memset(ptr %m, i32 255, i32 456)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %km) #16
  %1 = call ptr @memset(ptr %km, i32 255, i32 40)
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %arrayidx = getelementptr ptr, ptr %attrs, i32 17
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %attrs, i32 19
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %10, null
  %km. = select i1 %tobool.not, ptr null, ptr %km
  %arrayidx.i = getelementptr ptr, ptr %attrs, i32 16
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %if.end.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.end.i:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %switch.i.i = icmp ult i8 %14, 2
  br i1 %switch.i.i, label %if.end.i.if.end6_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %type.015.i = phi i8 [ %14, %if.end.i.if.end6_crit_edge ], [ 0, %if.end.if.end6_crit_edge ]
  br i1 %tobool.not, label %if.end6.if.end.i59_crit_edge, label %if.then.i

if.end6.if.end.i59_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i59

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i58 = getelementptr i8, ptr %10, i32 4
  %15 = call ptr @memcpy(ptr %km., ptr %add.ptr.i.i58, i32 16)
  %km.sroa.gep = getelementptr inbounds %struct.xfrm_kmaddress, ptr %km, i32 0, i32 1
  %remote3.i = getelementptr i8, ptr %10, i32 20
  %16 = call ptr @memcpy(ptr %km.sroa.gep, ptr %remote3.i, i32 16)
  %family.i = getelementptr i8, ptr %10, i32 40
  %17 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %family.i, align 4
  %km.sroa.gep64 = getelementptr inbounds %struct.xfrm_kmaddress, ptr %km, i32 0, i32 3
  %19 = ptrtoint ptr %km.sroa.gep64 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %km.sroa.gep64, align 4
  %reserved.i = getelementptr i8, ptr %10, i32 36
  %20 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reserved.i, align 4
  %km.sroa.gep66 = getelementptr inbounds %struct.xfrm_kmaddress, ptr %km, i32 0, i32 2
  %22 = ptrtoint ptr %km.sroa.gep66 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %km.sroa.gep66, align 4
  br label %if.end.i59

if.end.i59:                                       ; preds = %if.then.i, %if.end6.if.end.i59_crit_edge
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %8, align 2
  %conv.i.i = zext i16 %24 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %div.i = udiv i32 %sub.i.i, 76
  %25 = add nsw i32 %conv.i.i, -536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -456, i32 %25)
  %26 = icmp ult i32 %25, -456
  br i1 %26, label %if.end.i59.cleanup_crit_edge, label %for.cond.preheader.i

if.end.i59.cleanup_crit_edge:                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %sub.i.i)
  %27 = icmp ult i32 %sub.i.i, 76
  br i1 %27, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %add.ptr.i57.i = getelementptr i8, ptr %8, i32 4
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.061.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %um.060.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i57.i, %for.body.preheader.i ]
  %ma.addr.059.i = phi ptr [ %incdec.ptr22.i, %for.body.i.for.body.i_crit_edge ], [ %m, %for.body.preheader.i ]
  %28 = call ptr @memcpy(ptr %ma.addr.059.i, ptr %um.060.i, i32 16)
  %old_saddr.i = getelementptr inbounds %struct.xfrm_migrate, ptr %ma.addr.059.i, i32 0, i32 1
  %old_saddr14.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.060.i, i32 0, i32 1
  %29 = call ptr @memcpy(ptr %old_saddr.i, ptr %old_saddr14.i, i32 16)
  %new_daddr.i = getelementptr inbounds %struct.xfrm_migrate, ptr %ma.addr.059.i, i32 0, i32 2
  %new_daddr15.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.060.i, i32 0, i32 2
  %30 = call ptr @memcpy(ptr %new_daddr.i, ptr %new_daddr15.i, i32 16)
  %new_saddr.i = getelementptr inbounds %struct.xfrm_migrate, ptr %ma.addr.059.i, i32 0, i32 3
  %new_saddr16.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.060.i, i32 0, i32 3
  %31 = call ptr @memcpy(ptr %new_saddr.i, ptr %new_saddr16.i, i32 16)
  %proto.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.060.i, i32 0, i32 4
  %32 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %proto.i, align 4
  %proto17.i = getelementptr inbounds %struct.xfrm_migrate, ptr %ma.addr.059.i, i32 0, i32 4
  %34 = ptrtoint ptr %proto17.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %proto17.i, align 4
  %mode.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.060.i, i32 0, i32 5
  %35 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mode.i, align 1
  %mode18.i = getelementptr inbounds %struct.xfrm_migrate, ptr %ma.addr.059.i, i32 0, i32 5
  %37 = ptrtoint ptr %mode18.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %mode18.i, align 1
  %reqid.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.060.i, i32 0, i32 7
  %38 = ptrtoint ptr %reqid.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reqid.i, align 4
  %reqid19.i = getelementptr inbounds %struct.xfrm_migrate, ptr %ma.addr.059.i, i32 0, i32 7
  %40 = ptrtoint ptr %reqid19.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %reqid19.i, align 4
  %old_family.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.060.i, i32 0, i32 8
  %41 = ptrtoint ptr %old_family.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %old_family.i, align 4
  %old_family20.i = getelementptr inbounds %struct.xfrm_migrate, ptr %ma.addr.059.i, i32 0, i32 8
  %43 = ptrtoint ptr %old_family20.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %old_family20.i, align 4
  %new_family.i = getelementptr inbounds %struct.xfrm_user_migrate, ptr %um.060.i, i32 0, i32 9
  %44 = ptrtoint ptr %new_family.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %new_family.i, align 2
  %new_family21.i = getelementptr inbounds %struct.xfrm_migrate, ptr %ma.addr.059.i, i32 0, i32 9
  %46 = ptrtoint ptr %new_family21.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %new_family21.i, align 2
  %inc.i = add nuw nsw i32 %i.061.i, 1
  %incdec.ptr.i = getelementptr %struct.xfrm_user_migrate, ptr %um.060.i, i32 1
  %incdec.ptr22.i = getelementptr %struct.xfrm_migrate, ptr %ma.addr.059.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end13, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end13:                                         ; preds = %for.body.i
  %arrayidx14 = getelementptr ptr, ptr %attrs, i32 4
  %47 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %48, null
  br i1 %tobool15.not, label %if.end13.if.end23_crit_edge, label %if.then16

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then16:                                        ; preds = %if.end13
  %add.ptr.i61 = getelementptr i8, ptr %48, i32 4
  %call19 = tail call ptr @kmemdup(ptr noundef %add.ptr.i61, i32 noundef 24, i32 noundef 3264) #16
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then16.cleanup_crit_edge, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end23:                                         ; preds = %if.then16.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  %encap.0 = phi ptr [ %call19, %if.then16.if.end23_crit_edge ], [ null, %if.end13.if.end23_crit_edge ]
  %arrayidx24 = getelementptr ptr, ptr %attrs, i32 31
  %49 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %50, null
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i62 = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.i62, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %if_id.0 = phi i32 [ %52, %if.then26 ], [ 0, %if.end23.if.end29_crit_edge ]
  %dir = getelementptr i8, ptr %nlh, i32 76
  %53 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dir, align 4
  %call31 = call i32 @xfrm_migrate(ptr noundef %add.ptr.i, i8 noundef zeroext %54, i8 noundef zeroext %type.015.i, ptr noundef nonnull %m, i32 noundef %umax.i, ptr noundef %km., ptr noundef %6, ptr noundef %encap.0, i32 noundef %if_id.0) #16
  call void @kfree(ptr noundef %encap.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then16.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end.i59.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end29 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then16.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.i59.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %km) #16
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %m) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_get_sadinfo(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %nlh, ptr nocapture noundef readnone %attrs) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %si.i = alloca %struct.xfrmk_sadinfo, align 4
  %sh.i = alloca %struct.xfrmu_sadhinfo, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %5 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %portid, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %7 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nlmsg_seq, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si.i) #16
  %11 = ptrtoint ptr %si.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %si.i, align 4, !annotation !84
  %12 = getelementptr inbounds %struct.xfrmk_sadinfo, ptr %si.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !84
  %14 = getelementptr inbounds %struct.xfrmk_sadinfo, ptr %si.i, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sh.i) #16
  %16 = getelementptr inbounds %struct.xfrmu_sadhinfo, ptr %sh.i, i32 0, i32 1
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end.build_sadinfo.exit.thread_crit_edge

if.end.build_sadinfo.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_sadinfo.exit.thread

skb_tailroom.exit.i.i:                            ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %19 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.build_sadinfo.exit.thread_crit_edge, label %nlmsg_put.exit.i, !prof !68

skb_tailroom.exit.i.i.build_sadinfo.exit.thread_crit_edge: ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_sadinfo.exit.thread

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %6, i32 noundef %8, i32 noundef 34, i32 noundef 4, i32 noundef 0) #16
  %cmp.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.i, label %nlmsg_put.exit.i.build_sadinfo.exit.thread_crit_edge, label %if.end.i

nlmsg_put.exit.i.build_sadinfo.exit.thread_crit_edge: ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_sadinfo.exit.thread

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %10, ptr %add.ptr.i.i, align 4
  call void @xfrm_sad_getinfo(ptr noundef %4, ptr noundef nonnull %si.i) #16
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %12, align 4
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %16, align 4
  %27 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %si.i, align 4
  %29 = ptrtoint ptr %sh.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sh.i, align 4
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #16
  %32 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tmp.i.i, align 4
  %call.i.i27 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27)
  %tobool.not.i = icmp eq i32 %call.i.i27, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end7.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %sh.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool8.not.i, label %build_sadinfo.exit.thread30, label %if.end7.i.if.then.i.i.i_crit_edge

if.end7.i.if.then.i.i.i_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end7.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %err.034.i = phi i32 [ %call6.i, %if.end7.i.if.then.i.i.i_crit_edge ], [ %call.i.i27, %if.end.i.if.then.i.i.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %34, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.build_sadinfo.exit_crit_edge, !prof !68

if.then.i.i.i.build_sadinfo.exit_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_sadinfo.exit

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %build_sadinfo.exit

build_sadinfo.exit.thread30:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %37 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sh.i) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si.i) #16
  br label %do.end14

build_sadinfo.exit.thread:                        ; preds = %nlmsg_put.exit.i.build_sadinfo.exit.thread_crit_edge, %skb_tailroom.exit.i.i.build_sadinfo.exit.thread_crit_edge, %if.end.build_sadinfo.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sh.i) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si.i) #16
  br label %do.body8

build_sadinfo.exit:                               ; preds = %do.end.i.i.i, %if.then.i.i.i.build_sadinfo.exit_crit_edge
  %38 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i24.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i25.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.i26.i = sub i32 %sub.ptr.lhs.cast.i.i24.i, %sub.ptr.rhs.cast.i.i25.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i26.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sh.i) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.034.i)
  %cmp5 = icmp slt i32 %err.034.i, 0
  br i1 %cmp5, label %build_sadinfo.exit.do.body8_crit_edge, label %build_sadinfo.exit.do.end14_crit_edge, !prof !68

build_sadinfo.exit.do.end14_crit_edge:            ; preds = %build_sadinfo.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end14

build_sadinfo.exit.do.body8_crit_edge:            ; preds = %build_sadinfo.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body8

do.body8:                                         ; preds = %build_sadinfo.exit.do.body8_crit_edge, %build_sadinfo.exit.thread
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1374, 0\0A.popsection", ""() #16, !srcloc !85
  unreachable

do.end14:                                         ; preds = %build_sadinfo.exit.do.end14_crit_edge, %build_sadinfo.exit.thread30
  %nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 17
  %40 = ptrtoint ptr %nlsk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nlsk, align 8
  %call.i = call i32 @netlink_unicast(ptr noundef %41, ptr noundef nonnull %call.i.i, i32 noundef %6, i32 noundef 64) #16
  %42 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %42, %do.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_set_spdinfo(ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %nlh, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %arrayidx = getelementptr ptr, ptr %attrs, i32 3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %9 = and i16 %8, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %cmp = icmp eq i16 %9, 4
  br i1 %cmp, label %if.then.cleanup65_crit_edge, label %if.end

if.then.cleanup65_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

if.end:                                           ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %11)
  %cmp5 = icmp ugt i8 %11, 32
  br i1 %cmp5, label %if.end.cleanup65_crit_edge, label %cleanup

if.end.cleanup65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

cleanup:                                          ; preds = %if.end
  %rbits = getelementptr i8, ptr %6, i32 5
  %12 = ptrtoint ptr %rbits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rbits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %13)
  %cmp8 = icmp ult i8 %13, 33
  br i1 %cmp8, label %cleanup.if.end12_crit_edge, label %cleanup.cleanup65_crit_edge

cleanup.cleanup65_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

cleanup.if.end12_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end12:                                         ; preds = %cleanup.if.end12_crit_edge, %entry.if.end12_crit_edge
  %thresh4.1 = phi ptr [ %add.ptr.i, %cleanup.if.end12_crit_edge ], [ null, %entry.if.end12_crit_edge ]
  %arrayidx13 = getelementptr ptr, ptr %attrs, i32 4
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.end12.if.end38_crit_edge, label %if.then15

if.end12.if.end38_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then15:                                        ; preds = %if.end12
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %18 = and i16 %17, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %18)
  %cmp19 = icmp eq i16 %18, 4
  br i1 %cmp19, label %if.then15.cleanup65_crit_edge, label %if.end22

if.then15.cleanup65_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

if.end22:                                         ; preds = %if.then15
  %add.ptr.i95 = getelementptr i8, ptr %15, i32 4
  %19 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i95, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %20)
  %cmp26 = icmp ugt i8 %20, -128
  br i1 %cmp26, label %if.end22.cleanup65_crit_edge, label %cleanup35

if.end22.cleanup65_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

cleanup35:                                        ; preds = %if.end22
  %rbits29 = getelementptr i8, ptr %15, i32 5
  %21 = ptrtoint ptr %rbits29 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rbits29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %22)
  %cmp31 = icmp ult i8 %22, -127
  br i1 %cmp31, label %cleanup35.if.end38_crit_edge, label %cleanup35.cleanup65_crit_edge

cleanup35.cleanup65_crit_edge:                    ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

cleanup35.if.end38_crit_edge:                     ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.end38:                                         ; preds = %cleanup35.if.end38_crit_edge, %if.end12.if.end38_crit_edge
  %thresh6.1 = phi ptr [ %add.ptr.i95, %cleanup35.if.end38_crit_edge ], [ null, %if.end12.if.end38_crit_edge ]
  %tobool39.not = icmp eq ptr %thresh4.1, null
  %tobool41.not = icmp eq ptr %thresh6.1, null
  %or.cond = and i1 %tobool39.not, %tobool41.not
  br i1 %or.cond, label %if.end38.cleanup65_crit_edge, label %if.then42

if.end38.cleanup65_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

if.then42:                                        ; preds = %if.end38
  %lock = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 1
  %lock.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 1, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %23 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lock, align 4
  %inc.i.i.i.i = add i32 %24, 1
  store i32 %inc.i.i.i.i, ptr %lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !86
  %dep_map.i.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 1, i32 0, i32 0, i32 1
  %25 = tail call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %26) #16
  br i1 %tobool39.not, label %if.then42.if.end51_crit_edge, label %if.then44

if.then42.if.end51_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %thresh4.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %thresh4.1, align 1
  %lbits4 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 2
  %29 = ptrtoint ptr %lbits4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %lbits4, align 4
  %rbits48 = getelementptr inbounds %struct.xfrmu_spdhthresh, ptr %thresh4.1, i32 0, i32 1
  %30 = ptrtoint ptr %rbits48 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rbits48, align 1
  %rbits4 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 3
  %32 = ptrtoint ptr %rbits4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %rbits4, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %if.then42.if.end51_crit_edge
  br i1 %tobool41.not, label %if.end51.if.end60_crit_edge, label %if.then53

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %thresh6.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %thresh6.1, align 1
  %lbits6 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 4
  %35 = ptrtoint ptr %lbits6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %lbits6, align 2
  %rbits57 = getelementptr inbounds %struct.xfrmu_spdhthresh, ptr %thresh6.1, i32 0, i32 1
  %36 = ptrtoint ptr %rbits57 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rbits57, align 1
  %rbits6 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 5
  %38 = ptrtoint ptr %rbits6 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %rbits6, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then53, %if.end51.if.end60_crit_edge
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %26) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !87
  %39 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lock, align 4
  %inc.i.i.i = add i32 %40, 1
  store i32 %inc.i.i.i, ptr %lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  tail call void @xfrm_policy_hash_rebuild(ptr noundef %4) #16
  br label %cleanup65

cleanup65:                                        ; preds = %if.end60, %if.end38.cleanup65_crit_edge, %cleanup35.cleanup65_crit_edge, %if.end22.cleanup65_crit_edge, %if.then15.cleanup65_crit_edge, %cleanup.cleanup65_crit_edge, %if.end.cleanup65_crit_edge, %if.then.cleanup65_crit_edge
  %retval.3 = phi i32 [ -22, %cleanup35.cleanup65_crit_edge ], [ -22, %cleanup.cleanup65_crit_edge ], [ 0, %if.end38.cleanup65_crit_edge ], [ 0, %if.end60 ], [ -22, %if.then.cleanup65_crit_edge ], [ -22, %if.end.cleanup65_crit_edge ], [ -22, %if.then15.cleanup65_crit_edge ], [ -22, %if.end22.cleanup65_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_get_spdinfo(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %nlh, ptr nocapture noundef readnone %attrs) #2 align 64 {
entry:
  %si.i = alloca %struct.xfrmk_spdinfo, align 4
  %spc.i = alloca %struct.xfrmu_spdinfo, align 4
  %sph.i = alloca %struct.xfrmu_spdhinfo, align 4
  %spt4.i = alloca %struct.xfrmu_spdhthresh, align 1
  %spt6.i = alloca %struct.xfrmu_spdhthresh, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %5 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %portid, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %7 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nlmsg_seq, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 76, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %si.i) #16
  %11 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %si.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %si.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %si.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %si.i, i32 0, i32 4
  %15 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %si.i, i32 0, i32 5
  %16 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %si.i, i32 0, i32 6
  %17 = getelementptr inbounds %struct.xfrmk_spdinfo, ptr %si.i, i32 0, i32 7
  %18 = call ptr @memset(ptr %si.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %spc.i) #16
  %19 = getelementptr inbounds %struct.xfrmu_spdinfo, ptr %spc.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.xfrmu_spdinfo, ptr %spc.i, i32 0, i32 2
  %21 = getelementptr inbounds %struct.xfrmu_spdinfo, ptr %spc.i, i32 0, i32 3
  %22 = getelementptr inbounds %struct.xfrmu_spdinfo, ptr %spc.i, i32 0, i32 4
  %23 = getelementptr inbounds %struct.xfrmu_spdinfo, ptr %spc.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sph.i) #16
  %24 = getelementptr inbounds %struct.xfrmu_spdhinfo, ptr %sph.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %spt4.i) #16
  %25 = getelementptr inbounds %struct.xfrmu_spdhthresh, ptr %spt4.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %spt6.i) #16
  %26 = getelementptr inbounds %struct.xfrmu_spdhthresh, ptr %spt6.i, i32 0, i32 1
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end.build_spdinfo.exit.thread_crit_edge

if.end.build_spdinfo.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_spdinfo.exit.thread

skb_tailroom.exit.i.i:                            ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.build_spdinfo.exit.thread_crit_edge, label %nlmsg_put.exit.i, !prof !68

skb_tailroom.exit.i.i.build_spdinfo.exit.thread_crit_edge: ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_spdinfo.exit.thread

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %6, i32 noundef %8, i32 noundef 36, i32 noundef 4, i32 noundef 0) #16
  %cmp.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.i, label %nlmsg_put.exit.i.build_spdinfo.exit.thread_crit_edge, label %if.end.i

nlmsg_put.exit.i.build_spdinfo.exit.thread_crit_edge: ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_spdinfo.exit.thread

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %10, ptr %add.ptr.i.i, align 4
  call void @xfrm_spd_getinfo(ptr noundef %4, ptr noundef nonnull %si.i) #16
  %34 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %si.i, align 4
  %36 = ptrtoint ptr %spc.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %spc.i, align 4
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %11, align 4
  %39 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %19, align 4
  %40 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %12, align 4
  %42 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %20, align 4
  %43 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %13, align 4
  %45 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %21, align 4
  %46 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %14, align 4
  %48 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %22, align 4
  %49 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %15, align 4
  %51 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %23, align 4
  %52 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %16, align 4
  %54 = ptrtoint ptr %sph.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %sph.i, align 4
  %55 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %17, align 4
  %57 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %24, align 4
  %lock.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 1
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 1, i32 0, i32 0, i32 1
  %lbits4.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 2
  %rbits4.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 3
  %lbits6.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 4
  %rbits6.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 15, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %read_seqbegin.exit.i.do.body.i_crit_edge, %if.end.i
  %58 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !88
  %and.i.i.i.i = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @trace_hardirqs_off() #16
  %59 = call ptr @llvm.returnaddress(i32 0) #16
  %60 = ptrtoint ptr %59 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %60) #16
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %60) #16
  call void @trace_hardirqs_on() #16
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %61 = call ptr @llvm.returnaddress(i32 0) #16
  %62 = ptrtoint ptr %61 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %62) #16
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %62) #16
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %63 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !89
  %and.i.i.i.i.i = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !68

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #16, !srcloc !90
  %64 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %lock.i, align 4
  %and18.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !91
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !92
  %66 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %lock.i, align 4
  %and.i.i = and i32 %67, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %65, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge ], [ %67, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !93
  %68 = ptrtoint ptr %lbits4.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %lbits4.i, align 4
  %70 = ptrtoint ptr %spt4.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %spt4.i, align 1
  %71 = ptrtoint ptr %rbits4.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rbits4.i, align 1
  %73 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %25, align 1
  %74 = ptrtoint ptr %lbits6.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %lbits6.i, align 2
  %76 = ptrtoint ptr %spt6.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %spt6.i, align 1
  %77 = ptrtoint ptr %rbits6.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rbits6.i, align 1
  %79 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %26, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !94
  %80 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %lock.i, align 4
  %cmp.i.i.i.not.i = icmp eq i32 %81, %.lcssa.i.i
  br i1 %cmp.i.i.i.not.i, label %do.end.i, label %read_seqbegin.exit.i.do.body.i_crit_edge

read_seqbegin.exit.i.do.body.i_crit_edge:         ; preds = %read_seqbegin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.end.i:                                         ; preds = %read_seqbegin.exit.i
  %call25.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 24, ptr noundef nonnull %spc.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end29.i, label %do.end.i.if.then.i.i69.i_crit_edge

do.end.i.if.then.i.i69.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i69.i

if.end29.i:                                       ; preds = %do.end.i
  %call28.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %sph.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool30.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool30.not.i, label %if.end33.i, label %if.end29.i.if.then.i.i69.i_crit_edge

if.end29.i.if.then.i.i69.i_crit_edge:             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i69.i

if.end33.i:                                       ; preds = %if.end29.i
  %call32.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %spt4.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool34.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool34.not.i, label %if.end37.i, label %if.end33.i.if.then.i.i69.i_crit_edge

if.end33.i.if.then.i.i69.i_crit_edge:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i69.i

if.end37.i:                                       ; preds = %if.end33.i
  %call36.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %spt6.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool38.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool38.not.i, label %build_spdinfo.exit.thread29, label %if.end37.i.if.then.i.i69.i_crit_edge

if.end37.i.if.then.i.i69.i_crit_edge:             ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i69.i

if.then.i.i69.i:                                  ; preds = %if.end37.i.if.then.i.i69.i_crit_edge, %if.end33.i.if.then.i.i69.i_crit_edge, %if.end29.i.if.then.i.i69.i_crit_edge, %do.end.i.if.then.i.i69.i_crit_edge
  %err.284.i = phi i32 [ %call36.i, %if.end37.i.if.then.i.i69.i_crit_edge ], [ %call32.i, %if.end33.i.if.then.i.i69.i_crit_edge ], [ %call28.i, %if.end29.i.if.then.i.i69.i_crit_edge ], [ %call25.i, %do.end.i.if.then.i.i69.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %82 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %83, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i69.i.build_spdinfo.exit_crit_edge, !prof !68

if.then.i.i69.i.build_spdinfo.exit_crit_edge:     ; preds = %if.then.i.i69.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %build_spdinfo.exit

do.end.i.i.i:                                     ; preds = %if.then.i.i69.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %build_spdinfo.exit

build_spdinfo.exit.thread29:                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #18
  %84 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %85 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %86 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %spt6.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %spt4.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sph.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %spc.i) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %si.i) #16
  br label %do.end14

build_spdinfo.exit.thread:                        ; preds = %nlmsg_put.exit.i.build_spdinfo.exit.thread_crit_edge, %skb_tailroom.exit.i.i.build_spdinfo.exit.thread_crit_edge, %if.end.build_spdinfo.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %spt6.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %spt4.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sph.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %spc.i) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %si.i) #16
  br label %do.body8

build_spdinfo.exit:                               ; preds = %do.end.i.i.i, %if.then.i.i69.i.build_spdinfo.exit_crit_edge
  %87 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i70.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i71.i = ptrtoint ptr %88 to i32
  %sub.ptr.sub.i.i72.i = sub i32 %sub.ptr.lhs.cast.i.i70.i, %sub.ptr.rhs.cast.i.i71.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i72.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %spt6.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %spt4.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sph.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %spc.i) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %si.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.284.i)
  %cmp5 = icmp slt i32 %err.284.i, 0
  br i1 %cmp5, label %build_spdinfo.exit.do.body8_crit_edge, label %build_spdinfo.exit.do.end14_crit_edge, !prof !68

build_spdinfo.exit.do.end14_crit_edge:            ; preds = %build_spdinfo.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end14

build_spdinfo.exit.do.body8_crit_edge:            ; preds = %build_spdinfo.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body8

do.body8:                                         ; preds = %build_spdinfo.exit.do.body8_crit_edge, %build_spdinfo.exit.thread
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1315, 0\0A.popsection", ""() #16, !srcloc !95
  unreachable

do.end14:                                         ; preds = %build_spdinfo.exit.do.end14_crit_edge, %build_spdinfo.exit.thread29
  %nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 17
  %89 = ptrtoint ptr %nlsk to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %nlsk, align 8
  %call.i = call i32 @netlink_unicast(ptr noundef %90, ptr noundef nonnull %call.i.i, i32 noundef %6, i32 noundef 64) #16
  %91 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %91, %do.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_set_default(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %nlh, ptr nocapture noundef readnone %attrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %6, label %entry.if.end14_crit_edge [
    i8 1, label %if.then
    i8 2, label %if.then9
  ]

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %policy_default = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %8 = ptrtoint ptr %policy_default to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %policy_default, align 16
  %10 = or i8 %9, 1
  store i8 %10, ptr %policy_default, align 16
  br label %if.end14

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %policy_default11 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %11 = ptrtoint ptr %policy_default11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %policy_default11, align 16
  %13 = and i8 %12, -2
  store i8 %13, ptr %policy_default11, align 16
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.then, %entry.if.end14_crit_edge
  %fwd = getelementptr i8, ptr %nlh, i32 17
  %14 = ptrtoint ptr %fwd to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fwd, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %15, label %if.end14.if.end36_crit_edge [
    i8 1, label %if.then18
    i8 2, label %if.then29
  ]

if.end14.if.end36_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %policy_default20 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %17 = ptrtoint ptr %policy_default20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %policy_default20, align 16
  %19 = or i8 %18, 4
  store i8 %19, ptr %policy_default20, align 16
  br label %if.end36

if.then29:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %policy_default31 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %20 = ptrtoint ptr %policy_default31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %policy_default31, align 16
  %22 = and i8 %21, -5
  store i8 %22, ptr %policy_default31, align 16
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %if.then18, %if.end14.if.end36_crit_edge
  %out = getelementptr i8, ptr %nlh, i32 18
  %23 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %out, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %24, label %if.end36.if.end58_crit_edge [
    i8 1, label %if.then40
    i8 2, label %if.then51
  ]

if.end36.if.end58_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %policy_default42 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %26 = ptrtoint ptr %policy_default42 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %policy_default42, align 16
  %28 = or i8 %27, 2
  store i8 %28, ptr %policy_default42, align 16
  br label %if.end58

if.then51:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %policy_default53 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %29 = ptrtoint ptr %policy_default53 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %policy_default53, align 16
  %31 = and i8 %30, -3
  store i8 %31, ptr %policy_default53, align 16
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %if.then40, %if.end36.if.end58_crit_edge
  %rt_genid.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35, i32 136
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rt_genid.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %rt_genid.i.i, i32 1, i32 3, i32 1) #16
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rt_genid.i.i, ptr %rt_genid.i.i, i32 1, ptr elementtype(i32) %rt_genid.i.i) #16, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__fib6_flush_trees to i32))
  %33 = load ptr, ptr @__fib6_flush_trees, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end58.rt_genid_bump_all.exit_crit_edge, label %if.then.i.i

if.end58.rt_genid_bump_all.exit_crit_edge:        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %rt_genid_bump_all.exit

if.then.i.i:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %33(ptr noundef %4) #16
  br label %rt_genid_bump_all.exit

rt_genid_bump_all.exit:                           ; preds = %if.then.i.i, %if.end58.rt_genid_bump_all.exit_crit_edge
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 20, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %cmp.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i, label %rt_genid_bump_all.exit.xfrm_notify_userpolicy.exit_crit_edge, label %if.end.i

rt_genid_bump_all.exit.xfrm_notify_userpolicy.exit_crit_edge: ; preds = %rt_genid_bump_all.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %xfrm_notify_userpolicy.exit

if.end.i:                                         ; preds = %rt_genid_bump_all.exit
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end.i.if.then3.i_crit_edge

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3.i

skb_tailroom.exit.i.i:                            ; preds = %if.end.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %36 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %38 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.if.then3.i_crit_edge, label %nlmsg_put.exit.i, !prof !68

skb_tailroom.exit.i.i.if.then3.i_crit_edge:       ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3.i

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 40, i32 noundef 3, i32 noundef 0) #16
  %cmp2.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp2.i, label %nlmsg_put.exit.i.if.then3.i_crit_edge, label %if.end4.i

nlmsg_put.exit.i.if.then3.i_crit_edge:            ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3.i

if.then3.i:                                       ; preds = %nlmsg_put.exit.i.if.then3.i_crit_edge, %skb_tailroom.exit.i.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  br label %xfrm_notify_userpolicy.exit

if.end4.i:                                        ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %policy_default.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %40 = ptrtoint ptr %policy_default.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %policy_default.i, align 16
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  %conv6.i = select i1 %tobool.not.i, i8 2, i8 1
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv6.i, ptr %add.ptr.i.i, align 1
  %44 = ptrtoint ptr %policy_default.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %policy_default.i, align 16
  %46 = and i8 %45, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool11.not.i = icmp eq i8 %46, 0
  %conv13.i = select i1 %tobool11.not.i, i8 2, i8 1
  %fwd.i = getelementptr i8, ptr %call3.i.i, i32 17
  %47 = ptrtoint ptr %fwd.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv13.i, ptr %fwd.i, align 1
  %48 = ptrtoint ptr %policy_default.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %policy_default.i, align 16
  %50 = and i8 %49, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool18.not.i = icmp eq i8 %50, 0
  %conv20.i = select i1 %tobool18.not.i, i8 2, i8 1
  %out.i = getelementptr i8, ptr %call3.i.i, i32 18
  %51 = ptrtoint ptr %out.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv20.i, ptr %out.i, align 1
  %52 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %54 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  %55 = tail call i32 @llvm.read_register.i32(metadata !58) #16
  %and.i.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %58, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %if.end4.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end4.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i72 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i72, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i73

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i73:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i73, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end4.i.rcu_read_lock.exit.i_crit_edge
  %nlsk1.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 17
  %59 = ptrtoint ptr %nlsk1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %nlsk1.i.i, align 8
  %call.i2.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i5.i, label %rcu_read_lock.exit.i.do.end8.i.i_crit_edge

rcu_read_lock.exit.i.do.end8.i.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

land.lhs.true.i5.i:                               ; preds = %rcu_read_lock.exit.i
  %call3.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i4.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i5.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i5.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i5.i
  %.b1.i.i = load i1, ptr @xfrm_nlmsg_multicast.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i6.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

if.then.i6.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @xfrm_nlmsg_multicast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1171, ptr noundef nonnull @.str.3) #16
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i6.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i5.i.do.end8.i.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %60, null
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end12.i.i

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  br label %xfrm_nlmsg_multicast.exit.i

if.end12.i.i:                                     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %61 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %dst_group.i.i.i, align 8
  %call.i.i7.i = tail call i32 @netlink_broadcast(ptr noundef nonnull %60, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 4, i32 noundef 2592) #16
  br label %xfrm_nlmsg_multicast.exit.i

xfrm_nlmsg_multicast.exit.i:                      ; preds = %if.end12.i.i, %if.then11.i.i
  %call.i8.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i8.i, label %xfrm_nlmsg_multicast.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i11.i

xfrm_nlmsg_multicast.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %xfrm_nlmsg_multicast.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true.i11.i:                              ; preds = %xfrm_nlmsg_multicast.exit.i
  %call1.i9.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool.not.i10.i, label %land.lhs.true.i11.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i13.i

land.lhs.true.i11.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i13.i:                             ; preds = %land.lhs.true.i11.i
  %.b4.i12.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12.i, label %land.lhs.true2.i13.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i14.i

land.lhs.true2.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

if.then.i14.i:                                    ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #16
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i14.i, %land.lhs.true2.i13.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i11.i.rcu_read_unlock.exit.i_crit_edge, %xfrm_nlmsg_multicast.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !76
  %62 = tail call i32 @llvm.read_register.i32(metadata !58) #16
  %and.i.i.i.i.i15.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i15.i to ptr
  %preempt_count.i.i.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i16.i, align 4
  %sub.i.i.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i16.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %xfrm_notify_userpolicy.exit

xfrm_notify_userpolicy.exit:                      ; preds = %rcu_read_unlock.exit.i, %if.then3.i, %rt_genid_bump_all.exit.xfrm_notify_userpolicy.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm_get_default(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %nlh, ptr nocapture noundef readnone %attrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %portid1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %5 = ptrtoint ptr %portid1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %portid1, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %7 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nlmsg_seq, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 20, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

skb_tailroom.exit.i:                              ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %11 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 20
  br i1 %cmp.i, label %skb_tailroom.exit.i.if.then5_crit_edge, label %nlmsg_put.exit, !prof !68

skb_tailroom.exit.i.if.then5_crit_edge:           ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %6, i32 noundef %8, i32 noundef 40, i32 noundef 3, i32 noundef 0) #16
  %tobool4.not = icmp eq ptr %call3.i, null
  br i1 %tobool4.not, label %nlmsg_put.exit.if.then5_crit_edge, label %if.end6

nlmsg_put.exit.if.then5_crit_edge:                ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

if.then5:                                         ; preds = %nlmsg_put.exit.if.then5_crit_edge, %skb_tailroom.exit.i.if.then5_crit_edge, %if.end.if.then5_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %cleanup

if.end6:                                          ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %policy_default = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %15 = ptrtoint ptr %policy_default to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %policy_default, align 16
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  %conv9 = select i1 %tobool8.not, i8 2, i8 1
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv9, ptr %add.ptr.i, align 1
  %19 = ptrtoint ptr %policy_default to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %policy_default, align 16
  %21 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not = icmp eq i8 %21, 0
  %conv16 = select i1 %tobool14.not, i8 2, i8 1
  %fwd = getelementptr i8, ptr %call3.i, i32 17
  %22 = ptrtoint ptr %fwd to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv16, ptr %fwd, align 1
  %23 = ptrtoint ptr %policy_default to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %policy_default, align 16
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool21.not = icmp eq i8 %25, 0
  %conv23 = select i1 %tobool21.not, i8 2, i8 1
  %out = getelementptr i8, ptr %call3.i, i32 18
  %26 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv23, ptr %out, align 1
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %29 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  %nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 17
  %30 = ptrtoint ptr %nlsk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nlsk, align 8
  %call.i = tail call i32 @netlink_unicast(ptr noundef %31, ptr noundef nonnull %call.i.i, i32 noundef %6, i32 noundef 64) #16
  %32 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %32, %if.end6 ], [ -90, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @km_state_notify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @verify_replay(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %attrs) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr ptr, ptr %attrs, i32 23
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %flags = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool1.not = icmp sgt i8 %3, -1
  %cond = select i1 %tobool1.not, i32 0, i32 -22
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp = icmp ugt i32 %5, 128
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %conv.i = zext i16 %7 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %mul.i = shl nuw nsw i32 %5, 2
  %add.i = add nuw nsw i32 %mul.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add.i)
  %cmp7 = icmp sge i32 %sub.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i)
  %cmp10.not = icmp eq i32 %sub.i, 24
  %or.cond = or i1 %cmp7, %cmp10.not
  br i1 %or.cond, label %if.end13, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %proto = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %proto, align 4
  %10 = and i8 %9, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %10)
  %switch = icmp eq i8 %10, 50
  br i1 %switch, label %if.end24, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %replay_window = getelementptr inbounds %struct.xfrm_usersa_info, ptr %p, i32 0, i32 10
  %11 = ptrtoint ptr %replay_window to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %replay_window, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp26.not = icmp eq i8 %12, 0
  %. = select i1 %cmp26.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end13.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ %., %if.end24 ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_calg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_init_state(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_xfrm_state_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrm_alloc_replay_state_esn(ptr nocapture noundef writeonly %replay_esn, ptr nocapture noundef writeonly %preplay_esn, ptr noundef readonly %rta) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %rta, i32 4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %mul.i = shl i32 %1, 2
  %add.i = add i32 %mul.i, 24
  %2 = ptrtoint ptr %rta to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rta, align 2
  %conv.i = zext i16 %3 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add.i)
  %cmp.not = icmp slt i32 %sub.i, %add.i
  %spec.select = select i1 %cmp.not, i32 24, i32 %add.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #21
  %tobool4.not65 = icmp eq ptr %call9.i.i, null
  br i1 %tobool4.not65, label %if.end.cleanup_crit_edge, label %if.end8.i.i54

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8.i.i54:                                    ; preds = %if.end
  %call9.i.i53 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #21
  %tobool8.not = icmp eq ptr %call9.i.i53, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end8.i.i54
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end8.i.i54
  call void @__sanitizer_cov_trace_pc() #18
  %4 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr.i, i32 %spec.select)
  %5 = call ptr @memcpy(ptr %call9.i.i53, ptr %add.ptr.i, i32 %spec.select)
  %6 = ptrtoint ptr %replay_esn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %replay_esn, align 4
  %7 = ptrtoint ptr %preplay_esn to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i53, ptr %preplay_esn, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_init_replay(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @xfrm_update_ae_params(ptr nocapture noundef %x, ptr nocapture noundef readonly %attrs, i32 noundef %update_esn) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %attrs, i32 10
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_esn)
  %tobool.not = icmp eq i32 %update_esn, 0
  br i1 %tobool.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx277 = getelementptr ptr, ptr %attrs, i32 9
  %2 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx277, align 4
  %arrayidx378 = getelementptr ptr, ptr %attrs, i32 12
  %4 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx378, align 4
  %arrayidx479 = getelementptr ptr, ptr %attrs, i32 11
  %6 = ptrtoint ptr %arrayidx479 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx479, align 4
  %arrayidx580 = getelementptr ptr, ptr %attrs, i32 32
  %8 = ptrtoint ptr %arrayidx580 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx580, align 4
  br label %if.end

cond.end:                                         ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %attrs, i32 23
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr ptr, ptr %attrs, i32 9
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr ptr, ptr %attrs, i32 12
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr ptr, ptr %attrs, i32 11
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr ptr, ptr %attrs, i32 32
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %replay_esn7 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %20 = ptrtoint ptr %replay_esn7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %replay_esn7, align 8
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  %mul.i = shl i32 %23, 2
  %add.i = add i32 %mul.i, 24
  %24 = call ptr @memcpy(ptr %21, ptr %add.ptr.i, i32 %add.i)
  %preplay_esn = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 32
  %25 = ptrtoint ptr %preplay_esn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %preplay_esn, align 8
  %27 = load i32, ptr %add.ptr.i, align 4
  %mul.i70 = shl i32 %27, 2
  %add.i71 = add i32 %mul.i70, 24
  %28 = call ptr @memcpy(ptr %26, ptr %add.ptr.i, i32 %add.i71)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge, %cond.end.thread
  %29 = phi ptr [ %9, %cond.end.thread ], [ %19, %if.then ], [ %19, %cond.end.if.end_crit_edge ]
  %30 = phi ptr [ %7, %cond.end.thread ], [ %17, %if.then ], [ %17, %cond.end.if.end_crit_edge ]
  %31 = phi ptr [ %5, %cond.end.thread ], [ %15, %if.then ], [ %15, %cond.end.if.end_crit_edge ]
  %32 = phi ptr [ %3, %cond.end.thread ], [ %13, %if.then ], [ %13, %cond.end.if.end_crit_edge ]
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i72 = getelementptr i8, ptr %1, i32 4
  %replay13 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 29
  %33 = call ptr @memcpy(ptr %replay13, ptr %add.ptr.i72, i32 12)
  %preplay = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 31
  %34 = call ptr @memcpy(ptr %preplay, ptr %add.ptr.i72, i32 12)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %tobool15.not = icmp eq ptr %32, null
  br i1 %tobool15.not, label %if.end14.if.end25_crit_edge, label %if.then16

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i73 = getelementptr i8, ptr %32, i32 4
  %35 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr.i73, align 8
  %curlft = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 39
  %37 = ptrtoint ptr %curlft to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %curlft, align 8
  %packets = getelementptr i8, ptr %32, i32 12
  %38 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %packets, align 8
  %packets20 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 39, i32 1
  %40 = ptrtoint ptr %packets20 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %packets20, align 8
  %add_time = getelementptr i8, ptr %32, i32 20
  %41 = ptrtoint ptr %add_time to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %add_time, align 8
  %add_time22 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 39, i32 2
  %43 = ptrtoint ptr %add_time22 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %add_time22, align 8
  %use_time = getelementptr i8, ptr %32, i32 28
  %44 = ptrtoint ptr %use_time to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %use_time, align 8
  %use_time24 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 39, i32 3
  %46 = ptrtoint ptr %use_time24 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %use_time24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %if.end14.if.end25_crit_edge
  %tobool26.not = icmp eq ptr %31, null
  br i1 %tobool26.not, label %if.end25.if.end29_crit_edge, label %if.then27

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i, align 4
  %replay_maxage = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 35
  %49 = ptrtoint ptr %replay_maxage to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %replay_maxage, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25.if.end29_crit_edge
  %tobool30.not = icmp eq ptr %30, null
  br i1 %tobool30.not, label %if.end29.if.end33_crit_edge, label %if.then31

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i74 = getelementptr i8, ptr %30, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i74, align 4
  %replay_maxdiff = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 36
  %52 = ptrtoint ptr %replay_maxdiff to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %replay_maxdiff, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  %tobool34.not = icmp eq ptr %29, null
  br i1 %tobool34.not, label %if.end33.if.end37_crit_edge, label %if.then35

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i75 = getelementptr i8, ptr %29, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i75, align 4
  %mapping_maxage = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 23
  %55 = ptrtoint ptr %mapping_maxage to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %mapping_maxage, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_dev_state_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_aead_get_byname(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_aalg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_ealg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_xfrm_state_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup_byaddr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dump_one_state(ptr noundef %x, i32 noundef %count, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %out_skb = getelementptr inbounds %struct.xfrm_dump_info, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %out_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_skb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %portid, align 4
  %nlmsg_seq = getelementptr inbounds %struct.xfrm_dump_info, ptr %ptr, i32 0, i32 2
  %6 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_flags = getelementptr inbounds %struct.xfrm_dump_info, ptr %ptr, i32 0, i32 3
  %8 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nlmsg_flags, align 4
  %conv = zext i16 %9 to i32
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %12 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 240
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !68

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 16, i32 noundef 224, i32 noundef %conv) #16
  %cmp = icmp eq ptr %call3.i, null
  br i1 %cmp, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %call4 = tail call fastcc i32 @copy_to_user_state_extra(ptr noundef %x, ptr noundef %add.ptr.i, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %17, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !68

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i39 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i40 = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i41 = sub i32 %sub.ptr.lhs.cast.i.i39, %sub.ptr.rhs.cast.i.i40
  tail call void @skb_trim(ptr noundef %3, i32 noundef %sub.ptr.sub.i.i41) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %22 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %nlmsg_cancel.exit, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %nlmsg_cancel.exit ], [ 0, %if.end6 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_state_walk_init(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_state_walk_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfrm_policy_construct(ptr noundef %net, ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %attrs, ptr nocapture noundef writeonly %errp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfrm_policy_alloc(ptr noundef %net, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -12, ptr %errp, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %priority.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %priority.i, align 8
  %priority1.i = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %priority1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %priority1.i, align 4
  %index.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p, i32 0, i32 4
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %index2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %index2.i, align 8
  %selector.i = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %selector.i, ptr %p, i32 56)
  %lft.i = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 13
  %lft3.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %lft.i, ptr %lft3.i, i32 64)
  %action.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p, i32 0, i32 6
  %9 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %action.i, align 1
  %action4.i = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 19
  %11 = ptrtoint ptr %action4.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %action4.i, align 2
  %flags.i = getelementptr inbounds %struct.xfrm_userpolicy_info, ptr %p, i32 0, i32 7
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i, align 2
  %flags5.i = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 20
  %14 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %flags5.i, align 1
  %family.i = getelementptr inbounds %struct.xfrm_selector, ptr %p, i32 0, i32 6
  %15 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %family.i, align 8
  %family7.i = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 22
  %17 = ptrtoint ptr %family7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %family7.i, align 2
  %type = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 18
  %arrayidx.i = getelementptr ptr, ptr %attrs, i32 16
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %if.end.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %switch.i.i = icmp ult i8 %21, 2
  br i1 %switch.i.i, label %if.end.i.if.end4_crit_edge, label %if.end.i.error_crit_edge

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end4:                                          ; preds = %if.end.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %type.015.i = phi i8 [ %21, %if.end.i.if.end4_crit_edge ], [ 0, %if.end.if.end4_crit_edge ]
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %type.015.i, ptr %type, align 1
  %arrayidx.i37 = getelementptr ptr, ptr %attrs, i32 5
  %23 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i37, align 4
  %tobool.not.i38 = icmp eq ptr %24, null
  br i1 %tobool.not.i38, label %if.end4.cleanup8.sink.split.i_crit_edge, label %if.else.i

if.end4.cleanup8.sink.split.i_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup8.sink.split.i

if.else.i:                                        ; preds = %if.end4
  %add.ptr.i.i39 = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 2
  %conv.i.i = zext i16 %26 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %div16.i = lshr i32 %sub.i.i, 6
  %27 = ptrtoint ptr %family7.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %family7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i, 447
  br i1 %cmp.i.i, label %if.else.i.error_crit_edge, label %for.cond.preheader.i.i

if.else.i.error_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

for.cond.preheader.i.i:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i.i)
  %cmp154.i.not.i = icmp ult i32 %sub.i.i, 64
  br i1 %cmp154.i.not.i, label %if.end.thread.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

if.end.thread.i:                                  ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i1726.i = trunc i32 %div16.i to i8
  br label %cleanup8.sink.split.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.056.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %prev_family.055.i.i = phi i16 [ %38, %for.inc.i.i.for.body.i.i_crit_edge ], [ %28, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %family2.i.i = getelementptr %struct.xfrm_user_tmpl, ptr %add.ptr.i.i39, i32 %i.056.i.i, i32 1
  %29 = ptrtoint ptr %family2.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %family2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i, label %for.body.i.i.if.end6.i.i_crit_edge

for.body.i.i.if.end6.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %family2.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %28, ptr %family2.i.i, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then3.i.i, %for.body.i.i.if.end6.i.i_crit_edge
  %mode.i.i = getelementptr %struct.xfrm_user_tmpl, ptr %add.ptr.i.i39, i32 %i.056.i.i, i32 4
  %32 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mode.i.i, align 4
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %33, label %sw.default.i.i [
    i8 1, label %if.end6.i.i.sw.epilog.thread.i.i_crit_edge
    i8 4, label %if.end6.i.i.sw.epilog.thread.i.i_crit_edge61
  ]

if.end6.i.i.sw.epilog.thread.i.i_crit_edge61:     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.thread.i.i

if.end6.i.i.sw.epilog.thread.i.i_crit_edge:       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.thread.i.i

sw.default.i.i:                                   ; preds = %if.end6.i.i
  %35 = ptrtoint ptr %family2.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %family2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %prev_family.055.i.i)
  %cmp12.not.i.i = icmp ne i16 %36, %prev_family.055.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp19.i.i = icmp ugt i8 %33, 4
  %or.cond.i.i = select i1 %cmp12.not.i.i, i1 true, i1 %cmp19.i.i
  br i1 %or.cond.i.i, label %sw.default.i.i.error_crit_edge, label %sw.default.i.i.if.end22.i.i_crit_edge

sw.default.i.i.if.end22.i.i_crit_edge:            ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i.i

sw.default.i.i.error_crit_edge:                   ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

sw.epilog.thread.i.i:                             ; preds = %if.end6.i.i.sw.epilog.thread.i.i_crit_edge, %if.end6.i.i.sw.epilog.thread.i.i_crit_edge61
  %37 = ptrtoint ptr %family2.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %.pr.i.i = load i16, ptr %family2.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %sw.epilog.thread.i.i, %sw.default.i.i.if.end22.i.i_crit_edge
  %38 = phi i16 [ %.pr.i.i, %sw.epilog.thread.i.i ], [ %prev_family.055.i.i, %sw.default.i.i.if.end22.i.i_crit_edge ]
  %39 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %38, label %if.end22.i.i.error_crit_edge [
    i16 2, label %if.end22.i.i.sw.epilog29.i.i_crit_edge
    i16 10, label %if.end22.i.i.sw.epilog29.i.i_crit_edge62
  ]

if.end22.i.i.sw.epilog29.i.i_crit_edge62:         ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog29.i.i

if.end22.i.i.sw.epilog29.i.i_crit_edge:           ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog29.i.i

if.end22.i.i.error_crit_edge:                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

sw.epilog29.i.i:                                  ; preds = %if.end22.i.i.sw.epilog29.i.i_crit_edge, %if.end22.i.i.sw.epilog29.i.i_crit_edge62
  %proto.i.i = getelementptr %struct.xfrm_user_tmpl, ptr %add.ptr.i.i39, i32 %i.056.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %proto.i.i, align 4
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %41, label %sw.epilog29.i.i.error_crit_edge [
    i8 51, label %sw.epilog29.i.i.for.inc.i.i_crit_edge
    i8 50, label %sw.epilog29.i.i.for.inc.i.i_crit_edge63
    i8 108, label %sw.epilog29.i.i.for.inc.i.i_crit_edge64
    i8 43, label %sw.epilog29.i.i.for.inc.i.i_crit_edge65
    i8 60, label %sw.epilog29.i.i.for.inc.i.i_crit_edge66
  ]

sw.epilog29.i.i.for.inc.i.i_crit_edge66:          ; preds = %sw.epilog29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

sw.epilog29.i.i.for.inc.i.i_crit_edge65:          ; preds = %sw.epilog29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

sw.epilog29.i.i.for.inc.i.i_crit_edge64:          ; preds = %sw.epilog29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

sw.epilog29.i.i.for.inc.i.i_crit_edge63:          ; preds = %sw.epilog29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

sw.epilog29.i.i.for.inc.i.i_crit_edge:            ; preds = %sw.epilog29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

sw.epilog29.i.i.error_crit_edge:                  ; preds = %sw.epilog29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

for.inc.i.i:                                      ; preds = %sw.epilog29.i.i.for.inc.i.i_crit_edge, %sw.epilog29.i.i.for.inc.i.i_crit_edge63, %sw.epilog29.i.i.for.inc.i.i_crit_edge64, %sw.epilog29.i.i.for.inc.i.i_crit_edge65, %sw.epilog29.i.i.for.inc.i.i_crit_edge66
  %inc.i.i = add nuw nsw i32 %i.056.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div16.i
  br i1 %exitcond.not.i.i, label %for.body.i22.preheader.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.body.i22.preheader.i:                         ; preds = %for.inc.i.i
  %conv.i17.i = trunc i32 %div16.i to i8
  %xfrm_nr.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 21
  %43 = ptrtoint ptr %xfrm_nr.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i17.i, ptr %xfrm_nr.i.i, align 4
  br label %for.body.i22.i

for.body.i22.i:                                   ; preds = %for.body.i22.i.for.body.i22.i_crit_edge, %for.body.i22.preheader.i
  %ut.addr.045.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i22.i.for.body.i22.i_crit_edge ], [ %add.ptr.i.i39, %for.body.i22.preheader.i ]
  %i.044.i.i = phi i32 [ %inc.i20.i, %for.body.i22.i.for.body.i22.i_crit_edge ], [ 0, %for.body.i22.preheader.i ]
  %arrayidx.i.i = getelementptr %struct.xfrm_policy, ptr %call, i32 0, i32 24, i32 %i.044.i.i
  %44 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %ut.addr.045.i.i, i32 24)
  %saddr.i.i = getelementptr %struct.xfrm_policy, ptr %call, i32 0, i32 24, i32 %i.044.i.i, i32 1
  %saddr3.i.i = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045.i.i, i32 0, i32 2
  %45 = call ptr @memcpy(ptr %saddr.i.i, ptr %saddr3.i.i, i32 16)
  %reqid.i.i = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %reqid.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reqid.i.i, align 4
  %reqid4.i.i = getelementptr %struct.xfrm_policy, ptr %call, i32 0, i32 24, i32 %i.044.i.i, i32 3
  %48 = ptrtoint ptr %reqid4.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %reqid4.i.i, align 4
  %mode.i18.i = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %mode.i18.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mode.i18.i, align 4
  %mode5.i.i = getelementptr %struct.xfrm_policy, ptr %call, i32 0, i32 24, i32 %i.044.i.i, i32 4
  %51 = ptrtoint ptr %mode5.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %mode5.i.i, align 4
  %share.i.i = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %share.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %share.i.i, align 1
  %share6.i.i = getelementptr %struct.xfrm_policy, ptr %call, i32 0, i32 24, i32 %i.044.i.i, i32 5
  %54 = ptrtoint ptr %share6.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %share6.i.i, align 1
  %optional.i.i = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045.i.i, i32 0, i32 6
  %55 = ptrtoint ptr %optional.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %optional.i.i, align 2
  %optional7.i.i = getelementptr %struct.xfrm_policy, ptr %call, i32 0, i32 24, i32 %i.044.i.i, i32 6
  %57 = ptrtoint ptr %optional7.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %optional7.i.i, align 2
  %aalgos.i.i = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045.i.i, i32 0, i32 7
  %58 = ptrtoint ptr %aalgos.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %aalgos.i.i, align 4
  %aalgos8.i.i = getelementptr %struct.xfrm_policy, ptr %call, i32 0, i32 24, i32 %i.044.i.i, i32 8
  %60 = ptrtoint ptr %aalgos8.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %aalgos8.i.i, align 4
  %ealgos.i.i = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045.i.i, i32 0, i32 8
  %61 = ptrtoint ptr %ealgos.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ealgos.i.i, align 4
  %ealgos9.i.i = getelementptr %struct.xfrm_policy, ptr %call, i32 0, i32 24, i32 %i.044.i.i, i32 9
  %63 = ptrtoint ptr %ealgos9.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %ealgos9.i.i, align 4
  %calgos.i.i = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045.i.i, i32 0, i32 9
  %64 = ptrtoint ptr %calgos.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %calgos.i.i, align 4
  %calgos10.i.i = getelementptr %struct.xfrm_policy, ptr %call, i32 0, i32 24, i32 %i.044.i.i, i32 10
  %66 = ptrtoint ptr %calgos10.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %calgos10.i.i, align 4
  %and.i.i = and i32 %62, %59
  %and14.i.i = and i32 %and.i.i, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and14.i.i)
  %tobool.not.i19.i = icmp eq i32 %and14.i.i, -1
  %conv15.i.i = zext i1 %tobool.not.i19.i to i8
  %allalgs.i.i = getelementptr %struct.xfrm_policy, ptr %call, i32 0, i32 24, i32 %i.044.i.i, i32 7
  %67 = ptrtoint ptr %allalgs.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv15.i.i, ptr %allalgs.i.i, align 1
  %family.i.i = getelementptr inbounds %struct.xfrm_user_tmpl, ptr %ut.addr.045.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %family.i.i, align 4
  %encap_family.i.i = getelementptr %struct.xfrm_policy, ptr %call, i32 0, i32 24, i32 %i.044.i.i, i32 2
  %70 = ptrtoint ptr %encap_family.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %encap_family.i.i, align 4
  %inc.i20.i = add nuw nsw i32 %i.044.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.xfrm_user_tmpl, ptr %ut.addr.045.i.i, i32 1
  %exitcond.not.i21.i = icmp eq i32 %inc.i20.i, %div16.i
  br i1 %exitcond.not.i21.i, label %for.body.i22.i.if.then7_crit_edge, label %for.body.i22.i.for.body.i22.i_crit_edge

for.body.i22.i.for.body.i22.i_crit_edge:          ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i22.i

for.body.i22.i.if.then7_crit_edge:                ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

cleanup8.sink.split.i:                            ; preds = %if.end.thread.i, %if.end4.cleanup8.sink.split.i_crit_edge
  %conv.i1726.sink.i = phi i8 [ %conv.i1726.i, %if.end.thread.i ], [ 0, %if.end4.cleanup8.sink.split.i_crit_edge ]
  %xfrm_nr.i27.i = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 21
  %71 = ptrtoint ptr %xfrm_nr.i27.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.i1726.sink.i, ptr %xfrm_nr.i27.i, align 4
  br label %if.then7

if.then7:                                         ; preds = %cleanup8.sink.split.i, %for.body.i22.i.if.then7_crit_edge
  %arrayidx.i41 = getelementptr ptr, ptr %attrs, i32 8
  %72 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i41, align 4
  %tobool.not.i42 = icmp eq ptr %73, null
  br i1 %tobool.not.i42, label %if.then7.if.end12_crit_edge, label %if.end9

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end9:                                          ; preds = %if.then7
  %add.ptr.i.i43 = getelementptr i8, ptr %73, i32 4
  %security.i = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 23
  %call1.i = tail call i32 @security_xfrm_policy_alloc(ptr noundef %security.i, ptr noundef %add.ptr.i.i43, i32 noundef 3264) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool10.not = icmp eq i32 %call1.i, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.end9.error_crit_edge

if.end9.error_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end12:                                         ; preds = %if.end9.if.end12_crit_edge, %if.then7.if.end12_crit_edge
  %mark = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 11
  %arrayidx.i46 = getelementptr ptr, ptr %attrs, i32 21
  %74 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i46, align 4
  %tobool.not.i47 = icmp eq ptr %75, null
  br i1 %tobool.not.i47, label %if.else.i49, label %if.then.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i48 = getelementptr i8, ptr %75, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i48 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 8)
  %77 = load i64, ptr %add.ptr.i.i48, align 1
  %78 = ptrtoint ptr %mark to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 %77, ptr %mark, align 4
  br label %xfrm_mark_get.exit

if.else.i49:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %m2.i = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 11, i32 1
  %79 = ptrtoint ptr %m2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %m2.i, align 4
  %80 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %mark, align 4
  br label %xfrm_mark_get.exit

xfrm_mark_get.exit:                               ; preds = %if.else.i49, %if.then.i
  %arrayidx = getelementptr ptr, ptr %attrs, i32 31
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %82, null
  br i1 %tobool14.not, label %xfrm_mark_get.exit.cleanup_crit_edge, label %if.then15

xfrm_mark_get.exit.cleanup_crit_edge:             ; preds = %xfrm_mark_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then15:                                        ; preds = %xfrm_mark_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i51 = getelementptr i8, ptr %82, i32 4
  %83 = ptrtoint ptr %add.ptr.i.i51 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i51, align 4
  %if_id = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 10
  %85 = ptrtoint ptr %if_id to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %if_id, align 4
  br label %cleanup

error:                                            ; preds = %if.end9.error_crit_edge, %sw.epilog29.i.i.error_crit_edge, %if.end22.i.i.error_crit_edge, %sw.default.i.i.error_crit_edge, %if.else.i.error_crit_edge, %if.end.i.error_crit_edge
  %err.1 = phi i32 [ %call1.i, %if.end9.error_crit_edge ], [ -22, %if.end.i.error_crit_edge ], [ -22, %if.else.i.error_crit_edge ], [ -22, %sw.epilog29.i.i.error_crit_edge ], [ -22, %if.end22.i.i.error_crit_edge ], [ -22, %sw.default.i.i.error_crit_edge ]
  %86 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %err.1, ptr %errp, align 4
  %dead = getelementptr inbounds %struct.xfrm_policy, ptr %call, i32 0, i32 15, i32 1
  %87 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %dead, align 8
  tail call void @xfrm_policy_destroy(ptr noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then15, %xfrm_mark_get.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ null, %error ], [ null, %if.then ], [ %call, %if.then15 ], [ %call, %xfrm_mark_get.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_policy_insert(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_xfrm_policy_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @km_policy_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_xfrm_policy_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_policy_byid(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_policy_bysel_ctx(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dump_one_policy(ptr noundef %xp, i32 noundef %dir, i32 noundef %count, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %upt.i = alloca %struct.xfrm_userpolicy_type, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %out_skb = getelementptr inbounds %struct.xfrm_dump_info, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %out_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_skb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %portid, align 4
  %nlmsg_seq = getelementptr inbounds %struct.xfrm_dump_info, ptr %ptr, i32 0, i32 2
  %6 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_flags = getelementptr inbounds %struct.xfrm_dump_info, ptr %ptr, i32 0, i32 3
  %8 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nlmsg_flags, align 4
  %conv = zext i16 %9 to i32
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %12 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 184, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 184
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !68

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 19, i32 noundef 168, i32 noundef %conv) #16
  %cmp = icmp eq ptr %call3.i, null
  br i1 %cmp, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %16 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 168)
  %selector.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 12
  %17 = call ptr @memcpy(ptr %add.ptr.i, ptr %selector.i, i32 56)
  %lft.i = getelementptr i8, ptr %call3.i, i32 72
  %lft1.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 13
  %18 = call ptr @memcpy(ptr %lft.i, ptr %lft1.i, i32 64)
  %curlft.i = getelementptr i8, ptr %call3.i, i32 136
  %curlft2.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 14
  %19 = call ptr @memcpy(ptr %curlft.i, ptr %curlft2.i, i32 32)
  %priority.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 8
  %20 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %priority.i, align 4
  %priority3.i = getelementptr i8, ptr %call3.i, i32 168
  %22 = ptrtoint ptr %priority3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %priority3.i, align 8
  %index.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 9
  %23 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i, align 8
  %index4.i = getelementptr i8, ptr %call3.i, i32 172
  %25 = ptrtoint ptr %index4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %index4.i, align 4
  %family.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 22
  %26 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %family.i, align 2
  %family6.i = getelementptr i8, ptr %call3.i, i32 56
  %28 = ptrtoint ptr %family6.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %family6.i, align 8
  %conv.i = trunc i32 %dir to i8
  %dir7.i = getelementptr i8, ptr %call3.i, i32 176
  %29 = ptrtoint ptr %dir7.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i, ptr %dir7.i, align 8
  %action.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 19
  %30 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %action.i, align 2
  %action8.i = getelementptr i8, ptr %call3.i, i32 177
  %32 = ptrtoint ptr %action8.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %action8.i, align 1
  %flags.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 20
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags.i, align 1
  %flags9.i = getelementptr i8, ptr %call3.i, i32 178
  %35 = ptrtoint ptr %flags9.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %flags9.i, align 2
  %share.i = getelementptr i8, ptr %call3.i, i32 179
  %36 = ptrtoint ptr %share.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %share.i, align 1
  %call4 = tail call fastcc i32 @copy_to_user_tmpl(ptr noundef %xp, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.then5:                                         ; preds = %if.end
  %security.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 23
  %37 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %security.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.then5.if.end11_crit_edge, label %if.then.i

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then.i:                                        ; preds = %if.then5
  %ctx_len.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %ctx_len.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ctx_len.i.i, align 2
  %conv.i.i = zext i16 %40 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 8
  %call.i.i = tail call ptr @nla_reserve(ptr noundef %3, i32 noundef 8, i32 noundef %add.i.i) #16
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.then.i.if.then.i.i_crit_edge, label %if.end.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i, i32 4
  %exttype.i.i = getelementptr i8, ptr %call.i.i, i32 6
  %41 = ptrtoint ptr %exttype.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 8, ptr %exttype.i.i, align 2
  %conv3.i.i = trunc i32 %add.i.i to i16
  %42 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv3.i.i, ptr %add.ptr.i.i.i, align 2
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %38, align 4
  %ctx_doi4.i.i = getelementptr i8, ptr %call.i.i, i32 9
  %45 = ptrtoint ptr %ctx_doi4.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %ctx_doi4.i.i, align 1
  %ctx_alg.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %38, i32 0, i32 1
  %46 = ptrtoint ptr %ctx_alg.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ctx_alg.i.i, align 1
  %ctx_alg5.i.i = getelementptr i8, ptr %call.i.i, i32 8
  %48 = ptrtoint ptr %ctx_alg5.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %ctx_alg5.i.i, align 2
  %49 = ptrtoint ptr %ctx_len.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ctx_len.i.i, align 2
  %ctx_len7.i.i = getelementptr i8, ptr %call.i.i, i32 10
  %51 = ptrtoint ptr %ctx_len7.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %ctx_len7.i.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 12
  %ctx_str.i.i = getelementptr inbounds %struct.xfrm_sec_ctx, ptr %38, i32 0, i32 4
  %52 = load i16, ptr %ctx_len.i.i, align 2
  %conv9.i.i = zext i16 %52 to i32
  %53 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %ctx_str.i.i, i32 %conv9.i.i)
  br label %if.end11

if.end11:                                         ; preds = %if.end.i.i, %if.then5.if.end11_crit_edge
  %type = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 18
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %type, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %upt.i) #16
  %56 = call ptr @memset(ptr %upt.i, i32 0, i32 6)
  %57 = ptrtoint ptr %upt.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %55, ptr %upt.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %3, i32 noundef 16, i32 noundef 6, ptr noundef nonnull %upt.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %upt.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.then.i.i_crit_edge

if.end11.if.then.i.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.then13:                                        ; preds = %if.end11
  %mark = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 11
  %m1.i = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 11, i32 1
  %58 = ptrtoint ptr %m1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %m1.i, align 4
  %60 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mark, align 4
  %or.i = or i32 %61, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i69 = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i69, label %if.then13.if.then17_crit_edge, label %if.end15

if.then13.if.then17_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

if.end15:                                         ; preds = %if.then13
  %call.i70 = call i32 @nla_put(ptr noundef %3, i32 noundef 21, i32 noundef 8, ptr noundef %mark) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool16.not = icmp eq i32 %call.i70, 0
  br i1 %tobool16.not, label %if.end15.if.then17_crit_edge, label %if.end15.if.then.i.i_crit_edge

if.end15.if.then.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end15.if.then17_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

if.then17:                                        ; preds = %if.end15.if.then17_crit_edge, %if.then13.if.then17_crit_edge
  %if_id = getelementptr inbounds %struct.xfrm_policy, ptr %xp, i32 0, i32 10
  %62 = ptrtoint ptr %if_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %if_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i73 = icmp eq i32 %63, 0
  br i1 %tobool.not.i73, label %if.then17.if.end22_crit_edge, label %if.end19

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.end19:                                         ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #16
  %64 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %tmp.i.i, align 4
  %call.i.i74 = call i32 @nla_put(ptr noundef %3, i32 noundef 31, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %tobool20.not = icmp eq i32 %call.i.i74, 0
  br i1 %tobool20.not, label %if.end19.if.end22_crit_edge, label %if.end19.if.then.i.i_crit_edge

if.end19.if.then.i.i_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then.i.i:                                      ; preds = %if.end19.if.then.i.i_crit_edge, %if.end15.if.then.i.i_crit_edge, %if.end11.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %err.399 = phi i32 [ %call.i.i74, %if.end19.if.then.i.i_crit_edge ], [ %call.i70, %if.end15.if.then.i.i_crit_edge ], [ %call.i, %if.end11.if.then.i.i_crit_edge ], [ -90, %if.then.i.if.then.i.i_crit_edge ], [ %call4, %if.end.if.then.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %65 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i78 = icmp ugt ptr %66, %call3.i
  br i1 %cmp.i.i78, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !68

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %67 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i79 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i80 = ptrtoint ptr %68 to i32
  %sub.ptr.sub.i.i81 = sub i32 %sub.ptr.lhs.cast.i.i79, %sub.ptr.rhs.cast.i.i80
  call void @skb_trim(ptr noundef %3, i32 noundef %sub.ptr.sub.i.i81) #16
  br label %cleanup

if.end22:                                         ; preds = %if.end19.if.end22_crit_edge, %if.then17.if.end22_crit_edge
  %69 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %70 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %71 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %nlmsg_cancel.exit, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.399, %nlmsg_cancel.exit ], [ 0, %if.end22 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_walk_init(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_policy_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_walk_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_spi_info(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_find_acq_byseq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_find_acq(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_alloc_spi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @km_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_state_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @km_state_expired(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_state_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_policy_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @km_policy_expired(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_flush(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_policy_flush(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_migrate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_sad_getinfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_hash_rebuild(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_spd_getinfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netlink_kernel_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_kernel_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_register_km(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !47, !49, !51, !53, !55, !56, !57}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @xfrm_msg_min, !1, !"xfrm_msg_min", i1 false, i1 false}
!1 = !{!"../net/xfrm/xfrm_user.c", i32 2759, i32 11}
!2 = !{ptr @__ksymtab_xfrm_msg_min, !3, !"__ksymtab_xfrm_msg_min", i1 false, i1 false}
!3 = !{!"../net/xfrm/xfrm_user.c", i32 2784, i32 1}
!4 = !{ptr @xfrma_policy, !5, !"xfrma_policy", i1 false, i1 false}
!5 = !{!"../net/xfrm/xfrm_user.c", i32 2788, i32 25}
!6 = !{ptr @__ksymtab_xfrma_policy, !7, !"__ksymtab_xfrma_policy", i1 false, i1 false}
!7 = !{!"../net/xfrm/xfrm_user.c", i32 2820, i32 1}
!8 = !{ptr @__initcall__kmod_xfrm_user__518_3654_xfrm_user_init6, !9, !"__initcall__kmod_xfrm_user__518_3654_xfrm_user_init6", i1 false, i1 false}
!9 = !{!"../net/xfrm/xfrm_user.c", i32 3654, i32 1}
!10 = !{ptr @__exitcall_xfrm_user_exit, !11, !"__exitcall_xfrm_user_exit", i1 false, i1 false}
!11 = !{!"../net/xfrm/xfrm_user.c", i32 3655, i32 1}
!12 = !{ptr @__UNIQUE_ID_file519, !13, !"__UNIQUE_ID_file519", i1 false, i1 false}
!13 = !{!"../net/xfrm/xfrm_user.c", i32 3656, i32 1}
!14 = !{ptr @__UNIQUE_ID_license520, !13, !"__UNIQUE_ID_license520", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias521, !16, !"__UNIQUE_ID_alias521", i1 false, i1 false}
!16 = !{!"../net/xfrm/xfrm_user.c", i32 3657, i32 1}
!17 = !{ptr @netlink_mgr, !18, !"netlink_mgr", i1 false, i1 false}
!18 = !{!"../net/xfrm/xfrm_user.c", i32 3587, i32 24}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/xfrm/xfrm_user.c", i32 3170, i32 3}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @xfrm_send_state_notify._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @xfrm_send_state_notify._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/xfrm/xfrm_user.c", i32 1171, i32 22}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/net/netlink.h", i32 991, i32 3}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/xfrm/xfrm_user.c", i32 3474, i32 3}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @xfrm_send_policy_notify._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @xfrm_send_policy_notify._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/net/xfrm.h", i32 1767, i32 9}
!37 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @xfrm_user_net_ops, !46, !"xfrm_user_net_ops", i1 false, i1 false}
!46 = !{!"../net/xfrm/xfrm_user.c", i32 3627, i32 33}
!47 = !{ptr @xfrm_dispatch, !48, !"xfrm_dispatch", i1 false, i1 false}
!48 = !{!"../net/xfrm/xfrm_user.c", i32 2834, i32 3}
!49 = !{ptr @xfrma_spd_policy, !50, !"xfrma_spd_policy", i1 false, i1 false}
!50 = !{!"../net/xfrm/xfrm_user.c", i32 2822, i32 32}
!51 = !{ptr @__nlmsg_parse.__msg, !52, !"__msg", i1 false, i1 false}
!52 = !{!"../include/net/netlink.h", i32 729, i32 3}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/xfrm/xfrm_user.c", i32 3637, i32 2}
!55 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @xfrm_user_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @xfrm_user_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2157972197, i64 2157972683, i64 2157972234, i64 2157972290, i64 2157972324, i64 2157972348, i64 2157972389, i64 2157972410, i64 2157972438, i64 2157972472}
!70 = !{i64 2157976626, i64 2157977112, i64 2157976663, i64 2157976719, i64 2157976753, i64 2157976777, i64 2157976818, i64 2157976839, i64 2157976867, i64 2157976901}
!71 = !{i64 2157985844, i64 2157986330, i64 2157985881, i64 2157985937, i64 2157985971, i64 2157985995, i64 2157986036, i64 2157986057, i64 2157986085, i64 2157986119}
!72 = !{i64 2157979546, i64 2157980032, i64 2157979583, i64 2157979639, i64 2157979673, i64 2157979697, i64 2157979738, i64 2157979759, i64 2157979787, i64 2157979821}
!73 = !{i64 2157983763, i64 2157984249, i64 2157983800, i64 2157983856, i64 2157983890, i64 2157983914, i64 2157983955, i64 2157983976, i64 2157984004, i64 2157984038}
!74 = !{i64 2157964389, i64 2157964875, i64 2157964426, i64 2157964482, i64 2157964516, i64 2157964540, i64 2157964581, i64 2157964602, i64 2157964630, i64 2157964664}
!75 = !{i64 2149488103}
!76 = !{i64 2149488369}
!77 = !{i64 2157992355}
!78 = !{i64 2148406466}
!79 = !{i64 2148320930, i64 2148320962, i64 2148320991, i64 2148321025, i64 2148321056, i64 2148321079}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2149524518}
!82 = !{i64 2148318465, i64 2148318497, i64 2148318526, i64 2148318560, i64 2148318591, i64 2148318614}
!83 = !{i64 2157961734, i64 2157962220, i64 2157961771, i64 2157961827, i64 2157961861, i64 2157961885, i64 2157961926, i64 2157961947, i64 2157961975, i64 2157962009}
!84 = !{!"auto-init"}
!85 = !{i64 2157954092, i64 2157954578, i64 2157954129, i64 2157954185, i64 2157954219, i64 2157954243, i64 2157954284, i64 2157954305, i64 2157954333, i64 2157954367}
!86 = !{i64 2150112899}
!87 = !{i64 2150113224}
!88 = !{i64 710213, i64 710274}
!89 = !{i64 712945}
!90 = !{i64 713230}
!91 = !{i64 2150127327}
!92 = !{i64 2150127169}
!93 = !{i64 2150127497}
!94 = !{i64 2150112574}
!95 = !{i64 2157952027, i64 2157952513, i64 2157952064, i64 2157952120, i64 2157952154, i64 2157952178, i64 2157952219, i64 2157952240, i64 2157952268, i64 2157952302}
!96 = !{i64 2148316935, i64 2148316961, i64 2148316990, i64 2148317024, i64 2148317055, i64 2148317078}
