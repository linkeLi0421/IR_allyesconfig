; ModuleID = '/llk/IR_all_yes/net/ipv6/tcp_ipv6.c_pt.bc'
source_filename = "../net/ipv6/tcp_ipv6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tcpv6_prot\22, \22a\22\09"
module asm "\09.weak\09__crc_tcpv6_prot\09\09\09\09"
module asm "\09.long\09__crc_tcpv6_prot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcpv6_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22tcpv6_prot\22\09\09\09\09\09"
module asm "__kstrtabns_tcpv6_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_request_sock_ops = type { i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tcp_seq_afinfo = type { i16 }
%struct.atomic_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timewait_sock_ops = type { ptr, ptr, i32, ptr, ptr }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.37 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%union.anon.37 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.164, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.164 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.145 }
%union.anon.145 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tcp_sock_af_ops = type { ptr, ptr, ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.static_key_false_deferred = type { %struct.static_key_false, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.165, [0 x i32], %union.anon.166, i16, i16, %union.anon.167, %struct.refcount_struct, [0 x i32], %union.anon.168 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { %struct.hlist_node }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.200 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.200 = type { %struct.anon.201 }
%struct.anon.201 = type { ptr, ptr }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.215, %struct.anon.216, %struct.anon.217, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.213, %struct.anon.214, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.169, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.170, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.171, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.169 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.170 = type { ptr }
%union.anon.171 = type { ptr }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
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
%struct.anon.213 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.214 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.215 = type { i32, i32, i64 }
%struct.anon.216 = type { i32, i32, i64 }
%struct.anon.217 = type { i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.175, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.193, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.175 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.193 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet_timewait_sock = type { %struct.sock_common, i32, i8, i8, i16, i32, i32, i32, %struct.timer_list, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.80, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.80 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.tcp_md5sig_pool = type { ptr, ptr }
%struct.tcp6_pseudohdr = type { %struct.in6_addr, %struct.in6_addr, i32, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.anon.55 = type { i16, i16 }
%struct.sock_reuseport = type { %struct.callback_head, i16, i16, i16, i32, i32, i8, ptr, [0 x ptr] }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.76, i32, %struct.list_head, ptr }
%union.anon.76 = type { %struct.in6_addr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.209, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.209 = type { %struct.anon.210 }
%struct.anon.210 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.anon = type { i32, i32 }
%struct.tcp_md5sig_key = type { %struct.hlist_node, i8, i8, i8, i8, %union.tcp_md5_addr, i32, [80 x i8], %struct.callback_head }
%union.tcp_md5_addr = type { %struct.in6_addr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.ip6_flowlabel = type { ptr, i32, %struct.atomic_t, %struct.in6_addr, ptr, i32, %struct.callback_head, i8, %union.anon.211, i32, i32, ptr }
%union.anon.211 = type { ptr }
%struct.anon.40 = type { i16, i16 }
%struct.bpf_sock_ops_kern = type { ptr, %union.anon.212, ptr, ptr, ptr, i8, i8, i8, i64 }
%union.anon.212 = type { [4 x i32] }
%struct.tcp_timewait_sock = type { %struct.inet_timewait_sock, i32, i32, i32, i32, i32, i32, ptr }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.72, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.72 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.75, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.75 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.tcp_md5sig = type { %struct.__kernel_sockaddr_storage, i8, i8, i16, i32, [80 x i8] }
%struct.__kernel_sockaddr_storage = type { %union.anon.221 }
%union.anon.221 = type { ptr, [124 x i8] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.tcp_iter_state = type { %struct.seq_net_private, i32, ptr, i32, i32, i32, i32, i64 }
%struct.seq_net_private = type { ptr, ptr }
%struct.anon.2 = type { i16, i16 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }

@tcp6_request_sock_ops = dso_local global %struct.request_sock_ops { i32 10, i32 256, ptr null, ptr null, ptr @tcp_rtx_synack, ptr @tcp_v6_reqsk_send_ack, ptr @tcp_v6_send_reset, ptr @tcp_v6_reqsk_destructor, ptr @tcp_syn_ack_timeout }, section ".data..read_mostly", align 4
@tcp_request_sock_ipv6_ops = dso_local constant { %struct.tcp_request_sock_ops, [32 x i8] } { %struct.tcp_request_sock_ops { i16 1220, ptr @tcp_v6_md5_lookup, ptr @tcp_v6_md5_hash_skb, ptr @cookie_v6_init_sequence, ptr @tcp_v6_route_req, ptr @tcp_v6_init_seq, ptr @tcp_v6_init_ts_off, ptr @tcp_v6_send_synack }, [32 x i8] zeroinitializer }, align 32
@ipv6_specific = dso_local constant { %struct.inet_connection_sock_af_ops, [48 x i8] } { %struct.inet_connection_sock_af_ops { ptr @inet6_csk_xmit, ptr @tcp_v6_send_check, ptr @inet6_sk_rebuild_header, ptr @inet6_sk_rx_dst_set, ptr @tcp_v6_conn_request, ptr @tcp_v6_syn_recv_sock, i16 40, i16 8, i16 28, ptr @ipv6_setsockopt, ptr @ipv6_getsockopt, ptr @inet6_csk_addr2sockaddr, ptr @tcp_v6_mtu_reduced }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tcp6\00", [27 x i8] zeroinitializer }, align 32
@tcp6_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @tcp_seq_start, ptr @tcp_seq_stop, ptr @tcp_seq_next, ptr @tcp6_seq_show }, [16 x i8] zeroinitializer }, align 32
@tcp6_seq_afinfo = internal global { %struct.tcp_seq_afinfo, [30 x i8] } { %struct.tcp_seq_afinfo { i16 10 }, [30 x i8] zeroinitializer }, align 32
@tcp_memory_allocated = external dso_local global %struct.atomic_t, align 4
@tcp_sockets_allocated = external dso_local global %struct.percpu_counter, align 8
@tcp_memory_pressure = external dso_local global i32, align 4
@sysctl_tcp_mem = external dso_local global [3 x i32], align 4
@tcp_orphan_count = external dso_local global i32, section ".data..percpu", align 4
@tcp6_timewait_sock_ops = internal global { %struct.timewait_sock_ops, [44 x i8] } { %struct.timewait_sock_ops { ptr null, ptr null, i32 216, ptr @tcp_twsk_unique, ptr @tcp_twsk_destructor }, [44 x i8] zeroinitializer }, align 32
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@tcpv6_prot = dso_local global { %struct.proto, [36 x i8] } { %struct.proto { ptr @tcp_close, ptr @tcp_v6_pre_connect, ptr @tcp_v6_connect, ptr @tcp_disconnect, ptr @inet_csk_accept, ptr @tcp_ioctl, ptr @tcp_v6_init_sock, ptr @tcp_v6_destroy_sock, ptr @tcp_shutdown, ptr @tcp_setsockopt, ptr @tcp_getsockopt, ptr @tcp_set_keepalive, ptr @tcp_sendmsg, ptr @tcp_recvmsg, ptr @tcp_sendpage, ptr null, ptr null, ptr @tcp_v6_do_rcv, ptr @tcp_bpf_bypass_getsockopt, ptr @tcp_release_cb, ptr @inet6_hash, ptr @inet_unhash, ptr null, ptr @inet_csk_get_port, ptr @inet_put_port, ptr @tcp_bpf_update_proto, i32 0, ptr null, ptr @tcp_stream_memory_free, ptr null, ptr @tcp_enter_memory_pressure, ptr @tcp_leave_memory_pressure, ptr @tcp_memory_allocated, ptr @tcp_sockets_allocated, ptr @tcp_memory_pressure, ptr @sysctl_tcp_mem, ptr null, ptr null, i32 1324, i32 1336, i32 384, i8 1, ptr null, i32 2440, i32 524288, i32 0, i32 0, ptr @tcp_orphan_count, ptr @tcp6_request_sock_ops, ptr @tcp6_timewait_sock_ops, %union.anon.164 { ptr @tcp_hashinfo }, ptr null, [32 x i8] c"TCPv6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr @tcp_abort }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_tcpv6_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcpv6_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_tcpv6_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcpv6_prot to i32), ptr @__kstrtab_tcpv6_prot, ptr @__kstrtabns_tcpv6_prot }, section "___ksymtab_gpl+tcpv6_prot", align 4
@tcpv6_protocol = internal global { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr @tcp_v6_early_demux, ptr @tcp_v6_early_demux, ptr @tcp_v6_rcv, ptr @tcp_v6_err, i32 3 }, [44 x i8] zeroinitializer }, align 32
@tcpv6_protosw = internal global { %struct.inet_protosw, [40 x i8] } { %struct.inet_protosw { %struct.list_head zeroinitializer, i16 1, i16 6, ptr @tcpv6_prot, ptr @inet6_stream_ops, i8 6 }, [40 x i8] zeroinitializer }, align 32
@tcpv6_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @tcpv6_net_init, ptr null, ptr @tcpv6_net_exit, ptr @tcpv6_net_exit_batch, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tcp_md5_needed = external dso_local global %struct.static_key_false, align 4
@tcp_v6_send_synack.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ipv6/tcp_ipv6.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cgroup_bpf_enabled_key = external dso_local global [23 x %struct.static_key_false], align 4
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_tcp_send_reset = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/tcp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_tcp_send_reset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tcp_tx_delay_enabled = external dso_local global %struct.static_key_false, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tcp_synq_overflow.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/tcp.h\00", [46 x i8] zeroinitializer }, align 32
@rt6_get_cookie.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/ip6_fib.h\00", [42 x i8] zeroinitializer }, align 32
@fib6_get_cookie_safe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ipv6_mapped = internal constant { %struct.inet_connection_sock_af_ops, [48 x i8] } { %struct.inet_connection_sock_af_ops { ptr @ip_queue_xmit, ptr @tcp_v4_send_check, ptr @inet_sk_rebuild_header, ptr @inet_sk_rx_dst_set, ptr @tcp_v6_conn_request, ptr @tcp_v6_syn_recv_sock, i16 20, i16 0, i16 28, ptr @ipv6_setsockopt, ptr @ipv6_getsockopt, ptr @inet6_csk_addr2sockaddr, ptr @tcp_v4_mtu_reduced }, [48 x i8] zeroinitializer }, align 32
@tcp_sock_ipv6_mapped_specific = internal constant { %struct.tcp_sock_af_ops, [20 x i8] } { %struct.tcp_sock_af_ops { ptr @tcp_v4_md5_lookup, ptr @tcp_v4_md5_hash_skb, ptr @tcp_v6_parse_md5_keys }, [20 x i8] zeroinitializer }, align 32
@tcp_v6_syn_recv_sock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [146 x i8], [46 x i8] } { [146 x i8] c"  sl  local_address                         remote_address                        st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"%4d: %08X%08X%08X%08X:%04X %08X%08X%08X%08X:%04X %02X %08X:%08X %02X:%08lX %08X %5d %8d %d %d %pK\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"%4d: %08X%08X%08X%08X:%04X %08X%08X%08X%08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %d %d %pK\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"%4d: %08X%08X%08X%08X:%04X %08X%08X%08X%08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %lu %d %pK %lu %lu %u %u %d\0A\00", [43 x i8] zeroinitializer }, align 32
@in6addr_loopback = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@tcp_sock_ipv6_specific = internal constant { %struct.tcp_sock_af_ops, [20 x i8] } { %struct.tcp_sock_af_ops { ptr @tcp_v6_md5_lookup, ptr @tcp_v6_md5_hash_skb, ptr @tcp_v6_parse_md5_keys }, [20 x i8] zeroinitializer }, align 32
@tcp_v6_connect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ipv6_flowlabel_exclusive = external dso_local global %struct.static_key_false_deferred, align 4
@tcp_v6_do_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tcp_bad_csum = external dso_local global %struct.tracepoint, align 4
@trace_tcp_bad_csum.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcp_v6_early_demux.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6_min_hopcount = external dso_local global %struct.static_key_false, align 4
@tcp_v6_inbound_md5_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016MD5 Hash %s for [%pI6c]:%u->[%pI6c]:%u L3 index %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tcp_v6_inbound_md5_hash\00", [40 x i8] zeroinitializer }, align 32
@tcp_v6_inbound_md5_hash._entry_ptr = internal global ptr @tcp_v6_inbound_md5_hash._entry, section ".printk_index", align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mismatch\00", [23 x i8] zeroinitializer }, align 32
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/request_sock.h\00", [37 x i8] zeroinitializer }, align 32
@tcp_v6_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@inet6_stream_ops = external dso_local constant %struct.proto_ops, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 137]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 10]
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"tcp_request_sock_ipv6_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 875, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"ipv6_specific\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1904, i32 42 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 2148, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"tcp6_seq_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 2135, i32 36 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"tcp6_seq_afinfo\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 2142, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"tcp6_timewait_sock_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1893, i32 33 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"tcpv6_prot\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 2160, i32 14 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"tcpv6_protocol\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 2212, i32 30 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"tcpv6_protosw\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 2220, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"tcpv6_net_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 2245, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 695, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 723, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 560, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1750, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1011, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [30 x i8] c"../include/trace/events/tcp.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 109, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 108, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [21 x i8] c"../include/net/tcp.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 509, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant [25 x i8] c"../include/net/ip6_fib.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 306, i32 9 }
@___asan_gen_.96 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 271, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"ipv6_mapped\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1931, i32 49 }
@___asan_gen_.101 = private unnamed_addr constant [30 x i8] c"tcp_sock_ipv6_mapped_specific\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1947, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 156, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 2116, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 2097, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1991, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 2057, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant [23 x i8] c"tcp_sock_ipv6_specific\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1921, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 278, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private constant [23 x i8] c"../net/ipv6/tcp_ipv6.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 816, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [30 x i8] c"../include/net/request_sock.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 126, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 313, i32 9 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__ksymtab_tcpv6_prot, ptr @tcp_v6_inbound_md5_hash._entry, ptr @tcp_v6_inbound_md5_hash._entry_ptr, ptr @tcp_request_sock_ipv6_ops, ptr @ipv6_specific, ptr @.str, ptr @tcp6_seq_ops, ptr @tcp6_seq_afinfo, ptr @tcp6_timewait_sock_ops, ptr @tcpv6_prot, ptr @tcpv6_protocol, ptr @tcpv6_protosw, ptr @tcpv6_net_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ipv6_mapped, ptr @tcp_sock_ipv6_mapped_specific, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @tcp_sock_ipv6_specific, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_request_sock_ipv6_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_specific to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp6_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp6_seq_afinfo to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp6_timewait_sock_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpv6_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpv6_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpv6_protosw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpv6_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_mapped to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_sock_ipv6_mapped_specific to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 146, i32 192, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_sock_ipv6_specific to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_v6_inbound_md5_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_rtx_synack(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_v6_reqsk_send_ack(ptr noundef %sk, ptr noundef %skb, ptr nocapture noundef readonly %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %skb, null
  br i1 %tobool.not.i, label %entry.cond.end_crit_edge, label %land.lhs.true.i

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 8
  %2 = and i16 %1, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not.i = icmp eq i16 %2, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.cond.end_crit_edge, label %tcp_v6_sdif.exit

land.lhs.true.i.cond.end_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

tcp_v6_sdif.exit:                                 ; preds = %land.lhs.true.i
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %tcp_v6_sdif.exit.cond.end_crit_edge, label %cond.true

tcp_v6_sdif.exit.cond.end_crit_edge:              ; preds = %tcp_v6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %tcp_v6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 8
  %8 = and i16 %7, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.i.not.i35 = icmp eq i16 %8, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cond.in.i = select i1 %tobool.i.not.i35, ptr %3, ptr %skb_iif.i
  %9 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond.i = load i32, ptr %cond.in.i, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %tcp_v6_sdif.exit.cond.end_crit_edge, %land.lhs.true.i.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ %cond.i, %cond.true ], [ 0, %tcp_v6_sdif.exit.cond.end_crit_edge ], [ 0, %land.lhs.true.i.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp = icmp eq i8 %11, 10
  br i1 %cmp, label %cond.true3, label %cond.false5

cond.true3:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %snt_isn = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 8
  %12 = ptrtoint ptr %snt_isn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %snt_isn, align 4
  %add = add i32 %13, 1
  br label %cond.end7

cond.false5:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %14 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %snd_nxt, align 4
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %cond.true3
  %cond8 = phi i32 [ %add, %cond.true3 ], [ %15, %cond.false5 ]
  %rcv_nxt = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 11
  %16 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rcv_nxt, align 8
  %18 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 18
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %rcv_wscale = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 1
  %21 = ptrtoint ptr %rcv_wscale to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %rcv_wscale, align 8
  %call.i.i.i = tail call i64 @ktime_get() #13
  %22 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call.i.i.i) #16, !srcloc !118
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call.i.i.i, i64 %22, i32 0) #16, !srcloc !119
  %ts_off = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 9
  %24 = ptrtoint ptr %ts_off to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ts_off, align 8
  %ts_recent = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 5
  %26 = ptrtoint ptr %ts_recent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ts_recent, align 8
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %28 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %skc_bound_dev_if, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @tcp_md5_needed, ptr blockaddress(@tcp_v6_reqsk_send_ack, %if.end.i.i)) #13
          to label %tcp_v6_md5_do_lookup.exit [label %if.end.i.i], !srcloc !120

if.end.i.i:                                       ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i36 = zext i16 %33 to i32
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %conv.i.i36
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call3.i.i = tail call ptr @__tcp_md5_do_lookup(ptr noundef %sk, i32 noundef %cond, ptr noundef %saddr, i32 noundef 10) #13
  br label %tcp_v6_md5_do_lookup.exit

tcp_v6_md5_do_lookup.exit:                        ; preds = %if.end.i.i, %cond.end7
  %retval.0.i.i = phi ptr [ %call3.i.i, %if.end.i.i ], [ null, %cond.end7 ]
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %23, 0
  %div1581.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 18
  %conv.i.i = trunc i64 %div1581.i.i.i.i to i32
  %add14 = add i32 %25, %conv.i.i
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.clear = and i16 %bf.lshr, 15
  %conv11 = zext i16 %bf.clear to i32
  %shr = lshr i32 %20, %conv11
  %34 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i, align 8
  %36 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i39 = zext i16 %37 to i32
  %add.ptr.i.i40 = getelementptr i8, ptr %35, i32 %conv.i.i39
  %38 = ptrtoint ptr %add.ptr.i.i40 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i40, align 2
  %40 = lshr i16 %39, 4
  %conv1.i = trunc i16 %40 to i8
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %41 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sk_priority, align 4
  tail call fastcc void @tcp_v6_send_response(ptr noundef %sk, ptr noundef %skb, i32 noundef %cond8, i32 noundef %17, i32 noundef %shr, i32 noundef %add14, i32 noundef %27, i32 noundef %29, ptr noundef %retval.0.i.i, i32 noundef 0, i8 noundef zeroext %conv1.i, i32 noundef 0, i32 noundef %42) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_v6_send_reset(ptr noundef %sk, ptr noundef %skb) #1 align 64 {
entry:
  %newhash = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i172 = zext i16 %5 to i32
  %add.ptr.i.i173 = getelementptr i8, ptr %1, i32 %conv.i.i172
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %newhash) #13
  %rst = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %6 = call ptr @memset(ptr %newhash, i32 255, i32 16)
  %7 = ptrtoint ptr %rst to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %rst, align 4
  %8 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup106_crit_edge

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup106

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %sk, null
  br i1 %tobool2.not, label %land.lhs.true, label %cond.true.critedge

land.lhs.true:                                    ; preds = %if.end
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.ipv6_unicast_destination.exit_crit_edge, label %land.lhs.true.i.i

land.lhs.true.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_unicast_destination.exit

land.lhs.true.i.i:                                ; preds = %land.lhs.true
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge

land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_unicast_destination.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge, !prof !121

land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_unicast_destination.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %ipv6_unicast_destination.exit

ipv6_unicast_destination.exit:                    ; preds = %do.end.i.i, %land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge, %land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge, %land.lhs.true.ipv6_unicast_destination.exit_crit_edge
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 8
  %and25.i.i = and i32 %13, -2
  %14 = inttoptr i32 %and25.i.i to ptr
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rt6i_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i = icmp slt i32 %16, 0
  br i1 %tobool.i, label %cond.false, label %ipv6_unicast_destination.exit.cleanup106_crit_edge

ipv6_unicast_destination.exit.cleanup106_crit_edge: ; preds = %ipv6_unicast_destination.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup106

cond.true.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  br label %cond.end

cond.false:                                       ; preds = %ipv6_unicast_destination.exit
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i174 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i174, label %cond.false.skb_dst.exit_crit_edge, label %land.lhs.true.i176

cond.false.skb_dst.exit_crit_edge:                ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i176:                               ; preds = %cond.false
  %call.i175 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool1.not.i = icmp eq i32 %call.i175, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i176.skb_dst.exit_crit_edge

land.lhs.true.i176.skb_dst.exit_crit_edge:        ; preds = %land.lhs.true.i176
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i176
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !121

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i176.skb_dst.exit_crit_edge, %cond.false.skb_dst.exit_crit_edge
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %9, align 8
  %and25.i = and i32 %18, -2
  %19 = inttoptr i32 %and25.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 127
  br label %cond.end

cond.end:                                         ; preds = %skb_dst.exit, %cond.true.critedge
  %cond.in = phi ptr [ %skc_net.i, %cond.true.critedge ], [ %nd_net.i, %skb_dst.exit ]
  %22 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond = load ptr, ptr %cond.in, align 4
  %23 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %cond.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

cond.end.rcu_read_lock.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %cond.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %cond.end.rcu_read_lock.exit_crit_edge
  %call10 = tail call ptr @tcp_parse_md5sig_option(ptr noundef %add.ptr.i.i) #13
  br i1 %tobool2.not, label %rcu_read_lock.exit.if.else_crit_edge, label %land.lhs.true12

rcu_read_lock.exit.if.else_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true12:                                  ; preds = %rcu_read_lock.exit
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %27 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %28 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i177 = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i177)
  %tobool.i178.not = icmp eq i32 %and.i177, 0
  br i1 %tobool.i178.not, label %land.lhs.true12.if.else_crit_edge, label %if.then14

land.lhs.true12.if.else_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true12
  %tobool.not.i179 = icmp eq ptr %skb, null
  br i1 %tobool.not.i179, label %if.then14.cond.end20_crit_edge, label %land.lhs.true.i180

if.then14.cond.end20_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end20

land.lhs.true.i180:                               ; preds = %if.then14
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags.i, align 8
  %31 = and i16 %30, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.i.not.i = icmp eq i16 %31, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i180.cond.end20_crit_edge, label %tcp_v6_sdif.exit

land.lhs.true.i180.cond.end20_crit_edge:          ; preds = %land.lhs.true.i180
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end20

tcp_v6_sdif.exit:                                 ; preds = %land.lhs.true.i180
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool16.not = icmp eq i32 %34, 0
  br i1 %tobool16.not, label %tcp_v6_sdif.exit.cond.end20_crit_edge, label %cond.true17

tcp_v6_sdif.exit.cond.end20_crit_edge:            ; preds = %tcp_v6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end20

cond.true17:                                      ; preds = %tcp_v6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags.i, align 8
  %37 = and i16 %36, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.i.not.i183 = icmp eq i16 %37, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cond.in.i = select i1 %tobool.i.not.i183, ptr %32, ptr %skb_iif.i
  %38 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %cond.i = load i32, ptr %cond.in.i, align 8
  br label %cond.end20

cond.end20:                                       ; preds = %cond.true17, %tcp_v6_sdif.exit.cond.end20_crit_edge, %land.lhs.true.i180.cond.end20_crit_edge, %if.then14.cond.end20_crit_edge
  %cond21 = phi i32 [ %cond.i, %cond.true17 ], [ 0, %tcp_v6_sdif.exit.cond.end20_crit_edge ], [ 0, %land.lhs.true.i180.cond.end20_crit_edge ], [ 0, %if.then14.cond.end20_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @tcp_md5_needed, ptr blockaddress(@tcp_v6_send_reset, %if.end.i.i)) #13
          to label %if.end54 [label %if.end.i.i], !srcloc !120

if.end.i.i:                                       ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #15
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i173, i32 0, i32 5
  %call3.i.i = tail call ptr @__tcp_md5_do_lookup(ptr noundef nonnull %sk, i32 noundef %cond21, ptr noundef %saddr, i32 noundef 10) #13
  br label %if.end54

if.else:                                          ; preds = %land.lhs.true12.if.else_crit_edge, %rcu_read_lock.exit.if.else_crit_edge
  %tobool23.not = icmp eq ptr %call10, null
  br i1 %tobool23.not, label %if.else.if.end54_crit_edge, label %if.then24

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then24:                                        ; preds = %if.else
  %flags.i184 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %39 = ptrtoint ptr %flags.i184 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flags.i184, align 8
  %41 = and i16 %40, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.i.not.i185 = icmp eq i16 %41, 0
  %skb_iif.i186 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %42 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %cond.in.i187 = select i1 %tobool.i.not.i185, ptr %42, ptr %skb_iif.i186
  %43 = ptrtoint ptr %cond.in.i187 to i32
  call void @__asan_load4_noabort(i32 %43)
  %cond.i188 = load i32, ptr %cond.in.i187, align 8
  %tobool.not.i189 = icmp eq ptr %skb, null
  %brmerge = select i1 %tobool.not.i189, i1 true, i1 %tobool.i.not.i185
  br i1 %brmerge, label %if.then24.tcp_v6_sdif.exit195_crit_edge, label %if.then.i193

if.then24.tcp_v6_sdif.exit195_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcp_v6_sdif.exit195

if.then.i193:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %42, align 8
  br label %tcp_v6_sdif.exit195

tcp_v6_sdif.exit195:                              ; preds = %if.then.i193, %if.then24.tcp_v6_sdif.exit195_crit_edge
  %retval.0.i194 = phi i32 [ %45, %if.then.i193 ], [ 0, %if.then24.tcp_v6_sdif.exit195_crit_edge ]
  %saddr28 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i173, i32 0, i32 5
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i.i, align 4
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i173, i32 0, i32 6
  %call30 = tail call ptr @inet6_lookup_listener(ptr noundef %cond, ptr noundef nonnull @tcp_hashinfo, ptr noundef null, i32 noundef 0, ptr noundef %saddr28, i16 noundef zeroext %47, ptr noundef %daddr, i16 noundef zeroext %47, i32 noundef %cond.i188, i32 noundef %retval.0.i194) #13
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %tcp_v6_sdif.exit195.out_crit_edge, label %if.end33

tcp_v6_sdif.exit195.out_crit_edge:                ; preds = %tcp_v6_sdif.exit195
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end33:                                         ; preds = %tcp_v6_sdif.exit195
  br i1 %tobool.not.i189, label %if.end33.tcp_v6_sdif.exit202.thread_crit_edge, label %land.lhs.true.i199

if.end33.tcp_v6_sdif.exit202.thread_crit_edge:    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcp_v6_sdif.exit202.thread

land.lhs.true.i199:                               ; preds = %if.end33
  %48 = ptrtoint ptr %flags.i184 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags.i184, align 8
  %50 = and i16 %49, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.i.not.i198 = icmp eq i16 %50, 0
  br i1 %tobool.i.not.i198, label %land.lhs.true.i199.tcp_v6_sdif.exit202.thread_crit_edge, label %tcp_v6_sdif.exit202

land.lhs.true.i199.tcp_v6_sdif.exit202.thread_crit_edge: ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcp_v6_sdif.exit202.thread

tcp_v6_sdif.exit202:                              ; preds = %land.lhs.true.i199
  %51 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool35.not = icmp eq i32 %52, 0
  br i1 %tobool35.not, label %tcp_v6_sdif.exit202.tcp_v6_sdif.exit202.thread_crit_edge, label %tcp_v6_sdif.exit202._crit_edge

tcp_v6_sdif.exit202._crit_edge:                   ; preds = %tcp_v6_sdif.exit202
  call void @__sanitizer_cov_trace_pc() #15
  br label %53

tcp_v6_sdif.exit202.tcp_v6_sdif.exit202.thread_crit_edge: ; preds = %tcp_v6_sdif.exit202
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcp_v6_sdif.exit202.thread

tcp_v6_sdif.exit202.thread:                       ; preds = %tcp_v6_sdif.exit202.tcp_v6_sdif.exit202.thread_crit_edge, %land.lhs.true.i199.tcp_v6_sdif.exit202.thread_crit_edge, %if.end33.tcp_v6_sdif.exit202.thread_crit_edge
  br label %53

53:                                               ; preds = %tcp_v6_sdif.exit202.thread, %tcp_v6_sdif.exit202._crit_edge
  %54 = phi i32 [ 0, %tcp_v6_sdif.exit202.thread ], [ %cond.i188, %tcp_v6_sdif.exit202._crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @tcp_md5_needed, ptr blockaddress(@tcp_v6_send_reset, %if.end.i.i204)) #13
          to label %tcp_v6_md5_do_lookup.exit206 [label %if.end.i.i204], !srcloc !120

if.end.i.i204:                                    ; preds = %53
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i.i203 = tail call ptr @__tcp_md5_do_lookup(ptr noundef nonnull %call30, i32 noundef %54, ptr noundef %saddr28, i32 noundef 10) #13
  br label %tcp_v6_md5_do_lookup.exit206

tcp_v6_md5_do_lookup.exit206:                     ; preds = %if.end.i.i204, %53
  %retval.0.i.i205 = phi ptr [ %call3.i.i203, %if.end.i.i204 ], [ null, %53 ]
  %tobool42.not = icmp eq ptr %retval.0.i.i205, null
  br i1 %tobool42.not, label %tcp_v6_md5_do_lookup.exit206.out_crit_edge, label %if.end44

tcp_v6_md5_do_lookup.exit206.out_crit_edge:       ; preds = %tcp_v6_md5_do_lookup.exit206
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end44:                                         ; preds = %tcp_v6_md5_do_lookup.exit206
  %call45 = call i32 @tcp_v6_md5_hash_skb(ptr noundef nonnull %newhash, ptr noundef nonnull %retval.0.i.i205, ptr noundef null, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %lor.lhs.false, label %if.end44.out_crit_edge

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %if.end44
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %call10, ptr noundef nonnull dereferenceable(16) %newhash, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end54_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false.if.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.end54:                                         ; preds = %lor.lhs.false.if.end54_crit_edge, %if.else.if.end54_crit_edge, %if.end.i.i, %cond.end20
  %key.1 = phi ptr [ null, %if.else.if.end54_crit_edge ], [ %call3.i.i, %if.end.i.i ], [ null, %cond.end20 ], [ %retval.0.i.i205, %lor.lhs.false.if.end54_crit_edge ]
  %55 = ptrtoint ptr %rst to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load55 = load i16, ptr %rst, align 4
  %56 = and i16 %bf.load55, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool58.not = icmp eq i16 %56, 0
  br i1 %tobool58.not, label %if.else61, label %if.then59

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %ack_seq60 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %ack_seq60 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ack_seq60, align 4
  br label %if.end74

if.else61:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %seq62 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %seq62 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %seq62, align 4
  %bf.lshr64 = lshr i16 %bf.load55, 1
  %bf.clear65 = and i16 %bf.lshr64, 1
  %bf.clear67 = and i16 %bf.load55, 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %63 = lshr i16 %bf.load55, 10
  %64 = and i16 %63, 60
  %shl = zext i16 %64 to i32
  %narrow = add nuw nsw i16 %bf.clear65, %bf.clear67
  %add = zext i16 %narrow to i32
  %add69 = sub nsw i32 %add, %shl
  %add70 = add i32 %add69, %60
  %sub = add i32 %add70, %62
  br label %if.end74

if.end74:                                         ; preds = %if.else61, %if.then59
  %seq.0 = phi i32 [ %58, %if.then59 ], [ 0, %if.else61 ]
  %ack_seq.0 = phi i32 [ 0, %if.then59 ], [ %sub, %if.else61 ]
  br i1 %tobool2.not, label %if.else99, label %if.then76

if.then76:                                        ; preds = %if.end74
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %65 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %skc_bound_dev_if, align 4
  %skc_state.i207 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %67 = ptrtoint ptr %skc_state.i207 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load volatile i8, ptr %skc_state.i207, align 2
  %conv.i208 = zext i8 %68 to i32
  %shl.i209 = shl nuw i32 1, %conv.i208
  %and.i210 = and i32 %shl.i209, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i210)
  %tobool.i211.not = icmp eq i32 %and.i210, 0
  br i1 %tobool.i211.not, label %if.then76.if.end87_crit_edge, label %if.then78

if.then76.if.end87_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then78:                                        ; preds = %if.then76
  call fastcc void @trace_tcp_send_reset(ptr noundef nonnull %sk, ptr noundef %skb)
  %repflow = getelementptr i8, ptr %sk, i32 2394
  %69 = ptrtoint ptr %repflow to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load80 = load i16, ptr %repflow, align 2
  %70 = and i16 %bf.load80, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool83.not = icmp eq i16 %70, 0
  br i1 %tobool83.not, label %if.then78.if.end86_crit_edge, label %if.then84

if.then78.if.end86_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then84:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %add.ptr.i.i173 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i173, align 4
  %and.i212 = and i32 %72, 1048575
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.then78.if.end86_crit_edge
  %label.0 = phi i32 [ %and.i212, %if.then84 ], [ 0, %if.then78.if.end86_crit_edge ]
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %73 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sk_priority, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then76.if.end87_crit_edge
  %label.1 = phi i32 [ %label.0, %if.end86 ], [ 0, %if.then76.if.end87_crit_edge ]
  %priority.0 = phi i32 [ %74, %if.end86 ], [ 0, %if.then76.if.end87_crit_edge ]
  %75 = ptrtoint ptr %skc_state.i207 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load volatile i8, ptr %skc_state.i207, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %76)
  %cmp90 = icmp eq i8 %76, 6
  br i1 %cmp90, label %if.then92, label %if.end87.if.end104_crit_edge

if.end87.if.end104_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  %tw_flowlabel = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk, i32 0, i32 5
  %77 = ptrtoint ptr %tw_flowlabel to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load94 = load i32, ptr %tw_flowlabel, align 8
  %bf.lshr95 = lshr i32 %bf.load94, 10
  %bf.clear96 = and i32 %bf.lshr95, 1048575
  %tw_priority = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk, i32 0, i32 7
  %78 = ptrtoint ptr %tw_priority to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tw_priority, align 8
  br label %if.end104

if.else99:                                        ; preds = %if.end74
  %flowlabel_reflect = getelementptr inbounds %struct.net, ptr %cond, i32 0, i32 36, i32 1, i32 30
  %80 = ptrtoint ptr %flowlabel_reflect to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flowlabel_reflect, align 4
  %and = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool100.not = icmp eq i32 %and, 0
  br i1 %tobool100.not, label %if.else99.if.end104_crit_edge, label %if.then101

if.else99.if.end104_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.then101:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %add.ptr.i.i173 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i.i173, align 4
  %and.i213 = and i32 %83, 1048575
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.else99.if.end104_crit_edge, %if.then92, %if.end87.if.end104_crit_edge
  %label.2 = phi i32 [ %bf.clear96, %if.then92 ], [ %label.1, %if.end87.if.end104_crit_edge ], [ %and.i213, %if.then101 ], [ 0, %if.else99.if.end104_crit_edge ]
  %priority.1 = phi i32 [ %79, %if.then92 ], [ %priority.0, %if.end87.if.end104_crit_edge ], [ 0, %if.then101 ], [ 0, %if.else99.if.end104_crit_edge ]
  %oif.0 = phi i32 [ %66, %if.then92 ], [ %66, %if.end87.if.end104_crit_edge ], [ 0, %if.then101 ], [ 0, %if.else99.if.end104_crit_edge ]
  %84 = ptrtoint ptr %add.ptr.i.i173 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %add.ptr.i.i173, align 2
  %86 = lshr i16 %85, 4
  %conv1.i = trunc i16 %86 to i8
  call fastcc void @tcp_v6_send_response(ptr noundef %sk, ptr noundef %skb, i32 noundef %seq.0, i32 noundef %ack_seq.0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %oif.0, ptr noundef %key.1, i32 noundef 1, i8 noundef zeroext %conv1.i, i32 noundef %label.2, i32 noundef %priority.1)
  br label %out

out:                                              ; preds = %if.end104, %lor.lhs.false.out_crit_edge, %if.end44.out_crit_edge, %tcp_v6_md5_do_lookup.exit206.out_crit_edge, %tcp_v6_sdif.exit195.out_crit_edge
  %call.i214 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i214, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i217

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i217:                               ; preds = %out
  %call1.i215 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i215)
  %tobool.not.i216 = icmp eq i32 %call1.i215, 0
  br i1 %tobool.not.i216, label %land.lhs.true.i217.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i219

land.lhs.true.i217.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i219:                              ; preds = %land.lhs.true.i217
  %.b4.i218 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i218, label %land.lhs.true2.i219.rcu_read_unlock.exit_crit_edge, label %if.then.i220

land.lhs.true2.i219.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i219
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i220:                                     ; preds = %land.lhs.true2.i219
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i220, %land.lhs.true2.i219.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i217.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !123
  %87 = call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i.i221 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i221 to ptr
  %preempt_count.i.i.i.i222 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i222 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i222, align 4
  %sub.i.i.i = add i32 %90, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i222, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup106

cleanup106:                                       ; preds = %rcu_read_unlock.exit, %ipv6_unicast_destination.exit.cleanup106_crit_edge, %entry.cleanup106_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %newhash) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_v6_reqsk_destructor(ptr nocapture noundef readonly %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  tail call void @kfree(ptr noundef %2) #13
  %pktopts = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3, i32 0, i32 1
  %3 = ptrtoint ptr %pktopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pktopts, align 4
  tail call void @consume_skb(ptr noundef %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_syn_ack_timeout(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcp_v6_md5_lookup(ptr noundef %sk, ptr noundef %addr_sk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %addr_sk, i32 0, i32 6
  %2 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %skc_bound_dev_if, align 4
  %call1 = tail call fastcc i32 @l3mdev_master_ifindex_by_index(ptr noundef %1, i32 noundef %3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @tcp_md5_needed, ptr blockaddress(@tcp_v6_md5_lookup, %if.end.i.i)) #13
          to label %tcp_v6_md5_do_lookup.exit [label %if.end.i.i], !srcloc !120

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %addr_sk, i32 0, i32 10
  %call3.i.i = tail call ptr @__tcp_md5_do_lookup(ptr noundef %sk, i32 noundef %call1, ptr noundef %skc_v6_daddr, i32 noundef 10) #13
  br label %tcp_v6_md5_do_lookup.exit

tcp_v6_md5_do_lookup.exit:                        ; preds = %if.end.i.i, %entry
  %retval.0.i.i = phi ptr [ %call3.i.i, %if.end.i.i ], [ null, %entry ]
  ret ptr %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_v6_md5_hash_skb(ptr noundef %md5_hash, ptr noundef %key, ptr noundef readonly %sk, ptr noundef %skb) #1 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i48 = zext i16 %5 to i32
  %add.ptr.i.i49 = getelementptr i8, ptr %1, i32 %conv.i.i48
  %saddr3 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i49, i32 0, i32 5
  %daddr4 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i49, i32 0, i32 6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %saddr.0 = phi ptr [ %skc_v6_rcv_saddr, %if.then ], [ %saddr3, %if.else ]
  %daddr.0 = phi ptr [ %skc_v6_daddr, %if.then ], [ %daddr4, %if.else ]
  %call5 = tail call ptr @tcp_get_md5sig_pool() #13
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.clear_hash_noput_crit_edge, label %if.end8

if.end.clear_hash_noput_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash_noput

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call5, align 4
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i.i, align 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 128
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_ahash_init.exit, label %if.end8.clear_hash_crit_edge

if.end8.clear_hash_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash

crypto_ahash_init.exit:                           ; preds = %if.end8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -128
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i = tail call i32 %13(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool10.not = icmp eq i32 %call2.i, 0
  br i1 %tobool10.not, label %if.end12, label %crypto_ahash_init.exit.clear_hash_crit_edge

crypto_ahash_init.exit.clear_hash_crit_edge:      ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash

if.end12:                                         ; preds = %crypto_ahash_init.exit
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #13
  %scratch.i = getelementptr inbounds %struct.tcp_md5sig_pool, ptr %call5, i32 0, i32 1
  %16 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %17 = ptrtoint ptr %scratch.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %scratch.i, align 4
  %19 = call ptr @memcpy(ptr %18, ptr %saddr.0, i32 16)
  %daddr2.i = getelementptr inbounds %struct.tcp6_pseudohdr, ptr %18, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %daddr2.i, ptr %daddr.0, i32 16)
  %protocol.i = getelementptr inbounds %struct.tcp6_pseudohdr, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %protocol.i, align 4
  %len.i = getelementptr inbounds %struct.tcp6_pseudohdr, ptr %18, i32 0, i32 2
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %len.i, align 4
  %add.ptr.i = getelementptr %struct.tcp6_pseudohdr, ptr %18, i32 1
  %23 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr.i.i, i32 20)
  %check.i = getelementptr %struct.tcp6_pseudohdr, ptr %18, i32 1, i32 1
  %24 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %check.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %18, i32 noundef 60) #13
  %25 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call5, align 4
  %src1.i.i = getelementptr inbounds %struct.ahash_request, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sg.i, ptr %src1.i.i, align 4
  %nbytes2.i.i = getelementptr inbounds %struct.ahash_request, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %nbytes2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 60, ptr %nbytes2.i.i, align 8
  %result3.i.i = getelementptr inbounds %struct.ahash_request, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %result3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %result3.i.i, align 32
  %30 = load ptr, ptr %call5, align 4
  %tfm.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tfm.i.i.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %32, i32 12
  %33 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_alg.i.i, align 4
  %nbytes1.i.i = getelementptr inbounds %struct.ahash_request, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %nbytes1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nbytes1.i.i, align 8
  call void @crypto_stats_get(ptr noundef %34) #13
  %37 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tfm.i.i.i, align 16
  %update.i.i = getelementptr i8, ptr %38, i32 -124
  %39 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %update.i.i, align 4
  %call3.i.i = call i32 %40(ptr noundef %30) #13
  call void @crypto_stats_ahash_update(i32 noundef %36, i32 noundef %call3.i.i, ptr noundef %34) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool14.not = icmp eq i32 %call3.i.i, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.clear_hash_crit_edge

if.end12.clear_hash_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash

if.end16:                                         ; preds = %if.end12
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load = load i16, ptr %doff, align 4
  %42 = lshr i16 %bf.load, 10
  %43 = and i16 %42, 60
  %shl = zext i16 %43 to i32
  %call17 = call i32 @tcp_md5_hash_skb_data(ptr noundef nonnull %call5, ptr noundef %skb, i32 noundef %shl) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.clear_hash_crit_edge

if.end16.clear_hash_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @tcp_md5_hash_key(ptr noundef nonnull %call5, ptr noundef %key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.clear_hash_crit_edge

if.end20.clear_hash_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash

if.end24:                                         ; preds = %if.end20
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %7, i32 0, i32 2
  %44 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %7, i32 0, i32 1
  %45 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %7, i32 0, i32 3
  %46 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %md5_hash, ptr %result3.i, align 32
  %call25 = call i32 @crypto_ahash_final(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.clear_hash_crit_edge

if.end24.clear_hash_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @local_bh_enable() #13
  br label %cleanup

clear_hash:                                       ; preds = %if.end24.clear_hash_crit_edge, %if.end20.clear_hash_crit_edge, %if.end16.clear_hash_crit_edge, %if.end12.clear_hash_crit_edge, %crypto_ahash_init.exit.clear_hash_crit_edge, %if.end8.clear_hash_crit_edge
  call fastcc void @local_bh_enable() #13
  br label %clear_hash_noput

clear_hash_noput:                                 ; preds = %clear_hash, %if.end.clear_hash_noput_crit_edge
  %47 = call ptr @memset(ptr %md5_hash, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %clear_hash_noput, %if.end28
  %retval.0 = phi i32 [ 1, %clear_hash_noput ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cookie_v6_init_sequence(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcp_v6_route_req(ptr noundef %sk, ptr noundef %skb, ptr noundef %fl, ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags.i, align 8
  %3 = and i16 %2, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.i = icmp ne i16 %3, 0
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 10
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %8 = call ptr @memcpy(ptr %skc_v6_daddr.i, ptr %saddr.i, i32 16)
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 11
  %9 = load ptr, ptr %head.i.i.i, align 8
  %10 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i78.i = zext i16 %10 to i32
  %add.ptr.i.i79.i = getelementptr i8, ptr %9, i32 %conv.i.i78.i
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i79.i, i32 0, i32 6
  %11 = call ptr @memcpy(ptr %skc_v6_rcv_saddr.i, ptr %daddr.i, i32 16)
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %12 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %skc_bound_dev_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %brmerge.i = select i1 %tobool.not.i, i1 true, i1 %tobool.i.i
  br i1 %brmerge.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %skc_v6_daddr.i) #13
  %and.i = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 8
  %skc_bound_dev_if17.i = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 6
  %16 = ptrtoint ptr %skc_bound_dev_if17.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %skc_bound_dev_if17.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not.i = icmp eq i32 %19, 0
  br i1 %tobool20.not.i, label %land.lhs.true21.i, label %if.end.i.tcp_v6_init_req.exit_crit_edge

if.end.i.tcp_v6_init_req.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcp_v6_init_req.exit

land.lhs.true21.i:                                ; preds = %if.end.i
  %call24.i = tail call zeroext i1 @ipv6_opt_accepted(ptr noundef %sk, ptr noundef %skb, ptr noundef %0) #13
  br i1 %call24.i, label %land.lhs.true21.i.if.then54.i_crit_edge, label %lor.lhs.false25.i

land.lhs.true21.i.if.then54.i_crit_edge:          ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then54.i

lor.lhs.false25.i:                                ; preds = %land.lhs.true21.i
  %rxopt.i = getelementptr i8, ptr %sk, i32 2392
  %20 = ptrtoint ptr %rxopt.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %rxopt.i, align 4
  %21 = and i16 %bf.load.i, 15360
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %lor.lhs.false48.i, label %lor.lhs.false25.i.if.then54.i_crit_edge

lor.lhs.false25.i.if.then54.i_crit_edge:          ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then54.i

lor.lhs.false48.i:                                ; preds = %lor.lhs.false25.i
  %repflow.i = getelementptr i8, ptr %sk, i32 2394
  %23 = ptrtoint ptr %repflow.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load49.i = load i16, ptr %repflow.i, align 2
  %24 = and i16 %bf.load49.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool53.not.i = icmp eq i16 %24, 0
  br i1 %tobool53.not.i, label %lor.lhs.false48.i.tcp_v6_init_req.exit_crit_edge, label %lor.lhs.false48.i.if.then54.i_crit_edge

lor.lhs.false48.i.if.then54.i_crit_edge:          ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then54.i

lor.lhs.false48.i.tcp_v6_init_req.exit_crit_edge: ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcp_v6_init_req.exit

if.then54.i:                                      ; preds = %lor.lhs.false48.i.if.then54.i_crit_edge, %lor.lhs.false25.i.if.then54.i_crit_edge, %land.lhs.true21.i.if.then54.i_crit_edge
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #13
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #13, !srcloc !124
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then54.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !121

if.then54.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then54.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !125

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then54.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then54.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #13
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %pktopts.i = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3, i32 0, i32 1
  %27 = ptrtoint ptr %pktopts.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %skb, ptr %pktopts.i, align 4
  br label %tcp_v6_init_req.exit

tcp_v6_init_req.exit:                             ; preds = %refcount_inc.exit.i, %lor.lhs.false48.i.tcp_v6_init_req.exit_crit_edge, %if.end.i.tcp_v6_init_req.exit_crit_edge
  %call = tail call i32 @security_inet_conn_request(ptr noundef %sk, ptr noundef %skb, ptr noundef %req) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %tcp_v6_init_req.exit.return_crit_edge

tcp_v6_init_req.exit.return_crit_edge:            ; preds = %tcp_v6_init_req.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %tcp_v6_init_req.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call ptr @inet6_csk_route_req(ptr noundef %sk, ptr noundef %fl, ptr noundef %req, i8 noundef zeroext 6) #13
  br label %return

return:                                           ; preds = %if.end, %tcp_v6_init_req.exit.return_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ null, %tcp_v6_init_req.exit.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_v6_init_seq(ptr nocapture noundef readonly %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i15 = zext i16 %5 to i32
  %add.ptr.i.i16 = getelementptr i8, ptr %1, i32 %conv.i.i15
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i16, i32 0, i32 1
  %6 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dest, align 2
  %8 = ptrtoint ptr %add.ptr.i.i16 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i16, align 4
  %call6 = tail call i32 @secure_tcpv6_seq(ptr noundef %daddr, ptr noundef %saddr, i16 noundef zeroext %7, i16 noundef zeroext %9) #13
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_v6_init_ts_off(ptr noundef %net, ptr nocapture noundef readonly %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call4 = tail call i32 @secure_tcpv6_ts_off(ptr noundef %net, ptr noundef %daddr, ptr noundef %saddr) #13
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_v6_send_synack(ptr noundef %sk, ptr noundef %dst, ptr noundef %fl, ptr noundef %req, ptr noundef %foc, i32 noundef %synack_type, ptr noundef %syn_skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dst, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call ptr @inet6_csk_route_req(ptr noundef %sk, ptr noundef %fl, ptr noundef %req, i8 noundef zeroext 6) #13
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %land.lhs.true.done_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dst.addr.0 = phi ptr [ %dst, %entry.if.end_crit_edge ], [ %call2, %land.lhs.true.if.end_crit_edge ]
  %call3 = tail call ptr @tcp_make_synack(ptr noundef %sk, ptr noundef nonnull %dst.addr.0, ptr noundef %req, ptr noundef %foc, i32 noundef %synack_type, ptr noundef %syn_skb) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.done_crit_edge, label %if.then5

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then5:                                         ; preds = %if.end
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 11
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 10
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %call.i.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %skc_v6_rcv_saddr, ptr noundef %skc_v6_daddr, i32 noundef %5, i32 noundef 6, i32 noundef 0) #13
  %6 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i) #16, !srcloc !126
  %neg.i.i.i.i = xor i32 %6, -1
  %shr.i.i.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i.i.i.i = trunc i32 %shr.i.i.i.i to i16
  %neg.i = xor i16 %conv.i.i.i.i, -1
  %check.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %neg.i, ptr %check.i, align 4
  %8 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transport_header.i.i.i, align 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %9, ptr %10, align 8
  %csum_offset.i = getelementptr inbounds %struct.anon.55, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16, ptr %csum_offset.i, align 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %daddr, ptr %skc_v6_daddr, i32 16)
  %repflow = getelementptr i8, ptr %sk, i32 2394
  %14 = ptrtoint ptr %repflow to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %repflow, align 2
  %15 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool12.not = icmp eq i16 %15, 0
  br i1 %tobool12.not, label %if.then5.if.end19_crit_edge, label %land.lhs.true13

if.then5.if.end19_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true13:                                  ; preds = %if.then5
  %pktopts = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3, i32 0, i32 1
  %16 = ptrtoint ptr %pktopts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pktopts, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %land.lhs.true13.if.end19_crit_edge, label %if.then15

land.lhs.true13.if.end19_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv.i.i
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %and.i = and i32 %23, 1048575
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 3
  %24 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and.i, ptr %flowlabel, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true13.if.end19_crit_edge, %if.then5.if.end19_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %25 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_reflect_tos = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 35, i32 99
  %27 = ptrtoint ptr %sysctl_tcp_reflect_tos to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sysctl_tcp_reflect_tos, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool22.not = icmp eq i8 %28, 0
  br i1 %tobool22.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %syn_tos = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 12
  %29 = ptrtoint ptr %syn_tos to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %syn_tos, align 4
  %and = and i8 %30, -4
  %tclass25 = getelementptr i8, ptr %sk, i32 2397
  %31 = ptrtoint ptr %tclass25 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tclass25, align 1
  %and27 = and i8 %32, 3
  %or = or i8 %and27, %and
  br label %cond.end

cond.false:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %tclass28 = getelementptr i8, ptr %sk, i32 2397
  %33 = ptrtoint ptr %tclass28 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tclass28, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8 [ %or, %cond.true ], [ %34, %cond.false ]
  %35 = and i8 %cond, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool32.not = icmp eq i8 %35, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %cond.end.if.end40_crit_edge

cond.end.if.end40_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

land.lhs.true33:                                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i107 = tail call fastcc i32 @tcp_call_bpf(ptr noundef %req) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i107)
  %cmp.i = icmp eq i32 %call.i107, 1
  %36 = or i8 %cond, 2
  %spec.select = select i1 %cmp.i, i8 %36, i8 %cond
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true33, %cond.end.if.end40_crit_edge
  %tclass.0 = phi i8 [ %cond, %cond.end.if.end40_crit_edge ], [ %spec.select, %land.lhs.true33 ]
  %37 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end40.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end40.rcu_read_lock.exit_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end40
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end40.rcu_read_lock.exit_crit_edge
  %41 = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %tobool41.not = icmp eq ptr %43, null
  br i1 %tobool41.not, label %if.then42, label %rcu_read_lock.exit.if.end57_crit_edge

rcu_read_lock.exit.if.end57_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then42:                                        ; preds = %rcu_read_lock.exit
  %opt43 = getelementptr i8, ptr %sk, i32 2420
  %44 = ptrtoint ptr %opt43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %opt43, align 4
  %call45 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %if.then42.if.end57_crit_edge

if.then42.if.end57_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

land.lhs.true47:                                  ; preds = %if.then42
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.if.end57_crit_edge, label %land.lhs.true50

land.lhs.true47.if.end57_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %.b104 = load i1, ptr @tcp_v6_send_synack.__warned, align 1
  br i1 %.b104, label %land.lhs.true50.if.end57_crit_edge, label %if.then52

land.lhs.true50.if.end57_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tcp_v6_send_synack.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 560, ptr noundef nonnull @.str.5) #13
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %land.lhs.true50.if.end57_crit_edge, %land.lhs.true47.if.end57_crit_edge, %if.then42.if.end57_crit_edge, %rcu_read_lock.exit.if.end57_crit_edge
  %opt.0 = phi ptr [ %43, %rcu_read_lock.exit.if.end57_crit_edge ], [ %45, %if.then52 ], [ %45, %land.lhs.true50.if.end57_crit_edge ], [ %45, %land.lhs.true47.if.end57_crit_edge ], [ %45, %if.then42.if.end57_crit_edge ]
  %46 = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 13
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool58.not = icmp eq i32 %48, 0
  br i1 %tobool58.not, label %cond.false60, label %if.end57.cond.end61_crit_edge

if.end57.cond.end61_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end61

cond.false60:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %49 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sk_mark, align 8
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false60, %if.end57.cond.end61_crit_edge
  %cond62 = phi i32 [ %50, %cond.false60 ], [ %48, %if.end57.cond.end61_crit_edge ]
  %conv63 = zext i8 %tclass.0 to i32
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %51 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sk_priority, align 4
  %call64 = tail call i32 @ip6_xmit(ptr noundef %sk, ptr noundef nonnull %call3, ptr noundef %fl, i32 noundef %cond62, ptr noundef %opt.0, i32 noundef %conv63, i32 noundef %52) #13
  %call.i108 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i108, label %cond.end61.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i111

cond.end61.rcu_read_unlock.exit_crit_edge:        ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i111:                               ; preds = %cond.end61
  %call1.i109 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %tobool.not.i110 = icmp eq i32 %call1.i109, 0
  br i1 %tobool.not.i110, label %land.lhs.true.i111.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i113

land.lhs.true.i111.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i113:                              ; preds = %land.lhs.true.i111
  %.b4.i112 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i112, label %land.lhs.true2.i113.rcu_read_unlock.exit_crit_edge, label %if.then.i114

land.lhs.true2.i113.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i114:                                     ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i114, %land.lhs.true2.i113.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i111.rcu_read_unlock.exit_crit_edge, %cond.end61.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !123
  %53 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i.i115 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i115 to ptr
  %preempt_count.i.i.i.i116 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i116, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i116, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call64)
  %cmp65 = icmp eq i32 %call64, 2
  %spec.select105 = select i1 %cmp65, i32 0, i32 %call64
  br label %done

done:                                             ; preds = %rcu_read_unlock.exit, %if.end.done_crit_edge, %land.lhs.true.done_crit_edge
  %err.0 = phi i32 [ %spec.select105, %rcu_read_unlock.exit ], [ -12, %if.end.done_crit_edge ], [ -12, %land.lhs.true.done_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @tcp_v6_get_syncookie(ptr noundef %sk, ptr noundef %iph, ptr noundef %th, ptr nocapture noundef writeonly %cookie) local_unnamed_addr #1 align 64 {
entry:
  %mss = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mss) #13
  %call = tail call zeroext i16 @tcp_get_syncookie_mss(ptr noundef nonnull @tcp6_request_sock_ops, ptr noundef nonnull @tcp_request_sock_ipv6_ops, ptr noundef %sk, ptr noundef %th) #13
  %0 = ptrtoint ptr %mss to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %call, ptr %mss, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @__cookie_v6_init_sequence(ptr noundef %iph, ptr noundef %th, ptr noundef nonnull %mss) #13
  %1 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %cookie, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %skc_reuseport.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %3 = ptrtoint ptr %skc_reuseport.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %skc_reuseport.i, align 1
  %4 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then.do.end36.i_crit_edge, label %if.then.i

if.then.do.end36.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36.i

if.then.i:                                        ; preds = %if.then
  %sk_reuseport_cb.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %5 = ptrtoint ptr %sk_reuseport_cb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %sk_reuseport_cb.i, align 8
  %call.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.then.i.do.end9.i_crit_edge

if.then.i.do.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b74.i = load i1, ptr @tcp_synq_overflow.__warned, align 1
  br i1 %.b74.i, label %land.lhs.true5.i.do.end9.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tcp_synq_overflow.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 509, ptr noundef nonnull @.str.5) #13
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then7.i, %land.lhs.true5.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %if.then.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %6, null
  br i1 %tobool11.not.i, label %do.end9.i.do.end36.i_crit_edge, label %do.end17.i, !prof !121

do.end9.i.do.end36.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36.i

do.end17.i:                                       ; preds = %do.end9.i
  %synq_overflow_ts.i = getelementptr inbounds %struct.sock_reuseport, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %synq_overflow_ts.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %synq_overflow_ts.i, align 4
  %sub19.i = sub i32 %2, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %sub19.i)
  %cmp.i = icmp ult i32 %sub19.i, 101
  br i1 %cmp.i, label %do.end17.i.if.end_crit_edge, label %do.end17.i.cleanup57.sink.split.i_crit_edge

do.end17.i.cleanup57.sink.split.i_crit_edge:      ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup57.sink.split.i

do.end17.i.if.end_crit_edge:                      ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end36.i:                                       ; preds = %do.end9.i.do.end36.i_crit_edge, %if.then.do.end36.i_crit_edge
  %rx_opt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61
  %9 = ptrtoint ptr %rx_opt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %rx_opt.i, align 4
  %sub41.i = sub i32 %2, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %sub41.i)
  %cmp42.i = icmp ult i32 %sub41.i, 101
  br i1 %cmp42.i, label %do.end36.i.if.end_crit_edge, label %do.end36.i.cleanup57.sink.split.i_crit_edge

do.end36.i.cleanup57.sink.split.i_crit_edge:      ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup57.sink.split.i

do.end36.i.if.end_crit_edge:                      ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

cleanup57.sink.split.i:                           ; preds = %do.end36.i.cleanup57.sink.split.i_crit_edge, %do.end17.i.cleanup57.sink.split.i_crit_edge
  %rx_opt.sink.i = phi ptr [ %synq_overflow_ts.i, %do.end17.i.cleanup57.sink.split.i_crit_edge ], [ %rx_opt.i, %do.end36.i.cleanup57.sink.split.i_crit_edge ]
  %11 = ptrtoint ptr %rx_opt.sink.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %2, ptr %rx_opt.sink.i, align 4
  br label %if.end

if.end:                                           ; preds = %cleanup57.sink.split.i, %do.end36.i.if.end_crit_edge, %do.end17.i.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %mss to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mss, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mss) #13
  ret i16 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @tcp_get_syncookie_mss(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cookie_v6_init_sequence(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_csk_xmit(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_v6_send_check(ptr noundef %sk, ptr nocapture noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %call.i.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %skc_v6_rcv_saddr, ptr noundef %skc_v6_daddr, i32 noundef %5, i32 noundef 6, i32 noundef 0) #13
  %6 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i) #16, !srcloc !126
  %neg.i.i.i.i = xor i32 %6, -1
  %shr.i.i.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i.i.i.i = trunc i32 %shr.i.i.i.i to i16
  %neg.i = xor i16 %conv.i.i.i.i, -1
  %check.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %neg.i, ptr %check.i, align 4
  %8 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transport_header.i.i.i, align 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %9, ptr %10, align 8
  %csum_offset.i = getelementptr inbounds %struct.anon.55, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16, ptr %csum_offset.i, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_sk_rebuild_header(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inet6_sk_rx_dst_set(ptr noundef %sk, ptr nocapture noundef readonly %skb) #1 align 64 {
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !121

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not = icmp eq i32 %and25.i, 0
  br i1 %tobool.not, label %skb_dst.exit.if.end36_crit_edge, label %land.lhs.true

skb_dst.exit.if.end36_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true:                                    ; preds = %skb_dst.exit
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #13, !srcloc !128
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %land.lhs.true.if.end36_crit_edge, label %if.then

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !130
  %sk_rx_dst24 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 1
  %7 = ptrtoint ptr %sk_rx_dst24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %sk_rx_dst24, align 8
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %8 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skb_iif, align 8
  %sk_rx_dst_ifindex = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 2
  %10 = ptrtoint ptr %sk_rx_dst_ifindex to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sk_rx_dst_ifindex, align 4
  %call35 = tail call fastcc i32 @rt6_get_cookie(ptr noundef nonnull %5)
  %sk_rx_dst_cookie = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 3
  %11 = ptrtoint ptr %sk_rx_dst_cookie to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call35, ptr %sk_rx_dst_cookie, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then, %land.lhs.true.if.end36_crit_edge, %skb_dst.exit.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_v6_conn_request(ptr noundef %sk, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %cmp = icmp eq i16 %1, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @tcp_v4_conn_request(ptr noundef %sk, ptr noundef %skb) #13
  br label %return

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.ipv6_unicast_destination.exit_crit_edge, label %land.lhs.true.i.i

if.end.ipv6_unicast_destination.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_unicast_destination.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge

land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_unicast_destination.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge, !prof !121

land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_unicast_destination.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %ipv6_unicast_destination.exit

ipv6_unicast_destination.exit:                    ; preds = %do.end.i.i, %land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge, %land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge, %if.end.ipv6_unicast_destination.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %and25.i.i = and i32 %6, -2
  %7 = inttoptr i32 %and25.i.i to ptr
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rt6i_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i = icmp slt i32 %9, 0
  br i1 %tobool.i, label %if.end4, label %drop

if.end4:                                          ; preds = %ipv6_unicast_destination.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saddr, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %17, %15
  %arrayidx4.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %19, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %do.body24, label %if.end48

do.body24:                                        ; preds = %if.end4
  tail call fastcc void @local_bh_disable()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %20 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_net.i, align 4
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %21, i32 0, i32 30, i32 1
  %22 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ipv6_statistics, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %cpu36 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu36, align 4
  %arrayidx37 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx37, align 4
  %add38 = add i32 %30, %24
  %31 = inttoptr i32 %add38 to ptr
  %syncp39 = getelementptr inbounds %struct.ipstats_mib, ptr %31, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %32 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i62 = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i62, label %do.body24.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i63

do.body24.u64_stats_update_begin.exit_crit_edge:  ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i63:                              ; preds = %do.body24
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !131
  %35 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %40, ptrtoint (ptr @lockdep_recursion to i32)
  %41 = inttoptr i32 %add.i.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !132
  %44 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i7.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool20.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i64, label %land.lhs.true.i.i63.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i63.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

land.rhs.i.i64:                                   ; preds = %land.lhs.true.i.i63
  %48 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i = icmp eq i32 %51, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i64.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i64.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i64
  %52 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i9.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %55, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !133
  %56 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %59, ptrtoint (ptr @hardirqs_enabled to i32)
  %60 = inttoptr i32 %add47.i.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !134
  %63 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i12.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %66, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool54.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !125

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i64.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i63.u64_stats_update_begin.exit_crit_edge, %do.body24.u64_stats_update_begin.exit_crit_edge
  %67 = ptrtoint ptr %syncp39 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %syncp39, align 4
  %inc.i.i.i.i = add i32 %68, 1
  store i32 %inc.i.i.i.i, ptr %syncp39, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !135
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %31, i32 0, i32 1, i32 0, i32 1
  %69 = tail call ptr @llvm.returnaddress(i32 0) #13
  %70 = ptrtoint ptr %69 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %70) #13
  %arrayidx41 = getelementptr [37 x i64], ptr %31, i32 0, i32 7
  %71 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx41, align 8
  %add42 = add i64 %72, 1
  store i64 %add42, ptr %arrayidx41, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %70) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  %73 = ptrtoint ptr %syncp39 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %syncp39, align 4
  %inc.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.i, ptr %syncp39, align 4
  tail call fastcc void @local_bh_enable()
  br label %return

if.end48:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %call49 = tail call i32 @tcp_conn_request(ptr noundef nonnull @tcp6_request_sock_ops, ptr noundef nonnull @tcp_request_sock_ipv6_ops, ptr noundef %sk, ptr noundef %skb) #13
  br label %return

drop:                                             ; preds = %ipv6_unicast_destination.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sk_drops.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_drops.i, i32 1, i32 3, i32 1) #13
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops.i, ptr %sk_drops.i, i32 1, ptr elementtype(i32) %sk_drops.i) #13, !srcloc !137
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %76 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %skc_net.i.i, align 4
  %net_statistics.i = getelementptr inbounds %struct.net, ptr %77, i32 0, i32 30, i32 3
  %78 = ptrtoint ptr %net_statistics.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %net_statistics.i, align 4
  %arrayidx.i = getelementptr [126 x i32], ptr %79, i32 0, i32 20
  %80 = ptrtoint ptr %arrayidx.i to i32
  %81 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i65 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i65 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu.i, align 4
  %arrayidx8.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx8.i, align 4
  %add.i = add i32 %86, %80
  %87 = inttoptr i32 %add.i to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add9.i = add i32 %89, 1
  store i32 %add9.i, ptr %87, align 4
  br label %return

return:                                           ; preds = %drop, %if.end48, %u64_stats_update_begin.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %u64_stats_update_begin.exit ], [ %call49, %if.end48 ], [ 0, %drop ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcp_v6_syn_recv_sock(ptr noundef %sk, ptr noundef %skb, ptr noundef %req, ptr noundef %dst, ptr noundef %req_unhash, ptr noundef %own_req) #1 align 64 {
entry:
  %found_dup_sk = alloca i8, align 1
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sk, i32 2328
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %found_dup_sk) #13
  %0 = ptrtoint ptr %found_dup_sk to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %found_dup_sk, align 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #13
  %1 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp = icmp eq i16 %3, 2048
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @tcp_v4_syn_recv_sock(ptr noundef %sk, ptr noundef %skb, ptr noundef %req, ptr noundef %dst, ptr noundef %req_unhash, ptr noundef %own_req) #13
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %add.ptr.i368 = getelementptr i8, ptr %call2, i32 2328
  %pinet6 = getelementptr inbounds %struct.inet_sock, ptr %call2, i32 0, i32 1
  %4 = ptrtoint ptr %pinet6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i368, ptr %pinet6, align 8
  %5 = call ptr @memcpy(ptr %add.ptr.i368, ptr %add.ptr.i, i32 112)
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %call2, i32 0, i32 11
  %6 = call ptr @memcpy(ptr %add.ptr.i368, ptr %skc_v6_rcv_saddr, i32 16)
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %call2, i32 0, i32 11
  %7 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ipv6_mapped, ptr %icsk_af_ops, align 8
  %is_mptcp.i = getelementptr inbounds %struct.tcp_sock, ptr %call2, i32 0, i32 115
  %8 = ptrtoint ptr %is_mptcp.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_mptcp.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not = icmp eq i8 %9, 0
  br i1 %tobool.i.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mptcpv6_handle_mapped(ptr noundef nonnull %call2, i1 noundef zeroext true) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %call2, i32 0, i32 80
  %10 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tcp_v4_do_rcv, ptr %sk_backlog_rcv, align 4
  %af_specific = getelementptr inbounds %struct.tcp_sock, ptr %call2, i32 0, i32 117
  %11 = ptrtoint ptr %af_specific to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tcp_sock_ipv6_mapped_specific, ptr %af_specific, align 8
  %ipv6_mc_list = getelementptr i8, ptr %call2, i32 2408
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %13 = call ptr @memset(ptr %ipv6_mc_list, i32 0, i32 20)
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %12, align 8
  %and.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end11.skb_rtable.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end11.skb_rtable.exit.i_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_rtable.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end11
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge

land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_rtable.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, !prof !121

land.rhs.i.i.i.skb_rtable.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_rtable.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_rtable.exit.i

skb_rtable.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge, %if.end11.skb_rtable.exit.i_crit_edge
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %12, align 8
  %and25.i.i.i = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i, label %skb_rtable.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

skb_rtable.exit.i.if.end.i_crit_edge:             ; preds = %skb_rtable.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %skb_rtable.exit.i
  %18 = inttoptr i32 %and25.i.i.i to ptr
  %rt_iif.i = getelementptr inbounds %struct.rtable, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %rt_iif.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rt_iif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.not.i = icmp eq i32 %20, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.inet_iif.exit_crit_edge

land.lhs.true.i.inet_iif.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet_iif.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %skb_rtable.exit.i.if.end.i_crit_edge
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %21 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %skb_iif.i, align 8
  br label %inet_iif.exit

inet_iif.exit:                                    ; preds = %if.end.i, %land.lhs.true.i.inet_iif.exit_crit_edge
  %retval.0.i = phi i32 [ %22, %if.end.i ], [ %20, %land.lhs.true.i.inet_iif.exit_crit_edge ]
  %mcast_oif = getelementptr i8, ptr %call2, i32 2388
  %23 = ptrtoint ptr %mcast_oif to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %mcast_oif, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %27 to i32
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %conv.i.i
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ttl, align 4
  %mcast_hops = getelementptr i8, ptr %call2, i32 2380
  %30 = zext i8 %29 to i32
  %31 = ptrtoint ptr %mcast_hops to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load = load i32, ptr %mcast_hops, align 4
  %bf.shl = shl nuw nsw i32 %30, 7
  %bf.clear = and i32 %bf.load, -65409
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %mcast_hops, align 4
  %rcv_flowinfo = getelementptr i8, ptr %call2, i32 2400
  %32 = ptrtoint ptr %rcv_flowinfo to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %rcv_flowinfo, align 4
  %repflow = getelementptr i8, ptr %sk, i32 2394
  %33 = ptrtoint ptr %repflow to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load16 = load i16, ptr %repflow, align 2
  %34 = and i16 %bf.load16, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool18.not = icmp eq i16 %34, 0
  br i1 %tobool18.not, label %inet_iif.exit.if.end20_crit_edge, label %if.then19

inet_iif.exit.if.end20_crit_edge:                 ; preds = %inet_iif.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then19:                                        ; preds = %inet_iif.exit
  call void @__sanitizer_cov_trace_pc() #15
  %flow_label = getelementptr i8, ptr %call2, i32 2372
  %35 = ptrtoint ptr %flow_label to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %flow_label, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %inet_iif.exit.if.end20_crit_edge
  %icsk_pmtu_cookie = getelementptr inbounds %struct.inet_connection_sock, ptr %call2, i32 0, i32 9
  %36 = ptrtoint ptr %icsk_pmtu_cookie to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %icsk_pmtu_cookie, align 8
  %call22 = tail call i32 @tcp_sync_mss(ptr noundef nonnull %call2, i32 noundef %37) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 53
  %38 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 54
  %40 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.i = icmp ugt i32 %39, %41
  br i1 %cmp.i, label %out_overflow, label %if.end27

if.end27:                                         ; preds = %if.end23
  %tobool28.not = icmp eq ptr %dst, null
  br i1 %tobool28.not, label %if.then29, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  %call30 = call ptr @inet6_csk_route_req(ptr noundef %sk, ptr noundef nonnull %fl6, ptr noundef %req, i8 noundef zeroext 6) #13
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.then29.out_crit_edge, label %if.then29.if.end34_crit_edge

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %dst.addr.0 = phi ptr [ %dst, %if.end27.if.end34_crit_edge ], [ %call30, %if.then29.if.end34_crit_edge ]
  %call35 = call ptr @tcp_create_openreq_child(ptr noundef %sk, ptr noundef %req, ptr noundef %skb) #13
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end34.out_nonewsk_crit_edge, label %if.end38

if.end34.out_nonewsk_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_nonewsk

if.end38:                                         ; preds = %if.end34
  %sk_gso_type = getelementptr inbounds %struct.sock, ptr %call35, i32 0, i32 39
  %42 = ptrtoint ptr %sk_gso_type to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %sk_gso_type, align 8
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call35, i32 0, i32 4
  %43 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %44 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i370 = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i370)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i370, 0
  br i1 %tobool.i.not.i.i, label %if.end38.ip6_dst_store.exit_crit_edge, label %cond.true.i.i

if.end38.ip6_dst_store.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip6_dst_store.exit

cond.true.i.i:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %call35, i32 0, i32 1
  %45 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pinet6.i.i, align 8
  br label %ip6_dst_store.exit

ip6_dst_store.exit:                               ; preds = %cond.true.i.i, %if.end38.ip6_dst_store.exit_crit_edge
  %cond.i.i = phi ptr [ %46, %cond.true.i.i ], [ null, %if.end38.ip6_dst_store.exit_crit_edge ]
  %call1.i = call fastcc i32 @rt6_get_cookie(ptr noundef nonnull %dst.addr.0) #13
  %dst_cookie.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 14
  %47 = ptrtoint ptr %dst_cookie.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call1.i, ptr %dst_cookie.i, align 4
  call void @sk_setup_caps(ptr noundef nonnull %call35, ptr noundef nonnull %dst.addr.0) #13
  %daddr_cache.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %daddr_cache.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %daddr_cache.i, align 4
  %saddr_cache.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %saddr_cache.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %saddr_cache.i, align 4
  call void @inet6_sk_rx_dst_set(ptr noundef nonnull %call35, ptr noundef %skb)
  %add.ptr.i371 = getelementptr i8, ptr %call35, i32 2328
  %pinet641 = getelementptr inbounds %struct.inet_sock, ptr %call35, i32 0, i32 1
  %50 = ptrtoint ptr %pinet641 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr.i371, ptr %pinet641, align 8
  %51 = call ptr @memcpy(ptr %add.ptr.i371, ptr %add.ptr.i, i32 112)
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %call35, i32 0, i32 10
  %skc_v6_daddr47 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 10
  %52 = call ptr @memcpy(ptr %skc_v6_daddr, ptr %skc_v6_daddr47, i32 16)
  %skc_v6_rcv_saddr51 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 11
  %53 = call ptr @memcpy(ptr %add.ptr.i371, ptr %skc_v6_rcv_saddr51, i32 16)
  %skc_v6_rcv_saddr53 = getelementptr inbounds %struct.sock_common, ptr %call35, i32 0, i32 11
  %54 = call ptr @memcpy(ptr %skc_v6_rcv_saddr53, ptr %skc_v6_rcv_saddr51, i32 16)
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 6
  %55 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %skc_bound_dev_if, align 4
  %skc_bound_dev_if60 = getelementptr inbounds %struct.sock_common, ptr %call35, i32 0, i32 6
  %57 = ptrtoint ptr %skc_bound_dev_if60 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %skc_bound_dev_if60, align 4
  %inet_opt = getelementptr inbounds %struct.inet_sock, ptr %call35, i32 0, i32 5
  %58 = ptrtoint ptr %inet_opt to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %inet_opt, align 4
  %ipv6_mc_list61 = getelementptr i8, ptr %call35, i32 2408
  %59 = ptrtoint ptr %ipv6_mc_list61 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %ipv6_mc_list61, align 4
  %ipv6_ac_list62 = getelementptr i8, ptr %call35, i32 2412
  %60 = ptrtoint ptr %ipv6_ac_list62 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %ipv6_ac_list62, align 4
  %ipv6_fl_list63 = getelementptr i8, ptr %call35, i32 2416
  %61 = ptrtoint ptr %ipv6_fl_list63 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %ipv6_fl_list63, align 4
  %rxopt = getelementptr i8, ptr %sk, i32 2392
  %62 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %rxopt, align 4
  %rxopt64 = getelementptr i8, ptr %call35, i32 2392
  %64 = ptrtoint ptr %rxopt64 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %rxopt64, align 4
  %pktoptions65 = getelementptr i8, ptr %call35, i32 2424
  %65 = ptrtoint ptr %pktoptions65 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %pktoptions65, align 4
  %opt66 = getelementptr i8, ptr %call35, i32 2420
  %66 = ptrtoint ptr %opt66 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %opt66, align 4
  %67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %mcast_oif68 = getelementptr i8, ptr %call35, i32 2388
  %70 = ptrtoint ptr %mcast_oif68 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %mcast_oif68, align 4
  %head.i.i373 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %71 = ptrtoint ptr %head.i.i373 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %head.i.i373, align 8
  %network_header.i.i374 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %73 = ptrtoint ptr %network_header.i.i374 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %network_header.i.i374, align 4
  %conv.i.i375 = zext i16 %74 to i32
  %add.ptr.i.i376 = getelementptr i8, ptr %72, i32 %conv.i.i375
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i376, i32 0, i32 4
  %75 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %hop_limit, align 1
  %mcast_hops71 = getelementptr i8, ptr %call35, i32 2380
  %77 = zext i8 %76 to i32
  %78 = ptrtoint ptr %mcast_hops71 to i32
  call void @__asan_load4_noabort(i32 %78)
  %bf.load72 = load i32, ptr %mcast_hops71, align 4
  %bf.shl74 = shl nuw nsw i32 %77, 7
  %bf.clear75 = and i32 %bf.load72, -65409
  %bf.set76 = or i32 %bf.clear75, %bf.shl74
  store i32 %bf.set76, ptr %mcast_hops71, align 4
  %79 = load ptr, ptr %head.i.i373, align 8
  %80 = load i16, ptr %network_header.i.i374, align 4
  %conv.i.i379 = zext i16 %80 to i32
  %add.ptr.i.i380 = getelementptr i8, ptr %79, i32 %conv.i.i379
  %81 = ptrtoint ptr %add.ptr.i.i380 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i.i380, align 4
  %and.i = and i32 %82, 268435455
  %rcv_flowinfo82 = getelementptr i8, ptr %call35, i32 2400
  %83 = ptrtoint ptr %rcv_flowinfo82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and.i, ptr %rcv_flowinfo82, align 4
  %repflow83 = getelementptr i8, ptr %sk, i32 2394
  %84 = ptrtoint ptr %repflow83 to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load84 = load i16, ptr %repflow83, align 2
  %85 = and i16 %bf.load84, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool87.not = icmp eq i16 %85, 0
  br i1 %tobool87.not, label %ip6_dst_store.exit.if.end92_crit_edge, label %if.then88

ip6_dst_store.exit.if.end92_crit_edge:            ; preds = %ip6_dst_store.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.then88:                                        ; preds = %ip6_dst_store.exit
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %head.i.i373 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %head.i.i373, align 8
  %88 = ptrtoint ptr %network_header.i.i374 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %network_header.i.i374, align 4
  %conv.i.i383 = zext i16 %89 to i32
  %add.ptr.i.i384 = getelementptr i8, ptr %87, i32 %conv.i.i383
  %90 = ptrtoint ptr %add.ptr.i.i384 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i384, align 4
  %and.i385 = and i32 %91, 1048575
  %flow_label91 = getelementptr i8, ptr %call35, i32 2372
  %92 = ptrtoint ptr %flow_label91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and.i385, ptr %flow_label91, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %ip6_dst_store.exit.if.end92_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %93 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %skc_net.i, align 4
  %sysctl_tcp_reflect_tos = getelementptr inbounds %struct.net, ptr %94, i32 0, i32 35, i32 99
  %95 = ptrtoint ptr %sysctl_tcp_reflect_tos to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %sysctl_tcp_reflect_tos, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool94.not = icmp eq i8 %96, 0
  br i1 %tobool94.not, label %if.end92.if.end99_crit_edge, label %if.then95

if.end92.if.end99_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  %syn_tos = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 12
  %97 = ptrtoint ptr %syn_tos to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %syn_tos, align 4
  %99 = and i8 %98, -4
  %tclass = getelementptr i8, ptr %call35, i32 2397
  %100 = ptrtoint ptr %tclass to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %tclass, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.end92.if.end99_crit_edge
  %101 = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 8
  %tobool100.not = icmp eq ptr %103, null
  br i1 %tobool100.not, label %if.then101, label %if.end99.if.end132_crit_edge

if.end99.if.end132_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

if.then101:                                       ; preds = %if.end99
  %opt102 = getelementptr i8, ptr %sk, i32 2420
  %104 = ptrtoint ptr %opt102 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %opt102, align 4
  %call104 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %land.lhs.true, label %if.then101.if.end115_crit_edge

if.then101.if.end115_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

land.lhs.true:                                    ; preds = %if.then101
  %call106 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %land.lhs.true.if.end115_crit_edge, label %land.lhs.true108

land.lhs.true.if.end115_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

land.lhs.true108:                                 ; preds = %land.lhs.true
  %.b367 = load i1, ptr @tcp_v6_syn_recv_sock.__warned, align 1
  br i1 %.b367, label %land.lhs.true108.if.end115_crit_edge, label %if.then110

land.lhs.true108.if.end115_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

if.then110:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tcp_v6_syn_recv_sock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1379, ptr noundef nonnull @.str.5) #13
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %land.lhs.true108.if.end115_crit_edge, %land.lhs.true.if.end115_crit_edge, %if.then101.if.end115_crit_edge
  %tobool116.not = icmp eq ptr %105, null
  br i1 %tobool116.not, label %if.end132.thread, label %if.end115.if.end132_crit_edge

if.end115.if.end132_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

if.end132.thread:                                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  %icsk_ext_hdr_len405 = getelementptr inbounds %struct.inet_connection_sock, ptr %call35, i32 0, i32 23
  %106 = ptrtoint ptr %icsk_ext_hdr_len405 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %icsk_ext_hdr_len405, align 2
  br label %if.end141

if.end132:                                        ; preds = %if.end115.if.end132_crit_edge, %if.end99.if.end132_crit_edge
  %opt.0403 = phi ptr [ %105, %if.end115.if.end132_crit_edge ], [ %103, %if.end99.if.end132_crit_edge ]
  %call118 = call ptr @ipv6_dup_options(ptr noundef nonnull %call35, ptr noundef nonnull %opt.0403) #13
  %107 = ptrtoint ptr %opt66 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %call118, ptr %opt66, align 4
  %icsk_ext_hdr_len = getelementptr inbounds %struct.inet_connection_sock, ptr %call35, i32 0, i32 23
  %108 = ptrtoint ptr %icsk_ext_hdr_len to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %icsk_ext_hdr_len, align 2
  %tobool134.not = icmp eq ptr %call118, null
  br i1 %tobool134.not, label %if.end132.if.end141_crit_edge, label %if.then135

if.end132.if.end141_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.then135:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %call118, i32 0, i32 3
  %109 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %opt_nflen, align 2
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %call118, i32 0, i32 2
  %111 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %opt_flen, align 4
  %add = add i16 %112, %110
  %113 = ptrtoint ptr %icsk_ext_hdr_len to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %add, ptr %icsk_ext_hdr_len, align 2
  br label %if.end141

if.end141:                                        ; preds = %if.then135, %if.end132.if.end141_crit_edge, %if.end132.thread
  call void @tcp_ca_openreq_child(ptr noundef nonnull %call35, ptr noundef nonnull %dst.addr.0) #13
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %dst.addr.0, i32 0, i32 1
  %114 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mtu.i, align 4
  %call.i = call i32 %117(ptr noundef nonnull %dst.addr.0) #13
  %call143 = call i32 @tcp_sync_mss(ptr noundef nonnull %call35, i32 noundef %call.i) #13
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst.addr.0, i32 0, i32 2
  %118 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i = and i32 %119, -4
  %120 = inttoptr i32 %and.i.i to ptr
  %arrayidx.i.i = getelementptr i32, ptr %120, i32 7
  %121 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i386 = icmp eq i32 %122, 0
  br i1 %tobool.not.i386, label %if.then.i, label %if.end141.dst_metric_advmss.exit_crit_edge

if.end141.dst_metric_advmss.exit_crit_edge:       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_metric_advmss.exit

if.then.i:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ops.i, align 4
  %default_advmss.i = getelementptr inbounds %struct.dst_ops, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %default_advmss.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %default_advmss.i, align 16
  %call1.i388 = call i32 %126(ptr noundef nonnull %dst.addr.0) #13
  br label %dst_metric_advmss.exit

dst_metric_advmss.exit:                           ; preds = %if.then.i, %if.end141.dst_metric_advmss.exit_crit_edge
  %advmss.0.i = phi i32 [ %122, %if.end141.dst_metric_advmss.exit_crit_edge ], [ %call1.i388, %if.then.i ]
  %conv146 = trunc i32 %advmss.0.i to i16
  %user_mss1.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 6
  %127 = ptrtoint ptr %user_mss1.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load volatile i16, ptr %user_mss1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool.not.i390 = icmp ne i16 %128, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %128, i16 %conv146)
  %cmp.i391 = icmp ult i16 %128, %conv146
  %or.cond.i = and i1 %tobool.not.i390, %cmp.i391
  %cond.i = select i1 %or.cond.i, i16 %128, i16 %conv146
  %advmss = getelementptr inbounds %struct.tcp_sock, ptr %call35, i32 0, i32 32
  %129 = ptrtoint ptr %advmss to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %cond.i, ptr %advmss, align 8
  call void @tcp_initialize_rcv_mss(ptr noundef nonnull %call35) #13
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %call35, i32 0, i32 2
  %130 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 2130706438, ptr %inet_saddr, align 4
  %131 = ptrtoint ptr %call35 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 2130706438, ptr %call35, align 8
  %skc_rcv_saddr = getelementptr inbounds %struct.anon, ptr %call35, i32 0, i32 1
  %132 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 2130706438, ptr %skc_rcv_saddr, align 4
  %133 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %skc_net.i, align 4
  %135 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %skc_bound_dev_if, align 4
  %call156 = call fastcc i32 @l3mdev_master_ifindex_by_index(ptr noundef %134, i32 noundef %136)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @tcp_md5_needed, ptr blockaddress(@tcp_v6_syn_recv_sock, %if.end.i.i)) #13
          to label %tcp_v6_md5_do_lookup.exit [label %if.end.i.i], !srcloc !120

if.end.i.i:                                       ; preds = %dst_metric_advmss.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i.i = call ptr @__tcp_md5_do_lookup(ptr noundef %sk, i32 noundef %call156, ptr noundef %skc_v6_daddr, i32 noundef 10) #13
  br label %tcp_v6_md5_do_lookup.exit

tcp_v6_md5_do_lookup.exit:                        ; preds = %if.end.i.i, %dst_metric_advmss.exit
  %retval.0.i.i = phi ptr [ %call3.i.i, %if.end.i.i ], [ null, %dst_metric_advmss.exit ]
  %tobool160.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool160.not, label %tcp_v6_md5_do_lookup.exit.if.end167_crit_edge, label %if.then161

tcp_v6_md5_do_lookup.exit.if.end167_crit_edge:    ; preds = %tcp_v6_md5_do_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end167

if.then161:                                       ; preds = %tcp_v6_md5_do_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.tcp_md5sig_key, ptr %retval.0.i.i, i32 0, i32 4
  %137 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %flags, align 1
  %key164 = getelementptr inbounds %struct.tcp_md5sig_key, ptr %retval.0.i.i, i32 0, i32 7
  %keylen = getelementptr inbounds %struct.tcp_md5sig_key, ptr %retval.0.i.i, i32 0, i32 1
  %139 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %keylen, align 4
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %141 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %sk_allocation.i, align 8
  %and.i393 = and i32 %142, 131072
  %or.i = or i32 %and.i393, 2592
  %call166 = call i32 @tcp_md5_do_add(ptr noundef nonnull %call35, ptr noundef %skc_v6_daddr, i32 noundef 10, i8 noundef zeroext -128, i32 noundef %call156, i8 noundef zeroext %138, ptr noundef %key164, i8 noundef zeroext %140, i32 noundef %or.i) #13
  br label %if.end167

if.end167:                                        ; preds = %if.then161, %tcp_v6_md5_do_lookup.exit.if.end167_crit_edge
  %call168 = call i32 @__inet_inherit_port(ptr noundef %sk, ptr noundef nonnull %call35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  call void @inet_csk_prepare_forced_close(ptr noundef nonnull %call35) #13
  call void @tcp_done(ptr noundef nonnull %call35) #13
  br label %out

if.end172:                                        ; preds = %if.end167
  %call174 = call zeroext i1 @inet_ehash_nolisten(ptr noundef nonnull %call35, ptr noundef %req_unhash, ptr noundef nonnull %found_dup_sk) #13
  %frombool = zext i1 %call174 to i8
  %143 = ptrtoint ptr %own_req to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %frombool, ptr %own_req, align 1
  br i1 %call174, label %if.then176, label %if.else

if.then176:                                       ; preds = %if.end172
  %saved_syn.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 9
  %144 = ptrtoint ptr %saved_syn.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %saved_syn.i, align 4
  %saved_syn1.i = getelementptr inbounds %struct.tcp_sock, ptr %call35, i32 0, i32 121
  %146 = ptrtoint ptr %saved_syn1.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %saved_syn1.i, align 8
  store ptr null, ptr %saved_syn.i, align 4
  %pktopts = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3, i32 0, i32 1
  %147 = ptrtoint ptr %pktopts to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pktopts, align 4
  %tobool177.not = icmp eq ptr %148, null
  br i1 %tobool177.not, label %if.then176.cleanup_crit_edge, label %if.then178

if.then176.cleanup_crit_edge:                     ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then178:                                       ; preds = %if.then176
  %sk_allocation.i394 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %149 = ptrtoint ptr %sk_allocation.i394 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sk_allocation.i394, align 8
  %and.i395 = and i32 %150, 131072
  %or.i396 = or i32 %and.i395, 2592
  %call181 = call ptr @skb_clone(ptr noundef nonnull %148, i32 noundef %or.i396) #13
  %151 = ptrtoint ptr %pktoptions65 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call181, ptr %pktoptions65, align 4
  %152 = ptrtoint ptr %pktopts to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pktopts, align 4
  call void @consume_skb(ptr noundef %153) #13
  %154 = ptrtoint ptr %pktopts to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %pktopts, align 4
  %155 = ptrtoint ptr %pktoptions65 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pktoptions65, align 4
  %tobool186.not = icmp eq ptr %156, null
  br i1 %tobool186.not, label %if.then178.cleanup_crit_edge, label %if.then187

if.then178.cleanup_crit_edge:                     ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then187:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #15
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %156, i32 0, i32 3
  %157 = getelementptr inbounds %struct.sk_buff, ptr %156, i32 0, i32 3, i32 24
  %158 = call ptr @memcpy(ptr %cb.i, ptr %157, i32 24)
  %159 = ptrtoint ptr %pktoptions65 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pktoptions65, align 4
  call fastcc void @skb_set_owner_r(ptr noundef %160, ptr noundef nonnull %call35)
  br label %cleanup

if.else:                                          ; preds = %if.end172
  %tobool192.not = icmp eq ptr %req_unhash, null
  br i1 %tobool192.not, label %land.lhs.true193, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true193:                                 ; preds = %if.else
  %161 = ptrtoint ptr %found_dup_sk to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %found_dup_sk, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool194.not = icmp eq i8 %162, 0
  br i1 %tobool194.not, label %land.lhs.true193.cleanup_crit_edge, label %if.then196

land.lhs.true193.cleanup_crit_edge:               ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then196:                                       ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #15
  %sk_lock = getelementptr inbounds %struct.sock, ptr %call35, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %sk_lock) #13
  call fastcc void @sock_put(ptr noundef nonnull %call35)
  br label %cleanup

out_overflow:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %skc_net.i397 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %163 = ptrtoint ptr %skc_net.i397 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %skc_net.i397, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %164, i32 0, i32 30, i32 3
  %165 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %166, i32 0, i32 19
  %167 = ptrtoint ptr %arrayidx to i32
  %168 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i398 = and i32 %168, -16384
  %169 = inttoptr i32 %and.i398 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cpu, align 4
  %arrayidx212 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %171
  %172 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx212, align 4
  %add213 = add i32 %173, %167
  %174 = inttoptr i32 %add213 to ptr
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 4
  %add214 = add i32 %176, 1
  store i32 %add214, ptr %174, align 4
  br label %out_nonewsk

out_nonewsk:                                      ; preds = %out_overflow, %if.end34.out_nonewsk_crit_edge
  %dst.addr.1 = phi ptr [ %dst, %out_overflow ], [ %dst.addr.0, %if.end34.out_nonewsk_crit_edge ]
  call void @dst_release(ptr noundef %dst.addr.1) #13
  br label %out

out:                                              ; preds = %out_nonewsk, %if.then171, %if.then29.out_crit_edge
  %sk_drops.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i.i399 = call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %sk_drops.i, i32 1, i32 3, i32 1) #13
  %177 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops.i, ptr %sk_drops.i, i32 1, ptr elementtype(i32) %sk_drops.i) #13, !srcloc !137
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %178 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %skc_net.i.i, align 4
  %net_statistics.i = getelementptr inbounds %struct.net, ptr %179, i32 0, i32 30, i32 3
  %180 = ptrtoint ptr %net_statistics.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %net_statistics.i, align 4
  %arrayidx.i = getelementptr [126 x i32], ptr %181, i32 0, i32 20
  %182 = ptrtoint ptr %arrayidx.i to i32
  %183 = call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i400 = and i32 %183, -16384
  %184 = inttoptr i32 %and.i.i400 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 3
  %185 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %cpu.i, align 4
  %arrayidx8.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %186
  %187 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx8.i, align 4
  %add.i = add i32 %188, %182
  %189 = inttoptr i32 %add.i to ptr
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  %add9.i = add i32 %191, 1
  store i32 %add9.i, ptr %189, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then196, %land.lhs.true193.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then187, %if.then178.cleanup_crit_edge, %if.then176.cleanup_crit_edge, %if.end20, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end20 ], [ null, %out ], [ null, %if.then.cleanup_crit_edge ], [ %call35, %if.then187 ], [ %call35, %if.then178.cleanup_crit_edge ], [ %call35, %if.then176.cleanup_crit_edge ], [ %call35, %if.else.cleanup_crit_edge ], [ null, %if.then196 ], [ %call35, %land.lhs.true193.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %found_dup_sk) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_csk_addr2sockaddr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_v6_mtu_reduced(ptr noundef %sk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %entry
  %mtu_info = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 114
  %2 = ptrtoint ptr %mtu_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %mtu_info, align 8
  %call1 = tail call i32 @tcp_mtu_to_mss(ptr noundef %sk, i32 noundef %3) #13
  %mss_cache = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %4 = ptrtoint ptr %mss_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mss_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %5)
  %cmp.not = icmp ult i32 %call1, %5
  br i1 %cmp.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %call6 = tail call ptr @inet6_csk_update_pmtu(ptr noundef %sk, i32 noundef %3) #13
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %icsk_pmtu_cookie = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 9
  %6 = ptrtoint ptr %icsk_pmtu_cookie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %icsk_pmtu_cookie, align 8
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call6, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mtu.i, align 4
  %call.i = tail call i32 %11(ptr noundef nonnull %call6) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call.i)
  %cmp12 = icmp ugt i32 %7, %call.i
  br i1 %cmp12, label %if.then14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %mtu.i30 = getelementptr inbounds %struct.dst_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %mtu.i30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mtu.i30, align 4
  %call.i31 = tail call i32 %15(ptr noundef nonnull %call6) #13
  %call16 = tail call i32 @tcp_sync_mss(ptr noundef %sk, i32 noundef %call.i31) #13
  tail call void @tcp_simple_retransmit(ptr noundef %sk) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcp6_proc_init(ptr nocapture noundef readonly %net) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @tcp6_seq_ops, i32 noundef 40, ptr noundef nonnull @tcp6_seq_afinfo) #13
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp6_proc_exit(ptr nocapture noundef readonly %net) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_close(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_v6_pre_connect(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len) #1 align 64 {
entry:
  %__unused_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %addr_len)
  %cmp = icmp slt i32 %addr_len, 24
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %if.end.sock_owned_by_me.exit_crit_edge

if.end.sock_owned_by_me.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_me.exit

lockdep_sock_is_held.exit.i:                      ; preds = %if.end
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %land.rhs.i, label %lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge

lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_me.exit

land.rhs.i:                                       ; preds = %lockdep_sock_is_held.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %land.rhs.i.sock_owned_by_me.exit_crit_edge, label %land.rhs3.i

land.rhs.i.sock_owned_by_me.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_me.exit

land.rhs3.i:                                      ; preds = %land.rhs.i
  %.b40.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i, label %land.rhs3.i.sock_owned_by_me.exit_crit_edge, label %if.then.i, !prof !125

land.rhs3.i.sock_owned_by_me.exit_crit_edge:      ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_me.exit

if.then.i:                                        ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1750, i32 noundef 9, ptr noundef null) #13
  br label %sock_owned_by_me.exit

sock_owned_by_me.exit:                            ; preds = %if.then.i, %land.rhs3.i.sock_owned_by_me.exit_crit_edge, %land.rhs.i.sock_owned_by_me.exit_crit_edge, %lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge, %if.end.sock_owned_by_me.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__unused_flags) #13
  %1 = ptrtoint ptr %__unused_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %__unused_flags, align 4, !annotation !139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 8), ptr blockaddress(@tcp_v6_pre_connect, %if.then3)) #13
          to label %if.end5 [label %if.then3], !srcloc !120

if.then3:                                         ; preds = %sock_owned_by_me.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = call i32 @__cgroup_bpf_run_filter_sock_addr(ptr noundef %sk, ptr noundef %uaddr, i32 noundef 8, ptr noundef null, ptr noundef nonnull %__unused_flags) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %sock_owned_by_me.exit
  %__ret.0 = phi i32 [ %call4, %if.then3 ], [ 0, %sock_owned_by_me.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__unused_flags) #13
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  %retval.0 = phi i32 [ %__ret.0, %if.end5 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_v6_connect(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len) #1 align 64 {
entry:
  %final = alloca %struct.in6_addr, align 4
  %fl6 = alloca %struct.flowi6, align 8
  %err = alloca i32, align 4
  %sin = alloca %struct.sockaddr_in, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sk, i32 2328
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %final) #13
  %0 = call ptr @memset(ptr %final, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #13
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %1 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skc_net.i, align 4
  %ipv4 = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %addr_len)
  %cmp = icmp slt i32 %addr_len, 24
  br i1 %cmp, label %entry.cleanup236_crit_edge, label %if.end

entry.cleanup236_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup236

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %4)
  %cmp6.not = icmp eq i16 %4, 10
  br i1 %cmp6.not, label %if.end9, label %if.end.cleanup236_crit_edge

if.end.cleanup236_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup236

if.end9:                                          ; preds = %if.end
  %5 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %sndflow = getelementptr i8, ptr %sk, i32 2394
  %6 = ptrtoint ptr %sndflow to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %sndflow, align 2
  %7 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end9.if.end24_crit_edge, label %if.then10

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then10:                                        ; preds = %if.end9
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 2
  %8 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin6_flowinfo, align 4
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %and12 = and i32 %9, 265289727
  %10 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and12, ptr %flowlabel, align 8
  %and14 = and i32 %9, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then10.if.end24_crit_edge, label %if.then16

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then16:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ipv6_flowlabel_exclusive, ptr blockaddress(@tcp_v6_connect, %do.end.i)) #13
          to label %if.end24 [label %do.end.i], !srcloc !120

do.end.i:                                         ; preds = %if.then16
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %flowlabel_has_excl.i = getelementptr inbounds %struct.net, ptr %12, i32 0, i32 36, i32 17
  %13 = ptrtoint ptr %flowlabel_has_excl.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %flowlabel_has_excl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not.i = icmp eq i8 %14, 0
  br i1 %tobool5.not.i, label %do.end.i.if.end24_crit_edge, label %if.then.i

do.end.i.if.end24_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then.i:                                        ; preds = %do.end.i
  %call6.i = tail call ptr @__fl6_sock_lookup(ptr noundef %sk, i32 noundef %and12) #13
  %tobool7.not.i = icmp eq ptr %call6.i, null
  %cmp.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool7.not.i, %cmp.i
  br i1 %or.cond, label %if.then.i.cleanup236_crit_edge, label %if.then.i351

if.then.i.cleanup236_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup236

if.then.i351:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %users.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %call6.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #13
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #13, !srcloc !140
  br label %if.end24

if.end24:                                         ; preds = %if.then.i351, %do.end.i.if.end24_crit_edge, %if.then16, %if.then10.if.end24_crit_edge, %if.end9.if.end24_crit_edge
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %16 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %19, %17
  %arrayidx4.i = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %21
  %arrayidx7.i = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i352 = icmp eq i32 %or8.i, 0
  br i1 %cmp.i352, label %if.then26, label %if.end24.if.end32_crit_edge

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then26:                                        ; preds = %if.end24
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %24 = ptrtoint ptr %skc_v6_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %skc_v6_rcv_saddr, align 4
  %arrayidx2.i353 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx2.i353 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i353, align 4
  %or.i354 = or i32 %27, %25
  %arrayidx4.i355 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx4.i355 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i355, align 4
  %xor.i = xor i32 %29, 65535
  %or5.i356 = or i32 %or.i354, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i356)
  %cmp.i357 = icmp eq i32 %or5.i356, 0
  br i1 %cmp.i357, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %sin6_addr, align 4
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx2.i, align 4
  %32 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 65535, ptr %arrayidx4.i, align 4
  %33 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2130706433, ptr %arrayidx7.i, align 4
  br label %if.end32

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %34 = call ptr @memcpy(ptr %sin6_addr, ptr @in6addr_loopback, i32 16)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then28, %if.end24.if.end32_crit_edge
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #13
  %and35 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.cleanup236_crit_edge

if.end32.cleanup236_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup236

if.end38:                                         ; preds = %if.end32
  %and39 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end58_crit_edge, label %if.then41

if.end38.if.end58_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %addr_len)
  %cmp42 = icmp ugt i32 %addr_len, 27
  br i1 %cmp42, label %land.lhs.true, label %if.then41.if.end52_crit_edge

if.then41.if.end52_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

land.lhs.true:                                    ; preds = %if.then41
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 4
  %35 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool44.not = icmp eq i32 %36, 0
  br i1 %tobool44.not, label %land.lhs.true.if.end52_crit_edge, label %if.then45

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then45:                                        ; preds = %land.lhs.true
  %call47 = tail call fastcc zeroext i1 @sk_dev_equal_l3scope(ptr noundef %sk, i32 noundef %36)
  br i1 %call47, label %if.end49, label %if.then45.cleanup236_crit_edge

if.then45.cleanup236_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup236

if.end49:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sin6_scope_id, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %39 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %skc_bound_dev_if, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end49, %land.lhs.true.if.end52_crit_edge, %if.then41.if.end52_crit_edge
  %skc_bound_dev_if54 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %40 = ptrtoint ptr %skc_bound_dev_if54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %skc_bound_dev_if54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool55.not = icmp eq i32 %41, 0
  br i1 %tobool55.not, label %if.end52.cleanup236_crit_edge, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.end52.cleanup236_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup236

if.end58:                                         ; preds = %if.end52.if.end58_crit_edge, %if.end38.if.end58_crit_edge
  %rx_opt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61
  %42 = ptrtoint ptr %rx_opt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool59.not = icmp eq i32 %43, 0
  br i1 %tobool59.not, label %if.end58.if.end77_crit_edge, label %land.lhs.true60

if.end58.if.end77_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

land.lhs.true60:                                  ; preds = %if.end58
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %44 = ptrtoint ptr %skc_v6_daddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %skc_v6_daddr, align 4
  %46 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sin6_addr, align 4
  %xor.i358 = xor i32 %47, %45
  %arrayidx4.i359 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx4.i359 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx4.i359, align 4
  %50 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx2.i, align 4
  %xor7.i = xor i32 %51, %49
  %or.i360 = or i32 %xor7.i, %xor.i358
  %arrayidx9.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx9.i, align 4
  %54 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx4.i, align 4
  %xor12.i = xor i32 %55, %53
  %or13.i = or i32 %or.i360, %xor12.i
  %arrayidx15.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 3
  %56 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx15.i, align 4
  %58 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx7.i, align 4
  %xor18.i = xor i32 %59, %57
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i361 = icmp eq i32 %or19.i, 0
  br i1 %cmp.i361, label %land.lhs.true60.if.end77_crit_edge, label %if.then64

land.lhs.true60.if.end77_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then64:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #15
  %ts_recent = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 1
  %60 = ptrtoint ptr %ts_recent to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %ts_recent, align 4
  %61 = ptrtoint ptr %rx_opt to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %rx_opt, align 4
  %write_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 80
  %62 = ptrtoint ptr %write_seq to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 0, ptr %write_seq, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then64, %land.lhs.true60.if.end77_crit_edge, %if.end58.if.end77_crit_edge
  %skc_v6_daddr79 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %63 = call ptr @memcpy(ptr %skc_v6_daddr79, ptr %sin6_addr, i32 16)
  %flowlabel81 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %64 = ptrtoint ptr %flowlabel81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flowlabel81, align 8
  %flow_label = getelementptr i8, ptr %sk, i32 2372
  %66 = ptrtoint ptr %flow_label to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %flow_label, align 4
  %and82 = and i32 %call.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end114, label %if.then84

if.then84:                                        ; preds = %if.end77
  %icsk_ext_hdr_len = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 23
  %67 = ptrtoint ptr %icsk_ext_hdr_len to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %icsk_ext_hdr_len, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin) #13
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %69 = getelementptr inbounds i8, ptr %sin, i32 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 -1, ptr %69, align 4
  %71 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load87 = load i8, ptr %skc_ipv6only, align 1
  %72 = and i8 %bf.load87, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool90.not = icmp eq i8 %72, 0
  br i1 %tobool90.not, label %if.end92, label %if.then84.cleanup112.thread_crit_edge

if.then84.cleanup112.thread_crit_edge:            ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112.thread

if.end92:                                         ; preds = %if.then84
  %73 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 2
  %74 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 1
  %75 = ptrtoint ptr %sin to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 2, ptr %sin, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 1
  %76 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %sin6_port, align 2
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %74, align 2
  %79 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx7.i, align 4
  %81 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %73, align 4
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %82 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @ipv6_mapped, ptr %icsk_af_ops, align 8
  %is_mptcp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 115
  %83 = ptrtoint ptr %is_mptcp.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %is_mptcp.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.i.not = icmp eq i8 %84, 0
  br i1 %tobool.i.not, label %if.end92.if.end96_crit_edge, label %if.then95

if.end92.if.end96_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mptcpv6_handle_mapped(ptr noundef %sk, i1 noundef zeroext true) #13
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end92.if.end96_crit_edge
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 80
  %85 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @tcp_v4_do_rcv, ptr %sk_backlog_rcv, align 4
  %af_specific = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 117
  %86 = ptrtoint ptr %af_specific to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @tcp_sock_ipv6_mapped_specific, ptr %af_specific, align 8
  %call97 = call i32 @tcp_v4_connect(ptr noundef %sk, ptr noundef nonnull %sin, i32 noundef 16) #13
  %87 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call97, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end108, label %if.then99

if.then99:                                        ; preds = %if.end96
  %88 = ptrtoint ptr %icsk_ext_hdr_len to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %68, ptr %icsk_ext_hdr_len, align 2
  %89 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @ipv6_specific, ptr %icsk_af_ops, align 8
  %90 = ptrtoint ptr %is_mptcp.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %is_mptcp.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.i363.not = icmp eq i8 %91, 0
  br i1 %tobool.i363.not, label %if.then99.cleanup112_crit_edge, label %if.then104

if.then99.cleanup112_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112

if.then104:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  call void @mptcpv6_handle_mapped(ptr noundef %sk, i1 noundef zeroext false) #13
  br label %cleanup112

if.end108:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  %skc_v6_rcv_saddr111 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %92 = call ptr @memcpy(ptr %add.ptr.i, ptr %skc_v6_rcv_saddr111, i32 16)
  br label %cleanup112.thread

cleanup112.thread:                                ; preds = %if.end108, %if.then84.cleanup112.thread_crit_edge
  %retval.2.ph = phi i32 [ -101, %if.then84.cleanup112.thread_crit_edge ], [ 0, %if.end108 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin) #13
  br label %cleanup236

cleanup112:                                       ; preds = %if.then104, %if.then99.cleanup112_crit_edge
  %93 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @tcp_v6_do_rcv, ptr %sk_backlog_rcv, align 4
  %94 = ptrtoint ptr %af_specific to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @tcp_sock_ipv6_specific, ptr %af_specific, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin) #13
  br label %failure

if.end114:                                        ; preds = %if.end77
  %skc_v6_rcv_saddr116 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %95 = ptrtoint ptr %skc_v6_rcv_saddr116 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %skc_v6_rcv_saddr116, align 4
  %arrayidx2.i364 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx2.i364 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx2.i364, align 4
  %or.i365 = or i32 %98, %96
  %arrayidx4.i366 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 2
  %99 = ptrtoint ptr %arrayidx4.i366 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx4.i366, align 4
  %or5.i367 = or i32 %or.i365, %100
  %arrayidx7.i368 = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 11, i32 0, i32 0, i32 3
  %101 = ptrtoint ptr %arrayidx7.i368 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx7.i368, align 4
  %or8.i369 = or i32 %or5.i367, %102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i369)
  %cmp.i370 = icmp eq i32 %or8.i369, 0
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %103 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 6, ptr %flowic_proto, align 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %104 = call ptr @memcpy(ptr %daddr, ptr %skc_v6_daddr79, i32 16)
  %saddr124 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %tobool125.not386 = icmp eq ptr %skc_v6_rcv_saddr116, null
  %tobool125.not = or i1 %tobool125.not386, %cmp.i370
  br i1 %tobool125.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %105 = call ptr @memcpy(ptr %saddr124, ptr %skc_v6_rcv_saddr116, i32 16)
  br label %cond.end

cond.false:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %106 = call ptr @memcpy(ptr %saddr124, ptr %add.ptr.i, i32 16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %skc_bound_dev_if128 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %107 = ptrtoint ptr %skc_bound_dev_if128 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %skc_bound_dev_if128, align 4
  %109 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %fl6, align 8
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %110 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sk_mark, align 8
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %112 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %flowic_mark, align 8
  %sin6_port131 = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 1
  %113 = ptrtoint ptr %sin6_port131 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %sin6_port131, align 2
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %115 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %uli, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %116 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %inet_sport, align 8
  %sport = getelementptr inbounds %struct.anon.40, ptr %uli, i32 0, i32 1
  %118 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %sport, align 2
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %sk_uid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %119 = ptrtoint ptr %sk_uid to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sk_uid, align 4
  %121 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %flowic_uid, align 4
  %dep_map.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i371 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i371, label %lockdep_sock_is_held.exit, label %cond.end.do.end144_crit_edge

cond.end.do.end144_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end144

lockdep_sock_is_held.exit:                        ; preds = %cond.end
  %dep_map2.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool4.i.not = icmp eq i32 %call.i6.i, 0
  br i1 %tobool4.i.not, label %land.lhs.true136, label %lockdep_sock_is_held.exit.do.end144_crit_edge

lockdep_sock_is_held.exit.do.end144_crit_edge:    ; preds = %lockdep_sock_is_held.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end144

land.lhs.true136:                                 ; preds = %lockdep_sock_is_held.exit
  %call137 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %land.lhs.true136.do.end144_crit_edge, label %land.lhs.true139

land.lhs.true136.do.end144_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end144

land.lhs.true139:                                 ; preds = %land.lhs.true136
  %.b350 = load i1, ptr @tcp_v6_connect.__warned, align 1
  br i1 %.b350, label %land.lhs.true139.do.end144_crit_edge, label %if.then141

land.lhs.true139.do.end144_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end144

if.then141:                                       ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tcp_v6_connect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 278, ptr noundef nonnull @.str.21) #13
  br label %do.end144

do.end144:                                        ; preds = %if.then141, %land.lhs.true139.do.end144_crit_edge, %land.lhs.true136.do.end144_crit_edge, %lockdep_sock_is_held.exit.do.end144_crit_edge, %cond.end.do.end144_crit_edge
  %opt145 = getelementptr i8, ptr %sk, i32 2420
  %122 = ptrtoint ptr %opt145 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %opt145, align 4
  %call146 = call ptr @fl6_update_dst(ptr noundef nonnull %fl6, ptr noundef %123, ptr noundef nonnull %final) #13
  call void @security_sk_classify_flow(ptr noundef %sk, ptr noundef nonnull %fl6) #13
  %124 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %skc_net.i, align 4
  %call149 = call ptr @ip6_dst_lookup_flow(ptr noundef %125, ptr noundef %sk, ptr noundef nonnull %fl6, ptr noundef %call146) #13
  %cmp.i373 = icmp ugt ptr %call149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i373, label %if.then151, label %if.end153

if.then151:                                       ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %call149 to i32
  %127 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %err, align 4
  br label %failure

if.end153:                                        ; preds = %do.end144
  br i1 %tobool125.not, label %if.then155, label %if.end153.if.end159_crit_edge

if.end153.if.end159_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end159

if.then155:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #15
  %128 = call ptr @memcpy(ptr %skc_v6_rcv_saddr116, ptr %saddr124, i32 16)
  br label %if.end159

if.end159:                                        ; preds = %if.then155, %if.end153.if.end159_crit_edge
  %saddr.1 = phi ptr [ %skc_v6_rcv_saddr116, %if.end153.if.end159_crit_edge ], [ %saddr124, %if.then155 ]
  %129 = call ptr @memcpy(ptr %add.ptr.i, ptr %saddr.1, i32 16)
  %skc_rcv_saddr = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %130 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 2130706438, ptr %skc_rcv_saddr, align 4
  %sk_gso_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 39
  %131 = ptrtoint ptr %sk_gso_type to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 16, ptr %sk_gso_type, align 8
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %132 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %133 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end159.ip6_dst_store.exit_crit_edge, label %cond.true.i.i

if.end159.ip6_dst_store.exit_crit_edge:           ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip6_dst_store.exit

cond.true.i.i:                                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #15
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %134 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pinet6.i.i, align 8
  br label %ip6_dst_store.exit

ip6_dst_store.exit:                               ; preds = %cond.true.i.i, %if.end159.ip6_dst_store.exit_crit_edge
  %cond.i.i = phi ptr [ %135, %cond.true.i.i ], [ null, %if.end159.ip6_dst_store.exit_crit_edge ]
  %call1.i = call fastcc i32 @rt6_get_cookie(ptr noundef %call149) #13
  %dst_cookie.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 14
  %136 = ptrtoint ptr %dst_cookie.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call1.i, ptr %dst_cookie.i, align 4
  call void @sk_setup_caps(ptr noundef %sk, ptr noundef %call149) #13
  %daddr_cache.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 2
  %137 = ptrtoint ptr %daddr_cache.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %daddr_cache.i, align 4
  %saddr_cache.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 3
  %138 = ptrtoint ptr %saddr_cache.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %saddr_cache.i, align 4
  %icsk_ext_hdr_len163 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 23
  %139 = ptrtoint ptr %icsk_ext_hdr_len163 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %icsk_ext_hdr_len163, align 2
  %tobool164.not = icmp eq ptr %123, null
  br i1 %tobool164.not, label %ip6_dst_store.exit.if.end170_crit_edge, label %if.then165

ip6_dst_store.exit.if.end170_crit_edge:           ; preds = %ip6_dst_store.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end170

if.then165:                                       ; preds = %ip6_dst_store.exit
  call void @__sanitizer_cov_trace_pc() #15
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %123, i32 0, i32 2
  %140 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %opt_flen, align 4
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %123, i32 0, i32 3
  %142 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %opt_nflen, align 2
  %add = add i16 %143, %141
  %144 = ptrtoint ptr %icsk_ext_hdr_len163 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %add, ptr %icsk_ext_hdr_len163, align 2
  br label %if.end170

if.end170:                                        ; preds = %if.then165, %ip6_dst_store.exit.if.end170_crit_edge
  %mss_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 7
  %145 = ptrtoint ptr %mss_clamp to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 1220, ptr %mss_clamp, align 2
  %146 = ptrtoint ptr %sin6_port131 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %sin6_port131, align 2
  %148 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %147, ptr %148, align 4
  call void @tcp_set_state(ptr noundef %sk, i32 noundef 2) #13
  %call175 = call i32 @inet6_hash_connect(ptr noundef %ipv4, ptr noundef %sk) #13
  %150 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %call175, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end178, label %if.end170.late_failure_crit_edge

if.end170.late_failure_crit_edge:                 ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #15
  br label %late_failure

if.end178:                                        ; preds = %if.end170
  %call.i.i374 = call i32 @prandom_u32() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i374)
  %tobool.not.i.i = icmp eq i32 %call.i.i374, 0
  %..i.i = select i1 %tobool.not.i.i, i32 1, i32 %call.i.i374
  %sk_txhash.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 42
  %151 = ptrtoint ptr %sk_txhash.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile i32 %..i.i, ptr %sk_txhash.i, align 4
  %repair = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 37
  %152 = ptrtoint ptr %repair to i32
  call void @__asan_load2_noabort(i32 %152)
  %bf.load179 = load i16, ptr %repair, align 4
  %153 = and i16 %bf.load179, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool182.not = icmp eq i16 %153, 0
  br i1 %tobool182.not, label %if.then186, label %if.end178.if.end221_crit_edge, !prof !125

if.end178.if.end221_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end221

if.then186:                                       ; preds = %if.end178
  %write_seq187 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 80
  %154 = ptrtoint ptr %write_seq187 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %write_seq187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool188.not = icmp eq i32 %155, 0
  br i1 %tobool188.not, label %do.body194, label %if.then186.if.end211_crit_edge

if.then186.if.end211_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end211

do.body194:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #15
  %156 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %inet_sport, align 8
  %158 = ptrtoint ptr %148 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %148, align 4
  %call205 = call i32 @secure_tcpv6_seq(ptr noundef %add.ptr.i, ptr noundef %skc_v6_daddr79, i16 noundef zeroext %157, i16 noundef zeroext %159) #13
  %160 = ptrtoint ptr %write_seq187 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile i32 %call205, ptr %write_seq187, align 4
  br label %if.end211

if.end211:                                        ; preds = %do.body194, %if.then186.if.end211_crit_edge
  %161 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %skc_net.i, align 4
  %call220 = call i32 @secure_tcpv6_ts_off(ptr noundef %162, ptr noundef %add.ptr.i, ptr noundef %skc_v6_daddr79) #13
  %tsoffset = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 22
  %163 = ptrtoint ptr %tsoffset to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %call220, ptr %tsoffset, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.end211, %if.end178.if.end221_crit_edge
  %call222 = call zeroext i1 @tcp_fastopen_defer_connect(ptr noundef %sk, ptr noundef nonnull %err) #13
  %164 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %err, align 4
  br i1 %call222, label %if.end221.cleanup236_crit_edge, label %if.end224

if.end221.cleanup236_crit_edge:                   ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup236

if.end224:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool225.not = icmp eq i32 %165, 0
  br i1 %tobool225.not, label %if.end227, label %if.end224.late_failure_crit_edge

if.end224.late_failure_crit_edge:                 ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #15
  br label %late_failure

if.end227:                                        ; preds = %if.end224
  %call228 = call i32 @tcp_connect(ptr noundef %sk) #13
  %166 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call228, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.end227.cleanup236_crit_edge, label %if.end227.late_failure_crit_edge

if.end227.late_failure_crit_edge:                 ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  br label %late_failure

if.end227.cleanup236_crit_edge:                   ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup236

late_failure:                                     ; preds = %if.end227.late_failure_crit_edge, %if.end224.late_failure_crit_edge, %if.end170.late_failure_crit_edge
  call void @tcp_set_state(ptr noundef %sk, i32 noundef 7) #13
  br label %failure

failure:                                          ; preds = %late_failure, %if.then151, %cleanup112
  %167 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %167, align 4
  %sk_route_caps = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 38
  %169 = ptrtoint ptr %sk_route_caps to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 0, ptr %sk_route_caps, align 8
  %170 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %err, align 4
  br label %cleanup236

cleanup236:                                       ; preds = %failure, %if.end227.cleanup236_crit_edge, %if.end221.cleanup236_crit_edge, %cleanup112.thread, %if.end52.cleanup236_crit_edge, %if.then45.cleanup236_crit_edge, %if.end32.cleanup236_crit_edge, %if.then.i.cleanup236_crit_edge, %if.end.cleanup236_crit_edge, %entry.cleanup236_crit_edge
  %retval.3 = phi i32 [ %171, %failure ], [ -22, %entry.cleanup236_crit_edge ], [ -97, %if.end.cleanup236_crit_edge ], [ -101, %if.end32.cleanup236_crit_edge ], [ -22, %if.then45.cleanup236_crit_edge ], [ -22, %if.end52.cleanup236_crit_edge ], [ 0, %if.end227.cleanup236_crit_edge ], [ %retval.2.ph, %cleanup112.thread ], [ -22, %if.then.i.cleanup236_crit_edge ], [ %165, %if.end221.cleanup236_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %final) #13
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_disconnect(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_accept(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_ioctl(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_v6_init_sock(ptr noundef %sk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tcp_init_sock(ptr noundef %sk) #13
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %0 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ipv6_specific, ptr %icsk_af_ops, align 8
  %af_specific = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 117
  %1 = ptrtoint ptr %af_specific to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tcp_sock_ipv6_specific, ptr %af_specific, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_v6_destroy_sock(ptr noundef %sk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tcp_v4_destroy_sock(ptr noundef %sk) #13
  tail call void @inet6_destroy_sock(ptr noundef %sk) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_shutdown(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_set_keepalive(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sendmsg(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_v6_do_rcv(ptr noundef %sk, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %cmp = icmp eq i16 %1, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @tcp_v4_do_rcv(ptr noundef %sk, ptr noundef %skb) #13
  br label %cleanup307

if.end:                                           ; preds = %entry
  %rxopt = getelementptr i8, ptr %sk, i32 2392
  %2 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rxopt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %4 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_allocation.i, align 8
  %and.i = and i32 %5, 131072
  %or.i = or i32 %and.i, 2592
  %call5 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef %or.i) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %opt_skb.0 = phi ptr [ %call5, %if.then3 ], [ null, %if.end.if.end6_crit_edge ]
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp8 = icmp eq i8 %7, 1
  br i1 %cmp8, label %if.then10, label %if.end44

if.then10:                                        ; preds = %if.end6
  %dep_map.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lockdep_sock_is_held.exit, label %if.then10.do.end_crit_edge

if.then10.do.end_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lockdep_sock_is_held.exit:                        ; preds = %if.then10
  %dep_map2.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool4.i.not = icmp eq i32 %call.i6.i, 0
  br i1 %tobool4.i.not, label %land.lhs.true, label %lockdep_sock_is_held.exit.do.end_crit_edge

lockdep_sock_is_held.exit.do.end_crit_edge:       ; preds = %lockdep_sock_is_held.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %lockdep_sock_is_held.exit
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true14

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b386 = load i1, ptr @tcp_v6_do_rcv.__warned, align 1
  br i1 %.b386, label %land.lhs.true14.do.end_crit_edge, label %if.then16

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tcp_v6_do_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1512, ptr noundef nonnull @.str.21) #13
  br label %do.end

do.end:                                           ; preds = %if.then16, %land.lhs.true14.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lockdep_sock_is_held.exit.do.end_crit_edge, %if.then10.do.end_crit_edge
  %sk_rx_dst = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 1
  %8 = ptrtoint ptr %sk_rx_dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_rx_dst, align 8
  %10 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 21
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %13 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i = icmp eq i32 %12, %14
  br i1 %cmp.not.i, label %do.end.sock_rps_save_rxhash.exit_crit_edge, label %if.then.i, !prof !125

do.end.sock_rps_save_rxhash.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_rps_save_rxhash.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %10, align 8
  br label %sock_rps_save_rxhash.exit

sock_rps_save_rxhash.exit:                        ; preds = %if.then.i, %do.end.sock_rps_save_rxhash.exit_crit_edge
  %sk_napi_id.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 14
  %16 = ptrtoint ptr %sk_napi_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sk_napi_id.i, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 11
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %20)
  %cmp.not.i390 = icmp eq i32 %17, %20
  br i1 %cmp.not.i390, label %sock_rps_save_rxhash.exit.if.end.i_crit_edge, label %do.body5.i, !prof !125

sock_rps_save_rxhash.exit.if.end.i_crit_edge:     ; preds = %sock_rps_save_rxhash.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.body5.i:                                       ; preds = %sock_rps_save_rxhash.exit
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %sk_napi_id.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %20, ptr %sk_napi_id.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body5.i, %sock_rps_save_rxhash.exit.if.end.i_crit_edge
  %queue_mapping.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %22 = ptrtoint ptr %queue_mapping.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %queue_mapping.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp.i.not.i.i.i = icmp eq i16 %23, 0
  br i1 %cmp.i.not.i.i.i, label %if.end.i.sk_mark_napi_id.exit_crit_edge, label %if.then.i.i.i

if.end.i.sk_mark_napi_id.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_mark_napi_id.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  %sub.i.i.i.i = add i16 %23, -1
  %skc_rx_queue_mapping.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 17
  %24 = ptrtoint ptr %skc_rx_queue_mapping.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load volatile i16, ptr %skc_rx_queue_mapping.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i16 %25, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.then.i.i.i.sk_mark_napi_id.exit_crit_edge, label %do.body11.i.i.i, !prof !125

if.then.i.i.i.sk_mark_napi_id.exit_crit_edge:     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_mark_napi_id.exit

do.body11.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %skc_rx_queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store volatile i16 %sub.i.i.i.i, ptr %skc_rx_queue_mapping.i.i.i, align 2
  br label %sk_mark_napi_id.exit

sk_mark_napi_id.exit:                             ; preds = %do.body11.i.i.i, %if.then.i.i.i.sk_mark_napi_id.exit_crit_edge, %if.end.i.sk_mark_napi_id.exit_crit_edge
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %sk_mark_napi_id.exit.if.end40_crit_edge, label %if.then19

sk_mark_napi_id.exit.if.end40_crit_edge:          ; preds = %sk_mark_napi_id.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then19:                                        ; preds = %sk_mark_napi_id.exit
  %sk_rx_dst_ifindex = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 2
  %27 = ptrtoint ptr %sk_rx_dst_ifindex to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_rx_dst_ifindex, align 4
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %29 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %skb_iif, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp20.not = icmp eq i32 %28, %30
  br i1 %cmp20.not, label %lor.lhs.false, label %if.then19.do.body31_crit_edge

if.then19.do.body31_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body31

lor.lhs.false:                                    ; preds = %if.then19
  %ops = getelementptr inbounds %struct.dst_entry, ptr %9, i32 0, i32 1
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %check = getelementptr inbounds %struct.dst_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %check, align 4
  %sk_rx_dst_cookie = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 3
  %35 = ptrtoint ptr %sk_rx_dst_cookie to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sk_rx_dst_cookie, align 8
  %call22 = tail call ptr %34(ptr noundef nonnull %9, i32 noundef %36) #13
  %cmp23 = icmp eq ptr %call22, null
  br i1 %cmp23, label %lor.lhs.false.do.body31_crit_edge, label %lor.lhs.false.if.end40_crit_edge

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

lor.lhs.false.do.body31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body31

do.body31:                                        ; preds = %lor.lhs.false.do.body31_crit_edge, %if.then19.do.body31_crit_edge
  %37 = ptrtoint ptr %sk_rx_dst to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr null, ptr %sk_rx_dst, align 8
  tail call void @dst_release(ptr noundef nonnull %9) #13
  br label %if.end40

if.end40:                                         ; preds = %do.body31, %lor.lhs.false.if.end40_crit_edge, %sk_mark_napi_id.exit.if.end40_crit_edge
  tail call void @tcp_rcv_established(ptr noundef %sk, ptr noundef %skb) #13
  %tobool41.not = icmp eq ptr %opt_skb.0, null
  br i1 %tobool41.not, label %if.end40.cleanup307_crit_edge, label %if.end40.ipv6_pktoptions_crit_edge

if.end40.ipv6_pktoptions_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_pktoptions

if.end40.cleanup307_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup307

if.end44:                                         ; preds = %if.end6
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %38 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %39 = and i16 %bf.lshr.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp.i.i = icmp ne i16 %39, 1
  %40 = and i16 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.not.i.i = icmp eq i16 %40, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool.not.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.end44.if.end47_crit_edge

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

lor.rhs.i.i:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %39)
  %cmp12.i.i = icmp eq i16 %39, 3
  br i1 %cmp12.i.i, label %skb_csum_unnecessary.exit.i, label %lor.rhs.i.i.tcp_checksum_complete.exit_crit_edge

lor.rhs.i.i.tcp_checksum_complete.exit_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcp_checksum_complete.exit

skb_csum_unnecessary.exit.i:                      ; preds = %lor.rhs.i.i
  %41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 8
  %conv.i.i.i = zext i16 %43 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %46 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i391 = icmp slt i32 %sub.i.i.i, 0
  br i1 %tobool.not.i391, label %skb_csum_unnecessary.exit.i.tcp_checksum_complete.exit_crit_edge, label %skb_csum_unnecessary.exit.i.if.end47_crit_edge

skb_csum_unnecessary.exit.i.if.end47_crit_edge:   ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

skb_csum_unnecessary.exit.i.tcp_checksum_complete.exit_crit_edge: ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcp_checksum_complete.exit

tcp_checksum_complete.exit:                       ; preds = %skb_csum_unnecessary.exit.i.tcp_checksum_complete.exit_crit_edge, %lor.rhs.i.i.tcp_checksum_complete.exit_crit_edge
  %call1.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %tobool2.i.not = icmp eq i16 %call1.i, 0
  br i1 %tobool2.i.not, label %tcp_checksum_complete.exit.if.end47_crit_edge, label %csum_err

tcp_checksum_complete.exit.if.end47_crit_edge:    ; preds = %tcp_checksum_complete.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.end47:                                         ; preds = %tcp_checksum_complete.exit.if.end47_crit_edge, %skb_csum_unnecessary.exit.i.if.end47_crit_edge, %if.end44.if.end47_crit_edge
  %48 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %49)
  %cmp51 = icmp eq i8 %49, 10
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end47
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %50 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %52 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i392 = zext i16 %53 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 %conv.i.i.i392
  %syn.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %syn.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load.i = load i16, ptr %syn.i, align 4
  %55 = and i16 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i393 = icmp eq i16 %55, 0
  br i1 %tobool.not.i393, label %if.then.i395, label %if.then53.tcp_v6_cookie_check.exit_crit_edge

if.then53.tcp_v6_cookie_check.exit_crit_edge:     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcp_v6_cookie_check.exit

if.then.i395:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i394 = tail call ptr @cookie_v6_check(ptr noundef %sk, ptr noundef %skb) #13
  br label %tcp_v6_cookie_check.exit

tcp_v6_cookie_check.exit:                         ; preds = %if.then.i395, %if.then53.tcp_v6_cookie_check.exit_crit_edge
  %sk.addr.0.i = phi ptr [ %sk, %if.then53.tcp_v6_cookie_check.exit_crit_edge ], [ %call1.i394, %if.then.i395 ]
  %tobool55.not = icmp eq ptr %sk.addr.0.i, null
  br i1 %tobool55.not, label %tcp_v6_cookie_check.exit.discard_crit_edge, label %if.end57

tcp_v6_cookie_check.exit.discard_crit_edge:       ; preds = %tcp_v6_cookie_check.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard

if.end57:                                         ; preds = %tcp_v6_cookie_check.exit
  %cmp58.not = icmp eq ptr %sk.addr.0.i, %sk
  br i1 %cmp58.not, label %if.end57.if.end70_crit_edge, label %if.then60

if.end57.if.end70_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then60:                                        ; preds = %if.end57
  %call61 = tail call i32 @tcp_child_process(ptr noundef %sk, ptr noundef nonnull %sk.addr.0.i, ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then60.reset_crit_edge

if.then60.reset_crit_edge:                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset

if.end64:                                         ; preds = %if.then60
  %tobool65.not = icmp eq ptr %opt_skb.0, null
  br i1 %tobool65.not, label %if.end64.cleanup307_crit_edge, label %if.then66

if.end64.cleanup307_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup307

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__kfree_skb(ptr noundef nonnull %opt_skb.0) #13
  br label %cleanup307

if.else:                                          ; preds = %if.end47
  %56 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 21
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %hash.i397 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %59 = ptrtoint ptr %hash.i397 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hash.i397, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.not.i398 = icmp eq i32 %58, %60
  br i1 %cmp.not.i398, label %if.else.if.end70_crit_edge, label %if.then.i399, !prof !125

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then.i399:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %56, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then.i399, %if.else.if.end70_crit_edge, %if.end57.if.end70_crit_edge
  %call71 = tail call i32 @tcp_rcv_state_process(ptr noundef %sk, ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.reset_crit_edge

if.end70.reset_crit_edge:                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset

if.end74:                                         ; preds = %if.end70
  %tobool75.not = icmp eq ptr %opt_skb.0, null
  br i1 %tobool75.not, label %if.end74.cleanup307_crit_edge, label %if.end74.ipv6_pktoptions_crit_edge

if.end74.ipv6_pktoptions_crit_edge:               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_pktoptions

if.end74.cleanup307_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup307

reset:                                            ; preds = %if.end70.reset_crit_edge, %if.then60.reset_crit_edge
  tail call void @tcp_v6_send_reset(ptr noundef %sk, ptr noundef %skb)
  br label %discard

discard:                                          ; preds = %do.end184, %reset, %tcp_v6_cookie_check.exit.discard_crit_edge
  %tobool78.not = icmp eq ptr %opt_skb.0, null
  br i1 %tobool78.not, label %discard.if.end80_crit_edge, label %if.then79

discard.if.end80_crit_edge:                       ; preds = %discard
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then79:                                        ; preds = %discard
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__kfree_skb(ptr noundef nonnull %opt_skb.0) #13
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %discard.if.end80_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup307

csum_err:                                         ; preds = %tcp_checksum_complete.exit
  tail call fastcc void @trace_tcp_bad_csum(ptr noundef %skb)
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !141
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %63 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %skc_net.i, align 4
  %tcp_statistics = getelementptr inbounds %struct.net, ptr %64, i32 0, i32 30, i32 2
  %65 = ptrtoint ptr %tcp_statistics to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tcp_statistics, align 4
  %arrayidx = getelementptr [16 x i32], ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %arrayidx to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i402 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i402 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu, align 4
  %arrayidx102 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx102, align 4
  %add = add i32 %73, %67
  %74 = inttoptr i32 %add to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %add103 = add i32 %76, 1
  store i32 %add103, ptr %74, align 4
  %77 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !142
  %and.i.i = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool114.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool114.not, label %if.then118, label %csum_err.do.end121_crit_edge, !prof !121

csum_err.do.end121_crit_edge:                     ; preds = %csum_err
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end121

if.then118:                                       ; preds = %csum_err
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end121

do.end121:                                        ; preds = %if.then118, %csum_err.do.end121_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #13, !srcloc !143
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !141
  %79 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %skc_net.i, align 4
  %tcp_statistics153 = getelementptr inbounds %struct.net, ptr %80, i32 0, i32 30, i32 2
  %81 = ptrtoint ptr %tcp_statistics153 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tcp_statistics153, align 4
  %arrayidx155 = getelementptr [16 x i32], ptr %82, i32 0, i32 13
  %83 = ptrtoint ptr %arrayidx155 to i32
  %84 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu, align 4
  %arrayidx159 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx159, align 4
  %add160 = add i32 %87, %83
  %88 = inttoptr i32 %add160 to ptr
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %add161 = add i32 %90, 1
  store i32 %add161, ptr %88, align 4
  %91 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !142
  %and.i.i404 = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i404)
  %tobool172.not = icmp eq i32 %and.i.i404, 0
  br i1 %tobool172.not, label %if.then181, label %do.end121.do.end184_crit_edge, !prof !121

do.end121.do.end184_crit_edge:                    ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end184

if.then181:                                       ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end184

do.end184:                                        ; preds = %if.then181, %do.end121.do.end184_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %78) #13, !srcloc !143
  br label %discard

ipv6_pktoptions:                                  ; preds = %if.end74.ipv6_pktoptions_crit_edge, %if.end40.ipv6_pktoptions_crit_edge
  %end_seq = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 3, i32 4
  %92 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %end_seq, align 4
  %rcv_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %94 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rcv_nxt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp194 = icmp eq i32 %93, %95
  br i1 %cmp194, label %land.lhs.true196, label %ipv6_pktoptions.if.end306_crit_edge

ipv6_pktoptions.if.end306_crit_edge:              ; preds = %ipv6_pktoptions
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end306

land.lhs.true196:                                 ; preds = %ipv6_pktoptions
  %96 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load volatile i8, ptr %skc_state, align 2
  %conv199 = zext i8 %97 to i32
  %shl = shl nuw i32 1, %conv199
  %and = and i32 %shl, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool200.not = icmp eq i32 %and, 0
  br i1 %tobool200.not, label %if.then201, label %land.lhs.true196.if.end306_crit_edge

land.lhs.true196.if.end306_crit_edge:             ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end306

if.then201:                                       ; preds = %land.lhs.true196
  %98 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load = load i16, ptr %rxopt, align 4
  %99 = and i16 %bf.load, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %if.then201.if.end214_crit_edge, label %if.then212

if.then201.if.end214_crit_edge:                   ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end214

if.then212:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #15
  %101 = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 3, i32 24
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 8
  %mcast_oif = getelementptr i8, ptr %sk, i32 2388
  %104 = ptrtoint ptr %mcast_oif to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %mcast_oif, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %if.then201.if.end214_crit_edge
  %105 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load216 = load i16, ptr %rxopt, align 4
  %106 = and i16 %bf.load216, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %if.end214.if.end233_crit_edge, label %if.then228

if.end214.if.end233_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end233

if.then228:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 18
  %108 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 15, i32 0, i32 20
  %110 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %111 to i32
  %add.ptr.i.i = getelementptr i8, ptr %109, i32 %conv.i.i
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %112 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %hop_limit, align 1
  %mcast_hops = getelementptr i8, ptr %sk, i32 2380
  %114 = zext i8 %113 to i32
  %115 = ptrtoint ptr %mcast_hops to i32
  call void @__asan_load4_noabort(i32 %115)
  %bf.load231 = load i32, ptr %mcast_hops, align 4
  %bf.shl = shl nuw nsw i32 %114, 7
  %bf.clear232 = and i32 %bf.load231, -65409
  %bf.set = or i32 %bf.clear232, %bf.shl
  store i32 %bf.set, ptr %mcast_hops, align 4
  br label %if.end233

if.end233:                                        ; preds = %if.then228, %if.end214.if.end233_crit_edge
  %116 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load235 = load i16, ptr %rxopt, align 4
  %117 = and i16 %bf.load235, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %if.end233.if.end250_crit_edge, label %if.then247

if.end233.if.end250_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end250

if.then247:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i405 = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 18
  %119 = ptrtoint ptr %head.i.i405 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %head.i.i405, align 8
  %network_header.i.i406 = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 15, i32 0, i32 20
  %121 = ptrtoint ptr %network_header.i.i406 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %network_header.i.i406, align 4
  %conv.i.i407 = zext i16 %122 to i32
  %add.ptr.i.i408 = getelementptr i8, ptr %120, i32 %conv.i.i407
  %123 = ptrtoint ptr %add.ptr.i.i408 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %add.ptr.i.i408, align 4
  %and.i409 = and i32 %124, 268435455
  %rcv_flowinfo = getelementptr i8, ptr %sk, i32 2400
  %125 = ptrtoint ptr %rcv_flowinfo to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %and.i409, ptr %rcv_flowinfo, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.then247, %if.end233.if.end250_crit_edge
  %repflow = getelementptr i8, ptr %sk, i32 2394
  %126 = ptrtoint ptr %repflow to i32
  call void @__asan_load2_noabort(i32 %126)
  %bf.load251 = load i16, ptr %repflow, align 2
  %127 = and i16 %bf.load251, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %tobool254.not = icmp eq i16 %127, 0
  br i1 %tobool254.not, label %if.end250.if.end258_crit_edge, label %if.then255

if.end250.if.end258_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end258

if.then255:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i410 = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 18
  %128 = ptrtoint ptr %head.i.i410 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %head.i.i410, align 8
  %network_header.i.i411 = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 15, i32 0, i32 20
  %130 = ptrtoint ptr %network_header.i.i411 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %network_header.i.i411, align 4
  %conv.i.i412 = zext i16 %131 to i32
  %add.ptr.i.i413 = getelementptr i8, ptr %129, i32 %conv.i.i412
  %132 = ptrtoint ptr %add.ptr.i.i413 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %add.ptr.i.i413, align 4
  %and.i414 = and i32 %133, 1048575
  %flow_label = getelementptr i8, ptr %sk, i32 2372
  %134 = ptrtoint ptr %flow_label to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %and.i414, ptr %flow_label, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.then255, %if.end250.if.end258_crit_edge
  %135 = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 3, i32 24
  %call261 = tail call zeroext i1 @ipv6_opt_accepted(ptr noundef %sk, ptr noundef nonnull %opt_skb.0, ptr noundef %135) #13
  br i1 %call261, label %if.then262, label %if.else282

if.then262:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @skb_set_owner_r(ptr noundef nonnull %opt_skb.0, ptr noundef %sk)
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %opt_skb.0, i32 0, i32 3
  %136 = call ptr @memcpy(ptr %cb.i, ptr %135, i32 24)
  %pktoptions = getelementptr i8, ptr %sk, i32 2424
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pktoptions, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !144
  %137 = ptrtoint ptr %opt_skb.0 to i32
  tail call void @llvm.prefetch.p0(ptr %pktoptions, i32 1, i32 3, i32 1) #13
  %138 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %137, ptr %pktoptions) #13, !srcloc !145
  %asmresult.i = extractvalue { i32, i32 } %138, 0
  %139 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !146
  br label %if.end306

if.else282:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__kfree_skb(ptr noundef nonnull %opt_skb.0) #13
  %pktoptions284 = getelementptr i8, ptr %sk, i32 2424
  %call.i389 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pktoptions284, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %pktoptions284, i32 1, i32 3, i32 1) #13
  %140 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %pktoptions284) #13, !srcloc !145
  %asmresult.i415 = extractvalue { i32, i32 } %140, 0
  %141 = inttoptr i32 %asmresult.i415 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  br label %if.end306

if.end306:                                        ; preds = %if.else282, %if.then262, %land.lhs.true196.if.end306_crit_edge, %ipv6_pktoptions.if.end306_crit_edge
  %opt_skb.1 = phi ptr [ %opt_skb.0, %land.lhs.true196.if.end306_crit_edge ], [ %139, %if.then262 ], [ %141, %if.else282 ], [ %opt_skb.0, %ipv6_pktoptions.if.end306_crit_edge ]
  tail call void @consume_skb(ptr noundef %opt_skb.1) #13
  br label %cleanup307

cleanup307:                                       ; preds = %if.end306, %if.end80, %if.end74.cleanup307_crit_edge, %if.then66, %if.end64.cleanup307_crit_edge, %if.end40.cleanup307_crit_edge, %if.then
  %retval.2 = phi i32 [ %call2, %if.then ], [ 0, %if.end306 ], [ 0, %if.end40.cleanup307_crit_edge ], [ 0, %if.end80 ], [ 0, %if.end74.cleanup307_crit_edge ], [ 0, %if.then66 ], [ 0, %if.end64.cleanup307_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_bpf_bypass_getsockopt(i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_release_cb(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_hash(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_unhash(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_csk_get_port(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_put_port(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_bpf_update_proto(ptr noundef, ptr noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_stream_memory_free(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_enter_memory_pressure(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_leave_memory_pressure(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_abort(ptr noundef, i32 noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcpv6_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet6_add_protocol(ptr noundef nonnull @tcpv6_protocol, i8 noundef zeroext 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @inet6_register_protosw(ptr noundef nonnull @tcpv6_protosw) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_tcpv6_protocol_crit_edge

if.end.out_tcpv6_protocol_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_tcpv6_protocol

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @tcpv6_net_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_tcpv6_protosw_crit_edge

if.end4.out_tcpv6_protosw_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_tcpv6_protosw

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @mptcpv6_init() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.out_crit_edge, label %out_tcpv6_pernet_subsys

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %out_tcpv6_protocol, %if.end8.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %ret.2, %out_tcpv6_protocol ], [ 0, %if.end8.out_crit_edge ]
  ret i32 %ret.0

out_tcpv6_pernet_subsys:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @tcpv6_net_ops) #13
  br label %out_tcpv6_protosw

out_tcpv6_protosw:                                ; preds = %out_tcpv6_pernet_subsys, %if.end4.out_tcpv6_protosw_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end4.out_tcpv6_protosw_crit_edge ], [ %call9, %out_tcpv6_pernet_subsys ]
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @tcpv6_protosw) #13
  br label %out_tcpv6_protocol

out_tcpv6_protocol:                               ; preds = %out_tcpv6_protosw, %if.end.out_tcpv6_protocol_crit_edge
  %ret.2 = phi i32 [ %call1, %if.end.out_tcpv6_protocol_crit_edge ], [ %ret.1, %out_tcpv6_protosw ]
  %call13 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tcpv6_protocol, i8 noundef zeroext 6) #13
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_register_protosw(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcpv6_init() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_unregister_protosw(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcpv6_exit() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @tcpv6_net_ops) #13
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @tcpv6_protosw) #13
  %call = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tcpv6_protocol, i8 noundef zeroext 6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l3mdev_master_ifindex_by_index(ptr noundef %net, i32 noundef %ifindex) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifindex)
  %tobool.not = icmp eq i32 %ifindex, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then, !prof !121

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @dev_get_by_index_rcu(ptr noundef %net, i32 noundef %ifindex) #13
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then4

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 @l3mdev_master_ifindex_rcu(ptr noundef nonnull %call) #13
  br label %if.end

if.end:                                           ; preds = %if.then4, %rcu_read_lock.exit.if.end_crit_edge
  %rc.0 = phi i32 [ %call5, %if.then4 ], [ 0, %rcu_read_lock.exit.if.end_crit_edge ]
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i9, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %if.end
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !123
  %4 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i.i16 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %if.end6

if.end6:                                          ; preds = %rcu_read_unlock.exit, %entry.if.end6_crit_edge
  %rc.1 = phi i32 [ %rc.0, %rcu_read_unlock.exit ], [ 0, %entry.if.end6_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !123
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tcp_md5_do_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_get_md5sig_pool() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_md5_hash_skb_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_md5_hash_key(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inet_conn_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet6_csk_route_req(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_opt_accepted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @secure_tcpv6_seq(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @secure_tcpv6_ts_off(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_make_synack(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_xmit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcp_call_bpf(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  %sock_ops = alloca %struct.bpf_sock_ops_kern, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sock_ops) #13
  %0 = getelementptr inbounds i8, ptr %sock_ops, i32 40
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !139
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %is_fullsock = getelementptr inbounds %struct.bpf_sock_ops_kern, ptr %sock_ops, i32 0, i32 6
  %5 = ptrtoint ptr %is_fullsock to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %is_fullsock, align 1
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lockdep_sock_is_held.exit.i:                      ; preds = %if.then
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %land.rhs.i, label %lockdep_sock_is_held.exit.i.if.end_crit_edge

lockdep_sock_is_held.exit.i.if.end_crit_edge:     ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs.i:                                       ; preds = %lockdep_sock_is_held.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %land.rhs.i.if.end_crit_edge, label %land.rhs3.i

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs3.i:                                      ; preds = %land.rhs.i
  %.b40.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i, label %land.rhs3.i.if.end_crit_edge, label %if.then.i, !prof !125

land.rhs3.i.if.end_crit_edge:                     ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1750, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs3.i.if.end_crit_edge, %land.rhs.i.if.end_crit_edge, %lockdep_sock_is_held.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %sock_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sk, ptr %sock_ops, align 8
  %op2 = getelementptr inbounds %struct.bpf_sock_ops_kern, ptr %sock_ops, i32 0, i32 5
  %8 = ptrtoint ptr %op2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 6, ptr %op2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 3), ptr blockaddress(@tcp_call_bpf, %land.lhs.true)) #13
          to label %if.then25 [label %land.lhs.true], !srcloc !120

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %sock_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sock_ops, align 8
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %land.lhs.true.if.then25_crit_edge, label %land.lhs.true.i

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %skc_state.i2 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state.i2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state.i2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %12)
  %cmp.i = icmp eq i8 %12, 12
  br i1 %cmp.i, label %sk_to_full_sk.exit, label %land.lhs.true.i.land.lhs.true15_crit_edge

land.lhs.true.i.land.lhs.true15_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true15

sk_to_full_sk.exit:                               ; preds = %land.lhs.true.i
  %13 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %sk_to_full_sk.exit.if.then25_crit_edge, label %sk_to_full_sk.exit.land.lhs.true15_crit_edge

sk_to_full_sk.exit.land.lhs.true15_crit_edge:     ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true15

sk_to_full_sk.exit.if.then25_crit_edge:           ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

land.lhs.true15:                                  ; preds = %sk_to_full_sk.exit.land.lhs.true15_crit_edge, %land.lhs.true.i.land.lhs.true15_crit_edge
  %sk.addr.0.i12 = phi ptr [ %15, %sk_to_full_sk.exit.land.lhs.true15_crit_edge ], [ %10, %land.lhs.true.i.land.lhs.true15_crit_edge ]
  %skc_state.i4 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i12, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state.i4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state.i4, align 2
  %conv.i5 = zext i8 %17 to i32
  %shl.i6 = shl nuw i32 1, %conv.i5
  %and.i7 = and i32 %shl.i6, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.i8.not = icmp eq i32 %and.i7, 0
  br i1 %tobool.i8.not, label %land.lhs.true15.if.then25_crit_edge, label %if.then18

land.lhs.true15.if.then25_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.then18:                                        ; preds = %land.lhs.true15
  %call19 = call i32 @__cgroup_bpf_run_filter_sock_ops(ptr noundef nonnull %sk.addr.0.i12, ptr noundef nonnull %sock_ops, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %phi.cmp = icmp eq i32 %call19, 0
  br i1 %phi.cmp, label %if.then18.if.then25_crit_edge, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then18.if.then25_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.then25:                                        ; preds = %if.then18.if.then25_crit_edge, %land.lhs.true15.if.then25_crit_edge, %sk_to_full_sk.exit.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge, %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = getelementptr inbounds %struct.bpf_sock_ops_kern, ptr %sock_ops, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then18.if.end26_crit_edge
  %ret.0 = phi i32 [ %20, %if.then25 ], [ -1, %if.then18.if.end26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sock_ops) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cgroup_bpf_run_filter_sock_ops(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_parse_md5sig_option(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet6_lookup_listener(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tcp_send_reset(ptr noundef %sk, ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_send_reset, i32 0, i32 1), ptr blockaddress(@trace_tcp_send_reset, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !120

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  %call42 = tail call i32 @__traceiter_tcp_send_reset(ptr noundef null, ptr noundef %sk, ptr noundef %skb) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !150
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_send_reset, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_send_reset, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tcp_send_reset.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_tcp_send_reset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 114, ptr noundef nonnull @.str.5) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !152
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcp_v6_send_response(ptr noundef %sk, ptr noundef %skb, i32 noundef %seq, i32 noundef %ack, i32 noundef %win, i32 noundef %tsval, i32 noundef %tsecr, i32 noundef %oif, ptr noundef %key, i32 noundef %rst, i8 noundef zeroext %tclass, i32 noundef %label, i32 noundef %priority) unnamed_addr #1 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #13
  %4 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.skb_dst.exit_crit_edge, label %land.lhs.true.i

cond.false.skb_dst.exit_crit_edge:                ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %cond.false
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !121

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %cond.false.skb_dst.exit_crit_edge
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %and25.i = and i32 %9, -2
  %10 = inttoptr i32 %and25.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 127
  br label %cond.end

cond.end:                                         ; preds = %skb_dst.exit, %cond.true
  %cond.in = phi ptr [ %skc_net.i, %cond.true ], [ %nd_net.i, %skb_dst.exit ]
  %13 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond = load ptr, ptr %cond.in, align 4
  %tcp_sk = getelementptr inbounds %struct.net, ptr %cond, i32 0, i32 36, i32 27
  %14 = ptrtoint ptr %tcp_sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcp_sk, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tsecr)
  %tobool4.not = icmp eq i32 %tsecr, 0
  %spec.select = select i1 %tobool4.not, i32 20, i32 32
  %tobool5.not = icmp eq ptr %key, null
  %add7 = add nuw nsw i32 %spec.select, 20
  %tot_len.1 = select i1 %tobool5.not, i32 %spec.select, i32 %add7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rst)
  %tobool9.not = icmp eq i32 %rst, 0
  %tobool5.not.not = xor i1 %tobool5.not, true
  %brmerge = or i1 %tobool9.not, %tobool5.not.not
  br i1 %brmerge, label %cond.end.if.end17_crit_edge, label %if.then11

cond.end.if.end17_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then11:                                        ; preds = %cond.end
  %active_extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %16 = ptrtoint ptr %active_extensions.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %active_extensions.i.i, align 1
  %18 = and i8 %17, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.not.i = icmp eq i8 %18, 0
  br i1 %tobool.i.not.i, label %if.then11.mptcp_reset_option.exit.thread_crit_edge, label %mptcp_reset_option.exit

if.then11.mptcp_reset_option.exit.thread_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_reset_option.exit.thread

mptcp_reset_option.exit:                          ; preds = %if.then11
  %call1.i = tail call i32 @mptcp_get_reset_option(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool13.not = icmp eq i32 %call1.i, 0
  %add15 = add nuw nsw i32 %tot_len.1, 4
  br i1 %tobool13.not, label %mptcp_reset_option.exit.mptcp_reset_option.exit.thread_crit_edge, label %mptcp_reset_option.exit.if.end17_crit_edge

mptcp_reset_option.exit.if.end17_crit_edge:       ; preds = %mptcp_reset_option.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

mptcp_reset_option.exit.mptcp_reset_option.exit.thread_crit_edge: ; preds = %mptcp_reset_option.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %mptcp_reset_option.exit.thread

mptcp_reset_option.exit.thread:                   ; preds = %mptcp_reset_option.exit.mptcp_reset_option.exit.thread_crit_edge, %if.then11.mptcp_reset_option.exit.thread_crit_edge
  br label %if.end17

if.end17:                                         ; preds = %mptcp_reset_option.exit.thread, %mptcp_reset_option.exit.if.end17_crit_edge, %cond.end.if.end17_crit_edge
  %mrst.0 = phi i32 [ 0, %cond.end.if.end17_crit_edge ], [ 0, %mptcp_reset_option.exit.thread ], [ %call1.i, %mptcp_reset_option.exit.if.end17_crit_edge ]
  %tot_len.2 = phi i32 [ %tot_len.1, %cond.end.if.end17_crit_edge ], [ %tot_len.1, %mptcp_reset_option.exit.thread ], [ %add15, %mptcp_reset_option.exit.if.end17_crit_edge ]
  %add18 = add nuw nsw i32 %tot_len.2, 216
  %call.i341 = tail call ptr @__alloc_skb(i32 noundef %add18, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool20.not = icmp eq ptr %call.i341, null
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i341, i32 0, i32 19
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %add18
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i341, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %22, i32 %add18
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call24 = tail call ptr @skb_push(ptr noundef nonnull %call.i341, i32 noundef %tot_len.2) #13
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i341, i32 0, i32 18
  %25 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i341, i32 0, i32 15, i32 0, i32 19
  %27 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %28 = call ptr @memset(ptr %call24, i32 0, i32 20)
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i, align 4
  %dest = getelementptr inbounds %struct.tcphdr, ptr %call24, i32 0, i32 1
  %31 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %dest, align 2
  %dest25 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %dest25 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dest25, align 2
  %34 = ptrtoint ptr %call24 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %call24, align 4
  %35 = trunc i32 %tot_len.2 to i16
  %doff = getelementptr inbounds %struct.tcphdr, ptr %call24, i32 0, i32 4
  %36 = shl nuw i16 %35, 10
  %bf.shl = and i16 %36, -4096
  %37 = ptrtoint ptr %doff to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %bf.shl, ptr %doff, align 4
  %seq27 = getelementptr inbounds %struct.tcphdr, ptr %call24, i32 0, i32 2
  %38 = ptrtoint ptr %seq27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %seq, ptr %seq27, align 4
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %call24, i32 0, i32 3
  %39 = ptrtoint ptr %ack_seq to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %ack, ptr %ack_seq, align 4
  br i1 %tobool9.not, label %if.end22.lor.end.thread_crit_edge, label %lor.end

if.end22.lor.end.thread_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end.thread

lor.end:                                          ; preds = %if.end22
  %ack29 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %ack29 to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load30 = load i16, ptr %ack29, align 4
  %41 = and i16 %bf.load30, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool32.not = icmp eq i16 %41, 0
  br i1 %tobool32.not, label %lor.end.lor.end.thread_crit_edge, label %lor.end._crit_edge

lor.end._crit_edge:                               ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %42

lor.end.lor.end.thread_crit_edge:                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end.thread

lor.end.thread:                                   ; preds = %lor.end.lor.end.thread_crit_edge, %if.end22.lor.end.thread_crit_edge
  br label %42

42:                                               ; preds = %lor.end.thread, %lor.end._crit_edge
  %43 = phi i16 [ 16, %lor.end.thread ], [ 0, %lor.end._crit_edge ]
  %conv40 = trunc i32 %rst to i16
  %bf.value43 = shl i16 %conv40, 2
  %bf.shl44 = and i16 %bf.value43, 4
  %bf.set39 = or i16 %bf.shl, %bf.shl44
  %bf.set46 = or i16 %bf.set39, %43
  %44 = ptrtoint ptr %doff to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %bf.set46, ptr %doff, align 4
  %conv47 = trunc i32 %win to i16
  %window = getelementptr inbounds %struct.tcphdr, ptr %call24, i32 0, i32 5
  %45 = ptrtoint ptr %window to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv47, ptr %window, align 2
  %add.ptr = getelementptr %struct.tcphdr, ptr %call24, i32 1
  br i1 %tobool4.not, label %.if.end52_crit_edge, label %if.then49

.if.end52_crit_edge:                              ; preds = %42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then49:                                        ; preds = %42
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr = getelementptr %struct.tcphdr, ptr %call24, i32 1, i32 2
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 16844810, ptr %add.ptr, align 4
  %incdec.ptr50 = getelementptr %struct.tcphdr, ptr %call24, i32 1, i32 3
  %47 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %tsval, ptr %incdec.ptr, align 4
  %incdec.ptr51 = getelementptr %struct.tcphdr, ptr %call24, i32 1, i32 4
  %48 = ptrtoint ptr %incdec.ptr50 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %tsecr, ptr %incdec.ptr50, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %.if.end52_crit_edge
  %topt.0 = phi ptr [ %incdec.ptr51, %if.then49 ], [ %add.ptr, %.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mrst.0)
  %tobool53.not = icmp eq i32 %mrst.0, 0
  br i1 %tobool53.not, label %if.end52.if.end56_crit_edge, label %if.then54

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr55 = getelementptr i32, ptr %topt.0, i32 1
  %49 = ptrtoint ptr %topt.0 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mrst.0, ptr %topt.0, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52.if.end56_crit_edge
  %topt.1 = phi ptr [ %incdec.ptr55, %if.then54 ], [ %topt.0, %if.end52.if.end56_crit_edge ]
  br i1 %tobool5.not, label %if.end56.if.end63_crit_edge, label %if.then58

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then58:                                        ; preds = %if.end56
  %incdec.ptr59 = getelementptr i32, ptr %topt.1, i32 1
  %50 = ptrtoint ptr %topt.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16847634, ptr %topt.1, align 4
  %51 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %53 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i344 = zext i16 %54 to i32
  %add.ptr.i.i345 = getelementptr i8, ptr %52, i32 %conv.i.i344
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i345, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i345, i32 0, i32 6
  %call.i350 = tail call ptr @tcp_get_md5sig_pool() #13
  %tobool.not.i351 = icmp eq ptr %call.i350, null
  br i1 %tobool.not.i351, label %if.then58.clear_hash_noput.i_crit_edge, label %if.end.i

if.then58.clear_hash_noput.i_crit_edge:           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash_noput.i

if.end.i:                                         ; preds = %if.then58
  %55 = ptrtoint ptr %call.i350 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i350, align 4
  %tfm.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tfm.i.i.i, align 16
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 128
  %and.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %crypto_ahash_init.exit.i, label %if.end.i.clear_hash.i_crit_edge

if.end.i.clear_hash.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash.i

crypto_ahash_init.exit.i:                         ; preds = %if.end.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %58, i32 -128
  %61 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call2.i.i = tail call i32 %62(ptr noundef %56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool2.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %crypto_ahash_init.exit.i.clear_hash.i_crit_edge

crypto_ahash_init.exit.i.clear_hash.i_crit_edge:  ; preds = %crypto_ahash_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash.i

if.end4.i:                                        ; preds = %crypto_ahash_init.exit.i
  %63 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load.i = load i16, ptr %doff, align 4
  %64 = lshr i16 %bf.load.i, 10
  %65 = and i16 %64, 60
  %shl.i = zext i16 %65 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #13
  %scratch.i.i = getelementptr inbounds %struct.tcp_md5sig_pool, ptr %call.i350, i32 0, i32 1
  %66 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %67 = ptrtoint ptr %scratch.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %scratch.i.i, align 4
  %69 = call ptr @memcpy(ptr %68, ptr %daddr, i32 16)
  %daddr2.i.i = getelementptr inbounds %struct.tcp6_pseudohdr, ptr %68, i32 0, i32 1
  %70 = call ptr @memcpy(ptr %daddr2.i.i, ptr %saddr, i32 16)
  %protocol.i.i = getelementptr inbounds %struct.tcp6_pseudohdr, ptr %68, i32 0, i32 3
  %71 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 6, ptr %protocol.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.tcp6_pseudohdr, ptr %68, i32 0, i32 2
  %72 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shl.i, ptr %len.i.i, align 4
  %add.ptr.i.i352 = getelementptr %struct.tcp6_pseudohdr, ptr %68, i32 1
  %73 = call ptr @memcpy(ptr %add.ptr.i.i352, ptr %call24, i32 20)
  %check.i.i = getelementptr %struct.tcp6_pseudohdr, ptr %68, i32 1, i32 1
  %74 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %check.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %68, i32 noundef 60) #13
  %75 = ptrtoint ptr %call.i350 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i350, align 4
  %src1.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %sg.i.i, ptr %src1.i.i.i, align 4
  %nbytes2.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %76, i32 0, i32 1
  %78 = ptrtoint ptr %nbytes2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 60, ptr %nbytes2.i.i.i, align 8
  %result3.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %76, i32 0, i32 3
  %79 = ptrtoint ptr %result3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %result3.i.i.i, align 32
  %80 = load ptr, ptr %call.i350, align 4
  %tfm.i.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %tfm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tfm.i.i.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %82, i32 12
  %83 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %nbytes1.i.i.i = getelementptr inbounds %struct.ahash_request, ptr %80, i32 0, i32 1
  %85 = ptrtoint ptr %nbytes1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nbytes1.i.i.i, align 8
  call void @crypto_stats_get(ptr noundef %84) #13
  %87 = ptrtoint ptr %tfm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tfm.i.i.i.i, align 16
  %update.i.i.i = getelementptr i8, ptr %88, i32 -124
  %89 = ptrtoint ptr %update.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %update.i.i.i, align 4
  %call3.i.i.i = call i32 %90(ptr noundef %80) #13
  call void @crypto_stats_ahash_update(i32 noundef %86, i32 noundef %call3.i.i.i, ptr noundef %84) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool6.not.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.clear_hash.i_crit_edge

if.end4.i.clear_hash.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash.i

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = call i32 @tcp_md5_hash_key(ptr noundef nonnull %call.i350, ptr noundef nonnull %key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.clear_hash.i_crit_edge

if.end8.i.clear_hash.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash.i

if.end12.i:                                       ; preds = %if.end8.i
  %src1.i.i = getelementptr inbounds %struct.ahash_request, ptr %56, i32 0, i32 2
  %91 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %src1.i.i, align 4
  %nbytes2.i.i = getelementptr inbounds %struct.ahash_request, ptr %56, i32 0, i32 1
  %92 = ptrtoint ptr %nbytes2.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %nbytes2.i.i, align 8
  %result3.i.i = getelementptr inbounds %struct.ahash_request, ptr %56, i32 0, i32 3
  %93 = ptrtoint ptr %result3.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %incdec.ptr59, ptr %result3.i.i, align 32
  %call13.i = call i32 @crypto_ahash_final(ptr noundef %56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.clear_hash.i_crit_edge

if.end12.i.clear_hash.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_hash.i

if.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @local_bh_enable() #13
  br label %if.end63

clear_hash.i:                                     ; preds = %if.end12.i.clear_hash.i_crit_edge, %if.end8.i.clear_hash.i_crit_edge, %if.end4.i.clear_hash.i_crit_edge, %crypto_ahash_init.exit.i.clear_hash.i_crit_edge, %if.end.i.clear_hash.i_crit_edge
  call fastcc void @local_bh_enable() #13
  br label %clear_hash_noput.i

clear_hash_noput.i:                               ; preds = %clear_hash.i, %if.then58.clear_hash_noput.i_crit_edge
  %94 = call ptr @memset(ptr %incdec.ptr59, i32 0, i32 16)
  br label %if.end63

if.end63:                                         ; preds = %clear_hash_noput.i, %if.end16.i, %if.end56.if.end63_crit_edge
  %95 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %daddr64 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %96 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i354 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %98 = ptrtoint ptr %network_header.i.i354 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %network_header.i.i354, align 4
  %conv.i.i355 = zext i16 %99 to i32
  %add.ptr.i.i356 = getelementptr i8, ptr %97, i32 %conv.i.i355
  %saddr66 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i356, i32 0, i32 5
  %100 = call ptr @memcpy(ptr %daddr64, ptr %saddr66, i32 16)
  %saddr67 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %daddr69 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i356, i32 0, i32 6
  %101 = call ptr @memcpy(ptr %saddr67, ptr %daddr69, i32 16)
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %102 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %label, ptr %flowlabel, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call.i341, i32 0, i32 15
  %103 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %103)
  %bf.load70 = load i16, ptr %ip_summed, align 8
  %bf.set72 = or i16 %bf.load70, 1536
  store i16 %bf.set72, ptr %ip_summed, align 8
  %104 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head.i, align 8
  %106 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %transport_header.i, align 2
  %conv.i.i.i = zext i16 %107 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %105, i32 %conv.i.i.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i341, i32 0, i32 6
  %108 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len.i, align 4
  %call.i.i.i = call i32 @__csum_ipv6_magic(ptr noundef %saddr67, ptr noundef %daddr64, i32 noundef %109, i32 noundef 6, i32 noundef 0) #13
  %110 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i) #16, !srcloc !126
  %neg.i.i.i.i = xor i32 %110, -1
  %shr.i.i.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i.i.i.i = trunc i32 %shr.i.i.i.i to i16
  %neg.i = xor i16 %conv.i.i.i.i, -1
  %check.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %111 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %neg.i, ptr %check.i, align 4
  %112 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %transport_header.i, align 2
  %114 = getelementptr inbounds %struct.sk_buff, ptr %call.i341, i32 0, i32 15, i32 0, i32 5
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %113, ptr %114, align 8
  %csum_offset.i = getelementptr inbounds %struct.anon.55, ptr %114, i32 0, i32 1
  %116 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 16, ptr %csum_offset.i, align 2
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %117 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 6, ptr %flowic_proto, align 2
  %call.i.i = call i32 @__ipv6_addr_type(ptr noundef %daddr64) #13
  %and.i361 = and i32 %call.i.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i361)
  %tobool.i = icmp ne i32 %and.i361, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oif)
  %tobool79.not = icmp eq i32 %oif, 0
  %or.cond = and i1 %tobool79.not, %tobool.i
  br i1 %or.cond, label %if.then80, label %if.else

if.then80:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %118 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  br label %if.end92.sink.split

if.else:                                          ; preds = %if.end63
  br i1 %tobool79.not, label %land.lhs.true84, label %if.else.if.end92_crit_edge

if.else.if.end92_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

land.lhs.true84:                                  ; preds = %if.else
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %119 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %skb_iif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.i = icmp eq i32 %120, 0
  br i1 %cmp.i, label %land.lhs.true84.if.end92_crit_edge, label %if.end.i363

land.lhs.true84.if.end92_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.end.i363:                                      ; preds = %land.lhs.true84
  %121 = call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i.i.i = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %124, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !122
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i362 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i362, label %if.end.i363.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i363.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.end.i363
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i363
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i364 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i364, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i363.rcu_read_lock.exit.i_crit_edge
  %call.i365 = call ptr @dev_get_by_index_rcu(ptr noundef %cond, i32 noundef %120) #13
  %tobool.not.i366 = icmp eq ptr %call.i365, null
  br i1 %tobool.not.i366, label %rcu_read_lock.exit.i.if.end3.i_crit_edge, label %if.then1.i

rcu_read_lock.exit.i.if.end3.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then1.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %call.i365, i32 0, i32 15
  %125 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i367 = and i64 %126, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i367)
  %tobool.i.i = icmp ne i64 %and.i.i367, 0
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %rcu_read_lock.exit.i.if.end3.i_crit_edge
  %rc.0.off0.i = phi i1 [ %tobool.i.i, %if.then1.i ], [ false, %rcu_read_lock.exit.i.if.end3.i_crit_edge ]
  %call.i8.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i8.i, label %if.end3.i.netif_index_is_l3_master.exit_crit_edge, label %land.lhs.true.i11.i

if.end3.i.netif_index_is_l3_master.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_index_is_l3_master.exit

land.lhs.true.i11.i:                              ; preds = %if.end3.i
  %call1.i9.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool.not.i10.i, label %land.lhs.true.i11.i.netif_index_is_l3_master.exit_crit_edge, label %land.lhs.true2.i13.i

land.lhs.true.i11.i.netif_index_is_l3_master.exit_crit_edge: ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_index_is_l3_master.exit

land.lhs.true2.i13.i:                             ; preds = %land.lhs.true.i11.i
  %.b4.i12.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12.i, label %land.lhs.true2.i13.i.netif_index_is_l3_master.exit_crit_edge, label %if.then.i14.i

land.lhs.true2.i13.i.netif_index_is_l3_master.exit_crit_edge: ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_index_is_l3_master.exit

if.then.i14.i:                                    ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #13
  br label %netif_index_is_l3_master.exit

netif_index_is_l3_master.exit:                    ; preds = %if.then.i14.i, %land.lhs.true2.i13.i.netif_index_is_l3_master.exit_crit_edge, %land.lhs.true.i11.i.netif_index_is_l3_master.exit_crit_edge, %if.end3.i.netif_index_is_l3_master.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !123
  %127 = call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i.i15.i = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i.i15.i to ptr
  %preempt_count.i.i.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %preempt_count.i.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %preempt_count.i.i.i.i16.i, align 4
  %sub.i.i.i.i = add i32 %130, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i16.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br i1 %rc.0.off0.i, label %netif_index_is_l3_master.exit.if.end92.sink.split_crit_edge, label %netif_index_is_l3_master.exit.if.end92_crit_edge

netif_index_is_l3_master.exit.if.end92_crit_edge: ; preds = %netif_index_is_l3_master.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

netif_index_is_l3_master.exit.if.end92.sink.split_crit_edge: ; preds = %netif_index_is_l3_master.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92.sink.split

if.end92.sink.split:                              ; preds = %netif_index_is_l3_master.exit.if.end92.sink.split_crit_edge, %if.then80
  %skb_iif.sink = phi ptr [ %118, %if.then80 ], [ %skb_iif, %netif_index_is_l3_master.exit.if.end92.sink.split_crit_edge ]
  %131 = ptrtoint ptr %skb_iif.sink to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %skb_iif.sink, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.end92.sink.split, %netif_index_is_l3_master.exit.if.end92_crit_edge, %land.lhs.true84.if.end92_crit_edge, %if.else.if.end92_crit_edge
  %storemerge = phi i32 [ %oif, %if.else.if.end92_crit_edge ], [ 0, %netif_index_is_l3_master.exit.if.end92_crit_edge ], [ 0, %land.lhs.true84.if.end92_crit_edge ], [ %132, %if.end92.sink.split ]
  %133 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %storemerge, ptr %fl6, align 8
  br i1 %tobool.not, label %if.end92.if.end103_crit_edge, label %if.then94

if.end92.if.end103_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.then94:                                        ; preds = %if.end92
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %134 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %135)
  %cmp = icmp eq i8 %135, 6
  br i1 %cmp, label %if.then97, label %if.else100

if.then97:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #15
  %tw_mark = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk, i32 0, i32 1
  %136 = ptrtoint ptr %tw_mark to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tw_mark, align 8
  %tw_txhash = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk, i32 0, i32 6
  %138 = ptrtoint ptr %tw_txhash to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tw_txhash, align 4
  %140 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %140)
  %bf.load.i.i = load i16, ptr %ip_summed, align 8
  %bf.set.i.i = and i16 %bf.load.i.i, -193
  %bf.clear7.i.i = or i16 %bf.set.i.i, 128
  store i16 %bf.clear7.i.i, ptr %ip_summed, align 8
  %hash10.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i341, i32 0, i32 15, i32 0, i32 8
  %141 = ptrtoint ptr %hash10.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %139, ptr %hash10.i.i, align 4
  br label %if.end101

if.else100:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #15
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %142 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sk_mark, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.else100, %if.then97
  %mark.0 = phi i32 [ %137, %if.then97 ], [ %143, %if.else100 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @tcp_tx_delay_enabled, ptr blockaddress(@tcp_v6_send_response, %if.then.i371)) #13
          to label %tcp_transmit_time.exit [label %if.then.i371], !srcloc !120

if.then.i371:                                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  %144 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %145)
  %cmp.i369 = icmp eq i8 %145, 6
  %tw_tx_delay.i = getelementptr inbounds %struct.tcp_timewait_sock, ptr %sk, i32 0, i32 6
  %tcp_tx_delay.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 41
  %cond.in.i = select i1 %cmp.i369, ptr %tw_tx_delay.i, ptr %tcp_tx_delay.i
  %146 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %call.i.i.i370 = call i64 @ktime_get() #13
  %conv7.i = zext i32 %cond.i to i64
  %mul.i = mul nuw nsw i64 %conv7.i, 1000
  %add.i = add i64 %mul.i, %call.i.i.i370
  br label %tcp_transmit_time.exit

tcp_transmit_time.exit:                           ; preds = %if.then.i371, %if.end101
  %retval.0.i372 = phi i64 [ %add.i, %if.then.i371 ], [ 0, %if.end101 ]
  %147 = getelementptr inbounds %struct.sk_buff, ptr %call.i341, i32 0, i32 2
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %retval.0.i372, ptr %147, align 8
  br label %if.end103

if.end103:                                        ; preds = %tcp_transmit_time.exit, %if.end92.if.end103_crit_edge
  %mark.1 = phi i32 [ %mark.0, %tcp_transmit_time.exit ], [ 0, %if.end92.if.end103_crit_edge ]
  %fwmark_reflect = getelementptr inbounds %struct.net, ptr %cond, i32 0, i32 36, i32 1, i32 26
  %149 = ptrtoint ptr %fwmark_reflect to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %fwmark_reflect, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool106.not = icmp eq i8 %150, 0
  br i1 %tobool106.not, label %if.end103.cond.end109.thread_crit_edge, label %cond.end109

if.end103.cond.end109.thread_crit_edge:           ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end109.thread

cond.end109:                                      ; preds = %if.end103
  %151 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool111.not = icmp eq i32 %153, 0
  br i1 %tobool111.not, label %cond.end109.cond.end109.thread_crit_edge, label %cond.end109._crit_edge

cond.end109._crit_edge:                           ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %154

cond.end109.cond.end109.thread_crit_edge:         ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end109.thread

cond.end109.thread:                               ; preds = %cond.end109.cond.end109.thread_crit_edge, %if.end103.cond.end109.thread_crit_edge
  br label %154

154:                                              ; preds = %cond.end109.thread, %cond.end109._crit_edge
  %155 = phi i32 [ %mark.1, %cond.end109.thread ], [ %153, %cond.end109._crit_edge ]
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %156 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %flowic_mark, align 8
  %157 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %dest, align 2
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %159 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %uli, align 4
  %160 = ptrtoint ptr %call24 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %call24, align 4
  %sport = getelementptr inbounds %struct.anon.40, ptr %uli, i32 0, i32 1
  %162 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %sport, align 2
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  br i1 %tobool.not, label %.cond.false.i_crit_edge, label %land.lhs.true122

.cond.false.i_crit_edge:                          ; preds = %154
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i

land.lhs.true122:                                 ; preds = %154
  %skc_state.i373 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %163 = ptrtoint ptr %skc_state.i373 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load volatile i8, ptr %skc_state.i373, align 2
  %conv.i374 = zext i8 %164 to i32
  %shl.i375 = shl nuw i32 1, %conv.i374
  %and.i376 = and i32 %shl.i375, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i376)
  %tobool.i377.not = icmp eq i32 %and.i376, 0
  br i1 %tobool.i377.not, label %land.lhs.true122.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true122.cond.false.i_crit_edge:          ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #15
  %sk_uid.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %165 = ptrtoint ptr %sk_uid.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %retval.sroa.0.0.copyload.i = load i32, ptr %sk_uid.i, align 4
  br label %sock_net_uid.exit

cond.false.i:                                     ; preds = %land.lhs.true122.cond.false.i_crit_edge, %.cond.false.i_crit_edge
  %user_ns.i = getelementptr inbounds %struct.net, ptr %cond, i32 0, i32 11
  %166 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %user_ns.i, align 4
  %call.i379 = call i32 @make_kuid(ptr noundef %167, i32 noundef 0) #13
  br label %sock_net_uid.exit

sock_net_uid.exit:                                ; preds = %cond.false.i, %cond.true.i
  %retval.sroa.0.0.i = phi i32 [ %retval.sroa.0.0.copyload.i, %cond.true.i ], [ %call.i379, %cond.false.i ]
  %168 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %retval.sroa.0.0.i, ptr %flowic_uid, align 4
  call void @security_skb_classify_flow(ptr noundef %skb, ptr noundef nonnull %fl6) #13
  %skc_net.i380 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 9
  %169 = ptrtoint ptr %skc_net.i380 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %skc_net.i380, align 4
  %call132 = call ptr @ip6_dst_lookup_flow(ptr noundef %170, ptr noundef %15, ptr noundef nonnull %fl6, ptr noundef null) #13
  %cmp.i381 = icmp ugt ptr %call132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i381, label %if.end249, label %if.then134

if.then134:                                       ; preds = %sock_net_uid.exit
  %tobool.not.i382 = icmp eq ptr %call132, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call.i341, i32 0, i32 15, i32 0, i32 3
  %171 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %bf.load.i383 = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i383, 4096
  %bf.shl.i = select i1 %tobool.not.i382, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i383, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %172 = ptrtoint ptr %call132 to i32
  %173 = getelementptr inbounds %struct.sk_buff, ptr %call.i341, i32 0, i32 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %172, ptr %173, align 8
  %175 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flowic_mark, align 8
  %177 = and i8 %tclass, -4
  %and = zext i8 %177 to i32
  %call138 = call i32 @ip6_xmit(ptr noundef %15, ptr noundef nonnull %call.i341, ptr noundef nonnull %fl6, i32 noundef %176, ptr noundef null, i32 noundef %and, i32 noundef %priority) #13
  %178 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !141
  %tcp_statistics = getelementptr inbounds %struct.net, ptr %cond, i32 0, i32 30, i32 2
  %179 = ptrtoint ptr %tcp_statistics to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %tcp_statistics, align 4
  %arrayidx = getelementptr [16 x i32], ptr %180, i32 0, i32 11
  %181 = ptrtoint ptr %arrayidx to i32
  %182 = call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i384 = and i32 %182, -16384
  %183 = inttoptr i32 %and.i384 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cpu, align 4
  %arrayidx156 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %185
  %186 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx156, align 4
  %add157 = add i32 %187, %181
  %188 = inttoptr i32 %add157 to ptr
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %188, align 4
  %add158 = add i32 %190, 1
  store i32 %add158, ptr %188, align 4
  %191 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !142
  %and.i.i385 = and i32 %191, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i385)
  %tobool169.not = icmp eq i32 %and.i.i385, 0
  br i1 %tobool169.not, label %if.then174, label %if.then134.do.end177_crit_edge, !prof !121

if.then134.do.end177_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end177

if.then174:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end177

do.end177:                                        ; preds = %if.then174, %if.then134.do.end177_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %178) #13, !srcloc !143
  br i1 %tobool9.not, label %do.end177.cleanup_crit_edge, label %do.body187

do.end177.cleanup_crit_edge:                      ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body187:                                       ; preds = %do.end177
  %192 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !141
  %193 = ptrtoint ptr %tcp_statistics to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %tcp_statistics, align 4
  %arrayidx212 = getelementptr [16 x i32], ptr %194, i32 0, i32 14
  %195 = ptrtoint ptr %arrayidx212 to i32
  %196 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cpu, align 4
  %arrayidx216 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %197
  %198 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx216, align 4
  %add217 = add i32 %199, %195
  %200 = inttoptr i32 %add217 to ptr
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %200, align 4
  %add218 = add i32 %202, 1
  store i32 %add218, ptr %200, align 4
  %203 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !142
  %and.i.i386 = and i32 %203, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i386)
  %tobool229.not = icmp eq i32 %and.i.i386, 0
  br i1 %tobool229.not, label %if.then238, label %do.body187.do.end241_crit_edge, !prof !121

do.body187.do.end241_crit_edge:                   ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end241

if.then238:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end241

do.end241:                                        ; preds = %if.then238, %do.body187.do.end241_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %192) #13, !srcloc !143
  br label %cleanup

if.end249:                                        ; preds = %sock_net_uid.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef nonnull %call.i341, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end249, %do.end241, %do.end177.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_send_reset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_skb_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mptcp_get_reset_option(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt6_get_cookie(ptr noundef %rt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %sernum = getelementptr inbounds %struct.rt6_info, ptr %rt, i32 0, i32 2
  %0 = ptrtoint ptr %sernum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sernum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %from2 = getelementptr inbounds %struct.rt6_info, ptr %rt, i32 0, i32 1
  %6 = ptrtoint ptr %from2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %from2, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @rt6_get_cookie.__warned, align 1
  br i1 %.b23, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rt6_get_cookie.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 306, ptr noundef nonnull @.str.5) #13
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %do.end12.if.end17_crit_edge, label %if.then15

do.end12.if.end17_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then15:                                        ; preds = %do.end12
  %fib6_node.i = getelementptr inbounds %struct.fib6_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fib6_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %fib6_node.i, align 4
  %call.i24 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26, label %if.then15.do.end7.i_crit_edge

if.then15.do.end7.i_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

land.lhs.true.i26:                                ; preds = %if.then15
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i26.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i26.do.end7.i_crit_edge:            ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i26
  %.b1.i = load i1, ptr @fib6_get_cookie_safe.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i27

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7.i

if.then.i27:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fib6_get_cookie_safe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 284, ptr noundef nonnull @.str.5) #13
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i27, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i26.do.end7.i_crit_edge, %if.then15.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %9, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end17_crit_edge, label %do.end13.i

do.end7.i.if.end17_crit_edge:                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

do.end13.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %fn_sernum.i = getelementptr inbounds %struct.fib6_node, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %fn_sernum.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %fn_sernum.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !153
  br label %if.end17

if.end17:                                         ; preds = %do.end13.i, %do.end7.i.if.end17_crit_edge, %do.end12.if.end17_crit_edge
  %cookie.1 = phi i32 [ 0, %do.end12.if.end17_crit_edge ], [ 0, %do.end7.i.if.end17_crit_edge ], [ %11, %do.end13.i ]
  %call.i28 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i28, label %if.end17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i31

if.end17.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i31:                                ; preds = %if.end17
  %call1.i29 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, label %if.then.i34

land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i34, %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, %if.end17.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !123
  %12 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i.i35 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cookie.1, %rcu_read_unlock.exit ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_v4_conn_request(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_conn_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_v4_syn_recv_sock(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcpv6_handle_mapped(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_v4_do_rcv(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sync_mss(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_create_openreq_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_dup_options(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_ca_openreq_child(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_initialize_rcv_mss(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_md5_do_add(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__inet_inherit_port(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_prepare_forced_close(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_ehash_nolisten(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_set_owner_r(ptr noundef %skb, ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %1(ptr noundef %skb) #13
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool3.not.i = icmp eq ptr %4, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !125

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #13, !srcloc !154
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sk, ptr %5, align 4
  %7 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sock_rfree, ptr %destructor.i, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %8 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %truesize, align 8
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %9, ptr elementtype(i32) %sk_backlog) #13, !srcloc !137
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %11 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %14, null
  br i1 %tobool.i.not.i, label %skb_orphan.exit.sk_mem_charge.exit_crit_edge, label %if.end.i

skb_orphan.exit.sk_mem_charge.exit_crit_edge:     ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_mem_charge.exit

if.end.i:                                         ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %truesize, align 8
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %17 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_forward_alloc.i, align 8
  %sub.i = sub i32 %18, %16
  store i32 %sub.i, ptr %sk_forward_alloc.i, align 8
  br label %sk_mem_charge.exit

sk_mem_charge.exit:                               ; preds = %if.end.i, %skb_orphan.exit.sk_mem_charge.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #13, !srcloc !156
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !125

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !157
  tail call void @sk_free(ptr noundef %sk) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_queue_xmit(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_v4_send_check(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sk_rebuild_header(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_sk_rx_dst_set(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_v4_mtu_reduced(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_v4_md5_lookup(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_v4_md5_hash_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_v6_parse_md5_keys(ptr noundef %sk, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #1 align 64 {
entry:
  %cmd = alloca %struct.tcp_md5sig, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 216)
  call void @__sanitizer_cov_trace_const_cmp4(i32 216, i32 %optlen)
  %cmp = icmp ult i32 %optlen, 216
  br i1 %cmp, label %entry.cleanup90_crit_edge, label %if.end

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup90

if.end:                                           ; preds = %entry
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %1 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i, label %if.then.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 216, i32 -1226833920) #16, !srcloc !158
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !125

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 216) #13
  %3 = call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #5, !srcloc !159
  %and.i.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !161
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %1, i32 noundef 216) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #13, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end2_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !125

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end2_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 216, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 216, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 216, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %cleanup90

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = call ptr @memcpy(ptr %cmd, ptr %1, i32 216)
  br label %if.end2

if.end2:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end2_crit_edge
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %9)
  %cmp3.not = icmp eq i16 %9, 10
  br i1 %cmp3.not, label %if.end6, label %if.end2.cleanup90_crit_edge

if.end2.cleanup90_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup90

if.end6:                                          ; preds = %if.end2
  %tcpm_flags = getelementptr inbounds %struct.tcp_md5sig, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %tcpm_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tcpm_flags, align 4
  %and = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %optname)
  %cmp9 = icmp eq i32 %optname, 32
  %cmp9.not = xor i1 %cmp9, true
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool14.not = icmp eq i8 %12, 0
  %or.cond = select i1 %cmp9.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end6
  %tcpm_prefixlen = getelementptr inbounds %struct.tcp_md5sig, ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %tcpm_prefixlen to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tcpm_prefixlen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %14)
  %cmp17 = icmp ugt i8 %14, -128
  br i1 %cmp17, label %if.then15.cleanup90_crit_edge, label %lor.lhs.false

if.then15.cleanup90_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup90

lor.lhs.false:                                    ; preds = %if.then15
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3
  %15 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %18, %16
  %arrayidx4.i = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %20, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %cmp23 = icmp ugt i8 %14, 32
  %or.cond124 = select i1 %cmp.i, i1 %cmp23, i1 false
  br i1 %or.cond124, label %lor.lhs.false.cleanup90_crit_edge, label %lor.lhs.false.if.end31_crit_edge

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

lor.lhs.false.cleanup90_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup90

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %sin6_addr27 = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3
  %21 = ptrtoint ptr %sin6_addr27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sin6_addr27, align 4
  %arrayidx2.i126 = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx2.i126 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx2.i126, align 4
  %or.i127 = or i32 %24, %22
  %arrayidx4.i128 = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx4.i128 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4.i128, align 4
  %xor.i129 = xor i32 %26, 65535
  %or5.i130 = or i32 %or.i127, %xor.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i130)
  %cmp.i131 = icmp eq i32 %or5.i130, 0
  %conv30 = select i1 %cmp.i131, i8 32, i8 -128
  br label %if.end31

if.end31:                                         ; preds = %if.else, %lor.lhs.false.if.end31_crit_edge
  %prefixlen.0 = phi i8 [ %14, %lor.lhs.false.if.end31_crit_edge ], [ %conv30, %if.else ]
  br i1 %cmp9, label %land.lhs.true34, label %if.end31.if.end56_crit_edge

if.end31.if.end56_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

land.lhs.true34:                                  ; preds = %if.end31
  %tcpm_ifindex = getelementptr inbounds %struct.tcp_md5sig, ptr %cmd, i32 0, i32 4
  %27 = ptrtoint ptr %tcpm_ifindex to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tcpm_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool35.not = icmp eq i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool40.not = icmp eq i8 %and, 0
  %or.cond149 = select i1 %tobool35.not, i1 true, i1 %tobool40.not
  br i1 %or.cond149, label %land.lhs.true34.if.end56_crit_edge, label %if.then41

land.lhs.true34.if.end56_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then41:                                        ; preds = %land.lhs.true34
  %29 = call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !122
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.then41.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then41.rcu_read_lock.exit_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then41
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then41.rcu_read_lock.exit_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %33 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skc_net.i, align 4
  %35 = ptrtoint ptr %tcpm_ifindex to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tcpm_ifindex, align 4
  %call44 = call ptr @dev_get_by_index_rcu(ptr noundef %34, i32 noundef %36) #13
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %rcu_read_lock.exit.if.end50.thread_crit_edge, label %land.lhs.true46

rcu_read_lock.exit.if.end50.thread_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.thread

land.lhs.true46:                                  ; preds = %rcu_read_lock.exit
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call44, i32 0, i32 15
  %37 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %38, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true46.if.end50.thread_crit_edge, label %if.end50

land.lhs.true46.if.end50.thread_crit_edge:        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.thread

if.end50.thread:                                  ; preds = %land.lhs.true46.if.end50.thread_crit_edge, %rcu_read_lock.exit.if.end50.thread_crit_edge
  call fastcc void @rcu_read_unlock()
  br label %cleanup90

if.end50:                                         ; preds = %land.lhs.true46
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call44, i32 0, i32 17
  %39 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ifindex, align 4
  call fastcc void @rcu_read_unlock()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool53.not = icmp eq i32 %40, 0
  br i1 %tobool53.not, label %if.end50.cleanup90_crit_edge, label %if.end50.if.end56_crit_edge

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.end50.cleanup90_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup90

if.end56:                                         ; preds = %if.end50.if.end56_crit_edge, %land.lhs.true34.if.end56_crit_edge, %if.end31.if.end56_crit_edge
  %l3index.1 = phi i32 [ 0, %land.lhs.true34.if.end56_crit_edge ], [ 0, %if.end31.if.end56_crit_edge ], [ %40, %if.end50.if.end56_crit_edge ]
  %tcpm_keylen = getelementptr inbounds %struct.tcp_md5sig, ptr %cmd, i32 0, i32 3
  %41 = ptrtoint ptr %tcpm_keylen to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tcpm_keylen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool57.not = icmp eq i16 %42, 0
  br i1 %tobool57.not, label %if.then58, label %if.end67

if.then58:                                        ; preds = %if.end56
  %sin6_addr59 = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3
  %43 = ptrtoint ptr %sin6_addr59 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sin6_addr59, align 4
  %arrayidx2.i132 = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx2.i132 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx2.i132, align 4
  %or.i133 = or i32 %46, %44
  %arrayidx4.i134 = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3, i32 0, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx4.i134 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx4.i134, align 4
  %xor.i135 = xor i32 %48, 65535
  %or5.i136 = or i32 %or.i133, %xor.i135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i136)
  %cmp.i137 = icmp eq i32 %or5.i136, 0
  br i1 %cmp.i137, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3, i32 0, i32 0, i32 3
  %call63 = call i32 @tcp_md5_do_del(ptr noundef %sk, ptr noundef %arrayidx, i32 noundef 2, i8 noundef zeroext %prefixlen.0, i32 noundef %l3index.1, i8 noundef zeroext %and) #13
  br label %cleanup90

if.end64:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  %call66 = call i32 @tcp_md5_do_del(ptr noundef %sk, ptr noundef %sin6_addr59, i32 noundef 10, i8 noundef zeroext %prefixlen.0, i32 noundef %l3index.1, i8 noundef zeroext %and) #13
  br label %cleanup90

if.end67:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %42)
  %cmp70 = icmp ugt i16 %42, 80
  br i1 %cmp70, label %if.end67.cleanup90_crit_edge, label %if.end73

if.end67.cleanup90_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup90

if.end73:                                         ; preds = %if.end67
  %sin6_addr74 = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3
  %49 = ptrtoint ptr %sin6_addr74 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sin6_addr74, align 4
  %arrayidx2.i138 = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx2.i138 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx2.i138, align 4
  %or.i139 = or i32 %52, %50
  %arrayidx4.i140 = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3, i32 0, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx4.i140 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx4.i140, align 4
  %xor.i141 = xor i32 %54, 65535
  %or5.i142 = or i32 %or.i139, %xor.i141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i142)
  %cmp.i143 = icmp eq i32 %or5.i142, 0
  br i1 %cmp.i143, label %if.then76, label %if.end83

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx79 = getelementptr inbounds %struct.sockaddr_in6, ptr %cmd, i32 0, i32 3, i32 0, i32 0, i32 3
  %tcpm_key = getelementptr inbounds %struct.tcp_md5sig, ptr %cmd, i32 0, i32 5
  %conv81 = trunc i16 %42 to i8
  %call82 = call i32 @tcp_md5_do_add(ptr noundef %sk, ptr noundef %arrayidx79, i32 noundef 2, i8 noundef zeroext %prefixlen.0, i32 noundef %l3index.1, i8 noundef zeroext %and, ptr noundef %tcpm_key, i8 noundef zeroext %conv81, i32 noundef 3264) #13
  br label %cleanup90

if.end83:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %tcpm_key85 = getelementptr inbounds %struct.tcp_md5sig, ptr %cmd, i32 0, i32 5
  %conv88 = trunc i16 %42 to i8
  %call89 = call i32 @tcp_md5_do_add(ptr noundef %sk, ptr noundef %sin6_addr74, i32 noundef 10, i8 noundef zeroext %prefixlen.0, i32 noundef %l3index.1, i8 noundef zeroext %and, ptr noundef %tcpm_key85, i8 noundef zeroext %conv88, i32 noundef 3264) #13
  br label %cleanup90

cleanup90:                                        ; preds = %if.end83, %if.then76, %if.end67.cleanup90_crit_edge, %if.end64, %if.then61, %if.end50.cleanup90_crit_edge, %if.end50.thread, %lor.lhs.false.cleanup90_crit_edge, %if.then15.cleanup90_crit_edge, %if.end2.cleanup90_crit_edge, %if.then11.i.i.i.i, %entry.cleanup90_crit_edge
  %retval.1 = phi i32 [ %call82, %if.then76 ], [ %call89, %if.end83 ], [ %call63, %if.then61 ], [ %call66, %if.end64 ], [ -22, %entry.cleanup90_crit_edge ], [ -22, %if.end2.cleanup90_crit_edge ], [ -22, %lor.lhs.false.cleanup90_crit_edge ], [ -22, %if.then15.cleanup90_crit_edge ], [ -22, %if.end50.cleanup90_crit_edge ], [ -22, %if.end67.cleanup90_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -22, %if.end50.thread ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %cmd) #13
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_md5_do_del(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_mtu_to_mss(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet6_csk_update_pmtu(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_simple_retransmit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_seq_start(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_seq_stop(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_seq_next(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp6_seq_show(ptr noundef %seq, ptr noundef %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.17) #13
  br label %out

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp1 = icmp eq i8 %3, 6
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %num = getelementptr inbounds %struct.tcp_iter_state, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %expires.i = getelementptr inbounds %struct.inet_timewait_sock, ptr %v, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %expires.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %7, %8
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 10
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 11
  %9 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 4
  %tw_sport.i = getelementptr inbounds %struct.inet_timewait_sock, ptr %v, i32 0, i32 4
  %12 = ptrtoint ptr %tw_sport.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tw_sport.i, align 2
  %14 = ptrtoint ptr %skc_v6_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %skc_v6_rcv_saddr.i, align 4
  %arrayidx4.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 11, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 11, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 11, i32 0, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8.i, align 4
  %conv.i = zext i16 %13 to i32
  %22 = ptrtoint ptr %skc_v6_daddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %skc_v6_daddr.i, align 4
  %arrayidx12.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 10, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx14.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 10, i32 0, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx16.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 10, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx16.i, align 4
  %conv17.i = zext i16 %11 to i32
  %tw_substate.i = getelementptr inbounds %struct.inet_timewait_sock, ptr %v, i32 0, i32 2
  %30 = ptrtoint ptr %tw_substate.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load volatile i8, ptr %tw_substate.i, align 4
  %conv18.i = zext i8 %31 to i32
  %32 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #13
  %call.i.i = tail call i32 @jiffies_to_clock_t(i32 noundef %32) #13
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  %33 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %skc_refcnt.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.18, i32 noundef %5, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %conv.i, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %conv17.i, i32 noundef %conv18.i, i32 noundef 0, i32 noundef 0, i32 noundef 3, i32 noundef %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %34, ptr noundef %v) #13
  br label %out

if.else:                                          ; preds = %if.end
  %35 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %36)
  %cmp7 = icmp eq i8 %36, 12
  %num10 = getelementptr inbounds %struct.tcp_iter_state, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %num10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num10, align 4
  br i1 %cmp7, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %expires.i26 = getelementptr inbounds %struct.request_sock, ptr %v, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %expires.i26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %expires.i26, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i27 = sub i32 %40, %41
  %skc_v6_rcv_saddr.i28 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 11
  %skc_v6_daddr.i29 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 10
  %42 = tail call i32 @llvm.smax.i32(i32 %sub.i27, i32 0) #13
  %43 = ptrtoint ptr %skc_v6_rcv_saddr.i28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %skc_v6_rcv_saddr.i28, align 4
  %arrayidx6.i30 = getelementptr %struct.sock_common, ptr %v, i32 0, i32 11, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx6.i30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx6.i30, align 4
  %arrayidx8.i31 = getelementptr %struct.sock_common, ptr %v, i32 0, i32 11, i32 0, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx8.i31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx8.i31, align 4
  %arrayidx10.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 11, i32 0, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx10.i, align 4
  %51 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.2, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %skc_num.i, align 2
  %conv.i32 = zext i16 %53 to i32
  %54 = ptrtoint ptr %skc_v6_daddr.i29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %skc_v6_daddr.i29, align 4
  %arrayidx17.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 10, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx17.i, align 4
  %arrayidx19.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 10, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx19.i, align 4
  %arrayidx21.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 10, i32 0, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx21.i, align 4
  %62 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %51, align 4
  %conv25.i = zext i16 %63 to i32
  %call26.i = tail call i32 @jiffies_to_clock_t(i32 noundef %42) #13
  %num_timeout.i = getelementptr inbounds %struct.request_sock, ptr %v, i32 0, i32 4
  %64 = ptrtoint ptr %num_timeout.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i = load i8, ptr %num_timeout.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 127
  %conv27.i = zext i8 %bf.clear.i to i32
  %file.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %65 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %file.i.i, align 4
  %f_cred.i.i = getelementptr inbounds %struct.file, ptr %66, i32 0, i32 12
  %67 = ptrtoint ptr %f_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %f_cred.i.i, align 8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %68, i32 0, i32 25
  %69 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %user_ns.i.i, align 4
  %71 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 13
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %call30.i = tail call i32 @sock_i_uid(ptr noundef %73) #13
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %call30.i, 0
  %call32.i = tail call i32 @from_kuid_munged(ptr noundef %70, [1 x i32] %.fca.0.insert.i) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.19, i32 noundef %38, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %conv.i32, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %conv25.i, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef %call26.i, i32 noundef %conv27.i, i32 noundef %call32.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %v) #13
  br label %out

if.else11:                                        ; preds = %if.else
  %skc_v6_daddr.i33 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 10
  %skc_v6_rcv_saddr.i34 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 11
  %74 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 2
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %74, align 4
  %inet_sport.i = getelementptr inbounds %struct.inet_sock, ptr %v, i32 0, i32 6
  %77 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %inet_sport.i, align 8
  %icsk_pending.i = getelementptr inbounds %struct.inet_connection_sock, ptr %v, i32 0, i32 19
  %79 = ptrtoint ptr %icsk_pending.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %icsk_pending.i, align 2
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values)
  switch i8 %80, label %if.else22.i [
    i8 1, label %if.else11.if.then.i_crit_edge
    i8 6, label %if.else11.if.then.i_crit_edge44
    i8 5, label %if.else11.if.then.i_crit_edge45
    i8 3, label %if.then20.i
  ]

if.else11.if.then.i_crit_edge45:                  ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.else11.if.then.i_crit_edge44:                  ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.else11.if.then.i_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %if.else11.if.then.i_crit_edge, %if.else11.if.then.i_crit_edge44, %if.else11.if.then.i_crit_edge45
  %icsk_timeout.i = getelementptr inbounds %struct.inet_connection_sock, ptr %v, i32 0, i32 3
  %82 = ptrtoint ptr %icsk_timeout.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %icsk_timeout.i, align 8
  br label %if.end28.i

if.then20.i:                                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #15
  %icsk_timeout21.i = getelementptr inbounds %struct.inet_connection_sock, ptr %v, i32 0, i32 3
  %84 = ptrtoint ptr %icsk_timeout21.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %icsk_timeout21.i, align 8
  br label %if.end28.i

if.else22.i:                                      ; preds = %if.else11
  %pprev.i.i.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 32, i32 0, i32 1
  %86 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i.not.i, label %if.else26.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #15
  %expires.i35 = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 32, i32 1
  %88 = ptrtoint ptr %expires.i35 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %expires.i35, align 4
  br label %if.end28.i

if.else26.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else26.i, %if.then24.i, %if.then20.i, %if.then.i
  %timer_expires.0.i = phi i32 [ %83, %if.then.i ], [ %85, %if.then20.i ], [ %89, %if.then24.i ], [ %90, %if.else26.i ]
  %timer_active.0.i = phi i32 [ 1, %if.then.i ], [ 4, %if.then20.i ], [ 2, %if.then24.i ], [ 0, %if.else26.i ]
  %91 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load volatile i8, ptr %skc_state, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %92)
  %cmp30.i = icmp eq i8 %92, 10
  br i1 %cmp30.i, label %do.end.i, label %if.else33.i

do.end.i:                                         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 53
  %93 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  br label %if.end45.i

if.else33.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  %rcv_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %v, i32 0, i32 7
  %95 = ptrtoint ptr %rcv_nxt.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %rcv_nxt.i, align 8
  %copied_seq.i = getelementptr inbounds %struct.tcp_sock, ptr %v, i32 0, i32 8
  %97 = ptrtoint ptr %copied_seq.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %copied_seq.i, align 4
  %sub.i36 = sub i32 %96, %98
  %99 = tail call i32 @llvm.smax.i32(i32 %sub.i36, i32 0) #13
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else33.i, %do.end.i
  %rx_queue.0.i = phi i32 [ %94, %do.end.i ], [ %99, %if.else33.i ]
  %100 = ptrtoint ptr %skc_v6_rcv_saddr.i34 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %skc_v6_rcv_saddr.i34, align 4
  %arrayidx47.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 11, i32 0, i32 0, i32 1
  %102 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx47.i, align 4
  %arrayidx49.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 11, i32 0, i32 0, i32 2
  %104 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx49.i, align 4
  %arrayidx51.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 11, i32 0, i32 0, i32 3
  %106 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx51.i, align 4
  %108 = ptrtoint ptr %skc_v6_daddr.i33 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %skc_v6_daddr.i33, align 4
  %arrayidx56.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 10, i32 0, i32 0, i32 1
  %110 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx56.i, align 4
  %arrayidx58.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 10, i32 0, i32 0, i32 2
  %112 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx58.i, align 4
  %arrayidx60.i = getelementptr %struct.sock_common, ptr %v, i32 0, i32 10, i32 0, i32 0, i32 3
  %114 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx60.i, align 4
  %write_seq.i = getelementptr inbounds %struct.tcp_sock, ptr %v, i32 0, i32 80
  %116 = ptrtoint ptr %write_seq.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %write_seq.i, align 4
  %snd_una.i = getelementptr inbounds %struct.tcp_sock, ptr %v, i32 0, i32 16
  %118 = ptrtoint ptr %snd_una.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %snd_una.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %120 = load volatile i32, ptr @jiffies, align 128
  %sub67.i = sub i32 %timer_expires.0.i, %120
  %121 = tail call i32 @llvm.smax.i32(i32 %sub67.i, i32 0) #13
  %call.i.i37 = tail call i32 @jiffies_to_clock_t(i32 noundef %121) #13
  %icsk_retransmits.i = getelementptr inbounds %struct.inet_connection_sock, ptr %v, i32 0, i32 18
  %122 = ptrtoint ptr %icsk_retransmits.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %icsk_retransmits.i, align 1
  %file.i.i38 = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %124 = ptrtoint ptr %file.i.i38 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %file.i.i38, align 4
  %f_cred.i.i39 = getelementptr inbounds %struct.file, ptr %125, i32 0, i32 12
  %126 = ptrtoint ptr %f_cred.i.i39 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %f_cred.i.i39, align 8
  %user_ns.i.i40 = getelementptr inbounds %struct.cred, ptr %127, i32 0, i32 25
  %128 = ptrtoint ptr %user_ns.i.i40 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %user_ns.i.i40, align 4
  %call71.i = tail call i32 @sock_i_uid(ptr noundef %v) #13
  %.fca.0.insert.i41 = insertvalue [1 x i32] poison, i32 %call71.i, 0
  %call73.i = tail call i32 @from_kuid_munged(ptr noundef %129, [1 x i32] %.fca.0.insert.i41) #13
  %icsk_probes_out.i = getelementptr inbounds %struct.inet_connection_sock, ptr %v, i32 0, i32 22
  %130 = ptrtoint ptr %icsk_probes_out.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %icsk_probes_out.i, align 1
  %call75.i = tail call i32 @sock_i_ino(ptr noundef %v) #13
  %skc_refcnt.i42 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 19
  %call.i.i.i.i43 = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i42, i32 noundef 4) #13
  %132 = ptrtoint ptr %skc_refcnt.i42 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %skc_refcnt.i42, align 4
  %icsk_rto.i = getelementptr inbounds %struct.inet_connection_sock, ptr %v, i32 0, i32 6
  %134 = ptrtoint ptr %icsk_rto.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %icsk_rto.i, align 4
  %call78.i = tail call i32 @jiffies_to_clock_t(i32 noundef %135) #13
  %ato.i = getelementptr inbounds %struct.inet_connection_sock, ptr %v, i32 0, i32 24, i32 4
  %136 = ptrtoint ptr %ato.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ato.i, align 4
  %call79.i = tail call i32 @jiffies_to_clock_t(i32 noundef %137) #13
  %quick.i = getelementptr inbounds %struct.inet_connection_sock, ptr %v, i32 0, i32 24, i32 1
  %138 = ptrtoint ptr %quick.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %quick.i, align 1
  %pingpong.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %v, i32 0, i32 24, i32 2
  %140 = ptrtoint ptr %pingpong.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %pingpong.i.i, align 2
  %snd_cwnd.i = getelementptr inbounds %struct.tcp_sock, ptr %v, i32 0, i32 63
  %142 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %snd_cwnd.i, align 8
  br i1 %cmp30.i, label %cond.true86.i, label %cond.false87.i

cond.true86.i:                                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  %max_qlen.i = getelementptr inbounds %struct.inet_connection_sock, ptr %v, i32 0, i32 1, i32 7, i32 4
  %144 = ptrtoint ptr %max_qlen.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %max_qlen.i, align 4
  br label %get_tcp6_sock.exit

cond.false87.i:                                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  %snd_ssthresh.i.i = getelementptr inbounds %struct.tcp_sock, ptr %v, i32 0, i32 62
  %146 = ptrtoint ptr %snd_ssthresh.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %snd_ssthresh.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %147)
  %cmp.i138.i = icmp ugt i32 %147, 2147483646
  %spec.select.i = select i1 %cmp.i138.i, i32 -1, i32 %147
  br label %get_tcp6_sock.exit

get_tcp6_sock.exit:                               ; preds = %cond.false87.i, %cond.true86.i
  %cond95.i = phi i32 [ %145, %cond.true86.i ], [ %spec.select.i, %cond.false87.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %141)
  %cmp.i.i = icmp ugt i8 %141, 2
  %conv.i.i = zext i8 %92 to i32
  %conv81.i = zext i8 %139 to i32
  %shl.i = shl nuw nsw i32 %conv81.i, 1
  %conv83.i = zext i1 %cmp.i.i to i32
  %or.i = or i32 %shl.i, %conv83.i
  %conv74.i = zext i8 %131 to i32
  %conv69.i = zext i8 %123 to i32
  %sub66.i = sub i32 %117, %119
  %conv61.i = zext i16 %76 to i32
  %conv52.i = zext i16 %78 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.20, i32 noundef %38, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107, i32 noundef %conv52.i, i32 noundef %109, i32 noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef %conv61.i, i32 noundef %conv.i.i, i32 noundef %sub66.i, i32 noundef %rx_queue.0.i, i32 noundef %timer_active.0.i, i32 noundef %call.i.i37, i32 noundef %conv69.i, i32 noundef %call73.i, i32 noundef %conv74.i, i32 noundef %call75.i, i32 noundef %133, ptr noundef %v, i32 noundef %call78.i, i32 noundef %call79.i, i32 noundef %or.i, i32 noundef %143, i32 noundef %cond95.i) #13
  br label %out

out:                                              ; preds = %get_tcp6_sock.exit, %if.then9, %if.then3, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cgroup_bpf_run_filter_sock_addr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sk_dev_equal_l3scope(ptr nocapture noundef readonly %sk, i32 noundef %dif) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dif)
  %cmp = icmp eq i32 %1, %dif
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %call3 = tail call fastcc i32 @l3mdev_master_ifindex_by_index(ptr noundef %3, i32 noundef %dif)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %5)
  %cmp7 = icmp eq i32 %call3, %5
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end9 ], [ true, %entry.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_v4_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_set_state(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_hash_connect(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_fastopen_defer_connect(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_connect(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fl6_sock_lookup(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_init_sock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_v4_destroy_sock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_destroy_sock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rcv_established(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_checksum_complete(ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %1 = and i16 %bf.lshr.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.i = icmp ne i16 %1, 1
  %2 = and i16 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %lor.rhs.i, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp12.i = icmp eq i16 %1, 3
  br i1 %cmp12.i, label %skb_csum_unnecessary.exit, label %lor.rhs.i.land.rhs_crit_edge

lor.rhs.i.land.rhs_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

skb_csum_unnecessary.exit:                        ; preds = %lor.rhs.i
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %conv.i.i = zext i16 %5 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not = icmp slt i32 %sub.i.i, 0
  br i1 %tobool.not, label %skb_csum_unnecessary.exit.land.rhs_crit_edge, label %skb_csum_unnecessary.exit.land.end_crit_edge

skb_csum_unnecessary.exit.land.end_crit_edge:     ; preds = %skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

skb_csum_unnecessary.exit.land.rhs_crit_edge:     ; preds = %skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

land.rhs:                                         ; preds = %skb_csum_unnecessary.exit.land.rhs_crit_edge, %lor.rhs.i.land.rhs_crit_edge
  %call1 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1)
  %tobool2 = icmp ne i16 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %skb_csum_unnecessary.exit.land.end_crit_edge, %entry.land.end_crit_edge
  %10 = phi i1 [ false, %skb_csum_unnecessary.exit.land.end_crit_edge ], [ %tobool2, %land.rhs ], [ false, %entry.land.end_crit_edge ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_child_process(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_rcv_state_process(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tcp_bad_csum(ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_bad_csum, i32 0, i32 1), ptr blockaddress(@trace_tcp_bad_csum, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !120

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !163
  %call42 = tail call i32 @__traceiter_tcp_bad_csum(ptr noundef null, ptr noundef %skb) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !164
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_bad_csum, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_bad_csum, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tcp_bad_csum.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_tcp_bad_csum.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 372, ptr noundef nonnull @.str.5) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !152
  %31 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cookie_v6_check(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_bad_csum(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_twsk_unique(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_twsk_destructor(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_v6_early_demux(ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %3 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, 20
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end4_crit_edge, !prof !121

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp3.i = icmp ult i32 %8, %add
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !121

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #13
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end4_crit_edge

pskb_may_pull.exit.if.end4_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %pskb_may_pull.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %13 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i75 = zext i16 %14 to i32
  %add.ptr.i.i76 = getelementptr i8, ptr %12, i32 %conv.i.i75
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i76, i32 0, i32 4
  %15 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load7 = load i16, ptr %doff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %bf.load7)
  %cmp10 = icmp ult i16 %bf.load7, 20480
  br i1 %cmp10, label %if.end4.cleanup_crit_edge, label %if.end13

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i71 = zext i16 %17 to i32
  %add.ptr.i.i72 = getelementptr i8, ptr %12, i32 %conv.i.i71
  %18 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 127
  %21 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nd_net.i, align 4
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i72, i32 0, i32 5
  %23 = ptrtoint ptr %add.ptr.i.i76 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i76, align 4
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i72, i32 0, i32 6
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i76, i32 0, i32 1
  %25 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dest, align 2
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags.i, align 8
  %29 = and i16 %28, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.i.not.i = icmp eq i16 %29, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i, ptr %cb.i, ptr %skb_iif.i
  %30 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %tobool.not.i = icmp eq ptr %skb, null
  %brmerge = select i1 %tobool.not.i, i1 true, i1 %tobool.i.not.i
  br i1 %brmerge, label %if.end13.inet6_sdif.exit_crit_edge, label %if.then.i

if.end13.inet6_sdif.exit_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sdif.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cb.i, align 8
  br label %inet6_sdif.exit

inet6_sdif.exit:                                  ; preds = %if.then.i, %if.end13.inet6_sdif.exit_crit_edge
  %retval.0.i80 = phi i32 [ %32, %if.then.i ], [ 0, %if.end13.inet6_sdif.exit_crit_edge ]
  %call17 = tail call ptr @__inet6_lookup_established(ptr noundef %22, ptr noundef nonnull @tcp_hashinfo, ptr noundef %saddr, i16 noundef zeroext %24, ptr noundef %daddr, i16 noundef zeroext %26, i32 noundef %cond.i, i32 noundef %retval.0.i80) #13
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %inet6_sdif.exit.cleanup_crit_edge, label %if.then18

inet6_sdif.exit.cleanup_crit_edge:                ; preds = %inet6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then18:                                        ; preds = %inet6_sdif.exit
  %33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call17, ptr %33, align 4
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %35 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @sock_edemux, ptr %destructor, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %call17, i32 0, i32 4
  %36 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %37 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then18.cleanup_crit_edge, label %if.then20

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %if.then18
  %sk_rx_dst = getelementptr inbounds %struct.sock, ptr %call17, i32 0, i32 1
  %38 = ptrtoint ptr %sk_rx_dst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %sk_rx_dst, align 8
  %call22 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true, label %if.then20.do.end31_crit_edge

if.then20.do.end31_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31

land.lhs.true:                                    ; preds = %if.then20
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.do.end31_crit_edge, label %land.lhs.true26

land.lhs.true.do.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31

land.lhs.true26:                                  ; preds = %land.lhs.true
  %.b69 = load i1, ptr @tcp_v6_early_demux.__warned, align 1
  br i1 %.b69, label %land.lhs.true26.do.end31_crit_edge, label %if.then28

land.lhs.true26.do.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tcp_v6_early_demux.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1882, ptr noundef nonnull @.str.5) #13
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %land.lhs.true26.do.end31_crit_edge, %land.lhs.true.do.end31_crit_edge, %if.then20.do.end31_crit_edge
  %tobool33.not = icmp eq ptr %39, null
  br i1 %tobool33.not, label %do.end31.cleanup_crit_edge, label %if.then34

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then34:                                        ; preds = %do.end31
  %obsolete.i = getelementptr inbounds %struct.dst_entry, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %obsolete.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %obsolete.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i81 = icmp eq i16 %41, 0
  br i1 %tobool.not.i81, label %if.then34.land.lhs.true38_crit_edge, label %if.end36

if.then34.land.lhs.true38_crit_edge:              ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true38

if.end36:                                         ; preds = %if.then34
  %sk_rx_dst_cookie = getelementptr inbounds %struct.sock, ptr %call17, i32 0, i32 3
  %42 = ptrtoint ptr %sk_rx_dst_cookie to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sk_rx_dst_cookie, align 8
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %check.i = getelementptr inbounds %struct.dst_ops, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %check.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %check.i, align 4
  %call.i = tail call ptr %47(ptr noundef nonnull %39, i32 noundef %43) #13
  %tobool37.not = icmp eq ptr %call.i, null
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %if.end36.land.lhs.true38_crit_edge

if.end36.land.lhs.true38_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true38:                                  ; preds = %if.end36.land.lhs.true38_crit_edge, %if.then34.land.lhs.true38_crit_edge
  %dst.092 = phi ptr [ %call.i, %if.end36.land.lhs.true38_crit_edge ], [ %39, %if.then34.land.lhs.true38_crit_edge ]
  %sk_rx_dst_ifindex = getelementptr inbounds %struct.sock, ptr %call17, i32 0, i32 2
  %48 = ptrtoint ptr %sk_rx_dst_ifindex to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sk_rx_dst_ifindex, align 4
  %50 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %skb_iif.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp39 = icmp eq i32 %49, %51
  br i1 %cmp39, label %if.then41, label %land.lhs.true38.cleanup_crit_edge

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then41:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @skb_dst_set_noref(ptr noundef %skb, ptr noundef nonnull %dst.092)
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %land.lhs.true38.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %do.end31.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %inet6_sdif.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_v6_rcv(ptr noundef %skb) #1 align 64 {
entry:
  %req_stolen = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %skb, null
  br i1 %tobool.not.i, label %entry.inet6_sdif.exit_crit_edge, label %land.lhs.true.i

entry.inet6_sdif.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sdif.exit

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 8
  %2 = and i16 %1, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not.i = icmp eq i16 %2, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.inet6_sdif.exit_crit_edge, label %if.then.i

land.lhs.true.i.inet6_sdif.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sdif.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %3 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cb.i, align 8
  br label %inet6_sdif.exit

inet6_sdif.exit:                                  ; preds = %if.then.i, %land.lhs.true.i.inet6_sdif.exit_crit_edge, %entry.inet6_sdif.exit_crit_edge
  %retval.0.i437 = phi i32 [ %4, %if.then.i ], [ 0, %land.lhs.true.i.inet6_sdif.exit_crit_edge ], [ 0, %entry.inet6_sdif.exit_crit_edge ]
  %flags.i438 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %5 = ptrtoint ptr %flags.i438 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i438, align 8
  %7 = and i16 %6, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.i.not.i439 = icmp eq i16 %7, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i440 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i439, ptr %cb.i440, ptr %skb_iif.i
  %8 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %9 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 127
  %12 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nd_net.i, align 4
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %14 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not, label %if.end, label %inet6_sdif.exit.discard_it_crit_edge

inet6_sdif.exit.discard_it_crit_edge:             ; preds = %inet6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_it

if.end:                                           ; preds = %inet6_sdif.exit
  %tcp_statistics = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 2
  %15 = ptrtoint ptr %tcp_statistics to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tcp_statistics, align 4
  %arrayidx = getelementptr [16 x i32], ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %arrayidx to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %23, %17
  %24 = inttoptr i32 %add to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add13 = add i32 %26, 1
  store i32 %add13, ptr %24, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %29 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %28, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 20
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end20_crit_edge, !prof !121

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %28)
  %cmp3.i = icmp ult i32 %28, 20
  br i1 %cmp3.i, label %if.end.i.discard_it_crit_edge, label %pskb_may_pull.exit, !prof !121

if.end.i.discard_it_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_it

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 20, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #13
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.discard_it_crit_edge, label %pskb_may_pull.exit.if.end20_crit_edge

pskb_may_pull.exit.if.end20_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

pskb_may_pull.exit.discard_it_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_it

if.end20:                                         ; preds = %pskb_may_pull.exit.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %doff = getelementptr inbounds %struct.tcphdr, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load21 = load i16, ptr %doff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %bf.load21)
  %cmp24 = icmp ult i16 %bf.load21, 20480
  br i1 %cmp24, label %if.end20.bad_packet_crit_edge, label %if.end28, !prof !121

if.end20.bad_packet_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %bad_packet

if.end28:                                         ; preds = %if.end20
  %34 = lshr i16 %bf.load21, 10
  %35 = and i16 %34, 60
  %mul = zext i16 %35 to i32
  %36 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i.i, align 4
  %38 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i444 = sub i32 %37, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i444, i32 %mul)
  %cmp.not.i445 = icmp ult i32 %sub.i.i444, %mul
  br i1 %cmp.not.i445, label %if.end.i447, label %if.end28.if.end35_crit_edge, !prof !121

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end.i447:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %mul)
  %cmp3.i446 = icmp ult i32 %37, %mul
  br i1 %cmp3.i446, label %if.end.i447.discard_it_crit_edge, label %pskb_may_pull.exit453, !prof !121

if.end.i447.discard_it_crit_edge:                 ; preds = %if.end.i447
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_it

pskb_may_pull.exit453:                            ; preds = %if.end.i447
  %sub.i448 = sub i32 %mul, %sub.i.i444
  %call13.i449 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i448) #13
  %cmp14.i450.not = icmp eq ptr %call13.i449, null
  br i1 %cmp14.i450.not, label %pskb_may_pull.exit453.discard_it_crit_edge, label %pskb_may_pull.exit453.if.end35_crit_edge

pskb_may_pull.exit453.if.end35_crit_edge:         ; preds = %pskb_may_pull.exit453
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

pskb_may_pull.exit453.discard_it_crit_edge:       ; preds = %pskb_may_pull.exit453
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_it

if.end35:                                         ; preds = %pskb_may_pull.exit453.if.end35_crit_edge, %if.end28.if.end35_crit_edge
  %40 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load36 = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load36, -2
  store i16 %bf.clear, ptr %pkt_type, align 8
  %bf.lshr.i.i = lshr i16 %bf.load36, 9
  %trunc = trunc i16 %bf.lshr.i.i to i2
  %41 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.28)
  switch i2 %trunc, label %if.end35.if.then38_crit_edge [
    i2 1, label %if.end35.if.then.i455_crit_edge
    i2 -1, label %skb_csum_unnecessary.exit.i
  ]

if.end35.if.then.i455_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i455

if.end35.if.then38_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

skb_csum_unnecessary.exit.i:                      ; preds = %if.end35
  %42 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 8
  %conv.i.i.i = zext i16 %44 to i32
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %47 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i454 = icmp slt i32 %sub.i.i.i, 0
  br i1 %tobool.not.i454, label %skb_csum_unnecessary.exit.i.if.then38_crit_edge, label %skb_csum_unnecessary.exit.i.if.then.i455_crit_edge

skb_csum_unnecessary.exit.i.if.then.i455_crit_edge: ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i455

skb_csum_unnecessary.exit.i.if.then38_crit_edge:  ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

if.then.i455:                                     ; preds = %skb_csum_unnecessary.exit.i.if.then.i455_crit_edge, %if.end35.if.then.i455_crit_edge
  %bf.set.i = or i16 %bf.load36, 1
  %49 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %bf.set.i, ptr %pkt_type, align 8
  %50 = and i16 %bf.load36, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %50)
  %cmp.i3.i = icmp eq i16 %50, 512
  br i1 %cmp.i3.i, label %if.then.i.i, label %if.then.i455.if.end45_crit_edge

if.then.i455.if.end45_crit_edge:                  ; preds = %if.then.i455
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then.i.i:                                      ; preds = %if.then.i455
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %51 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %52 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp7.i.i = icmp eq i32 %52, 0
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear12.i.i = and i16 %bf.set.i, -1537
  %53 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %bf.clear12.i.i, ptr %pkt_type, align 8
  br label %if.end45

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %54 = add i32 %bf.load2.i.i, 805306368
  %bf.shl.i.i = and i32 %54, 805306368
  %bf.clear19.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set20.i.i = or i32 %bf.shl.i.i, %bf.clear19.i.i
  %55 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %bf.set20.i.i, ptr %csum_level.i.i, align 2
  br label %if.end45

if.then38:                                        ; preds = %skb_csum_unnecessary.exit.i.if.then38_crit_edge, %if.end35.if.then38_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %56 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %58 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i456 = zext i16 %59 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 %conv.i.i.i456
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i.i, align 4
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %61, i32 noundef 6, i32 noundef 0) #13
  %62 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #16, !srcloc !126
  %shr.i.i.i = lshr i32 %62, 16
  %neg6.i = or i32 %shr.i.i.i, -65536
  %63 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load.i = load i16, ptr %pkt_type, align 8
  %64 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %64)
  %cmp.i = icmp eq i16 %64, 1024
  br i1 %cmp.i, label %if.then.i459, label %if.then38.if.end6.i_crit_edge

if.then38.if.end6.i_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then.i459:                                     ; preds = %if.then38
  %65 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %add.i.i = add i32 %67, %neg6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %67)
  %cmp.i.i457 = icmp ult i32 %add.i.i, %67
  %conv.i.i = zext i1 %cmp.i.i457 to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %68 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #16, !srcloc !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %68)
  %tobool.not.i458 = icmp ugt i32 %68, -65537
  br i1 %tobool.not.i458, label %if.end41.thread549, label %if.then.i459.if.end6.i_crit_edge

if.then.i459.if.end6.i_crit_edge:                 ; preds = %if.then.i459
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.end41.thread549:                               ; preds = %if.then.i459
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set.i460 = or i16 %bf.load.i, 1
  %69 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %bf.set.i460, ptr %pkt_type, align 8
  br label %if.end45

if.end6.i:                                        ; preds = %if.then.i459.if.end6.i_crit_edge, %if.then38.if.end6.i_crit_edge
  %70 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %neg6.i, ptr %70, align 8
  %72 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %73)
  %cmp9.i = icmp ult i32 %73, 77
  br i1 %cmp9.i, label %if.end41, label %if.end6.i.if.end45_crit_edge

if.end6.i.if.end45_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.end41:                                         ; preds = %if.end6.i
  %call12.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call12.i)
  %tobool13.not.i = icmp eq i16 %call12.i, 0
  %74 = zext i1 %tobool13.not.i to i16
  %75 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load16.i = load i16, ptr %pkt_type, align 8
  %bf.clear17.i = and i16 %bf.load16.i, -2
  %bf.set18.i = or i16 %bf.clear17.i, %74
  store i16 %bf.set18.i, ptr %pkt_type, align 8
  br i1 %tobool13.not.i, label %if.end41.if.end45_crit_edge, label %if.end41.csum_error_crit_edge

if.end41.csum_error_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %csum_error

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.end45:                                         ; preds = %if.end41.if.end45_crit_edge, %if.end6.i.if.end45_crit_edge, %if.end41.thread549, %if.else.i.i, %if.then9.i.i, %if.then.i455.if.end45_crit_edge
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %78 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %80 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i463 = zext i16 %81 to i32
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 %conv.i.i463
  %82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %83 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %end_seq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %tcp_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %ip_dsfield.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %sacked.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %86 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %has_rxtstamp.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %flags.i533 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  br label %lookup

lookup:                                           ; preds = %cleanup, %if.end45
  %hdr.0 = phi ptr [ %add.ptr.i.i, %if.end45 ], [ %hdr.2, %cleanup ]
  %th.0 = phi ptr [ %77, %if.end45 ], [ %th.2, %cleanup ]
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %th.0, i32 0, i32 4
  %88 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load.i464 = load i16, ptr %doff.i, align 4
  %89 = lshr i16 %bf.load.i464, 10
  %90 = and i16 %89, 60
  %mul.i = zext i16 %90 to i32
  %91 = ptrtoint ptr %th.0 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %th.0, align 4
  %dest = getelementptr inbounds %struct.tcphdr, ptr %th.0, i32 0, i32 1
  %93 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %dest, align 2
  %95 = ptrtoint ptr %flags.i438 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %flags.i438, align 8
  %97 = and i16 %96, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool.i.not.i466 = icmp eq i16 %97, 0
  %cond.in.i469 = select i1 %tobool.i.not.i466, ptr %cb.i440, ptr %skb_iif.i
  %98 = ptrtoint ptr %cond.in.i469 to i32
  call void @__asan_load4_noabort(i32 %98)
  %cond.i470 = load i32, ptr %cond.in.i469, align 8
  %99 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %82, align 4
  %tobool.not.i.i471 = icmp eq ptr %100, null
  br i1 %tobool.not.i.i471, label %if.end.i473, label %if.then.i.i472

if.then.i.i472:                                   ; preds = %lookup
  %101 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %destructor.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %102, @sock_pfree
  br i1 %cmp.i.i.i, label %if.then1.i.i, label %if.then.i.i472.skb_steal_sock.exit.i_crit_edge

if.then.i.i472.skb_steal_sock.exit.i_crit_edge:   ; preds = %if.then.i.i472
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_steal_sock.exit.i

if.then1.i.i:                                     ; preds = %if.then.i.i472
  %skc_state.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %100, i32 0, i32 4
  %103 = ptrtoint ptr %skc_state.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load volatile i8, ptr %skc_state.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %104 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i
  %and.i.i.i.i = and i32 %shl.i.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.then1.i.i.sk_is_refcounted.exit.i.i_crit_edge, label %lor.rhs.i.i.i

if.then1.i.i.sk_is_refcounted.exit.i.i_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_is_refcounted.exit.i.i

lor.rhs.i.i.i:                                    ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %105 = getelementptr inbounds %struct.sock_common, ptr %100, i32 0, i32 13
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %105, align 4
  %108 = and i32 %107, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.i3.not.i.i.i = icmp eq i32 %108, 0
  br label %sk_is_refcounted.exit.i.i

sk_is_refcounted.exit.i.i:                        ; preds = %lor.rhs.i.i.i, %if.then1.i.i.sk_is_refcounted.exit.i.i_crit_edge
  %109 = phi i1 [ true, %if.then1.i.i.sk_is_refcounted.exit.i.i_crit_edge ], [ %tobool.i3.not.i.i.i, %lor.rhs.i.i.i ]
  %frombool.i.i = zext i1 %109 to i8
  br label %skb_steal_sock.exit.i

skb_steal_sock.exit.i:                            ; preds = %sk_is_refcounted.exit.i.i, %if.then.i.i472.skb_steal_sock.exit.i_crit_edge
  %refcounted.0 = phi i8 [ %frombool.i.i, %sk_is_refcounted.exit.i.i ], [ 1, %if.then.i.i472.skb_steal_sock.exit.i_crit_edge ]
  %110 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %destructor.i.i.i, align 4
  %111 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %82, align 4
  br label %process.preheader

if.end.i473:                                      ; preds = %lookup
  %112 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %83, align 8
  %and.i.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %if.end.i473.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i473.skb_dst.exit.i_crit_edge:             ; preds = %if.end.i473
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i473
  %call.i.i474 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i474)
  %tobool1.not.i.i = icmp eq i32 %call.i.i474, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !121

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.end.i473.skb_dst.exit.i_crit_edge
  %114 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %83, align 8
  %and25.i.i = and i32 %115, -2
  %116 = inttoptr i32 %and25.i.i to ptr
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 127
  %119 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %nd_net.i.i, align 4
  %121 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %head.i.i, align 8
  %123 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i477 = zext i16 %124 to i32
  %add.ptr.i.i.i478 = getelementptr i8, ptr %122, i32 %conv.i.i.i477
  %saddr.i479 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i478, i32 0, i32 5
  %daddr.i480 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i478, i32 0, i32 6
  %call.i7.i = call ptr @__inet6_lookup_established(ptr noundef %120, ptr noundef nonnull @tcp_hashinfo, ptr noundef %saddr.i479, i16 noundef zeroext %92, ptr noundef %daddr.i480, i16 noundef zeroext %94, i32 noundef %cond.i470, i32 noundef %retval.0.i437) #13
  %tobool.not.i8.i = icmp eq ptr %call.i7.i, null
  br i1 %tobool.not.i8.i, label %__inet6_lookup_skb.exit, label %skb_dst.exit.i.process.preheader_crit_edge

skb_dst.exit.i.process.preheader_crit_edge:       ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %process.preheader

__inet6_lookup_skb.exit:                          ; preds = %skb_dst.exit.i
  %call1.i.i = call ptr @inet6_lookup_listener(ptr noundef %120, ptr noundef nonnull @tcp_hashinfo, ptr noundef %skb, i32 noundef %mul.i, ptr noundef %saddr.i479, i16 noundef zeroext %92, ptr noundef %daddr.i480, i16 noundef zeroext %94, i32 noundef %cond.i470, i32 noundef %retval.0.i437) #13
  %tobool51.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool51.not, label %no_tcp_socket, label %__inet6_lookup_skb.exit.process.preheader_crit_edge

__inet6_lookup_skb.exit.process.preheader_crit_edge: ; preds = %__inet6_lookup_skb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %process.preheader

process.preheader:                                ; preds = %__inet6_lookup_skb.exit.process.preheader_crit_edge, %skb_dst.exit.i.process.preheader_crit_edge, %skb_steal_sock.exit.i
  %retval.0.i481696 = phi ptr [ %call1.i.i, %__inet6_lookup_skb.exit.process.preheader_crit_edge ], [ %100, %skb_steal_sock.exit.i ], [ %call.i7.i, %skb_dst.exit.i.process.preheader_crit_edge ]
  %refcounted.1695 = phi i8 [ 0, %__inet6_lookup_skb.exit.process.preheader_crit_edge ], [ %refcounted.0, %skb_steal_sock.exit.i ], [ 1, %skb_dst.exit.i.process.preheader_crit_edge ]
  %skc_state649 = getelementptr inbounds %struct.sock_common, ptr %retval.0.i481696, i32 0, i32 4
  %125 = ptrtoint ptr %skc_state649 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load volatile i8, ptr %skc_state649, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %126)
  %cmp55650 = icmp eq i8 %126, 6
  br i1 %cmp55650, label %do_time_wait.lr.ph, label %process.preheader.if.end58_crit_edge

process.preheader.if.end58_crit_edge:             ; preds = %process.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

do_time_wait.lr.ph:                               ; preds = %process.preheader
  %seq.i = getelementptr inbounds %struct.tcphdr, ptr %th.0, i32 0, i32 2
  %ack_seq.i = getelementptr inbounds %struct.tcphdr, ptr %th.0, i32 0, i32 3
  %arrayidx21.i = getelementptr i8, ptr %th.0, i32 13
  br label %do_time_wait

if.end58:                                         ; preds = %cleanup289.if.end58_crit_edge, %process.preheader.if.end58_crit_edge
  %sk.0.lcssa648 = phi ptr [ %retval.0.i481696, %process.preheader.if.end58_crit_edge ], [ %call283, %cleanup289.if.end58_crit_edge ]
  %refcounted.2.lcssa = phi i8 [ %refcounted.1695, %process.preheader.if.end58_crit_edge ], [ 0, %cleanup289.if.end58_crit_edge ]
  %skc_state.le = getelementptr inbounds %struct.sock_common, ptr %sk.0.lcssa648, i32 0, i32 4
  %127 = ptrtoint ptr %skc_state.le to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load volatile i8, ptr %skc_state.le, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %128)
  %cmp62 = icmp eq i8 %128, 12
  br i1 %cmp62, label %if.then64, label %if.end58.if.end114_crit_edge

if.end58.if.end114_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.then64:                                        ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %req_stolen) #13
  %129 = ptrtoint ptr %req_stolen to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %req_stolen, align 1
  %130 = getelementptr inbounds %struct.sock_common, ptr %sk.0.lcssa648, i32 0, i32 13
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 8
  %call66 = call fastcc zeroext i1 @tcp_v6_inbound_md5_hash(ptr noundef %132, ptr noundef %skb, i32 noundef %cond.i, i32 noundef %retval.0.i437)
  br i1 %call66, label %cleanup.thread582, label %if.end68

cleanup.thread582:                                ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @sk_drops_add(ptr noundef %132, ptr noundef %skb)
  call fastcc void @reqsk_put(ptr noundef nonnull %sk.0.lcssa648)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req_stolen) #13
  br label %discard_it

if.end68:                                         ; preds = %if.then64
  %call69 = call fastcc zeroext i1 @tcp_checksum_complete(ptr noundef %skb)
  br i1 %call69, label %cleanup.thread576, label %if.end71

cleanup.thread576:                                ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @reqsk_put(ptr noundef nonnull %sk.0.lcssa648)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req_stolen) #13
  br label %csum_error

if.end71:                                         ; preds = %if.end68
  %skc_state73 = getelementptr inbounds %struct.sock_common, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %skc_state73 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load volatile i8, ptr %skc_state73, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %134)
  %cmp75.not = icmp eq i8 %134, 10
  br i1 %cmp75.not, label %if.else, label %if.then83, !prof !125

if.then83:                                        ; preds = %if.end71
  %call85 = call ptr @reuseport_migrate_sock(ptr noundef %132, ptr noundef nonnull %sk.0.lcssa648, ptr noundef %skb) #13
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %if.then87, label %if.then83.if.end89_crit_edge

if.then83.if.end89_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then87:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #15
  call void @inet_csk_reqsk_queue_drop_and_put(ptr noundef %132, ptr noundef nonnull %sk.0.lcssa648) #13
  br label %cleanup

if.else:                                          ; preds = %if.end71
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %132, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %135 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !124
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %135, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !121

if.else.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %136 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %136)
  %.not.i.i.i.i = icmp sgt i32 %136, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end89_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !125

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end89_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %if.end89

if.end89:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end89_crit_edge, %if.then83.if.end89_crit_edge
  %sk.1 = phi ptr [ %call85, %if.then83.if.end89_crit_edge ], [ %132, %if.else.i.i.i.i.if.end89_crit_edge ], [ %132, %if.end15.sink.split.i.i.i.i ]
  %call90 = call i32 @tcp_filter(ptr noundef %sk.1, ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end96, label %if.end89.if.then98_crit_edge

if.end89.if.then98_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then98

if.end96:                                         ; preds = %if.end89
  %137 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data, align 4
  %139 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %head.i.i, align 8
  %141 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i484 = zext i16 %142 to i32
  %add.ptr.i.i485 = getelementptr i8, ptr %140, i32 %conv.i.i484
  call fastcc void @tcp_v6_fill_cb(ptr noundef %skb, ptr noundef %add.ptr.i.i485, ptr noundef %138)
  %call95 = call ptr @tcp_check_req(ptr noundef %sk.1, ptr noundef %skb, ptr noundef nonnull %sk.0.lcssa648, i1 noundef zeroext false, ptr noundef nonnull %req_stolen) #13
  %tobool97.not = icmp eq ptr %call95, null
  br i1 %tobool97.not, label %if.end96.if.then98_crit_edge, label %if.end102

if.end96.if.then98_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then98

if.then98:                                        ; preds = %if.end96.if.then98_crit_edge, %if.end89.if.then98_crit_edge
  %th.1558 = phi ptr [ %138, %if.end96.if.then98_crit_edge ], [ %th.0, %if.end89.if.then98_crit_edge ]
  %hdr.1557 = phi ptr [ %add.ptr.i.i485, %if.end96.if.then98_crit_edge ], [ %hdr.0, %if.end89.if.then98_crit_edge ]
  call fastcc void @reqsk_put(ptr noundef nonnull %sk.0.lcssa648)
  %143 = ptrtoint ptr %req_stolen to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %req_stolen, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool99.not = icmp eq i8 %144, 0
  br i1 %tobool99.not, label %if.then98.discard_and_relse.thread_crit_edge, label %if.then100

if.then98.discard_and_relse.thread_crit_edge:     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_and_relse.thread

if.then100:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  %145 = call ptr @memcpy(ptr %cb.i440, ptr %84, i32 24)
  call fastcc void @sock_put(ptr noundef %sk.1)
  br label %cleanup

if.end102:                                        ; preds = %if.end96
  %cmp103 = icmp eq ptr %call95, %sk.1
  br i1 %cmp103, label %cleanup.thread570, label %if.else106

cleanup.thread570:                                ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @reqsk_put(ptr noundef nonnull %sk.0.lcssa648)
  %146 = call ptr @memcpy(ptr %cb.i440, ptr %84, i32 24)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req_stolen) #13
  br label %if.end114

if.else106:                                       ; preds = %if.end102
  %call107 = call i32 @tcp_child_process(ptr noundef %sk.1, ptr noundef nonnull %call95, ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %cleanup.thread564, label %if.then109

if.then109:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #15
  call void @tcp_v6_send_reset(ptr noundef nonnull %call95, ptr noundef %skb)
  br label %discard_and_relse.thread

cleanup.thread564:                                ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @sock_put(ptr noundef %sk.1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req_stolen) #13
  br label %cleanup296

discard_and_relse.thread:                         ; preds = %if.then109, %if.then98.discard_and_relse.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req_stolen) #13
  call fastcc void @sk_drops_add(ptr noundef %sk.1, ptr noundef %skb)
  br label %if.then263

cleanup:                                          ; preds = %if.then100, %if.then87
  %hdr.2 = phi ptr [ %hdr.1557, %if.then100 ], [ %hdr.0, %if.then87 ]
  %th.2 = phi ptr [ %th.1558, %if.then100 ], [ %th.0, %if.then87 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req_stolen) #13
  br label %lookup

if.end114:                                        ; preds = %cleanup.thread570, %if.end58.if.end114_crit_edge
  %refcounted.4 = phi i8 [ 1, %cleanup.thread570 ], [ %refcounted.2.lcssa, %if.end58.if.end114_crit_edge ]
  %sk.3 = phi ptr [ %sk.1, %cleanup.thread570 ], [ %sk.0.lcssa648, %if.end58.if.end114_crit_edge ]
  %hdr.3 = phi ptr [ %add.ptr.i.i485, %cleanup.thread570 ], [ %hdr.0, %if.end58.if.end114_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ip6_min_hopcount, ptr blockaddress(@tcp_v6_rcv, %if.then124)) #13
          to label %if.end161 [label %if.then124], !srcloc !120

if.then124:                                       ; preds = %if.end114
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %hdr.3, i32 0, i32 4
  %147 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %hop_limit, align 1
  %min_hopcount = getelementptr i8, ptr %sk.3, i32 2396
  %149 = ptrtoint ptr %min_hopcount to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load volatile i8, ptr %min_hopcount, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %148, i8 %150)
  %cmp132 = icmp ult i8 %148, %150
  br i1 %cmp132, label %if.then134, label %if.then124.if.end161_crit_edge

if.then124.if.end161_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161

if.then134:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #15
  %net_statistics = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 3
  %151 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %net_statistics, align 4
  %arrayidx149 = getelementptr [126 x i32], ptr %152, i32 0, i32 70
  %153 = ptrtoint ptr %arrayidx149 to i32
  %154 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %cpu, align 4
  %arrayidx153 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %155
  %156 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx153, align 4
  %add154 = add i32 %157, %153
  %158 = inttoptr i32 %add154 to ptr
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %add155 = add i32 %160, 1
  store i32 %add155, ptr %158, align 4
  br label %discard_and_relse

if.end161:                                        ; preds = %if.then124.if.end161_crit_edge, %if.end114
  %call162 = call fastcc i32 @xfrm6_policy_check(ptr noundef %sk.3, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end161.discard_and_relse_crit_edge, label %if.end165

if.end161.discard_and_relse_crit_edge:            ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_and_relse

if.end165:                                        ; preds = %if.end161
  %call166 = call fastcc zeroext i1 @tcp_v6_inbound_md5_hash(ptr noundef %sk.3, ptr noundef %skb, i32 noundef %cond.i, i32 noundef %retval.0.i437)
  br i1 %call166, label %if.end165.discard_and_relse_crit_edge, label %if.end168

if.end165.discard_and_relse_crit_edge:            ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_and_relse

if.end168:                                        ; preds = %if.end165
  %call169 = call i32 @tcp_filter(ptr noundef %sk.3, ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end172, label %if.end168.discard_and_relse_crit_edge

if.end168.discard_and_relse_crit_edge:            ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_and_relse

if.end172:                                        ; preds = %if.end168
  %161 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %data, align 4
  %163 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %head.i.i, align 8
  %165 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i490 = zext i16 %166 to i32
  %add.ptr.i.i491 = getelementptr i8, ptr %164, i32 %conv.i.i490
  call fastcc void @tcp_v6_fill_cb(ptr noundef %skb, ptr noundef %add.ptr.i.i491, ptr noundef %162)
  %167 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %9, align 8
  %skc_state176 = getelementptr inbounds %struct.sock_common, ptr %sk.3, i32 0, i32 4
  %168 = ptrtoint ptr %skc_state176 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load volatile i8, ptr %skc_state176, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %169)
  %cmp178 = icmp eq i8 %169, 10
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #15
  %call181 = call i32 @tcp_v6_do_rcv(ptr noundef %sk.3, ptr noundef %skb)
  br label %put_and_return

if.end182:                                        ; preds = %if.end172
  %170 = call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i.i492 = and i32 %170, -16384
  %171 = inttoptr i32 %and.i.i492 to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 3
  %172 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cpu1.i, align 4
  %174 = getelementptr inbounds %struct.sock_common, ptr %sk.3, i32 0, i32 18
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %174, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %173)
  %cmp.not.i493 = icmp eq i32 %176, %173
  br i1 %cmp.not.i493, label %if.end182.sk_incoming_cpu_update.exit_crit_edge, label %do.body7.i, !prof !125

if.end182.sk_incoming_cpu_update.exit_crit_edge:  ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_incoming_cpu_update.exit

do.body7.i:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #15
  %177 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile i32 %173, ptr %174, align 8
  br label %sk_incoming_cpu_update.exit

sk_incoming_cpu_update.exit:                      ; preds = %do.body7.i, %if.end182.sk_incoming_cpu_update.exit_crit_edge
  %defer_list.i = getelementptr inbounds %struct.sock, ptr %sk.3, i32 0, i32 10
  %178 = ptrtoint ptr %defer_list.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile ptr, ptr %defer_list.i, align 4
  %cmp.i.i495 = icmp eq ptr %179, null
  br i1 %cmp.i.i495, label %sk_incoming_cpu_update.exit.sk_defer_free_flush.exit_crit_edge, label %if.end.i496

sk_incoming_cpu_update.exit.sk_defer_free_flush.exit_crit_edge: ; preds = %sk_incoming_cpu_update.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_defer_free_flush.exit

if.end.i496:                                      ; preds = %sk_incoming_cpu_update.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sk_defer_free_flush(ptr noundef %sk.3) #13
  br label %sk_defer_free_flush.exit

sk_defer_free_flush.exit:                         ; preds = %if.end.i496, %sk_incoming_cpu_update.exit.sk_defer_free_flush.exit_crit_edge
  %sk_lock = getelementptr inbounds %struct.sock, ptr %sk.3, i32 0, i32 4
  call void @_raw_spin_lock_nested(ptr noundef %sk_lock, i32 noundef 1) #13
  call fastcc void @tcp_segs_in(ptr noundef %sk.3, ptr noundef %skb)
  %call188 = call fastcc zeroext i1 @sock_owned_by_user(ptr noundef %sk.3)
  br i1 %call188, label %if.else191, label %if.then189

if.then189:                                       ; preds = %sk_defer_free_flush.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call190 = call i32 @tcp_v6_do_rcv(ptr noundef %sk.3, ptr noundef %skb)
  br label %if.end195

if.else191:                                       ; preds = %sk_defer_free_flush.exit
  %call192 = call zeroext i1 @tcp_add_backlog(ptr noundef %sk.3, ptr noundef %skb) #13
  br i1 %call192, label %if.else191.discard_and_relse_crit_edge, label %if.else191.if.end195_crit_edge

if.else191.if.end195_crit_edge:                   ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end195

if.else191.discard_and_relse_crit_edge:           ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_and_relse

if.end195:                                        ; preds = %if.else191.if.end195_crit_edge, %if.then189
  %ret.0 = phi i32 [ 0, %if.else191.if.end195_crit_edge ], [ %call190, %if.then189 ]
  call void @_raw_spin_unlock(ptr noundef %sk_lock) #13
  br label %put_and_return

put_and_return:                                   ; preds = %if.end195, %if.then180
  %ret.1 = phi i32 [ %call181, %if.then180 ], [ %ret.0, %if.end195 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %refcounted.4)
  %tobool198.not = icmp eq i8 %refcounted.4, 0
  br i1 %tobool198.not, label %put_and_return.if.end200_crit_edge, label %if.then199

put_and_return.if.end200_crit_edge:               ; preds = %put_and_return
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end200

if.then199:                                       ; preds = %put_and_return
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @sock_put(ptr noundef %sk.3)
  br label %if.end200

if.end200:                                        ; preds = %if.then199, %put_and_return.if.end200_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool201.not = icmp ne i32 %ret.1, 0
  %cond = sext i1 %tobool201.not to i32
  br label %cleanup296

no_tcp_socket:                                    ; preds = %__inet6_lookup_skb.exit
  %call202 = call fastcc i32 @xfrm6_policy_check(ptr noundef null, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %no_tcp_socket.discard_it_crit_edge, label %if.end205

no_tcp_socket.discard_it_crit_edge:               ; preds = %no_tcp_socket
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_it

if.end205:                                        ; preds = %no_tcp_socket
  call fastcc void @tcp_v6_fill_cb(ptr noundef %skb, ptr noundef %hdr.0, ptr noundef %th.0)
  %call206 = call fastcc zeroext i1 @tcp_checksum_complete(ptr noundef %skb)
  br i1 %call206, label %if.end205.csum_error_crit_edge, label %if.else260

if.end205.csum_error_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #15
  br label %csum_error

csum_error:                                       ; preds = %if.then271, %if.end205.csum_error_crit_edge, %cleanup.thread576, %if.end41.csum_error_crit_edge
  call fastcc void @trace_tcp_bad_csum(ptr noundef %skb)
  %180 = ptrtoint ptr %tcp_statistics to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %tcp_statistics, align 4
  %arrayidx223 = getelementptr [16 x i32], ptr %181, i32 0, i32 15
  %182 = ptrtoint ptr %arrayidx223 to i32
  %183 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %cpu, align 4
  %arrayidx227 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %184
  %185 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx227, align 4
  %add228 = add i32 %186, %182
  %187 = inttoptr i32 %add228 to ptr
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %add229 = add i32 %189, 1
  store i32 %add229, ptr %187, align 4
  br label %bad_packet

bad_packet:                                       ; preds = %csum_error, %if.end20.bad_packet_crit_edge
  %190 = ptrtoint ptr %tcp_statistics to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %tcp_statistics, align 4
  %arrayidx249 = getelementptr [16 x i32], ptr %191, i32 0, i32 13
  %192 = ptrtoint ptr %arrayidx249 to i32
  %193 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %cpu, align 4
  %arrayidx253 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %194
  %195 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx253, align 4
  %add254 = add i32 %196, %192
  %197 = inttoptr i32 %add254 to ptr
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %197, align 4
  %add255 = add i32 %199, 1
  store i32 %add255, ptr %197, align 4
  br label %discard_it

if.else260:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #15
  call void @tcp_v6_send_reset(ptr noundef null, ptr noundef %skb)
  br label %discard_it

discard_it:                                       ; preds = %sw.bb293, %sw.bb292, %if.end273.discard_it_crit_edge, %if.then267, %if.then263, %discard_and_relse.discard_it_crit_edge, %if.else260, %bad_packet, %no_tcp_socket.discard_it_crit_edge, %cleanup.thread582, %pskb_may_pull.exit453.discard_it_crit_edge, %if.end.i447.discard_it_crit_edge, %pskb_may_pull.exit.discard_it_crit_edge, %if.end.i.discard_it_crit_edge, %inet6_sdif.exit.discard_it_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup296

discard_and_relse:                                ; preds = %if.else191.discard_and_relse_crit_edge, %if.end168.discard_and_relse_crit_edge, %if.end165.discard_and_relse_crit_edge, %if.end161.discard_and_relse_crit_edge, %if.then134
  call fastcc void @sk_drops_add(ptr noundef %sk.3, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %refcounted.4)
  %tobool262.not = icmp eq i8 %refcounted.4, 0
  br i1 %tobool262.not, label %discard_and_relse.discard_it_crit_edge, label %discard_and_relse.if.then263_crit_edge

discard_and_relse.if.then263_crit_edge:           ; preds = %discard_and_relse
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then263

discard_and_relse.discard_it_crit_edge:           ; preds = %discard_and_relse
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_it

if.then263:                                       ; preds = %discard_and_relse.if.then263_crit_edge, %discard_and_relse.thread
  %sk.4592 = phi ptr [ %sk.1, %discard_and_relse.thread ], [ %sk.3, %discard_and_relse.if.then263_crit_edge ]
  call fastcc void @sock_put(ptr noundef %sk.4592)
  br label %discard_it

do_time_wait:                                     ; preds = %cleanup289.do_time_wait_crit_edge, %do_time_wait.lr.ph
  %sk.0651 = phi ptr [ %retval.0.i481696, %do_time_wait.lr.ph ], [ %call283, %cleanup289.do_time_wait_crit_edge ]
  %call265 = call fastcc i32 @xfrm6_policy_check(ptr noundef null, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.then267, label %if.end269

if.then267:                                       ; preds = %do_time_wait
  call void @__sanitizer_cov_trace_pc() #15
  call void @inet_twsk_put(ptr noundef nonnull %sk.0651) #13
  br label %discard_it

if.end269:                                        ; preds = %do_time_wait
  %200 = call ptr @memcpy(ptr %84, ptr %cb.i440, i32 24)
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !165
  %201 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %seq.i, align 4
  %203 = ptrtoint ptr %cb.i440 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %cb.i440, align 8
  %204 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %bf.load.i498 = load i16, ptr %doff.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i498, 1
  %bf.clear.i = and i16 %bf.lshr.i, 1
  %conv.i = zext i16 %bf.clear.i to i32
  %bf.clear9.i = and i16 %bf.load.i498, 1
  %conv10.i = zext i16 %bf.clear9.i to i32
  %205 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %len.i.i, align 4
  %207 = lshr i16 %bf.load.i498, 10
  %208 = and i16 %207, 60
  %mul.i500 = zext i16 %208 to i32
  %add.i = add i32 %206, %202
  %add11.i = add i32 %add.i, %conv10.i
  %add12.i = add i32 %add11.i, %conv.i
  %sub.i501 = sub i32 %add12.i, %mul.i500
  %209 = ptrtoint ptr %end_seq.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %sub.i501, ptr %end_seq.i, align 4
  %210 = ptrtoint ptr %ack_seq.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %ack_seq.i, align 4
  %212 = ptrtoint ptr %flags.i438 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %flags.i438, align 8
  %213 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx21.i, align 1
  %215 = ptrtoint ptr %tcp_flags.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %tcp_flags.i, align 4
  %216 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %85, align 8
  %217 = ptrtoint ptr %hdr.0 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %hdr.0, align 2
  %219 = lshr i16 %218, 4
  %conv1.i.i = trunc i16 %219 to i8
  %220 = ptrtoint ptr %ip_dsfield.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv1.i.i, ptr %ip_dsfield.i, align 2
  %221 = ptrtoint ptr %sacked.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %sacked.i, align 1
  %222 = ptrtoint ptr %86 to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %86, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %223)
  %tobool.not.i502 = icmp eq i64 %223, 0
  br i1 %tobool.not.i502, label %lor.rhs.i, label %if.end269.tcp_v6_fill_cb.exit_crit_edge

if.end269.tcp_v6_fill_cb.exit_crit_edge:          ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcp_v6_fill_cb.exit

lor.rhs.i:                                        ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #15
  %224 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %225, i32 0, i32 7
  %226 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %hwtstamps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %227)
  %tobool31.not.i = icmp eq i64 %227, 0
  %phi.sel.i = select i1 %tobool31.not.i, i8 0, i8 32
  br label %tcp_v6_fill_cb.exit

tcp_v6_fill_cb.exit:                              ; preds = %lor.rhs.i, %if.end269.tcp_v6_fill_cb.exit_crit_edge
  %228 = phi i8 [ 32, %if.end269.tcp_v6_fill_cb.exit_crit_edge ], [ %phi.sel.i, %lor.rhs.i ]
  %229 = ptrtoint ptr %has_rxtstamp.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %bf.load35.i = load i8, ptr %has_rxtstamp.i, align 1
  %bf.clear36.i = and i8 %bf.load35.i, -33
  %bf.set.i503 = or i8 %bf.clear36.i, %228
  store i8 %bf.set.i503, ptr %has_rxtstamp.i, align 1
  %230 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %230)
  %bf.load.i.i505 = load i16, ptr %pkt_type, align 8
  %bf.lshr.i.i506 = lshr i16 %bf.load.i.i505, 9
  %231 = and i16 %bf.lshr.i.i506, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %231)
  %cmp.i.i507 = icmp ne i16 %231, 1
  %232 = and i16 %bf.load.i.i505, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %232)
  %tobool.not.i.i508 = icmp eq i16 %232, 0
  %or.cond.i.i509 = select i1 %cmp.i.i507, i1 %tobool.not.i.i508, i1 false
  br i1 %or.cond.i.i509, label %lor.rhs.i.i511, label %tcp_v6_fill_cb.exit.if.end273_crit_edge

tcp_v6_fill_cb.exit.if.end273_crit_edge:          ; preds = %tcp_v6_fill_cb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273

lor.rhs.i.i511:                                   ; preds = %tcp_v6_fill_cb.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %231)
  %cmp12.i.i510 = icmp eq i16 %231, 3
  br i1 %cmp12.i.i510, label %skb_csum_unnecessary.exit.i520, label %lor.rhs.i.i511.tcp_checksum_complete.exit_crit_edge

lor.rhs.i.i511.tcp_checksum_complete.exit_crit_edge: ; preds = %lor.rhs.i.i511
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcp_checksum_complete.exit

skb_csum_unnecessary.exit.i520:                   ; preds = %lor.rhs.i.i511
  %233 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %87, align 8
  %conv.i.i.i512 = zext i16 %234 to i32
  %235 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %data, align 4
  %237 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i515 = ptrtoint ptr %236 to i32
  %sub.ptr.rhs.cast.i.i.i.i516 = ptrtoint ptr %238 to i32
  %sub.ptr.sub.i.neg.i.i.i517 = sub i32 %conv.i.i.i512, %sub.ptr.lhs.cast.i.i.i.i515
  %sub.i.i.i518 = add i32 %sub.ptr.sub.i.neg.i.i.i517, %sub.ptr.rhs.cast.i.i.i.i516
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i518)
  %tobool.not.i519 = icmp slt i32 %sub.i.i.i518, 0
  br i1 %tobool.not.i519, label %skb_csum_unnecessary.exit.i520.tcp_checksum_complete.exit_crit_edge, label %skb_csum_unnecessary.exit.i520.if.end273_crit_edge

skb_csum_unnecessary.exit.i520.if.end273_crit_edge: ; preds = %skb_csum_unnecessary.exit.i520
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273

skb_csum_unnecessary.exit.i520.tcp_checksum_complete.exit_crit_edge: ; preds = %skb_csum_unnecessary.exit.i520
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcp_checksum_complete.exit

tcp_checksum_complete.exit:                       ; preds = %skb_csum_unnecessary.exit.i520.tcp_checksum_complete.exit_crit_edge, %lor.rhs.i.i511.tcp_checksum_complete.exit_crit_edge
  %call1.i = call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %tobool2.i.not = icmp eq i16 %call1.i, 0
  br i1 %tobool2.i.not, label %tcp_checksum_complete.exit.if.end273_crit_edge, label %if.then271

tcp_checksum_complete.exit.if.end273_crit_edge:   ; preds = %tcp_checksum_complete.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273

if.then271:                                       ; preds = %tcp_checksum_complete.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @inet_twsk_put(ptr noundef nonnull %sk.0651) #13
  br label %csum_error

if.end273:                                        ; preds = %tcp_checksum_complete.exit.if.end273_crit_edge, %skb_csum_unnecessary.exit.i520.if.end273_crit_edge, %tcp_v6_fill_cb.exit.if.end273_crit_edge
  %call275 = call i32 @tcp_timewait_state_process(ptr noundef nonnull %sk.0651, ptr noundef %skb, ptr noundef %th.0) #13
  %239 = zext i32 %call275 to i64
  call void @__sanitizer_cov_trace_switch(i64 %239, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call275, label %if.end273.discard_it_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %if.end273.sw.bb292_crit_edge
    i32 1, label %sw.bb293
  ]

if.end273.sw.bb292_crit_edge:                     ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb292

if.end273.discard_it_crit_edge:                   ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_it

sw.bb:                                            ; preds = %if.end273
  %240 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %9, align 8
  %nd_net.i521 = getelementptr inbounds %struct.net_device, ptr %241, i32 0, i32 127
  %242 = ptrtoint ptr %nd_net.i521 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %nd_net.i521, align 4
  %244 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %bf.load.i523 = load i16, ptr %doff.i, align 4
  %245 = lshr i16 %bf.load.i523, 10
  %246 = and i16 %245, 60
  %mul.i524 = zext i16 %246 to i32
  %247 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %head.i.i, align 8
  %249 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i527 = zext i16 %250 to i32
  %add.ptr.i.i528 = getelementptr i8, ptr %248, i32 %conv.i.i527
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i528, i32 0, i32 5
  %251 = ptrtoint ptr %th.0 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %th.0, align 4
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i528, i32 0, i32 6
  %253 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %dest, align 2
  %255 = ptrtoint ptr %flags.i533 to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %flags.i533, align 8
  %257 = and i16 %256, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %257)
  %tobool.i.not.i534 = icmp eq i16 %257, 0
  %cond.in.i536 = select i1 %tobool.i.not.i534, ptr %84, ptr %skb_iif.i
  %258 = ptrtoint ptr %cond.in.i536 to i32
  call void @__asan_load4_noabort(i32 %258)
  %cond.i537 = load i32, ptr %cond.in.i536, align 8
  %call283 = call ptr @inet6_lookup_listener(ptr noundef %243, ptr noundef nonnull @tcp_hashinfo, ptr noundef %skb, i32 noundef %mul.i524, ptr noundef %saddr, i16 noundef zeroext %252, ptr noundef %daddr, i16 noundef zeroext %254, i32 noundef %cond.i537, i32 noundef %retval.0.i437) #13
  %tobool284.not = icmp eq ptr %call283, null
  br i1 %tobool284.not, label %sw.bb.sw.bb292_crit_edge, label %cleanup289

sw.bb.sw.bb292_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb292

cleanup289:                                       ; preds = %sw.bb
  call void @inet_twsk_deschedule_put(ptr noundef nonnull %sk.0651) #13
  %259 = call ptr @memcpy(ptr %cb.i440, ptr %84, i32 24)
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call283, i32 0, i32 4
  %260 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load volatile i8, ptr %skc_state, align 2
  %cmp55 = icmp eq i8 %261, 6
  br i1 %cmp55, label %cleanup289.do_time_wait_crit_edge, label %cleanup289.if.end58_crit_edge

cleanup289.if.end58_crit_edge:                    ; preds = %cleanup289
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

cleanup289.do_time_wait_crit_edge:                ; preds = %cleanup289
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_time_wait

sw.bb292:                                         ; preds = %sw.bb.sw.bb292_crit_edge, %if.end273.sw.bb292_crit_edge
  call fastcc void @tcp_v6_timewait_ack(ptr noundef nonnull %sk.0651, ptr noundef %skb)
  br label %discard_it

sw.bb293:                                         ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #15
  call void @tcp_v6_send_reset(ptr noundef nonnull %sk.0651, ptr noundef %skb)
  call void @inet_twsk_deschedule_put(ptr noundef nonnull %sk.0651) #13
  br label %discard_it

cleanup296:                                       ; preds = %discard_it, %if.end200, %cleanup.thread564
  %retval.2 = phi i32 [ 0, %discard_it ], [ %cond, %if.end200 ], [ 0, %cleanup.thread564 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_v6_err(ptr noundef %skb, ptr nocapture noundef readnone %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #1 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #13
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %err, align 4, !annotation !139
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %1, i32 0, i32 6
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 1
  %8 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dest, align 2
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex, align 4
  %tobool.not.i = icmp eq ptr %skb, null
  br i1 %tobool.not.i, label %entry.inet6_sdif.exit_crit_edge, label %land.lhs.true.i

entry.inet6_sdif.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sdif.exit

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags.i, align 8
  %16 = and i16 %15, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.i.not.i = icmp eq i16 %16, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.inet6_sdif.exit_crit_edge, label %if.then.i

land.lhs.true.i.inet6_sdif.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sdif.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %17 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cb.i, align 8
  br label %inet6_sdif.exit

inet6_sdif.exit:                                  ; preds = %if.then.i, %land.lhs.true.i.inet6_sdif.exit_crit_edge, %entry.inet6_sdif.exit_crit_edge
  %retval.0.i357 = phi i32 [ %18, %if.then.i ], [ 0, %land.lhs.true.i.inet6_sdif.exit_crit_edge ], [ 0, %entry.inet6_sdif.exit_crit_edge ]
  %call3 = tail call ptr @__inet6_lookup_established(ptr noundef %6, ptr noundef nonnull @tcp_hashinfo, ptr noundef %daddr, i16 noundef zeroext %9, ptr noundef %saddr, i16 noundef zeroext %11, i32 noundef %13, i32 noundef %retval.0.i357) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then, label %if.end24

if.then:                                          ; preds = %inet6_sdif.exit
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 80
  %21 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call.i, label %if.then.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.then.__in6_dev_get.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %call2.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i358 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i358, label %land.lhs.true.i359, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

land.lhs.true.i359:                               ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i359.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i359.__in6_dev_get.exit_crit_edge:  ; preds = %land.lhs.true.i359
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i359
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i360

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

if.then.i360:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 313, ptr noundef nonnull @.str.5) #13
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i360, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i359.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.then.__in6_dev_get.exit_crit_edge
  %cmp.not = icmp eq ptr %22, null
  br i1 %cmp.not, label %__in6_dev_get.exit.if.end_crit_edge, label %if.then7, !prof !121

__in6_dev_get.exit.if.end_crit_edge:              ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then7:                                         ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %icmpv6dev = getelementptr inbounds %struct.inet6_dev, ptr %22, i32 0, i32 33, i32 2
  %23 = ptrtoint ptr %icmpv6dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %icmpv6dev, align 4
  %arrayidx = getelementptr [6 x %struct.atomic_t], ptr %24, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #13
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #13, !srcloc !137
  br label %if.end

if.end:                                           ; preds = %if.then7, %__in6_dev_get.exit.if.end_crit_edge
  %icmpv6_statistics = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 30, i32 13
  %26 = ptrtoint ptr %icmpv6_statistics to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %icmpv6_statistics, align 4
  %arrayidx15 = getelementptr [6 x i32], ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx15 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu, align 4
  %arrayidx18 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx18, align 4
  %add = add i32 %34, %28
  %35 = inttoptr i32 %add to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add19 = add i32 %37, 1
  store i32 %add19, ptr %35, align 4
  br label %cleanup270

if.end24:                                         ; preds = %inet6_sdif.exit
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call3, i32 0, i32 4
  %38 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %39)
  %cmp25 = icmp eq i8 %39, 6
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @inet_twsk_put(ptr noundef nonnull %call3) #13
  br label %cleanup270

if.end29:                                         ; preds = %if.end24
  %seq30 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 2
  %40 = ptrtoint ptr %seq30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %seq30, align 4
  %call31 = call i32 @icmpv6_err_convert(i8 noundef zeroext %type, i8 noundef zeroext %code, ptr noundef nonnull %err) #13
  %42 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %43)
  %cmp36 = icmp eq i8 %43, 12
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32 = icmp ne i32 %call31, 0
  call void @tcp_req_err(ptr noundef nonnull %call3, i32 noundef %41, i1 noundef zeroext %tobool32) #13
  br label %cleanup270

if.end40:                                         ; preds = %if.end29
  %sk_lock = getelementptr inbounds %struct.sock, ptr %call3, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %sk_lock) #13
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %call3, i32 0, i32 4, i32 3
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %if.end40.sock_owned_by_user.exit_crit_edge

if.end40.sock_owned_by_user.exit_crit_edge:       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.end40
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %call3, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %44 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !125

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1750, i32 noundef 9, ptr noundef null) #13
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %if.end40.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %call3, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not = icmp eq i32 %46, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type)
  %cmp44.not = icmp eq i8 %type, 2
  %or.cond = or i1 %cmp44.not, %tobool.i.not
  br i1 %or.cond, label %sock_owned_by_user.exit.if.end72_crit_edge, label %if.then46

sock_owned_by_user.exit.if.end72_crit_edge:       ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then46:                                        ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %net_statistics = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 30, i32 3
  %47 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net_statistics, align 4
  %arrayidx61 = getelementptr [126 x i32], ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %arrayidx61 to i32
  %50 = call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i361 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i361 to ptr
  %cpu64 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu64, align 4
  %arrayidx65 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx65, align 4
  %add66 = add i32 %55, %49
  %56 = inttoptr i32 %add66 to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add67 = add i32 %58, 1
  store i32 %add67, ptr %56, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then46, %sock_owned_by_user.exit.if.end72_crit_edge
  %59 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %60)
  %cmp76 = icmp eq i8 %60, 7
  br i1 %cmp76, label %if.end72.out_crit_edge, label %if.end79

if.end72.out_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end79:                                         ; preds = %if.end72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ip6_min_hopcount, ptr blockaddress(@tcp_v6_err, %if.then90)) #13
          to label %if.end129 [label %if.then90], !srcloc !120

if.then90:                                        ; preds = %if.end79
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %61 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %63 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %64 to i32
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 %conv.i.i
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %hop_limit, align 1
  %min_hopcount = getelementptr i8, ptr %call3, i32 2396
  %67 = ptrtoint ptr %min_hopcount to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load volatile i8, ptr %min_hopcount, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %68)
  %cmp99 = icmp ult i8 %66, %68
  br i1 %cmp99, label %if.then101, label %if.then90.if.end129_crit_edge

if.then90.if.end129_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129

if.then101:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  %net_statistics115 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 30, i32 3
  %69 = ptrtoint ptr %net_statistics115 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net_statistics115, align 4
  %arrayidx117 = getelementptr [126 x i32], ptr %70, i32 0, i32 70
  %71 = ptrtoint ptr %arrayidx117 to i32
  %72 = call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i362 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i362 to ptr
  %cpu120 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %cpu120 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu120, align 4
  %arrayidx121 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx121, align 4
  %add122 = add i32 %77, %71
  %78 = inttoptr i32 %add122 to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %add123 = add i32 %80, 1
  store i32 %add123, ptr %78, align 4
  br label %out

if.end129:                                        ; preds = %if.then90.if.end129_crit_edge, %if.end79
  %fastopen_rsk = getelementptr inbounds %struct.tcp_sock, ptr %call3, i32 0, i32 120
  %81 = ptrtoint ptr %fastopen_rsk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %fastopen_rsk, align 4
  %call136 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %land.lhs.true138, label %if.end129.do.end146_crit_edge

if.end129.do.end146_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end146

land.lhs.true138:                                 ; preds = %if.end129
  %call139 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %land.lhs.true138.do.end146_crit_edge, label %land.lhs.true141

land.lhs.true138.do.end146_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end146

land.lhs.true141:                                 ; preds = %land.lhs.true138
  %.b353 = load i1, ptr @tcp_v6_err.__warned, align 1
  br i1 %.b353, label %land.lhs.true141.do.end146_crit_edge, label %if.then143

land.lhs.true141.do.end146_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end146

if.then143:                                       ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tcp_v6_err.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 427, ptr noundef nonnull @.str.5) #13
  br label %do.end146

do.end146:                                        ; preds = %if.then143, %land.lhs.true141.do.end146_crit_edge, %land.lhs.true138.do.end146_crit_edge, %if.end129.do.end146_crit_edge
  %tobool148.not = icmp eq ptr %82, null
  %snt_isn = getelementptr inbounds %struct.tcp_request_sock, ptr %82, i32 0, i32 8
  %snd_una150 = getelementptr inbounds %struct.tcp_sock, ptr %call3, i32 0, i32 16
  %cond.in = select i1 %tobool148.not, ptr %snd_una150, ptr %snt_isn
  %83 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %83)
  %cond = load i32, ptr %cond.in, align 4
  %84 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %85)
  %cmp154.not = icmp eq i8 %85, 10
  br i1 %cmp154.not, label %do.end146.if.end185_crit_edge, label %land.lhs.true156

do.end146.if.end185_crit_edge:                    ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

land.lhs.true156:                                 ; preds = %do.end146
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %call3, i32 0, i32 10
  %86 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %snd_nxt, align 4
  %sub.i = sub i32 %87, %cond
  %sub1.i = sub i32 %41, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub1.i)
  %cmp.i.not = icmp ult i32 %sub.i, %sub1.i
  br i1 %cmp.i.not, label %if.then158, label %land.lhs.true156.if.end185_crit_edge

land.lhs.true156.if.end185_crit_edge:             ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.then158:                                       ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #15
  %net_statistics172 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 30, i32 3
  %88 = ptrtoint ptr %net_statistics172 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %net_statistics172, align 4
  %arrayidx174 = getelementptr [126 x i32], ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %arrayidx174 to i32
  %91 = call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i363 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i363 to ptr
  %cpu177 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %cpu177 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cpu177, align 4
  %arrayidx178 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx178, align 4
  %add179 = add i32 %96, %90
  %97 = inttoptr i32 %add179 to ptr
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %add180 = add i32 %99, 1
  store i32 %add180, ptr %97, align 4
  br label %out

if.end185:                                        ; preds = %land.lhs.true156.if.end185_crit_edge, %do.end146.if.end185_crit_edge
  %100 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %type, label %if.end233 [
    i8 -119, label %if.then190
    i8 2, label %if.then202
  ]

if.then190:                                       ; preds = %if.end185
  %call191 = call fastcc zeroext i1 @sock_owned_by_user(ptr noundef nonnull %call3)
  br i1 %call191, label %if.then190.out_crit_edge, label %if.then192

if.then190.out_crit_edge:                         ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then192:                                       ; preds = %if.then190
  %dst_cookie = getelementptr i8, ptr %call3, i32 2404
  %101 = ptrtoint ptr %dst_cookie to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dst_cookie, align 4
  %call193 = call ptr @__sk_dst_check(ptr noundef nonnull %call3, i32 noundef %102) #13
  %tobool194.not = icmp eq ptr %call193, null
  br i1 %tobool194.not, label %if.then192.out_crit_edge, label %if.then195

if.then192.out_crit_edge:                         ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then195:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #15
  %ops = getelementptr inbounds %struct.dst_entry, ptr %call193, i32 0, i32 1
  %103 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops, align 4
  %redirect = getelementptr inbounds %struct.dst_ops, ptr %104, i32 0, i32 12
  %105 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %redirect, align 16
  call void %106(ptr noundef nonnull %call193, ptr noundef nonnull %call3, ptr noundef %skb) #13
  br label %out

if.then202:                                       ; preds = %if.end185
  %107 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %108)
  %cmp206 = icmp eq i8 %108, 10
  br i1 %cmp206, label %if.then202.out_crit_edge, label %if.end209

if.then202.out_crit_edge:                         ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end209:                                        ; preds = %if.then202
  %call210 = call fastcc zeroext i1 @ip6_sk_accept_pmtu(ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %info)
  %cmp213 = icmp ugt i32 %info, 1279
  %109 = and i1 %cmp213, %call210
  br i1 %109, label %do.body221, label %if.end209.out_crit_edge

if.end209.out_crit_edge:                          ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body221:                                       ; preds = %if.end209
  %mtu_info = getelementptr inbounds %struct.tcp_sock, ptr %call3, i32 0, i32 114
  %110 = ptrtoint ptr %mtu_info to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile i32 %info, ptr %mtu_info, align 8
  %call226 = call fastcc zeroext i1 @sock_owned_by_user(ptr noundef nonnull %call3)
  br i1 %call226, label %if.else, label %if.then227

if.then227:                                       ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #15
  call void @tcp_v6_mtu_reduced(ptr noundef nonnull %call3)
  br label %out

if.else:                                          ; preds = %do.body221
  %sk_tsq_flags = getelementptr inbounds %struct.sock, ptr %call3, i32 0, i32 24
  %call228 = call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %sk_tsq_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.then230, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then230:                                       ; preds = %if.else
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call3, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #13
  %111 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #13, !srcloc !124
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %111, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then230.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !121

if.then230.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then230
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %112 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %.not.i.i.i.i = icmp sgt i32 %112, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.out_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !125

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.out_crit_edge:                    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then230.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then230.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %out

if.end233:                                        ; preds = %if.end185
  %113 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load volatile i8, ptr %skc_state, align 2
  %115 = zext i8 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %114, label %sw.default [
    i8 2, label %if.end233.sw.bb_crit_edge
    i8 3, label %if.end233.sw.bb_crit_edge370
    i8 10, label %if.end233.sw.epilog_crit_edge
  ]

if.end233.sw.epilog_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end233.sw.bb_crit_edge370:                     ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end233.sw.bb_crit_edge:                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %if.end233.sw.bb_crit_edge, %if.end233.sw.bb_crit_edge370
  br i1 %tobool148.not, label %sw.bb.if.end242_crit_edge, label %land.lhs.true238

sw.bb.if.end242_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242

land.lhs.true238:                                 ; preds = %sw.bb
  %sk239 = getelementptr inbounds %struct.request_sock, ptr %82, i32 0, i32 8
  %116 = ptrtoint ptr %sk239 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sk239, align 8
  %tobool240.not = icmp eq ptr %117, null
  br i1 %tobool240.not, label %land.lhs.true238.sw.epilog_crit_edge, label %land.lhs.true238.if.end242_crit_edge

land.lhs.true238.if.end242_crit_edge:             ; preds = %land.lhs.true238
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242

land.lhs.true238.sw.epilog_crit_edge:             ; preds = %land.lhs.true238
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end242:                                        ; preds = %land.lhs.true238.if.end242_crit_edge, %sw.bb.if.end242_crit_edge
  %118 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %err, align 4
  %120 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %dest, align 2
  call void @ipv6_icmp_error(ptr noundef nonnull %call3, ptr noundef %skb, i32 noundef %119, i16 noundef zeroext %121, i32 noundef %info, ptr noundef %add.ptr) #13
  %call244 = call fastcc zeroext i1 @sock_owned_by_user(ptr noundef nonnull %call3)
  %122 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %err, align 4
  br i1 %call244, label %if.else246, label %if.then245

if.then245:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  %sk_err = getelementptr inbounds %struct.sock, ptr %call3, i32 0, i32 51
  %124 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %sk_err, align 4
  call void @sk_error_report(ptr noundef nonnull %call3) #13
  call void @tcp_done(ptr noundef nonnull %call3) #13
  br label %out

if.else246:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  %sk_err_soft = getelementptr inbounds %struct.sock, ptr %call3, i32 0, i32 52
  %125 = ptrtoint ptr %sk_err_soft to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %123, ptr %sk_err_soft, align 8
  br label %out

sw.default:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp251 = icmp eq i8 %type, 1
  %or.cond354 = and i1 %cmp251, %tobool148.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %code)
  %cmp255 = icmp eq i8 %code, 0
  %or.cond355 = and i1 %cmp255, %or.cond354
  br i1 %or.cond355, label %if.then257, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then257:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  call void @tcp_ld_RTO_revert(ptr noundef nonnull %call3, i32 noundef %41) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then257, %sw.default.sw.epilog_crit_edge, %land.lhs.true238.sw.epilog_crit_edge, %if.end233.sw.epilog_crit_edge
  %call259 = call fastcc zeroext i1 @sock_owned_by_user(ptr noundef nonnull %call3)
  br i1 %call259, label %sw.epilog.if.else265_crit_edge, label %land.lhs.true260

sw.epilog.if.else265_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else265

land.lhs.true260:                                 ; preds = %sw.epilog
  %recverr = getelementptr i8, ptr %call3, i32 2394
  %126 = ptrtoint ptr %recverr to i32
  call void @__asan_load2_noabort(i32 %126)
  %bf.load = load i16, ptr %recverr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool262.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool262.not, label %land.lhs.true260.if.else265_crit_edge, label %if.then263

land.lhs.true260.if.else265_crit_edge:            ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else265

if.then263:                                       ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #15
  %127 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %err, align 4
  %sk_err264 = getelementptr inbounds %struct.sock, ptr %call3, i32 0, i32 51
  %129 = ptrtoint ptr %sk_err264 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %sk_err264, align 4
  call void @sk_error_report(ptr noundef nonnull %call3) #13
  br label %out

if.else265:                                       ; preds = %land.lhs.true260.if.else265_crit_edge, %sw.epilog.if.else265_crit_edge
  %130 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %err, align 4
  %sk_err_soft266 = getelementptr inbounds %struct.sock, ptr %call3, i32 0, i32 52
  %132 = ptrtoint ptr %sk_err_soft266 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %sk_err_soft266, align 8
  br label %out

out:                                              ; preds = %if.else265, %if.then263, %if.else246, %if.then245, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.out_crit_edge, %if.else.out_crit_edge, %if.then227, %if.end209.out_crit_edge, %if.then202.out_crit_edge, %if.then195, %if.then192.out_crit_edge, %if.then190.out_crit_edge, %if.then158, %if.then101, %if.end72.out_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sk_lock) #13
  %skc_refcnt.i365 = getelementptr inbounds %struct.sock_common, ptr %call3, i32 0, i32 19
  %call.i.i.i.i.i.i366 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i365, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i365, i32 1, i32 3, i32 1) #13
  %133 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i365, ptr %skc_refcnt.i365, i32 1, ptr elementtype(i32) %skc_refcnt.i365) #13, !srcloc !156
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %133, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i368, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i367 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i367, label %if.end5.i.i.i.i.cleanup270_crit_edge, label %if.then10.i.i.i.i, !prof !125

if.end5.i.i.i.i.cleanup270_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup270

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i365, i32 noundef 3) #13
  br label %cleanup270

if.then.i368:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !157
  call void @sk_free(ptr noundef nonnull %call3) #13
  br label %cleanup270

cleanup270:                                       ; preds = %if.then.i368, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup270_crit_edge, %if.then38, %if.then27, %if.end
  %retval.0 = phi i32 [ 0, %if.then27 ], [ 0, %if.then38 ], [ -2, %if.end ], [ 0, %if.end5.i.i.i.i.cleanup270_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i368 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet6_lookup_established(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_edemux(ptr noundef) #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_dst_set_noref(ptr nocapture noundef %skb, ptr noundef %dst) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !121

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1043, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool23.not = icmp eq ptr %dst, null
  %slow_gro = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %slow_gro to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %slow_gro, align 2
  %bf.load.mask = and i32 %bf.load, 4096
  %bf.shl = select i1 %tobool23.not, i32 %bf.load.mask, i32 4096
  %bf.clear30 = and i32 %bf.load, -4097
  %bf.set = or i32 %bf.shl, %bf.clear30
  store i32 %bf.set, ptr %slow_gro, align 2
  %1 = ptrtoint ptr %dst to i32
  %or31 = or i32 %1, 1
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or31, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_v6_inbound_md5_hash(ptr noundef %sk, ptr noundef %skb, i32 noundef %dif, i32 noundef %sdif) unnamed_addr #1 align 64 {
entry:
  %newhash = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i235 = zext i16 %5 to i32
  %add.ptr.i.i236 = getelementptr i8, ptr %1, i32 %conv.i.i235
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %newhash) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sdif)
  %tobool.not = icmp eq i32 %sdif, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %dif
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %6 = call ptr @memset(ptr %newhash, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @tcp_md5_needed, ptr blockaddress(@tcp_v6_inbound_md5_hash, %if.end.i.i)) #13
          to label %tcp_v6_md5_do_lookup.exit [label %if.end.i.i], !srcloc !120

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i.i = tail call ptr @__tcp_md5_do_lookup(ptr noundef %sk, i32 noundef %spec.select, ptr noundef %saddr, i32 noundef 10) #13
  br label %tcp_v6_md5_do_lookup.exit

tcp_v6_md5_do_lookup.exit:                        ; preds = %if.end.i.i, %entry
  %retval.0.i.i = phi ptr [ %call3.i.i, %if.end.i.i ], [ null, %entry ]
  %call3 = tail call ptr @tcp_parse_md5sig_option(ptr noundef %add.ptr.i.i236) #13
  %tobool4.not = icmp eq ptr %retval.0.i.i, null
  %tobool5.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool4.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %tcp_v6_md5_do_lookup.exit.cleanup_crit_edge, label %if.end

tcp_v6_md5_do_lookup.exit.cleanup_crit_edge:      ; preds = %tcp_v6_md5_do_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %tcp_v6_md5_do_lookup.exit
  %tobool4.not.not = xor i1 %tobool4.not, true
  %or.cond231 = select i1 %tobool4.not.not, i1 %tobool5.not, i1 false
  br i1 %or.cond231, label %do.body10, label %if.end51

do.body10:                                        ; preds = %if.end
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !141
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 30, i32 3
  %10 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %11, i32 0, i32 62
  %12 = ptrtoint ptr %arrayidx to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx25 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx25, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add26 = add i32 %21, 1
  store i32 %add26, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !142
  %and.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool37.not, label %if.then41, label %do.body10.do.end44_crit_edge, !prof !121

do.body10.do.end44_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end44

if.then41:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body10.do.end44_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #13, !srcloc !143
  br label %cleanup

if.end51:                                         ; preds = %if.end
  %or.cond233 = select i1 %tobool4.not.not, i1 true, i1 %tobool5.not
  br i1 %or.cond233, label %if.end119, label %do.body57

do.body57:                                        ; preds = %if.end51
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !141
  %skc_net.i237 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %24 = ptrtoint ptr %skc_net.i237 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_net.i237, align 4
  %net_statistics81 = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 30, i32 3
  %26 = ptrtoint ptr %net_statistics81 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_statistics81, align 4
  %arrayidx83 = getelementptr [126 x i32], ptr %27, i32 0, i32 63
  %28 = ptrtoint ptr %arrayidx83 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i238 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i238 to ptr
  %cpu86 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu86 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu86, align 4
  %arrayidx87 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx87, align 4
  %add88 = add i32 %34, %28
  %35 = inttoptr i32 %add88 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add89 = add i32 %37, 1
  store i32 %add89, ptr %35, align 4
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !142
  %and.i.i239 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i239)
  %tobool100.not = icmp eq i32 %and.i.i239, 0
  br i1 %tobool100.not, label %if.then109, label %do.body57.do.end112_crit_edge, !prof !121

do.body57.do.end112_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end112

if.then109:                                       ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %do.body57.do.end112_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #13, !srcloc !143
  br label %cleanup

if.end119:                                        ; preds = %if.end51
  %call120 = call i32 @tcp_v6_md5_hash_skb(ptr noundef nonnull %newhash, ptr noundef %retval.0.i.i, ptr noundef null, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %lor.lhs.false, label %if.end119.do.body128_crit_edge

if.end119.do.body128_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body128

lor.lhs.false:                                    ; preds = %if.end119
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %call3, ptr noundef nonnull dereferenceable(16) %newhash, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp124.not = icmp eq i32 %bcmp, 0
  br i1 %cmp124.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body128_crit_edge

lor.lhs.false.do.body128_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body128

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body128:                                       ; preds = %lor.lhs.false.do.body128_crit_edge, %if.end119.do.body128_crit_edge
  %39 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !141
  %skc_net.i240 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %40 = ptrtoint ptr %skc_net.i240 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skc_net.i240, align 4
  %net_statistics152 = getelementptr inbounds %struct.net, ptr %41, i32 0, i32 30, i32 3
  %42 = ptrtoint ptr %net_statistics152 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_statistics152, align 4
  %arrayidx154 = getelementptr [126 x i32], ptr %43, i32 0, i32 64
  %44 = ptrtoint ptr %arrayidx154 to i32
  %45 = call i32 @llvm.read_register.i32(metadata !108) #13
  %and.i241 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i241 to ptr
  %cpu157 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu157 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu157, align 4
  %arrayidx158 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx158, align 4
  %add159 = add i32 %50, %44
  %51 = inttoptr i32 %add159 to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add160 = add i32 %53, 1
  store i32 %add160, ptr %51, align 4
  %54 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !142
  %and.i.i242 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i242)
  %tobool171.not = icmp eq i32 %and.i.i242, 0
  br i1 %tobool171.not, label %if.then180, label %do.body128.do.end183_crit_edge, !prof !121

do.body128.do.end183_crit_edge:                   ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end183

if.then180:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end183

do.end183:                                        ; preds = %if.then180, %do.body128.do.end183_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %39) #13, !srcloc !143
  %call191 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %do.end183.cleanup_crit_edge, label %do.end196

do.end183.cleanup_crit_edge:                      ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end196:                                        ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #15
  %cond199 = select i1 %tobool121.not, ptr @.str.25, ptr @.str.24
  %55 = ptrtoint ptr %add.ptr.i.i236 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i.i236, align 4
  %conv201 = zext i16 %56 to i32
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i236, i32 0, i32 1
  %57 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %dest, align 2
  %conv202 = zext i16 %58 to i32
  %call203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %cond199, ptr noundef %saddr, i32 noundef %conv201, ptr noundef %daddr, i32 noundef %conv202, i32 noundef %spec.select) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end196, %do.end183.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end112, %do.end44, %tcp_v6_md5_do_lookup.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end112 ], [ true, %do.end44 ], [ false, %tcp_v6_md5_do_lookup.exit.cleanup_crit_edge ], [ true, %do.end196 ], [ true, %do.end183.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %newhash) #13
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_drops_add(ptr noundef %sk, ptr nocapture noundef readonly %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_segs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  %narrow = select i1 %cmp, i16 1, i16 %3
  %cond = zext i16 %narrow to i32
  %sk_drops = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_drops, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops, ptr %sk_drops, i32 %cond, ptr elementtype(i32) %sk_drops) #13, !srcloc !137
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reqsk_put(ptr noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #13, !srcloc !156
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !125

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #13
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !157
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #13
  %1 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %skc_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i, label %if.then.if.end27.i_crit_edge, label %land.rhs.i

if.then.if.end27.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

land.rhs.i:                                       ; preds = %if.then
  %.b38.i = load i1, ptr @reqsk_free.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.if.end27.i_crit_edge, label %if.then.i, !prof !125

land.rhs.i.if.end27.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @reqsk_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 126, i32 noundef 9, ptr noundef null) #13
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end27.i_crit_edge, %if.then.if.end27.i_crit_edge
  %rsk_ops.i.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 7
  %3 = ptrtoint ptr %rsk_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsk_ops.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.request_sock_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %destructor.i.i, align 4
  tail call void %6(ptr noundef %req) #13
  %7 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end27.i.reqsk_free.exit_crit_edge, label %if.then.i.i

if.end27.i.reqsk_free.exit_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reqsk_free.exit

if.then.i.i:                                      ; preds = %if.end27.i
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #13, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.reqsk_free.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !125

if.end5.i.i.i.i.i.i.reqsk_free.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reqsk_free.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef 3) #13
  br label %reqsk_free.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !157
  tail call void @sk_free(ptr noundef nonnull %9) #13
  br label %reqsk_free.exit

reqsk_free.exit:                                  ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.reqsk_free.exit_crit_edge, %if.end27.i.reqsk_free.exit_crit_edge
  %saved_syn.i.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 9
  %11 = ptrtoint ptr %saved_syn.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %saved_syn.i.i, align 4
  tail call void @kfree(ptr noundef %12) #13
  %13 = ptrtoint ptr %rsk_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rsk_ops.i.i, align 4
  %slab.i.i = getelementptr inbounds %struct.request_sock_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %slab.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slab.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef %req) #13
  br label %if.end

if.end:                                           ; preds = %reqsk_free.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reuseport_migrate_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_reqsk_queue_drop_and_put(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_filter(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcp_v6_fill_cb(ptr nocapture noundef %skb, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %th) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %1 = call ptr @memcpy(ptr %0, ptr %cb, i32 24)
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !165
  %seq = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 2
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq, align 4
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cb, align 8
  %syn = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 4
  %5 = ptrtoint ptr %syn to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %syn, align 4
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 1
  %conv = zext i16 %bf.clear to i32
  %bf.clear9 = and i16 %bf.load, 1
  %conv10 = zext i16 %bf.clear9 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = lshr i16 %bf.load, 10
  %9 = and i16 %8, 60
  %mul = zext i16 %9 to i32
  %add = add i32 %7, %3
  %add11 = add i32 %add, %conv10
  %add12 = add i32 %add11, %conv
  %sub = sub i32 %add12, %mul
  %end_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %end_seq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %end_seq, align 4
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %th, i32 0, i32 3
  %11 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ack_seq, align 4
  %ack_seq20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %13 = ptrtoint ptr %ack_seq20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ack_seq20, align 8
  %arrayidx21 = getelementptr i8, ptr %th, i32 13
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx21, align 1
  %tcp_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %tcp_flags to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tcp_flags, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 8
  %19 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hdr, align 2
  %21 = lshr i16 %20, 4
  %conv1.i = trunc i16 %21 to i8
  %ip_dsfield = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %22 = ptrtoint ptr %ip_dsfield to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv1.i, ptr %ip_dsfield, align 2
  %sacked = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %23 = ptrtoint ptr %sacked to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %sacked, align 1
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %24, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool.not = icmp eq i64 %26, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %27 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %hwtstamps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool31.not = icmp eq i64 %30, 0
  %phi.sel = select i1 %tobool31.not, i8 0, i8 32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %31 = phi i8 [ 32, %entry.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  %has_rxtstamp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %32 = ptrtoint ptr %has_rxtstamp to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load35 = load i8, ptr %has_rxtstamp, align 1
  %bf.clear36 = and i8 %bf.load35, -33
  %bf.set = or i8 %bf.clear36, %31
  store i8 %bf.set, ptr %has_rxtstamp, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_check_req(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrm6_policy_check(ptr noundef %sk, ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %sk, null
  br i1 %tobool1.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %sk_policy.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 18
  %5 = ptrtoint ptr %sk_policy.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_policy.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i.i = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %sk, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #13
  br label %xfrm_policy_check.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %policy_default.i.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %7 = ptrtoint ptr %policy_default.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %policy_default.i.i.i, align 16
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.i.i.i = icmp eq i8 %9, 0
  br i1 %tobool1.i.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %policy_count.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 13
  %10 = ptrtoint ptr %policy_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %policy_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true8.i.i, label %if.then5.i.i.lor.lhs.false.i.i_crit_edge

if.then5.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i:                               ; preds = %if.then5.i.i
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %12 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge, label %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge:   ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_policy_check.exit

lor.lhs.false.i.i:                                ; preds = %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge, %if.then5.i.i.lor.lhs.false.i.i_crit_edge
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exitthread-pre-split.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, !prof !121

land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exitthread-pre-split.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exitthread-pre-split.i.i

skb_dst.exitthread-pre-split.i.i:                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i.i = load i32, ptr %15, align 8
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %skb_dst.exitthread-pre-split.i.i, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge
  %19 = phi i32 [ %.pr.i.i, %skb_dst.exitthread-pre-split.i.i ], [ %17, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %tobool12.not.i.i = icmp ult i32 %19, 2
  br i1 %tobool12.not.i.i, label %skb_dst.exit.i.i.lor.rhs.i.i_crit_edge, label %land.lhs.true13.i.i

skb_dst.exit.i.i.lor.rhs.i.i_crit_edge:           ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.rhs.i.i

land.lhs.true13.i.i:                              ; preds = %skb_dst.exit.i.i
  %and.i2.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge, label %land.lhs.true.i6.i.i

land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit12.i.i

land.lhs.true.i6.i.i:                             ; preds = %land.lhs.true13.i.i
  %call.i4.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %tobool1.not.i5.i.i = icmp eq i32 %call.i4.i.i, 0
  br i1 %tobool1.not.i5.i.i, label %land.rhs.i9.i.i, label %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge

land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit12.i.i

land.rhs.i9.i.i:                                  ; preds = %land.lhs.true.i6.i.i
  %call2.i7.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i)
  %tobool3.not.i8.i.i = icmp eq i32 %call2.i7.i.i, 0
  br i1 %tobool3.not.i8.i.i, label %do.end.i10.i.i, label %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, !prof !121

land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge:     ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit12.i.i

do.end.i10.i.i:                                   ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit12.i.i

skb_dst.exit12.i.i:                               ; preds = %do.end.i10.i.i, %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %15, align 8
  %and25.i11.i.i = and i32 %21, -2
  %22 = inttoptr i32 %and25.i11.i.i to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags.i.i, align 4
  %25 = and i16 %24, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool16.not.i.i = icmp eq i16 %25, 0
  br i1 %tobool16.not.i.i, label %skb_dst.exit12.i.i.lor.rhs.i.i_crit_edge, label %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge

skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_policy_check.exit

skb_dst.exit12.i.i.lor.rhs.i.i_crit_edge:         ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %skb_dst.exit12.i.i.lor.rhs.i.i_crit_edge, %skb_dst.exit.i.i.lor.rhs.i.i_crit_edge
  %call18.i.i = tail call i32 @__xfrm_policy_check(ptr noundef %sk, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.i.i = icmp ne i32 %call18.i.i, 0
  %phi.cast1.i.i = zext i1 %tobool19.i.i to i32
  br label %xfrm_policy_check.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %and.i13.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  br i1 %tobool.not.i14.i.i, label %if.else.i.i.skb_dst.exit23.i.i_crit_edge, label %land.lhs.true.i17.i.i

if.else.i.i.skb_dst.exit23.i.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit23.i.i

land.lhs.true.i17.i.i:                            ; preds = %if.else.i.i
  %call.i15.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %tobool1.not.i16.i.i = icmp eq i32 %call.i15.i.i, 0
  br i1 %tobool1.not.i16.i.i, label %land.rhs.i20.i.i, label %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge

land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit23thread-pre-split.i.i

land.rhs.i20.i.i:                                 ; preds = %land.lhs.true.i17.i.i
  %call2.i18.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i)
  %tobool3.not.i19.i.i = icmp eq i32 %call2.i18.i.i, 0
  br i1 %tobool3.not.i19.i.i, label %do.end.i21.i.i, label %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, !prof !121

land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit23thread-pre-split.i.i

do.end.i21.i.i:                                   ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit23thread-pre-split.i.i

skb_dst.exit23thread-pre-split.i.i:               ; preds = %do.end.i21.i.i, %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr35.i.i = load i32, ptr %26, align 8
  br label %skb_dst.exit23.i.i

skb_dst.exit23.i.i:                               ; preds = %skb_dst.exit23thread-pre-split.i.i, %if.else.i.i.skb_dst.exit23.i.i_crit_edge
  %30 = phi i32 [ %.pr35.i.i, %skb_dst.exit23thread-pre-split.i.i ], [ %28, %if.else.i.i.skb_dst.exit23.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %tobool21.not.i.i = icmp ult i32 %30, 2
  br i1 %tobool21.not.i.i, label %skb_dst.exit23.i.i.lor.rhs28.i.i_crit_edge, label %land.lhs.true22.i.i

skb_dst.exit23.i.i.lor.rhs28.i.i_crit_edge:       ; preds = %skb_dst.exit23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.rhs28.i.i

land.lhs.true22.i.i:                              ; preds = %skb_dst.exit23.i.i
  %and.i24.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i)
  %tobool.not.i25.i.i = icmp eq i32 %and.i24.i.i, 0
  br i1 %tobool.not.i25.i.i, label %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge, label %land.lhs.true.i28.i.i

land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit34.i.i

land.lhs.true.i28.i.i:                            ; preds = %land.lhs.true22.i.i
  %call.i26.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i)
  %tobool1.not.i27.i.i = icmp eq i32 %call.i26.i.i, 0
  br i1 %tobool1.not.i27.i.i, label %land.rhs.i31.i.i, label %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge

land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit34.i.i

land.rhs.i31.i.i:                                 ; preds = %land.lhs.true.i28.i.i
  %call2.i29.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i)
  %tobool3.not.i30.i.i = icmp eq i32 %call2.i29.i.i, 0
  br i1 %tobool3.not.i30.i.i, label %do.end.i32.i.i, label %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, !prof !121

land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge:    ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit34.i.i

do.end.i32.i.i:                                   ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit34.i.i

skb_dst.exit34.i.i:                               ; preds = %do.end.i32.i.i, %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge, %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %26, align 8
  %and25.i33.i.i = and i32 %32, -2
  %33 = inttoptr i32 %and25.i33.i.i to ptr
  %flags24.i.i = getelementptr inbounds %struct.dst_entry, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %flags24.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags24.i.i, align 4
  %36 = and i16 %35, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool27.not.i.i = icmp eq i16 %36, 0
  br i1 %tobool27.not.i.i, label %skb_dst.exit34.i.i.lor.rhs28.i.i_crit_edge, label %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge

skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfrm_policy_check.exit

skb_dst.exit34.i.i.lor.rhs28.i.i_crit_edge:       ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.rhs28.i.i

lor.rhs28.i.i:                                    ; preds = %skb_dst.exit34.i.i.lor.rhs28.i.i_crit_edge, %skb_dst.exit23.i.i.lor.rhs28.i.i_crit_edge
  %call30.i.i = tail call i32 @__xfrm_policy_check(ptr noundef %sk, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.i.i = icmp ne i32 %call30.i.i, 0
  %phi.cast.i.i = zext i1 %tobool31.i.i to i32
  br label %xfrm_policy_check.exit

xfrm_policy_check.exit:                           ; preds = %lor.rhs28.i.i, %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge, %lor.rhs.i.i, %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge, %land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i ], [ 1, %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge ], [ 1, %land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge ], [ %phi.cast1.i.i, %lor.rhs.i.i ], [ 1, %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge ], [ %phi.cast.i.i, %lor.rhs28.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: inlinehint nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcp_segs_in(ptr noundef %tp, ptr nocapture noundef readonly %skb) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_segs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  %narrow = select i1 %cmp, i16 1, i16 %3
  %cond = zext i16 %narrow to i32
  %segs_in8 = getelementptr inbounds %struct.tcp_sock, ptr %tp, i32 0, i32 5
  %4 = ptrtoint ptr %segs_in8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %segs_in8, align 8
  %add = add i32 %5, %cond
  store volatile i32 %add, ptr %segs_in8, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %13 = lshr i16 %bf.load.i.i, 10
  %14 = and i16 %13, 60
  %mul.i.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul.i.i)
  %cmp16 = icmp ugt i32 %7, %mul.i.i
  br i1 %cmp16, label %do.body22, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %data_segs_in = getelementptr inbounds %struct.tcp_sock, ptr %tp, i32 0, i32 6
  %15 = ptrtoint ptr %data_segs_in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_segs_in, align 4
  %add24 = add i32 %16, %cond
  store volatile i32 %add24, ptr %data_segs_in, align 4
  br label %if.end

if.end:                                           ; preds = %do.body22, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sock_owned_by_user(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %entry.sock_owned_by_me.exit_crit_edge

entry.sock_owned_by_me.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_me.exit

lockdep_sock_is_held.exit.i:                      ; preds = %entry
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %land.rhs.i, label %lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge

lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_me.exit

land.rhs.i:                                       ; preds = %lockdep_sock_is_held.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %land.rhs.i.sock_owned_by_me.exit_crit_edge, label %land.rhs3.i

land.rhs.i.sock_owned_by_me.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_me.exit

land.rhs3.i:                                      ; preds = %land.rhs.i
  %.b40.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i, label %land.rhs3.i.sock_owned_by_me.exit_crit_edge, label %if.then.i, !prof !125

land.rhs3.i.sock_owned_by_me.exit_crit_edge:      ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sock_owned_by_me.exit

if.then.i:                                        ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1750, i32 noundef 9, ptr noundef null) #13
  br label %sock_owned_by_me.exit

sock_owned_by_me.exit:                            ; preds = %if.then.i, %land.rhs3.i.sock_owned_by_me.exit_crit_edge, %land.rhs.i.sock_owned_by_me.exit_crit_edge, %lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge, %entry.sock_owned_by_me.exit_crit_edge
  %owned = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %owned to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_add_backlog(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_timewait_state_process(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_deschedule_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcp_v6_timewait_ack(ptr noundef %sk, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 21
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 18
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %tw_rcv_wnd = getelementptr inbounds %struct.tcp_timewait_sock, ptr %sk, i32 0, i32 1
  %6 = ptrtoint ptr %tw_rcv_wnd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tw_rcv_wnd, align 8
  %tw_rcv_wscale = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk, i32 0, i32 3
  %8 = ptrtoint ptr %tw_rcv_wscale to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tw_rcv_wscale, align 1
  %conv = zext i8 %9 to i32
  %shr = lshr i32 %7, %conv
  %call.i.i.i = tail call i64 @ktime_get() #13
  %10 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call.i.i.i) #16, !srcloc !118
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call.i.i.i, i64 %10, i32 0) #16, !srcloc !119
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %11, 0
  %div1581.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 18
  %conv.i.i = trunc i64 %div1581.i.i.i.i to i32
  %tw_ts_offset = getelementptr inbounds %struct.tcp_timewait_sock, ptr %sk, i32 0, i32 2
  %12 = ptrtoint ptr %tw_ts_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tw_ts_offset, align 4
  %add = add i32 %13, %conv.i.i
  %tw_ts_recent = getelementptr inbounds %struct.tcp_timewait_sock, ptr %sk, i32 0, i32 3
  %14 = ptrtoint ptr %tw_ts_recent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tw_ts_recent, align 8
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %16 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %skc_bound_dev_if, align 4
  %tw_md5_key = getelementptr inbounds %struct.tcp_timewait_sock, ptr %sk, i32 0, i32 7
  %18 = ptrtoint ptr %tw_md5_key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tw_md5_key, align 8
  %tw_tos = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk, i32 0, i32 5
  %20 = ptrtoint ptr %tw_tos to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load = load i32, ptr %tw_tos, align 8
  %conv6 = trunc i32 %bf.load to i8
  %bf.lshr = lshr i32 %bf.load, 10
  %bf.clear8 = and i32 %bf.lshr, 1048575
  %tw_priority = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk, i32 0, i32 7
  %21 = ptrtoint ptr %tw_priority to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tw_priority, align 8
  tail call fastcc void @tcp_v6_send_response(ptr noundef %sk, ptr noundef %skb, i32 noundef %2, i32 noundef %5, i32 noundef %shr, i32 noundef %add, i32 noundef %15, i32 noundef %17, ptr noundef %19, i32 noundef 0, i8 noundef zeroext %conv6, i32 noundef %bf.clear8, i32 noundef %22) #13
  tail call void @inet_twsk_put(ptr noundef %sk) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_defer_free_flush(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmpv6_err_convert(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_req_err(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ip6_sk_accept_pmtu(ptr noundef %sk) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %pmtudisc = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %4 = ptrtoint ptr %pmtudisc to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %pmtudisc, align 2
  %5 = and i16 %bf.load, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %5)
  %cmp.not = icmp eq i16 %5, 4096
  br i1 %cmp.not, label %inet6_sk.exit.land.end_crit_edge, label %land.rhs

inet6_sk.exit.land.end_crit_edge:                 ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %inet6_sk.exit
  %6 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i12 = zext i8 %7 to i32
  %shl.i.i13 = shl nuw i32 1, %conv.i.i12
  %and.i.i14 = and i32 %shl.i.i13, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14)
  %tobool.i.not.i15 = icmp eq i32 %and.i.i14, 0
  br i1 %tobool.i.not.i15, label %land.rhs.inet6_sk.exit19_crit_edge, label %cond.true.i17

land.rhs.inet6_sk.exit19_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sk.exit19

cond.true.i17:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %pinet6.i16 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %8 = ptrtoint ptr %pinet6.i16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pinet6.i16, align 8
  br label %inet6_sk.exit19

inet6_sk.exit19:                                  ; preds = %cond.true.i17, %land.rhs.inet6_sk.exit19_crit_edge
  %cond.i18 = phi ptr [ %9, %cond.true.i17 ], [ null, %land.rhs.inet6_sk.exit19_crit_edge ]
  %pmtudisc3 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i18, i32 0, i32 10
  %10 = ptrtoint ptr %pmtudisc3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load4 = load i16, ptr %pmtudisc3, align 2
  %11 = and i16 %bf.load4, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 5120, i16 %11)
  %cmp8 = icmp ne i16 %11, 5120
  br label %land.end

land.end:                                         ; preds = %inet6_sk.exit19, %inet6_sk.exit.land.end_crit_edge
  %12 = phi i1 [ false, %inet6_sk.exit.land.end_crit_edge ], [ %cmp8, %inet6_sk.exit19 ]
  ret i1 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_icmp_error(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_ld_RTO_revert(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpv6_net_init(ptr noundef %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tcp_sk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 27
  %call = tail call i32 @inet_ctl_sock_create(ptr noundef %tcp_sk, i16 noundef zeroext 10, i16 noundef zeroext 3, i8 noundef zeroext 6, ptr noundef %net) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcpv6_net_exit(ptr nocapture noundef readonly %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tcp_sk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 27
  %0 = ptrtoint ptr %tcp_sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcp_sk, align 128
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.inet_ctl_sock_destroy.exit_crit_edge, label %if.then.i

entry.inet_ctl_sock_destroy.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet_ctl_sock_destroy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %2 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_socket.i, align 8
  tail call void @sock_release(ptr noundef %3) #13
  br label %inet_ctl_sock_destroy.exit

inet_ctl_sock_destroy.exit:                       ; preds = %if.then.i, %entry.inet_ctl_sock_destroy.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcpv6_net_exit_batch(ptr nocapture noundef readnone %net_exit_list) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inet_twsk_purge(ptr noundef nonnull @tcp_hashinfo, i32 noundef 10) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_purge(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inlinehint nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !45, !46, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !82, !83, !85, !87, !89, !91, !92, !93, !94, !95, !96, !98, !99, !101, !103, !104, !106}
!llvm.named.register.sp = !{!108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @tcp6_request_sock_ops, !1, !"tcp6_request_sock_ops", i1 false, i1 false}
!1 = !{!"../net/ipv6/tcp_ipv6.c", i32 865, i32 25}
!2 = !{ptr @tcp_request_sock_ipv6_ops, !3, !"tcp_request_sock_ipv6_ops", i1 false, i1 false}
!3 = !{!"../net/ipv6/tcp_ipv6.c", i32 875, i32 35}
!4 = !{ptr @ipv6_specific, !5, !"ipv6_specific", i1 false, i1 false}
!5 = !{!"../net/ipv6/tcp_ipv6.c", i32 1904, i32 42}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ipv6/tcp_ipv6.c", i32 2148, i32 28}
!8 = !{ptr @tcpv6_prot, !9, !"tcpv6_prot", i1 false, i1 false}
!9 = !{!"../net/ipv6/tcp_ipv6.c", i32 2160, i32 14}
!10 = !{ptr @__ksymtab_tcpv6_prot, !11, !"__ksymtab_tcpv6_prot", i1 false, i1 false}
!11 = !{!"../net/ipv6/tcp_ipv6.c", i32 2207, i32 1}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/ipv6/tcp_ipv6.c", i32 560, i32 10}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/net/sock.h", i32 1750, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/trace/events/tcp.h", i32 109, i32 1}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/net/tcp.h", i32 509, i32 11}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/net/ip6_fib.h", i32 306, i32 9}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/net/ip6_fib.h", i32 284, i32 7}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/net/tcp.h", i32 2208, i32 2}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/ipv6/tcp_ipv6.c", i32 1379, i32 9}
!50 = !{ptr @ipv6_mapped, !51, !"ipv6_mapped", i1 false, i1 false}
!51 = !{!"../net/ipv6/tcp_ipv6.c", i32 1931, i32 49}
!52 = !{ptr @tcp_sock_ipv6_mapped_specific, !53, !"tcp_sock_ipv6_mapped_specific", i1 false, i1 false}
!53 = !{!"../net/ipv6/tcp_ipv6.c", i32 1947, i32 37}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!56 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!61 = !{ptr @tcp6_seq_ops, !62, !"tcp6_seq_ops", i1 false, i1 false}
!62 = !{!"../net/ipv6/tcp_ipv6.c", i32 2135, i32 36}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/ipv6/tcp_ipv6.c", i32 2116, i32 5}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/ipv6/tcp_ipv6.c", i32 2097, i32 6}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/ipv6/tcp_ipv6.c", i32 1991, i32 6}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/ipv6/tcp_ipv6.c", i32 2057, i32 6}
!71 = !{ptr @tcp6_seq_afinfo, !72, !"tcp6_seq_afinfo", i1 false, i1 false}
!72 = !{!"../net/ipv6/tcp_ipv6.c", i32 2142, i32 30}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/ipv6/tcp_ipv6.c", i32 278, i32 8}
!75 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @tcp_sock_ipv6_specific, !77, !"tcp_sock_ipv6_specific", i1 false, i1 false}
!77 = !{!"../net/ipv6/tcp_ipv6.c", i32 1921, i32 37}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../net/ipv6/tcp_ipv6.c", i32 1511, i32 9}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/trace/events/tcp.h", i32 367, i32 1}
!82 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!83 = !{ptr @tcp6_timewait_sock_ops, !84, !"tcp6_timewait_sock_ops", i1 false, i1 false}
!84 = !{!"../net/ipv6/tcp_ipv6.c", i32 1893, i32 33}
!85 = !{ptr @tcpv6_protocol, !86, !"tcpv6_protocol", i1 false, i1 false}
!86 = !{!"../net/ipv6/tcp_ipv6.c", i32 2212, i32 30}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../net/ipv6/tcp_ipv6.c", i32 1882, i32 28}
!89 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/ipv6/tcp_ipv6.c", i32 816, i32 3}
!91 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @tcp_v6_inbound_md5_hash._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @tcp_v6_inbound_md5_hash._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.24, !90, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../include/net/request_sock.h", i32 126, i32 2}
!98 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../net/ipv6/tcp_ipv6.c", i32 427, i32 13}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!103 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @tcpv6_protosw, !105, !"tcpv6_protosw", i1 false, i1 false}
!105 = !{!"../net/ipv6/tcp_ipv6.c", i32 2220, i32 28}
!106 = !{ptr @tcpv6_net_ops, !107, !"tcpv6_net_ops", i1 false, i1 false}
!107 = !{!"../net/ipv6/tcp_ipv6.c", i32 2245, i32 33}
!108 = !{!"sp"}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 885901, i64 885928}
!119 = !{i64 886596, i64 886623, i64 886656, i64 886677, i64 886704, i64 886730}
!120 = !{i64 2148346545, i64 2148346550, i64 2148346563, i64 2148346607, i64 2148346641, i64 2148346662}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 2149414270}
!123 = !{i64 2149414536}
!124 = !{i64 2148524260, i64 2148524292, i64 2148524321, i64 2148524355, i64 2148524386, i64 2148524409}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 7069326}
!127 = !{i64 2148522149}
!128 = !{i64 1008749, i64 1008774, i64 1008796, i64 1008812, i64 1008824, i64 1008844, i64 1008868, i64 1008884, i64 1008896}
!129 = !{i64 2148522337}
!130 = !{i64 2159482709}
!131 = !{i64 2149922269}
!132 = !{i64 2149927201}
!133 = !{i64 2149948913}
!134 = !{i64 2149953805}
!135 = !{i64 2150030262}
!136 = !{i64 2150030587}
!137 = !{i64 2148522730, i64 2148522756, i64 2148522785, i64 2148522819, i64 2148522850, i64 2148522873}
!138 = !{i8 0, i8 2}
!139 = !{!"auto-init"}
!140 = !{i64 2148525195, i64 2148525221, i64 2148525250, i64 2148525284, i64 2148525315, i64 2148525338}
!141 = !{i64 927410, i64 927471}
!142 = !{i64 930142}
!143 = !{i64 930427}
!144 = !{i64 2159657477}
!145 = !{i64 1029498, i64 1029515, i64 1029539, i64 1029565, i64 1029583}
!146 = !{i64 2159657826}
!147 = !{i64 2159658713}
!148 = !{i64 2159659066}
!149 = !{i64 2159355996}
!150 = !{i64 2159356201}
!151 = !{i64 2149422829}
!152 = !{i64 2149423865}
!153 = !{i64 2158724342}
!154 = !{i64 2155013168, i64 2155013656, i64 2155013205, i64 2155013261, i64 2155013295, i64 2155013319, i64 2155013360, i64 2155013381, i64 2155013409, i64 2155013443}
!155 = !{i64 2148612285}
!156 = !{i64 2148526725, i64 2148526757, i64 2148526786, i64 2148526820, i64 2148526851, i64 2148526874}
!157 = !{i64 2149363780}
!158 = !{i64 2152552422, i64 2152552447}
!159 = !{i64 5047977}
!160 = !{i64 5048174}
!161 = !{i64 2152533407}
!162 = !{i64 2156964650}
!163 = !{i64 2159463771}
!164 = !{i64 2159463964}
!165 = !{i64 2159659237}
