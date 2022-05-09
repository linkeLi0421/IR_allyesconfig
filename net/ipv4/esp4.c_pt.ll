; ModuleID = '/llk/IR_all_yes/net/ipv4/esp4.c_pt.bc'
source_filename = "../net/ipv4/esp4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+esp_output_head\22, \22a\22\09"
module asm "\09.weak\09__crc_esp_output_head\09\09\09\09"
module asm "\09.long\09__crc_esp_output_head\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_esp_output_head:\09\09\09\09\09"
module asm "\09.asciz \09\22esp_output_head\22\09\09\09\09\09"
module asm "__kstrtabns_esp_output_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+esp_output_tail\22, \22a\22\09"
module asm "\09.weak\09__crc_esp_output_tail\09\09\09\09"
module asm "\09.long\09__crc_esp_output_tail\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_esp_output_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22esp_output_tail\22\09\09\09\09\09"
module asm "__kstrtabns_esp_output_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+esp_input_done2\22, \22a\22\09"
module asm "\09.weak\09__crc_esp_input_done2\09\09\09\09"
module asm "\09.long\09__crc_esp_input_done2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_esp_input_done2:\09\09\09\09\09"
module asm "\09.asciz \09\22esp_input_done2\22\09\09\09\09\09"
module asm "__kstrtabns_esp_input_done2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xfrm4_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.153, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.154, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.153 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.154 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
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
%struct.sock_common = type { %union.anon.155, %union.anon.157, %union.anon.158, i16, i8, i8, i32, %union.anon.160, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.163, [0 x i32], %union.anon.164, i16, i16, %union.anon.165, %struct.refcount_struct, [0 x i32], %union.anon.166 }
%union.anon.155 = type { i64 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.160 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.21 }
%union.anon.21 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.163 = type { i32 }
%union.anon.164 = type { %struct.hlist_node }
%union.anon.165 = type { i32 }
%union.anon.166 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.167, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.168, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.169, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.167 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { ptr }
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
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.194, ptr, ptr, ptr, ptr, %union.anon.195, [120 x i8] }
%union.anon.194 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.195 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.201, i32, i32, i8, i8 }
%struct.anon.201 = type { i32, i32 }
%struct.esp_output_extra = type { i32, i32 }
%struct.ip_esp_hdr = type { i32, i32, [0 x i8] }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.114, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.114 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.esp_tcp_sk = type { ptr, %struct.callback_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.171, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.189, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.171 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.icmphdr = type { i8, i8, i16, %union.anon.205 }
%union.anon.205 = type { i32 }
%struct.xfrm_algo_aead = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_algo_auth = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_algo = type { [64 x i8], i32, [0 x i8] }
%struct.rtattr = type { i16, i16 }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon.208, %struct.sadb_alg }
%union.anon.208 = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }
%struct.xfrm_algo_auth_info = type { i16, i16 }
%struct.xfrm_dst = type { %union.anon.209, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.209 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }

@__kstrtab_esp_output_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_esp_output_head = external dso_local constant [0 x i8], align 1
@__ksymtab_esp_output_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @esp_output_head to i32), ptr @__kstrtab_esp_output_head, ptr @__kstrtabns_esp_output_head }, section "___ksymtab_gpl+esp_output_head", align 4
@__kstrtab_esp_output_tail = external dso_local constant [0 x i8], align 1
@__kstrtabns_esp_output_tail = external dso_local constant [0 x i8], align 1
@__ksymtab_esp_output_tail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @esp_output_tail to i32), ptr @__kstrtab_esp_output_tail, ptr @__kstrtabns_esp_output_tail }, section "___ksymtab_gpl+esp_output_tail", align 4
@esp_input_done2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/ipv4/esp4.c\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_esp_input_done2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_esp_input_done2 = external dso_local constant [0 x i8], align 1
@__ksymtab_esp_input_done2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @esp_input_done2 to i32), ptr @__kstrtab_esp_input_done2, ptr @__kstrtabns_esp_input_done2 }, section "___ksymtab_gpl+esp_input_done2", align 4
@esp4_protocol = internal global { %struct.xfrm4_protocol, [40 x i8] } { %struct.xfrm4_protocol { ptr @xfrm4_rcv, ptr @xfrm_input, ptr @esp4_rcv_cb, ptr @esp4_err, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@esp4_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016IPsec: %s: can't remove protocol\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esp4_fini\00", [22 x i8] zeroinitializer }, align 32
@esp4_fini._entry_ptr = internal global ptr @esp4_fini._entry, section ".printk_index", align 4
@esp_type = internal constant { %struct.xfrm_type, [36 x i8] } { %struct.xfrm_type { ptr null, i8 50, i8 2, ptr @esp_init_state, ptr @esp_destroy, ptr @esp_input, ptr @esp_output, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_esp4__629_1243_esp4_init6 = internal global ptr @esp4_init, section ".initcall6.init", align 4
@__exitcall_esp4_fini = internal global ptr @esp4_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file630 = internal constant [24 x i8] c"esp4.file=net/ipv4/esp4\00", section ".modinfo", align 1
@__UNIQUE_ID_license631 = internal constant [17 x i8] c"esp4.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias632 = internal constant [26 x i8] c"esp4.alias=xfrm-type-2-50\00", section ".modinfo", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@esp_find_tcp_sk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@esp_find_tcp_sk.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@esp_find_tcp_sk.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
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
@esp_remove_trailer.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"esp4\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"esp_remove_trailer\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ipsec esp packet is garbage padlen=%d, elen=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"IPsec: ipsec esp packet is garbage padlen=%d, elen=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s(%s)\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s%sauthencesn(%s,%s)%s\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"(\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"digest_null\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s%sauthenc(%s,%s)%s\00", [43 x i8] zeroinitializer }, align 32
@esp_init_authenc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016IPsec: ESP: %s digestsize %u != %hu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"esp_init_authenc\00", [47 x i8] zeroinitializer }, align 32
@esp_init_authenc._entry_ptr = internal global ptr @esp_init_authenc._entry, section ".printk_index", align 4
@esp4_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016IPsec: %s: can't add xfrm type\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esp4_init\00", [22 x i8] zeroinitializer }, align 32
@esp4_init._entry_ptr = internal global ptr @esp4_init._entry, section ".printk_index", align 4
@esp4_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str, i32 1229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016IPsec: %s: can't add protocol\0A\00", [63 x i8] zeroinitializer }, align 32
@esp4_init._entry_ptr.31 = internal global ptr @esp4_init._entry.29, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967268]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 7]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 788, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"esp4_protocol\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1214, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1239, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"esp_type\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1203, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 695, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 142, i32 7 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 149, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 723, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1160, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1011, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 717, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1750, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 732, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1026, i32 47 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1069, i32 9 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1070, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1070, i32 36 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1071, i32 39 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1073, i32 20 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1077, i32 9 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1118, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1225, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [19 x i8] c"../net/ipv4/esp4.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1229, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias632, ptr @__UNIQUE_ID_file630, ptr @__UNIQUE_ID_license631, ptr @__exitcall_esp4_fini, ptr @__initcall__kmod_esp4__629_1243_esp4_init6, ptr @__ksymtab_esp_input_done2, ptr @__ksymtab_esp_output_head, ptr @__ksymtab_esp_output_tail, ptr @esp4_fini, ptr @esp4_fini._entry, ptr @esp4_fini._entry_ptr, ptr @esp4_init._entry, ptr @esp4_init._entry.29, ptr @esp4_init._entry_ptr, ptr @esp4_init._entry_ptr.31, ptr @esp_init_authenc._entry, ptr @esp_init_authenc._entry_ptr, ptr @.str, ptr @esp4_protocol, ptr @.str.1, ptr @.str.2, ptr @esp_type, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp4_protocol to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp4_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp_init_authenc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp4_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esp4_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esp_output_head(ptr noundef %x, ptr noundef %skb, ptr nocapture noundef %esp) #0 align 64 {
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
  %21 = add i32 %sub.i.i, -65516
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %21)
  %cmp.i.i = icmp ult i32 %21, -65536
  br i1 %cmp.i.i, label %sw.bb.i.cleanup79_crit_edge, label %if.end.i.i

sw.bb.i.cleanup79_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end.i.i:                                       ; preds = %sw.bb.i
  %22 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %esp, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %6, ptr %23, align 2
  %dest.i.i = getelementptr inbounds %struct.udphdr, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %8, ptr %dest.i.i, align 2
  %conv.i.i = trunc i32 %sub.i.i to i16
  %len4.i.i = getelementptr inbounds %struct.udphdr, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i, ptr %len4.i.i, align 2
  %check.i.i = getelementptr inbounds %struct.udphdr, ptr %23, i32 0, i32 3
  %27 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %check.i.i, align 2
  %28 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %30 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %31 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %conv.i.i.i
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 17, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp6.i.i = icmp eq i16 %10, 1
  %add.ptr.i.i = getelementptr %struct.udphdr, ptr %23, i32 1
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.end.i.i.sw.epilog.i_crit_edge

if.end.i.i.sw.epilog.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr %struct.udphdr, ptr %23, i32 1, i32 2
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx.i.i, align 4
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %add.ptr.i.i, align 4
  %add.ptr10.i.i = getelementptr %struct.udphdr, ptr %23, i32 2
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then
  %35 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %esp, align 8
  %len2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %37 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len2.i.i, align 4
  %39 = ptrtoint ptr %tailen1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tailen1, align 4
  %add.i25.i = add i32 %40, %38
  %head.i.i.i26.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %41 = ptrtoint ptr %head.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i.i26.i, align 8
  %transport_header.i.i.i27.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %43 = ptrtoint ptr %transport_header.i.i.i27.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %transport_header.i.i.i27.i, align 2
  %conv.i.i.i28.i = zext i16 %44 to i32
  %add.ptr.i.i.i29.i = getelementptr i8, ptr %42, i32 %conv.i.i.i28.i
  %data.i.i30.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i30.i, align 4
  %sub.ptr.lhs.cast.i.i31.i = ptrtoint ptr %add.ptr.i.i.i29.i to i32
  %sub.ptr.rhs.cast.i.i32.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i.neg.i33.i = sub i32 %sub.ptr.rhs.cast.i.i32.i, %sub.ptr.lhs.cast.i.i31.i
  %sub.i34.i = add i32 %add.i25.i, %sub.ptr.sub.i.neg.i33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.i34.i)
  %cmp.i35.i = icmp ugt i32 %sub.i34.i, 65535
  br i1 %cmp.i35.i, label %sw.bb4.i.cleanup79_crit_edge, label %if.end.i36.i

