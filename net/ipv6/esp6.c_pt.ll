; ModuleID = '/llk/IR_all_yes/net/ipv6/esp6.c_pt.bc'
source_filename = "../net/ipv6/esp6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+esp6_output_head\22, \22a\22\09"
module asm "\09.weak\09__crc_esp6_output_head\09\09\09\09"
module asm "\09.long\09__crc_esp6_output_head\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_esp6_output_head:\09\09\09\09\09"
module asm "\09.asciz \09\22esp6_output_head\22\09\09\09\09\09"
module asm "__kstrtabns_esp6_output_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+esp6_output_tail\22, \22a\22\09"
module asm "\09.weak\09__crc_esp6_output_tail\09\09\09\09"
module asm "\09.long\09__crc_esp6_output_tail\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_esp6_output_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22esp6_output_tail\22\09\09\09\09\09"
module asm "__kstrtabns_esp6_output_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+esp6_input_done2\22, \22a\22\09"
module asm "\09.weak\09__crc_esp6_input_done2\09\09\09\09"
module asm "\09.long\09__crc_esp6_input_done2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_esp6_input_done2:\09\09\09\09\09"
module asm "\09.asciz \09\22esp6_input_done2\22\09\09\09\09\09"
module asm "__kstrtabns_esp6_input_done2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xfrm6_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.14 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%union.anon.14 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.107 }
%struct.atomic_t = type { i32 }
%union.anon.107 = type { i32 }
%struct.esp_info = type { ptr, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.158, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.159, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.158 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.159 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.xfrm_encap_tmpl = type { i16, i16, i16, %union.xfrm_address_t }
%struct.sk_buff = type { %union.anon.22, %union.anon.25, %union.anon.26, [48 x i8], %union.anon.27, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.29, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, ptr, %union.anon.24 }
%union.anon.24 = type { ptr }
%union.anon.25 = type { ptr }
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { i32, ptr }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.31, i32, i32, i32, i16, i16, %union.anon.33, i32, %union.anon.34, %union.anon.35, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.31 = type { i32 }
%union.anon.33 = type { i32 }
%union.anon.34 = type { i32 }
%union.anon.35 = type { i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.44, %union.anon.105, %struct.atomic_t, i32 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.105 = type { %struct.atomic_t }
%struct.sock_common = type { %union.anon.160, %union.anon.162, %union.anon.163, i16, i8, i8, i32, %union.anon.165, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.168, [0 x i32], %union.anon.169, i16, i16, %union.anon.170, %struct.refcount_struct, [0 x i32], %union.anon.171 }
%union.anon.160 = type { i64 }
%union.anon.162 = type { i32 }
%union.anon.163 = type { i32 }
%union.anon.165 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.21 }
%union.anon.21 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { %struct.hlist_node }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.172, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.173, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.174, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.172 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.173 = type { ptr }
%union.anon.174 = type { ptr }
%struct.sk_buff_head = type { %union.anon.109, i32, %struct.spinlock }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.199, ptr, ptr, ptr, ptr, %union.anon.200, [120 x i8] }
%union.anon.199 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.200 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.206, i32, i32, i8, i8 }
%struct.anon.206 = type { i32, i32 }
%struct.esp_output_extra = type { i32, i32 }
%struct.ip_esp_hdr = type { i32, i32, [0 x i8] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.119, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.119 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.esp_tcp_sk = type { ptr, %struct.callback_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.176, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.194, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.176 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.194 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xfrm_algo_aead = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_algo_auth = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_algo = type { [64 x i8], i32, [0 x i8] }
%struct.rtattr = type { i16, i16 }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon.210, %struct.sadb_alg }
%union.anon.210 = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }
%struct.xfrm_algo_auth_info = type { i16, i16 }
%struct.xfrm_dst = type { %union.anon.211, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.211 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }

@__kstrtab_esp6_output_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_esp6_output_head = external dso_local constant [0 x i8], align 1
@__ksymtab_esp6_output_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @esp6_output_head to i32), ptr @__kstrtab_esp6_output_head, ptr @__kstrtabns_esp6_output_head }, section "___ksymtab_gpl+esp6_output_head", align 4
@__kstrtab_esp6_output_tail = external dso_local constant [0 x i8], align 1
@__kstrtabns_esp6_output_tail = external dso_local constant [0 x i8], align 1
@__ksymtab_esp6_output_tail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @esp6_output_tail to i32), ptr @__kstrtab_esp6_output_tail, ptr @__kstrtabns_esp6_output_tail }, section "___ksymtab_gpl+esp6_output_tail", align 4
@esp6_input_done2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/ipv6/esp6.c\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_esp6_input_done2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_esp6_input_done2 = external dso_local constant [0 x i8], align 1
@__ksymtab_esp6_input_done2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @esp6_input_done2 to i32), ptr @__kstrtab_esp6_input_done2, ptr @__kstrtabns_esp6_input_done2 }, section "___ksymtab_gpl+esp6_input_done2", align 4
@esp6_protocol = internal global { %struct.xfrm6_protocol, [40 x i8] } { %struct.xfrm6_protocol { ptr @xfrm6_rcv, ptr @xfrm_input, ptr @esp6_rcv_cb, ptr @esp6_err, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@esp6_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016IPv6: %s: can't remove protocol\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esp6_fini\00", [22 x i8] zeroinitializer }, align 32
@esp6_fini._entry_ptr = internal global ptr @esp6_fini._entry, section ".printk_index", align 4
@esp6_type = internal constant { %struct.xfrm_type, [36 x i8] } { %struct.xfrm_type { ptr null, i8 50, i8 2, ptr @esp6_init_state, ptr @esp6_destroy, ptr @esp6_input, ptr @esp6_output, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_esp6__688_1294_esp6_init6 = internal global ptr @esp6_init, section ".initcall6.init", align 4
@__exitcall_esp6_fini = internal global ptr @esp6_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file689 = internal constant [24 x i8] c"esp6.file=net/ipv6/esp6\00", section ".modinfo", align 1
@__UNIQUE_ID_license690 = internal constant [17 x i8] c"esp6.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias691 = internal constant [27 x i8] c"esp6.alias=xfrm-type-10-50\00", section ".modinfo", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@esp6_find_tcp_sk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@esp6_find_tcp_sk.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@esp6_find_tcp_sk.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@esp_remove_trailer.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"esp6\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"esp_remove_trailer\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ipsec esp packet is garbage padlen=%d, elen=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"IPv6: ipsec esp packet is garbage padlen=%d, elen=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s(%s)\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s%sauthencesn(%s,%s)%s\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"(\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"digest_null\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s%sauthenc(%s,%s)%s\00", [43 x i8] zeroinitializer }, align 32
@esp_init_authenc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 1162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016IPv6: ESP: %s digestsize %u != %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"esp_init_authenc\00", [47 x i8] zeroinitializer }, align 32
@esp_init_authenc._entry_ptr = internal global ptr @esp_init_authenc._entry, section ".printk_index", align 4
@esp6_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016IPv6: %s: can't add xfrm type\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esp6_init\00", [22 x i8] zeroinitializer }, align 32
@esp6_init._entry_ptr = internal global ptr @esp6_init._entry, section ".printk_index", align 4
@esp6_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016IPv6: %s: can't add protocol\0A\00", [32 x i8] zeroinitializer }, align 32
@esp6_init._entry_ptr.31 = internal global ptr @esp6_init._entry.29, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967268]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 137]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 7]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 833, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"esp6_protocol\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1264, i32 30 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1290, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"esp6_type\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1254, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 695, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 159, i32 7 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 166, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 723, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1160, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1011, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 717, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1750, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 768, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1067, i32 47 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1110, i32 9 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1111, i32 21 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1111, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1112, i32 39 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1114, i32 20 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1118, i32 9 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1159, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1275, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [19 x i8] c"../net/ipv6/esp6.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1279, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias691, ptr @__UNIQUE_ID_file689, ptr @__UNIQUE_ID_license690, ptr @__exitcall_esp6_fini, ptr @__initcall__kmod_esp6__688_1294_esp6_init6, ptr @__ksymtab_esp6_input_done2, ptr @__ksymtab_esp6_output_head, ptr @__ksymtab_esp6_output_tail, ptr @esp6_fini, ptr @esp6_fini._entry, ptr @esp6_fini._entry_ptr, ptr @esp6_init._entry, ptr @esp6_init._entry.29, ptr @esp6_init._entry_ptr, ptr @esp6_init._entry_ptr.31, ptr @esp_init_authenc._entry, ptr @esp_init_authenc._entry_ptr, ptr @.str, ptr @esp6_protocol, ptr @.str.1, ptr @.str.2, ptr @esp6_type, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp6_protocol to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp6_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp6_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_init_authenc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp6_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp6_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esp6_output_head(ptr noundef %x, ptr noundef %skb, ptr nocapture noundef %esp) #0 align 64 {
entry:
  %trailer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trailer) #13
  %0 = ptrtoint ptr %trailer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %trailer, align 4, !annotation !95
  %tailen1 = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 3
  %1 = ptrtoint ptr %tailen1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tailen1, align 4
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %3 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %encap, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #13
  %encap_sport.i = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %encap_sport.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %encap_sport.i, align 2
  %encap_dport.i = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %encap_dport.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %encap_dport.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %4, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %10)
  %cond.i = icmp eq i16 %10, 7
  br i1 %cond.i, label %sw.bb4.i, label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len1.i.i, align 4
  %13 = ptrtoint ptr %tailen1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tailen1, align 4
  %add.i.i = add i32 %14, %12
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %17 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %18 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %sub.ptr.rhs.cast.i.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %add.i.i, %sub.ptr.sub.i.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i, 65535
  br i1 %cmp.i.i, label %sw.bb.i.cleanup79_crit_edge, label %if.end.i.i

sw.bb.i.cleanup79_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end.i.i:                                       ; preds = %sw.bb.i
  %21 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %esp, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %6, ptr %22, align 2
  %dest.i.i = getelementptr inbounds %struct.udphdr, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %8, ptr %dest.i.i, align 2
  %conv.i.i = trunc i32 %sub.i.i to i16
  %len3.i.i = getelementptr inbounds %struct.udphdr, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i.i, ptr %len3.i.i, align 2
  %check.i.i = getelementptr inbounds %struct.udphdr, ptr %22, i32 0, i32 3
  %26 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %check.i.i, align 2
  %27 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %29 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %30 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %conv.i.i.i
  %31 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 17, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp5.i.i = icmp eq i16 %10, 1
  %add.ptr.i.i = getelementptr %struct.udphdr, ptr %22, i32 1
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.end.i.i.sw.epilog.i_crit_edge

if.end.i.i.sw.epilog.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr %struct.udphdr, ptr %22, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx.i.i, align 4
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %add.ptr.i.i, align 4
  %add.ptr9.i.i = getelementptr %struct.udphdr, ptr %22, i32 2
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then
  %34 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %esp, align 8
  %len2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len2.i.i, align 4
  %38 = ptrtoint ptr %tailen1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tailen1, align 4
  %add.i25.i = add i32 %39, %37
  %head.i.i.i26.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i.i26.i, align 8
  %transport_header.i.i.i27.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %42 = ptrtoint ptr %transport_header.i.i.i27.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %transport_header.i.i.i27.i, align 2
  %conv.i.i.i28.i = zext i16 %43 to i32
  %add.ptr.i.i.i29.i = getelementptr i8, ptr %41, i32 %conv.i.i.i28.i
  %data.i.i30.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i30.i, align 4
  %sub.ptr.lhs.cast.i.i31.i = ptrtoint ptr %add.ptr.i.i.i29.i to i32
  %sub.ptr.rhs.cast.i.i32.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i.neg.i33.i = sub i32 %sub.ptr.rhs.cast.i.i32.i, %sub.ptr.lhs.cast.i.i31.i
  %sub.i34.i = add i32 %add.i25.i, %sub.ptr.sub.i.neg.i33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.i34.i)
  %cmp.i35.i = icmp ugt i32 %sub.i34.i, 65535
  br i1 %cmp.i35.i, label %sw.bb4.i.cleanup79_crit_edge, label %if.end.i36.i

sw.bb4.i.cleanup79_crit_edge:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end.i36.i:                                     ; preds = %sw.bb4.i
  %46 = tail call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %49, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !96
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i, label %if.end.i36.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i36.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i36.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #13
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i36.i.rcu_read_lock.exit.i.i_crit_edge
  %call4.i.i = tail call fastcc ptr @esp6_find_tcp_sk(ptr noundef %x) #13
  %call.i17.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i17.i.i, label %rcu_read_lock.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i20.i.i

rcu_read_lock.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i20.i.i:                            ; preds = %rcu_read_lock.exit.i.i
  %call1.i18.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i.i)
  %tobool.not.i19.i.i = icmp eq i32 %call1.i18.i.i, 0
  br i1 %tobool.not.i19.i.i, label %land.lhs.true.i20.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i22.i.i

land.lhs.true.i20.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i22.i.i:                           ; preds = %land.lhs.true.i20.i.i
  %.b4.i21.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i.i, label %land.lhs.true2.i22.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i23.i.i

land.lhs.true2.i22.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

if.then.i23.i.i:                                  ; preds = %land.lhs.true2.i22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i23.i.i, %land.lhs.true2.i22.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i20.i.i.rcu_read_unlock.exit.i.i_crit_edge, %rcu_read_lock.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %50 = tail call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i.i.i24.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i24.i.i to ptr
  %preempt_count.i.i.i.i25.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i25.i.i, align 4
  %sub.i.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i25.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %cmp.i.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %rcu_read_unlock.exit.i.i.sw.epilog.i_crit_edge, label %if.end8.i.i

rcu_read_unlock.exit.i.i.sw.epilog.i_crit_edge:   ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.end8.i.i:                                      ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i37.i = trunc i32 %sub.i34.i to i16
  %54 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i37.i, ptr %35, align 2
  %add.ptr.i38.i = getelementptr i16, ptr %35, i32 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end8.i.i, %rcu_read_unlock.exit.i.i.sw.epilog.i_crit_edge, %if.then7.i.i, %if.end.i.i.sw.epilog.i_crit_edge
  %esph.0.i = phi ptr [ %add.ptr9.i.i, %if.then7.i.i ], [ %add.ptr.i.i, %if.end.i.i.sw.epilog.i_crit_edge ], [ %add.ptr.i38.i, %if.end8.i.i ], [ %call4.i.i, %rcu_read_unlock.exit.i.i.sw.epilog.i_crit_edge ]
  %cmp.i40.i = icmp ugt ptr %esph.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40.i, label %esp6_output_encap.exit, label %esp6_output_encap.exit.thread

esp6_output_encap.exit.thread:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %esp to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %esph.0.i, ptr %esp, align 8
  br label %if.end3

esp6_output_encap.exit:                           ; preds = %sw.epilog.i
  %56 = ptrtoint ptr %esph.0.i to i32
  %cmp = icmp slt ptr %esph.0.i, null
  br i1 %cmp, label %esp6_output_encap.exit.cleanup79_crit_edge, label %esp6_output_encap.exit.if.end3_crit_edge

esp6_output_encap.exit.if.end3_crit_edge:         ; preds = %esp6_output_encap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

esp6_output_encap.exit.cleanup79_crit_edge:       ; preds = %esp6_output_encap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end3:                                          ; preds = %esp6_output_encap.exit.if.end3_crit_edge, %esp6_output_encap.exit.thread, %entry.if.end3_crit_edge
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %57 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_len, align 8
  %add = add i32 %2, 127
  %add4 = add i32 %add, %58
  %and = and i32 %add4, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and)
  %cmp6 = icmp ugt i32 %and, 32768
  br i1 %cmp6, label %if.end3.cow_crit_edge, label %if.end8

if.end3.cow_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cow

if.end8:                                          ; preds = %if.end3
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %59 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end8.if.then11_crit_edge, label %skb_cloned.exit

if.end8.if.then11_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

skb_cloned.exit:                                  ; preds = %if.end8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %60 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 10
  %call.i.i.i145 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #13
  %62 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %63, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.then11_crit_edge, label %skb_cloned.exit.cow_crit_edge

skb_cloned.exit.cow_crit_edge:                    ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cow

skb_cloned.exit.if.then11_crit_edge:              ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

if.then11:                                        ; preds = %skb_cloned.exit.if.then11_crit_edge, %if.end8.if.then11_crit_edge
  %64 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.i.not.i = icmp eq i32 %65, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then11.skb_tailroom.exit_crit_edge

if.then11.skb_tailroom.exit_crit_edge:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %66 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %68 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.then11.skb_tailroom.exit_crit_edge
  %cond.i146 = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.then11.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cond.i146)
  %cmp13.not = icmp sgt i32 %2, %cond.i146
  br i1 %cmp13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %trailer to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %skb, ptr %trailer, align 4
  %tail.i147 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %71 = ptrtoint ptr %tail.i147 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tail.i147, align 8
  br label %skip_cow

if.else:                                          ; preds = %skb_tailroom.exit
  %end.i148 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %73 = ptrtoint ptr %end.i148 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i148, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %76)
  %cmp17 = icmp ult i8 %76, 17
  br i1 %cmp17, label %land.lhs.true, label %if.else.cow_crit_edge

if.else.cow_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cow

land.lhs.true:                                    ; preds = %if.else
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %74, i32 0, i32 6
  %77 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %frag_list.i, align 8
  %cmp.i150.not = icmp eq ptr %78, null
  br i1 %cmp.i150.not, label %if.then20, label %land.lhs.true.cow_crit_edge

land.lhs.true.cow_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cow

