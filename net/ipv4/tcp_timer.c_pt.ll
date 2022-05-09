; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_timer.c_pt.bc'
source_filename = "../net/ipv4/tcp_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tcp_syn_ack_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_syn_ack_timeout\09\09\09\09"
module asm "\09.long\09__crc_tcp_syn_ack_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_syn_ack_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_syn_ack_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_syn_ack_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tcp_set_keepalive\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_set_keepalive\09\09\09\09"
module asm "\09.long\09__crc_tcp_set_keepalive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_set_keepalive:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_set_keepalive\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_set_keepalive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.135 }
%union.anon.135 = type { i32 }
%struct.static_key_true = type { %struct.static_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mem_cgroup = type { %struct.cgroup_subsys_state, %struct.mem_cgroup_id, %struct.page_counter, %union.anon.163, %struct.page_counter, %struct.page_counter, %struct.work_struct, i32, %struct.vmpressure, i8, i8, i32, i32, i32, %struct.cgroup_file, %struct.cgroup_file, %struct.cgroup_file, %struct.mutex, %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds, %struct.list_head, i32, %struct.spinlock, i32, [20 x i8], %struct.memcg_padding, %struct.memcg_vmstats, [9 x %struct.atomic_t], [9 x %struct.atomic_t], i32, i8, i32, i32, ptr, %struct.list_head, [92 x i8], %struct.memcg_padding, %struct.atomic_t, ptr, ptr, %struct.list_head, %struct.wb_domain, [4 x %struct.memcg_cgwb_frn], %struct.list_head, %struct.spinlock, [0 x ptr], [84 x i8] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.mem_cgroup_id = type { i32, %struct.refcount_struct }
%union.anon.163 = type { %struct.page_counter }
%struct.page_counter = type { %struct.atomic_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr }
%struct.vmpressure = type { i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.work_struct }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.mem_cgroup_thresholds = type { ptr, ptr }
%struct.memcg_vmstats = type { [44 x i32], [76 x i32], [44 x i32], [76 x i32] }
%struct.memcg_padding = type { [0 x i8] }
%struct.wb_domain = type { %struct.spinlock, %struct.fprop_global, %struct.timer_list, i32, i32, i32 }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.memcg_cgwb_frn = type { i64, i32, i64, %struct.wb_completion }
%struct.wb_completion = type { %struct.atomic_t, ptr }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.194 = type { i32, i32, i64 }
%struct.anon.195 = type { i32, i32, i64 }
%struct.anon.196 = type { i32, i32 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.2 = type { i16, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.bpf_sock_ops_kern = type { ptr, %union.anon.203, ptr, ptr, ptr, i8, i8, i8, i64 }
%union.anon.203 = type { [4 x i32] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tcp_retransmit_timer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/ipv4/tcp_timer.c\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@tcp_retransmit_timer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tcp_retransmit_timer.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@tcp_retransmit_timer.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcp_timer\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcp_retransmit_timer\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Peer %pI4:%u/%u unexpectedly shrunk window %u:%u (repaired)\0A\00", [35 x i8] zeroinitializer }, align 32
@tcp_retransmit_timer.descriptor.7 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.8, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Peer %pI6:%u/%u unexpectedly shrunk window %u:%u (repaired)\0A\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_tcp_syn_ack_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_syn_ack_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_syn_ack_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_syn_ack_timeout to i32), ptr @__kstrtab_tcp_syn_ack_timeout, ptr @__kstrtabns_tcp_syn_ack_timeout }, section "___ksymtab+tcp_syn_ack_timeout", align 4
@__kstrtab_tcp_set_keepalive = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_set_keepalive = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_set_keepalive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_set_keepalive to i32), ptr @__kstrtab_tcp_set_keepalive, ptr @__kstrtabns_tcp_set_keepalive }, section "___ksymtab_gpl+tcp_set_keepalive", align 4
@memcg_sockets_enabled_key = external dso_local global %struct.static_key_false, align 4
@tcp_memory_pressure = external dso_local global i32, align 4
@memory_cgrp_subsys_on_dfl_key = external dso_local global %struct.static_key_true, align 4
@__sk_dst_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cgroup_bpf_enabled_key = external dso_local global [23 x %struct.static_key_false], align 4
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@inet_csk_reset_xmit_timer.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"inet_csk_reset_xmit_timer\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"include/net/inet_connection_sock.h\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"reset_xmit_timer: sk=%p %d when=0x%lx, caller=%p\0A\00", [46 x i8] zeroinitializer }, align 32
@tcp_keepalive_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.1, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Hmm... keepalive on a LISTEN ???\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcp_keepalive_timer\00", [44 x i8] zeroinitializer }, align 32
@tcp_keepalive_timer._entry_ptr = internal global ptr @tcp_keepalive_timer._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 5, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 5, i64 6]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 456, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 486, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 494, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 2112, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 2067, i32 9 }
@___asan_gen_.50 = private unnamed_addr constant [38 x i8] c"../include/net/inet_connection_sock.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 223, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [24 x i8] c"../net/ipv4/tcp_timer.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 689, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_tcp_set_keepalive, ptr @__ksymtab_tcp_syn_ack_timeout, ptr @tcp_keepalive_timer._entry, ptr @tcp_keepalive_timer._entry_ptr, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_keepalive_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcp_clamp_probe0_to_user_timeout(ptr nocapture noundef readonly %sk, i32 noundef %when) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_user_timeout = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %icsk_user_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %icsk_user_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %icsk_probes_tstamp = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 26
  %2 = ptrtoint ptr %icsk_probes_tstamp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %icsk_probes_tstamp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then5, label %if.end.if.else.i_crit_edge, !prof !53

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %if.then5, %if.end.if.else.i_crit_edge
  %elapsed.0 = phi i32 [ 0, %if.then5 ], [ %sub, %if.end.if.else.i_crit_edge ]
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #9
  %sub9 = sub i32 %call2.i, %elapsed.0
  %5 = tail call i32 @llvm.umax.i32(i32 %sub9, i32 2)
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %when)
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.else.i ], [ %when, %lor.lhs.false.cleanup_crit_edge ], [ %when, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_delack_timer_handler(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %3, null
  br i1 %tobool.i.not.i, label %entry.sk_mem_reclaim_partial.exit_crit_edge, label %if.end.i

entry.sk_mem_reclaim_partial.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_mem_reclaim_partial.exit

if.end.i:                                         ; preds = %entry
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %4 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_forward_alloc.i, align 8
  %sk_reserved_mem.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 12
  %6 = ptrtoint ptr %sk_reserved_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_reserved_mem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge, label %if.end.i.i, !prof !54

if.end.i.sk_unused_reserved_mem.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_unused_reserved_mem.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %8 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_wmem_queued.i.i, align 8
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %12 = add i32 %9, %11
  %sub5.i.i = sub i32 %7, %12
  %13 = tail call i32 @llvm.smax.i32(i32 %sub5.i.i, i32 0) #9
  br label %sk_unused_reserved_mem.exit.i

sk_unused_reserved_mem.exit.i:                    ; preds = %if.end.i.i, %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %13, %if.end.i.i ], [ 0, %if.end.i.sk_unused_reserved_mem.exit.i_crit_edge ]
  %sub.i = sub i32 %5, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 4096
  br i1 %cmp.i, label %if.then2.i, label %sk_unused_reserved_mem.exit.i.sk_mem_reclaim_partial.exit_crit_edge

sk_unused_reserved_mem.exit.i.sk_mem_reclaim_partial.exit_crit_edge: ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_mem_reclaim_partial.exit

if.then2.i:                                       ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub3.i = add nsw i32 %sub.i, -1
  tail call void @__sk_mem_reclaim(ptr noundef %sk, i32 noundef %sub3.i) #9
  br label %sk_mem_reclaim_partial.exit

sk_mem_reclaim_partial.exit:                      ; preds = %if.then2.i, %sk_unused_reserved_mem.exit.i.sk_mem_reclaim_partial.exit_crit_edge, %entry.sk_mem_reclaim_partial.exit_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %15 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sk_mem_reclaim_partial.exit.out_crit_edge

sk_mem_reclaim_partial.exit.out_crit_edge:        ; preds = %sk_mem_reclaim_partial.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %sk_mem_reclaim_partial.exit
  %icsk_ack = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  %16 = ptrtoint ptr %icsk_ack to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %icsk_ack, align 4
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not = icmp eq i8 %18, 0
  br i1 %tobool3.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 5
  %20 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout, align 4
  %sub = sub i32 %19, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_delack_timer = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 5
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %icsk_delack_timer, i32 noundef %21) #9
  br label %out

if.end9:                                          ; preds = %if.end
  %22 = and i8 %17, -3
  %23 = ptrtoint ptr %icsk_ack to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %icsk_ack, align 4
  %24 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool16.not = icmp eq i8 %24, 0
  br i1 %tobool16.not, label %if.end9.out_crit_edge, label %if.then17

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then17:                                        ; preds = %if.end9
  %pingpong.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 2
  %25 = ptrtoint ptr %pingpong.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pingpong.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp.i71 = icmp ugt i8 %26, 2
  br i1 %cmp.i71, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %ato = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 4
  %27 = ptrtoint ptr %ato to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ato, align 4
  %shl21 = shl i32 %28, 1
  %icsk_rto = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %29 = ptrtoint ptr %icsk_rto to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %icsk_rto, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %shl21, i32 %30)
  %32 = ptrtoint ptr %ato to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ato, align 4
  br label %if.end28

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %pingpong.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %pingpong.i, align 2
  %ato27 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 4
  %34 = ptrtoint ptr %ato27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %ato27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then19
  tail call void @tcp_mstamp_refresh(ptr noundef %sk) #9
  tail call void @tcp_send_ack(ptr noundef %sk) #9
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %35 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skc_net.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %36, i32 0, i32 30, i32 3
  %37 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %arrayidx to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i73 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i73 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu, align 4
  %arrayidx40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx40, align 4
  %add = add i32 %45, %39
  %46 = inttoptr i32 %add to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add41 = add i32 %48, 1
  store i32 %add41, ptr %46, align 4
  br label %out

out:                                              ; preds = %if.end28, %if.end9.out_crit_edge, %if.then6, %lor.lhs.false.out_crit_edge, %sk_mem_reclaim_partial.exit.out_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @memcg_sockets_enabled_key, ptr blockaddress(@tcp_delack_timer_handler, %land.lhs.true.i)) #9
          to label %tcp_under_memory_pressure.exit [label %land.lhs.true.i], !srcloc !55

land.lhs.true.i:                                  ; preds = %out
  %sk_memcg.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 75
  %49 = ptrtoint ptr %sk_memcg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk_memcg.i, align 8
  %tobool3.not.i = icmp eq ptr %50, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.tcp_under_memory_pressure.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.tcp_under_memory_pressure.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_under_memory_pressure.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@tcp_delack_timer_handler, %land.lhs.true.i.i)) #9
          to label %do.body.i.i [label %land.lhs.true.i.i], !srcloc !55

land.lhs.true.i.i:                                ; preds = %land.lhs.true4.i
  %tcpmem_pressure.i.i = getelementptr inbounds %struct.mem_cgroup, ptr %50, i32 0, i32 31
  %51 = ptrtoint ptr %tcpmem_pressure.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tcpmem_pressure.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool4.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.body.i.i_crit_edge, label %land.lhs.true.i.i.if.then48_crit_edge

land.lhs.true.i.i.if.then48_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

land.lhs.true.i.i.do.body.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %land.lhs.true.i.i.do.body.i.i_crit_edge, %land.lhs.true4.i
  %memcg.addr.0.i.i = phi ptr [ %add.ptr.i.i.i, %do.cond.i.i.do.body.i.i_crit_edge ], [ %50, %land.lhs.true.i.i.do.body.i.i_crit_edge ], [ %50, %land.lhs.true4.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %socket_pressure.i.i = getelementptr inbounds %struct.mem_cgroup, ptr %memcg.addr.0.i.i, i32 0, i32 29
  %54 = ptrtoint ptr %socket_pressure.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %socket_pressure.i.i, align 8
  %sub.i.i = sub i32 %53, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i.if.then48_crit_edge, label %do.cond.i.i

do.body.i.i.if.then48_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

do.cond.i.i:                                      ; preds = %do.body.i.i
  %parent.i.i.i = getelementptr inbounds %struct.mem_cgroup, ptr %memcg.addr.0.i.i, i32 0, i32 2, i32 13
  %56 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %57, null
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 -176
  %tobool10.not16.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool10.not.i.i = or i1 %tobool.not.i.i.i, %tobool10.not16.i.i
  br i1 %tobool10.not.i.i, label %do.cond.i.i.tcp_under_memory_pressure.exit_crit_edge, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.cond.i.i.tcp_under_memory_pressure.exit_crit_edge: ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_under_memory_pressure.exit

tcp_under_memory_pressure.exit:                   ; preds = %do.cond.i.i.tcp_under_memory_pressure.exit_crit_edge, %land.lhs.true.i.tcp_under_memory_pressure.exit_crit_edge, %out
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tcp_memory_pressure to i32))
  %58 = load volatile i32, ptr @tcp_memory_pressure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool8.i.not = icmp eq i32 %58, 0
  br i1 %tobool8.i.not, label %tcp_under_memory_pressure.exit.if.end49_crit_edge, label %tcp_under_memory_pressure.exit.if.then48_crit_edge

tcp_under_memory_pressure.exit.if.then48_crit_edge: ; preds = %tcp_under_memory_pressure.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

tcp_under_memory_pressure.exit.if.end49_crit_edge: ; preds = %tcp_under_memory_pressure.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then48:                                        ; preds = %tcp_under_memory_pressure.exit.if.then48_crit_edge, %do.body.i.i.if.then48_crit_edge, %land.lhs.true.i.i.if.then48_crit_edge
  %59 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i76 = getelementptr inbounds %struct.proto, ptr %60, i32 0, i32 32
  %61 = ptrtoint ptr %memory_allocated.i.i76 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %memory_allocated.i.i76, align 4
  %tobool.i.not.i77 = icmp eq ptr %62, null
  br i1 %tobool.i.not.i77, label %if.then48.if.end49_crit_edge, label %if.end.i81

if.then48.if.end49_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.end.i81:                                       ; preds = %if.then48
  %sk_forward_alloc.i78 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %63 = ptrtoint ptr %sk_forward_alloc.i78 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sk_forward_alloc.i78, align 8
  %sk_reserved_mem.i.i79 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 12
  %65 = ptrtoint ptr %sk_reserved_mem.i.i79 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sk_reserved_mem.i.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i80 = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i80, label %if.end.i81.sk_unused_reserved_mem.exit.i90_crit_edge, label %if.end.i.i86, !prof !54

if.end.i81.sk_unused_reserved_mem.exit.i90_crit_edge: ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_unused_reserved_mem.exit.i90