sw.bb4.i.cleanup79_crit_edge:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end.i36.i:                                     ; preds = %sw.bb4.i
  %47 = tail call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %50, 1
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
  %call4.i.i = tail call fastcc ptr @esp_find_tcp_sk(ptr noundef %x) #13
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
  %51 = tail call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i.i.i.i.i24.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i24.i.i to ptr
  %preempt_count.i.i.i.i25.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i25.i.i, align 4
  %sub.i.i.i.i.i = add i32 %54, -1
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
  %55 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i37.i, ptr %36, align 2
  %add.ptr.i38.i = getelementptr i16, ptr %36, i32 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end8.i.i, %rcu_read_unlock.exit.i.i.sw.epilog.i_crit_edge, %if.then8.i.i, %if.end.i.i.sw.epilog.i_crit_edge
  %esph.0.i = phi ptr [ %add.ptr10.i.i, %if.then8.i.i ], [ %add.ptr.i.i, %if.end.i.i.sw.epilog.i_crit_edge ], [ %add.ptr.i38.i, %if.end8.i.i ], [ %call4.i.i, %rcu_read_unlock.exit.i.i.sw.epilog.i_crit_edge ]
  %cmp.i40.i = icmp ugt ptr %esph.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40.i, label %esp_output_encap.exit, label %esp_output_encap.exit.thread

esp_output_encap.exit.thread:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %esp to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %esph.0.i, ptr %esp, align 8
  br label %if.end3

esp_output_encap.exit:                            ; preds = %sw.epilog.i
  %57 = ptrtoint ptr %esph.0.i to i32
  %cmp = icmp slt ptr %esph.0.i, null
  br i1 %cmp, label %esp_output_encap.exit.cleanup79_crit_edge, label %esp_output_encap.exit.if.end3_crit_edge

esp_output_encap.exit.if.end3_crit_edge:          ; preds = %esp_output_encap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

esp_output_encap.exit.cleanup79_crit_edge:        ; preds = %esp_output_encap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end3:                                          ; preds = %esp_output_encap.exit.if.end3_crit_edge, %esp_output_encap.exit.thread, %entry.if.end3_crit_edge
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %58 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_len, align 8
  %add = add i32 %2, 127
  %add4 = add i32 %add, %59
  %and = and i32 %add4, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and)
  %cmp6 = icmp ugt i32 %and, 32768
  br i1 %cmp6, label %if.end3.cow_crit_edge, label %if.end8

if.end3.cow_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cow

if.end8:                                          ; preds = %if.end3
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %60 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end8.if.then11_crit_edge, label %skb_cloned.exit

if.end8.if.then11_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

skb_cloned.exit:                                  ; preds = %if.end8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %61 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 10
  %call.i.i.i145 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #13
  %63 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %64, 65535
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
  %65 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.i.not.i = icmp eq i32 %66, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then11.skb_tailroom.exit_crit_edge

if.then11.skb_tailroom.exit_crit_edge:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %67 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %69 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %68 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %70 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.then11.skb_tailroom.exit_crit_edge
  %cond.i146 = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.then11.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cond.i146)
  %cmp13.not = icmp sgt i32 %2, %cond.i146
  br i1 %cmp13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %trailer to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %skb, ptr %trailer, align 4
  %tail.i147 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %72 = ptrtoint ptr %tail.i147 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tail.i147, align 8
  br label %skip_cow

if.else:                                          ; preds = %skb_tailroom.exit
  %end.i148 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %74 = ptrtoint ptr %end.i148 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i148, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %77)
  %cmp17 = icmp ult i8 %77, 17
  br i1 %cmp17, label %land.lhs.true, label %if.else.cow_crit_edge

if.else.cow_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cow

land.lhs.true:                                    ; preds = %if.else
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %75, i32 0, i32 6
  %78 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %frag_list.i, align 8
  %cmp.i150.not = icmp eq ptr %79, null
  br i1 %cmp.i150.not, label %if.then20, label %land.lhs.true.cow_crit_edge

land.lhs.true.cow_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cow

if.then20:                                        ; preds = %land.lhs.true
  %80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %xfrag = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 44
  %inplace = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 9
  %83 = ptrtoint ptr %inplace to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %inplace, align 1
  %and22 = and i32 %add, -128
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %call23 = tail call zeroext i1 @skb_page_frag_refill(i32 noundef %and22, ptr noundef %xfrag, i32 noundef 2592) #13
  br i1 %call23, label %if.end29, label %cleanup58, !prof !98

if.end29:                                         ; preds = %if.then20
  %84 = ptrtoint ptr %xfrag to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %xfrag, align 4
  tail call fastcc void @get_page(ptr noundef %85)
  %call31 = tail call ptr @page_address(ptr noundef %85) #13
  %offset = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 44, i32 1
  %86 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %offset, align 4
  %conv32 = zext i16 %87 to i32
  %add.ptr = getelementptr i8, ptr %call31, i32 %conv32
  %tfclen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 2
  %88 = ptrtoint ptr %tfclen to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tfclen, align 8
  %plen = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 4
  %90 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %plen, align 8
  %proto = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 8
  %92 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %proto, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i151 = icmp eq i32 %89, 0
  br i1 %tobool.not.i151, label %if.end29.do.body.i_crit_edge, label %if.then.i152

if.end29.do.body.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.then.i152:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %94 = call ptr @memset(ptr %add.ptr, i32 0, i32 %89)
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %89
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i152, %if.end29.do.body.i_crit_edge
  %tail.addr.0.i = phi ptr [ %add.ptr.i, %if.then.i152 ], [ %add.ptr, %if.end29.do.body.i_crit_edge ]
  %sub.i = add i32 %91, -2
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
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %95)
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
  %96 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv2.i, ptr %arrayidx4.i, align 1
  %sub5.i = add i32 %91, -1
  %arrayidx6.i = getelementptr i8, ptr %tail.addr.0.i, i32 %sub5.i
  %97 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %93, ptr %arrayidx6.i, align 1
  %98 = ptrtoint ptr %end.i148 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %end.i148, align 4
  %nr_frags34 = getelementptr inbounds %struct.skb_shared_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %nr_frags34 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %nr_frags34, align 2
  %conv35 = zext i8 %101 to i32
  %102 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %offset, align 4
  %conv37 = zext i16 %103 to i32
  %arrayidx.i155 = getelementptr %struct.skb_shared_info, ptr %99, i32 0, i32 12, i32 %conv35
  %104 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %85, ptr %arrayidx.i155, align 4
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %99, i32 0, i32 12, i32 %conv35, i32 2
  %105 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %conv37, ptr %bv_offset.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %99, i32 0, i32 12, i32 %conv35, i32 1
  %106 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %2, ptr %bv_len.i.i, align 4
  %107 = getelementptr inbounds %struct.page, ptr %85, i32 0, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %107, align 4
  %and.i.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i157, label %if.then.i.i, !prof !98

if.then.i.i:                                      ; preds = %esp_output_fill_trailer.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i156 = add i32 %109, -1
  br label %_compound_head.exit.i

if.end.i.i157:                                    ; preds = %esp_output_fill_trailer.exit
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %85 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i157, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i156, %if.then.i.i ], [ %110, %if.end.i.i157 ]
  %111 = inttoptr i32 %retval.0.i.i to ptr
  %112 = getelementptr inbounds %struct.page, ptr %111, i32 0, i32 1
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %115 = ptrtoint ptr %114 to i32
  %and.i8.i = and i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.i.not.i158 = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.i.not.i158, label %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge, label %if.then.i160

_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__skb_fill_page_desc.exit

if.then.i160:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %116 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load.i159 = load i8, ptr %cloned.i, align 2
  %bf.set.i = or i8 %bf.load.i159, 2
  store i8 %bf.set.i, ptr %cloned.i, align 2
  br label %__skb_fill_page_desc.exit

__skb_fill_page_desc.exit:                        ; preds = %if.then.i160, %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge
  %inc = add i8 %101, 1
  %117 = ptrtoint ptr %end.i148 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %end.i148, align 4
  %nr_frags40 = getelementptr inbounds %struct.skb_shared_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %nr_frags40 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %inc, ptr %nr_frags40, align 2
  %120 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %offset, align 4
  %122 = trunc i32 %and22 to i16
  %conv44 = add i16 %121, %122
  store i16 %conv44, ptr %offset, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  %inc47 = add nuw nsw i32 %conv35, 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %123 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %len, align 4
  %add48 = add i32 %124, %2
  store i32 %add48, ptr %len, align 4
  %125 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %data_len, align 8
  %add50 = add i32 %126, %2
  store i32 %add50, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %127 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %truesize, align 8
  %add51 = add i32 %128, %2
  store i32 %add51, ptr %truesize, align 8
  %tobool52.not = icmp eq ptr %82, null
  br i1 %tobool52.not, label %__skb_fill_page_desc.exit.cleanup79_crit_edge, label %land.lhs.true53

__skb_fill_page_desc.exit.cleanup79_crit_edge:    ; preds = %__skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

land.lhs.true53:                                  ; preds = %__skb_fill_page_desc.exit
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %82, i32 0, i32 4
  %129 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i163 = zext i8 %130 to i32
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
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %82, i32 0, i32 23
  tail call fastcc void @refcount_add(i32 noundef %2, ptr noundef %sk_wmem_alloc)
  br label %cleanup79

cleanup58:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  br label %cow

cow:                                              ; preds = %cleanup58, %land.lhs.true.cow_crit_edge, %if.else.cow_crit_edge, %skb_cloned.exit.cow_crit_edge, %if.end3.cow_crit_edge
  %131 = ptrtoint ptr %esp to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %esp, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %133 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %135 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %transport_header.i, align 2
  %call66 = call i32 @skb_cow_data(ptr noundef %skb, i32 noundef %2, ptr noundef nonnull %trailer) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %cow.cleanup79_crit_edge, label %if.end70