if.then20:                                        ; preds = %land.lhs.true
  %79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %xfrag = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 44
  %inplace = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 9
  %82 = ptrtoint ptr %inplace to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %inplace, align 1
  %and22 = and i32 %add, -128
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %call23 = tail call zeroext i1 @skb_page_frag_refill(i32 noundef %and22, ptr noundef %xfrag, i32 noundef 2592) #13
  br i1 %call23, label %if.end29, label %cleanup58, !prof !98

if.end29:                                         ; preds = %if.then20
  %83 = ptrtoint ptr %xfrag to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xfrag, align 4
  tail call fastcc void @get_page(ptr noundef %84)
  %call31 = tail call ptr @page_address(ptr noundef %84) #13
  %offset = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 44, i32 1
  %85 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %offset, align 4
  %conv32 = zext i16 %86 to i32
  %add.ptr = getelementptr i8, ptr %call31, i32 %conv32
  %tfclen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 2
  %87 = ptrtoint ptr %tfclen to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tfclen, align 8
  %plen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 4
  %89 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %plen, align 8
  %proto = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 8
  %91 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %proto, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i151 = icmp eq i32 %88, 0
  br i1 %tobool.not.i151, label %if.end29.do.body.i_crit_edge, label %if.then.i152

if.end29.do.body.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.then.i152:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %93 = call ptr @memset(ptr %add.ptr, i32 0, i32 %88)
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %88
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i152, %if.end29.do.body.i_crit_edge
  %tail.addr.0.i = phi ptr [ %add.ptr.i, %if.then.i152 ], [ %add.ptr, %if.end29.do.body.i_crit_edge ]
  %sub.i = add i32 %90, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp19.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp19.i, label %do.body.i.for.body.i_crit_edge, label %do.body.i.esp_output_fill_trailer.exit_crit_edge

do.body.i.esp_output_fill_trailer.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_output_fill_trailer.exit

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %i.020.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.020.i, 1
  %conv.i = trunc i32 %add.i to i8
  %arrayidx.i = getelementptr i8, ptr %tail.addr.0.i, i32 %i.020.i
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %exitcond.not.i = icmp eq i32 %add.i, %sub.i
  br i1 %exitcond.not.i, label %for.body.i.esp_output_fill_trailer.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.esp_output_fill_trailer.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_output_fill_trailer.exit

esp_output_fill_trailer.exit:                     ; preds = %for.body.i.esp_output_fill_trailer.exit_crit_edge, %do.body.i.esp_output_fill_trailer.exit_crit_edge
  %conv2.i = trunc i32 %sub.i to i8
  %arrayidx4.i = getelementptr i8, ptr %tail.addr.0.i, i32 %sub.i
  %95 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv2.i, ptr %arrayidx4.i, align 1
  %sub5.i = add i32 %90, -1
  %arrayidx6.i = getelementptr i8, ptr %tail.addr.0.i, i32 %sub5.i
  %96 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %92, ptr %arrayidx6.i, align 1
  %97 = ptrtoint ptr %end.i148 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i148, align 4
  %nr_frags34 = getelementptr inbounds %struct.skb_shared_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %nr_frags34 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %nr_frags34, align 2
  %conv35 = zext i8 %100 to i32
  %101 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %offset, align 4
  %conv37 = zext i16 %102 to i32
  %arrayidx.i155 = getelementptr %struct.skb_shared_info, ptr %98, i32 0, i32 12, i32 %conv35
  %103 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %84, ptr %arrayidx.i155, align 4
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %98, i32 0, i32 12, i32 %conv35, i32 2
  %104 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv37, ptr %bv_offset.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %98, i32 0, i32 12, i32 %conv35, i32 1
  %105 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %2, ptr %bv_len.i.i, align 4
  %106 = getelementptr inbounds %struct.page, ptr %84, i32 0, i32 1
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %106, align 4
  %and.i.i = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i157, label %if.then.i.i, !prof !98

if.then.i.i:                                      ; preds = %esp_output_fill_trailer.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i156 = add i32 %108, -1
  br label %_compound_head.exit.i

if.end.i.i157:                                    ; preds = %esp_output_fill_trailer.exit
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %84 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i157, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i156, %if.then.i.i ], [ %109, %if.end.i.i157 ]
  %110 = inttoptr i32 %retval.0.i.i to ptr
  %111 = getelementptr inbounds %struct.page, ptr %110, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %114 = ptrtoint ptr %113 to i32
  %and.i8.i = and i32 %114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.i.not.i158 = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.i.not.i158, label %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge, label %if.then.i160

_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__skb_fill_page_desc.exit

if.then.i160:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %115 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load.i159 = load i8, ptr %cloned.i, align 2
  %bf.set.i = or i8 %bf.load.i159, 2
  store i8 %bf.set.i, ptr %cloned.i, align 2
  br label %__skb_fill_page_desc.exit

__skb_fill_page_desc.exit:                        ; preds = %if.then.i160, %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge
  %inc = add i8 %100, 1
  %116 = ptrtoint ptr %end.i148 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %end.i148, align 4
  %nr_frags40 = getelementptr inbounds %struct.skb_shared_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %nr_frags40 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %inc, ptr %nr_frags40, align 2
  %119 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %offset, align 4
  %121 = trunc i32 %and22 to i16
  %conv44 = add i16 %120, %121
  store i16 %conv44, ptr %offset, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  %inc47 = add nuw nsw i32 %conv35, 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %122 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %len, align 4
  %add48 = add i32 %123, %2
  store i32 %add48, ptr %len, align 4
  %124 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %data_len, align 8
  %add50 = add i32 %125, %2
  store i32 %add50, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %126 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %truesize, align 8
  %add51 = add i32 %127, %2
  store i32 %add51, ptr %truesize, align 8
  %tobool52.not = icmp eq ptr %81, null
  br i1 %tobool52.not, label %__skb_fill_page_desc.exit.cleanup79_crit_edge, label %land.lhs.true53

__skb_fill_page_desc.exit.cleanup79_crit_edge:    ; preds = %__skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

land.lhs.true53:                                  ; preds = %__skb_fill_page_desc.exit
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %81, i32 0, i32 4
  %128 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i163 = zext i8 %129 to i32
  %shl.i = shl nuw i32 1, %conv.i163
  %and.i164 = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %tobool.i.not = icmp eq i32 %and.i164, 0
  br i1 %tobool.i.not, label %land.lhs.true53.cleanup79_crit_edge, label %if.then56

land.lhs.true53.cleanup79_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.then56:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %81, i32 0, i32 23
  tail call fastcc void @refcount_add(i32 noundef %2, ptr noundef %sk_wmem_alloc)
  br label %cleanup79

cleanup58:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  br label %cow

cow:                                              ; preds = %cleanup58, %land.lhs.true.cow_crit_edge, %if.else.cow_crit_edge, %skb_cloned.exit.cow_crit_edge, %if.end3.cow_crit_edge
  %130 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %esp, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %132 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %134 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %transport_header.i, align 2
  %call66 = call i32 @skb_cow_data(ptr noundef %skb, i32 noundef %2, ptr noundef nonnull %trailer) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %cow.cleanup79_crit_edge, label %if.end70

cow.cleanup79_crit_edge:                          ; preds = %cow
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end70:                                         ; preds = %cow
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i165 = zext i16 %135 to i32
  %add.ptr.i166 = getelementptr i8, ptr %133, i32 %conv.i165
  %sub.ptr.lhs.cast = ptrtoint ptr %131 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i166 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %136 = ptrtoint ptr %trailer to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %trailer, align 4
  %tail.i167 = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 16
  %138 = ptrtoint ptr %tail.i167 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tail.i167, align 8
  %140 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %head.i, align 8
  %142 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %transport_header.i, align 2
  %conv.i170 = zext i16 %143 to i32
  %add.ptr.i171 = getelementptr i8, ptr %141, i32 %conv.i170
  %add.ptr73 = getelementptr i8, ptr %add.ptr.i171, i32 %sub.ptr.sub
  %144 = ptrtoint ptr %esp to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %add.ptr73, ptr %esp, align 8
  br label %skip_cow

skip_cow:                                         ; preds = %if.end70, %if.then14
  %tail.0 = phi ptr [ %139, %if.end70 ], [ %72, %if.then14 ]
  %nfrags.1 = phi i32 [ %call66, %if.end70 ], [ 1, %if.then14 ]
  %tfclen75 = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 2
  %145 = ptrtoint ptr %tfclen75 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tfclen75, align 8
  %plen76 = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 4
  %147 = ptrtoint ptr %plen76 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %plen76, align 8
  %proto77 = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 8
  %149 = ptrtoint ptr %proto77 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %proto77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i172 = icmp eq i32 %146, 0
  br i1 %tobool.not.i172, label %skip_cow.do.body.i178_crit_edge, label %if.then.i174

skip_cow.do.body.i178_crit_edge:                  ; preds = %skip_cow
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i178

if.then.i174:                                     ; preds = %skip_cow
  call void @__sanitizer_cov_trace_pc() #15
  %151 = call ptr @memset(ptr %tail.0, i32 0, i32 %146)
  %add.ptr.i173 = getelementptr i8, ptr %tail.0, i32 %146
  br label %do.body.i178

do.body.i178:                                     ; preds = %if.then.i174, %skip_cow.do.body.i178_crit_edge
  %tail.addr.0.i175 = phi ptr [ %add.ptr.i173, %if.then.i174 ], [ %tail.0, %skip_cow.do.body.i178_crit_edge ]
  %sub.i176 = add i32 %148, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i176)
  %cmp19.i177 = icmp sgt i32 %sub.i176, 0
  br i1 %cmp19.i177, label %do.body.i178.for.body.i184_crit_edge, label %do.body.i178.esp_output_fill_trailer.exit189_crit_edge

do.body.i178.esp_output_fill_trailer.exit189_crit_edge: ; preds = %do.body.i178
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_output_fill_trailer.exit189

do.body.i178.for.body.i184_crit_edge:             ; preds = %do.body.i178
  br label %for.body.i184

for.body.i184:                                    ; preds = %for.body.i184.for.body.i184_crit_edge, %do.body.i178.for.body.i184_crit_edge
  %i.020.i179 = phi i32 [ %add.i180, %for.body.i184.for.body.i184_crit_edge ], [ 0, %do.body.i178.for.body.i184_crit_edge ]
  %add.i180 = add nuw nsw i32 %i.020.i179, 1
  %conv.i181 = trunc i32 %add.i180 to i8
  %arrayidx.i182 = getelementptr i8, ptr %tail.addr.0.i175, i32 %i.020.i179
  %152 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv.i181, ptr %arrayidx.i182, align 1
  %exitcond.not.i183 = icmp eq i32 %add.i180, %sub.i176
  br i1 %exitcond.not.i183, label %for.body.i184.esp_output_fill_trailer.exit189_crit_edge, label %for.body.i184.for.body.i184_crit_edge

for.body.i184.for.body.i184_crit_edge:            ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i184

for.body.i184.esp_output_fill_trailer.exit189_crit_edge: ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_output_fill_trailer.exit189

esp_output_fill_trailer.exit189:                  ; preds = %for.body.i184.esp_output_fill_trailer.exit189_crit_edge, %do.body.i178.esp_output_fill_trailer.exit189_crit_edge
  %conv2.i185 = trunc i32 %sub.i176 to i8
  %arrayidx4.i186 = getelementptr i8, ptr %tail.addr.0.i175, i32 %sub.i176
  %153 = ptrtoint ptr %arrayidx4.i186 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv2.i185, ptr %arrayidx4.i186, align 1
  %sub5.i187 = add i32 %148, -1
  %arrayidx6.i188 = getelementptr i8, ptr %tail.addr.0.i175, i32 %sub5.i187
  %154 = ptrtoint ptr %arrayidx6.i188 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %150, ptr %arrayidx6.i188, align 1
  %155 = ptrtoint ptr %trailer to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %trailer, align 4
  %call78 = call ptr @pskb_put(ptr noundef %skb, ptr noundef %156, i32 noundef %2) #13
  br label %cleanup79

cleanup79:                                        ; preds = %esp_output_fill_trailer.exit189, %cow.cleanup79_crit_edge, %if.then56, %land.lhs.true53.cleanup79_crit_edge, %__skb_fill_page_desc.exit.cleanup79_crit_edge, %esp6_output_encap.exit.cleanup79_crit_edge, %sw.bb4.i.cleanup79_crit_edge, %sw.bb.i.cleanup79_crit_edge
  %retval.2 = phi i32 [ %56, %esp6_output_encap.exit.cleanup79_crit_edge ], [ %call66, %cow.cleanup79_crit_edge ], [ %nfrags.1, %esp_output_fill_trailer.exit189 ], [ %inc47, %if.then56 ], [ %inc47, %land.lhs.true53.cleanup79_crit_edge ], [ %inc47, %__skb_fill_page_desc.exit.cleanup79_crit_edge ], [ -90, %sw.bb.i.cleanup79_crit_edge ], [ -90, %sw.bb4.i.cleanup79_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer) #13
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_page_frag_refill(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_page(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !98

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #13
  %5 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i, align 4
  %add.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 128
  br i1 %cmp.i, label %if.then.i1, label %do.end5.i, !prof !99

if.then.i1:                                       ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #13, !srcloc !100
  unreachable

do.end5.i:                                        ; preds = %_compound_head.exit
  %call.i.i.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #13, !srcloc !101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@get_page, %if.then.i.i.i)) #13
          to label %folio_get.exit [label %if.then.i.i.i], !srcloc !102

if.then.i.i.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #13
  br label %folio_get.exit

folio_get.exit:                                   ; preds = %if.then.i.i.i, %do.end5.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_add(i32 noundef %i, ptr noundef %r) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 %i, ptr elementtype(i32) %r) #13, !srcloc !103
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool1.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool1.not.i, label %entry.if.end15.sink.split.i_crit_edge, label %if.else.i, !prof !99

entry.if.end15.sink.split.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i

if.else.i:                                        ; preds = %entry
  %add.i = add i32 %asmresult.i.i.i, %i
  %1 = or i32 %add.i, %asmresult.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i = icmp sgt i32 %1, -1
  br i1 %.not.i, label %if.else.i.__refcount_add.exit_crit_edge, label %if.else.i.if.end15.sink.split.i_crit_edge, !prof !98

if.else.i.if.end15.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i

if.else.i.__refcount_add.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__refcount_add.exit

if.end15.sink.split.i:                            ; preds = %if.else.i.if.end15.sink.split.i_crit_edge, %entry.if.end15.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %entry.if.end15.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end15.sink.split.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i) #13
  br label %__refcount_add.exit

__refcount_add.exit:                              ; preds = %if.end15.sink.split.i, %if.else.i.__refcount_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_cow_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pskb_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esp6_output_tail(ptr noundef %x, ptr noundef %skb, ptr nocapture noundef %esp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not = icmp sgt i8 %1, -1
  %spec.select = select i1 %tobool.not, i32 8, i32 12
  %2 = lshr i8 %1, 4
  %3 = and i8 %2, 8
  %4 = zext i8 %3 to i32
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 128
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %10, i32 -104
  %11 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ivsize.i.i, align 8
  %nfrags = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 7
  %13 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nfrags, align 4
  %add.i = add i32 %12, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i = icmp eq i32 %add.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %and.i = and i32 %16, -128
  %add3.i = add i32 %add.i, 127
  %add6.i = add i32 %add3.i, %and.i
  %and10.i = and i32 %add6.i, -128
  %phi.bo.i = add i32 %and10.i, 131
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %len.0.i = phi i32 [ %phi.bo.i, %if.then.i ], [ 131, %entry.if.end.i_crit_edge ]
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 1
  %17 = mul i32 %14, 20
  %mul.i = add i32 %17, 40
  %18 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reqsize.i.i, align 4
  %add14.i = add i32 %19, %len.0.i
  %and15.i = and i32 %add14.i, -4
  %add16.i = add i32 %mul.i, %and15.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add16.i, i32 noundef 2592) #16
  %tobool5.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not, label %if.end.i.cleanup139_crit_edge, label %if.end7

if.end.i.cleanup139_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup139

if.end7:                                          ; preds = %if.end.i
  %20 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i.i251 = getelementptr i8, ptr %21, i32 -104
  %22 = ptrtoint ptr %ivsize.i.i.i251 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ivsize.i.i.i251, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i252 = icmp eq i32 %23, 0
  %add.ptr6.i = getelementptr i8, ptr %call9.i.i, i32 %4
  br i1 %tobool.not.i252, label %if.end7.esp_tmp_iv.exit_crit_edge, label %cond.true.i

if.end7.esp_tmp_iv.exit_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_tmp_iv.exit

cond.true.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %add.ptr6.i to i32
  %cra_alignmask.i.i.i253 = getelementptr inbounds %struct.crypto_alg, ptr %21, i32 0, i32 5
  %25 = ptrtoint ptr %cra_alignmask.i.i.i253 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cra_alignmask.i.i.i253, align 4
  %add2.i = add i32 %26, %24
  %neg.i = xor i32 %26, -1
  %and.i254 = and i32 %add2.i, %neg.i
  %27 = inttoptr i32 %and.i254 to ptr
  br label %esp_tmp_iv.exit