if.end.i.i86:                                     ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #11
  %sk_wmem_queued.i.i82 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %67 = ptrtoint ptr %sk_wmem_queued.i.i82 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sk_wmem_queued.i.i82, align 8
  %sk_backlog.i.i83 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i.i84 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i83, i32 noundef 4) #9
  %69 = ptrtoint ptr %sk_backlog.i.i83 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %sk_backlog.i.i83, align 4
  %71 = add i32 %68, %70
  %sub5.i.i85 = sub i32 %66, %71
  %72 = tail call i32 @llvm.smax.i32(i32 %sub5.i.i85, i32 0) #9
  br label %sk_unused_reserved_mem.exit.i90

sk_unused_reserved_mem.exit.i90:                  ; preds = %if.end.i.i86, %if.end.i81.sk_unused_reserved_mem.exit.i90_crit_edge
  %retval.0.i.i87 = phi i32 [ %72, %if.end.i.i86 ], [ 0, %if.end.i81.sk_unused_reserved_mem.exit.i90_crit_edge ]
  %sub.i88 = sub i32 %64, %retval.0.i.i87
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub.i88)
  %cmp.i89 = icmp sgt i32 %sub.i88, 4095
  br i1 %cmp.i89, label %if.then2.i91, label %sk_unused_reserved_mem.exit.i90.if.end49_crit_edge

sk_unused_reserved_mem.exit.i90.if.end49_crit_edge: ; preds = %sk_unused_reserved_mem.exit.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then2.i91:                                     ; preds = %sk_unused_reserved_mem.exit.i90
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__sk_mem_reclaim(ptr noundef %sk, i32 noundef %sub.i88) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then2.i91, %sk_unused_reserved_mem.exit.i90.if.end49_crit_edge, %if.then48.if.end49_crit_edge, %tcp_under_memory_pressure.exit.if.end49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_mstamp_refresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_ack(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_mem_reclaim(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_prot.i, align 8
  %memory_allocated.i = getelementptr inbounds %struct.proto, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %memory_allocated.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memory_allocated.i, align 4
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_forward_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %4 = ptrtoint ptr %sk_forward_alloc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_forward_alloc, align 8
  %sk_reserved_mem.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 12
  %6 = ptrtoint ptr %sk_reserved_mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_reserved_mem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.sk_unused_reserved_mem.exit_crit_edge, label %if.end.i, !prof !54

if.end.sk_unused_reserved_mem.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_unused_reserved_mem.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sk_wmem_queued.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %8 = ptrtoint ptr %sk_wmem_queued.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_wmem_queued.i, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sk_backlog.i, align 4
  %12 = add i32 %9, %11
  %sub5.i = sub i32 %7, %12
  %13 = tail call i32 @llvm.smax.i32(i32 %sub5.i, i32 0) #9
  br label %sk_unused_reserved_mem.exit

sk_unused_reserved_mem.exit:                      ; preds = %if.end.i, %if.end.sk_unused_reserved_mem.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.end.i ], [ 0, %if.end.sk_unused_reserved_mem.exit_crit_edge ]
  %sub = sub i32 %5, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub)
  %cmp = icmp sgt i32 %sub, 4095
  br i1 %cmp, label %if.then2, label %sk_unused_reserved_mem.exit.cleanup_crit_edge

sk_unused_reserved_mem.exit.cleanup_crit_edge:    ; preds = %sk_unused_reserved_mem.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %sk_unused_reserved_mem.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__sk_mem_reclaim(ptr noundef %sk, i32 noundef %sub) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %sk_unused_reserved_mem.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_retransmit_timer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  %args.i.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %dep_map.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lockdep_sock_is_held.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lockdep_sock_is_held.exit:                        ; preds = %entry
  %dep_map2.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool4.i.not = icmp eq i32 %call.i6.i, 0
  br i1 %tobool4.i.not, label %land.lhs.true, label %lockdep_sock_is_held.exit.do.end_crit_edge

lockdep_sock_is_held.exit.do.end_crit_edge:       ; preds = %lockdep_sock_is_held.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %lockdep_sock_is_held.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b434 = load i1, ptr @tcp_retransmit_timer.__warned, align 1
  br i1 %.b434, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcp_retransmit_timer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 457, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lockdep_sock_is_held.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %fastopen_rsk = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 120
  %2 = ptrtoint ptr %fastopen_rsk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fastopen_rsk, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end59, label %if.then8

if.then8:                                         ; preds = %do.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp.not = icmp eq i8 %5, 3
  br i1 %cmp.not, label %if.then8.if.end51_crit_edge, label %land.rhs

if.then8.if.end51_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

land.rhs:                                         ; preds = %if.then8
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp13.not = icmp eq i8 %7, 4
  br i1 %cmp13.not, label %land.rhs.if.end51_crit_edge, label %land.rhs18

land.rhs.if.end51_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

land.rhs18:                                       ; preds = %land.rhs
  %.b430433 = load i1, ptr @tcp_retransmit_timer.__already_done, align 1
  br i1 %.b430433, label %land.rhs18.if.end51_crit_edge, label %if.then25, !prof !54

land.rhs18.if.end51_crit_edge:                    ; preds = %land.rhs18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then25:                                        ; preds = %land.rhs18
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcp_retransmit_timer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 460, i32 noundef 9, ptr noundef null) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then25, %land.rhs18.if.end51_crit_edge, %land.rhs.if.end51_crit_edge, %if.then8.if.end51_crit_edge
  %icsk_syn_retries.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 21
  %8 = ptrtoint ptr %icsk_syn_retries.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %icsk_syn_retries.i, align 8
  %conv.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i442 = icmp eq i8 %9, 0
  br i1 %tobool.not.i442, label %cond.false.i, label %if.end51.cond.end.i_crit_edge

if.end51.cond.end.i_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_synack_retries.i = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 35, i32 62
  %12 = ptrtoint ptr %sysctl_tcp_synack_retries.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sysctl_tcp_synack_retries.i, align 2
  %conv2.i = zext i8 %13 to i32
  %add.i = add nuw nsw i32 %conv2.i, 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end51.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ %conv.i, %if.end51.cond.end.i_crit_edge ]
  %rsk_ops.i = getelementptr inbounds %struct.request_sock, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %rsk_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rsk_ops.i, align 4
  %syn_ack_timeout.i = getelementptr inbounds %struct.request_sock_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %syn_ack_timeout.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %syn_ack_timeout.i, align 4
  tail call void %17(ptr noundef nonnull %3) #9
  %num_timeout.i = getelementptr inbounds %struct.request_sock, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %num_timeout.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %num_timeout.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 127
  %conv4.i = zext i8 %bf.clear.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv4.i)
  %cmp.not.i = icmp ugt i32 %cond.i, %conv4.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk_err_soft.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 52
  %19 = ptrtoint ptr %sk_err_soft.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_err_soft.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  %..i.i = select i1 %tobool.not.i.i, i32 110, i32 %20
  %sk_err.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %21 = ptrtoint ptr %sk_err.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %..i.i, ptr %sk_err.i.i, align 4
  tail call void @sk_error_report(ptr noundef %sk) #9
  tail call void @tcp_write_queue_purge(ptr noundef %sk) #9
  tail call void @tcp_done(ptr noundef %sk) #9
  %22 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skc_net.i, align 4
  %net_statistics.i.i = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 30, i32 3
  %24 = ptrtoint ptr %net_statistics.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_statistics.i.i, align 4
  %arrayidx.i.i = getelementptr [126 x i32], ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i.i, align 4
  %arrayidx8.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx8.i.i, align 4
  %add.i.i = add i32 %32, %26
  %33 = inttoptr i32 %add.i.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add9.i.i = add i32 %35, 1
  store i32 %add9.i.i, ptr %33, align 4
  br label %cleanup355

if.end.i:                                         ; preds = %cond.end.i
  %icsk_retransmits.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 18
  %36 = ptrtoint ptr %icsk_retransmits.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %icsk_retransmits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp7.i = icmp eq i8 %37, 1
  br i1 %cmp7.i, label %if.then9.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_enter_loss(ptr noundef %sk) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end.i.if.end10.i_crit_edge
  %call11.i = tail call i32 @inet_rtx_syn_ack(ptr noundef %sk, ptr noundef nonnull %3) #9
  %38 = ptrtoint ptr %num_timeout.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load13.i = load i8, ptr %num_timeout.i, align 1
  %inc.i = add i8 %bf.load13.i, 1
  %bf.value.i = and i8 %inc.i, 127
  %bf.clear16.i = and i8 %bf.load13.i, -128
  %bf.set.i = or i8 %bf.value.i, %bf.clear16.i
  store i8 %bf.set.i, ptr %num_timeout.i, align 1
  %39 = ptrtoint ptr %icsk_retransmits.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %icsk_retransmits.i, align 1
  %inc18.i = add i8 %40, 1
  store i8 %inc18.i, ptr %icsk_retransmits.i, align 1
  %retrans_stamp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 98
  %41 = ptrtoint ptr %retrans_stamp.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %retrans_stamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool19.not.i = icmp eq i32 %42, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end10.i.if.end23.i_crit_edge

if.end10.i.if.end23.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %tcp_mstamp.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %43 = ptrtoint ptr %tcp_mstamp.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tcp_mstamp.i.i, align 8
  %45 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %44, i32 0) #12, !srcloc !56
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %45, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %45, 1
  %46 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %44, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #12, !srcloc !57
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %46, 0
  %div1581.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %conv.i.i = trunc i64 %div1581.i.i.i.i to i32
  %47 = ptrtoint ptr %retrans_stamp.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv.i.i, ptr %retrans_stamp.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end10.i.if.end23.i_crit_edge
  %48 = ptrtoint ptr %num_timeout.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load25.i = load i8, ptr %num_timeout.i, align 1
  %bf.clear26.i = and i8 %bf.load25.i, 127
  %conv27.i = zext i8 %bf.clear26.i to i32
  %shl.i = shl i32 100, %conv27.i
  tail call fastcc void @inet_csk_reset_xmit_timer(ptr noundef %sk, i32 noundef 1, i32 noundef %shl.i, i32 noundef 12000) #9
  br label %cleanup355

if.end59:                                         ; preds = %do.end
  %packets_out = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 51
  %49 = ptrtoint ptr %packets_out to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %packets_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool60.not = icmp eq i32 %50, 0
  br i1 %tobool60.not, label %if.end59.cleanup355_crit_edge, label %if.end62

if.end59.cleanup355_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup355

if.end62:                                         ; preds = %if.end59
  %51 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 25
  %call.i = tail call ptr @rb_first(ptr noundef %51) #9
  %tobool65.not = icmp eq ptr %call.i, null
  br i1 %tobool65.not, label %land.rhs75, label %if.end123

land.rhs75:                                       ; preds = %if.end62
  %.b431432 = load i1, ptr @tcp_retransmit_timer.__already_done.3, align 1
  br i1 %.b431432, label %land.rhs75.cleanup355_crit_edge, label %if.then86, !prof !54

land.rhs75.cleanup355_crit_edge:                  ; preds = %land.rhs75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup355

if.then86:                                        ; preds = %land.rhs75
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcp_retransmit_timer.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 472, i32 noundef 9, ptr noundef null) #9
  br label %cleanup355

if.end123:                                        ; preds = %if.end62
  %tlp_high_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 40
  %52 = ptrtoint ptr %tlp_high_seq to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tlp_high_seq, align 8
  %snd_wnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 26
  %53 = ptrtoint ptr %snd_wnd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %snd_wnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool124.not = icmp eq i32 %54, 0
  br i1 %tobool124.not, label %land.lhs.true125, label %if.end123.if.end208_crit_edge

if.end123.if.end208_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

land.lhs.true125:                                 ; preds = %if.end123
  %55 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %58 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not = icmp eq i32 %58, 0
  br i1 %tobool.i.not, label %land.lhs.true127, label %land.lhs.true125.if.end208_crit_edge

land.lhs.true125.if.end208_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

land.lhs.true127:                                 ; preds = %land.lhs.true125
  %skc_state129 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %59 = ptrtoint ptr %skc_state129 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load volatile i8, ptr %skc_state129, align 2
  %conv130 = zext i8 %60 to i32
  %shl = shl nuw i32 1, %conv130
  %and = and i32 %shl, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool131.not = icmp eq i32 %and, 0
  br i1 %tobool131.not, label %if.then132, label %land.lhs.true127.if.end208_crit_edge

land.lhs.true127.if.end208_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.then132:                                       ; preds = %land.lhs.true127
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %61 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %skc_family, align 8
  %63 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i16 %62, label %if.then132.if.end202_crit_edge [
    i16 2, label %do.body139
    i16 10, label %do.body171
  ]

if.then132.if.end202_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

do.body139:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_retransmit_timer.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_retransmit_timer, %land.lhs.true150)) #9
          to label %if.end202 [label %land.lhs.true150], !srcloc !55

land.lhs.true150:                                 ; preds = %do.body139
  %call151 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %land.lhs.true150.if.end202_crit_edge, label %if.then153

land.lhs.true150.if.end202_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then153:                                       ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #11
  %64 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %64, align 4
  %conv158 = zext i16 %66 to i32
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %skc_num, align 2
  %conv161 = zext i16 %68 to i32
  %snd_una = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %69 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %snd_una, align 4
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %71 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %snd_nxt, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_retransmit_timer.descriptor, ptr noundef nonnull @.str.6, ptr noundef %sk, i32 noundef %conv158, i32 noundef %conv161, i32 noundef %70, i32 noundef %72) #9
  br label %if.end202

do.body171:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_retransmit_timer.descriptor.7, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_retransmit_timer, %land.lhs.true183)) #9
          to label %if.end202 [label %land.lhs.true183], !srcloc !55

land.lhs.true183:                                 ; preds = %do.body171
  %call184 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %land.lhs.true183.if.end202_crit_edge, label %if.then186

land.lhs.true183.if.end202_crit_edge:             ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then186:                                       ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #11
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %73 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %73, align 4
  %conv191 = zext i16 %75 to i32
  %skc_num194 = getelementptr inbounds %struct.anon.2, ptr %73, i32 0, i32 1
  %76 = ptrtoint ptr %skc_num194 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %skc_num194, align 2
  %conv195 = zext i16 %77 to i32
  %snd_una196 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %78 = ptrtoint ptr %snd_una196 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %snd_una196, align 4
  %snd_nxt197 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %80 = ptrtoint ptr %snd_nxt197 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %snd_nxt197, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_retransmit_timer.descriptor.7, ptr noundef nonnull @.str.8, ptr noundef %skc_v6_daddr, i32 noundef %conv191, i32 noundef %conv195, i32 noundef %79, i32 noundef %81) #9
  br label %if.end202