cow.cleanup79_crit_edge:                          ; preds = %cow
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end70:                                         ; preds = %cow
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i165 = zext i16 %136 to i32
  %add.ptr.i166 = getelementptr i8, ptr %134, i32 %conv.i165
  %sub.ptr.lhs.cast = ptrtoint ptr %132 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i166 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %137 = ptrtoint ptr %trailer to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %trailer, align 4
  %tail.i167 = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 16
  %139 = ptrtoint ptr %tail.i167 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tail.i167, align 8
  %141 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %head.i, align 8
  %143 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %transport_header.i, align 2
  %conv.i170 = zext i16 %144 to i32
  %add.ptr.i171 = getelementptr i8, ptr %142, i32 %conv.i170
  %add.ptr73 = getelementptr i8, ptr %add.ptr.i171, i32 %sub.ptr.sub
  %145 = ptrtoint ptr %esp to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %add.ptr73, ptr %esp, align 8
  br label %skip_cow

skip_cow:                                         ; preds = %if.end70, %if.then14
  %tail.0 = phi ptr [ %140, %if.end70 ], [ %73, %if.then14 ]
  %nfrags.1 = phi i32 [ %call66, %if.end70 ], [ 1, %if.then14 ]
  %tfclen75 = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 2
  %146 = ptrtoint ptr %tfclen75 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tfclen75, align 8
  %plen76 = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 4
  %148 = ptrtoint ptr %plen76 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %plen76, align 8
  %proto77 = getelementptr inbounds %struct.esp_info, ptr %esp, i32 0, i32 8
  %150 = ptrtoint ptr %proto77 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %proto77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i172 = icmp eq i32 %147, 0
  br i1 %tobool.not.i172, label %skip_cow.do.body.i178_crit_edge, label %if.then.i174

skip_cow.do.body.i178_crit_edge:                  ; preds = %skip_cow
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i178

if.then.i174:                                     ; preds = %skip_cow
  call void @__sanitizer_cov_trace_pc() #15
  %152 = call ptr @memset(ptr %tail.0, i32 0, i32 %147)
  %add.ptr.i173 = getelementptr i8, ptr %tail.0, i32 %147
  br label %do.body.i178

do.body.i178:                                     ; preds = %if.then.i174, %skip_cow.do.body.i178_crit_edge
  %tail.addr.0.i175 = phi ptr [ %add.ptr.i173, %if.then.i174 ], [ %tail.0, %skip_cow.do.body.i178_crit_edge ]
  %sub.i176 = add i32 %149, -2
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
  %153 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_store1_noabort(i32 %153)
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
  %154 = ptrtoint ptr %arrayidx4.i186 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv2.i185, ptr %arrayidx4.i186, align 1
  %sub5.i187 = add i32 %149, -1
  %arrayidx6.i188 = getelementptr i8, ptr %tail.addr.0.i175, i32 %sub5.i187
  %155 = ptrtoint ptr %arrayidx6.i188 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %151, ptr %arrayidx6.i188, align 1
  %156 = ptrtoint ptr %trailer to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %trailer, align 4
  %call78 = call ptr @pskb_put(ptr noundef %skb, ptr noundef %157, i32 noundef %2) #13
  br label %cleanup79

cleanup79:                                        ; preds = %esp_output_fill_trailer.exit189, %cow.cleanup79_crit_edge, %if.then56, %land.lhs.true53.cleanup79_crit_edge, %__skb_fill_page_desc.exit.cleanup79_crit_edge, %esp_output_encap.exit.cleanup79_crit_edge, %sw.bb4.i.cleanup79_crit_edge, %sw.bb.i.cleanup79_crit_edge
  %retval.2 = phi i32 [ %57, %esp_output_encap.exit.cleanup79_crit_edge ], [ %call66, %cow.cleanup79_crit_edge ], [ %nfrags.1, %esp_output_fill_trailer.exit189 ], [ %inc47, %if.then56 ], [ %inc47, %land.lhs.true53.cleanup79_crit_edge ], [ %inc47, %__skb_fill_page_desc.exit.cleanup79_crit_edge ], [ -90, %sw.bb.i.cleanup79_crit_edge ], [ -90, %sw.bb4.i.cleanup79_crit_edge ]
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
define dso_local i32 @esp_output_tail(ptr noundef %x, ptr noundef %skb, ptr nocapture noundef %esp) #0 align 64 {
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
  %ivsize.i.i.i250 = getelementptr i8, ptr %21, i32 -104
  %22 = ptrtoint ptr %ivsize.i.i.i250 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ivsize.i.i.i250, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i251 = icmp eq i32 %23, 0
  %add.ptr6.i = getelementptr i8, ptr %call9.i.i, i32 %4
  br i1 %tobool.not.i251, label %if.end7.esp_tmp_iv.exit_crit_edge, label %cond.true.i

if.end7.esp_tmp_iv.exit_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_tmp_iv.exit

cond.true.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %add.ptr6.i to i32
  %cra_alignmask.i.i.i252 = getelementptr inbounds %struct.crypto_alg, ptr %21, i32 0, i32 5
  %25 = ptrtoint ptr %cra_alignmask.i.i.i252 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cra_alignmask.i.i.i252, align 4
  %add2.i = add i32 %26, %24
  %neg.i = xor i32 %26, -1
  %and.i253 = and i32 %add2.i, %neg.i
  %27 = inttoptr i32 %and.i253 to ptr
  br label %esp_tmp_iv.exit

esp_tmp_iv.exit:                                  ; preds = %cond.true.i, %if.end7.esp_tmp_iv.exit_crit_edge
  %cond.i = phi ptr [ %27, %cond.true.i ], [ %add.ptr6.i, %if.end7.esp_tmp_iv.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %cond.i, i32 %23
  %28 = ptrtoint ptr %add.ptr.i to i32
  %add.i256 = add i32 %28, 127
  %and.i257 = and i32 %add.i256, -128
  %29 = inttoptr i32 %and.i257 to ptr
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %add.ptr.i258 = getelementptr %struct.aead_request, ptr %29, i32 1
  %31 = ptrtoint ptr %add.ptr.i258 to i32
  %32 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reqsize.i.i, align 4
  %add.i260 = add i32 %33, 3
  %add1.i = add i32 %add.i260, %31
  %and.i261 = and i32 %add1.i, -4
  %34 = inttoptr i32 %and.i261 to ptr
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
  %tobool.not.i262 = icmp sgt i8 %42, -1
  br i1 %tobool.not.i262, label %if.end15.esp_output_set_extra.exit_crit_edge, label %if.then.i263

if.end15.esp_output_set_extra.exit_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_output_set_extra.exit

if.then.i263:                                     ; preds = %if.end15
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %43 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %45 = and i8 %44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.i.not.i.i.i.i = icmp eq i8 %45, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.then.i263.xfrm_offload.exit.i_crit_edge, label %skb_sec_path.exit.i.i

if.then.i263.xfrm_offload.exit.i_crit_edge:       ; preds = %if.then.i263
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit.i

skb_sec_path.exit.i.i:                            ; preds = %if.then.i263
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
  br i1 %cmp.not.i.i, label %if.end.i.i264, label %lor.lhs.false2.i.i.xfrm_offload.exit.i_crit_edge

lor.lhs.false2.i.i.xfrm_offload.exit.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit.i

if.end.i.i264:                                    ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %51, -1
  %arrayidx.i.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 3, i32 %sub.i.i
  br label %xfrm_offload.exit.i

xfrm_offload.exit.i:                              ; preds = %if.end.i.i264, %lor.lhs.false2.i.i.xfrm_offload.exit.i_crit_edge, %lor.lhs.false.i.i.xfrm_offload.exit.i_crit_edge, %skb_sec_path.exit.i.i.xfrm_offload.exit.i_crit_edge, %if.then.i263.xfrm_offload.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %if.end.i.i264 ], [ null, %lor.lhs.false2.i.i.xfrm_offload.exit.i_crit_edge ], [ null, %lor.lhs.false.i.i.xfrm_offload.exit.i_crit_edge ], [ null, %skb_sec_path.exit.i.i.xfrm_offload.exit.i_crit_edge ], [ null, %if.then.i263.xfrm_offload.exit.i_crit_edge ]
  %tobool1.not.i = icmp eq ptr %retval.0.i.i, null
  %hi.i = getelementptr inbounds %struct.anon.201, ptr %retval.0.i.i, i32 0, i32 1
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
  %add.ptr.i265 = getelementptr i8, ptr %40, i32 -4
  %60 = ptrtoint ptr %add.ptr.i265 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i265, align 4
  %62 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %call9.i.i, align 128
  %63 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %seqhi.0.i, ptr %40, align 4
  br label %esp_output_set_extra.exit

esp_output_set_extra.exit:                        ; preds = %xfrm_offload.exit.i, %if.end15.esp_output_set_extra.exit_crit_edge
  %esph.addr.0.i = phi ptr [ %add.ptr.i265, %xfrm_offload.exit.i ], [ %40, %if.end15.esp_output_set_extra.exit_crit_edge ]
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
  br i1 %cmp, label %esp_output_set_extra.exit.error_free_crit_edge, label %if.end29, !prof !99

esp_output_set_extra.exit.error_free_crit_edge:   ; preds = %esp_output_set_extra.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

if.end29:                                         ; preds = %esp_output_set_extra.exit
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
  %tobool.not.i.i266 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i266, label %if.end.i.i269, label %if.then.i.i268, !prof !98

if.then.i.i268:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i267 = add i32 %85, -1
  br label %_compound_head.exit.i

if.end.i.i269:                                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %82 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i269, %if.then.i.i268
  %retval.0.i.i270 = phi i32 [ %sub.i.i267, %if.then.i.i268 ], [ %86, %if.end.i.i269 ]
  %87 = inttoptr i32 %retval.0.i.i270 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %87, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %88 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %89, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i271 = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i271, label %if.then.i1.i, label %do.end5.i.i, !prof !99

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %87, ptr noundef nonnull @.str.10) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #13, !srcloc !100
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@esp_output_tail, %if.then.i.i.i.i)) #13
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
  %and.i.i272 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i272)
  %tobool.not.i.i273 = icmp eq i32 %and.i.i272, 0
  br i1 %tobool.not.i.i273, label %if.end.i.i276, label %if.then.i.i275, !prof !98