esp_tmp_iv.exit:                                  ; preds = %cond.true.i, %if.end7.esp_tmp_iv.exit_crit_edge
  %cond.i = phi ptr [ %27, %cond.true.i ], [ %add.ptr6.i, %if.end7.esp_tmp_iv.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %cond.i, i32 %23
  %28 = ptrtoint ptr %add.ptr.i to i32
  %add.i257 = add i32 %28, 127
  %and.i258 = and i32 %add.i257, -128
  %29 = inttoptr i32 %and.i258 to ptr
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %add.ptr.i259 = getelementptr %struct.aead_request, ptr %29, i32 1
  %31 = ptrtoint ptr %add.ptr.i259 to i32
  %32 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reqsize.i.i, align 4
  %add.i261 = add i32 %33, 3
  %add1.i = add i32 %add.i261, %31
  %and.i262 = and i32 %add1.i, -4
  %34 = inttoptr i32 %and.i262 to ptr
  %inplace = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 9
  %35 = ptrtoint ptr %inplace to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %inplace, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool12.not = icmp eq i8 %36, 0
  br i1 %tobool12.not, label %if.else, label %esp_tmp_iv.exit.if.end15_crit_edge

esp_tmp_iv.exit.if.end15_crit_edge:               ; preds = %esp_tmp_iv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.else:                                          ; preds = %esp_tmp_iv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nfrags, align 4
  %arrayidx = getelementptr %struct.scatterlist, ptr %34, i32 %38
  br label %if.end15

if.end15:                                         ; preds = %if.else, %esp_tmp_iv.exit.if.end15_crit_edge
  %dsg.0 = phi ptr [ %arrayidx, %if.else ], [ %34, %esp_tmp_iv.exit.if.end15_crit_edge ]
  %39 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %esp, align 8
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %tobool.not.i263 = icmp sgt i8 %42, -1
  br i1 %tobool.not.i263, label %if.end15.esp_output_set_esn.exit_crit_edge, label %if.then.i264

if.end15.esp_output_set_esn.exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_output_set_esn.exit

if.then.i264:                                     ; preds = %if.end15
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %43 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %45 = and i8 %44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.i.not.i.i.i.i = icmp eq i8 %45, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.then.i264.xfrm_offload.exit.i_crit_edge, label %skb_sec_path.exit.i.i

if.then.i264.xfrm_offload.exit.i_crit_edge:       ; preds = %if.then.i264
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit.i

skb_sec_path.exit.i.i:                            ; preds = %if.then.i264
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %46 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %extensions.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.skb_ext, ptr %47, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %49 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %47, i32 %shl.i.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %skb_sec_path.exit.i.i.xfrm_offload.exit.i_crit_edge, label %lor.lhs.false.i.i

skb_sec_path.exit.i.i.xfrm_offload.exit.i_crit_edge: ; preds = %skb_sec_path.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit.i

lor.lhs.false.i.i:                                ; preds = %skb_sec_path.exit.i.i
  %olen.i.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %olen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool1.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.xfrm_offload.exit.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.xfrm_offload.exit.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %52 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp.not.i.i = icmp eq i32 %53, %51
  br i1 %cmp.not.i.i, label %if.end.i.i265, label %lor.lhs.false2.i.i.xfrm_offload.exit.i_crit_edge

lor.lhs.false2.i.i.xfrm_offload.exit.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit.i

if.end.i.i265:                                    ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %51, -1
  %arrayidx.i.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 3, i32 %sub.i.i
  br label %xfrm_offload.exit.i

xfrm_offload.exit.i:                              ; preds = %if.end.i.i265, %lor.lhs.false2.i.i.xfrm_offload.exit.i_crit_edge, %lor.lhs.false.i.i.xfrm_offload.exit.i_crit_edge, %skb_sec_path.exit.i.i.xfrm_offload.exit.i_crit_edge, %if.then.i264.xfrm_offload.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %if.end.i.i265 ], [ null, %lor.lhs.false2.i.i.xfrm_offload.exit.i_crit_edge ], [ null, %lor.lhs.false.i.i.xfrm_offload.exit.i_crit_edge ], [ null, %skb_sec_path.exit.i.i.xfrm_offload.exit.i_crit_edge ], [ null, %if.then.i264.xfrm_offload.exit.i_crit_edge ]
  %tobool1.not.i = icmp eq ptr %retval.0.i.i, null
  %hi.i = getelementptr inbounds %struct.anon.206, ptr %retval.0.i.i, i32 0, i32 1
  %hi4.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %seqhi.0.in.i = select i1 %tobool1.not.i, ptr %hi4.i, ptr %hi.i
  %54 = ptrtoint ptr %seqhi.0.in.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %seqhi.0.i = load i32, ptr %seqhi.0.in.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %55 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %57 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %58 to i32
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 %conv.i.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %esphoff.i = getelementptr inbounds %struct.esp_output_extra, ptr %call9.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %esphoff.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub.ptr.sub.i, ptr %esphoff.i, align 4
  %add.ptr.i266 = getelementptr i8, ptr %40, i32 -4
  %60 = ptrtoint ptr %add.ptr.i266 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i266, align 4
  %62 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %call9.i.i, align 128
  %63 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %seqhi.0.i, ptr %40, align 4
  br label %esp_output_set_esn.exit

esp_output_set_esn.exit:                          ; preds = %xfrm_offload.exit.i, %if.end15.esp_output_set_esn.exit_crit_edge
  %esph.addr.0.i = phi ptr [ %add.ptr.i266, %xfrm_offload.exit.i ], [ %40, %if.end15.esp_output_set_esn.exit_crit_edge ]
  %spi8.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %64 = ptrtoint ptr %spi8.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %spi8.i, align 4
  %66 = ptrtoint ptr %esph.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %esph.addr.0.i, align 4
  %67 = ptrtoint ptr %esp to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %esph.addr.0.i, ptr %esp, align 8
  %68 = ptrtoint ptr %nfrags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nfrags, align 4
  tail call void @sg_init_table(ptr noundef %34, i32 noundef %69) #13
  %data20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %70 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data20, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %esph.addr.0.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %71 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add21 = add i32 %12, %spec.select
  %clen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 5
  %72 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %clen, align 4
  %add22 = add i32 %add21, %8
  %add23 = add i32 %add22, %73
  %call24 = tail call i32 @skb_to_sgvec(ptr noundef %skb, ptr noundef %34, i32 noundef %sub.ptr.sub, i32 noundef %add23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %esp_output_set_esn.exit.error_free_crit_edge, label %if.end29, !prof !99

esp_output_set_esn.exit.error_free_crit_edge:     ; preds = %esp_output_set_esn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

if.end29:                                         ; preds = %esp_output_set_esn.exit
  %74 = ptrtoint ptr %inplace to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %inplace, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool31.not = icmp eq i8 %75, 0
  br i1 %tobool31.not, label %if.then32, label %if.end29.if.end81_crit_edge

if.end29.if.end81_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then32:                                        ; preds = %if.end29
  %xfrag = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 44
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %76 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_len, align 8
  %add33 = add i32 %77, 127
  %and34 = and i32 %add33, -128
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %call35 = tail call zeroext i1 @skb_page_frag_refill(i32 noundef %and34, ptr noundef %xfrag, i32 noundef 2592) #13
  br i1 %call35, label %if.end46, label %if.then44, !prof !98

if.then44:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  br label %error_free

if.end46:                                         ; preds = %if.then32
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %78 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %nr_frags, align 2
  %81 = ptrtoint ptr %xfrag to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %xfrag, align 4
  %83 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %83, align 4
  %and.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i267 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i267, label %if.end.i.i270, label %if.then.i.i269, !prof !98

if.then.i.i269:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i268 = add i32 %85, -1
  br label %_compound_head.exit.i

if.end.i.i270:                                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %82 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i270, %if.then.i.i269
  %retval.0.i.i271 = phi i32 [ %sub.i.i268, %if.then.i.i269 ], [ %86, %if.end.i.i270 ]
  %87 = inttoptr i32 %retval.0.i.i271 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %87, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %88 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %89, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i272 = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i272, label %if.then.i1.i, label %do.end5.i.i, !prof !99

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %87, ptr noundef nonnull @.str.10) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #13, !srcloc !100
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@esp6_output_tail, %if.then.i.i.i.i)) #13
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !102

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %87, i32 noundef 1) #13
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %offset = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 44, i32 1
  %91 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %offset, align 4
  %conv49 = zext i16 %92 to i32
  %93 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_len, align 8
  %95 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %end.i, align 4
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %96, i32 0, i32 12, i32 0
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %82, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %96, i32 0, i32 12, i32 0, i32 2
  %98 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv49, ptr %bv_offset.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %96, i32 0, i32 12, i32 0, i32 1
  %99 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %94, ptr %bv_len.i.i, align 4
  %100 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %83, align 4
  %and.i.i273 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i273)
  %tobool.not.i.i274 = icmp eq i32 %and.i.i273, 0
  br i1 %tobool.not.i.i274, label %if.end.i.i277, label %if.then.i.i276, !prof !98

if.then.i.i276:                                   ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i275 = add i32 %101, -1
  br label %_compound_head.exit.i279

if.end.i.i277:                                    ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %102 = ptrtoint ptr %82 to i32
  br label %_compound_head.exit.i279

_compound_head.exit.i279:                         ; preds = %if.end.i.i277, %if.then.i.i276
  %retval.0.i.i278 = phi i32 [ %sub.i.i275, %if.then.i.i276 ], [ %102, %if.end.i.i277 ]
  %103 = inttoptr i32 %retval.0.i.i278 to ptr
  %104 = getelementptr inbounds %struct.page, ptr %103, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %107 = ptrtoint ptr %106 to i32
  %and.i8.i = and i32 %107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.i.not.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.i.not.i, label %_compound_head.exit.i279.__skb_fill_page_desc.exit_crit_edge, label %if.then.i280

_compound_head.exit.i279.__skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i279
  call void @__sanitizer_cov_trace_pc() #15
  br label %__skb_fill_page_desc.exit

if.then.i280:                                     ; preds = %_compound_head.exit.i279
  call void @__sanitizer_cov_trace_pc() #15
  %pfmemalloc.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %108 = ptrtoint ptr %pfmemalloc.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load.i = load i8, ptr %pfmemalloc.i, align 2
  %bf.set.i = or i8 %bf.load.i, 2
  store i8 %bf.set.i, ptr %pfmemalloc.i, align 2
  br label %__skb_fill_page_desc.exit

__skb_fill_page_desc.exit:                        ; preds = %if.then.i280, %_compound_head.exit.i279.__skb_fill_page_desc.exit_crit_edge
  %109 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %offset, align 4
  %111 = trunc i32 %and34 to i16
  %conv54 = add i16 %110, %111
  store i16 %conv54, ptr %offset, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  %112 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %end.i, align 4
  %nr_frags58 = getelementptr inbounds %struct.skb_shared_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %nr_frags58 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %nr_frags58, align 2
  %conv59 = zext i8 %115 to i32
  %add60 = add nuw nsw i32 %conv59, 1
  tail call void @sg_init_table(ptr noundef %dsg.0, i32 noundef %add60) #13
  %116 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data20, align 4
  %sub.ptr.rhs.cast63 = ptrtoint ptr %117 to i32
  %sub.ptr.sub64 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast63
  %118 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %clen, align 4
  %add68 = add i32 %add22, %119
  %call69 = tail call i32 @skb_to_sgvec(ptr noundef %skb, ptr noundef %dsg.0, i32 noundef %sub.ptr.sub64, i32 noundef %add68) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %__skb_fill_page_desc.exit.error_free_crit_edge, label %__skb_fill_page_desc.exit.if.end81_crit_edge

__skb_fill_page_desc.exit.if.end81_crit_edge:     ; preds = %__skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

__skb_fill_page_desc.exit.error_free_crit_edge:   ; preds = %__skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

if.end81:                                         ; preds = %__skb_fill_page_desc.exit.if.end81_crit_edge, %if.end29.if.end81_crit_edge
  %120 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %121)
  %tobool86.not = icmp sgt i8 %121, -1
  %spec.select309 = select i1 %tobool86.not, ptr @esp_output_done, ptr @esp_output_done_esn
  %122 = getelementptr inbounds %struct.crypto_async_request, ptr %29, i32 0, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %spec.select309, ptr %122, align 8
  %124 = getelementptr inbounds %struct.crypto_async_request, ptr %29, i32 0, i32 2
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %skb, ptr %124, align 4
  %126 = getelementptr inbounds %struct.crypto_async_request, ptr %29, i32 0, i32 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %126, align 4
  %128 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %clen, align 4
  %add91 = add i32 %129, %12
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %29, i32 0, i32 4
  %130 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %34, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %29, i32 0, i32 5
  %131 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %dsg.0, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %29, i32 0, i32 2
  %132 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %add91, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %29, i32 0, i32 3
  %133 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %cond.i, ptr %iv4.i, align 32
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %29, i32 0, i32 1
  %134 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %spec.select, ptr %assoclen1.i, align 8
  %135 = call ptr @memset(ptr %cond.i, i32 0, i32 %12)
  %add.ptr = getelementptr i8, ptr %cond.i, i32 %12
  %136 = tail call i32 @llvm.smin.i32(i32 %12, i32 8)
  %idx.neg = sub i32 0, %136
  %add.ptr95 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %add.ptr96 = getelementptr %struct.esp_info, ptr %esp, i32 0, i32 2
  %add.ptr105 = getelementptr i8, ptr %add.ptr96, i32 %idx.neg
  %137 = call ptr @memcpy(ptr %add.ptr95, ptr %add.ptr105, i32 %136)
  %tmp114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %138 = ptrtoint ptr %tmp114 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call9.i.i, ptr %tmp114, align 4
  %call115 = tail call i32 @crypto_aead_encrypt(ptr noundef %29) #13
  %139 = zext i32 %call115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call115, label %if.end81.sw.epilog_crit_edge [
    i32 -115, label %if.end81.cleanup139_crit_edge
    i32 -28, label %sw.bb116
    i32 0, label %sw.bb117
  ]

if.end81.cleanup139_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup139

if.end81.sw.epilog_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb117:                                         ; preds = %if.end81
  %140 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %141)
  %tobool122.not = icmp sgt i8 %141, -1
  br i1 %tobool122.not, label %sw.bb117.if.end124_crit_edge, label %if.then123

sw.bb117.if.end124_crit_edge:                     ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then123:                                       ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #15
  %142 = ptrtoint ptr %tmp114 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tmp114, align 4
  %144 = ptrtoint ptr %143 to i32
  %add.i.i286 = add i32 %144, 3
  %and.i.i287 = and i32 %add.i.i286, -4
  %145 = inttoptr i32 %and.i.i287 to ptr
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %146 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %148 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %149 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %147, i32 %conv.i.i.i
  %150 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %data20, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %151 to i32
  %esphoff.i288 = getelementptr inbounds %struct.esp_output_extra, ptr %145, i32 0, i32 1
  %152 = ptrtoint ptr %esphoff.i288 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %esphoff.i288, align 4
  %sub.ptr.sub.i.i = sub i32 -4, %sub.ptr.rhs.cast.i.i
  %add.i289 = add i32 %sub.ptr.sub.i.i, %153
  %sub.i = add i32 %add.i289, %sub.ptr.lhs.cast.i.i
  %add.ptr.i.i290 = getelementptr i8, ptr %151, i32 %sub.i
  %154 = ptrtoint ptr %add.ptr.i.i290 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %add.ptr.i.i290, align 4
  %seq_no.i.i = getelementptr inbounds %struct.ip_esp_hdr, ptr %add.ptr.i.i290, i32 0, i32 1
  %156 = ptrtoint ptr %seq_no.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %seq_no.i.i, align 4
  %157 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %145, align 4
  store i32 %158, ptr %add.ptr.i.i290, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %sw.bb117.if.end124_crit_edge
  %head.i.i291 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %159 = ptrtoint ptr %head.i.i291 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %head.i.i291, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %161 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i292 = zext i16 %162 to i32
  %add.ptr.i.i293 = getelementptr i8, ptr %160, i32 %conv.i.i292
  %163 = ptrtoint ptr %add.ptr.i.i293 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %add.ptr.i.i293, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %164)
  %cmp.i = icmp eq i8 %164, 17
  br i1 %cmp.i, label %if.then.i302, label %if.end124.sw.epilog_crit_edge

if.end124.sw.epilog_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then.i302:                                     ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  %transport_header.i.i.i294 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %165 = ptrtoint ptr %transport_header.i.i.i294 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %transport_header.i.i.i294, align 2
  %conv.i.i.i295 = zext i16 %166 to i32
  %add.ptr.i.i.i296 = getelementptr i8, ptr %160, i32 %conv.i.i.i295
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %167 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i28.i = zext i16 %168 to i32
  %add.ptr.i.i29.i = getelementptr i8, ptr %160, i32 %conv.i.i28.i
  %len4.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i296, i32 0, i32 2
  %169 = ptrtoint ptr %len4.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %len4.i, align 2
  %conv5.i = zext i16 %170 to i32
  %171 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %data20, align 4
  %sub.ptr.lhs.cast.i.i298 = ptrtoint ptr %add.ptr.i.i.i296 to i32
  %sub.ptr.rhs.cast.i.i299 = ptrtoint ptr %172 to i32
  %sub.ptr.sub.i.i300 = sub i32 %sub.ptr.lhs.cast.i.i298, %sub.ptr.rhs.cast.i.i299
  %len7.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %173 = ptrtoint ptr %len7.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %len7.i, align 4
  %sub.i301 = sub i32 %174, %sub.ptr.sub.i.i300
  %call8.i = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i300, i32 noundef %sub.i301, i32 noundef 0) #13
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i29.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i29.i, i32 0, i32 6
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %conv5.i, i32 noundef 17, i32 noundef %call8.i) #13
  %175 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #17, !srcloc !105
  %neg.i.i.i = xor i32 %175, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i34.i = trunc i32 %shr.i.i.i to i16
  %check.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i296, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i34.i)
  %cmp12.i = icmp eq i16 %conv.i.i34.i, 0
  %spec.select.i = select i1 %cmp12.i, i16 -1, i16 %conv.i.i34.i
  %176 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %spec.select.i, ptr %check.i, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i302, %if.end124.sw.epilog_crit_edge, %sw.bb116, %if.end81.sw.epilog_crit_edge
  %err.1 = phi i32 [ %call115, %if.end81.sw.epilog_crit_edge ], [ 1, %sw.bb116 ], [ 0, %if.end124.sw.epilog_crit_edge ], [ 0, %if.then.i302 ]
  %cmp125.not = icmp eq ptr %dsg.0, %34
  br i1 %cmp125.not, label %sw.epilog.if.end128_crit_edge, label %if.then127