if.end202:                                        ; preds = %if.then186, %land.lhs.true183.if.end202_crit_edge, %do.body171, %if.then153, %land.lhs.true150.if.end202_crit_edge, %do.body139, %if.then132.if.end202_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %rcv_tstamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 18
  %83 = ptrtoint ptr %rcv_tstamp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rcv_tstamp, align 4
  %sub = sub i32 %82, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %sub)
  %cmp203 = icmp ugt i32 %sub, 12000
  br i1 %cmp203, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_enter_loss(ptr noundef %sk) #9
  %call207 = tail call i32 @tcp_retransmit_skb(ptr noundef %sk, ptr noundef nonnull %call.i, i32 noundef 1) #9
  tail call fastcc void @__sk_dst_reset(ptr noundef %sk)
  br label %out_reset_timer

cleanup:                                          ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tcp_write_err(ptr noundef %sk)
  br label %cleanup355

if.end208:                                        ; preds = %land.lhs.true127.if.end208_crit_edge, %land.lhs.true125.if.end208_crit_edge, %if.end123.if.end208_crit_edge
  %85 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %skc_net.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %86, i32 0, i32 30, i32 3
  %87 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %88, i32 0, i32 40
  %89 = ptrtoint ptr %arrayidx to i32
  %90 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cpu, align 4
  %arrayidx222 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx222, align 4
  %add = add i32 %95, %89
  %96 = inttoptr i32 %add to ptr
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %add223 = add i32 %98, 1
  store i32 %add223, ptr %96, align 4
  %99 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %skc_net.i, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %101 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i445 = zext i8 %102 to i32
  %shl.i446 = shl nuw i32 1, %conv.i445
  %and.i447 = and i32 %shl.i446, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i447)
  %tobool.not.i448 = icmp eq i32 %and.i447, 0
  br i1 %tobool.not.i448, label %if.else.i, label %if.then.i450

if.then.i450:                                     ; preds = %if.end208
  %icsk_retransmits.i449 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 18
  %103 = ptrtoint ptr %icsk_retransmits.i449 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %icsk_retransmits.i449, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool3.not.i = icmp eq i8 %104, 0
  br i1 %tobool3.not.i, label %if.then.i450.if.end.i453_crit_edge, label %if.then4.i

if.then.i450.if.end.i453_crit_edge:               ; preds = %if.then.i450
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i453

if.then4.i:                                       ; preds = %if.then.i450
  %sk_dst_cache.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %105 = ptrtoint ptr %sk_dst_cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile ptr, ptr %sk_dst_cache.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %if.then4.i.__sk_dst_get.exit.i.i_crit_edge

if.then4.i.__sk_dst_get.exit.i.i_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit.i.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %if.then4.i
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %lor.lhs.false.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.__sk_dst_get.exit.i.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.__sk_dst_get.exit.i.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %lockdep_sock_is_held.exit.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.__sk_dst_get.exit.i.i_crit_edge

lor.lhs.false.i.i.i.__sk_dst_get.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.__sk_dst_get.exit.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.__sk_dst_get.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true5.i.i.i.__sk_dst_get.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.__sk_dst_get.exit.i.i_crit_edge: ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 2068, ptr noundef nonnull @.str.10) #9
  br label %__sk_dst_get.exit.i.i

__sk_dst_get.exit.i.i:                            ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.__sk_dst_get.exit.i.i_crit_edge, %land.lhs.true.i.i.i.__sk_dst_get.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.__sk_dst_get.exit.i.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.__sk_dst_get.exit.i.i_crit_edge, %if.then4.i.__sk_dst_get.exit.i.i_crit_edge
  %tobool.not.i.i451 = icmp eq ptr %106, null
  br i1 %tobool.not.i.i451, label %__sk_dst_get.exit.i.i.if.end.i453_crit_edge, label %land.lhs.true.i.i

__sk_dst_get.exit.i.i.if.end.i453_crit_edge:      ; preds = %__sk_dst_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i453

land.lhs.true.i.i:                                ; preds = %__sk_dst_get.exit.i.i
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i.i, align 4
  %negative_advice.i.i = getelementptr inbounds %struct.dst_ops, ptr %108, i32 0, i32 9
  %109 = ptrtoint ptr %negative_advice.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %negative_advice.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %110, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i453_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i453_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i453

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %call4.i.i = tail call ptr %110(ptr noundef nonnull %106) #9
  %cmp.not.i.i = icmp eq ptr %call4.i.i, %106
  br i1 %cmp.not.i.i, label %if.then.i.i.if.end.i453_crit_edge, label %do.body.i.i

if.then.i.i.if.end.i453_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i453

do.body.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %111 = ptrtoint ptr %sk_dst_cache.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %call4.i.i, ptr %sk_dst_cache.i.i.i, align 4
  %skc_tx_queue_mapping.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %112 = ptrtoint ptr %skc_tx_queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i.i, align 4
  %sk_dst_pending_confirm.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %113 = ptrtoint ptr %sk_dst_pending_confirm.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %sk_dst_pending_confirm.i.i, align 8
  br label %if.end.i453

if.end.i453:                                      ; preds = %do.body.i.i, %if.then.i.i.if.end.i453_crit_edge, %land.lhs.true.i.i.if.end.i453_crit_edge, %__sk_dst_get.exit.i.i.if.end.i453_crit_edge, %if.then.i450.if.end.i453_crit_edge
  %icsk_syn_retries.i452 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 21
  %114 = ptrtoint ptr %icsk_syn_retries.i452 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %icsk_syn_retries.i452, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool6.not.i = icmp eq i8 %115, 0
  br i1 %tobool6.not.i, label %cond.false.i454, label %if.end.i453.if.end35.i_crit_edge

if.end.i453.if.end35.i_crit_edge:                 ; preds = %if.end.i453
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

cond.false.i454:                                  ; preds = %if.end.i453
  call void @__sanitizer_cov_trace_pc() #11
  %sysctl_tcp_syn_retries.i = getelementptr inbounds %struct.net, ptr %100, i32 0, i32 35, i32 61
  %116 = ptrtoint ptr %sysctl_tcp_syn_retries.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %sysctl_tcp_syn_retries.i, align 1
  br label %if.end35.i

if.else.i:                                        ; preds = %if.end208
  %sysctl_tcp_retries1.i = getelementptr inbounds %struct.net, ptr %100, i32 0, i32 35, i32 66
  %118 = ptrtoint ptr %sysctl_tcp_retries1.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %sysctl_tcp_retries1.i, align 8
  %conv12.i = zext i8 %119 to i32
  %call13.i = tail call fastcc zeroext i1 @retransmits_timed_out(ptr noundef %sk, i32 noundef %conv12.i, i32 noundef 0) #9
  br i1 %call13.i, label %if.then14.i, label %if.else.i.if.end15.i_crit_edge

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.else.i
  %120 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_mtu_probing.i.i = getelementptr inbounds %struct.net, ptr %121, i32 0, i32 35, i32 52
  %122 = ptrtoint ptr %sysctl_tcp_mtu_probing.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %sysctl_tcp_mtu_probing.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i116.i = icmp eq i8 %123, 0
  br i1 %tobool.not.i116.i, label %if.then14.i.tcp_mtu_probing.exit.i_crit_edge, label %if.end.i.i

if.then14.i.tcp_mtu_probing.exit.i_crit_edge:     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_mtu_probing.exit.i

if.end.i.i:                                       ; preds = %if.then14.i
  %enabled.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 25, i32 2
  %124 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %bf.load.i.i = load i32, ptr %enabled.i.i, align 8
  %bf.clear.i.i = and i32 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i)
  %tobool1.not.i117.i = icmp eq i32 %bf.clear.i.i, 0
  br i1 %tobool1.not.i117.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set.i.i = or i32 %bf.load.i.i, 1
  %125 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %bf.set.i.i, ptr %enabled.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %126 = load volatile i32, ptr @jiffies, align 128
  %probe_timestamp.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 25, i32 3
  %127 = ptrtoint ptr %probe_timestamp.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %probe_timestamp.i.i, align 4
  br label %if.end28.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %search_low.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 25, i32 1
  %128 = ptrtoint ptr %search_low.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %search_low.i.i, align 4
  %call9.i.i = tail call i32 @tcp_mtu_to_mss(ptr noundef %sk, i32 noundef %129) #9
  %shr.i.i = ashr i32 %call9.i.i, 1
  %sysctl_tcp_base_mss.i.i = getelementptr inbounds %struct.net, ptr %121, i32 0, i32 35, i32 54
  %130 = ptrtoint ptr %sysctl_tcp_base_mss.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sysctl_tcp_base_mss.i.i, align 4
  %132 = tail call i32 @llvm.smin.i32(i32 %131, i32 %shr.i.i) #9
  %sysctl_tcp_mtu_probe_floor.i.i = getelementptr inbounds %struct.net, ptr %121, i32 0, i32 35, i32 53
  %133 = ptrtoint ptr %sysctl_tcp_mtu_probe_floor.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %sysctl_tcp_mtu_probe_floor.i.i, align 64
  %135 = tail call i32 @llvm.smax.i32(i32 %132, i32 %134) #9
  %sysctl_tcp_min_snd_mss.i.i = getelementptr inbounds %struct.net, ptr %121, i32 0, i32 35, i32 55
  %136 = ptrtoint ptr %sysctl_tcp_min_snd_mss.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sysctl_tcp_min_snd_mss.i.i, align 8
  %138 = tail call i32 @llvm.smax.i32(i32 %135, i32 %137) #9
  %call25.i.i = tail call i32 @tcp_mss_to_mtu(ptr noundef %sk, i32 noundef %138) #9
  %139 = ptrtoint ptr %search_low.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %call25.i.i, ptr %search_low.i.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.else.i.i, %if.then2.i.i
  %icsk_pmtu_cookie.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 9
  %140 = ptrtoint ptr %icsk_pmtu_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %icsk_pmtu_cookie.i.i, align 8
  %call29.i.i = tail call i32 @tcp_sync_mss(ptr noundef %sk, i32 noundef %141) #9
  br label %tcp_mtu_probing.exit.i

tcp_mtu_probing.exit.i:                           ; preds = %if.end28.i.i, %if.then14.i.tcp_mtu_probing.exit.i_crit_edge
  %sk_dst_cache.i.i118.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %142 = ptrtoint ptr %sk_dst_cache.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile ptr, ptr %sk_dst_cache.i.i118.i, align 4
  %call.i.i.i.i120.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i120.i)
  %tobool.not.i.i.i121.i = icmp eq i32 %call.i.i.i.i120.i, 0
  br i1 %tobool.not.i.i.i121.i, label %lockdep_sock_is_held.exit.i.i125.i, label %tcp_mtu_probing.exit.i.__sk_dst_get.exit.i136.i_crit_edge

tcp_mtu_probing.exit.i.__sk_dst_get.exit.i136.i_crit_edge: ; preds = %tcp_mtu_probing.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit.i136.i

lockdep_sock_is_held.exit.i.i125.i:               ; preds = %tcp_mtu_probing.exit.i
  %dep_map2.i.i.i122.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i123.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i122.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i123.i)
  %tobool4.i.not.i.i124.i = icmp eq i32 %call.i6.i.i.i123.i, 0
  br i1 %tobool4.i.not.i.i124.i, label %lor.lhs.false.i.i128.i, label %lockdep_sock_is_held.exit.i.i125.i.__sk_dst_get.exit.i136.i_crit_edge

lockdep_sock_is_held.exit.i.i125.i.__sk_dst_get.exit.i136.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit.i136.i

lor.lhs.false.i.i128.i:                           ; preds = %lockdep_sock_is_held.exit.i.i125.i
  %call2.i.i126.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i126.i)
  %tobool.not.i.i127.i = icmp eq i32 %call2.i.i126.i, 0
  br i1 %tobool.not.i.i127.i, label %land.lhs.true.i.i131.i, label %lor.lhs.false.i.i128.i.__sk_dst_get.exit.i136.i_crit_edge

lor.lhs.false.i.i128.i.__sk_dst_get.exit.i136.i_crit_edge: ; preds = %lor.lhs.false.i.i128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit.i136.i

land.lhs.true.i.i131.i:                           ; preds = %lor.lhs.false.i.i128.i
  %call3.i.i129.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i129.i)
  %tobool4.not.i.i130.i = icmp eq i32 %call3.i.i129.i, 0
  br i1 %tobool4.not.i.i130.i, label %land.lhs.true.i.i131.i.__sk_dst_get.exit.i136.i_crit_edge, label %land.lhs.true5.i.i133.i

land.lhs.true.i.i131.i.__sk_dst_get.exit.i136.i_crit_edge: ; preds = %land.lhs.true.i.i131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit.i136.i

land.lhs.true5.i.i133.i:                          ; preds = %land.lhs.true.i.i131.i
  %.b11.i.i132.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i.i132.i, label %land.lhs.true5.i.i133.i.__sk_dst_get.exit.i136.i_crit_edge, label %if.then.i.i134.i

land.lhs.true5.i.i133.i.__sk_dst_get.exit.i136.i_crit_edge: ; preds = %land.lhs.true5.i.i133.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit.i136.i

if.then.i.i134.i:                                 ; preds = %land.lhs.true5.i.i133.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 2068, ptr noundef nonnull @.str.10) #9
  br label %__sk_dst_get.exit.i136.i

__sk_dst_get.exit.i136.i:                         ; preds = %if.then.i.i134.i, %land.lhs.true5.i.i133.i.__sk_dst_get.exit.i136.i_crit_edge, %land.lhs.true.i.i131.i.__sk_dst_get.exit.i136.i_crit_edge, %lor.lhs.false.i.i128.i.__sk_dst_get.exit.i136.i_crit_edge, %lockdep_sock_is_held.exit.i.i125.i.__sk_dst_get.exit.i136.i_crit_edge, %tcp_mtu_probing.exit.i.__sk_dst_get.exit.i136.i_crit_edge
  %tobool.not.i135.i = icmp eq ptr %143, null
  br i1 %tobool.not.i135.i, label %__sk_dst_get.exit.i136.i.if.end15.i_crit_edge, label %land.lhs.true.i140.i

__sk_dst_get.exit.i136.i.if.end15.i_crit_edge:    ; preds = %__sk_dst_get.exit.i136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

land.lhs.true.i140.i:                             ; preds = %__sk_dst_get.exit.i136.i
  %ops.i137.i = getelementptr inbounds %struct.dst_entry, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %ops.i137.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops.i137.i, align 4
  %negative_advice.i138.i = getelementptr inbounds %struct.dst_ops, ptr %145, i32 0, i32 9
  %146 = ptrtoint ptr %negative_advice.i138.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %negative_advice.i138.i, align 4
  %tobool1.not.i139.i = icmp eq ptr %147, null
  br i1 %tobool1.not.i139.i, label %land.lhs.true.i140.i.if.end15.i_crit_edge, label %if.then.i143.i