if.then.i.i275:                                   ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i274 = add i32 %101, -1
  br label %_compound_head.exit.i278

if.end.i.i276:                                    ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %102 = ptrtoint ptr %82 to i32
  br label %_compound_head.exit.i278

_compound_head.exit.i278:                         ; preds = %if.end.i.i276, %if.then.i.i275
  %retval.0.i.i277 = phi i32 [ %sub.i.i274, %if.then.i.i275 ], [ %102, %if.end.i.i276 ]
  %103 = inttoptr i32 %retval.0.i.i277 to ptr
  %104 = getelementptr inbounds %struct.page, ptr %103, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %107 = ptrtoint ptr %106 to i32
  %and.i8.i = and i32 %107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.i.not.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.i.not.i, label %_compound_head.exit.i278.__skb_fill_page_desc.exit_crit_edge, label %if.then.i279

_compound_head.exit.i278.__skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i278
  call void @__sanitizer_cov_trace_pc() #15
  br label %__skb_fill_page_desc.exit

if.then.i279:                                     ; preds = %_compound_head.exit.i278
  call void @__sanitizer_cov_trace_pc() #15
  %pfmemalloc.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %108 = ptrtoint ptr %pfmemalloc.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load.i = load i8, ptr %pfmemalloc.i, align 2
  %bf.set.i = or i8 %bf.load.i, 2
  store i8 %bf.set.i, ptr %pfmemalloc.i, align 2
  br label %__skb_fill_page_desc.exit

__skb_fill_page_desc.exit:                        ; preds = %if.then.i279, %_compound_head.exit.i278.__skb_fill_page_desc.exit_crit_edge
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
  %spec.select296 = select i1 %tobool86.not, ptr @esp_output_done, ptr @esp_output_done_esn
  %122 = getelementptr inbounds %struct.crypto_async_request, ptr %29, i32 0, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %spec.select296, ptr %122, align 8
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
  br i1 %tobool122.not, label %sw.bb117.sw.epilog_crit_edge, label %if.then123

sw.bb117.sw.epilog_crit_edge:                     ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then123:                                       ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #15
  %142 = ptrtoint ptr %tmp114 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tmp114, align 4
  %144 = ptrtoint ptr %143 to i32
  %add.i.i285 = add i32 %144, 3
  %and.i.i286 = and i32 %add.i.i285, -4
  %145 = inttoptr i32 %and.i.i286 to ptr
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
  %esphoff.i287 = getelementptr inbounds %struct.esp_output_extra, ptr %145, i32 0, i32 1
  %152 = ptrtoint ptr %esphoff.i287 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %esphoff.i287, align 4
  %sub.ptr.sub.i.i = sub i32 -4, %sub.ptr.rhs.cast.i.i
  %add.i288 = add i32 %sub.ptr.sub.i.i, %153
  %sub.i = add i32 %add.i288, %sub.ptr.lhs.cast.i.i
  %add.ptr.i.i289 = getelementptr i8, ptr %151, i32 %sub.i
  %154 = ptrtoint ptr %add.ptr.i.i289 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %add.ptr.i.i289, align 4
  %seq_no.i.i = getelementptr inbounds %struct.ip_esp_hdr, ptr %add.ptr.i.i289, i32 0, i32 1
  %156 = ptrtoint ptr %seq_no.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %seq_no.i.i, align 4
  %157 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %145, align 4
  store i32 %158, ptr %add.ptr.i.i289, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then123, %sw.bb117.sw.epilog_crit_edge, %sw.bb116, %if.end81.sw.epilog_crit_edge
  %err.1 = phi i32 [ %call115, %if.end81.sw.epilog_crit_edge ], [ 0, %if.then123 ], [ 0, %sw.bb117.sw.epilog_crit_edge ], [ 1, %sw.bb116 ]
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
  %159 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %encap, align 8
  %tobool130.not = icmp eq ptr %160, null
  br i1 %tobool130.not, label %land.lhs.true.error_free_crit_edge, label %land.lhs.true131

land.lhs.true.error_free_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

land.lhs.true131:                                 ; preds = %land.lhs.true
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %160, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %162)
  %cmp134 = icmp eq i16 %162, 7
  br i1 %cmp134, label %if.then136, label %land.lhs.true131.error_free_crit_edge

land.lhs.true131.error_free_crit_edge:            ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

if.then136:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @local_bh_disable() #13
  %163 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %x, align 4
  %call1.i = tail call i32 @xfrm_trans_queue_net(ptr noundef %164, ptr noundef %skb, ptr noundef nonnull @esp_output_tcp_encap_cb) #13
  tail call fastcc void @local_bh_enable() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i290 = icmp eq i32 %call1.i, 0
  %..i = select i1 %tobool.not.i290, i32 -115, i32 %call1.i
  br label %error_free

error_free:                                       ; preds = %if.then136, %land.lhs.true131.error_free_crit_edge, %land.lhs.true.error_free_crit_edge, %if.end128.error_free_crit_edge, %__skb_fill_page_desc.exit.error_free_crit_edge, %if.then44, %esp_output_set_extra.exit.error_free_crit_edge
  %err.2 = phi i32 [ %call24, %esp_output_set_extra.exit.error_free_crit_edge ], [ %err.1, %if.end128.error_free_crit_edge ], [ %..i, %if.then136 ], [ 0, %land.lhs.true131.error_free_crit_edge ], [ 0, %land.lhs.true.error_free_crit_edge ], [ %call24, %if.then44 ], [ %call69, %__skb_fill_page_desc.exit.error_free_crit_edge ]
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
  %tobool.not115 = phi i1 [ false, %land.lhs.true.if.else_crit_edge ], [ true, %xfrm_offload.exit.if.else_crit_edge ], [ true, %lor.lhs.false2.i.if.else_crit_edge ], [ true, %lor.lhs.false.i.if.else_crit_edge ], [ true, %skb_sec_path.exit.i.if.else_crit_edge ], [ true, %entry.if.else_crit_edge ]
  %retval.0.i113 = phi ptr [ %arrayidx.i, %land.lhs.true.if.else_crit_edge ], [ null, %xfrm_offload.exit.if.else_crit_edge ], [ null, %lor.lhs.false2.i.if.else_crit_edge ], [ null, %lor.lhs.false.i.if.else_crit_edge ], [ null, %skb_sec_path.exit.i.if.else_crit_edge ], [ null, %entry.if.else_crit_edge ]
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i102 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i102, label %if.else.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.else.skb_dst.exit_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.else
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i103 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i103, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

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
  %tobool.not114 = phi i1 [ false, %skb_sec_path.exit ], [ %tobool.not115, %skb_dst.exit ]
  %retval.0.i112 = phi ptr [ %arrayidx.i, %skb_sec_path.exit ], [ %retval.0.i113, %skb_dst.exit ]
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
  br i1 %tobool.not114, label %if.end.if.else61_crit_edge, label %land.lhs.true7

if.end.if.else61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else61

land.lhs.true7:                                   ; preds = %if.end
  %flags8 = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i112, i32 0, i32 1
  %30 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags8, align 4
  %and9 = and i32 %31, 128
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
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !105
  %33 = ptrtoint ptr %x.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %x.0, align 4
  %xfrm_statistics = getelementptr inbounds %struct.net, ptr %34, i32 0, i32 30, i32 6
  %35 = ptrtoint ptr %xfrm_statistics to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xfrm_statistics, align 4
  %arrayidx28 = getelementptr [29 x i32], ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %arrayidx28 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !85) #13
  %and.i105 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i105 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu, align 4
  %arrayidx31 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx31, align 4
  %add = add i32 %43, %37
  %44 = inttoptr i32 %add to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add32 = add i32 %46, 1
  store i32 %add32, ptr %44, align 4
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !106
  %and.i.i = and i32 %47, 128
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
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #13, !srcloc !107
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #13
  br label %cleanup

if.end57:                                         ; preds = %if.then11
  %data58 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %48 = ptrtoint ptr %data58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data58, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %50 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %52 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %53 to i32
  %add.ptr.i = getelementptr i8, ptr %51, i32 %conv.i
  %sub.ptr.lhs.cast = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call60 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %sub.ptr.sub) #13
  %54 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %56 = and i8 %55, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.i.not.i.i107 = icmp eq i8 %56, 0
  br i1 %tobool.i.not.i.i107, label %if.end57.secpath_reset.exit_crit_edge, label %if.then.i.i108

if.end57.secpath_reset.exit_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %secpath_reset.exit

if.then.i.i108:                                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__skb_ext_del(ptr noundef %1, i32 noundef 1) #13
  br label %secpath_reset.exit

secpath_reset.exit:                               ; preds = %if.then.i.i108, %if.end57.secpath_reset.exit_crit_edge
  tail call void @xfrm_dev_resume(ptr noundef %1) #13
  br label %cleanup

if.else61:                                        ; preds = %land.lhs.true7.if.else61_crit_edge, %if.end.if.else61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool62.not = icmp eq i32 %err, 0
  br i1 %tobool62.not, label %land.lhs.true63, label %if.else61.if.else72_crit_edge

if.else61.if.else72_crit_edge:                    ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else72

land.lhs.true63:                                  ; preds = %if.else61
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x.0, i32 0, i32 24
  %57 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %encap, align 8
  %tobool64.not = icmp eq ptr %58, null
  br i1 %tobool64.not, label %land.lhs.true63.if.else72_crit_edge, label %land.lhs.true65

land.lhs.true63.if.else72_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else72

land.lhs.true65:                                  ; preds = %land.lhs.true63
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %60)
  %cmp68 = icmp eq i16 %60, 7
  br i1 %cmp68, label %if.then70, label %land.lhs.true65.if.else72_crit_edge

land.lhs.true65.if.else72_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else72

if.then70:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @local_bh_disable() #13
  %61 = ptrtoint ptr %x.0 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %x.0, align 4
  %call1.i = tail call i32 @xfrm_trans_queue_net(ptr noundef %62, ptr noundef %1, ptr noundef nonnull @esp_output_tcp_encap_cb) #13
  tail call fastcc void @local_bh_enable() #13
  br label %cleanup