sw.epilog.if.end128_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end128

if.then127:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @esp_ssg_unref(ptr noundef %x, ptr noundef nonnull %call9.i.i)
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %sw.epilog.if.end128_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool129.not = icmp eq i32 %err.1, 0
  br i1 %tobool129.not, label %land.lhs.true, label %if.end128.error_free_crit_edge

if.end128.error_free_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

land.lhs.true:                                    ; preds = %if.end128
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %177 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %encap, align 8
  %tobool130.not = icmp eq ptr %178, null
  br i1 %tobool130.not, label %land.lhs.true.error_free_crit_edge, label %land.lhs.true131

land.lhs.true.error_free_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

land.lhs.true131:                                 ; preds = %land.lhs.true
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %178, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %180)
  %cmp134 = icmp eq i16 %180, 7
  br i1 %cmp134, label %if.then136, label %land.lhs.true131.error_free_crit_edge

land.lhs.true131.error_free_crit_edge:            ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

if.then136:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @local_bh_disable() #13
  %181 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %x, align 4
  %call1.i = tail call i32 @xfrm_trans_queue_net(ptr noundef %182, ptr noundef %skb, ptr noundef nonnull @esp_output_tcp_encap_cb) #13
  tail call fastcc void @local_bh_enable() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i303 = icmp eq i32 %call1.i, 0
  %..i = select i1 %tobool.not.i303, i32 -115, i32 %call1.i
  br label %error_free

error_free:                                       ; preds = %if.then136, %land.lhs.true131.error_free_crit_edge, %land.lhs.true.error_free_crit_edge, %if.end128.error_free_crit_edge, %__skb_fill_page_desc.exit.error_free_crit_edge, %if.then44, %esp_output_set_esn.exit.error_free_crit_edge
  %err.2 = phi i32 [ %call24, %esp_output_set_esn.exit.error_free_crit_edge ], [ %err.1, %if.end128.error_free_crit_edge ], [ %..i, %if.then136 ], [ 0, %land.lhs.true131.error_free_crit_edge ], [ 0, %land.lhs.true.error_free_crit_edge ], [ %call24, %if.then44 ], [ %call69, %__skb_fill_page_desc.exit.error_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup139

cleanup139:                                       ; preds = %error_free, %if.end81.cleanup139_crit_edge, %if.end.i.cleanup139_crit_edge
  %retval.0 = phi i32 [ %err.2, %error_free ], [ %call115, %if.end81.cleanup139_crit_edge ], [ -12, %if.end.i.cleanup139_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp_output_done_esn(ptr nocapture noundef readonly %base, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tmp1.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %2 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmp1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %add.i.i = add i32 %4, 3
  %and.i.i = and i32 %add.i.i, -4
  %5 = inttoptr i32 %and.i.i to ptr
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 19
  %8 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %9 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %esphoff.i = getelementptr inbounds %struct.esp_output_extra, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %esphoff.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %esphoff.i, align 4
  %sub.ptr.sub.i.i = sub i32 -4, %sub.ptr.rhs.cast.i.i
  %add.i = add i32 %sub.ptr.sub.i.i, %13
  %sub.i = add i32 %add.i, %sub.ptr.lhs.cast.i.i
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %sub.i
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  %seq_no.i.i = getelementptr inbounds %struct.ip_esp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %seq_no.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %seq_no.i.i, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  store i32 %18, ptr %add.ptr.i.i, align 4
  tail call void @esp_output_done(ptr noundef %base, i32 noundef %err)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp_output_done(ptr nocapture noundef readonly %base, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  br i1 %tobool.i.not.i.i.i, label %entry.if.else_crit_edge, label %skb_sec_path.exit.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

skb_sec_path.exit.i:                              ; preds = %entry
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
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.if.else_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.if.else_crit_edge:            ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i = icmp eq i32 %10, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.else_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.not.i = icmp eq i32 %12, %10
  br i1 %cmp.not.i, label %xfrm_offload.exit, label %lor.lhs.false2.i.if.else_crit_edge

lor.lhs.false2.i.if.else_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

xfrm_offload.exit:                                ; preds = %lor.lhs.false2.i
  %sub.i = add i32 %10, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %xfrm_offload.exit.if.else_crit_edge, label %land.lhs.true

xfrm_offload.exit.if.else_crit_edge:              ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %xfrm_offload.exit
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %skb_sec_path.exit

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

skb_sec_path.exit:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %18 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %shl.i.i
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i, align 4
  %sub = add i32 %20, -1
  %arrayidx = getelementptr %struct.sec_path, ptr %add.ptr.i.i, i32 0, i32 2, i32 %sub
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %xfrm_offload.exit.if.else_crit_edge, %lor.lhs.false2.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge, %skb_sec_path.exit.i.if.else_crit_edge, %entry.if.else_crit_edge
  %tobool.not121 = phi i1 [ false, %land.lhs.true.if.else_crit_edge ], [ true, %xfrm_offload.exit.if.else_crit_edge ], [ true, %lor.lhs.false2.i.if.else_crit_edge ], [ true, %lor.lhs.false.i.if.else_crit_edge ], [ true, %skb_sec_path.exit.i.if.else_crit_edge ], [ true, %entry.if.else_crit_edge ]
  %retval.0.i119 = phi ptr [ %arrayidx.i, %land.lhs.true.if.else_crit_edge ], [ null, %xfrm_offload.exit.if.else_crit_edge ], [ null, %lor.lhs.false2.i.if.else_crit_edge ], [ null, %lor.lhs.false.i.if.else_crit_edge ], [ null, %skb_sec_path.exit.i.if.else_crit_edge ], [ null, %entry.if.else_crit_edge ]
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i103 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i103, label %if.else.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.else.skb_dst.exit_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.else
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i104 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i104, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !99

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.else.skb_dst.exit_crit_edge
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 8
  %and25.i = and i32 %25, -2
  %26 = inttoptr i32 %and25.i to ptr
  %xfrm = getelementptr inbounds %struct.dst_entry, ptr %26, i32 0, i32 4
  br label %if.end

if.end:                                           ; preds = %skb_dst.exit, %skb_sec_path.exit
  %tobool.not120 = phi i1 [ false, %skb_sec_path.exit ], [ %tobool.not121, %skb_dst.exit ]
  %retval.0.i118 = phi ptr [ %arrayidx.i, %skb_sec_path.exit ], [ %retval.0.i119, %skb_dst.exit ]
  %x.0.in = phi ptr [ %arrayidx, %skb_sec_path.exit ], [ %xfrm, %skb_dst.exit ]
  %27 = ptrtoint ptr %x.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %x.0 = load ptr, ptr %x.0.in, align 4
  %tmp5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %28 = ptrtoint ptr %tmp5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tmp5, align 4
  tail call fastcc void @esp_ssg_unref(ptr noundef %x.0, ptr noundef %29)
  tail call void @kfree(ptr noundef %29) #13
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %32 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i106 = zext i16 %33 to i32
  %add.ptr.i.i107 = getelementptr i8, ptr %31, i32 %conv.i.i106
  %34 = ptrtoint ptr %add.ptr.i.i107 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr.i.i107, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %35)
  %cmp.i = icmp eq i8 %35, 17
  br i1 %cmp.i, label %if.then.i, label %if.end.esp_output_encap_csum.exit_crit_edge

if.end.esp_output_encap_csum.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_output_encap_csum.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 19
  %36 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i108 = zext i16 %37 to i32
  %add.ptr.i.i.i109 = getelementptr i8, ptr %31, i32 %conv.i.i.i108
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i28.i = zext i16 %39 to i32
  %add.ptr.i.i29.i = getelementptr i8, ptr %31, i32 %conv.i.i28.i
  %len4.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i109, i32 0, i32 2
  %40 = ptrtoint ptr %len4.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %len4.i, align 2
  %conv5.i = zext i16 %41 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %42 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i109 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %len7.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %len7.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len7.i, align 4
  %sub.i110 = sub i32 %45, %sub.ptr.sub.i.i
  %call8.i = tail call i32 @skb_checksum(ptr noundef %1, i32 noundef %sub.ptr.sub.i.i, i32 noundef %sub.i110, i32 noundef 0) #13
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i29.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i29.i, i32 0, i32 6
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %conv5.i, i32 noundef 17, i32 noundef %call8.i) #13
  %46 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #17, !srcloc !105
  %neg.i.i.i = xor i32 %46, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i34.i = trunc i32 %shr.i.i.i to i16
  %check.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i109, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i34.i)
  %cmp12.i = icmp eq i16 %conv.i.i34.i, 0
  %spec.select.i = select i1 %cmp12.i, i16 -1, i16 %conv.i.i34.i
  %47 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %spec.select.i, ptr %check.i, align 2
  br label %esp_output_encap_csum.exit

esp_output_encap_csum.exit:                       ; preds = %if.then.i, %if.end.esp_output_encap_csum.exit_crit_edge
  br i1 %tobool.not120, label %esp_output_encap_csum.exit.if.else61_crit_edge, label %land.lhs.true7

esp_output_encap_csum.exit.if.else61_crit_edge:   ; preds = %esp_output_encap_csum.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else61

land.lhs.true7:                                   ; preds = %esp_output_encap_csum.exit
  %flags8 = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i118, i32 0, i32 1
  %48 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags8, align 4
  %and9 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true7.if.else61_crit_edge, label %if.then11

land.lhs.true7.if.else61_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else61

if.then11:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool12.not = icmp eq i32 %err, 0
  br i1 %tobool12.not, label %if.end57, label %do.body14

do.body14:                                        ; preds = %if.then11
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !106
  %51 = ptrtoint ptr %x.0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %x.0, align 4
  %xfrm_statistics = getelementptr inbounds %struct.net, ptr %52, i32 0, i32 30, i32 6
  %53 = ptrtoint ptr %xfrm_statistics to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xfrm_statistics, align 4
  %arrayidx28 = getelementptr [29 x i32], ptr %54, i32 0, i32 19
  %55 = ptrtoint ptr %arrayidx28 to i32
  %56 = tail call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i111 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i111 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu, align 4
  %arrayidx31 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx31, align 4
  %add = add i32 %61, %55
  %62 = inttoptr i32 %add to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %add32 = add i32 %64, 1
  store i32 %add32, ptr %62, align 4
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !107
  %and.i.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool43.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool43.not, label %if.then47, label %do.body14.do.end50_crit_edge, !prof !99

do.body14.do.end50_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end50

if.then47:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %do.body14.do.end50_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %50) #13, !srcloc !108
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #13
  br label %cleanup

if.end57:                                         ; preds = %if.then11
  %data58 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %66 = ptrtoint ptr %data58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data58, align 4
  %68 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head.i.i, align 8
  %70 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %mac_header.i.i, align 2
  %conv.i = zext i16 %71 to i32
  %add.ptr.i = getelementptr i8, ptr %69, i32 %conv.i
  %sub.ptr.lhs.cast = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call60 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %sub.ptr.sub) #13
  %72 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %74 = and i8 %73, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.i.not.i.i113 = icmp eq i8 %74, 0
  br i1 %tobool.i.not.i.i113, label %if.end57.secpath_reset.exit_crit_edge, label %if.then.i.i114

if.end57.secpath_reset.exit_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %secpath_reset.exit

if.then.i.i114:                                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__skb_ext_del(ptr noundef %1, i32 noundef 1) #13
  br label %secpath_reset.exit

secpath_reset.exit:                               ; preds = %if.then.i.i114, %if.end57.secpath_reset.exit_crit_edge
  tail call void @xfrm_dev_resume(ptr noundef %1) #13
  br label %cleanup

if.else61:                                        ; preds = %land.lhs.true7.if.else61_crit_edge, %esp_output_encap_csum.exit.if.else61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool62.not = icmp eq i32 %err, 0
  br i1 %tobool62.not, label %land.lhs.true63, label %if.else61.if.else72_crit_edge

if.else61.if.else72_crit_edge:                    ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else72

land.lhs.true63:                                  ; preds = %if.else61
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x.0, i32 0, i32 24
  %75 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %encap, align 8
  %tobool64.not = icmp eq ptr %76, null
  br i1 %tobool64.not, label %land.lhs.true63.if.else72_crit_edge, label %land.lhs.true65

land.lhs.true63.if.else72_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else72

land.lhs.true65:                                  ; preds = %land.lhs.true63
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %76, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %78)
  %cmp68 = icmp eq i16 %78, 7
  br i1 %cmp68, label %if.then70, label %land.lhs.true65.if.else72_crit_edge

land.lhs.true65.if.else72_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else72

if.then70:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @local_bh_disable() #13
  %79 = ptrtoint ptr %x.0 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %x.0, align 4
  %call1.i = tail call i32 @xfrm_trans_queue_net(ptr noundef %80, ptr noundef %1, ptr noundef nonnull @esp_output_tcp_encap_cb) #13
  tail call fastcc void @local_bh_enable() #13
  br label %cleanup

if.else72:                                        ; preds = %land.lhs.true65.if.else72_crit_edge, %land.lhs.true63.if.else72_crit_edge, %if.else61.if.else72_crit_edge
  %81 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %call73 = tail call i32 @xfrm_output_resume(ptr noundef %83, ptr noundef %1, i32 noundef %err) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else72, %if.then70, %secpath_reset.exit, %do.end50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esp_ssg_unref(ptr nocapture noundef readonly %x, ptr noundef %tmp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 1
  %4 = lshr i8 %3, 4
  %5 = and i8 %4, 8
  %6 = zext i8 %5 to i32
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %8, i32 -104
  %9 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ivsize.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %add.ptr6.i = getelementptr i8, ptr %tmp, i32 %6
  br i1 %tobool.not.i, label %entry.esp_tmp_iv.exit_crit_edge, label %cond.true.i

entry.esp_tmp_iv.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_tmp_iv.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %add.ptr6.i to i32
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 5
  %12 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %add2.i = add i32 %13, %11
  %neg.i = xor i32 %13, -1
  %and.i = and i32 %add2.i, %neg.i
  %14 = inttoptr i32 %and.i to ptr
  br label %esp_tmp_iv.exit

esp_tmp_iv.exit:                                  ; preds = %cond.true.i, %entry.esp_tmp_iv.exit_crit_edge
  %cond.i = phi ptr [ %14, %cond.true.i ], [ %add.ptr6.i, %entry.esp_tmp_iv.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %cond.i, i32 %10
  %15 = ptrtoint ptr %add.ptr.i to i32
  %add.i = add i32 %15, 127
  %and.i19 = and i32 %add.i, -128
  %16 = inttoptr i32 %and.i19 to ptr
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %src = getelementptr inbounds %struct.aead_request, ptr %16, i32 0, i32 4
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %16, i32 0, i32 5
  %20 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst, align 8
  %cmp.not = icmp eq ptr %19, %21
  br i1 %cmp.not, label %esp_tmp_iv.exit.if.end9_crit_edge, label %if.then3

esp_tmp_iv.exit.if.end9_crit_edge:                ; preds = %esp_tmp_iv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then3:                                         ; preds = %esp_tmp_iv.exit
  %call5 = tail call ptr @sg_next(ptr noundef %19) #13
  %tobool6.not22 = icmp eq ptr %call5, null
  br i1 %tobool6.not22, label %if.then3.if.end9_crit_edge, label %if.then3.for.body_crit_edge

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %if.then3.for.body_crit_edge
  %sg.023 = phi ptr [ %call8, %put_page.exit.for.body_crit_edge ], [ %call5, %if.then3.for.body_crit_edge ]
  %22 = ptrtoint ptr %sg.023 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sg.023, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !98

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #13, !srcloc !109
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i20 = and i32 %23, -4
  %24 = inttoptr i32 %and.i20 to ptr
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i21 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21)
  %tobool.not.i.i = icmp eq i32 %and.i.i21, 0
  br i1 %tobool.not.i.i, label %sg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !98

sg_page.exit._compound_head.exit.i_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %27, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %24, %sg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !99

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !110
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !112
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@esp_ssg_unref, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !102

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %.pre-phi) #13
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %call8 = tail call ptr @sg_next(ptr noundef nonnull %sg.023) #13
  %tobool6.not = icmp eq ptr %call8, null
  br i1 %tobool6.not, label %put_page.exit.if.end9_crit_edge, label %put_page.exit.for.body_crit_edge

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

put_page.exit.if.end9_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end9:                                          ; preds = %put_page.exit.if.end9_crit_edge, %if.then3.if.end9_crit_edge, %esp_tmp_iv.exit.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esp6_input_done2(ptr noundef %skb, i32 noundef %err) #0 align 64 {
entry:
  %nexthdr = alloca i8, align 1
  %frag_off = alloca i16, align 2
  %ipaddr = alloca %union.xfrm_address_t, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %xfrm_input_state.exit.thread, label %skb_sec_path.exit.i

xfrm_input_state.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 0)
  %3 = load i32, ptr null, align 2147483648
  %sub.i197 = add i32 %3, -1
  %arrayidx.i198 = getelementptr %struct.sec_path, ptr null, i32 0, i32 2, i32 %sub.i197
  %4 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i198, align 4
  br label %xfrm_offload.exit

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %6 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %9 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %shl.i.i.i
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 4
  %sub.i = add i32 %11, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 2, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.xfrm_offload.exit_crit_edge:  ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.xfrm_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.not.i = icmp eq i32 %17, %15
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.xfrm_offload.exit_crit_edge