land.lhs.true.i140.i.if.end15.i_crit_edge:        ; preds = %land.lhs.true.i140.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then.i143.i:                                   ; preds = %land.lhs.true.i140.i
  %call4.i141.i = tail call ptr %147(ptr noundef nonnull %143) #9
  %cmp.not.i142.i = icmp eq ptr %call4.i141.i, %143
  br i1 %cmp.not.i142.i, label %if.then.i143.i.if.end15.i_crit_edge, label %do.body.i146.i

if.then.i143.i.if.end15.i_crit_edge:              ; preds = %if.then.i143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

do.body.i146.i:                                   ; preds = %if.then.i143.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %148 = ptrtoint ptr %sk_dst_cache.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %call4.i141.i, ptr %sk_dst_cache.i.i118.i, align 4
  %skc_tx_queue_mapping.i.i144.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %149 = ptrtoint ptr %skc_tx_queue_mapping.i.i144.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i144.i, align 4
  %sk_dst_pending_confirm.i145.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %150 = ptrtoint ptr %sk_dst_pending_confirm.i145.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %sk_dst_pending_confirm.i145.i, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.body.i146.i, %if.then.i143.i.if.end15.i_crit_edge, %land.lhs.true.i140.i.if.end15.i_crit_edge, %__sk_dst_get.exit.i136.i.if.end15.i_crit_edge, %if.else.i.if.end15.i_crit_edge
  %sysctl_tcp_retries2.i = getelementptr inbounds %struct.net, ptr %100, i32 0, i32 35, i32 67
  %151 = ptrtoint ptr %sysctl_tcp_retries2.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %sysctl_tcp_retries2.i, align 1
  %conv17.i = zext i8 %152 to i32
  %153 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %153, align 4
  %156 = and i32 %155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.i.not.i = icmp eq i32 %156, 0
  br i1 %tobool.i.not.i, label %if.end15.i.if.then37.i_crit_edge, label %if.then19.i

if.end15.i.if.then37.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37.i

if.then19.i:                                      ; preds = %if.end15.i
  %icsk_rto.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %157 = ptrtoint ptr %icsk_rto.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %icsk_rto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %158)
  %cmp20.i = icmp ult i32 %158, 12000
  %159 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_orphan_retries.i.i = getelementptr inbounds %struct.net, ptr %160, i32 0, i32 35, i32 68
  %161 = ptrtoint ptr %sysctl_tcp_orphan_retries.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %sysctl_tcp_orphan_retries.i.i, align 2
  %sk_err_soft.i.i455 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 52
  %163 = ptrtoint ptr %sk_err_soft.i.i455 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %sk_err_soft.i.i455, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.i149.i = icmp eq i32 %164, 0
  %165 = or i1 %cmp20.i, %tobool.not.i149.i
  %retries.0.shrunk.i.i = select i1 %165, i8 %162, i8 0
  %retries.0.i.i = zext i8 %retries.0.shrunk.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retries.0.shrunk.i.i)
  %cmp.i.i = icmp eq i8 %retries.0.shrunk.i.i, 0
  %spec.select11.i.i = select i1 %cmp20.i, i32 8, i32 0
  %retries.1.i.i = select i1 %cmp.i.i, i32 %spec.select11.i.i, i32 %retries.0.i.i
  br i1 %cmp20.i, label %if.then19.i.lor.end.i_crit_edge, label %lor.rhs.i456

if.then19.i.lor.end.i_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.rhs.i456:                                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  %call27.i = tail call fastcc zeroext i1 @retransmits_timed_out(ptr noundef %sk, i32 noundef %retries.1.i.i, i32 noundef 0) #9
  %lnot.i = xor i1 %call27.i, true
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i456, %if.then19.i.lor.end.i_crit_edge
  %166 = phi i1 [ true, %if.then19.i.lor.end.i_crit_edge ], [ %lnot.i, %lor.rhs.i456 ]
  %call30.i = tail call fastcc i32 @tcp_out_of_resources(ptr noundef %sk, i1 noundef zeroext %166) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %lor.end.i.if.then37.i_crit_edge, label %lor.end.i.cleanup355_crit_edge

lor.end.i.cleanup355_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup355

lor.end.i.if.then37.i_crit_edge:                  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37.i

if.end35.i:                                       ; preds = %cond.false.i454, %if.end.i453.if.end35.i_crit_edge
  %cond.in.i = phi i8 [ %117, %cond.false.i454 ], [ %115, %if.end.i453.if.end35.i_crit_edge ]
  %cond.i457 = zext i8 %cond.in.i to i32
  %167 = ptrtoint ptr %icsk_retransmits.i449 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %icsk_retransmits.i449, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %168, i8 %cond.in.i)
  %cmp.not.i458 = icmp ult i8 %168, %cond.in.i
  br i1 %cmp.not.i458, label %if.end35.i.if.then37.i_crit_edge, label %if.end35.i.if.end40.i_crit_edge

if.end35.i.if.end40.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.end35.i.if.then37.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37.i

if.then37.i:                                      ; preds = %if.end35.i.if.then37.i_crit_edge, %lor.end.i.if.then37.i_crit_edge, %if.end15.i.if.then37.i_crit_edge
  %retry_until.0159.i = phi i32 [ %cond.i457, %if.end35.i.if.then37.i_crit_edge ], [ %conv17.i, %if.end15.i.if.then37.i_crit_edge ], [ %retries.1.i.i, %lor.end.i.if.then37.i_crit_edge ]
  %icsk_user_timeout.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 27
  %169 = ptrtoint ptr %icsk_user_timeout.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %icsk_user_timeout.i, align 4
  %call38.i = tail call fastcc zeroext i1 @retransmits_timed_out(ptr noundef %sk, i32 noundef %retry_until.0159.i, i32 noundef %170) #9
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %if.end35.i.if.end40.i_crit_edge
  %expired.1.off0.i = phi i1 [ true, %if.end35.i.if.end40.i_crit_edge ], [ %call38.i, %if.then37.i ]
  tail call void @tcp_fastopen_active_detect_blackhole(ptr noundef %sk, i1 noundef zeroext %expired.1.off0.i) #9
  %bpf_sock_ops_cb_flags.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 107
  %171 = ptrtoint ptr %bpf_sock_ops_cb_flags.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %bpf_sock_ops_cb_flags.i, align 4
  %173 = and i8 %172, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool44.not.i = icmp eq i8 %173, 0
  br i1 %tobool44.not.i, label %if.end40.i.if.end52.i_crit_edge, label %if.then45.i

if.end40.i.if.end52.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.then45.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_retransmits46.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 18
  %174 = ptrtoint ptr %icsk_retransmits46.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %icsk_retransmits46.i, align 1
  %conv47.i = zext i8 %175 to i32
  %icsk_rto48.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %176 = ptrtoint ptr %icsk_rto48.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %icsk_rto48.i, align 4
  %conv50.i = zext i1 %expired.1.off0.i to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i.i) #9
  %178 = getelementptr inbounds [3 x i32], ptr %args.i.i, i32 0, i32 1
  %179 = getelementptr inbounds [3 x i32], ptr %args.i.i, i32 0, i32 2
  %180 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %conv47.i, ptr %args.i.i, align 4
  %181 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %177, ptr %178, align 4
  %182 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %conv50.i, ptr %179, align 4
  %call.i.i459 = call fastcc i32 @tcp_call_bpf(ptr noundef %sk, i32 noundef 8, i32 noundef 3, ptr noundef nonnull %args.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i.i) #9
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then45.i, %if.end40.i.if.end52.i_crit_edge
  br i1 %expired.1.off0.i, label %if.then54.i, label %if.end55.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk_err_soft.i150.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 52
  %183 = ptrtoint ptr %sk_err_soft.i150.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %sk_err_soft.i150.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.i151.i = icmp eq i32 %184, 0
  %..i.i460 = select i1 %tobool.not.i151.i, i32 110, i32 %184
  %sk_err.i.i461 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %185 = ptrtoint ptr %sk_err.i.i461 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %..i.i460, ptr %sk_err.i.i461, align 4
  tail call void @sk_error_report(ptr noundef %sk) #9
  tail call void @tcp_write_queue_purge(ptr noundef %sk) #9
  tail call void @tcp_done(ptr noundef %sk) #9
  br label %tcp_write_timeout.exit

if.end55.i:                                       ; preds = %if.end52.i
  %sk_txhash.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 42
  %186 = ptrtoint ptr %sk_txhash.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %sk_txhash.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool.not.i153.i = icmp eq i32 %187, 0
  br i1 %tobool.not.i153.i, label %if.end55.i.if.end231_crit_edge, label %if.then57.i

if.end55.i.if.end231_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231

if.then57.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 @prandom_u32() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i154.i = icmp eq i32 %call.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool.not.i.i.i154.i, i32 1, i32 %call.i.i.i.i
  %188 = ptrtoint ptr %sk_txhash.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile i32 %..i.i.i.i, ptr %sk_txhash.i.i, align 4
  %timeout_rehash.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 108
  %189 = ptrtoint ptr %timeout_rehash.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %timeout_rehash.i, align 2
  %inc.i462 = add i16 %190, 1
  store i16 %inc.i462, ptr %timeout_rehash.i, align 2
  br label %tcp_write_timeout.exit

tcp_write_timeout.exit:                           ; preds = %if.then57.i, %if.then54.i
  %.sink163.i = phi i32 [ 53, %if.then54.i ], [ 120, %if.then57.i ]
  %191 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %skc_net.i, align 4
  %net_statistics.i.i463 = getelementptr inbounds %struct.net, ptr %192, i32 0, i32 30, i32 3
  %193 = ptrtoint ptr %net_statistics.i.i463 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %net_statistics.i.i463, align 4
  %arrayidx.i.i464 = getelementptr [126 x i32], ptr %194, i32 0, i32 %.sink163.i
  %195 = ptrtoint ptr %arrayidx.i.i464 to i32
  %196 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i465 = and i32 %196, -16384
  %197 = inttoptr i32 %and.i.i.i465 to ptr
  %cpu.i.i466 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 3
  %198 = ptrtoint ptr %cpu.i.i466 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cpu.i.i466, align 4
  %arrayidx8.i.i467 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %199
  %200 = ptrtoint ptr %arrayidx8.i.i467 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx8.i.i467, align 4
  %add.i.i468 = add i32 %201, %195
  %202 = inttoptr i32 %add.i.i468 to ptr
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %202, align 4
  %add68.i = add i32 %204, 1
  store i32 %add68.i, ptr %202, align 4
  br i1 %expired.1.off0.i, label %tcp_write_timeout.exit.cleanup355_crit_edge, label %tcp_write_timeout.exit.if.end231_crit_edge

tcp_write_timeout.exit.if.end231_crit_edge:       ; preds = %tcp_write_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231

tcp_write_timeout.exit.cleanup355_crit_edge:      ; preds = %tcp_write_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup355

if.end231:                                        ; preds = %tcp_write_timeout.exit.if.end231_crit_edge, %if.end55.i.if.end231_crit_edge
  %icsk_retransmits = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 18
  %205 = ptrtoint ptr %icsk_retransmits to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %icsk_retransmits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %cmp233 = icmp eq i8 %206, 0
  br i1 %cmp233, label %if.then235, label %if.end231.if.end300_crit_edge

if.end231.if.end300_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end300

if.then235:                                       ; preds = %if.end231
  %icsk_ca_state = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 17
  %207 = ptrtoint ptr %icsk_ca_state to i32
  call void @__asan_load1_noabort(i32 %207)
  %bf.load = load i8, ptr %icsk_ca_state, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %trunc = trunc i8 %bf.lshr to i5
  %208 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values.17)
  switch i5 %trunc, label %lor.lhs.false [
    i5 3, label %if.then239
    i5 4, label %if.then235.if.then271_crit_edge
    i5 1, label %if.then235.if.then261_crit_edge
  ]

if.then235.if.then261_crit_edge:                  ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then261

if.then235.if.then271_crit_edge:                  ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then271

if.then239:                                       ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #11
  %sack_ok.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 4
  %209 = ptrtoint ptr %sack_ok.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 3)
  %bf.load.i469 = load i24, ptr %sack_ok.i, align 4
  %210 = and i24 %bf.load.i469, 917504
  %tobool.i470.not = icmp eq i24 %210, 0
  %. = select i1 %tobool.i470.not, i32 43, i32 44
  br label %if.then271

lor.lhs.false:                                    ; preds = %if.then235
  %sacked_out = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 84
  %211 = ptrtoint ptr %sacked_out to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %sacked_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool260.not = icmp eq i32 %212, 0
  br i1 %tobool260.not, label %lor.lhs.false.if.end300_crit_edge, label %lor.lhs.false.if.then261_crit_edge

lor.lhs.false.if.then261_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then261

lor.lhs.false.if.end300_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end300

if.then261:                                       ; preds = %lor.lhs.false.if.then261_crit_edge, %if.then235.if.then261_crit_edge
  %sack_ok.i471 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 4
  %213 = ptrtoint ptr %sack_ok.i471 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 3)
  %bf.load.i472 = load i24, ptr %sack_ok.i471, align 4
  %214 = and i24 %bf.load.i472, 917504
  %tobool.i473.not = icmp eq i24 %214, 0
  %.438 = select i1 %tobool.i473.not, i32 35, i32 36
  br label %if.then271

if.then271:                                       ; preds = %if.then261, %if.then239, %if.then235.if.then271_crit_edge
  %mib_idx.0.ph = phi i32 [ %.438, %if.then261 ], [ 37, %if.then235.if.then271_crit_edge ], [ %., %if.then239 ]
  %215 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %skc_net.i, align 4
  %net_statistics286 = getelementptr inbounds %struct.net, ptr %216, i32 0, i32 30, i32 3
  %217 = ptrtoint ptr %net_statistics286 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %net_statistics286, align 4
  %arrayidx288 = getelementptr [126 x i32], ptr %218, i32 0, i32 %mib_idx.0.ph
  %219 = ptrtoint ptr %arrayidx288 to i32
  %220 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %cpu, align 4
  %arrayidx292 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %221
  %222 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx292, align 4
  %add293 = add i32 %223, %219
  %224 = inttoptr i32 %add293 to ptr
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %224, align 4
  %add294 = add i32 %226, 1
  store i32 %add294, ptr %224, align 4
  br label %if.end300