if.else72:                                        ; preds = %land.lhs.true65.if.else72_crit_edge, %land.lhs.true63.if.else72_crit_edge, %if.else61.if.else72_crit_edge
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %call73 = tail call i32 @xfrm_output_resume(ptr noundef %65, ptr noundef %1, i32 noundef %err) #13
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
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #13, !srcloc !108
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
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !109
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !112
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
define dso_local i32 @esp_input_done2(ptr noundef %skb, i32 noundef %err) #0 align 64 {
entry:
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
  %sub.i163 = add i32 %3, -1
  %arrayidx.i164 = getelementptr %struct.sec_path, ptr null, i32 0, i32 2, i32 %sub.i163
  %4 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i164, align 4
  br label %xfrm_offload.exit.thread

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
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.xfrm_offload.exit.thread_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.xfrm_offload.exit.thread_crit_edge: ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit.thread

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_offload.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.xfrm_offload.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.not.i = icmp eq i32 %17, %15
  br i1 %cmp.not.i, label %xfrm_offload.exit, label %lor.lhs.false2.i.xfrm_offload.exit.thread_crit_edge

lor.lhs.false2.i.xfrm_offload.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_offload.exit.thread

xfrm_offload.exit.thread:                         ; preds = %lor.lhs.false2.i.xfrm_offload.exit.thread_crit_edge, %lor.lhs.false.i.xfrm_offload.exit.thread_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit.thread_crit_edge, %xfrm_input_state.exit.thread
  %.ph = phi ptr [ %5, %xfrm_input_state.exit.thread ], [ %13, %skb_sec_path.exit.i.xfrm_offload.exit.thread_crit_edge ], [ %13, %lor.lhs.false.i.xfrm_offload.exit.thread_crit_edge ], [ %13, %lor.lhs.false2.i.xfrm_offload.exit.thread_crit_edge ]
  %data166 = getelementptr inbounds %struct.xfrm_state, ptr %.ph, i32 0, i32 51
  %18 = ptrtoint ptr %data166 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data166, align 8
  %__crt_alg.i.i167 = getelementptr inbounds %struct.crypto_aead, ptr %19, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %__crt_alg.i.i167 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i167, align 4
  %ivsize.i.i168 = getelementptr i8, ptr %21, i32 -104
  %22 = ptrtoint ptr %ivsize.i.i168 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ivsize.i.i168, align 8
  %add169 = add i32 %23, 8
  br label %if.then

xfrm_offload.exit:                                ; preds = %lor.lhs.false2.i
  %sub.i152 = add i32 %15, -1
  %arrayidx.i153 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i152
  %data = getelementptr inbounds %struct.xfrm_state, ptr %13, i32 0, i32 51
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %25, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %27, i32 -104
  %28 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ivsize.i.i, align 8
  %add = add i32 %29, 8
  %tobool.not = icmp eq ptr %arrayidx.i153, null
  br i1 %tobool.not, label %xfrm_offload.exit.if.then_crit_edge, label %lor.lhs.false

xfrm_offload.exit.if.then_crit_edge:              ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %xfrm_offload.exit
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %arrayidx.i153, i32 0, i32 1
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %xfrm_offload.exit.if.then_crit_edge, %xfrm_offload.exit.thread
  %add172 = phi i32 [ %add169, %xfrm_offload.exit.thread ], [ %add, %lor.lhs.false.if.then_crit_edge ], [ %add, %xfrm_offload.exit.if.then_crit_edge ]
  %32 = phi ptr [ %.ph, %xfrm_offload.exit.thread ], [ %13, %lor.lhs.false.if.then_crit_edge ], [ %13, %xfrm_offload.exit.if.then_crit_edge ]
  %tmp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %33 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tmp, align 4
  tail call void @kfree(ptr noundef %34) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %add171 = phi i32 [ %add172, %if.then ], [ %add, %lor.lhs.false.if.end_crit_edge ]
  %35 = phi ptr [ %32, %if.then ], [ %13, %lor.lhs.false.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool4.not = icmp eq i32 %err, 0
  br i1 %tobool4.not, label %if.end8, label %if.end.cleanup109_crit_edge, !prof !98

if.end.cleanup109_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup109

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc i32 @esp_remove_trailer(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup109_crit_edge, label %if.end17, !prof !99

if.end8.cleanup109_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup109

if.end17:                                         ; preds = %if.end8
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
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = shl i8 %bf.load, 2
  %41 = and i8 %bf.clear, 60
  %mul = zext i8 %41 to i32
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %35, i32 0, i32 24
  %42 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %encap, align 8
  %tobool19.not = icmp eq ptr %43, null
  br i1 %tobool19.not, label %if.end17.if.end96_crit_edge, label %if.then20

if.end17.if.end96_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

if.then20:                                        ; preds = %if.end17
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 4
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %45, label %land.end [
    i16 7, label %if.then20.sw.epilog_crit_edge
    i16 2, label %if.then20.sw.epilog_crit_edge176
    i16 1, label %if.then20.sw.epilog_crit_edge177
  ]

if.then20.sw.epilog_crit_edge177:                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then20.sw.epilog_crit_edge176:                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then20.sw.epilog_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.end:                                         ; preds = %if.then20
  %.b143 = load i1, ptr @esp_input_done2.__already_done, align 1
  br i1 %.b143, label %land.end.cleanup109_crit_edge, label %if.then42, !prof !98

land.end.cleanup109_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup109

if.then42:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @esp_input_done2.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 788, i32 noundef 9, ptr noundef null) #13
  br label %cleanup109

sw.epilog:                                        ; preds = %if.then20.sw.epilog_crit_edge, %if.then20.sw.epilog_crit_edge176, %if.then20.sw.epilog_crit_edge177
  %source.0.in = getelementptr i8, ptr %add.ptr.i.i, i32 %mul
  %47 = ptrtoint ptr %source.0.in to i32
  call void @__asan_load2_noabort(i32 %47)
  %source.0 = load i16, ptr %source.0.in, align 2
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %saddr, align 4
  %saddr73 = getelementptr inbounds %struct.xfrm_state, ptr %35, i32 0, i32 14, i32 8
  %50 = ptrtoint ptr %saddr73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %saddr73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp74.not = icmp eq i32 %49, %51
  br i1 %cmp74.not, label %lor.lhs.false76, label %sw.epilog.if.then81_crit_edge

sw.epilog.if.then81_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then81

lor.lhs.false76:                                  ; preds = %sw.epilog
  %encap_sport = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %43, i32 0, i32 1
  %52 = ptrtoint ptr %encap_sport to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %encap_sport, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %source.0, i16 %53)
  %cmp79.not = icmp eq i16 %source.0, %53
  br i1 %cmp79.not, label %lor.lhs.false76.if.end84_crit_edge, label %lor.lhs.false76.if.then81_crit_edge

lor.lhs.false76.if.then81_crit_edge:              ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then81

lor.lhs.false76.if.end84_crit_edge:               ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then81:                                        ; preds = %lor.lhs.false76.if.then81_crit_edge, %sw.epilog.if.then81_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ipaddr) #13
  %54 = getelementptr inbounds i8, ptr %ipaddr, i32 4
  %55 = call ptr @memset(ptr %54, i32 255, i32 12)
  %56 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %saddr, align 4
  %58 = ptrtoint ptr %ipaddr to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %ipaddr, align 4
  %call83 = call i32 @km_new_mapping(ptr noundef %35, ptr noundef nonnull %ipaddr, i16 noundef zeroext %source.0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ipaddr) #13
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %lor.lhs.false76.if.end84_crit_edge
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %35, i32 0, i32 14, i32 1
  %59 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp87 = icmp eq i8 %60, 0
  br i1 %cmp87, label %if.then89, label %if.end84.if.end96_crit_edge

if.end84.if.end96_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %61 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load90 = load i16, ptr %ip_summed, align 8
  %bf.clear91 = and i16 %bf.load90, -1537
  %bf.set = or i16 %bf.clear91, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then89, %if.end84.if.end96_crit_edge, %if.end17.if.end96_crit_edge
  %call97 = call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef %add171) #13
  %mode99 = getelementptr inbounds %struct.xfrm_state, ptr %35, i32 0, i32 14, i32 1
  %62 = ptrtoint ptr %mode99 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %mode99, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp101 = icmp eq i8 %63, 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i, align 4
  %66 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i159 = trunc i32 %sub.ptr.sub.i to i16
  %narrow = select i1 %cmp101, i8 0, i8 %41
  %conv1.i = zext i8 %narrow to i16
  %conv1.i.sink = sub i16 %conv.i159, %conv1.i
  %68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv1.i.sink, ptr %68, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %call9)
  %cmp105 = icmp eq i32 %call9, 59
  %spec.store.select = select i1 %cmp105, i32 -22, i32 %call9
  br label %cleanup109

cleanup109:                                       ; preds = %if.end96, %if.then42, %land.end.cleanup109_crit_edge, %if.end8.cleanup109_crit_edge, %if.end.cleanup109_crit_edge
  %err.addr.2 = phi i32 [ %err, %if.end.cleanup109_crit_edge ], [ %call9, %if.end8.cleanup109_crit_edge ], [ %spec.store.select, %if.end96 ], [ -22, %if.then42 ], [ -22, %land.end.cleanup109_crit_edge ]
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
  %sub.i90 = add i32 %3, -1
  %arrayidx.i91 = getelementptr %struct.sec_path, ptr null, i32 0, i32 2, i32 %sub.i90
  %4 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i91, align 4
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
  %conv.i.i.i77 = zext i8 %9 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i77, 3
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
  %sub.i86 = add i32 %15, -1
  %arrayidx.i87 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i86
  br label %xfrm_offload.exit

xfrm_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge, %lor.lhs.false.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, %xfrm_input_state.exit.thread
  %18 = phi ptr [ %13, %if.end.i ], [ %13, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ %13, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ %13, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ %5, %xfrm_input_state.exit.thread ]
  %retval.0.i88 = phi ptr [ %arrayidx.i87, %if.end.i ], [ null, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ null, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ null, %xfrm_input_state.exit.thread ]
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
  %tobool.not = icmp eq ptr %retval.0.i88, null
  br i1 %tobool.not, label %xfrm_offload.exit.if.end_crit_edge, label %land.lhs.true