lor.lhs.false2.i.xfrm_offload.exit_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i171 = add i32 %15, -1
  %arrayidx.i172 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i171
  br label %xfrm_offload.exit

xfrm_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge, %lor.lhs.false.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, %xfrm_input_state.exit.thread
  %18 = phi ptr [ %13, %if.end.i ], [ %13, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ %13, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ %13, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ %5, %xfrm_input_state.exit.thread ]
  %retval.0.i = phi ptr [ %arrayidx.i172, %if.end.i ], [ null, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ null, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ null, %xfrm_input_state.exit.thread ]
  %data = getelementptr inbounds %struct.xfrm_state, ptr %18, i32 0, i32 51
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %20, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %22, i32 -104
  %23 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ivsize.i.i, align 8
  %add = add i32 %24, 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %25 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %26 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %28 to i32
  %sub.i173 = sub nsw i32 %conv.i, %conv1.i
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %xfrm_offload.exit.if.then_crit_edge, label %lor.lhs.false

xfrm_offload.exit.if.then_crit_edge:              ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %xfrm_offload.exit
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 1
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %xfrm_offload.exit.if.then_crit_edge
  %tmp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %31 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tmp, align 4
  tail call void @kfree(ptr noundef %32) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool5.not = icmp eq i32 %err, 0
  br i1 %tobool5.not, label %if.end9, label %if.end.cleanup120_crit_edge, !prof !98

if.end.cleanup120_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

if.end9:                                          ; preds = %if.end
  %call10 = tail call fastcc i32 @esp_remove_trailer(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup120_crit_edge, label %if.end18, !prof !99

if.end9.cleanup120_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

if.end18:                                         ; preds = %if.end9
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %18, i32 0, i32 24
  %33 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %encap, align 8
  %tobool19.not = icmp eq ptr %34, null
  br i1 %tobool19.not, label %if.end18.if.end105_crit_edge, label %if.then20

if.end18.if.end105_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then20:                                        ; preds = %if.end18
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i, align 8
  %37 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %38 to i32
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i = sub i32 40, %sub.ptr.rhs.cast.i
  %add23 = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #13
  %nexthdr26 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %nexthdr26 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nexthdr26, align 2
  %43 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %nexthdr, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #13
  %44 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %frag_off, align 2, !annotation !95
  %call27 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %add23, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %cmp28 = icmp eq i32 %call27, -1
  br i1 %cmp28, label %if.then20.cleanup.thread_crit_edge, label %if.end30

if.then20.cleanup.thread_crit_edge:               ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end30:                                         ; preds = %if.then20
  %add34 = add i32 %call27, %sub.i173
  %45 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %encap, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %46, align 4
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %48, label %land.end [
    i16 7, label %if.end30.sw.epilog_crit_edge
    i16 2, label %if.end30.sw.epilog_crit_edge203
    i16 1, label %if.end30.sw.epilog_crit_edge204
  ]

if.end30.sw.epilog_crit_edge204:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end30.sw.epilog_crit_edge203:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.end:                                         ; preds = %if.end30
  %.b162 = load i1, ptr @esp6_input_done2.__already_done, align 1
  br i1 %.b162, label %land.end.cleanup.thread_crit_edge, label %if.then50, !prof !98

land.end.cleanup.thread_crit_edge:                ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.then50:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @esp6_input_done2.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 833, i32 noundef 9, ptr noundef null) #13
  br label %cleanup.thread

sw.epilog:                                        ; preds = %if.end30.sw.epilog_crit_edge, %if.end30.sw.epilog_crit_edge203, %if.end30.sw.epilog_crit_edge204
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %51, i32 %call27
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %52)
  %source.0 = load i16, ptr %add.ptr, align 2
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %saddr81 = getelementptr inbounds %struct.xfrm_state, ptr %18, i32 0, i32 14, i32 8
  %53 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %saddr, align 4
  %55 = ptrtoint ptr %saddr81 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %saddr81, align 4
  %xor.i = xor i32 %56, %54
  %arrayidx4.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.xfrm_state, ptr %18, i32 0, i32 14, i32 8, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %60, %58
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %61 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.xfrm_state, ptr %18, i32 0, i32 14, i32 8, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %64, %62
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %65 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr %struct.xfrm_state, ptr %18, i32 0, i32 14, i32 8, i32 0, i32 3
  %67 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %68, %66
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %lor.lhs.false83, label %sw.epilog.if.then88_crit_edge

sw.epilog.if.then88_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then88

lor.lhs.false83:                                  ; preds = %sw.epilog
  %encap_sport = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %34, i32 0, i32 1
  %69 = ptrtoint ptr %encap_sport to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %encap_sport, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %source.0, i16 %70)
  %cmp86.not = icmp eq i16 %source.0, %70
  br i1 %cmp86.not, label %lor.lhs.false83.if.end91_crit_edge, label %lor.lhs.false83.if.then88_crit_edge

lor.lhs.false83.if.then88_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then88

lor.lhs.false83.if.end91_crit_edge:               ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then88:                                        ; preds = %lor.lhs.false83.if.then88_crit_edge, %sw.epilog.if.then88_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ipaddr) #13
  %71 = call ptr @memcpy(ptr %ipaddr, ptr %saddr, i32 16)
  %call90 = call i32 @km_new_mapping(ptr noundef %18, ptr noundef nonnull %ipaddr, i16 noundef zeroext %source.0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ipaddr) #13
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %lor.lhs.false83.if.end91_crit_edge
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %18, i32 0, i32 14, i32 1
  %72 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp94 = icmp eq i8 %73, 0
  br i1 %cmp94, label %if.then96, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %74 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then50, %land.end.cleanup.thread_crit_edge, %if.then20.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #13
  br label %cleanup120

cleanup:                                          ; preds = %if.then96, %if.end91.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #13
  br label %if.end105

if.end105:                                        ; preds = %cleanup, %if.end18.if.end105_crit_edge
  %hdr_len.1 = phi i32 [ %add34, %cleanup ], [ %sub.i173, %if.end18.if.end105_crit_edge ]
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %75 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %77 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %trunc.i = trunc i16 %bf.lshr.i to i2
  %78 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.33)
  switch i2 %trunc.i, label %if.end105.skb_postpull_rcsum.exit_crit_edge [
    i2 -2, label %if.then.i
    i2 -1, label %land.lhs.true.i
  ]

if.end105.skb_postpull_rcsum.exit_crit_edge:      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_postpull_rcsum.exit

if.then.i:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %transport_header.i, align 2
  %conv.i181 = zext i16 %80 to i32
  %81 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %network_header.i, align 4
  %conv.i179 = zext i16 %82 to i32
  %sub.i184 = sub nsw i32 %conv.i181, %conv.i179
  %add.ptr.i = getelementptr i8, ptr %76, i32 %conv.i179
  %83 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %sub.i.i = sub i32 0, %85
  %call2.i = call i32 @csum_partial(ptr noundef %add.ptr.i, i32 noundef %sub.i184, i32 noundef %sub.i.i) #13
  %sub.i25.i = sub i32 0, %call2.i
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub.i25.i, ptr %83, align 8
  br label %skb_postpull_rcsum.exit

land.lhs.true.i:                                  ; preds = %if.end105
  %87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %87, align 8
  %conv.i.i185 = zext i16 %89 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %90 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %76 to i32
  %sub.ptr.sub.i.neg.i.i = add i32 %conv.i.i185, %sub.ptr.rhs.cast.i.i.i
  %sub.i26.i = sub i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.lhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26.i)
  %cmp13.i = icmp slt i32 %sub.i26.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge

land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_postpull_rcsum.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear18.i = and i16 %bf.load.i, -1537
  %92 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %bf.clear18.i, ptr %ip_summed.i, align 8
  br label %skb_postpull_rcsum.exit

skb_postpull_rcsum.exit:                          ; preds = %if.then15.i, %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge, %if.then.i, %if.end105.skb_postpull_rcsum.exit_crit_edge
  %call108 = call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef %add) #13
  %mode110 = getelementptr inbounds %struct.xfrm_state, ptr %18, i32 0, i32 14, i32 1
  %93 = ptrtoint ptr %mode110 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mode110, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %94)
  %cmp112 = icmp eq i8 %94, 1
  %data.i186 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %95 = ptrtoint ptr %data.i186 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i186, align 4
  %97 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i188 = ptrtoint ptr %96 to i32
  %sub.ptr.rhs.cast.i189 = ptrtoint ptr %98 to i32
  %sub.ptr.sub.i190 = sub i32 %sub.ptr.lhs.cast.i188, %sub.ptr.rhs.cast.i189
  %conv.i191 = trunc i32 %sub.ptr.sub.i190 to i16
  %99 = trunc i32 %hdr_len.1 to i16
  %conv1.i195 = select i1 %cmp112, i16 0, i16 %99
  %storemerge = sub i16 %conv.i191, %conv1.i195
  %100 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %storemerge, ptr %transport_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %call10)
  %cmp116 = icmp eq i32 %call10, 59
  %spec.store.select = select i1 %cmp116, i32 -22, i32 %call10
  br label %cleanup120

cleanup120:                                       ; preds = %skb_postpull_rcsum.exit, %cleanup.thread, %if.end9.cleanup120_crit_edge, %if.end.cleanup120_crit_edge
  %err.addr.2 = phi i32 [ %err, %if.end.cleanup120_crit_edge ], [ %call10, %if.end9.cleanup120_crit_edge ], [ %spec.store.select, %skb_postpull_rcsum.exit ], [ -22, %cleanup.thread ]
  ret i32 %err.addr.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esp_remove_trailer(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  %nexthdr = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %xfrm_input_state.exit.thread, label %skb_sec_path.exit.i

xfrm_input_state.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 0)
  %3 = load i32, ptr null, align 2147483648
  %sub.i100 = add i32 %3, -1
  %arrayidx.i101 = getelementptr %struct.sec_path, ptr null, i32 0, i32 2, i32 %sub.i100
  %4 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i101, align 4
  br label %xfrm_offload.exit

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %6 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i87 = zext i8 %9 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i87, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %shl.i.i.i
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 4
  %sub.i = add i32 %11, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 2, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.xfrm_offload.exit_crit_edge:  ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.xfrm_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.not.i = icmp eq i32 %17, %15
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.xfrm_offload.exit_crit_edge

lor.lhs.false2.i.xfrm_offload.exit_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i96 = add i32 %15, -1
  %arrayidx.i97 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i96
  br label %xfrm_offload.exit

xfrm_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge, %lor.lhs.false.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, %xfrm_input_state.exit.thread
  %18 = phi ptr [ %13, %if.end.i ], [ %13, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ %13, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ %13, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ %5, %xfrm_input_state.exit.thread ]
  %retval.0.i98 = phi ptr [ %arrayidx.i97, %if.end.i ], [ null, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ null, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ null, %xfrm_input_state.exit.thread ]
  %data = getelementptr inbounds %struct.xfrm_state, ptr %18, i32 0, i32 51
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nexthdr) #13
  %21 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %nexthdr, align 1, !annotation !95
  %22 = getelementptr inbounds [2 x i8], ptr %nexthdr, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %22, align 1, !annotation !95
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %20, align 128
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %20, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %27, i32 -104
  %28 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ivsize.i.i, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %add.neg = sub i32 -8, %29
  %sub = add i32 %add.neg, %31
  %tobool.not = icmp eq ptr %retval.0.i98, null
  br i1 %tobool.not, label %xfrm_offload.exit.if.end_crit_edge, label %land.lhs.true

xfrm_offload.exit.if.end_crit_edge:               ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %xfrm_offload.exit
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i98, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %proto = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i98, i32 0, i32 3
  %34 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %proto, align 4
  %conv = zext i8 %35 to i32
  br label %out

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %xfrm_offload.exit.if.end_crit_edge
  %sub6 = sub i32 -2, %25
  %sub7 = add i32 %sub6, %31
  %call8 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %sub7, ptr noundef nonnull %nexthdr, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end19, label %do.body13, !prof !98

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/esp6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 763, 0\0A.popsection", ""() #13, !srcloc !114
  unreachable

do.end19:                                         ; preds = %if.end
  %36 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nexthdr, align 1
  %conv20 = zext i8 %37 to i32
  %add21 = add nuw nsw i32 %conv20, 2
  %add22 = add i32 %add21, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add22, i32 %sub)
  %cmp.not = icmp slt i32 %add22, %sub
  br i1 %cmp.not, label %if.end43, label %do.body25

do.body25:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esp_remove_trailer.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esp_remove_trailer, %land.lhs.true34)) #13
          to label %out [label %land.lhs.true34], !srcloc !102

land.lhs.true34:                                  ; preds = %do.body25
  %call35 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true34.out_crit_edge, label %if.then37

land.lhs.true34.out_crit_edge:                    ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then37:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  %sub39 = sub i32 %sub, %25
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @esp_remove_trailer.descriptor, ptr noundef nonnull @.str.17, i32 noundef %add21, i32 noundef %sub39) #13
  br label %out

if.end43:                                         ; preds = %do.end19
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %38 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load = load i16, ptr %ip_summed, align 8
  %39 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %39)
  %cmp47 = icmp eq i16 %39, 1024
  br i1 %cmp47, label %if.then49, label %if.end43.if.end56_crit_edge

if.end43.if.end56_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %sub51 = sub i32 %41, %add22
  %call52 = call i32 @skb_checksum(ptr noundef %skb, i32 noundef %sub51, i32 noundef %add22, i32 noundef 0) #13
  %42 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %sub54 = sub i32 %46, %add22
  %neg.i = xor i32 %call52, -1
  %and.i.i.i = and i32 %sub54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %neg.i, i32 %neg.i, i32 24) #13
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %neg.i, i32 %or.i.i.i.i
  %add.i.i.i = add i32 %retval.0.i.i.i, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %retval.0.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %retval.0.i.i.i
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %conv.i.i.i
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add1.i.i.i, ptr %42, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.end43.if.end56_crit_edge
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %sub58 = sub i32 %49, %add22
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %sub58)
  %cmp.i = icmp ugt i32 %49, %sub58
  br i1 %cmp.i, label %cond.true.i, label %if.end56.pskb_trim.exit_crit_edge

if.end56.pskb_trim.exit_crit_edge:                ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %pskb_trim.exit

cond.true.i:                                      ; preds = %if.end56
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %50 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i, label %__skb_trim.exit.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %sub58) #13
  br label %pskb_trim.exit

__skb_trim.exit.i.i:                              ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub58, ptr %len, align 4
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %54, i32 %sub58
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %55 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %pskb_trim.exit

pskb_trim.exit:                                   ; preds = %__skb_trim.exit.i.i, %if.then.i.i, %if.end56.pskb_trim.exit_crit_edge
  %56 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %22, align 1
  %conv61 = zext i8 %57 to i32
  br label %out

out:                                              ; preds = %pskb_trim.exit, %if.then37, %land.lhs.true34.out_crit_edge, %do.body25, %if.then
  %ret.0 = phi i32 [ %conv, %if.then ], [ -22, %if.then37 ], [ -22, %land.lhs.true34.out_crit_edge ], [ %conv61, %pskb_trim.exit ], [ -22, %do.body25 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nexthdr) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @km_new_mapping(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @esp6_fini() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @esp6_protocol, i8 noundef zeroext 50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @xfrm_unregister_type(ptr noundef nonnull @esp6_type, i16 noundef zeroext 10) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_deregister(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_unregister_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @esp6_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm_register_type(ptr noundef nonnull @esp6_type, i16 noundef zeroext 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #18
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @xfrm6_protocol_register(ptr noundef nonnull @esp6_protocol, i8 noundef zeroext 50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #18
  tail call void @xfrm_unregister_type(ptr noundef nonnull @esp6_type, i16 noundef zeroext 10) #13
  br label %return

return:                                           ; preds = %do.end6, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ -11, %do.end6 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @esp6_find_tcp_sk(ptr noundef %x) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %encap1 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %0 = ptrtoint ptr %encap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encap1, align 8
  %encap_sk = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 25
  %2 = ptrtoint ptr %encap_sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %encap_sk, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b192 = load i1, ptr @esp6_find_tcp_sk.__warned, align 1
  br i1 %.b192, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @esp6_find_tcp_sk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 159, ptr noundef nonnull @.str.5) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %do.end8.if.end14_crit_edge, label %land.lhs.true11

do.end8.if.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true11:                                  ; preds = %do.end8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end14_crit_edge

land.lhs.true11.if.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true11.if.end14_crit_edge, %do.end8.if.end14_crit_edge
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %encap_sport = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %encap_sport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %encap_sport, align 2
  %encap_dport = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %encap_dport to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %encap_dport, align 4
  %dep_map = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %if.end14.do.end27_crit_edge

if.end14.do.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

land.lhs.true19:                                  ; preds = %if.end14
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true19.do.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b188191 = load i1, ptr @esp6_find_tcp_sk.__warned.6, align 1
  br i1 %.b188191, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @esp6_find_tcp_sk.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 167, ptr noundef nonnull @.str.7) #13
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true19.do.end27_crit_edge, %if.end14.do.end27_crit_edge
  br i1 %tobool10.not, label %do.end27.if.end55_crit_edge, label %land.lhs.true31

do.end27.if.end55_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

land.lhs.true31:                                  ; preds = %do.end27
  %10 = ptrtoint ptr %encap_sk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encap_sk, align 4
  %cmp32 = icmp eq ptr %3, %11
  br i1 %cmp32, label %if.then34, label %land.lhs.true31.if.end55_crit_edge

land.lhs.true31.if.end55_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then34:                                        ; preds = %land.lhs.true31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2592, i32 noundef 12) #19
  %tobool36.not = icmp eq ptr %call7.i, null
  br i1 %tobool36.not, label %if.then37, label %do.body46

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  br label %cleanup

do.body46:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %encap_sk to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %encap_sk, align 4
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %call7.i, align 8
  %rcu = getelementptr inbounds %struct.esp_tcp_sk, ptr %call7.i, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @esp_free_tcp_sk) #13
  br label %if.end55