if.end300:                                        ; preds = %if.then271, %lor.lhs.false.if.end300_crit_edge, %if.end231.if.end300_crit_edge
  tail call void @tcp_enter_loss(ptr noundef %sk) #9
  %227 = ptrtoint ptr %icsk_retransmits to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %icsk_retransmits, align 1
  %inc = add i8 %228, 1
  store i8 %inc, ptr %icsk_retransmits, align 1
  %call.i476 = tail call ptr @rb_first(ptr noundef %51) #9
  %call303 = tail call i32 @tcp_retransmit_skb(ptr noundef %sk, ptr noundef %call.i476, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %cmp304 = icmp sgt i32 %call303, 0
  br i1 %cmp304, label %if.then306, label %if.end307

if.then306:                                       ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_pending.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 19
  %229 = ptrtoint ptr %icsk_pending.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 1, ptr %icsk_pending.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %230 = load volatile i32, ptr @jiffies, align 128
  %add.i477 = add i32 %230, 50
  %icsk_timeout.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 3
  %231 = ptrtoint ptr %icsk_timeout.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %add.i477, ptr %icsk_timeout.i, align 8
  %icsk_retransmit_timer.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %icsk_retransmit_timer.i, i32 noundef %add.i477) #9
  br label %cleanup355

if.end307:                                        ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_backoff = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 20
  %232 = ptrtoint ptr %icsk_backoff to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %icsk_backoff, align 1
  %inc308 = add i8 %233, 1
  store i8 %inc308, ptr %icsk_backoff, align 1
  br label %out_reset_timer

out_reset_timer:                                  ; preds = %if.end307, %cleanup.thread
  %skc_state310 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %234 = ptrtoint ptr %skc_state310 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load volatile i8, ptr %skc_state310, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %235)
  %cmp312 = icmp eq i8 %235, 1
  br i1 %cmp312, label %land.lhs.true314, label %out_reset_timer.if.else336_crit_edge

out_reset_timer.if.else336_crit_edge:             ; preds = %out_reset_timer
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else336

land.lhs.true314:                                 ; preds = %out_reset_timer
  %thin_lto = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 37
  %236 = ptrtoint ptr %thin_lto to i32
  call void @__asan_load2_noabort(i32 %236)
  %bf.load315 = load i16, ptr %thin_lto, align 4
  %237 = and i16 %bf.load315, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %237)
  %tobool318.not = icmp eq i16 %237, 0
  br i1 %tobool318.not, label %lor.lhs.false319, label %land.lhs.true314.land.lhs.true322_crit_edge

land.lhs.true314.land.lhs.true322_crit_edge:      ; preds = %land.lhs.true314
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true322

lor.lhs.false319:                                 ; preds = %land.lhs.true314
  %sysctl_tcp_thin_linear_timeouts = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 77
  %238 = ptrtoint ptr %sysctl_tcp_thin_linear_timeouts to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %sysctl_tcp_thin_linear_timeouts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool321.not = icmp eq i8 %239, 0
  br i1 %tobool321.not, label %lor.lhs.false319.if.else336_crit_edge, label %lor.lhs.false319.land.lhs.true322_crit_edge

lor.lhs.false319.land.lhs.true322_crit_edge:      ; preds = %lor.lhs.false319
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true322

lor.lhs.false319.if.else336_crit_edge:            ; preds = %lor.lhs.false319
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else336

land.lhs.true322:                                 ; preds = %lor.lhs.false319.land.lhs.true322_crit_edge, %land.lhs.true314.land.lhs.true322_crit_edge
  %240 = ptrtoint ptr %packets_out to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %packets_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %241)
  %cmp.i = icmp ult i32 %241, 4
  br i1 %cmp.i, label %tcp_stream_is_thin.exit, label %land.lhs.true322.if.else336_crit_edge

land.lhs.true322.if.else336_crit_edge:            ; preds = %land.lhs.true322
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else336

tcp_stream_is_thin.exit:                          ; preds = %land.lhs.true322
  %snd_ssthresh.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %242 = ptrtoint ptr %snd_ssthresh.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %snd_ssthresh.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %243)
  %cmp.i.i478 = icmp ult i32 %243, 2147483647
  br i1 %cmp.i.i478, label %land.lhs.true325, label %tcp_stream_is_thin.exit.if.else336_crit_edge

tcp_stream_is_thin.exit.if.else336_crit_edge:     ; preds = %tcp_stream_is_thin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else336

land.lhs.true325:                                 ; preds = %tcp_stream_is_thin.exit
  %icsk_retransmits326 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 18
  %244 = ptrtoint ptr %icsk_retransmits326 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %icsk_retransmits326, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %245)
  %cmp328 = icmp ult i8 %245, 7
  br i1 %cmp328, label %if.then330, label %land.lhs.true325.if.else336_crit_edge

land.lhs.true325.if.else336_crit_edge:            ; preds = %land.lhs.true325
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else336

if.then330:                                       ; preds = %land.lhs.true325
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_backoff331 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 20
  %246 = ptrtoint ptr %icsk_backoff331 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 0, ptr %icsk_backoff331, align 1
  %srtt_us.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %247 = ptrtoint ptr %srtt_us.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %srtt_us.i, align 8
  %shr.i = lshr i32 %248, 3
  %rttvar_us.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 48
  %249 = ptrtoint ptr %rttvar_us.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %rttvar_us.i, align 4
  %add.i479 = add i32 %shr.i, %250
  %call3.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %add.i479) #9
  %251 = tail call i32 @llvm.umin.i32(i32 %call3.i.i, i32 12000)
  %icsk_rto = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %252 = ptrtoint ptr %icsk_rto to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %icsk_rto, align 4
  br label %if.end347

if.else336:                                       ; preds = %land.lhs.true325.if.else336_crit_edge, %tcp_stream_is_thin.exit.if.else336_crit_edge, %land.lhs.true322.if.else336_crit_edge, %lor.lhs.false319.if.else336_crit_edge, %out_reset_timer.if.else336_crit_edge
  %icsk_rto337 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %253 = ptrtoint ptr %icsk_rto337 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %icsk_rto337, align 4
  %shl338 = shl i32 %254, 1
  %255 = tail call i32 @llvm.umin.i32(i32 %shl338, i32 12000)
  %256 = ptrtoint ptr %icsk_rto337 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %icsk_rto337, align 4
  br label %if.end347

if.end347:                                        ; preds = %if.else336, %if.then330
  %icsk_user_timeout.i485 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 27
  %257 = ptrtoint ptr %icsk_user_timeout.i485 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %icsk_user_timeout.i485, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool.not.i486 = icmp eq i32 %258, 0
  br i1 %tobool.not.i486, label %if.then.i488, label %if.end.i497

if.then.i488:                                     ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_rto.i487 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %259 = ptrtoint ptr %icsk_rto.i487 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %icsk_rto.i487, align 4
  br label %tcp_clamp_rto_to_user_timeout.exit

if.end.i497:                                      ; preds = %if.end347
  %retrans_stamp.i489 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 98
  %261 = ptrtoint ptr %retrans_stamp.i489 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %retrans_stamp.i489, align 8
  %tcp_mstamp.i.i490 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %263 = ptrtoint ptr %tcp_mstamp.i.i490 to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %tcp_mstamp.i.i490, align 8
  %265 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %264, i32 0) #12, !srcloc !56
  %asmresult.i.i.i.i.i491 = extractvalue { i64, i32 } %265, 0
  %asmresult4.i.i.i.i.i492 = extractvalue { i64, i32 } %265, 1
  %266 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %264, i64 %asmresult.i.i.i.i.i491, i32 %asmresult4.i.i.i.i.i492) #12, !srcloc !57
  %asmresult10.i.i.i.i.i493 = extractvalue { i64, i32 } %266, 0
  %div1581.i.i.i.i494 = lshr i64 %asmresult10.i.i.i.i.i493, 9
  %conv.i.i495 = trunc i64 %div1581.i.i.i.i494 to i32
  %sub.neg.i = sub i32 %262, %conv.i.i495
  %sub5.i = add i32 %sub.neg.i, %258
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub5.i)
  %cmp.i496 = icmp slt i32 %sub5.i, 1
  br i1 %cmp.i496, label %if.end.i497.tcp_clamp_rto_to_user_timeout.exit_crit_edge, label %if.end7.i

if.end.i497.tcp_clamp_rto_to_user_timeout.exit_crit_edge: ; preds = %if.end.i497
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_clamp_rto_to_user_timeout.exit

if.end7.i:                                        ; preds = %if.end.i497
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_rto8.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %267 = ptrtoint ptr %icsk_rto8.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %icsk_rto8.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %sub5.i) #9
  %269 = tail call i32 @llvm.umin.i32(i32 %268, i32 %call2.i.i) #9
  br label %tcp_clamp_rto_to_user_timeout.exit

tcp_clamp_rto_to_user_timeout.exit:               ; preds = %if.end7.i, %if.end.i497.tcp_clamp_rto_to_user_timeout.exit_crit_edge, %if.then.i488
  %retval.0.i503 = phi i32 [ %269, %if.end7.i ], [ %260, %if.then.i488 ], [ 1, %if.end.i497.tcp_clamp_rto_to_user_timeout.exit_crit_edge ]
  tail call fastcc void @inet_csk_reset_xmit_timer(ptr noundef %sk, i32 noundef 1, i32 noundef %retval.0.i503, i32 noundef 12000)
  %sysctl_tcp_retries1 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 66
  %270 = ptrtoint ptr %sysctl_tcp_retries1 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %sysctl_tcp_retries1, align 8
  %conv350 = zext i8 %271 to i32
  %add351 = add nuw nsw i32 %conv350, 1
  %call352 = tail call fastcc zeroext i1 @retransmits_timed_out(ptr noundef %sk, i32 noundef %add351, i32 noundef 0)
  br i1 %call352, label %if.then353, label %tcp_clamp_rto_to_user_timeout.exit.cleanup355_crit_edge

tcp_clamp_rto_to_user_timeout.exit.cleanup355_crit_edge: ; preds = %tcp_clamp_rto_to_user_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup355

if.then353:                                       ; preds = %tcp_clamp_rto_to_user_timeout.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__sk_dst_reset(ptr noundef %sk)
  br label %cleanup355

cleanup355:                                       ; preds = %if.then353, %tcp_clamp_rto_to_user_timeout.exit.cleanup355_crit_edge, %if.then306, %tcp_write_timeout.exit.cleanup355_crit_edge, %lor.end.i.cleanup355_crit_edge, %cleanup, %if.then86, %land.rhs75.cleanup355_crit_edge, %if.end59.cleanup355_crit_edge, %if.end23.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcp_write_err(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_err_soft = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 52
  %0 = ptrtoint ptr %sk_err_soft to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_err_soft, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 110, i32 %1
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %2 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %sk_err, align 4
  tail call void @sk_error_report(ptr noundef %sk) #9
  tail call void @tcp_write_queue_purge(ptr noundef %sk) #9
  tail call void @tcp_done(ptr noundef %sk) #9
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 3
  %5 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %6, i32 0, i32 53
  %7 = ptrtoint ptr %arrayidx to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx8 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %add = add i32 %13, %7
  %14 = inttoptr i32 %add to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add9 = add i32 %16, 1
  store i32 %add9, ptr %14, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_enter_loss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_retransmit_skb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__sk_dst_reset(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %skc_tx_queue_mapping.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %0 = ptrtoint ptr %skc_tx_queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i, align 4
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %1 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sk_dst_pending_confirm.i, align 8
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %entry.__sk_dst_set.exit_crit_edge

entry.__sk_dst_set.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_set.exit

lockdep_sock_is_held.exit.i:                      ; preds = %entry
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %land.lhs.true.i, label %lockdep_sock_is_held.exit.i.__sk_dst_set.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_set.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_set.exit

land.lhs.true.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__sk_dst_set.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__sk_dst_set.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_set.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @__sk_dst_set.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true2.i.__sk_dst_set.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__sk_dst_set.exit_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_set.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__sk_dst_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 2113, ptr noundef nonnull @.str.2) #9
  br label %__sk_dst_set.exit

__sk_dst_set.exit:                                ; preds = %if.then.i, %land.lhs.true2.i.__sk_dst_set.exit_crit_edge, %land.lhs.true.i.__sk_dst_set.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_set.exit_crit_edge, %entry.__sk_dst_set.exit_crit_edge
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %2 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_dst_cache.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %4 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %sk_dst_cache.i, align 4
  tail call void @dst_release(ptr noundef %3) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inet_csk_reset_xmit_timer(ptr noundef %sk, i32 noundef %what, i32 noundef %when, i32 noundef %max_when) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %when)
  %cmp = icmp ugt i32 %when, 12000
  br i1 %cmp, label %do.body, label %entry.if.then13_crit_edge

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inet_csk_reset_xmit_timer.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inet_csk_reset_xmit_timer, %__here)) #9
          to label %if.then13 [label %__here], !srcloc !55

__here:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inet_csk_reset_xmit_timer.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.13, ptr noundef %sk, i32 noundef 1, i32 noundef %when, ptr noundef blockaddress(@inet_csk_reset_xmit_timer, %__here)) #9
  br label %if.then13

if.then13:                                        ; preds = %__here, %do.body, %entry.if.then13_crit_edge
  %when.addr.0 = phi i32 [ %when, %entry.if.then13_crit_edge ], [ 12000, %__here ], [ 12000, %do.body ]
  %icsk_pending = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %icsk_pending to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %icsk_pending, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, %when.addr.0
  %icsk_timeout = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %icsk_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %icsk_timeout, align 8
  %icsk_retransmit_timer = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %icsk_retransmit_timer, i32 noundef %add) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @retransmits_timed_out(ptr noundef %sk, i32 noundef %boundary, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_retransmits = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 18
  %0 = ptrtoint ptr %icsk_retransmits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %icsk_retransmits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %retrans_stamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 98
  %2 = ptrtoint ptr %retrans_stamp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %retrans_stamp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp = icmp eq i32 %timeout, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end10_crit_edge, !prof !54

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then4.cond.false4.i_crit_edge, label %if.then6

if.then4.cond.false4.i_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false4.i

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @tcp_call_bpf(ptr noundef %sk, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  %spec.store.select.i = select i1 %cmp.i, i32 100, i32 %call.i
  br label %cond.false4.i

cond.false4.i:                                    ; preds = %if.then6, %if.then4.cond.false4.i_crit_edge
  %rto_base.0 = phi i32 [ %spec.store.select.i, %if.then6 ], [ 20, %if.then4.cond.false4.i_crit_edge ]
  %div.i = udiv i32 12000, %rto_base.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %rto_base.0)
  %tobool.not.i.i.i = icmp ugt i32 %rto_base.0, 12000
  %6 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 true) #9, !range !60
  %sub.i.op.i.i = xor i32 %6, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %boundary)
  %cmp8.not.i = icmp ult i32 %sub.i.i, %boundary
  br i1 %cmp8.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl i32 2, %boundary
  %sub10.i = add i32 %shl.i, -1
  %mul.i = mul i32 %rto_base.0, %sub10.i
  br label %tcp_model_timeout.exit

if.else.i:                                        ; preds = %cond.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl11.i = shl i32 2, %sub.i.i
  %sub12.i = add i32 %shl11.i, -1
  %mul13.i = mul i32 %sub12.i, %rto_base.0
  %sub14.i = sub i32 %boundary, %sub.i.i
  %mul15.i = mul i32 %sub14.i, 12000
  %add.i = add i32 %mul13.i, %mul15.i
  br label %tcp_model_timeout.exit