xfrm_offload.exit.if.end_crit_edge:               ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %xfrm_offload.exit
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i88, i32 0, i32 1
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
  %proto = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i88, i32 0, i32 3
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
  br i1 %tobool9.not, label %if.end14, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/esp4.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 727, 0\0A.popsection", ""() #13, !srcloc !113
  unreachable

if.end14:                                         ; preds = %if.end
  %36 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nexthdr, align 1
  %conv15 = zext i8 %37 to i32
  %add16 = add nuw nsw i32 %conv15, 2
  %add17 = add i32 %add16, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %sub)
  %cmp.not = icmp slt i32 %add17, %sub
  br i1 %cmp.not, label %if.end34, label %do.body20

do.body20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esp_remove_trailer.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esp_remove_trailer, %land.lhs.true25)) #13
          to label %out [label %land.lhs.true25], !srcloc !102

land.lhs.true25:                                  ; preds = %do.body20
  %call26 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.out_crit_edge, label %if.then28

land.lhs.true25.out_crit_edge:                    ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  %sub30 = sub i32 %sub, %25
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @esp_remove_trailer.descriptor, ptr noundef nonnull @.str.17, i32 noundef %add16, i32 noundef %sub30) #13
  br label %out

if.end34:                                         ; preds = %if.end14
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %38 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load = load i16, ptr %ip_summed, align 8
  %39 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %39)
  %cmp38 = icmp eq i16 %39, 1024
  br i1 %cmp38, label %if.then40, label %if.end34.if.end47_crit_edge

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %sub42 = sub i32 %41, %add17
  %call43 = call i32 @skb_checksum(ptr noundef %skb, i32 noundef %sub42, i32 noundef %add17, i32 noundef 0) #13
  %42 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %sub45 = sub i32 %46, %add17
  %neg.i = xor i32 %call43, -1
  %and.i.i.i = and i32 %sub45, 1
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
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %if.end34.if.end47_crit_edge
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %sub49 = sub i32 %49, %add17
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %sub49)
  %cmp.i = icmp ugt i32 %49, %sub49
  br i1 %cmp.i, label %cond.true.i, label %if.end47.pskb_trim.exit_crit_edge

if.end47.pskb_trim.exit_crit_edge:                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %pskb_trim.exit

cond.true.i:                                      ; preds = %if.end47
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %50 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i, label %__skb_trim.exit.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %sub49) #13
  br label %pskb_trim.exit

__skb_trim.exit.i.i:                              ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub49, ptr %len, align 4
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %54, i32 %sub49
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %55 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %pskb_trim.exit

pskb_trim.exit:                                   ; preds = %__skb_trim.exit.i.i, %if.then.i.i, %if.end47.pskb_trim.exit_crit_edge
  %56 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %22, align 1
  %conv52 = zext i8 %57 to i32
  br label %out

out:                                              ; preds = %pskb_trim.exit, %if.then28, %land.lhs.true25.out_crit_edge, %do.body20, %if.then
  %ret.0 = phi i32 [ %conv, %if.then ], [ -22, %if.then28 ], [ -22, %land.lhs.true25.out_crit_edge ], [ %conv52, %pskb_trim.exit ], [ -22, %do.body20 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nexthdr) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @km_new_mapping(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @esp4_fini() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @esp4_protocol, i8 noundef zeroext 50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @xfrm_unregister_type(ptr noundef nonnull @esp_type, i16 noundef zeroext 2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_protocol_deregister(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_unregister_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @esp4_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm_register_type(ptr noundef nonnull @esp_type, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #17
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @xfrm4_protocol_register(ptr noundef nonnull @esp4_protocol, i8 noundef zeroext 50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #17
  tail call void @xfrm_unregister_type(ptr noundef nonnull @esp_type, i16 noundef zeroext 2) #13
  br label %return

return:                                           ; preds = %do.end6, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ -11, %do.end6 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @esp_find_tcp_sk(ptr noundef %x) unnamed_addr #0 align 64 {
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
  %.b192 = load i1, ptr @esp_find_tcp_sk.__warned, align 1
  br i1 %.b192, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @esp_find_tcp_sk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 142, ptr noundef nonnull @.str.5) #13
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
  %.b188191 = load i1, ptr @esp_find_tcp_sk.__warned.6, align 1
  br i1 %.b188191, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @esp_find_tcp_sk.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 150, ptr noundef nonnull @.str.7) #13
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
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2592, i32 noundef 12) #18
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
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %saddr = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %19 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %saddr, align 4
  %call.i193 = tail call ptr @__inet_lookup_established(ptr noundef %16, ptr noundef nonnull @tcp_hashinfo, i32 noundef %18, i16 noundef zeroext %9, i32 noundef %20, i16 noundef zeroext %7, i32 noundef 0, i32 noundef 0) #13
  %tobool59.not = icmp eq ptr %call.i193, null
  br i1 %tobool59.not, label %if.end55.cleanup_crit_edge, label %if.end62

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  %call63 = tail call zeroext i1 @tcp_is_ulp_esp(ptr noundef nonnull %call.i193) #13
  br i1 %call63, label %if.end66, label %if.then64

if.then64:                                        ; preds = %if.end62
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call.i193, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !115
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  tail call void @sk_free(ptr noundef nonnull %call.i193) #13
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %call.i194 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool72.not = icmp eq i32 %call.i194, 0
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
  %.b189190 = load i1, ptr @esp_find_tcp_sk.__warned.8, align 1
  br i1 %.b189190, label %land.lhs.true76.do.end81_crit_edge, label %if.then78

land.lhs.true76.do.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end81

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @esp_find_tcp_sk.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @.str.7) #13
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %land.lhs.true76.do.end81_crit_edge, %land.lhs.true73.do.end81_crit_edge, %if.end66.do.end81_crit_edge
  %22 = ptrtoint ptr %encap_sk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %encap_sk, align 4
  %24 = ptrtoint ptr %encap_sport to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %encap_sport, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %7)
  %cmp87.not = icmp eq i16 %25, %7
  br i1 %cmp87.not, label %lor.lhs.false, label %do.end81.if.then94_crit_edge

do.end81.if.then94_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then94

lor.lhs.false:                                    ; preds = %do.end81
  %26 = ptrtoint ptr %encap_dport to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %encap_dport, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %9)
  %cmp92.not = icmp eq i16 %27, %9
  br i1 %cmp92.not, label %if.else, label %lor.lhs.false.if.then94_crit_edge

lor.lhs.false.if.then94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then94

if.then94:                                        ; preds = %lor.lhs.false.if.then94_crit_edge, %do.end81.if.then94_crit_edge
  %skc_refcnt.i195 = getelementptr inbounds %struct.sock_common, ptr %call.i193, i32 0, i32 19
  %call.i.i.i.i.i.i196 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i195, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i195, i32 1, i32 3, i32 1) #13
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i195, ptr %skc_refcnt.i195, i32 1, ptr elementtype(i32) %skc_refcnt.i195) #13, !srcloc !115
  %asmresult.i.i.i.i.i.i.i197 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i197)
  %cmp.i.i.i.i198 = icmp eq i32 %asmresult.i.i.i.i.i.i.i197, 1
  br i1 %cmp.i.i.i.i198, label %if.then.i202, label %if.end5.i.i.i.i200

if.end5.i.i.i.i200:                               ; preds = %if.then94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i197)
  %.not.i.i.i.i199 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i197, 0
  br i1 %.not.i.i.i.i199, label %if.end5.i.i.i.i200.sock_put.exit203_crit_edge, label %if.then10.i.i.i.i201, !prof !98

if.end5.i.i.i.i200.sock_put.exit203_crit_edge:    ; preds = %if.end5.i.i.i.i200
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_put.exit203

if.then10.i.i.i.i201:                             ; preds = %if.end5.i.i.i.i200
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i195, i32 noundef 3) #13
  br label %sock_put.exit203

if.then.i202:                                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  tail call void @sk_free(ptr noundef nonnull %call.i193) #13
  br label %sock_put.exit203

sock_put.exit203:                                 ; preds = %if.then.i202, %if.then10.i.i.i.i201, %if.end5.i.i.i.i200.sock_put.exit203_crit_edge
  %tobool95.not = icmp eq ptr %23, null
  %spec.select = select i1 %tobool95.not, ptr inttoptr (i32 -78 to ptr), ptr %23
  br label %if.end143

if.else:                                          ; preds = %lor.lhs.false
  %cmp97 = icmp eq ptr %call.i193, %23
  br i1 %cmp97, label %if.then99, label %do.body101

if.then99:                                        ; preds = %if.else
  %skc_refcnt.i204 = getelementptr inbounds %struct.sock_common, ptr %call.i193, i32 0, i32 19
  %call.i.i.i.i.i.i205 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i204, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i204, i32 1, i32 3, i32 1) #13
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i204, ptr %skc_refcnt.i204, i32 1, ptr elementtype(i32) %skc_refcnt.i204) #13, !srcloc !115
  %asmresult.i.i.i.i.i.i.i206 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i206)
  %cmp.i.i.i.i207 = icmp eq i32 %asmresult.i.i.i.i.i.i.i206, 1
  br i1 %cmp.i.i.i.i207, label %if.then.i211, label %if.end5.i.i.i.i209

if.end5.i.i.i.i209:                               ; preds = %if.then99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i206)
  %.not.i.i.i.i208 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i206, 0
  br i1 %.not.i.i.i.i208, label %if.end5.i.i.i.i209.if.end143_crit_edge, label %if.then10.i.i.i.i210, !prof !98

if.end5.i.i.i.i209.if.end143_crit_edge:           ; preds = %if.end5.i.i.i.i209
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

if.then10.i.i.i.i210:                             ; preds = %if.end5.i.i.i.i209
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i204, i32 noundef 3) #13
  br label %if.end143

if.then.i211:                                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  tail call void @sk_free(ptr noundef nonnull %call.i193) #13
  br label %if.end143

do.body101:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !117
  %30 = ptrtoint ptr %encap_sk to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call.i193, ptr %encap_sk, align 4
  br label %if.end143