if.end55:                                         ; preds = %do.body46, %land.lhs.true31.if.end55_crit_edge, %do.end27.if.end55_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  %15 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %x, align 4
  %id = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %saddr = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %call58 = tail call ptr @__inet6_lookup_established(ptr noundef %16, ptr noundef nonnull @tcp_hashinfo, ptr noundef %id, i16 noundef zeroext %9, ptr noundef %saddr, i16 noundef zeroext %7, i32 noundef 0, i32 noundef 0) #13
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end55.cleanup_crit_edge, label %if.end62

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  %call63 = tail call zeroext i1 @tcp_is_ulp_esp(ptr noundef nonnull %call58) #13
  br i1 %call63, label %if.end66, label %if.then64

if.then64:                                        ; preds = %if.end62
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call58, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !117
  tail call void @sk_free(ptr noundef nonnull %call58) #13
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %call.i193 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool72.not = icmp eq i32 %call.i193, 0
  br i1 %tobool72.not, label %land.lhs.true73, label %if.end66.do.end81_crit_edge

if.end66.do.end81_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end81

land.lhs.true73:                                  ; preds = %if.end66
  %call74 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.do.end81_crit_edge, label %land.lhs.true76

land.lhs.true73.do.end81_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end81

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %.b189190 = load i1, ptr @esp6_find_tcp_sk.__warned.8, align 1
  br i1 %.b189190, label %land.lhs.true76.do.end81_crit_edge, label %if.then78

land.lhs.true76.do.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end81

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @esp6_find_tcp_sk.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @.str.7) #13
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %land.lhs.true76.do.end81_crit_edge, %land.lhs.true73.do.end81_crit_edge, %if.end66.do.end81_crit_edge
  %18 = ptrtoint ptr %encap_sk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %encap_sk, align 4
  %20 = ptrtoint ptr %encap_sport to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %encap_sport, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %7)
  %cmp87.not = icmp eq i16 %21, %7
  br i1 %cmp87.not, label %lor.lhs.false, label %do.end81.if.then94_crit_edge

do.end81.if.then94_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then94

lor.lhs.false:                                    ; preds = %do.end81
  %22 = ptrtoint ptr %encap_dport to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %encap_dport, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %9)
  %cmp92.not = icmp eq i16 %23, %9
  br i1 %cmp92.not, label %if.else, label %lor.lhs.false.if.then94_crit_edge

lor.lhs.false.if.then94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then94

if.then94:                                        ; preds = %lor.lhs.false.if.then94_crit_edge, %do.end81.if.then94_crit_edge
  %skc_refcnt.i194 = getelementptr inbounds %struct.sock_common, ptr %call58, i32 0, i32 19
  %call.i.i.i.i.i.i195 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i194, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i194, i32 1, i32 3, i32 1) #13
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i194, ptr %skc_refcnt.i194, i32 1, ptr elementtype(i32) %skc_refcnt.i194) #13, !srcloc !116
  %asmresult.i.i.i.i.i.i.i196 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i196)
  %cmp.i.i.i.i197 = icmp eq i32 %asmresult.i.i.i.i.i.i.i196, 1
  br i1 %cmp.i.i.i.i197, label %if.then.i201, label %if.end5.i.i.i.i199

if.end5.i.i.i.i199:                               ; preds = %if.then94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i196)
  %.not.i.i.i.i198 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i196, 0
  br i1 %.not.i.i.i.i198, label %if.end5.i.i.i.i199.sock_put.exit202_crit_edge, label %if.then10.i.i.i.i200, !prof !98

if.end5.i.i.i.i199.sock_put.exit202_crit_edge:    ; preds = %if.end5.i.i.i.i199
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_put.exit202

if.then10.i.i.i.i200:                             ; preds = %if.end5.i.i.i.i199
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i194, i32 noundef 3) #13
  br label %sock_put.exit202

if.then.i201:                                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !117
  tail call void @sk_free(ptr noundef nonnull %call58) #13
  br label %sock_put.exit202

sock_put.exit202:                                 ; preds = %if.then.i201, %if.then10.i.i.i.i200, %if.end5.i.i.i.i199.sock_put.exit202_crit_edge
  %tobool95.not = icmp eq ptr %19, null
  %spec.select = select i1 %tobool95.not, ptr inttoptr (i32 -78 to ptr), ptr %19
  br label %if.end143

if.else:                                          ; preds = %lor.lhs.false
  %cmp97 = icmp eq ptr %call58, %19
  br i1 %cmp97, label %if.then99, label %do.body101

if.then99:                                        ; preds = %if.else
  %skc_refcnt.i203 = getelementptr inbounds %struct.sock_common, ptr %call58, i32 0, i32 19
  %call.i.i.i.i.i.i204 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i203, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i203, i32 1, i32 3, i32 1) #13
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i203, ptr %skc_refcnt.i203, i32 1, ptr elementtype(i32) %skc_refcnt.i203) #13, !srcloc !116
  %asmresult.i.i.i.i.i.i.i205 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i205)
  %cmp.i.i.i.i206 = icmp eq i32 %asmresult.i.i.i.i.i.i.i205, 1
  br i1 %cmp.i.i.i.i206, label %if.then.i210, label %if.end5.i.i.i.i208

if.end5.i.i.i.i208:                               ; preds = %if.then99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i205)
  %.not.i.i.i.i207 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i205, 0
  br i1 %.not.i.i.i.i207, label %if.end5.i.i.i.i208.if.end143_crit_edge, label %if.then10.i.i.i.i209, !prof !98

if.end5.i.i.i.i208.if.end143_crit_edge:           ; preds = %if.end5.i.i.i.i208
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

if.then10.i.i.i.i209:                             ; preds = %if.end5.i.i.i.i208
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i203, i32 noundef 3) #13
  br label %if.end143

if.then.i210:                                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !117
  tail call void @sk_free(ptr noundef nonnull %call58) #13
  br label %if.end143

do.body101:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !118
  %26 = ptrtoint ptr %encap_sk to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call58, ptr %encap_sk, align 4
  br label %if.end143

if.end143:                                        ; preds = %do.body101, %if.then.i210, %if.then10.i.i.i.i209, %if.end5.i.i.i.i208.if.end143_crit_edge, %sock_put.exit202
  %sk.0 = phi ptr [ %call58, %do.body101 ], [ %call58, %if.end5.i.i.i.i208.if.end143_crit_edge ], [ %call58, %if.then10.i.i.i.i209 ], [ %call58, %if.then.i210 ], [ %spec.select, %sock_put.exit202 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then37, %land.lhs.true11.cleanup_crit_edge
  %retval.0 = phi ptr [ %sk.0, %if.end143 ], [ inttoptr (i32 -12 to ptr), %if.then37 ], [ %3, %land.lhs.true11.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end55.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp_free_tcp_sk(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #13
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !117
  tail call void @sk_free(ptr noundef %1) #13
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet6_lookup_established(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_is_ulp_esp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_dev_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_output_resume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_del(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_trans_queue_net(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_output_tcp_encap_cb(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !99

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %xfrm = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfrm, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !96
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %skb_dst.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

skb_dst.exit.rcu_read_lock.exit.i_crit_edge:      ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %skb_dst.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %skb_dst.exit.rcu_read_lock.exit.i_crit_edge
  %call.i3 = tail call fastcc ptr @esp6_find_tcp_sk(ptr noundef %7) #13
  %cmp.i.i.not.i = icmp ugt ptr %call.i3, inttoptr (i32 -4096 to ptr)
  %12 = ptrtoint ptr %call.i3 to i32
  br i1 %cmp.i.i.not.i, label %rcu_read_lock.exit.i.out.i_crit_edge, label %if.end.i

rcu_read_lock.exit.i.out.i_crit_edge:             ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end.i:                                         ; preds = %rcu_read_lock.exit.i
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %call.i3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock.i) #13
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %call.i3, i32 0, i32 4, i32 3
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %if.end.i.sock_owned_by_user.exit.i_crit_edge

if.end.i.sock_owned_by_user.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %if.end.i
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %call.i3, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.rhs.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit.i

land.rhs.i.i.i:                                   ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %land.rhs3.i.i.i

land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit.i

land.rhs3.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b40.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %if.then.i.i.i, !prof !98

land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1750, i32 noundef 9, ptr noundef null) #13
  br label %sock_owned_by_user.exit.i

sock_owned_by_user.exit.i:                        ; preds = %if.then.i.i.i, %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge, %if.end.i.sock_owned_by_user.exit.i_crit_edge
  %owned.i.i = getelementptr inbounds %struct.sock, ptr %call.i3, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %owned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = tail call i32 @espintcp_queue_out(ptr noundef %call.i3, ptr noundef %skb) #13
  br label %if.end6.i

if.else.i:                                        ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i = tail call i32 @espintcp_push_skb(ptr noundef %call.i3, ptr noundef %skb) #13
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then3.i
  %err.0.i = phi i32 [ %call4.i, %if.then3.i ], [ %call5.i, %if.else.i ]
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #13
  br label %out.i

out.i:                                            ; preds = %if.end6.i, %rcu_read_lock.exit.i.out.i_crit_edge
  %err.1.i = phi i32 [ %12, %rcu_read_lock.exit.i.out.i_crit_edge ], [ %err.0.i, %if.end6.i ]
  %call.i16.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i16.i, label %out.i.esp_output_tcp_finish.exit_crit_edge, label %land.lhs.true.i19.i

out.i.esp_output_tcp_finish.exit_crit_edge:       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_output_tcp_finish.exit

land.lhs.true.i19.i:                              ; preds = %out.i
  %call1.i17.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool.not.i18.i, label %land.lhs.true.i19.i.esp_output_tcp_finish.exit_crit_edge, label %land.lhs.true2.i21.i

land.lhs.true.i19.i.esp_output_tcp_finish.exit_crit_edge: ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_output_tcp_finish.exit

land.lhs.true2.i21.i:                             ; preds = %land.lhs.true.i19.i
  %.b4.i20.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20.i, label %land.lhs.true2.i21.i.esp_output_tcp_finish.exit_crit_edge, label %if.then.i22.i

land.lhs.true2.i21.i.esp_output_tcp_finish.exit_crit_edge: ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_output_tcp_finish.exit

if.then.i22.i:                                    ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.9) #13
  br label %esp_output_tcp_finish.exit

esp_output_tcp_finish.exit:                       ; preds = %if.then.i22.i, %land.lhs.true2.i21.i.esp_output_tcp_finish.exit_crit_edge, %land.lhs.true.i19.i.esp_output_tcp_finish.exit_crit_edge, %out.i.esp_output_tcp_finish.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %16 = tail call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i.i.i23.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i23.i to ptr
  %preempt_count.i.i.i.i24.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i24.i, align 4
  %sub.i.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i24.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret i32 %err.1.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @espintcp_queue_out(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @espintcp_push_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_rcv(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @esp6_rcv_cb(ptr nocapture noundef readnone %skb, i32 noundef %err) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp6_err(ptr noundef %skb, ptr nocapture noundef readnone %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.23, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %5 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %type, label %entry.cleanup_crit_edge [
    i8 2, label %entry.if.end_crit_edge
    i8 -119, label %entry.if.end_crit_edge39
  ]

entry.if.end_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  %call6 = tail call ptr @xfrm_state_lookup(ptr noundef %4, i32 noundef %10, ptr noundef %daddr, i32 noundef %12, i8 noundef zeroext 50, i16 noundef zeroext 10) #13
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %type)
  %cmp10 = icmp eq i8 %type, -119
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
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
  %call.i = tail call i32 @make_kuid(ptr noundef %18, i32 noundef 0) #13
  %.fca.0.insert23 = insertvalue [1 x i32] poison, i32 %call.i, 0
  tail call void @ip6_redirect(ptr noundef %skb, ptr noundef %4, i32 noundef %16, i32 noundef 0, [1 x i32] %.fca.0.insert23) #13
  br label %if.end19

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %user_ns.i37 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %19 = ptrtoint ptr %user_ns.i37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %user_ns.i37, align 4
  %call.i38 = tail call i32 @make_kuid(ptr noundef %20, i32 noundef 0) #13
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call.i38, 0
  tail call void @ip6_update_pmtu(ptr noundef %skb, ptr noundef %4, i32 noundef %info, i32 noundef 0, i32 noundef 0, [1 x i32] %.fca.0.insert) #13
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then12
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call6, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !117
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call6, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp6_init_state(ptr nocapture noundef %x) #0 align 64 {
entry:
  %authenc_name.i = alloca [128 x i8], align 1
  %aead_name.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %data, align 8
  %aead1 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 19
  %1 = ptrtoint ptr %aead1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aead1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %aead_name.i) #13
  %3 = call ptr @memset(ptr %aead_name.i, i32 255, i32 128)
  %geniv.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 20
  %4 = ptrtoint ptr %geniv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %geniv.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %aead_name.i, i32 noundef 128, ptr noundef nonnull @.str.18, ptr noundef %5, ptr noundef nonnull %2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 127
  br i1 %cmp.i, label %if.then.esp_init_aead.exit_crit_edge, label %if.end.i

if.then.esp_init_aead.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_init_aead.exit

if.end.i:                                         ; preds = %if.then
  %call4.i = call ptr @crypto_alloc_aead(ptr noundef nonnull %aead_name.i, i32 noundef 0, i32 noundef 0) #13
  %6 = ptrtoint ptr %call4.i to i32
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.esp_init_aead.exit_crit_edge, label %if.end8.i

if.end.i.esp_init_aead.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_init_aead.exit

if.end8.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4.i, ptr %data, align 8
  %8 = ptrtoint ptr %aead1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aead1, align 4
  %alg_key.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %9, i32 0, i32 3
  %alg_key_len.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %alg_key_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alg_key_len.i, align 4
  %add.i = add i32 %11, 7
  %div31.i = lshr i32 %add.i, 3
  %call12.i = call i32 @crypto_aead_setkey(ptr noundef %call4.i, ptr noundef %alg_key.i, i32 noundef %div31.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.end8.i.esp_init_aead.exit_crit_edge

if.end8.i.esp_init_aead.exit_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_init_aead.exit

if.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %aead1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aead1, align 4
  %alg_icv_len.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %alg_icv_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alg_icv_len.i, align 4
  %div1632.i = lshr i32 %15, 3
  %call17.i = call i32 @crypto_aead_setauthsize(ptr noundef %call4.i, i32 noundef %div1632.i) #13
  br label %esp_init_aead.exit

esp_init_aead.exit:                               ; preds = %if.end14.i, %if.end8.i.esp_init_aead.exit_crit_edge, %if.end.i.esp_init_aead.exit_crit_edge, %if.then.esp_init_aead.exit_crit_edge
  %err.0.i = phi i32 [ -36, %if.then.esp_init_aead.exit_crit_edge ], [ %6, %if.end.i.esp_init_aead.exit_crit_edge ], [ %call12.i, %if.end8.i.esp_init_aead.exit_crit_edge ], [ %call17.i, %if.end14.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %aead_name.i) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %authenc_name.i) #13
  %16 = call ptr @memset(ptr %authenc_name.i, i32 255, i32 128)
  %ealg.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 17
  %17 = ptrtoint ptr %ealg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ealg.i, align 4
  %tobool.not.i68 = icmp eq ptr %18, null
  br i1 %tobool.not.i68, label %if.else.esp_init_authenc.exit_crit_edge, label %if.end.i69

if.else.esp_init_authenc.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_init_authenc.exit

if.end.i69:                                       ; preds = %if.else
  %flags.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool1.not.i = icmp sgt i8 %20, -1
  %geniv24.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 20
  %21 = ptrtoint ptr %geniv24.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %geniv24.i, align 8
  %tobool25.not.i = icmp eq ptr %22, null
  %..str.20154.i = select i1 %tobool25.not.i, ptr @.str.20, ptr %22
  %cond32.i = select i1 %tobool25.not.i, ptr @.str.20, ptr @.str.21
  %aalg33.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 16
  %23 = ptrtoint ptr %aalg33.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aalg33.i, align 8
  %tobool34.not.i = icmp eq ptr %24, null
  %spec.select211.i = select i1 %tobool34.not.i, ptr @.str.22, ptr %24
  %cond47.i = select i1 %tobool25.not.i, ptr @.str.20, ptr @.str.23
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i69
  %call.i70 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %authenc_name.i, i32 noundef 128, ptr noundef nonnull @.str.19, ptr noundef %..str.20154.i, ptr noundef nonnull %cond32.i, ptr noundef nonnull %spec.select211.i, ptr noundef nonnull %18, ptr noundef nonnull %cond47.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call.i70)
  %cmp.i71 = icmp sgt i32 %call.i70, 127
  br i1 %cmp.i71, label %if.then2.i.esp_init_authenc.exit_crit_edge, label %if.then2.i.if.end53.i_crit_edge

if.then2.i.if.end53.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.i

if.then2.i.esp_init_authenc.exit_crit_edge:       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_init_authenc.exit

if.else.i:                                        ; preds = %if.end.i69
  %call48.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %authenc_name.i, i32 noundef 128, ptr noundef nonnull @.str.24, ptr noundef %..str.20154.i, ptr noundef nonnull %cond32.i, ptr noundef nonnull %spec.select211.i, ptr noundef nonnull %18, ptr noundef nonnull %cond47.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call48.i)
  %cmp49.i = icmp sgt i32 %call48.i, 127
  br i1 %cmp49.i, label %if.else.i.esp_init_authenc.exit_crit_edge, label %if.else.i.if.end53.i_crit_edge

if.else.i.if.end53.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.i

if.else.i.esp_init_authenc.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_init_authenc.exit

if.end53.i:                                       ; preds = %if.else.i.if.end53.i_crit_edge, %if.then2.i.if.end53.i_crit_edge
  %call55.i = call ptr @crypto_alloc_aead(ptr noundef nonnull %authenc_name.i, i32 noundef 0, i32 noundef 0) #13
  %25 = ptrtoint ptr %call55.i to i32
  %cmp.i212.i = icmp ugt ptr %call55.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212.i, label %if.end53.i.esp_init_authenc.exit_crit_edge, label %if.end59.i

if.end53.i.esp_init_authenc.exit_crit_edge:       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_init_authenc.exit

if.end59.i:                                       ; preds = %if.end53.i
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call55.i, ptr %data, align 8
  %27 = ptrtoint ptr %aalg33.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %aalg33.i, align 8
  %tobool61.not.i = icmp eq ptr %28, null
  br i1 %tobool61.not.i, label %if.end59.i.cond.end65.i_crit_edge, label %cond.true62.i

if.end59.i.cond.end65.i_crit_edge:                ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end65.i

cond.true62.i:                                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  %alg_key_len.i73 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %alg_key_len.i73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %alg_key_len.i73, align 4
  %add.i74 = add i32 %30, 7
  %div210.i = lshr i32 %add.i74, 3
  br label %cond.end65.i

cond.end65.i:                                     ; preds = %cond.true62.i, %if.end59.i.cond.end65.i_crit_edge
  %cond66.i = phi i32 [ %div210.i, %cond.true62.i ], [ 0, %if.end59.i.cond.end65.i_crit_edge ]
  %31 = ptrtoint ptr %ealg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ealg.i, align 4
  %alg_key_len68.i = getelementptr inbounds %struct.xfrm_algo, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %alg_key_len68.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %alg_key_len68.i, align 4
  %add69.i = add i32 %34, 7
  %div70204.i = lshr i32 %add69.i, 3
  %add71.i = add nuw nsw i32 %div70204.i, %cond66.i
  %add72.i = add nuw nsw i32 %add71.i, 8
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add72.i, i32 noundef 3264) #16
  %tobool74.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool74.not.i, label %cond.end65.i.esp_init_authenc.exit_crit_edge, label %if.end76.i

cond.end65.i.esp_init_authenc.exit_crit_edge:     ; preds = %cond.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_init_authenc.exit

if.end76.i:                                       ; preds = %cond.end65.i
  %rta_type.i = getelementptr inbounds %struct.rtattr, ptr %call9.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %rta_type.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %rta_type.i, align 2
  %36 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 8, ptr %call9.i.i, align 128
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 4
  %add.ptr77.i = getelementptr i8, ptr %call9.i.i, i32 8
  %37 = ptrtoint ptr %aalg33.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %aalg33.i, align 8
  %tobool79.not.i = icmp eq ptr %38, null
  br i1 %tobool79.not.i, label %if.end76.i.if.end133.i_crit_edge, label %if.then80.i

if.end76.i.if.end133.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end133.i

if.then80.i:                                      ; preds = %if.end76.i
  %alg_key.i76 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %38, i32 0, i32 3
  %alg_key_len84.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %alg_key_len84.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %alg_key_len84.i, align 4
  %add85.i = add i32 %40, 7
  %div86207.i = lshr i32 %add85.i, 3
  %41 = call ptr @memcpy(ptr %add.ptr77.i, ptr %alg_key.i76, i32 %div86207.i)
  %42 = load i32, ptr %alg_key_len84.i, align 4
  %add89.i = add i32 %42, 7
  %div90208.i = lshr i32 %add89.i, 3
  %add.ptr91.i = getelementptr i8, ptr %add.ptr77.i, i32 %div90208.i
  %call95.i = call ptr @xfrm_aalg_get_byname(ptr noundef nonnull %38, i32 noundef 0) #13
  %tobool96.not.i = icmp eq ptr %call95.i, null
  br i1 %tobool96.not.i, label %do.body101.i, label %do.end107.i, !prof !99

do.body101.i:                                     ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/esp6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1154, 0\0A.popsection", ""() #13, !srcloc !119
  unreachable

do.end107.i:                                      ; preds = %if.then80.i
  %uinfo.i = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call95.i, i32 0, i32 3
  %icv_fullbits.i = getelementptr inbounds %struct.xfrm_algo_auth_info, ptr %uinfo.i, i32 0, i32 1
  %43 = ptrtoint ptr %icv_fullbits.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %icv_fullbits.i, align 2
  %45 = lshr i16 %44, 3
  %div109.i = zext i16 %45 to i32
  %46 = ptrtoint ptr %call55.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call55.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %div109.i)
  %cmp111.not.i = icmp eq i32 %47, %div109.i
  %48 = ptrtoint ptr %aalg33.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %aalg33.i, align 8
  br i1 %cmp111.not.i, label %if.end126.i, label %do.end116.i

do.end116.i:                                      ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #15
  %call125.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %49, i32 noundef %47, i32 noundef %div109.i) #18
  br label %free_key.i