tcp_model_timeout.exit:                           ; preds = %if.else.i, %if.then.i
  %timeout.0.i = phi i32 [ %mul.i, %if.then.i ], [ %add.i, %if.else.i ]
  %call16.i = tail call i32 @jiffies_to_msecs(i32 noundef %timeout.0.i) #9
  br label %if.end10

if.end10:                                         ; preds = %tcp_model_timeout.exit, %if.end.if.end10_crit_edge
  %timeout.addr.0 = phi i32 [ %call16.i, %tcp_model_timeout.exit ], [ %timeout, %if.end.if.end10_crit_edge ]
  %tcp_mstamp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %7 = ptrtoint ptr %tcp_mstamp.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tcp_mstamp.i, align 8
  %9 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %8, i32 0) #12, !srcloc !56
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %9, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %9, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %8, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !57
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %10, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %conv.i = trunc i64 %div1581.i.i.i to i32
  %11 = add i32 %timeout.addr.0, %3
  %sub13 = sub i32 %conv.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub13)
  %cmp14 = icmp sgt i32 %sub13, -1
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end10 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_write_timer_handler(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %icsk_pending = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 19
  %2 = ptrtoint ptr %icsk_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %icsk_pending, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %icsk_timeout = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 3
  %5 = ptrtoint ptr %icsk_timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %icsk_timeout, align 8
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_retransmit_timer = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %icsk_retransmit_timer, i32 noundef %6) #9
  br label %out

if.end5:                                          ; preds = %if.end
  tail call void @tcp_mstamp_refresh(ptr noundef %sk) #9
  %7 = ptrtoint ptr %icsk_pending to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %icsk_pending, align 2
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %8, label %if.end5.out_crit_edge [
    i8 6, label %sw.bb
    i8 5, label %sw.bb9
    i8 1, label %sw.bb10
    i8 3, label %sw.bb12
  ]

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_rack_reo_timeout(ptr noundef %sk) #9
  br label %out

sw.bb9:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_send_loss_probe(ptr noundef %sk) #9
  br label %out

sw.bb10:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %icsk_pending to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %icsk_pending, align 2
  tail call void @tcp_retransmit_timer(ptr noundef %sk)
  br label %out

sw.bb12:                                          ; preds = %if.end5
  %11 = ptrtoint ptr %icsk_pending to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %icsk_pending, align 2
  %sk_write_queue.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %12 = ptrtoint ptr %sk_write_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk_write_queue.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %13, %sk_write_queue.i.i
  %packets_out.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 51
  %14 = ptrtoint ptr %packets_out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %packets_out.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp ne i32 %15, 0
  %tobool3.not75.i = icmp eq ptr %13, null
  %tobool3.not.i = or i1 %cmp.i.i.i, %tobool3.not75.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_probes_out.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 22
  %16 = ptrtoint ptr %icsk_probes_out.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %icsk_probes_out.i, align 1
  %icsk_probes_tstamp.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 26
  %17 = ptrtoint ptr %icsk_probes_tstamp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %icsk_probes_tstamp.i, align 8
  br label %out

if.end.i:                                         ; preds = %sw.bb12
  %icsk_probes_tstamp4.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 26
  %18 = ptrtoint ptr %icsk_probes_tstamp4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %icsk_probes_tstamp4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i = icmp eq i32 %19, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %21 = ptrtoint ptr %icsk_probes_tstamp4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %icsk_probes_tstamp4.i, align 8
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i
  %icsk_user_timeout.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 27
  %22 = ptrtoint ptr %icsk_user_timeout.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %icsk_user_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not.i = icmp eq i32 %23, 0
  br i1 %tobool8.not.i, label %if.else.i.if.end14.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %24, %19
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %23) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %call2.i.i)
  %cmp.not.i = icmp ult i32 %sub.i, %call2.i.i
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %land.lhs.true.i.abort.i_crit_edge

land.lhs.true.i.abort.i_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %land.lhs.true.i.if.end14.i_crit_edge, %if.else.i.if.end14.i_crit_edge, %if.then6.i
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %25 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skc_net.i.i, align 4
  %sysctl_tcp_retries2.i = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 35, i32 67
  %27 = ptrtoint ptr %sysctl_tcp_retries2.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sysctl_tcp_retries2.i, align 1
  %conv.i = zext i8 %28 to i32
  %29 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i, label %if.end14.i.if.end34.i_crit_edge, label %if.then17.i

if.end14.i.if.end34.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then17.i:                                      ; preds = %if.end14.i
  %icsk_rto.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %33 = ptrtoint ptr %icsk_rto.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %icsk_rto.i.i, align 4
  %conv.i.i = zext i32 %34 to i64
  %icsk_backoff.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 20
  %35 = ptrtoint ptr %icsk_backoff.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %icsk_backoff.i.i, align 1
  %sh_prom.i.i = zext i8 %36 to i64
  %shl.i.i = shl i64 %conv.i.i, %sh_prom.i.i
  %37 = tail call i64 @llvm.umin.i64(i64 %shl.i.i, i64 12000) #9
  %38 = trunc i64 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %38)
  %cmp19.i = icmp ult i32 %38, 12000
  %sysctl_tcp_orphan_retries.i.i = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 35, i32 68
  %39 = ptrtoint ptr %sysctl_tcp_orphan_retries.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sysctl_tcp_orphan_retries.i.i, align 2
  %sk_err_soft.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 52
  %41 = ptrtoint ptr %sk_err_soft.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sk_err_soft.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i = icmp eq i32 %42, 0
  %43 = or i1 %tobool.not.i.i, %cmp19.i
  %retries.0.shrunk.i.i = select i1 %43, i8 %40, i8 0
  %retries.0.i.i = zext i8 %retries.0.shrunk.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retries.0.shrunk.i.i)
  %cmp.i67.i = icmp eq i8 %retries.0.shrunk.i.i, 0
  %spec.select11.i.i = select i1 %cmp19.i, i32 8, i32 0
  %retries.1.i.i = select i1 %cmp.i67.i, i32 %spec.select11.i.i, i32 %retries.0.i.i
  %conv25.i = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retries.1.i.i, i32 %conv25.i)
  %cmp26.not.i = icmp ugt i32 %retries.1.i.i, %conv25.i
  %or.cond74.i = select i1 %cmp19.i, i1 true, i1 %cmp26.not.i
  br i1 %or.cond74.i, label %if.end29.i, label %if.then17.i.abort.i_crit_edge

if.then17.i.abort.i_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort.i

if.end29.i:                                       ; preds = %if.then17.i
  %call30.i = tail call fastcc i32 @tcp_out_of_resources(ptr noundef %sk, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.if.end34.i_crit_edge, label %if.end29.i.out_crit_edge

if.end29.i.out_crit_edge:                         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end29.i.if.end34.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end29.i.if.end34.i_crit_edge, %if.end14.i.if.end34.i_crit_edge
  %max_probes.0.i = phi i32 [ %conv.i, %if.end14.i.if.end34.i_crit_edge ], [ %retries.1.i.i, %if.end29.i.if.end34.i_crit_edge ]
  %icsk_probes_out35.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 22
  %44 = ptrtoint ptr %icsk_probes_out35.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %icsk_probes_out35.i, align 1
  %conv36.i = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_probes.0.i, i32 %conv36.i)
  %cmp37.not.i = icmp ugt i32 %max_probes.0.i, %conv36.i
  br i1 %cmp37.not.i, label %if.else40.i, label %if.end34.i.abort.i_crit_edge

if.end34.i.abort.i_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort.i

abort.i:                                          ; preds = %if.end34.i.abort.i_crit_edge, %if.then17.i.abort.i_crit_edge, %land.lhs.true.i.abort.i_crit_edge
  %sk_err_soft.i68.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 52
  %46 = ptrtoint ptr %sk_err_soft.i68.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sk_err_soft.i68.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i69.i = icmp eq i32 %47, 0
  %..i.i = select i1 %tobool.not.i69.i, i32 110, i32 %47
  %sk_err.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %48 = ptrtoint ptr %sk_err.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %..i.i, ptr %sk_err.i.i, align 4
  tail call void @sk_error_report(ptr noundef %sk) #9
  tail call void @tcp_write_queue_purge(ptr noundef %sk) #9
  tail call void @tcp_done(ptr noundef %sk) #9
  %skc_net.i.i70.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %49 = ptrtoint ptr %skc_net.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %skc_net.i.i70.i, align 4
  %net_statistics.i.i = getelementptr inbounds %struct.net, ptr %50, i32 0, i32 30, i32 3
  %51 = ptrtoint ptr %net_statistics.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net_statistics.i.i, align 4
  %arrayidx.i.i = getelementptr [126 x i32], ptr %52, i32 0, i32 53
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  %54 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i.i, align 4
  %arrayidx8.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx8.i.i, align 4
  %add.i.i = add i32 %59, %53
  %60 = inttoptr i32 %add.i.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %add9.i.i = add i32 %62, 1
  store i32 %add9.i.i, ptr %60, align 4
  br label %out

if.else40.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_send_probe0(ptr noundef %sk) #9
  br label %out

out:                                              ; preds = %if.else40.i, %abort.i, %if.end29.i.out_crit_edge, %if.then.i, %sw.bb10, %sw.bb9, %sw.bb, %if.end5.out_crit_edge, %if.then3, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %63 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %64, i32 0, i32 32
  %65 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i28 = icmp eq ptr %66, null
  br i1 %tobool.i.not.i28, label %out.sk_mem_reclaim.exit_crit_edge, label %if.end.i30

out.sk_mem_reclaim.exit_crit_edge:                ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_mem_reclaim.exit

if.end.i30:                                       ; preds = %out
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %67 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sk_forward_alloc.i, align 8
  %sk_reserved_mem.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 12
  %69 = ptrtoint ptr %sk_reserved_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sk_reserved_mem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i29 = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i29, label %if.end.i30.sk_unused_reserved_mem.exit.i_crit_edge, label %if.end.i.i31, !prof !54

if.end.i30.sk_unused_reserved_mem.exit.i_crit_edge: ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_unused_reserved_mem.exit.i

if.end.i.i31:                                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %71 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sk_wmem_queued.i.i, align 8
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #9
  %73 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %75 = add i32 %72, %74
  %sub5.i.i = sub i32 %70, %75
  %76 = tail call i32 @llvm.smax.i32(i32 %sub5.i.i, i32 0) #9
  br label %sk_unused_reserved_mem.exit.i

sk_unused_reserved_mem.exit.i:                    ; preds = %if.end.i.i31, %if.end.i30.sk_unused_reserved_mem.exit.i_crit_edge
  %retval.0.i.i32 = phi i32 [ %76, %if.end.i.i31 ], [ 0, %if.end.i30.sk_unused_reserved_mem.exit.i_crit_edge ]
  %sub.i33 = sub i32 %68, %retval.0.i.i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub.i33)
  %cmp.i = icmp sgt i32 %sub.i33, 4095
  br i1 %cmp.i, label %if.then2.i, label %sk_unused_reserved_mem.exit.i.sk_mem_reclaim.exit_crit_edge

sk_unused_reserved_mem.exit.i.sk_mem_reclaim.exit_crit_edge: ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sk_mem_reclaim.exit

if.then2.i:                                       ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__sk_mem_reclaim(ptr noundef %sk, i32 noundef %sub.i33) #9
  br label %sk_mem_reclaim.exit