if.end143:                                        ; preds = %do.body101, %if.then.i211, %if.then10.i.i.i.i210, %if.end5.i.i.i.i209.if.end143_crit_edge, %sock_put.exit203
  %sk.0 = phi ptr [ %call.i193, %do.body101 ], [ %call.i193, %if.end5.i.i.i.i209.if.end143_crit_edge ], [ %call.i193, %if.then10.i.i.i.i210 ], [ %call.i193, %if.then.i211 ], [ %spec.select, %sock_put.exit203 ]
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !115
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  tail call void @sk_free(ptr noundef %1) #13
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_is_ulp_esp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet_lookup_established(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

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
  %call.i3 = tail call fastcc ptr @esp_find_tcp_sk(ptr noundef %7) #13
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
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_rcv(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @esp4_rcv_cb(ptr nocapture noundef readnone %skb, i32 noundef %err) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp4_err(ptr noundef %skb, i32 noundef %info) #0 align 64 {
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
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %6, align 4
  %bf.clear = shl i8 %bf.load, 2
  %8 = and i8 %bf.clear, 60
  %shl = zext i8 %8 to i32
  %add.ptr = getelementptr i8, ptr %6, i32 %shl
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i.i, align 4
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %14, label %entry.cleanup_crit_edge [
    i8 3, label %sw.bb
    i8 5, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %code = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp.not = icmp eq i8 %17, 4
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %6, i32 0, i32 9
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr, align 4
  %call7 = tail call ptr @xfrm_state_lookup(ptr noundef %4, i32 noundef %20, ptr noundef %daddr, i32 noundef %22, i8 noundef zeroext 50, i16 noundef zeroext 2) #13
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %25 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i38 = zext i16 %26 to i32
  %add.ptr.i.i39 = getelementptr i8, ptr %24, i32 %conv.i.i38
  %27 = ptrtoint ptr %add.ptr.i.i39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp13 = icmp eq i8 %28, 3
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ipv4_update_pmtu(ptr noundef %skb, ptr noundef %4, i32 noundef %info, i32 noundef 0, i8 noundef zeroext 50) #13
  br label %if.end16

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ipv4_redirect(ptr noundef %skb, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 50) #13
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call7, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !115
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end16
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

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call7, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_redirect(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_init_state(ptr nocapture noundef %x) #0 align 64 {
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
  %tobool.not.i75 = icmp eq ptr %18, null
  br i1 %tobool.not.i75, label %if.else.esp_init_authenc.exit_crit_edge, label %if.end.i76

if.else.esp_init_authenc.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_init_authenc.exit

if.end.i76:                                       ; preds = %if.else
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

if.then2.i:                                       ; preds = %if.end.i76
  %call.i77 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %authenc_name.i, i32 noundef 128, ptr noundef nonnull @.str.19, ptr noundef %..str.20154.i, ptr noundef nonnull %cond32.i, ptr noundef nonnull %spec.select211.i, ptr noundef nonnull %18, ptr noundef nonnull %cond47.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call.i77)
  %cmp.i78 = icmp sgt i32 %call.i77, 127
  br i1 %cmp.i78, label %if.then2.i.esp_init_authenc.exit_crit_edge, label %if.then2.i.if.end53.i_crit_edge

if.then2.i.if.end53.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.i

if.then2.i.esp_init_authenc.exit_crit_edge:       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_init_authenc.exit

if.else.i:                                        ; preds = %if.end.i76
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
  %alg_key_len.i80 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %alg_key_len.i80 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %alg_key_len.i80, align 4
  %add.i81 = add i32 %30, 7
  %div210.i = lshr i32 %add.i81, 3
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
  %alg_key.i83 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %38, i32 0, i32 3
  %alg_key_len84.i = getelementptr inbounds %struct.xfrm_algo_auth, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %alg_key_len84.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %alg_key_len84.i, align 4
  %add85.i = add i32 %40, 7
  %div86207.i = lshr i32 %add85.i, 3
  %41 = call ptr @memcpy(ptr %add.ptr77.i, ptr %alg_key.i83, i32 %div86207.i)
  %42 = load i32, ptr %alg_key_len84.i, align 4
  %add89.i = add i32 %42, 7
  %div90208.i = lshr i32 %add89.i, 3
  %add.ptr91.i = getelementptr i8, ptr %add.ptr77.i, i32 %div90208.i
  %call95.i = call ptr @xfrm_aalg_get_byname(ptr noundef nonnull %38, i32 noundef 0) #13
  %tobool96.not.i = icmp eq ptr %call95.i, null
  br i1 %tobool96.not.i, label %do.body101.i, label %do.end107.i, !prof !99

do.body101.i:                                     ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/esp4.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1113, 0\0A.popsection", ""() #13, !srcloc !118
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
  %call125.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %49, i32 noundef %47, i32 noundef %div109.i) #17
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
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup52_crit_edge

if.end.cleanup52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup52

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
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %67, label %if.end5.if.end28_crit_edge [
    i8 1, label %if.end5.if.end28.sink.split_crit_edge
    i8 4, label %land.lhs.true
  ]

if.end5.if.end28.sink.split_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.sink.split

if.end5.if.end28_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end5
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 8, i32 6
  %69 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %70)
  %cmp21.not = icmp eq i16 %70, 10
  br i1 %cmp21.not, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true.if.end28.sink.split_crit_edge

land.lhs.true.if.end28.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.sink.split

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.end28.sink.split:                              ; preds = %land.lhs.true.if.end28.sink.split_crit_edge, %if.end5.if.end28.sink.split_crit_edge
  %.sink = phi i32 [ 28, %if.end5.if.end28.sink.split_crit_edge ], [ 16, %land.lhs.true.if.end28.sink.split_crit_edge ]
  %add26 = add i32 %64, %.sink
  %71 = ptrtoint ptr %header_len to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add26, ptr %header_len, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %land.lhs.true.if.end28_crit_edge, %if.end5.if.end28_crit_edge
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %72 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %encap, align 8
  %tobool29.not = icmp eq ptr %73, null
  br i1 %tobool29.not, label %if.end28.if.end45_crit_edge, label %if.then30

if.end28.if.end45_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then30:                                        ; preds = %if.end28
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %73, align 4
  %76 = zext i16 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %75, label %if.then30.cleanup52_crit_edge [
    i16 2, label %if.then30.if.end45.sink.split_crit_edge
    i16 1, label %sw.bb37
    i16 7, label %sw.bb41
  ]

if.then30.if.end45.sink.split_crit_edge:          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.sink.split

if.then30.cleanup52_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup52

sw.bb37:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.sink.split

sw.bb41:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %sw.bb41, %sw.bb37, %if.then30.if.end45.sink.split_crit_edge
  %.sink89 = phi i32 [ 16, %sw.bb37 ], [ 2, %sw.bb41 ], [ 8, %if.then30.if.end45.sink.split_crit_edge ]
  %77 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %header_len, align 4
  %add36 = add i32 %78, %.sink89
  store i32 %add36, ptr %header_len, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %if.end28.if.end45_crit_edge
  %79 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cra_blocksize.i.i, align 4
  %add47 = add i32 %82, 3
  %and = and i32 %add47, -4
  %83 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %60, align 128
  %add48 = add i32 %84, 1
  %add50 = add i32 %add48, %and
  %trailer_len = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 10
  %85 = ptrtoint ptr %trailer_len to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add50, ptr %trailer_len, align 4
  br label %cleanup52

cleanup52:                                        ; preds = %if.end45, %if.then30.cleanup52_crit_edge, %if.end.cleanup52_crit_edge
  %err.3 = phi i32 [ %err.0, %if.end.cleanup52_crit_edge ], [ 0, %if.end45 ], [ -22, %if.then30.cleanup52_crit_edge ]
  ret i32 %err.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esp_destroy(ptr nocapture noundef readonly %x) #0 align 64 {
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
define internal i32 @esp_input(ptr nocapture noundef readonly %x, ptr noundef %skb) #0 align 64 {
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
  %end.i.i115 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %23 = ptrtoint ptr %end.i.i115 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i115, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %frag_list.i, align 8
  %cmp.i116.not = icmp eq ptr %26, null
  br i1 %cmp.i116.not, label %if.then15, label %if.else.if.end20_crit_edge

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
  %nfrags.0 = phi i32 [ %inc, %if.then15 ], [ 1, %if.then11.skip_cow_crit_edge ], [ %call21, %if.end20.skip_cow_crit_edge ]
  %29 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %30, i32 -104
  %31 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ivsize.i.i.i, align 8
  %add.i = add i32 %32, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i117 = icmp eq i32 %add.i, 0
  br i1 %tobool.not.i117, label %skip_cow.if.end.i119_crit_edge, label %if.then.i

skip_cow.if.end.i119_crit_edge:                   ; preds = %skip_cow
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i119

if.then.i:                                        ; preds = %skip_cow
  call void @__sanitizer_cov_trace_pc() #15
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %30, i32 0, i32 5
  %33 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %and.i118 = and i32 %34, -128
  %add3.i = add i32 %add.i, 127
  %add6.i = add i32 %add3.i, %and.i118
  %and10.i = and i32 %add6.i, -128
  %phi.bo.i = add i32 %and10.i, 131
  br label %if.end.i119

if.end.i119:                                      ; preds = %if.then.i, %skip_cow.if.end.i119_crit_edge
  %len.0.i = phi i32 [ %phi.bo.i, %if.then.i ], [ 131, %skip_cow.if.end.i119_crit_edge ]
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
  br i1 %tobool27.not, label %if.end.i119.out_crit_edge, label %if.end29

if.end.i119.out_crit_edge:                        ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end29:                                         ; preds = %if.end.i119
  %tmp30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %37 = ptrtoint ptr %tmp30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i.i, ptr %tmp30, align 4
  %38 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i.i123 = getelementptr i8, ptr %39, i32 -104
  %40 = ptrtoint ptr %ivsize.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ivsize.i.i.i123, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i124 = icmp eq i32 %41, 0
  %add.ptr6.i = getelementptr i8, ptr %call9.i.i, i32 %15
  br i1 %tobool.not.i124, label %if.end29.esp_tmp_iv.exit_crit_edge, label %cond.true.i

if.end29.esp_tmp_iv.exit_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_tmp_iv.exit

cond.true.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %add.ptr6.i to i32
  %cra_alignmask.i.i.i125 = getelementptr inbounds %struct.crypto_alg, ptr %39, i32 0, i32 5
  %43 = ptrtoint ptr %cra_alignmask.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cra_alignmask.i.i.i125, align 4
  %add2.i = add i32 %44, %42
  %neg.i = xor i32 %44, -1
  %and.i126 = and i32 %add2.i, %neg.i
  %45 = inttoptr i32 %and.i126 to ptr
  br label %esp_tmp_iv.exit

esp_tmp_iv.exit:                                  ; preds = %cond.true.i, %if.end29.esp_tmp_iv.exit_crit_edge
  %cond.i = phi ptr [ %45, %cond.true.i ], [ %add.ptr6.i, %if.end29.esp_tmp_iv.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %cond.i, i32 %41
  %46 = ptrtoint ptr %add.ptr.i to i32
  %add.i129 = add i32 %46, 127
  %and.i130 = and i32 %add.i129, -128
  %47 = inttoptr i32 %and.i130 to ptr
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %add.ptr.i131 = getelementptr %struct.aead_request, ptr %47, i32 1
  %49 = ptrtoint ptr %add.ptr.i131 to i32
  %50 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reqsize.i.i, align 4
  %add.i133 = add i32 %51, 3
  %add1.i = add i32 %add.i133, %49
  %and.i134 = and i32 %add1.i, -4
  %52 = inttoptr i32 %and.i134 to ptr
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
  %sub.i.i135 = add i32 %61, -1
  %arrayidx.i.i = getelementptr %struct.sec_path, ptr %retval.0.i.i.i.i, i32 0, i32 2, i32 %sub.i.i135
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %flags.i = getelementptr inbounds %struct.xfrm_state, ptr %63, i32 0, i32 14, i32 6
  %64 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %tobool.not.i136 = icmp sgt i8 %65, -1
  br i1 %tobool.not.i136, label %xfrm_input_state.exit.i.esp_input_set_header.exit_crit_edge, label %if.then.i137

xfrm_input_state.exit.i.esp_input_set_header.exit_crit_edge: ; preds = %xfrm_input_state.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %esp_input_set_header.exit

if.then.i137:                                     ; preds = %xfrm_input_state.exit.i
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

esp_input_set_header.exit:                        ; preds = %if.then.i137, %xfrm_input_state.exit.i.esp_input_set_header.exit_crit_edge
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
  %spec.select154 = select i1 %tobool47.not, ptr @esp_input_done, ptr @esp_input_done_esn
  %78 = getelementptr inbounds %struct.crypto_async_request, ptr %47, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %spec.select154, ptr %78, align 8
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
  %sub.i.i142 = add i32 %103, -4
  store i32 %sub.i.i142, ptr %len, align 4
  %104 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i142, i32 %105)
  %cmp.i.i144 = icmp ult i32 %sub.i.i142, %105
  br i1 %cmp.i.i144, label %do.body4.i.i, label %esp_input_restore_header.exit, !prof !99

do.body4.i.i:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #13, !srcloc !119
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
  %call64 = call i32 @esp_input_done2(ptr noundef %skb, i32 noundef %call52)
  br label %out

out:                                              ; preds = %if.end63, %if.end42.out_crit_edge, %if.then41, %if.end.i119.out_crit_edge, %if.end20.out_crit_edge, %pskb_may_pull.exit.out_crit_edge, %if.end.i.out_crit_edge
  %err.0 = phi i32 [ %call21, %if.end20.out_crit_edge ], [ %call36, %if.then41 ], [ -115, %if.end42.out_crit_edge ], [ %call64, %if.end63 ], [ -12, %if.end.i119.out_crit_edge ], [ -22, %pskb_may_pull.exit.out_crit_edge ], [ -22, %if.end.i.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer) #13
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_output(ptr noundef %x, ptr noundef %skb) #0 align 64 {
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
  %call31 = call i32 @esp_output_head(ptr noundef %x, ptr noundef %skb, ptr noundef nonnull %esp)
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
  %call51 = call i32 @esp_output_tail(ptr noundef %x, ptr noundef %skb, ptr noundef nonnull %esp)
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
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #13, !srcloc !119
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
  %call.i = tail call i32 @esp_input_done2(ptr noundef %20, i32 noundef %err) #13
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
  %call = tail call i32 @esp_input_done2(ptr noundef %1, i32 noundef %err)
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
declare dso_local i32 @xfrm4_protocol_register(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

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
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !18, !20, !21, !23, !25, !26, !27, !29, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !47, !49, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__ksymtab_esp_output_head, !1, !"__ksymtab_esp_output_head", i1 false, i1 false}
!1 = !{!"../net/ipv4/esp4.c", i32 532, i32 1}
!2 = !{ptr @__ksymtab_esp_output_tail, !3, !"__ksymtab_esp_output_tail", i1 false, i1 false}
!3 = !{!"../net/ipv4/esp4.c", i32 654, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/ipv4/esp4.c", i32 788, i32 4}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_esp_input_done2, !8, !"__ksymtab_esp_input_done2", i1 false, i1 false}
!8 = !{!"../net/ipv4/esp4.c", i32 839, i32 1}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/ipv4/esp4.c", i32 1239, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @esp4_fini._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @esp4_fini._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_esp4__629_1243_esp4_init6, !15, !"__initcall__kmod_esp4__629_1243_esp4_init6", i1 false, i1 false}
!15 = !{!"../net/ipv4/esp4.c", i32 1243, i32 1}
!16 = !{ptr @__exitcall_esp4_fini, !17, !"__exitcall_esp4_fini", i1 false, i1 false}
!17 = !{!"../net/ipv4/esp4.c", i32 1244, i32 1}
!18 = !{ptr @__UNIQUE_ID_file630, !19, !"__UNIQUE_ID_file630", i1 false, i1 false}
!19 = !{!"../net/ipv4/esp4.c", i32 1245, i32 1}
!20 = !{ptr @__UNIQUE_ID_license631, !19, !"__UNIQUE_ID_license631", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_alias632, !22, !"__UNIQUE_ID_alias632", i1 false, i1 false}
!22 = !{!"../net/ipv4/esp4.c", i32 1246, i32 1}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/ipv4/esp4.c", i32 142, i32 7}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/ipv4/esp4.c", i32 149, i32 8}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/ipv4/esp4.c", i32 174, i32 8}
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
!48 = !{!"../net/ipv4/esp4.c", i32 732, i32 3}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @esp_remove_trailer.descriptor, !48, !"descriptor", i1 false, i1 false}
!52 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @esp4_protocol, !54, !"esp4_protocol", i1 false, i1 false}
!54 = !{!"../net/ipv4/esp4.c", i32 1214, i32 30}
!55 = !{ptr @esp_type, !56, !"esp_type", i1 false, i1 false}
!56 = !{!"../net/ipv4/esp4.c", i32 1203, i32 31}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/ipv4/esp4.c", i32 1026, i32 47}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/ipv4/esp4.c", i32 1069, i32 9}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/ipv4/esp4.c", i32 1070, i32 21}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/ipv4/esp4.c", i32 1070, i32 36}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/ipv4/esp4.c", i32 1071, i32 39}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/ipv4/esp4.c", i32 1073, i32 20}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/ipv4/esp4.c", i32 1077, i32 9}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/ipv4/esp4.c", i32 1118, i32 4}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @esp_init_authenc._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @esp_init_authenc._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/ipv4/esp4.c", i32 1225, i32 3}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @esp4_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @esp4_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/ipv4/esp4.c", i32 1229, i32 3}
!83 = !{ptr @esp4_init._entry.29, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @esp4_init._entry_ptr.31, !82, !"_entry_ptr", i1 false, i1 false}
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
!96 = !{i64 2149990286}
!97 = !{i64 2149990552}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2153659186, i64 2153659670, i64 2153659223, i64 2153659279, i64 2153659313, i64 2153659337, i64 2153659378, i64 2153659399, i64 2153659427, i64 2153659461}
!101 = !{i64 2148206029, i64 2148206055, i64 2148206084, i64 2148206118, i64 2148206149, i64 2148206172}
!102 = !{i64 2148764438, i64 2148764443, i64 2148764456, i64 2148764500, i64 2148764534, i64 2148764555}
!103 = !{i64 2148207559, i64 2148207591, i64 2148207620, i64 2148207654, i64 2148207685, i64 2148207708}
!104 = !{i8 0, i8 2}
!105 = !{i64 659356, i64 659417}
!106 = !{i64 662088}
!107 = !{i64 662373}
!108 = !{i64 2154439103, i64 2154439595, i64 2154439140, i64 2154439196, i64 2154439230, i64 2154439254, i64 2154439295, i64 2154439316, i64 2154439344, i64 2154439378}
!109 = !{i64 2153639274, i64 2153639757, i64 2153639311, i64 2153639367, i64 2153639401, i64 2153639425, i64 2153639466, i64 2153639487, i64 2153639515, i64 2153639549}
!110 = !{i64 2148294481}
!111 = !{i64 2148209214, i64 2148209246, i64 2148209275, i64 2148209309, i64 2148209340, i64 2148209363}
!112 = !{i64 2148294710}
!113 = !{i64 2159125352, i64 2159125832, i64 2159125389, i64 2159125445, i64 2159125479, i64 2159125503, i64 2159125544, i64 2159125565, i64 2159125593, i64 2159125627}
!114 = !{i64 2148295560}
!115 = !{i64 2148210024, i64 2148210056, i64 2148210085, i64 2148210119, i64 2148210150, i64 2148210173}
!116 = !{i64 2148906173}
!117 = !{i64 2159097440}
!118 = !{i64 2159132560, i64 2159133041, i64 2159132597, i64 2159132653, i64 2159132687, i64 2159132711, i64 2159132752, i64 2159132773, i64 2159132801, i64 2159132835}
!119 = !{i64 2154672165, i64 2154672653, i64 2154672202, i64 2154672258, i64 2154672292, i64 2154672316, i64 2154672357, i64 2154672378, i64 2154672406, i64 2154672440}