if.end126.i:                                      ; preds = %do.end107.i
  %alg_trunc_len.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %alg_trunc_len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %alg_trunc_len.i, align 4
  %div128209.i = lshr i32 %51, 3
  %call129.i = call i32 @crypto_aead_setauthsize(ptr noundef %call55.i, i32 noundef %div128209.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i)
  %tobool130.not.i = icmp eq i32 %call129.i, 0
  br i1 %tobool130.not.i, label %if.end126.i.if.end133.i_crit_edge, label %if.end126.i.free_key.i_crit_edge

if.end126.i.free_key.i_crit_edge:                 ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_key.i

if.end126.i.if.end133.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.end126.i.if.end133.i_crit_edge, %if.end76.i.if.end133.i_crit_edge
  %p.0.i = phi ptr [ %add.ptr77.i, %if.end76.i.if.end133.i_crit_edge ], [ %add.ptr91.i, %if.end126.i.if.end133.i_crit_edge ]
  %52 = ptrtoint ptr %ealg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ealg.i, align 4
  %alg_key_len135.i = getelementptr inbounds %struct.xfrm_algo, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %alg_key_len135.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %alg_key_len135.i, align 4
  %add136.i = add i32 %55, 7
  %div137205.i = lshr i32 %add136.i, 3
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div137205.i, ptr %add.ptr.i, align 4
  %alg_key139.i = getelementptr inbounds %struct.xfrm_algo, ptr %53, i32 0, i32 2
  %57 = load i32, ptr %alg_key_len135.i, align 4
  %add143.i = add i32 %57, 7
  %div144206.i = lshr i32 %add143.i, 3
  %58 = call ptr @memcpy(ptr %p.0.i, ptr %alg_key139.i, i32 %div144206.i)
  %call145.i = call i32 @crypto_aead_setkey(ptr noundef %call55.i, ptr noundef nonnull %call9.i.i, i32 noundef %add72.i) #13
  br label %free_key.i

free_key.i:                                       ; preds = %if.end133.i, %if.end126.i.free_key.i_crit_edge, %do.end116.i
  %err.1.i = phi i32 [ %call145.i, %if.end133.i ], [ %call129.i, %if.end126.i.free_key.i_crit_edge ], [ -22, %do.end116.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %esp_init_authenc.exit

esp_init_authenc.exit:                            ; preds = %free_key.i, %cond.end65.i.esp_init_authenc.exit_crit_edge, %if.end53.i.esp_init_authenc.exit_crit_edge, %if.else.i.esp_init_authenc.exit_crit_edge, %if.then2.i.esp_init_authenc.exit_crit_edge, %if.else.esp_init_authenc.exit_crit_edge
  %retval.0.i = phi i32 [ -36, %if.then2.i.esp_init_authenc.exit_crit_edge ], [ %25, %if.end53.i.esp_init_authenc.exit_crit_edge ], [ %err.1.i, %free_key.i ], [ -12, %cond.end65.i.esp_init_authenc.exit_crit_edge ], [ -36, %if.else.i.esp_init_authenc.exit_crit_edge ], [ -22, %if.else.esp_init_authenc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %authenc_name.i) #13
  br label %if.end

if.end:                                           ; preds = %esp_init_authenc.exit, %esp_init_aead.exit
  %err.0 = phi i32 [ %err.0.i, %esp_init_aead.exit ], [ %retval.0.i, %esp_init_authenc.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool3.not = icmp eq i32 %err.0, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup46_crit_edge

if.end.cleanup46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup46

if.end5:                                          ; preds = %if.end
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %60, i32 0, i32 3, i32 3
  %61 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %62, i32 -104
  %63 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ivsize.i.i, align 8
  %add = add i32 %64, 8
  %header_len = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %65 = ptrtoint ptr %header_len to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add, ptr %header_len, align 4
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %66 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mode, align 4
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %67, label %if.end5.sw.epilog_crit_edge [
    i8 4, label %sw.bb
    i8 1, label %if.end5.sw.epilog.sink.split_crit_edge
  ]

if.end5.sw.epilog.sink.split_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 6
  %69 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %70)
  %cmp.not = icmp eq i16 %70, 10
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb.sw.epilog.sink.split_crit_edge, %if.end5.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 36, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 48, %if.end5.sw.epilog.sink.split_crit_edge ]
  %add14 = add i32 %64, %.sink
  %71 = ptrtoint ptr %header_len to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add14, ptr %header_len, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %72 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %encap, align 8
  %tobool20.not = icmp eq ptr %73, null
  br i1 %tobool20.not, label %sw.epilog.if.end39_crit_edge, label %if.then21

sw.epilog.if.end39_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then21:                                        ; preds = %sw.epilog
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %73, align 4
  %76 = zext i16 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %75, label %if.then21.cleanup46_crit_edge [
    i16 2, label %if.then21.if.end39.sink.split_crit_edge
    i16 1, label %sw.bb30
    i16 7, label %sw.bb34
  ]

if.then21.if.end39.sink.split_crit_edge:          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.sink.split

if.then21.cleanup46_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup46

sw.bb30:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.sink.split

sw.bb34:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %sw.bb34, %sw.bb30, %if.then21.if.end39.sink.split_crit_edge
  %.sink82 = phi i32 [ 16, %sw.bb30 ], [ 2, %sw.bb34 ], [ 8, %if.then21.if.end39.sink.split_crit_edge ]
  %77 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %header_len, align 4
  %add29 = add i32 %78, %.sink82
  store i32 %add29, ptr %header_len, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %sw.epilog.if.end39_crit_edge
  %79 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cra_blocksize.i.i, align 4
  %add41 = add i32 %82, 3
  %and = and i32 %add41, -4
  %83 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %60, align 128
  %add42 = add i32 %84, 1
  %add44 = add i32 %add42, %and
  %trailer_len = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 10
  %85 = ptrtoint ptr %trailer_len to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add44, ptr %trailer_len, align 4
  br label %cleanup46

cleanup46:                                        ; preds = %if.end39, %if.then21.cleanup46_crit_edge, %if.end.cleanup46_crit_edge
  %err.3 = phi i32 [ %err.0, %if.end.cleanup46_crit_edge ], [ 0, %if.end39 ], [ -22, %if.then21.cleanup46_crit_edge ]
  ret i32 %err.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp6_destroy(ptr nocapture noundef readonly %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp6_input(ptr nocapture noundef readonly %x, ptr noundef %skb) #0 align 64 {
entry:
  %trailer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trailer) #13
  %2 = ptrtoint ptr %trailer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %trailer, align 4, !annotation !95
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %4, i32 -104
  %5 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ivsize.i.i, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %sub = add i32 %8, -8
  %add = add i32 %6, 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.pskb_may_pull.exit_crit_edge, !prof !99

entry.pskb_may_pull.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pskb_may_pull.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp3.i = icmp ult i32 %8, %add
  br i1 %cmp3.i, label %if.end.i.out_crit_edge, label %if.end11.i, !prof !99

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #13
  %cmp14.i = icmp eq ptr %call13.i, null
  br label %pskb_may_pull.exit

pskb_may_pull.exit:                               ; preds = %if.end11.i, %entry.pskb_may_pull.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp14.i, %if.end11.i ], [ false, %entry.pskb_may_pull.exit_crit_edge ]
  %sub1 = sub i32 %sub, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub1)
  %cmp = icmp slt i32 %sub1, 1
  %or.cond = select i1 %retval.0.i, i1 true, i1 %cmp
  br i1 %or.cond, label %pskb_may_pull.exit.out_crit_edge, label %if.end4

pskb_may_pull.exit.out_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end4:                                          ; preds = %pskb_may_pull.exit
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not = icmp sgt i8 %12, -1
  %spec.select = select i1 %tobool.not, i32 8, i32 12
  %13 = lshr i8 %12, 5
  %14 = and i8 %13, 4
  %15 = zext i8 %14 to i32
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %16 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end4.if.then11_crit_edge, label %skb_cloned.exit

if.end4.if.then11_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

skb_cloned.exit:                                  ; preds = %if.end4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %17 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #13
  %19 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %20, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.then11_crit_edge, label %skb_cloned.exit.if.end20_crit_edge

skb_cloned.exit.if.end20_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

skb_cloned.exit.if.then11_crit_edge:              ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

if.then11:                                        ; preds = %skb_cloned.exit.if.then11_crit_edge, %if.end4.if.then11_crit_edge
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not = icmp eq i32 %22, 0
  br i1 %tobool.i.not, label %if.then11.skip_cow_crit_edge, label %if.else

if.then11.skip_cow_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip_cow

if.else:                                          ; preds = %if.then11
  %end.i.i114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %23 = ptrtoint ptr %end.i.i114 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i114, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %frag_list.i, align 8
  %cmp.i115.not = icmp eq ptr %26, null
  br i1 %cmp.i115.not, label %if.then15, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nr_frags, align 2
  %conv17 = zext i8 %28 to i32
  %inc = add nuw nsw i32 %conv17, 1
  br label %skip_cow

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %skb_cloned.exit.if.end20_crit_edge
  %call21 = call i32 @skb_cow_data(ptr noundef %skb, i32 noundef 0, ptr noundef nonnull %trailer) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.out_crit_edge, label %if.end20.skip_cow_crit_edge

if.end20.skip_cow_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip_cow

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

skip_cow:                                         ; preds = %if.end20.skip_cow_crit_edge, %if.then15, %if.then11.skip_cow_crit_edge
  %nfrags.0 = phi i32 [ %call21, %if.end20.skip_cow_crit_edge ], [ %inc, %if.then15 ], [ 1, %if.then11.skip_cow_crit_edge ]
  %29 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %30, i32 -104
  %31 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ivsize.i.i.i, align 8
  %add.i = add i32 %32, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i116 = icmp eq i32 %add.i, 0
  br i1 %tobool.not.i116, label %skip_cow.if.end.i118_crit_edge, label %if.then.i

skip_cow.if.end.i118_crit_edge:                   ; preds = %skip_cow
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i118

if.then.i:                                        ; preds = %skip_cow
  call void @__sanitizer_cov_trace_pc() #15
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %30, i32 0, i32 5
  %33 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %and.i117 = and i32 %34, -128
  %add3.i = add i32 %add.i, 127
  %add6.i = add i32 %add3.i, %and.i117
  %and10.i = and i32 %add6.i, -128
  %phi.bo.i = add i32 %and10.i, 131
  br label %if.end.i118

if.end.i118:                                      ; preds = %if.then.i, %skip_cow.if.end.i118_crit_edge
  %len.0.i = phi i32 [ %phi.bo.i, %if.then.i ], [ 131, %skip_cow.if.end.i118_crit_edge ]
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reqsize.i.i, align 4
  %add14.i = add i32 %36, %len.0.i
  %and15.i = and i32 %add14.i, -4
  %mul.i = mul i32 %nfrags.0, 20
  %add16.i = add i32 %and15.i, %mul.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add16.i, i32 noundef 2592) #16
  %tobool27.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool27.not, label %if.end.i118.out_crit_edge, label %if.end29

if.end.i118.out_crit_edge:                        ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end29:                                         ; preds = %if.end.i118
  %tmp30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %37 = ptrtoint ptr %tmp30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i.i, ptr %tmp30, align 4
  %38 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i.i122 = getelementptr i8, ptr %39, i32 -104
  %40 = ptrtoint ptr %ivsize.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ivsize.i.i.i122, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i123 = icmp eq i32 %41, 0
  %add.ptr6.i = getelementptr i8, ptr %call9.i.i, i32 %15
  br i1 %tobool.not.i123, label %if.end29.esp_tmp_iv.exit_crit_edge, label %cond.true.i

if.end29.esp_tmp_iv.exit_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_tmp_iv.exit

cond.true.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %add.ptr6.i to i32
  %cra_alignmask.i.i.i124 = getelementptr inbounds %struct.crypto_alg, ptr %39, i32 0, i32 5
  %43 = ptrtoint ptr %cra_alignmask.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cra_alignmask.i.i.i124, align 4
  %add2.i = add i32 %44, %42
  %neg.i = xor i32 %44, -1
  %and.i125 = and i32 %add2.i, %neg.i
  %45 = inttoptr i32 %and.i125 to ptr
  br label %esp_tmp_iv.exit