sk_mem_reclaim.exit:                              ; preds = %if.then2.i, %sk_unused_reserved_mem.exit.i.sk_mem_reclaim.exit_crit_edge, %out.sk_mem_reclaim.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rack_reo_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_loss_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tcp_syn_ack_timeout(ptr nocapture noundef readonly %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30, i32 3
  %2 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %arrayidx to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx11 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add12 = add i32 %13, 1
  store i32 %add12, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_set_keepalive(ptr noundef %sk, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool1.not = icmp eq i32 %val, 0
  br i1 %tobool1.not, label %if.then6.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.then2, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then2:                                         ; preds = %land.lhs.true
  %keepalive_time.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 104
  %6 = ptrtoint ptr %keepalive_time.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %keepalive_time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.then2.keepalive_time_when.exit_crit_edge

if.then2.keepalive_time_when.exit_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %keepalive_time_when.exit

cond.false.i:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i.i, align 4
  %sysctl_tcp_keepalive_time.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 35, i32 58
  %10 = ptrtoint ptr %sysctl_tcp_keepalive_time.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sysctl_tcp_keepalive_time.i, align 4
  br label %keepalive_time_when.exit

keepalive_time_when.exit:                         ; preds = %cond.false.i, %if.then2.keepalive_time_when.exit_crit_edge
  %cond.i = phi i32 [ %11, %cond.false.i ], [ %7, %if.then2.keepalive_time_when.exit_crit_edge ]
  tail call void @inet_csk_reset_keepalive_timer(ptr noundef %sk, i32 noundef %cond.i) #9
  br label %if.end8

if.then6.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @inet_csk_delete_keepalive_timer(ptr noundef %sk) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6.critedge, %keepalive_time_when.exit, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_reset_keepalive_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_delete_keepalive_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_init_xmit_timers(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inet_csk_init_xmit_timers(ptr noundef %sk, ptr noundef nonnull @tcp_write_timer, ptr noundef nonnull @tcp_delack_timer, ptr noundef nonnull @tcp_keepalive_timer) #9
  %pacing_timer = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 85
  tail call void @hrtimer_init(ptr noundef %pacing_timer, i32 noundef 1, i32 noundef 6) #9
  %function = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 85, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @tcp_pace_kick, ptr %function, align 8
  %compressed_ack_timer = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 86
  tail call void @hrtimer_init(ptr noundef %compressed_ack_timer, i32 noundef 1, i32 noundef 7) #9
  %function6 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 86, i32 2
  %1 = ptrtoint ptr %function6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tcp_compressed_ack_kick, ptr %function6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_init_xmit_timers(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_write_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1284
  %sk_lock = getelementptr i8, ptr %t, i32 -1160
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #9
  %dep_map.i.i.i = getelementptr i8, ptr %t, i32 -1060
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr i8, ptr %t, i32 -1144
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !54

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr i8, ptr %t, i32 -1116
  %1 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_write_timer_handler(ptr noundef %add.ptr)
  br label %if.end4

if.else:                                          ; preds = %sock_owned_by_user.exit
  %sk_tsq_flags = getelementptr i8, ptr %t, i32 -836
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %sk_tsq_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.else
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -1184
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then3.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !53

if.then3.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then3
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end4_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !54

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end4_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then3.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then3.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end4

if.end4:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end4_crit_edge, %if.else.if.end4_crit_edge, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #9
  %skc_refcnt.i13 = getelementptr i8, ptr %t, i32 -1184
  %call.i.i.i.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i13, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i13, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i13, ptr %skc_refcnt.i13, i32 1, ptr elementtype(i32) %skc_refcnt.i13) #9, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i15 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i15, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i13, i32 noundef 3) #9
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @sk_free(ptr noundef %add.ptr) #9
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_delack_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1332
  %sk_lock = getelementptr i8, ptr %t, i32 -1208
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #9
  %dep_map.i.i.i = getelementptr i8, ptr %t, i32 -1108
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr i8, ptr %t, i32 -1192
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !54

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr i8, ptr %t, i32 -1164
  %1 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_delack_timer_handler(ptr noundef %add.ptr)
  br label %if.end20

if.else:                                          ; preds = %sock_owned_by_user.exit
  %skc_net.i = getelementptr i8, ptr %t, i32 -1296
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 3
  %5 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %arrayidx to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %13, %7
  %14 = inttoptr i32 %add to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13 = add i32 %16, 1
  store i32 %add13, ptr %14, align 4
  %sk_tsq_flags = getelementptr i8, ptr %t, i32 -884
  %call18 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %sk_tsq_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then19, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %if.else
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -1232
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then19.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !53

if.then19.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then19
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end20_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !54

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end20_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then19.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then19.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end20

if.end20:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end20_crit_edge, %if.else.if.end20_crit_edge, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #9
  %skc_refcnt.i30 = getelementptr i8, ptr %t, i32 -1232
  %call.i.i.i.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i30, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i30, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i30, ptr %skc_refcnt.i30, i32 1, ptr elementtype(i32) %skc_refcnt.i30) #9, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i32, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i30, i32 noundef 3) #9
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @sk_free(ptr noundef %add.ptr) #9
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_keepalive_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -532
  %sk_lock = getelementptr i8, ptr %t, i32 -408
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #9
  %dep_map.i.i.i = getelementptr i8, ptr %t, i32 -308
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr i8, ptr %t, i32 -392
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !54

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr i8, ptr %t, i32 -364
  %1 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @inet_csk_reset_keepalive_timer(ptr noundef %add.ptr, i32 noundef 5) #9
  br label %out

if.end:                                           ; preds = %sock_owned_by_user.exit
  %skc_state = getelementptr i8, ptr %t, i32 -514
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp = icmp eq i8 %4, 10
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #13
  br label %out

if.end7:                                          ; preds = %if.end
  tail call void @tcp_mstamp_refresh(ptr noundef %add.ptr) #9
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %cmp11 = icmp eq i8 %6, 5
  br i1 %cmp11, label %land.lhs.true, label %if.end7.if.end25_crit_edge

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end7
  %7 = getelementptr i8, ptr %t, i32 -452
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i117.not = icmp eq i32 %10, 0
  br i1 %tobool.i117.not, label %land.lhs.true.if.end25_crit_edge, label %if.then15

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then15:                                        ; preds = %land.lhs.true
  %linger2 = getelementptr i8, ptr %t, i32 1708
  %11 = ptrtoint ptr %linger2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %linger2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp16 = icmp sgt i32 %12, -1
  br i1 %cmp16, label %if.then18, label %if.then15.if.end24_crit_edge

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.then18.tcp_fin_time.exit_crit_edge

if.then18.tcp_fin_time.exit_crit_edge:            ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_fin_time.exit

cond.false.i:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %skc_net.i.i = getelementptr i8, ptr %t, i32 -496
  %13 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i.i, align 4
  %sysctl_tcp_fin_timeout.i = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 35, i32 70
  %15 = ptrtoint ptr %sysctl_tcp_fin_timeout.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sysctl_tcp_fin_timeout.i, align 4
  br label %tcp_fin_time.exit

tcp_fin_time.exit:                                ; preds = %cond.false.i, %if.then18.tcp_fin_time.exit_crit_edge
  %cond.i = phi i32 [ %16, %cond.false.i ], [ %12, %if.then18.tcp_fin_time.exit_crit_edge ]
  %icsk_rto.i = getelementptr i8, ptr %t, i32 848
  %17 = ptrtoint ptr %icsk_rto.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %icsk_rto.i, align 4
  %shl.i = shl i32 %18, 2
  %shr.i = ashr i32 %18, 1
  %sub.i = sub i32 %shl.i, %shr.i
  %19 = tail call i32 @llvm.smax.i32(i32 %cond.i, i32 %sub.i) #9
  %sub = add i32 %19, -6000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp20 = icmp sgt i32 %sub, 0
  br i1 %cmp20, label %cleanup, label %tcp_fin_time.exit.if.end24_crit_edge

tcp_fin_time.exit.if.end24_crit_edge:             ; preds = %tcp_fin_time.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

cleanup:                                          ; preds = %tcp_fin_time.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_time_wait(ptr noundef %add.ptr, i32 noundef 5, i32 noundef %sub) #9
  br label %out

if.end24:                                         ; preds = %tcp_fin_time.exit.if.end24_crit_edge, %if.then15.if.end24_crit_edge
  tail call void @tcp_send_active_reset(ptr noundef %add.ptr, i32 noundef 2592) #9
  tail call void @tcp_done(ptr noundef %add.ptr) #9
  br label %out

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end7.if.end25_crit_edge
  %20 = getelementptr i8, ptr %t, i32 -452
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i118.not = icmp eq i32 %23, 0
  br i1 %tobool.i118.not, label %if.end25.out_crit_edge, label %lor.lhs.false

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %if.end25
  %24 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load volatile i8, ptr %skc_state, align 2
  %conv29 = zext i8 %25 to i32
  %shl = shl nuw i32 1, %conv29
  %and = and i32 %shl, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end31, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end31:                                         ; preds = %lor.lhs.false
  %keepalive_time.i = getelementptr i8, ptr %t, i32 1700
  %26 = ptrtoint ptr %keepalive_time.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %keepalive_time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i119 = icmp eq i32 %27, 0
  br i1 %tobool.not.i119, label %cond.false.i121, label %if.end31.keepalive_time_when.exit_crit_edge

if.end31.keepalive_time_when.exit_crit_edge:      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %keepalive_time_when.exit

cond.false.i121:                                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %skc_net.i.i120 = getelementptr i8, ptr %t, i32 -496
  %28 = ptrtoint ptr %skc_net.i.i120 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skc_net.i.i120, align 4
  %sysctl_tcp_keepalive_time.i = getelementptr inbounds %struct.net, ptr %29, i32 0, i32 35, i32 58
  %30 = ptrtoint ptr %sysctl_tcp_keepalive_time.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sysctl_tcp_keepalive_time.i, align 4
  br label %keepalive_time_when.exit

keepalive_time_when.exit:                         ; preds = %cond.false.i121, %if.end31.keepalive_time_when.exit_crit_edge
  %cond.i122 = phi i32 [ %31, %cond.false.i121 ], [ %27, %if.end31.keepalive_time_when.exit_crit_edge ]
  %packets_out = getelementptr i8, ptr %t, i32 1312
  %32 = ptrtoint ptr %packets_out to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %packets_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool33.not = icmp eq i32 %33, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %keepalive_time_when.exit.resched_crit_edge

keepalive_time_when.exit.resched_crit_edge:       ; preds = %keepalive_time_when.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %resched

lor.lhs.false34:                                  ; preds = %keepalive_time_when.exit
  %write_seq.i = getelementptr i8, ptr %t, i32 1448
  %34 = ptrtoint ptr %write_seq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %write_seq.i, align 4
  %snd_nxt.i = getelementptr i8, ptr %t, i32 1088
  %36 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %snd_nxt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.i123 = icmp eq i32 %35, %37
  br i1 %cmp.i123, label %if.end37, label %lor.lhs.false34.resched_crit_edge

lor.lhs.false34.resched_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %resched

if.end37:                                         ; preds = %lor.lhs.false34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %lrcvtime.i = getelementptr i8, ptr %t, i32 916
  %39 = ptrtoint ptr %lrcvtime.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lrcvtime.i, align 4
  %sub.i124 = sub i32 %38, %40
  %41 = load volatile i32, ptr @jiffies, align 128
  %rcv_tstamp.i = getelementptr i8, ptr %t, i32 1128
  %42 = ptrtoint ptr %rcv_tstamp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rcv_tstamp.i, align 4
  %sub1.i = sub i32 %41, %43
  %44 = tail call i32 @llvm.umin.i32(i32 %sub.i124, i32 %sub1.i) #9
  br i1 %tobool.not.i119, label %keepalive_time_when.exit131, label %keepalive_time_when.exit131.thread

keepalive_time_when.exit131:                      ; preds = %if.end37
  %skc_net.i.i127 = getelementptr i8, ptr %t, i32 -496
  %45 = ptrtoint ptr %skc_net.i.i127 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %skc_net.i.i127, align 4
  %sysctl_tcp_keepalive_time.i128 = getelementptr inbounds %struct.net, ptr %46, i32 0, i32 35, i32 58
  %47 = ptrtoint ptr %sysctl_tcp_keepalive_time.i128 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sysctl_tcp_keepalive_time.i128, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %48)
  %cmp40.not = icmp ult i32 %44, %48
  br i1 %cmp40.not, label %cond.false.i144, label %keepalive_time_when.exit131.if.then42_crit_edge

keepalive_time_when.exit131.if.then42_crit_edge:  ; preds = %keepalive_time_when.exit131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

keepalive_time_when.exit131.thread:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %27)
  %cmp40.not153 = icmp ult i32 %44, %27
  br i1 %cmp40.not153, label %keepalive_time_when.exit131.thread.keepalive_time_when.exit146_crit_edge, label %keepalive_time_when.exit131.thread.if.then42_crit_edge

keepalive_time_when.exit131.thread.if.then42_crit_edge: ; preds = %keepalive_time_when.exit131.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

keepalive_time_when.exit131.thread.keepalive_time_when.exit146_crit_edge: ; preds = %keepalive_time_when.exit131.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %keepalive_time_when.exit146

if.then42:                                        ; preds = %keepalive_time_when.exit131.thread.if.then42_crit_edge, %keepalive_time_when.exit131.if.then42_crit_edge
  %icsk_user_timeout = getelementptr i8, ptr %t, i32 944
  %49 = ptrtoint ptr %icsk_user_timeout to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %icsk_user_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp43.not = icmp eq i32 %50, 0
  br i1 %cmp43.not, label %if.then42.land.lhs.true58_crit_edge, label %if.else.i

if.then42.land.lhs.true58_crit_edge:              ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true58

if.else.i:                                        ; preds = %if.then42
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %50) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %call2.i)
  %cmp48.not = icmp ult i32 %44, %call2.i
  br i1 %cmp48.not, label %if.else.i.lor.lhs.false54_crit_edge, label %land.lhs.true50

if.else.i.lor.lhs.false54_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false54

land.lhs.true50:                                  ; preds = %if.else.i
  %icsk_probes_out = getelementptr i8, ptr %t, i32 901
  %51 = ptrtoint ptr %icsk_probes_out to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %icsk_probes_out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp52.not = icmp eq i8 %52, 0
  br i1 %cmp52.not, label %land.lhs.true50.lor.lhs.false54_crit_edge, label %land.lhs.true50.if.then64_crit_edge

land.lhs.true50.if.then64_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64

land.lhs.true50.lor.lhs.false54_crit_edge:        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %land.lhs.true50.lor.lhs.false54_crit_edge, %if.else.i.lor.lhs.false54_crit_edge
  %53 = ptrtoint ptr %icsk_user_timeout to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %icsk_user_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp56 = icmp eq i32 %.pr, 0
  br i1 %cmp56, label %lor.lhs.false54.land.lhs.true58_crit_edge, label %lor.lhs.false54.if.end65_crit_edge

lor.lhs.false54.if.end65_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

lor.lhs.false54.land.lhs.true58_crit_edge:        ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true58

land.lhs.true58:                                  ; preds = %lor.lhs.false54.land.lhs.true58_crit_edge, %if.then42.land.lhs.true58_crit_edge
  %icsk_probes_out59 = getelementptr i8, ptr %t, i32 901
  %54 = ptrtoint ptr %icsk_probes_out59 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %icsk_probes_out59, align 1
  %keepalive_probes.i = getelementptr i8, ptr %t, i32 1331
  %56 = ptrtoint ptr %keepalive_probes.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %keepalive_probes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i132 = icmp eq i8 %57, 0
  br i1 %tobool.not.i132, label %cond.false.i134, label %land.lhs.true58.keepalive_probes.exit_crit_edge

land.lhs.true58.keepalive_probes.exit_crit_edge:  ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %keepalive_probes.exit

cond.false.i134:                                  ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  %skc_net.i.i133 = getelementptr i8, ptr %t, i32 -496
  %58 = ptrtoint ptr %skc_net.i.i133 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %skc_net.i.i133, align 4
  %sysctl_tcp_keepalive_probes.i = getelementptr inbounds %struct.net, ptr %59, i32 0, i32 35, i32 60
  %60 = ptrtoint ptr %sysctl_tcp_keepalive_probes.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %sysctl_tcp_keepalive_probes.i, align 4
  br label %keepalive_probes.exit

keepalive_probes.exit:                            ; preds = %cond.false.i134, %land.lhs.true58.keepalive_probes.exit_crit_edge
  %cond.in.i = phi i8 [ %61, %cond.false.i134 ], [ %57, %land.lhs.true58.keepalive_probes.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %cond.in.i, i8 %55)
  %cmp62.not = icmp ugt i8 %cond.in.i, %55
  br i1 %cmp62.not, label %keepalive_probes.exit.if.end65_crit_edge, label %keepalive_probes.exit.if.then64_crit_edge

keepalive_probes.exit.if.then64_crit_edge:        ; preds = %keepalive_probes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64

keepalive_probes.exit.if.end65_crit_edge:         ; preds = %keepalive_probes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then64:                                        ; preds = %keepalive_probes.exit.if.then64_crit_edge, %land.lhs.true50.if.then64_crit_edge
  tail call void @tcp_send_active_reset(ptr noundef %add.ptr, i32 noundef 2592) #9
  tail call fastcc void @tcp_write_err(ptr noundef %add.ptr)
  br label %out