esp_tmp_iv.exit:                                  ; preds = %cond.true.i, %if.end29.esp_tmp_iv.exit_crit_edge
  %cond.i = phi ptr [ %45, %cond.true.i ], [ %add.ptr6.i, %if.end29.esp_tmp_iv.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %cond.i, i32 %41
  %46 = ptrtoint ptr %add.ptr.i to i32
  %add.i128 = add i32 %46, 127
  %and.i129 = and i32 %add.i128, -128
  %47 = inttoptr i32 %and.i129 to ptr
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %add.ptr.i130 = getelementptr %struct.aead_request, ptr %47, i32 1
  %49 = ptrtoint ptr %add.ptr.i130 to i32
  %50 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reqsize.i.i, align 4
  %add.i132 = add i32 %51, 3
  %add1.i = add i32 %add.i132, %49
  %and.i133 = and i32 %add1.i, -4
  %52 = inttoptr i32 %and.i133 to ptr
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %53 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %55 = and i8 %54, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.i.not.i.i.i.i = icmp eq i8 %55, 0
  br i1 %tobool.i.not.i.i.i.i, label %esp_tmp_iv.exit.xfrm_input_state.exit.i_crit_edge, label %if.then.i.i.i.i

esp_tmp_iv.exit.xfrm_input_state.exit.i_crit_edge: ; preds = %esp_tmp_iv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_input_state.exit.i

if.then.i.i.i.i:                                  ; preds = %esp_tmp_iv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %56 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %extensions.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.skb_ext, ptr %57, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %59 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %57, i32 %shl.i.i.i.i
  br label %xfrm_input_state.exit.i

xfrm_input_state.exit.i:                          ; preds = %if.then.i.i.i.i, %esp_tmp_iv.exit.xfrm_input_state.exit.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ null, %esp_tmp_iv.exit.xfrm_input_state.exit.i_crit_edge ]
  %60 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %retval.0.i.i.i.i, align 4
  %sub.i.i134 = add i32 %61, -1
  %arrayidx.i.i = getelementptr %struct.sec_path, ptr %retval.0.i.i.i.i, i32 0, i32 2, i32 %sub.i.i134
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %flags.i = getelementptr inbounds %struct.xfrm_state, ptr %63, i32 0, i32 14, i32 6
  %64 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %tobool.not.i135 = icmp sgt i8 %65, -1
  br i1 %tobool.not.i135, label %xfrm_input_state.exit.i.esp_input_set_header.exit_crit_edge, label %if.then.i136

xfrm_input_state.exit.i.esp_input_set_header.exit_crit_edge: ; preds = %xfrm_input_state.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_input_set_header.exit

if.then.i136:                                     ; preds = %xfrm_input_state.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #13
  %66 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %call1.i, align 4
  %68 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %call9.i.i, align 128
  %seq_no.i = getelementptr inbounds %struct.ip_esp_hdr, ptr %call1.i, i32 0, i32 1
  %69 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %seq_no.i, align 4
  store i32 %70, ptr %call1.i, align 4
  %hi.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %71 = ptrtoint ptr %hi.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hi.i, align 4
  store i32 %72, ptr %seq_no.i, align 4
  br label %esp_input_set_header.exit

esp_input_set_header.exit:                        ; preds = %if.then.i136, %xfrm_input_state.exit.i.esp_input_set_header.exit_crit_edge
  call void @sg_init_table(ptr noundef %52, i32 noundef %nfrags.0) #13
  %73 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len, align 4
  %call36 = call i32 @skb_to_sgvec(ptr noundef %skb, ptr noundef %52, i32 noundef 0, i32 noundef %74) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then41, label %if.end42, !prof !99

if.then41:                                        ; preds = %esp_input_set_header.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %out

if.end42:                                         ; preds = %esp_input_set_header.exit
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %75 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %77)
  %tobool47.not = icmp sgt i8 %77, -1
  %spec.select153 = select i1 %tobool47.not, ptr @esp_input_done, ptr @esp_input_done_esn
  %78 = getelementptr inbounds %struct.crypto_async_request, ptr %47, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %spec.select153, ptr %78, align 8
  %80 = getelementptr inbounds %struct.crypto_async_request, ptr %47, i32 0, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %skb, ptr %80, align 4
  %82 = getelementptr inbounds %struct.crypto_async_request, ptr %47, i32 0, i32 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %82, align 4
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %47, i32 0, i32 4
  %84 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %52, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %47, i32 0, i32 5
  %85 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %52, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %47, i32 0, i32 2
  %86 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %47, i32 0, i32 3
  %87 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %cond.i, ptr %iv4.i, align 32
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %47, i32 0, i32 1
  %88 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.select, ptr %assoclen1.i, align 8
  %call52 = call i32 @crypto_aead_decrypt(ptr noundef %47) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call52)
  %cmp53 = icmp eq i32 %call52, -115
  br i1 %cmp53, label %if.end42.out_crit_edge, label %if.end56

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end56:                                         ; preds = %if.end42
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %90)
  %tobool61.not = icmp sgt i8 %90, -1
  br i1 %tobool61.not, label %if.end56.if.end63_crit_edge, label %if.then62

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then62:                                        ; preds = %if.end56
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %91 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i.i, align 4
  %93 = ptrtoint ptr %tmp30 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tmp30, align 4
  %95 = ptrtoint ptr %94 to i32
  %add.i.i.i = add i32 %95, 3
  %and.i.i.i = and i32 %add.i.i.i, -4
  %96 = inttoptr i32 %and.i.i.i to ptr
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %92, align 4
  %seq_no.i.i = getelementptr inbounds %struct.ip_esp_hdr, ptr %92, i32 0, i32 1
  %99 = ptrtoint ptr %seq_no.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %seq_no.i.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %96, align 4
  store i32 %101, ptr %92, align 4
  %102 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len, align 4
  %sub.i.i141 = add i32 %103, -4
  store i32 %sub.i.i141, ptr %len, align 4
  %104 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i141, i32 %105)
  %cmp.i.i143 = icmp ult i32 %sub.i.i141, %105
  br i1 %cmp.i.i143, label %do.body4.i.i, label %esp_input_restore_header.exit, !prof !99

do.body4.i.i:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #13, !srcloc !120
  unreachable

esp_input_restore_header.exit:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  %106 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %107, i32 4
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  br label %if.end63

if.end63:                                         ; preds = %esp_input_restore_header.exit, %if.end56.if.end63_crit_edge
  %call64 = call i32 @esp6_input_done2(ptr noundef %skb, i32 noundef %call52)
  br label %out

out:                                              ; preds = %if.end63, %if.end42.out_crit_edge, %if.then41, %if.end.i118.out_crit_edge, %if.end20.out_crit_edge, %pskb_may_pull.exit.out_crit_edge, %if.end.i.out_crit_edge
  %ret.0 = phi i32 [ %call36, %if.then41 ], [ -115, %if.end42.out_crit_edge ], [ %call64, %if.end63 ], [ -12, %if.end.i118.out_crit_edge ], [ -22, %pskb_may_pull.exit.out_crit_edge ], [ -22, %if.end20.out_crit_edge ], [ -22, %if.end.i.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp6_output(ptr noundef %x, ptr noundef %skb) #0 align 64 {
entry:
  %esp = alloca %struct.esp_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %esp) #13
  %0 = call ptr @memset(ptr %esp, i32 255, i32 48)
  %inplace = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 9
  %1 = ptrtoint ptr %inplace to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %inplace, align 1
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 1
  %proto = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 8
  %8 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %proto, align 8
  store i8 50, ptr %add.ptr.i, align 1
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 128
  %tfclen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 2
  %13 = ptrtoint ptr %tfclen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tfclen, align 8
  %tfcpad = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 11
  %14 = ptrtoint ptr %tfcpad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tfcpad, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then:                                          ; preds = %entry
  %16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.then.skb_dst.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !99

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.then.skb_dst.exit_crit_edge
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 8
  %and25.i = and i32 %20, -2
  %21 = inttoptr i32 %and25.i to ptr
  %22 = ptrtoint ptr %tfcpad to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tfcpad, align 8
  %child_mtu_cached = getelementptr inbounds %struct.xfrm_dst, ptr %21, i32 0, i32 10
  %24 = ptrtoint ptr %child_mtu_cached to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %child_mtu_cached, align 4
  %call5 = tail call i32 @xfrm_state_mtu(ptr noundef %x, i32 noundef %25) #13
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 %call5)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp6 = icmp ugt i32 %26, %28
  br i1 %cmp6, label %if.then7, label %skb_dst.exit.if.end10_crit_edge

skb_dst.exit.if.end10_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then7:                                         ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %26, %28
  %29 = ptrtoint ptr %tfclen to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %tfclen, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %skb_dst.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %10, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cra_blocksize.i.i, align 4
  %add = add i32 %33, 3
  %and = and i32 %add, -4
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %34 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len12, align 4
  %36 = ptrtoint ptr %tfclen to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tfclen, align 8
  %add13 = add i32 %37, %35
  %add15 = add i32 %add13, 1
  %add17 = add i32 %add15, %and
  %neg = sub i32 0, %and
  %and19 = and i32 %add17, %neg
  %clen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 5
  %38 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and19, ptr %clen, align 4
  %sub24 = sub i32 %and19, %add13
  %plen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 4
  %39 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub24, ptr %plen, align 8
  %add27 = add i32 %37, %12
  %add28 = add i32 %add27, %sub24
  %tailen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 3
  %40 = ptrtoint ptr %tailen to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add28, ptr %tailen, align 4
  %41 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %43 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %44 to i32
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %conv.i.i
  %45 = ptrtoint ptr %esp to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i.i, ptr %esp, align 8
  %call31 = call i32 @esp6_output_head(ptr noundef %x, ptr noundef %skb, ptr noundef nonnull %esp)
  %nfrags = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 7
  %46 = ptrtoint ptr %nfrags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call31, ptr %nfrags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp33 = icmp slt i32 %call31, 0
  br i1 %cmp33, label %if.end10.cleanup_crit_edge, label %if.end36

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end36:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %esp, align 8
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %spi, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %48, align 4
  %seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %52 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %seq, align 4
  %seq_no = getelementptr inbounds %struct.ip_esp_hdr, ptr %48, i32 0, i32 1
  %54 = ptrtoint ptr %seq_no to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %seq_no, align 4
  %55 = load i32, ptr %seq, align 4
  %conv = zext i32 %55 to i64
  %hi = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %56 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hi, align 4
  %conv46 = zext i32 %57 to i64
  %shl = shl nuw i64 %conv46, 32
  %add47 = or i64 %shl, %conv
  %seqno = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 1
  %58 = ptrtoint ptr %seqno to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %add47, ptr %seqno, align 8
  %59 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %61 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i88 = zext i16 %62 to i32
  %add.ptr.i.i89 = getelementptr i8, ptr %60, i32 %conv.i.i88
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %63 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i89 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %call50 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.neg) #13
  %call51 = call i32 @esp6_output_tail(ptr noundef %x, ptr noundef %skb, ptr noundef nonnull %esp)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.end36 ], [ %call31, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %esp) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_aalg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp_input_done_esn(ptr nocapture noundef readonly %base, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %tmp1.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %4 = ptrtoint ptr %tmp1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmp1.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %add.i.i.i = add i32 %6, 3
  %and.i.i.i = and i32 %add.i.i.i, -4
  %7 = inttoptr i32 %and.i.i.i to ptr
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %seq_no.i.i = getelementptr inbounds %struct.ip_esp_hdr, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %seq_no.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %seq_no.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %7, align 4
  store i32 %12, ptr %3, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len1.i.i, align 4
  %sub.i.i = add i32 %14, -4
  store i32 %sub.i.i, ptr %len1.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %16)
  %cmp.i.i = icmp ult i32 %sub.i.i, %16
  br i1 %cmp.i.i, label %do.body4.i.i, label %esp_input_restore_header.exit, !prof !99

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #13, !srcloc !120
  unreachable

esp_input_restore_header.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @esp6_input_done2(ptr noundef %20, i32 noundef %err) #13
  %call1.i = tail call i32 @xfrm_input_resume(ptr noundef %20, i32 noundef %call.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp_input_done(ptr nocapture noundef readonly %base, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @esp6_input_done2(ptr noundef %1, i32 noundef %err)
  %call1 = tail call i32 @xfrm_input_resume(ptr noundef %1, i32 noundef %call) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_register_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_register(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !18, !20, !21, !23, !25, !26, !27, !29, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !47, !49, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__ksymtab_esp6_output_head, !1, !"__ksymtab_esp6_output_head", i1 false, i1 false}
!1 = !{!"../net/ipv6/esp6.c", i32 567, i32 1}
!2 = !{ptr @__ksymtab_esp6_output_tail, !3, !"__ksymtab_esp6_output_tail", i1 false, i1 false}
!3 = !{!"../net/ipv6/esp6.c", i32 690, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/ipv6/esp6.c", i32 833, i32 4}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_esp6_input_done2, !8, !"__ksymtab_esp6_input_done2", i1 false, i1 false}
!8 = !{!"../net/ipv6/esp6.c", i32 886, i32 1}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/ipv6/esp6.c", i32 1290, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @esp6_fini._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @esp6_fini._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_esp6__688_1294_esp6_init6, !15, !"__initcall__kmod_esp6__688_1294_esp6_init6", i1 false, i1 false}
!15 = !{!"../net/ipv6/esp6.c", i32 1294, i32 1}
!16 = !{ptr @__exitcall_esp6_fini, !17, !"__exitcall_esp6_fini", i1 false, i1 false}
!17 = !{!"../net/ipv6/esp6.c", i32 1295, i32 1}
!18 = !{ptr @__UNIQUE_ID_file689, !19, !"__UNIQUE_ID_file689", i1 false, i1 false}
!19 = !{!"../net/ipv6/esp6.c", i32 1297, i32 1}
!20 = !{ptr @__UNIQUE_ID_license690, !19, !"__UNIQUE_ID_license690", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_alias691, !22, !"__UNIQUE_ID_alias691", i1 false, i1 false}
!22 = !{!"../net/ipv6/esp6.c", i32 1298, i32 1}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/ipv6/esp6.c", i32 159, i32 7}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/ipv6/esp6.c", i32 166, i32 8}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/ipv6/esp6.c", i32 191, i32 8}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/mm.h", i32 717, i32 2}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/net/sock.h", i32 1750, i32 2}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/ipv6/esp6.c", i32 768, i32 3}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @esp_remove_trailer.descriptor, !48, !"descriptor", i1 false, i1 false}
!52 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @esp6_protocol, !54, !"esp6_protocol", i1 false, i1 false}
!54 = !{!"../net/ipv6/esp6.c", i32 1264, i32 30}
!55 = !{ptr @esp6_type, !56, !"esp6_type", i1 false, i1 false}
!56 = !{!"../net/ipv6/esp6.c", i32 1254, i32 31}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/ipv6/esp6.c", i32 1067, i32 47}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/ipv6/esp6.c", i32 1110, i32 9}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/ipv6/esp6.c", i32 1111, i32 21}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/ipv6/esp6.c", i32 1111, i32 36}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/ipv6/esp6.c", i32 1112, i32 39}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/ipv6/esp6.c", i32 1114, i32 20}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/ipv6/esp6.c", i32 1118, i32 9}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/ipv6/esp6.c", i32 1159, i32 4}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @esp_init_authenc._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @esp_init_authenc._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/ipv6/esp6.c", i32 1275, i32 3}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @esp6_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @esp6_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/ipv6/esp6.c", i32 1279, i32 3}
!83 = !{ptr @esp6_init._entry.29, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @esp6_init._entry_ptr.31, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"auto-init"}
!96 = !{i64 2149991606}
!97 = !{i64 2149991872}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2153660499, i64 2153660983, i64 2153660536, i64 2153660592, i64 2153660626, i64 2153660650, i64 2153660691, i64 2153660712, i64 2153660740, i64 2153660774}
!101 = !{i64 2148207349, i64 2148207375, i64 2148207404, i64 2148207438, i64 2148207469, i64 2148207492}
!102 = !{i64 2148765758, i64 2148765763, i64 2148765776, i64 2148765820, i64 2148765854, i64 2148765875}
!103 = !{i64 2148208879, i64 2148208911, i64 2148208940, i64 2148208974, i64 2148209005, i64 2148209028}
!104 = !{i8 0, i8 2}
!105 = !{i64 6680721}
!106 = !{i64 660676, i64 660737}
!107 = !{i64 663408}
!108 = !{i64 663693}
!109 = !{i64 2154440409, i64 2154440901, i64 2154440446, i64 2154440502, i64 2154440536, i64 2154440560, i64 2154440601, i64 2154440622, i64 2154440650, i64 2154440684}
!110 = !{i64 2153640587, i64 2153641070, i64 2153640624, i64 2153640680, i64 2153640714, i64 2153640738, i64 2153640779, i64 2153640800, i64 2153640828, i64 2153640862}
!111 = !{i64 2148295801}
!112 = !{i64 2148210534, i64 2148210566, i64 2148210595, i64 2148210629, i64 2148210660, i64 2148210683}
!113 = !{i64 2148296030}
!114 = !{i64 2159312804, i64 2159313284, i64 2159312841, i64 2159312897, i64 2159312931, i64 2159312955, i64 2159312996, i64 2159313017, i64 2159313045, i64 2159313079}
!115 = !{i64 2148296880}
!116 = !{i64 2148211344, i64 2148211376, i64 2148211405, i64 2148211439, i64 2148211470, i64 2148211493}
!117 = !{i64 2148907493}
!118 = !{i64 2159284621}
!119 = !{i64 2159320063, i64 2159320544, i64 2159320100, i64 2159320156, i64 2159320190, i64 2159320214, i64 2159320255, i64 2159320276, i64 2159320304, i64 2159320338}
!120 = !{i64 2154673471, i64 2154673959, i64 2154673508, i64 2154673564, i64 2154673598, i64 2154673622, i64 2154673663, i64 2154673684, i64 2154673712, i64 2154673746}