if.end65:                                         ; preds = %keepalive_probes.exit.if.end65_crit_edge, %lor.lhs.false54.if.end65_crit_edge
  %call66 = tail call i32 @tcp_write_wakeup(ptr noundef %add.ptr, i32 noundef 110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 1
  br i1 %cmp67, label %if.then69, label %if.end65.if.end76_crit_edge

if.end65.if.end76_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then69:                                        ; preds = %if.end65
  %icsk_probes_out70 = getelementptr i8, ptr %t, i32 901
  %62 = ptrtoint ptr %icsk_probes_out70 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %icsk_probes_out70, align 1
  %inc = add i8 %63, 1
  store i8 %inc, ptr %icsk_probes_out70, align 1
  %keepalive_intvl.i = getelementptr i8, ptr %t, i32 1704
  %64 = ptrtoint ptr %keepalive_intvl.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %keepalive_intvl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i136 = icmp eq i32 %65, 0
  br i1 %tobool.not.i136, label %cond.false.i138, label %if.then69.if.end76_crit_edge

if.then69.if.end76_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

cond.false.i138:                                  ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %skc_net.i.i137 = getelementptr i8, ptr %t, i32 -496
  %66 = ptrtoint ptr %skc_net.i.i137 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skc_net.i.i137, align 4
  %sysctl_tcp_keepalive_intvl.i = getelementptr inbounds %struct.net, ptr %67, i32 0, i32 35, i32 59
  %68 = ptrtoint ptr %sysctl_tcp_keepalive_intvl.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sysctl_tcp_keepalive_intvl.i, align 8
  br label %if.end76

cond.false.i144:                                  ; preds = %keepalive_time_when.exit131
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %skc_net.i.i127 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %skc_net.i.i127, align 4
  %sysctl_tcp_keepalive_time.i143 = getelementptr inbounds %struct.net, ptr %71, i32 0, i32 35, i32 58
  %72 = ptrtoint ptr %sysctl_tcp_keepalive_time.i143 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sysctl_tcp_keepalive_time.i143, align 4
  br label %keepalive_time_when.exit146

keepalive_time_when.exit146:                      ; preds = %cond.false.i144, %keepalive_time_when.exit131.thread.keepalive_time_when.exit146_crit_edge
  %cond.i145 = phi i32 [ %73, %cond.false.i144 ], [ %27, %keepalive_time_when.exit131.thread.keepalive_time_when.exit146_crit_edge ]
  %sub75 = sub i32 %cond.i145, %44
  br label %if.end76

if.end76:                                         ; preds = %keepalive_time_when.exit146, %cond.false.i138, %if.then69.if.end76_crit_edge, %if.end65.if.end76_crit_edge
  %elapsed.0 = phi i32 [ %sub75, %keepalive_time_when.exit146 ], [ 50, %if.end65.if.end76_crit_edge ], [ %69, %cond.false.i138 ], [ %65, %if.then69.if.end76_crit_edge ]
  tail call fastcc void @sk_mem_reclaim(ptr noundef %add.ptr)
  br label %resched

resched:                                          ; preds = %if.end76, %lor.lhs.false34.resched_crit_edge, %keepalive_time_when.exit.resched_crit_edge
  %elapsed.1 = phi i32 [ %cond.i122, %keepalive_time_when.exit.resched_crit_edge ], [ %elapsed.0, %if.end76 ], [ %cond.i122, %lor.lhs.false34.resched_crit_edge ]
  tail call void @inet_csk_reset_keepalive_timer(ptr noundef %add.ptr, i32 noundef %elapsed.1) #9
  br label %out

out:                                              ; preds = %resched, %if.then64, %lor.lhs.false.out_crit_edge, %if.end25.out_crit_edge, %if.end24, %cleanup, %do.end, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #9
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -432
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i147, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %sock_put.exit

if.then.i147:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @sk_free(ptr noundef %add.ptr) #9
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i147, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_pace_kick(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_compressed_ack_kick(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -2048
  %sk_lock = getelementptr i8, ptr %timer, i32 -1924
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #9
  %dep_map.i.i.i = getelementptr i8, ptr %timer, i32 -1824
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr i8, ptr %timer, i32 -1908
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !54

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr i8, ptr %timer, i32 -1880
  %1 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %sock_owned_by_user.exit
  %compressed_ack = getelementptr i8, ptr %timer, i32 -302
  %3 = ptrtoint ptr %compressed_ack to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %compressed_ack, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %if.then1

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i8 %4, -1
  %5 = ptrtoint ptr %compressed_ack to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %dec, ptr %compressed_ack, align 2
  tail call void @tcp_send_ack(ptr noundef %add.ptr) #9
  br label %if.end7

if.else:                                          ; preds = %sock_owned_by_user.exit
  %sk_tsq_flags = getelementptr i8, ptr %timer, i32 -1600
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %sk_tsq_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.else
  %skc_refcnt.i = getelementptr i8, ptr %timer, i32 -1948
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then5.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !53

if.then5.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then5
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end7_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !54

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end7_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then5.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then5.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end7

if.end7:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end7_crit_edge, %if.else.if.end7_crit_edge, %if.then1, %if.then.if.end7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #9
  %skc_refcnt.i18 = getelementptr i8, ptr %timer, i32 -1948
  %call.i.i.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i18, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i18, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i18, ptr %skc_refcnt.i18, i32 1, ptr elementtype(i32) %skc_refcnt.i18) #9, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i20 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i20, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i18, i32 noundef 3) #9
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @sk_free(ptr noundef %add.ptr) #9
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_rtx_syn_ack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_write_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcp_out_of_resources(ptr noundef %sk, i1 noundef zeroext %do_reset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %lsndtime = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 19
  %1 = ptrtoint ptr %lsndtime to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lsndtime, align 8
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 24001, i32 %sub)
  %cmp = icmp ult i32 %sub, 24001
  %3 = and i1 %cmp, %do_reset
  %not. = xor i1 %3, true
  %shift.0 = zext i1 %not. to i32
  %sk_err_soft = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 52
  %4 = ptrtoint ptr %sk_err_soft to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_err_soft, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  %inc3 = select i1 %3, i32 1, i32 2
  %shift.1 = select i1 %tobool1.not, i32 %shift.0, i32 %inc3
  %call5 = tail call zeroext i1 @tcp_check_oom(ptr noundef %sk, i32 noundef %shift.1) #9
  br i1 %call5, label %if.then6, label %if.end33

if.then6:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = ptrtoint ptr %lsndtime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lsndtime, align 8
  %sub8 = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6001, i32 %sub8)
  %cmp9 = icmp slt i32 %sub8, 6001
  br i1 %cmp9, label %if.then6.if.then16_crit_edge, label %lor.lhs.false10

if.then6.if.then16_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

lor.lhs.false10:                                  ; preds = %if.then6
  %snd_wnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 26
  %9 = ptrtoint ptr %snd_wnd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %snd_wnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not = icmp eq i32 %10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %lor.lhs.false10
  %packets_out = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 51
  %11 = ptrtoint ptr %packets_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %packets_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  %brmerge53 = or i1 %tobool12.not, %do_reset
  br i1 %brmerge53, label %land.lhs.true.if.then16_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end14:                                         ; preds = %lor.lhs.false10
  br i1 %do_reset, label %if.end14.if.then16_crit_edge, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %if.end14.if.then16_crit_edge, %land.lhs.true.if.then16_crit_edge, %if.then6.if.then16_crit_edge
  tail call void @tcp_send_active_reset(ptr noundef %sk, i32 noundef 2592) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge
  tail call void @tcp_done(ptr noundef %sk) #9
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %13 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 30, i32 3
  %15 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %16, i32 0, i32 52
  %17 = ptrtoint ptr %arrayidx to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !43) #9
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx27 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx27, align 4
  %add = add i32 %23, %17
  %24 = inttoptr i32 %add to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add28 = add i32 %26, 1
  store i32 %add28, ptr %24, align 4
  br label %cleanup

if.end33:                                         ; preds = %entry
  %skc_net.i54 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %27 = ptrtoint ptr %skc_net.i54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skc_net.i54, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %28, i32 0, i32 14, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #9
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.not = icmp eq i32 %30, 0
  br i1 %cmp.i.not, label %if.then37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_done(ptr noundef %sk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end33.cleanup_crit_edge, %if.end17
  %retval.0 = phi i32 [ 1, %if.end17 ], [ 1, %if.then37 ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_active_detect_blackhole(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_mtu_to_mss(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_mss_to_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sync_mss(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_check_oom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_active_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcp_call_bpf(ptr noundef %sk, i32 noundef %op, i32 noundef %nargs, ptr nocapture noundef readonly %args) unnamed_addr #3 align 64 {
entry:
  %sock_ops = alloca %struct.bpf_sock_ops_kern, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sock_ops) #9
  %0 = getelementptr inbounds i8, ptr %sock_ops, i32 40
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !65
  %2 = call ptr @memset(ptr %sock_ops, i32 0, i32 40)
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %is_fullsock = getelementptr inbounds %struct.bpf_sock_ops_kern, ptr %sock_ops, i32 0, i32 6
  %5 = ptrtoint ptr %is_fullsock to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %is_fullsock, align 1
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lockdep_sock_is_held.exit.i:                      ; preds = %if.then
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %land.rhs.i, label %lockdep_sock_is_held.exit.i.if.end_crit_edge

lockdep_sock_is_held.exit.i.if.end_crit_edge:     ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.i:                                       ; preds = %lockdep_sock_is_held.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %land.rhs.i.if.end_crit_edge, label %land.rhs3.i

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs3.i:                                      ; preds = %land.rhs.i
  %.b40.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i, label %land.rhs3.i.if.end_crit_edge, label %if.then.i, !prof !54

land.rhs3.i.if.end_crit_edge:                     ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs3.i.if.end_crit_edge, %land.rhs.i.if.end_crit_edge, %lockdep_sock_is_held.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %sock_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sk, ptr %sock_ops, align 8
  %conv = trunc i32 %op to i8
  %op2 = getelementptr inbounds %struct.bpf_sock_ops_kern, ptr %sock_ops, i32 0, i32 5
  %8 = ptrtoint ptr %op2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %op2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nargs)
  %cmp.not = icmp eq i32 %nargs, 0
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = getelementptr inbounds %struct.bpf_sock_ops_kern, ptr %sock_ops, i32 0, i32 1
  %mul = shl i32 %nargs, 2
  %10 = call ptr @memcpy(ptr %9, ptr %args, i32 %mul)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 3), ptr blockaddress(@tcp_call_bpf, %land.lhs.true)) #9
          to label %if.then25 [label %land.lhs.true], !srcloc !55

land.lhs.true:                                    ; preds = %if.end5
  %11 = ptrtoint ptr %sock_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sock_ops, align 8
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true.if.then25_crit_edge, label %land.lhs.true.i

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %skc_state.i34 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state.i34 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state.i34, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %14)
  %cmp.i = icmp eq i8 %14, 12
  br i1 %cmp.i, label %sk_to_full_sk.exit, label %land.lhs.true.i.land.lhs.true15_crit_edge

land.lhs.true.i.land.lhs.true15_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true15

sk_to_full_sk.exit:                               ; preds = %land.lhs.true.i
  %15 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 13
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %sk_to_full_sk.exit.if.then25_crit_edge, label %sk_to_full_sk.exit.land.lhs.true15_crit_edge

sk_to_full_sk.exit.land.lhs.true15_crit_edge:     ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true15

sk_to_full_sk.exit.if.then25_crit_edge:           ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

land.lhs.true15:                                  ; preds = %sk_to_full_sk.exit.land.lhs.true15_crit_edge, %land.lhs.true.i.land.lhs.true15_crit_edge
  %sk.addr.0.i44 = phi ptr [ %17, %sk_to_full_sk.exit.land.lhs.true15_crit_edge ], [ %12, %land.lhs.true.i.land.lhs.true15_crit_edge ]
  %skc_state.i36 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i44, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state.i36 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state.i36, align 2
  %conv.i37 = zext i8 %19 to i32
  %shl.i38 = shl nuw i32 1, %conv.i37
  %and.i39 = and i32 %shl.i38, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool.i40.not = icmp eq i32 %and.i39, 0
  br i1 %tobool.i40.not, label %land.lhs.true15.if.then25_crit_edge, label %if.then18

land.lhs.true15.if.then25_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then18:                                        ; preds = %land.lhs.true15
  %call19 = call i32 @__cgroup_bpf_run_filter_sock_ops(ptr noundef nonnull %sk.addr.0.i44, ptr noundef nonnull %sock_ops, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %phi.cmp = icmp eq i32 %call19, 0
  br i1 %phi.cmp, label %if.then18.if.then25_crit_edge, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then18.if.then25_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then25:                                        ; preds = %if.then18.if.then25_crit_edge, %land.lhs.true15.if.then25_crit_edge, %sk_to_full_sk.exit.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge, %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %20 = getelementptr inbounds %struct.bpf_sock_ops_kern, ptr %sock_ops, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then18.if.end26_crit_edge
  %ret.0 = phi i32 [ %22, %if.then25 ], [ -1, %if.then18.if.end26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sock_ops) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cgroup_bpf_run_filter_sock_ops(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_probe0(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_time_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_write_wakeup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !18, !20, !22, !24, !25, !27, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !42}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_timer.c", i32 318, i32 3}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/ipv4/tcp_timer.c", i32 456, i32 8}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/ipv4/tcp_timer.c", i32 459, i32 3}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/ipv4/tcp_timer.c", i32 472, i32 6}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ipv4/tcp_timer.c", i32 486, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @tcp_retransmit_timer.descriptor, !11, !"descriptor", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv4/tcp_timer.c", i32 494, i32 4}
!17 = !{ptr @tcp_retransmit_timer.descriptor.7, !16, !"descriptor", i1 false, i1 false}
!18 = !{ptr @__ksymtab_tcp_syn_ack_timeout, !19, !"__ksymtab_tcp_syn_ack_timeout", i1 false, i1 false}
!19 = !{!"../net/ipv4/tcp_timer.c", i32 658, i32 1}
!20 = !{ptr @__ksymtab_tcp_set_keepalive, !21, !"__ksymtab_tcp_set_keepalive", i1 false, i1 false}
!21 = !{!"../net/ipv4/tcp_timer.c", i32 670, i32 1}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/net/sock.h", i32 2112, i32 12}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/net/sock.h", i32 2067, i32 9}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/net/sock.h", i32 1750, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/net/inet_connection_sock.h", i32 223, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @inet_csk_reset_xmit_timer.__UNIQUE_ID_ddebug462, !31, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/net/inet_connection_sock.h", i32 238, i32 3}
!37 = distinct !{null, !36, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ipv4/tcp_timer.c", i32 689, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @tcp_keepalive_timer._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @tcp_keepalive_timer._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2148974889, i64 2148974894, i64 2148974907, i64 2148974951, i64 2148974985, i64 2148975006}
!56 = !{i64 722392, i64 722419, i64 722441, i64 722469}
!57 = !{i64 722800, i64 722827, i64 722860, i64 722881, i64 722908, i64 722934}
!58 = !{i64 2156828335}
!59 = !{i64 2156837244}
!60 = !{i32 0, i32 33}
!61 = !{i64 2148363042, i64 2148363074, i64 2148363103, i64 2148363137, i64 2148363168, i64 2148363191}
!62 = !{i64 2148451067}
!63 = !{i64 2148365507, i64 2148365539, i64 2148365568, i64 2148365602, i64 2148365633, i64 2148365656}
!64 = !{i64 2149327181}
!65 = !{!"auto-init"}
