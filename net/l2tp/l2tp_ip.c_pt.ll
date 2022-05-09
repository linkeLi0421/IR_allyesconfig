; ModuleID = '/llk/IR_all_yes/net/l2tp/l2tp_ip.c_pt.bc'
source_filename = "../net/l2tp/l2tp_ip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+l2tp_ioctl\22, \22a\22\09"
module asm "\09.weak\09__crc_l2tp_ioctl\09\09\09\09"
module asm "\09.long\09__crc_l2tp_ioctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_l2tp_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22l2tp_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_l2tp_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.120, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.120 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.125, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.126, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.127, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.121, [0 x i32], %union.anon.122, i16, i16, %union.anon.123, %struct.refcount_struct, [0 x i32], %union.anon.124 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { %struct.hlist_node }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.125 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.126 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.127 = type { ptr }
%struct.sk_buff_head = type { %union.anon.69, i32, %struct.spinlock }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.l2tp_ip_sock = type { %struct.inet_sock, i32, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.38 }
%union.anon.38 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sockaddr_l2tpip = type { i16, i16, %struct.in_addr, i32, [4 x i8] }
%struct.in_addr = type { i32 }
%struct.anon = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.145 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.l2tp_session = type { i32, i32, ptr, i32, i32, [8 x i8], i32, [8 x i8], i32, i16, i16, i32, i32, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.hlist_node, %struct.refcount_struct, [32 x i8], [16 x i8], i8, i32, i32, i32, %struct.l2tp_stats, %struct.hlist_node, ptr, ptr, ptr, [0 x i8] }
%struct.l2tp_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.73, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.73 = type { %struct.in6_addr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.74, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.74 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.anon.2 = type { i16, i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.119, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.117 }
%union.anon.4 = type { ptr }
%union.anon.117 = type { i64 }
%union.anon.119 = type { ptr }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.anon.39 = type { i16, i16 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/l2tp/l2tp_ip.c\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_l2tp_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_l2tp_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_l2tp_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @l2tp_ioctl to i32), ptr @__kstrtab_l2tp_ioctl, ptr @__kstrtabns_l2tp_ioctl }, section "___ksymtab_gpl+l2tp_ioctl", align 4
@l2tp_ip_protosw = internal global { %struct.inet_protosw, [40 x i8] } { %struct.inet_protosw { %struct.list_head zeroinitializer, i16 2, i16 115, ptr @l2tp_ip_prot, ptr @l2tp_ip_ops, i8 0 }, [40 x i8] zeroinitializer }, align 32
@l2tp_ip_protocol = internal global %struct.net_protocol { ptr null, ptr null, ptr @l2tp_ip_recv, ptr null, i8 0 }, section ".data..read_mostly", align 4
@l2tp_ip_prot = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr @l2tp_ip_close, ptr null, ptr @l2tp_ip_connect, ptr @l2tp_ip_disconnect, ptr null, ptr @l2tp_ioctl, ptr @l2tp_ip_open, ptr @l2tp_ip_destroy_sock, ptr null, ptr @ip_setsockopt, ptr @ip_getsockopt, ptr null, ptr @l2tp_ip_sendmsg, ptr @l2tp_ip_recvmsg, ptr null, ptr @l2tp_ip_bind, ptr null, ptr @l2tp_ip_backlog_recv, ptr null, ptr null, ptr @l2tp_ip_hash, ptr @l2tp_ip_unhash, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1152, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.120 zeroinitializer, ptr null, [32 x i8] c"L2TP/IP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_l2tp_ip__521_670_l2tp_ip_init6 = internal global ptr @l2tp_ip_init, section ".initcall6.init", align 4
@__exitcall_l2tp_ip_exit = internal global ptr @l2tp_ip_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file522 = internal constant [30 x i8] c"l2tp_ip.file=net/l2tp/l2tp_ip\00", section ".modinfo", align 1
@__UNIQUE_ID_license523 = internal constant [20 x i8] c"l2tp_ip.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author524 = internal constant [52 x i8] c"l2tp_ip.author=James Chapman <jchapman@katalix.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description525 = internal constant [33 x i8] c"l2tp_ip.description=L2TP over IP\00", section ".modinfo", align 1
@__UNIQUE_ID_version526 = internal constant [20 x i8] c"l2tp_ip.version=1.0\00", section ".modinfo", align 1
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l2tp_ip\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.2, ptr @.str.3 }, section "__modver", align 4
@__UNIQUE_ID_alias527 = internal constant [40 x i8] c"l2tp_ip.alias=net-pf-2-proto-2-type-115\00", section ".modinfo", align 1
@__UNIQUE_ID_alias528 = internal constant [33 x i8] c"l2tp_ip.alias=net-pf-2-proto-115\00", section ".modinfo", align 1
@l2tp_ip_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 2, ptr null, ptr @inet_release, ptr @inet_bind, ptr @inet_dgram_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @l2tp_ip_getname, ptr @datagram_poll, ptr @inet_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @inet_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @inet_sendmsg, ptr @sock_common_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@l2tp_ip_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l2tp_ip_lock\00", [19 x i8] zeroinitializer }, align 32
@l2tp_ip_bind_table = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@l2tp_ip_sendmsg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@l2tp_ip_table = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@l2tp_ip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016l2tp_ip: L2TP IP encapsulation support (L2TPv3)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l2tp_ip_init\00", [19 x i8] zeroinitializer }, align 32
@l2tp_ip_init._entry_ptr = internal global ptr @l2tp_ip_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 21521, i64 21531]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 583, i32 9 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"l2tp_ip_protosw\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 629, i32 28 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"l2tp_ip_prot\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 587, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 676, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"l2tp_ip_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 607, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"l2tp_ip_lock\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 36, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"l2tp_ip_bind_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 38, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1011, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 729, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 466, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 230, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 214, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 695, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 723, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 271, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"l2tp_ip_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 37, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [22 x i8] c"../net/l2tp/l2tp_ip.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 644, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias527, ptr @__UNIQUE_ID_alias528, ptr @__UNIQUE_ID_author524, ptr @__UNIQUE_ID_description525, ptr @__UNIQUE_ID_file522, ptr @__UNIQUE_ID_license523, ptr @__UNIQUE_ID_version526, ptr @__exitcall_l2tp_ip_exit, ptr @__initcall__kmod_l2tp_ip__521_670_l2tp_ip_init6, ptr @__ksymtab_l2tp_ioctl, ptr @__modver_attr, ptr @l2tp_ip_exit, ptr @l2tp_ip_init._entry, ptr @l2tp_ip_init._entry_ptr, ptr @.str, ptr @l2tp_ip_protosw, ptr @l2tp_ip_prot, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @l2tp_ip_ops, ptr @l2tp_ip_lock, ptr @.str.4, ptr @l2tp_ip_bind_table, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @l2tp_ip_table, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip_protosw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip_bind_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l2tp_ioctl(ptr noundef %sk, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 21521, label %sw.bb
    i32 21531, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #10
  %1 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %2, -1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %3 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %4, %sk_receive_queue
  %tobool.not13 = icmp eq ptr %4, null
  %tobool.not = or i1 %cmp.i, %tobool.not13
  br i1 %tobool.not, label %sw.bb1.cond.end_crit_edge, label %cond.true

sw.bb1.cond.end_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.bb1.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ 0, %sw.bb1.cond.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %sw.bb
  %amount.0 = phi i32 [ %cond, %cond.end ], [ %sub.i, %sw.bb ]
  %7 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 583) #10
  %8 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !77
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  %11 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 %amount.0, i32 -1226833921) #10, !srcloc !80
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %sw.epilog ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_ip_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet_unregister_protosw(ptr noundef nonnull @l2tp_ip_protosw) #10
  %call = tail call i32 @inet_del_protocol(ptr noundef nonnull @l2tp_ip_protocol, i8 noundef zeroext 115) #10
  tail call void @proto_unregister(ptr noundef nonnull @l2tp_ip_prot) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_unregister_protosw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  %call1 = tail call i32 @proto_register(ptr noundef nonnull @l2tp_ip_prot, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @inet_add_protocol(ptr noundef nonnull @l2tp_ip_protocol, i8 noundef zeroext 115) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %out1

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet_register_protosw(ptr noundef nonnull @l2tp_ip_protosw) #10
  br label %cleanup

out1:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @proto_unregister(ptr noundef nonnull @l2tp_ip_prot) #10
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %out1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_dgram_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @l2tp_ip_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = call ptr @memset(ptr %uaddr, i32 0, i32 16)
  %3 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool4.not = icmp eq i16 %6, 0
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %peer_conn_id = getelementptr inbounds %struct.l2tp_ip_sock, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %peer_conn_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %peer_conn_id, align 4
  %l2tp_conn_id = getelementptr inbounds %struct.sockaddr_l2tpip, ptr %uaddr, i32 0, i32 3
  %9 = ptrtoint ptr %l2tp_conn_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %l2tp_conn_id, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 8
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %skc_rcv_saddr = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %skc_rcv_saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inet_saddr, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.else.if.end12_crit_edge
  %addr.0 = phi i32 [ %13, %if.else.if.end12_crit_edge ], [ %15, %if.then11 ]
  %conn_id = getelementptr inbounds %struct.l2tp_ip_sock, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %conn_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %conn_id, align 8
  %l2tp_conn_id13 = getelementptr inbounds %struct.sockaddr_l2tpip, ptr %uaddr, i32 0, i32 3
  %18 = ptrtoint ptr %l2tp_conn_id13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %l2tp_conn_id13, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12, %if.end
  %.sink = phi i32 [ %11, %if.end ], [ %addr.0, %if.end12 ]
  %l2tp_addr = getelementptr inbounds %struct.sockaddr_l2tpip, ptr %uaddr, i32 0, i32 2
  %19 = ptrtoint ptr %l2tp_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %l2tp_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %if.then.cleanup_crit_edge ], [ 16, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip_recv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !81

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp3.i = icmp ult i32 %6, 4
  br i1 %cmp3.i, label %if.end.i.discard_crit_edge, label %pskb_may_pull.exit, !prof !81

if.end.i.discard_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 4, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.discard_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pskb_may_pull.exit.discard_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %13 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i, align 4
  %sub.i74 = add i32 %14, -4
  store i32 %sub.i74, ptr %len.i.i, align 4
  %15 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i74, i32 %16)
  %cmp.i = icmp ult i32 %sub.i74, %16
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !81

do.body4.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

__skb_pull.exit:                                  ; preds = %if.then3
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %data, align 4
  %sub.i.i77 = sub i32 %sub.i74, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i77)
  %cmp.not.i78 = icmp ult i32 %sub.i.i77, 12
  br i1 %cmp.not.i78, label %if.end.i80, label %__skb_pull.exit.if.end19_crit_edge, !prof !81

__skb_pull.exit.if.end19_crit_edge:               ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.i80:                                       ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i74)
  %cmp3.i79 = icmp ult i32 %sub.i74, 12
  br i1 %cmp3.i79, label %if.end.i80.discard_crit_edge, label %pskb_may_pull.exit86, !prof !81

if.end.i80.discard_crit_edge:                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

pskb_may_pull.exit86:                             ; preds = %if.end.i80
  %sub.i81 = sub nuw nsw i32 12, %sub.i.i77
  %call13.i82 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i81) #10
  %cmp14.i83.not = icmp eq ptr %call13.i82, null
  br i1 %cmp14.i83.not, label %pskb_may_pull.exit86.discard_crit_edge, label %pskb_may_pull.exit86.if.end19_crit_edge

pskb_may_pull.exit86.if.end19_crit_edge:          ; preds = %pskb_may_pull.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

pskb_may_pull.exit86.discard_crit_edge:           ; preds = %pskb_may_pull.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @l2tp_session_get(ptr noundef %4, i32 noundef %12) #10
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end5.discard_crit_edge, label %if.end8

if.end5.discard_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end8:                                          ; preds = %if.end5
  %tunnel9 = getelementptr inbounds %struct.l2tp_session, ptr %call6, i32 0, i32 2
  %18 = ptrtoint ptr %tunnel9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tunnel9, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %if.end8.discard_sess_crit_edge, label %if.end12

if.end8.discard_sess_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_sess

if.end12:                                         ; preds = %if.end8
  %peer_cookie_len.i = getelementptr inbounds %struct.l2tp_session, ptr %call6, i32 0, i32 8
  %20 = ptrtoint ptr %peer_cookie_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %peer_cookie_len.i, align 4
  %l2specific_type.i.i = getelementptr inbounds %struct.l2tp_session, ptr %call6, i32 0, i32 9
  %22 = ptrtoint ptr %l2specific_type.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %l2specific_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %23)
  %cond.i.i = icmp eq i16 %23, 1
  %..i.i = select i1 %cond.i.i, i32 4, i32 0
  %add.i = add i32 %..i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp.i87 = icmp sgt i32 %add.i, 0
  br i1 %cmp.i87, label %if.then.i, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then.i:                                        ; preds = %if.end12
  %add1.i = add nuw i32 %add.i, 4
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i.i = sub i32 %25, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add1.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.if.end.i90_crit_edge, !prof !81

if.then.i.if.end.i90_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i90

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add1.i)
  %cmp3.i.i = icmp ult i32 %25, %add1.i
  br i1 %cmp3.i.i, label %if.end.i.i.discard_sess_crit_edge, label %pskb_may_pull.exit.i, !prof !81

if.end.i.i.discard_sess_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_sess

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i88 = sub i32 %add1.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i88) #10
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.discard_sess_crit_edge, label %pskb_may_pull.exit.i.if.end.i90_crit_edge

pskb_may_pull.exit.i.if.end.i90_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i90

pskb_may_pull.exit.i.discard_sess_crit_edge:      ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_sess

if.end.i90:                                       ; preds = %pskb_may_pull.exit.i.if.end.i90_crit_edge, %if.then.i.if.end.i90_crit_edge
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %cmp4.not.i = icmp eq ptr %29, %10
  %add.ptr.i91 = getelementptr i8, ptr %29, i32 4
  %spec.select = select i1 %cmp4.not.i, ptr %add.ptr, ptr %add.ptr.i91
  br label %if.end16

if.end16:                                         ; preds = %if.end.i90, %if.end12.if.end16_crit_edge
  %ptr.0.ph = phi ptr [ %add.ptr, %if.end12.if.end16_crit_edge ], [ %spec.select, %if.end.i90 ]
  %optr.0.ph = phi ptr [ %10, %if.end12.if.end16_crit_edge ], [ %29, %if.end.i90 ]
  %30 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i, align 4
  tail call void @l2tp_recv_common(ptr noundef nonnull %call6, ptr noundef %skb, ptr noundef %ptr.0.ph, ptr noundef %optr.0.ph, i16 noundef zeroext 0, i32 noundef %31) #10
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %call6) #10
  br label %cleanup

if.end19:                                         ; preds = %pskb_may_pull.exit86.if.end19_crit_edge, %__skb_pull.exit.if.end19_crit_edge
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %35)
  %cmp21.not = icmp ugt i8 %35, -65
  br i1 %cmp21.not, label %if.end24, label %if.end19.discard_crit_edge

if.end19.discard_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end24:                                         ; preds = %if.end19
  %arrayidx26 = getelementptr i8, ptr %33, i32 4
  %36 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx26, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %38 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %40 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %41 to i32
  %add.ptr.i92 = getelementptr i8, ptr %39, i32 %conv.i
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i92, i32 0, i32 9
  %42 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i92, i32 0, i32 8
  %44 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %saddr, align 4
  %46 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %and.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end24.skb_rtable.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end24.skb_rtable.exit.i_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end24
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge

land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, !prof !81

land.rhs.i.i.i.skb_rtable.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_rtable.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_rtable.exit.i

skb_rtable.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_rtable.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_rtable.exit.i_crit_edge, %if.end24.skb_rtable.exit.i_crit_edge
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %46, align 8
  %and25.i.i.i = and i32 %50, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i, label %skb_rtable.exit.i.if.end.i93_crit_edge, label %land.lhs.true.i

skb_rtable.exit.i.if.end.i93_crit_edge:           ; preds = %skb_rtable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i93

land.lhs.true.i:                                  ; preds = %skb_rtable.exit.i
  %51 = inttoptr i32 %and25.i.i.i to ptr
  %rt_iif.i = getelementptr inbounds %struct.rtable, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %rt_iif.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rt_iif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool1.not.i = icmp eq i32 %53, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i93_crit_edge, label %land.lhs.true.i.inet_iif.exit_crit_edge

land.lhs.true.i.inet_iif.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_iif.exit

land.lhs.true.i.if.end.i93_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i93

if.end.i93:                                       ; preds = %land.lhs.true.i.if.end.i93_crit_edge, %skb_rtable.exit.i.if.end.i93_crit_edge
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %54 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %skb_iif.i, align 8
  br label %inet_iif.exit

inet_iif.exit:                                    ; preds = %if.end.i93, %land.lhs.true.i.inet_iif.exit_crit_edge
  %retval.0.i94 = phi i32 [ %55, %if.end.i93 ], [ %53, %land.lhs.true.i.inet_iif.exit_crit_edge ]
  %56 = load ptr, ptr @l2tp_ip_bind_table, align 4
  %tobool.not.i95 = icmp eq ptr %56, null
  %add.ptr.i96 = getelementptr i8, ptr %56, i32 -24
  %tobool2.not8589.i = icmp eq ptr %add.ptr.i96, null
  %tobool2.not85.i = or i1 %tobool.not.i95, %tobool2.not8589.i
  br i1 %tobool2.not85.i, label %inet_iif.exit.if.then31_crit_edge, label %for.body.lr.ph.i

inet_iif.exit.if.then31_crit_edge:                ; preds = %inet_iif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

for.body.lr.ph.i:                                 ; preds = %inet_iif.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i94)
  %tobool8.not.i = icmp eq i32 %retval.0.i94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool18.not.i = icmp eq i32 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool30.not.i = icmp eq i32 %45, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sk.086.i = phi ptr [ %add.ptr.i96, %for.body.lr.ph.i ], [ %add.ptr49.i, %for.inc.i.for.body.i_crit_edge ]
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.086.i, i32 0, i32 9
  %57 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %58, %4
  br i1 %cmp.i.not.i, label %if.end.i98, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i98:                                       ; preds = %for.body.i
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %sk.086.i, i32 0, i32 6
  %59 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %skc_bound_dev_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool7.not.i = icmp eq i32 %60, 0
  %or.cond.i = or i1 %tobool8.not.i, %tobool7.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %retval.0.i94)
  %cmp.not.i97 = icmp eq i32 %60, %retval.0.i94
  %or.cond73.i = or i1 %cmp.not.i97, %or.cond.i
  br i1 %or.cond73.i, label %if.end13.i, label %if.end.i98.for.inc.i_crit_edge

if.end.i98.for.inc.i_crit_edge:                   ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end.i98
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %sk.086.i, i32 0, i32 1
  %61 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %skc_rcv_saddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool16.not.i = icmp eq i32 %62, 0
  %or.cond74.i = or i1 %tobool18.not.i, %tobool16.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %43)
  %cmp23.not.i = icmp eq i32 %62, %43
  %or.cond75.i = or i1 %cmp23.not.i, %or.cond74.i
  br i1 %or.cond75.i, label %if.end25.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end25.i:                                       ; preds = %if.end13.i
  %63 = ptrtoint ptr %sk.086.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sk.086.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool28.not.i = icmp eq i32 %64, 0
  %or.cond76.i = or i1 %tobool30.not.i, %tobool28.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %45)
  %cmp35.not.i = icmp eq i32 %64, %45
  %or.cond77.i = or i1 %cmp35.not.i, %or.cond76.i
  br i1 %or.cond77.i, label %cleanup.i, label %if.end25.i.for.inc.i_crit_edge

if.end25.i.for.inc.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end25.i
  %conn_id.i = getelementptr inbounds %struct.l2tp_ip_sock, ptr %sk.086.i, i32 0, i32 1
  %65 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %conn_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %37)
  %cmp38.not.i = icmp eq i32 %66, %37
  br i1 %cmp38.not.i, label %if.end32, label %cleanup.i.for.inc.i_crit_edge

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %if.end25.i.for.inc.i_crit_edge, %if.end13.i.for.inc.i_crit_edge, %if.end.i98.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %67 = getelementptr inbounds %struct.sock_common, ptr %sk.086.i, i32 0, i32 7
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %tobool45.not.i = icmp eq ptr %69, null
  %add.ptr49.i = getelementptr i8, ptr %69, i32 -24
  %tobool2.not90.i = icmp eq ptr %add.ptr49.i, null
  %tobool2.not.i = or i1 %tobool45.not.i, %tobool2.not90.i
  br i1 %tobool2.not.i, label %for.inc.i.if.then31_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.then31_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

if.then31:                                        ; preds = %for.inc.i.if.then31_crit_edge, %inet_iif.exit.if.then31_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  br label %discard

if.end32:                                         ; preds = %cleanup.i
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk.086.i, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end32.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !81

if.end32.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end32
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %71 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %.not.i.i.i.i = icmp sgt i32 %71, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.land.lhs.true.i.i.i100_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.land.lhs.true.i.i.i100_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i100

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end32.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end32.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %land.lhs.true.i.i.i100

land.lhs.true.i.i.i100:                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.land.lhs.true.i.i.i100_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %0, align 8
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 127
  %74 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %nd_net.i.i.i.i, align 4
  %sk_policy.i.i.i = getelementptr inbounds %struct.sock, ptr %sk.086.i, i32 0, i32 18
  %76 = ptrtoint ptr %sk_policy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sk_policy.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %77, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i100
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %sk.086.i, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 2) #10
  br label %xfrm4_policy_check.exit

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i100
  %policy_default.i.i.i.i = getelementptr inbounds %struct.net, ptr %75, i32 0, i32 46, i32 23
  %78 = ptrtoint ptr %policy_default.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %policy_default.i.i.i.i, align 16
  %80 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool1.i.i.i.i = icmp eq i8 %80, 0
  br i1 %tobool1.i.i.i.i, label %if.then5.i.i.i, label %if.else.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  %policy_count.i.i.i = getelementptr inbounds %struct.net, ptr %75, i32 0, i32 46, i32 13
  %81 = ptrtoint ptr %policy_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %policy_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool7.not.i.i.i = icmp eq i32 %82, 0
  br i1 %tobool7.not.i.i.i, label %land.lhs.true8.i.i.i, label %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge

if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge:     ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i:                             ; preds = %if.then5.i.i.i
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %83 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %85 = and i8 %84, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool10.not.i.i.i = icmp eq i8 %85, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true8.i.i.i.if.end36_crit_edge, label %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge

land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i.if.end36_crit_edge:          ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge, %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge
  %86 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %46, align 8
  %and.i.i.i.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i101 = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i101, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, !prof !81

land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exitthread-pre-split.i.i.i

skb_dst.exitthread-pre-split.i.i.i:               ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge
  %88 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr.i.i.i = load i32, ptr %46, align 8
  br label %skb_dst.exit.i.i.i

skb_dst.exit.i.i.i:                               ; preds = %skb_dst.exitthread-pre-split.i.i.i, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge
  %89 = phi i32 [ %.pr.i.i.i, %skb_dst.exitthread-pre-split.i.i.i ], [ %87, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %89)
  %tobool12.not.i.i.i = icmp ult i32 %89, 2
  br i1 %tobool12.not.i.i.i, label %skb_dst.exit.i.i.i.lor.rhs.i.i.i_crit_edge, label %land.lhs.true13.i.i.i

skb_dst.exit.i.i.i.lor.rhs.i.i.i_crit_edge:       ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i.i.i

land.lhs.true13.i.i.i:                            ; preds = %skb_dst.exit.i.i.i
  %and.i2.i.i.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i.i)
  %tobool.not.i3.i.i.i = icmp eq i32 %and.i2.i.i.i, 0
  br i1 %tobool.not.i3.i.i.i, label %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge, label %land.lhs.true.i6.i.i.i

land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit12.i.i.i

land.lhs.true.i6.i.i.i:                           ; preds = %land.lhs.true13.i.i.i
  %call.i4.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i.i)
  %tobool1.not.i5.i.i.i = icmp eq i32 %call.i4.i.i.i, 0
  br i1 %tobool1.not.i5.i.i.i, label %land.rhs.i9.i.i.i, label %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge

land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit12.i.i.i

land.rhs.i9.i.i.i:                                ; preds = %land.lhs.true.i6.i.i.i
  %call2.i7.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i.i)
  %tobool3.not.i8.i.i.i = icmp eq i32 %call2.i7.i.i.i, 0
  br i1 %tobool3.not.i8.i.i.i, label %do.end.i10.i.i.i, label %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, !prof !81

land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit12.i.i.i

do.end.i10.i.i.i:                                 ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit12.i.i.i

skb_dst.exit12.i.i.i:                             ; preds = %do.end.i10.i.i.i, %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge
  %90 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %46, align 8
  %and25.i11.i.i.i = and i32 %91, -2
  %92 = inttoptr i32 %and25.i11.i.i.i to ptr
  %flags.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %92, i32 0, i32 7
  %93 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %flags.i.i.i, align 4
  %95 = and i16 %94, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool16.not.i.i.i = icmp eq i16 %95, 0
  br i1 %tobool16.not.i.i.i, label %skb_dst.exit12.i.i.i.lor.rhs.i.i.i_crit_edge, label %skb_dst.exit12.i.i.i.if.end36_crit_edge

skb_dst.exit12.i.i.i.if.end36_crit_edge:          ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

skb_dst.exit12.i.i.i.lor.rhs.i.i.i_crit_edge:     ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i.i.i

lor.rhs.i.i.i:                                    ; preds = %skb_dst.exit12.i.i.i.lor.rhs.i.i.i_crit_edge, %skb_dst.exit.i.i.i.lor.rhs.i.i.i_crit_edge
  %call18.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %sk.086.i, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i)
  %tobool19.i.i.i = icmp ne i32 %call18.i.i.i, 0
  %phi.cast1.i.i.i = zext i1 %tobool19.i.i.i to i32
  br label %xfrm4_policy_check.exit

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %96 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %46, align 8
  %and.i13.i.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i.i)
  %tobool.not.i14.i.i.i = icmp eq i32 %and.i13.i.i.i, 0
  br i1 %tobool.not.i14.i.i.i, label %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge, label %land.lhs.true.i17.i.i.i

if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge:     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit23.i.i.i

land.lhs.true.i17.i.i.i:                          ; preds = %if.else.i.i.i
  %call.i15.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i.i)
  %tobool1.not.i16.i.i.i = icmp eq i32 %call.i15.i.i.i, 0
  br i1 %tobool1.not.i16.i.i.i, label %land.rhs.i20.i.i.i, label %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge

land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit23thread-pre-split.i.i.i

land.rhs.i20.i.i.i:                               ; preds = %land.lhs.true.i17.i.i.i
  %call2.i18.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i.i)
  %tobool3.not.i19.i.i.i = icmp eq i32 %call2.i18.i.i.i, 0
  br i1 %tobool3.not.i19.i.i.i, label %do.end.i21.i.i.i, label %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, !prof !81

land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit23thread-pre-split.i.i.i

do.end.i21.i.i.i:                                 ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit23thread-pre-split.i.i.i

skb_dst.exit23thread-pre-split.i.i.i:             ; preds = %do.end.i21.i.i.i, %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge
  %98 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pr35.i.i.i = load i32, ptr %46, align 8
  br label %skb_dst.exit23.i.i.i

skb_dst.exit23.i.i.i:                             ; preds = %skb_dst.exit23thread-pre-split.i.i.i, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge
  %99 = phi i32 [ %.pr35.i.i.i, %skb_dst.exit23thread-pre-split.i.i.i ], [ %97, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %tobool21.not.i.i.i = icmp ult i32 %99, 2
  br i1 %tobool21.not.i.i.i, label %skb_dst.exit23.i.i.i.lor.rhs28.i.i.i_crit_edge, label %land.lhs.true22.i.i.i

skb_dst.exit23.i.i.i.lor.rhs28.i.i.i_crit_edge:   ; preds = %skb_dst.exit23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs28.i.i.i

land.lhs.true22.i.i.i:                            ; preds = %skb_dst.exit23.i.i.i
  %and.i24.i.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i.i)
  %tobool.not.i25.i.i.i = icmp eq i32 %and.i24.i.i.i, 0
  br i1 %tobool.not.i25.i.i.i, label %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge, label %land.lhs.true.i28.i.i.i

land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit34.i.i.i

land.lhs.true.i28.i.i.i:                          ; preds = %land.lhs.true22.i.i.i
  %call.i26.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.i)
  %tobool1.not.i27.i.i.i = icmp eq i32 %call.i26.i.i.i, 0
  br i1 %tobool1.not.i27.i.i.i, label %land.rhs.i31.i.i.i, label %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge

land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit34.i.i.i

land.rhs.i31.i.i.i:                               ; preds = %land.lhs.true.i28.i.i.i
  %call2.i29.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i.i)
  %tobool3.not.i30.i.i.i = icmp eq i32 %call2.i29.i.i.i, 0
  br i1 %tobool3.not.i30.i.i.i, label %do.end.i32.i.i.i, label %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, !prof !81

land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit34.i.i.i

do.end.i32.i.i.i:                                 ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit34.i.i.i

skb_dst.exit34.i.i.i:                             ; preds = %do.end.i32.i.i.i, %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge
  %100 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %46, align 8
  %and25.i33.i.i.i = and i32 %101, -2
  %102 = inttoptr i32 %and25.i33.i.i.i to ptr
  %flags24.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %flags24.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %flags24.i.i.i, align 4
  %105 = and i16 %104, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool27.not.i.i.i = icmp eq i16 %105, 0
  br i1 %tobool27.not.i.i.i, label %skb_dst.exit34.i.i.i.lor.rhs28.i.i.i_crit_edge, label %skb_dst.exit34.i.i.i.if.end36_crit_edge

skb_dst.exit34.i.i.i.if.end36_crit_edge:          ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

skb_dst.exit34.i.i.i.lor.rhs28.i.i.i_crit_edge:   ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs28.i.i.i

lor.rhs28.i.i.i:                                  ; preds = %skb_dst.exit34.i.i.i.lor.rhs28.i.i.i_crit_edge, %skb_dst.exit23.i.i.i.lor.rhs28.i.i.i_crit_edge
  %call30.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %sk.086.i, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %tobool31.i.i.i = icmp ne i32 %call30.i.i.i, 0
  %phi.cast.i.i.i = zext i1 %tobool31.i.i.i to i32
  br label %xfrm4_policy_check.exit

xfrm4_policy_check.exit:                          ; preds = %lor.rhs28.i.i.i, %lor.rhs.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i ], [ %phi.cast1.i.i.i, %lor.rhs.i.i.i ], [ %phi.cast.i.i.i, %lor.rhs28.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool34.not = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool34.not, label %discard_put, label %xfrm4_policy_check.exit.if.end36_crit_edge

xfrm4_policy_check.exit.if.end36_crit_edge:       ; preds = %xfrm4_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %xfrm4_policy_check.exit.if.end36_crit_edge, %skb_dst.exit34.i.i.i.if.end36_crit_edge, %skb_dst.exit12.i.i.i.if.end36_crit_edge, %land.lhs.true8.i.i.i.if.end36_crit_edge
  tail call fastcc void @nf_reset_ct(ptr noundef %skb)
  %call.i = tail call i32 @__sk_receive_skb(ptr noundef nonnull %sk.086.i, ptr noundef %skb, i32 noundef 1, i32 noundef 1, i1 noundef zeroext true) #10
  br label %cleanup

discard_sess:                                     ; preds = %pskb_may_pull.exit.i.discard_sess_crit_edge, %if.end.i.i.discard_sess_crit_edge, %if.end8.discard_sess_crit_edge
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %call6) #10
  br label %discard

discard_put:                                      ; preds = %xfrm4_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sock_put(ptr noundef nonnull %sk.086.i)
  br label %discard

discard:                                          ; preds = %discard_put, %discard_sess, %if.then31, %if.end19.discard_crit_edge, %if.end5.discard_crit_edge, %pskb_may_pull.exit86.discard_crit_edge, %if.end.i80.discard_crit_edge, %pskb_may_pull.exit.discard_crit_edge, %if.end.i.discard_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %discard, %if.end36, %if.end16
  %retval.0 = phi i32 [ 0, %discard ], [ %call.i, %if.end36 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_session_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_recv_common(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_session_dec_refcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_reset_ct(ptr nocapture noundef %skb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i, align 8
  %and.i = and i32 %1, -8
  %2 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.nf_conntrack_put.exit_crit_edge, label %land.lhs.true.i

entry.nf_conntrack_put.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #10, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge:  ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #10
  br label %nf_conntrack_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %2) #10
  br label %nf_conntrack_put.exit

nf_conntrack_put.exit:                            ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge, %entry.nf_conntrack_put.exit_crit_edge
  %4 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %_nfct.i, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #10, !srcloc !86
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !84

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @sk_free(ptr noundef %sk) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_receive_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_ip_close(ptr noundef %sk, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 7
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 7, i32 0, i32 1
  %1 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init.exit_crit_edge, label %if.then.i

entry.hlist_del_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %entry
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %2, align 4
  %tobool.not.i3.i = icmp eq ptr %4, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %2, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %0, align 4
  %8 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %entry.hlist_del_init.exit_crit_edge
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %9 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i.i.not.i, label %hlist_del_init.exit.sk_del_node_init.exit_crit_edge, label %if.then.i.i

hlist_del_init.exit.sk_del_node_init.exit_crit_edge: ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_del_node_init.exit

if.then.i.i:                                      ; preds = %hlist_del_init.exit
  %11 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %10, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i3_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i3_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i3

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %10, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i3

if.then.i3:                                       ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i3_crit_edge
  %16 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i3.if.end.i_crit_edge, !prof !81

if.then.i3.if.end.i_crit_edge:                    ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 729, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i3.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.sk_del_node_init.exit_crit_edge, !prof !81

if.end.i.sk_del_node_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_del_node_init.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  br label %sk_del_node_init.exit

sk_del_node_init.exit:                            ; preds = %if.then3.i.i.i.i, %if.end.i.sk_del_node_init.exit_crit_edge, %hlist_del_init.exit.sk_del_node_init.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  tail call void @sk_common_release(ptr noundef %sk) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip_connect(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %l2tp_addr = getelementptr inbounds %struct.sockaddr_l2tpip, ptr %uaddr, i32 0, i32 2
  %0 = ptrtoint ptr %l2tp_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l2tp_addr, align 4
  %and.i = and i32 %1, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end5, label %if.end2.out_sk_crit_edge

if.end2.out_sk_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_sk

if.end5:                                          ; preds = %if.end2
  %call6 = tail call i32 @__ip4_datagram_connect(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.out_sk_crit_edge, label %if.end9

if.end5.out_sk_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_sk

if.end9:                                          ; preds = %if.end5
  %l2tp_conn_id = getelementptr inbounds %struct.sockaddr_l2tpip, ptr %uaddr, i32 0, i32 3
  %6 = ptrtoint ptr %l2tp_conn_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l2tp_conn_id, align 4
  %peer_conn_id = getelementptr inbounds %struct.l2tp_ip_sock, ptr %sk, i32 0, i32 2
  %8 = ptrtoint ptr %peer_conn_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %peer_conn_id, align 4
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  %9 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 7
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.not.i, label %if.end9.hlist_del_init.exit_crit_edge, label %if.then.i

if.end9.hlist_del_init.exit_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %if.end9
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %11, align 4
  %tobool.not.i3.i = icmp eq ptr %13, null
  br i1 %tobool.not.i3.i, label %if.then.i.hlist_del_init.exit_crit_edge, label %do.body13.i.i

if.then.i.hlist_del_init.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %pprev14.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %do.body13.i.i, %if.then.i.hlist_del_init.exit_crit_edge, %if.end9.hlist_del_init.exit_crit_edge
  %16 = load ptr, ptr @l2tp_ip_bind_table, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %9, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %hlist_del_init.exit.sk_add_bind_node.exit_crit_edge, label %do.body12.i.i

hlist_del_init.exit.sk_add_bind_node.exit_crit_edge: ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_add_bind_node.exit

do.body12.i.i:                                    ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i22 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %pprev.i.i22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %9, ptr %pprev.i.i22, align 4
  br label %sk_add_bind_node.exit

sk_add_bind_node.exit:                            ; preds = %do.body12.i.i, %hlist_del_init.exit.sk_add_bind_node.exit_crit_edge
  store volatile ptr %9, ptr @l2tp_ip_bind_table, align 4
  %19 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr @l2tp_ip_bind_table, ptr %pprev.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  br label %out_sk

out_sk:                                           ; preds = %sk_add_bind_node.exit, %if.end5.out_sk_crit_edge, %if.end2.out_sk_crit_edge
  %rc.0 = phi i32 [ %call6, %if.end5.out_sk_crit_edge ], [ %call6, %sk_add_bind_node.exit ], [ -22, %if.end2.out_sk_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #10
  br label %cleanup

cleanup:                                          ; preds = %out_sk, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_sk ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip_disconnect(ptr noundef %sk, i32 noundef %flags) #0 align 64 {
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
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @__udp_disconnect(ptr noundef %sk, i32 noundef %flags) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip_open(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %skc_num to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 115, ptr %skc_num, align 2
  %call2 = tail call i32 @l2tp_ip_hash(ptr noundef %sk)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_ip_destroy_sock(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @l2tp_sk_to_tunnel(ptr noundef %sk) #10
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i5 = icmp eq ptr %1, %sk_write_queue
  %tobool.not.i46 = icmp eq ptr %1, null
  %tobool.not.i7 = or i1 %cmp.i.i5, %tobool.not.i46
  br i1 %tobool.not.i7, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %12, %while.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.45, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.45, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #10
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i = icmp eq ptr %12, %sk_write_queue
  %tobool.not.i4 = icmp eq ptr %12, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i4
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @l2tp_tunnel_delete(ptr noundef nonnull %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup113_crit_edge

entry.cleanup113_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup113

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp = icmp ult i32 %7, 16
  br i1 %cmp, label %if.then2.cleanup113_crit_edge, label %if.end5

if.then2.cleanup113_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup113

if.end5:                                          ; preds = %if.then2
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 4
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %9, label %if.end5.cleanup113_crit_edge [
    i16 2, label %if.end5.cleanup_crit_edge
    i16 0, label %if.end5.cleanup_crit_edge222
  ]

if.end5.cleanup_crit_edge222:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.cleanup113_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup113

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %if.end5.cleanup_crit_edge222
  %l2tp_addr = getelementptr inbounds %struct.sockaddr_l2tpip, ptr %5, i32 0, i32 2
  br label %if.end23

if.else:                                          ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp17.not = icmp eq i8 %12, 1
  br i1 %cmp17.not, label %if.else.if.end23_crit_edge, label %if.else.cleanup113_crit_edge

if.else.cleanup113_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup113

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %cleanup
  %daddr.1.in = phi ptr [ %l2tp_addr, %cleanup ], [ %sk, %if.else.if.end23_crit_edge ]
  %13 = ptrtoint ptr %daddr.1.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %daddr.1 = load i32, ptr %daddr.1.in, align 4
  %add = add i32 %len, 154
  %call24 = tail call ptr @sock_wmalloc(ptr noundef %sk, i32 noundef %add, i32 noundef 0, i32 noundef 3264) #10
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end23.cleanup113_crit_edge, label %if.end27

if.end23.cleanup113_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup113

if.end27:                                         ; preds = %if.end23
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 130
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 18
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %network_header.i, align 4
  %add.ptr.i177 = getelementptr i8, ptr %15, i32 150
  store ptr %add.ptr.i177, ptr %data.i, align 4
  %add.ptr1.i179 = getelementptr i8, ptr %17, i32 150
  store ptr %add.ptr1.i179, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i182 = ptrtoint ptr %add.ptr.i177 to i32
  %sub.ptr.sub.i184 = sub i32 %sub.ptr.lhs.cast.i182, %sub.ptr.rhs.cast.i
  %conv.i185 = trunc i32 %sub.ptr.sub.i184 to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 15, i32 0, i32 19
  %21 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i185, ptr %transport_header.i, align 2
  %call28 = tail call ptr @skb_put(ptr noundef nonnull %call24, i32 noundef 4) #10
  %22 = ptrtoint ptr %call28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %call28, align 4
  %call29 = tail call ptr @skb_put(ptr noundef nonnull %call24, i32 noundef %len) #10
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end27
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !84

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__check_object_size(ptr noundef %call29, i32 noundef %len, i1 noundef zeroext false) #10
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef %call29, i32 noundef %len, ptr noundef %msg_iter.i) #10
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %len)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %len
  br i1 %cmp.i.i, label %if.end34, label %if.then33, !prof !84

if.then33:                                        ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call24, i32 noundef 0) #10
  br label %cleanup113

if.end34:                                         ; preds = %copy_from_iter.exit.i.i
  %fl = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1
  br i1 %tobool.not, label %if.then36, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = tail call ptr @__sk_dst_check(ptr noundef %sk, i32 noundef 0) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end34.if.end38_crit_edge
  %rt.0 = phi ptr [ %call37, %if.then36 ], [ null, %if.end34.if.end38_crit_edge ]
  %23 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end38.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end38.rcu_read_lock.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end38
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end38.rcu_read_lock.exit_crit_edge
  %tobool39.not = icmp eq ptr %rt.0, null
  br i1 %tobool39.not, label %if.then40, label %rcu_read_lock.exit.if.end87_crit_edge

rcu_read_lock.exit.if.end87_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then40:                                        ; preds = %rcu_read_lock.exit
  %inet_opt45 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 5
  %27 = ptrtoint ptr %inet_opt45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %inet_opt45, align 4
  %call47 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true, label %if.then40.do.end56_crit_edge

if.then40.do.end56_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

land.lhs.true:                                    ; preds = %if.then40
  %call49 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true.do.end56_crit_edge, label %land.lhs.true51

land.lhs.true.do.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

land.lhs.true51:                                  ; preds = %land.lhs.true
  %.b173 = load i1, ptr @l2tp_ip_sendmsg.__warned, align 1
  br i1 %.b173, label %land.lhs.true51.do.end56_crit_edge, label %if.then53

land.lhs.true51.do.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

if.then53:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @l2tp_ip_sendmsg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 466, ptr noundef nonnull @.str.7) #10
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %land.lhs.true51.do.end56_crit_edge, %land.lhs.true.do.end56_crit_edge, %if.then40.do.end56_crit_edge
  %tobool58.not = icmp eq ptr %28, null
  br i1 %tobool58.not, label %do.end56.if.end64_crit_edge, label %land.lhs.true59

do.end56.if.end64_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

land.lhs.true59:                                  ; preds = %do.end56
  %srr = getelementptr inbounds %struct.ip_options_rcu, ptr %28, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool61.not = icmp eq i8 %30, 0
  br i1 %tobool61.not, label %land.lhs.true59.if.end64_crit_edge, label %if.then62

land.lhs.true59.if.end64_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then62:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  %opt = getelementptr inbounds %struct.ip_options_rcu, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %opt, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %land.lhs.true59.if.end64_crit_edge, %do.end56.if.end64_crit_edge
  %daddr.2 = phi i32 [ %32, %if.then62 ], [ %daddr.1, %land.lhs.true59.if.end64_crit_edge ], [ %daddr.1, %do.end56.if.end64_crit_edge ]
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %33 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skc_net.i, align 4
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %35 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inet_saddr, align 4
  %37 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %40 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %inet_sport, align 8
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %42 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sk_protocol, align 4
  %conv68 = trunc i16 %43 to i8
  %tos = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %44 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tos, align 4
  %46 = and i8 %45, 30
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %0, align 4
  %49 = lshr i32 %48, 13
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %or = or i8 %51, %46
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %52 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %skc_bound_dev_if, align 4
  %tobool.not.i187 = icmp eq ptr %sk, null
  br i1 %tobool.not.i187, label %sock_net_uid.exit32.i, label %sock_net_uid.exit.i

sock_net_uid.exit.i:                              ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %sk_mark.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %54 = ptrtoint ptr %sk_mark.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sk_mark.i, align 8
  %transparent.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %56 = ptrtoint ptr %transparent.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load.i.i = load i16, ptr %transparent.i.i, align 8
  %57 = and i16 %bf.load.i.i, 5120
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %58 = icmp ne i16 %57, 0
  %flags.0.i.i = zext i1 %58 to i8
  %sk_uid.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %59 = ptrtoint ptr %sk_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %sk_uid.i.i, align 4
  %60 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %53, ptr %fl, align 8
  %flowic_iif.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 1
  %61 = ptrtoint ptr %flowic_iif.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %flowic_iif.i.i, align 4
  %flowic_mark.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 2
  %62 = ptrtoint ptr %flowic_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %55, ptr %flowic_mark.i.i, align 8
  %flowic_tos.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 3
  %63 = ptrtoint ptr %flowic_tos.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %or, ptr %flowic_tos.i.i, align 4
  %flowic_scope.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 4
  %64 = ptrtoint ptr %flowic_scope.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %flowic_scope.i.i, align 1
  %flowic_proto.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 5
  %65 = ptrtoint ptr %flowic_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv68, ptr %flowic_proto.i.i, align 2
  %flowic_flags.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 6
  %66 = ptrtoint ptr %flowic_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %flags.0.i.i, ptr %flowic_flags.i.i, align 1
  %flowic_secid.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 7
  %67 = ptrtoint ptr %flowic_secid.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %flowic_secid.i.i, align 8
  %flowic_tun_key.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 9
  %68 = ptrtoint ptr %flowic_tun_key.i.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 0, ptr %flowic_tun_key.i.i, align 8
  %flowic_uid.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 8
  %69 = ptrtoint ptr %flowic_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %flowic_uid.i.i, align 4
  %daddr10.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %70 = ptrtoint ptr %daddr10.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %daddr.2, ptr %daddr10.i.i, align 4
  %saddr11.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %saddr11.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %36, ptr %saddr11.i.i, align 8
  %uli.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  %72 = ptrtoint ptr %uli.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %39, ptr %uli.i.i, align 8
  %sport14.i.i = getelementptr inbounds %struct.anon.39, ptr %uli.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %sport14.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %41, ptr %sport14.i.i, align 2
  %flowic_multipath_hash.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 10
  %74 = ptrtoint ptr %flowic_multipath_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %flowic_multipath_hash.i.i, align 8
  tail call void @security_sk_classify_flow(ptr noundef nonnull %sk, ptr noundef %fl) #10
  br label %ip_route_output_ports.exit

sock_net_uid.exit32.i:                            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %user_ns.i28.i = getelementptr inbounds %struct.net, ptr %34, i32 0, i32 11
  %75 = ptrtoint ptr %user_ns.i28.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %user_ns.i28.i, align 4
  %call.i29.i = tail call i32 @make_kuid(ptr noundef %76, i32 noundef 0) #10
  %77 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %53, ptr %fl, align 8
  call void @__asan_store4_noabort(i32 1060)
  store i32 1, ptr inttoptr (i32 1060 to ptr), align 4
  call void @__asan_store4_noabort(i32 1064)
  store i32 0, ptr inttoptr (i32 1064 to ptr), align 8
  call void @__asan_store1_noabort(i32 1068)
  store i8 %or, ptr inttoptr (i32 1068 to ptr), align 4
  call void @__asan_store1_noabort(i32 1069)
  store i8 0, ptr inttoptr (i32 1069 to ptr), align 1
  call void @__asan_store1_noabort(i32 1070)
  store i8 %conv68, ptr inttoptr (i32 1070 to ptr), align 2
  call void @__asan_store1_noabort(i32 1071)
  store i8 0, ptr inttoptr (i32 1071 to ptr), align 1
  call void @__asan_store4_noabort(i32 1072)
  store i32 0, ptr inttoptr (i32 1072 to ptr), align 16
  call void @__asan_store8_noabort(i32 1080)
  store i64 0, ptr inttoptr (i32 1080 to ptr), align 8
  call void @__asan_store4_noabort(i32 1076)
  store i32 %call.i29.i, ptr inttoptr (i32 1076 to ptr), align 4
  call void @__asan_store4_noabort(i32 1100)
  store i32 %daddr.2, ptr inttoptr (i32 1100 to ptr), align 4
  call void @__asan_store4_noabort(i32 1096)
  store i32 %36, ptr inttoptr (i32 1096 to ptr), align 8
  call void @__asan_store2_noabort(i32 1104)
  store i16 %39, ptr inttoptr (i32 1104 to ptr), align 16
  call void @__asan_store2_noabort(i32 1106)
  store i16 %41, ptr inttoptr (i32 1106 to ptr), align 2
  call void @__asan_store4_noabort(i32 1088)
  store i32 0, ptr inttoptr (i32 1088 to ptr), align 64
  br label %ip_route_output_ports.exit

ip_route_output_ports.exit:                       ; preds = %sock_net_uid.exit32.i, %sock_net_uid.exit.i
  %call11.i = tail call ptr @ip_route_output_flow(ptr noundef %34, ptr noundef %fl, ptr noundef %sk) #10
  %cmp.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %no_route, label %if.end78

if.end78:                                         ; preds = %ip_route_output_ports.exit
  br i1 %tobool.not, label %cleanup84.thread, label %cleanup84.thread216

cleanup84.thread:                                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sk_setup_caps(ptr noundef %sk, ptr noundef %call11.i) #10
  br label %if.end87

cleanup84.thread216:                              ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i188 = icmp eq ptr %call11.i, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 15, i32 0, i32 3
  %78 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i188, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %79 = ptrtoint ptr %call11.i to i32
  br label %xmit

if.end87:                                         ; preds = %cleanup84.thread, %rcu_read_lock.exit.if.end87_crit_edge
  %rt.1 = phi ptr [ %rt.0, %rcu_read_lock.exit.if.end87_crit_edge ], [ %call11.i, %cleanup84.thread ]
  %call.i189 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool.not.i190 = icmp eq i32 %call.i189, 0
  br i1 %tobool.not.i190, label %land.rhs.i, label %if.end87.skb_dst_set_noref.exit_crit_edge

if.end87.skb_dst_set_noref.exit_crit_edge:        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_set_noref.exit

land.rhs.i:                                       ; preds = %if.end87
  %call1.i191 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i191)
  %tobool2.not.i = icmp eq i32 %call1.i191, 0
  br i1 %tobool2.not.i, label %do.end.i, label %land.rhs.i.skb_dst_set_noref.exit_crit_edge, !prof !81

land.rhs.i.skb_dst_set_noref.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_set_noref.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1043, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst_set_noref.exit

skb_dst_set_noref.exit:                           ; preds = %do.end.i, %land.rhs.i.skb_dst_set_noref.exit_crit_edge, %if.end87.skb_dst_set_noref.exit_crit_edge
  %tobool23.not.i = icmp eq ptr %rt.1, null
  %slow_gro.i192 = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 15, i32 0, i32 3
  %80 = ptrtoint ptr %slow_gro.i192 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %bf.load.i193 = load i32, ptr %slow_gro.i192, align 2
  %bf.load.mask.i194 = and i32 %bf.load.i193, 4096
  %bf.shl.i195 = select i1 %tobool23.not.i, i32 %bf.load.mask.i194, i32 4096
  %bf.clear30.i = and i32 %bf.load.i193, -4097
  %bf.set.i196 = or i32 %bf.shl.i195, %bf.clear30.i
  store i32 %bf.set.i196, ptr %slow_gro.i192, align 2
  %81 = ptrtoint ptr %rt.1 to i32
  %or31.i = or i32 %81, 1
  br label %xmit

xmit:                                             ; preds = %skb_dst_set_noref.exit, %cleanup84.thread216
  %.sink = phi i32 [ %79, %cleanup84.thread216 ], [ %or31.i, %skb_dst_set_noref.exit ]
  %82 = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %.sink, ptr %82, align 8
  %call91 = tail call i32 @ip_queue_xmit(ptr noundef %sk, ptr noundef nonnull %call24, ptr noundef %fl) #10
  %call.i197 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i197, label %xmit.error_crit_edge, label %land.lhs.true.i200

xmit.error_crit_edge:                             ; preds = %xmit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

land.lhs.true.i200:                               ; preds = %xmit
  %call1.i198 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i198)
  %tobool.not.i199 = icmp eq i32 %call1.i198, 0
  br i1 %tobool.not.i199, label %land.lhs.true.i200.error_crit_edge, label %land.lhs.true2.i202

land.lhs.true.i200.error_crit_edge:               ; preds = %land.lhs.true.i200
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

land.lhs.true2.i202:                              ; preds = %land.lhs.true.i200
  %.b4.i201 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i201, label %land.lhs.true2.i202.error_crit_edge, label %if.then.i203

land.lhs.true2.i202.error_crit_edge:              ; preds = %land.lhs.true2.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.then.i203:                                     ; preds = %land.lhs.true2.i202
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #10
  br label %error

error:                                            ; preds = %if.then.i203, %land.lhs.true2.i202.error_crit_edge, %land.lhs.true.i200.error_crit_edge, %xmit.error_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  %84 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i204 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i.i204 to ptr
  %preempt_count.i.i.i.i205 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %preempt_count.i.i.i.i205 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %preempt_count.i.i.i.i205, align 4
  %sub.i.i.i = add i32 %87, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i205, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92220 = icmp slt i32 %call91, 0
  %spec.select = select i1 %cmp92220, i32 %call91, i32 %len
  br label %cleanup113

no_route:                                         ; preds = %ip_route_output_ports.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rcu_read_unlock()
  tail call fastcc void @local_bh_disable()
  %88 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %skc_net.i, align 4
  %mib = getelementptr inbounds %struct.net, ptr %89, i32 0, i32 30
  %90 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mib, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx, align 4
  %add105 = add i32 %98, %92
  %99 = inttoptr i32 %add105 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %99, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx106 = getelementptr [37 x i64], ptr %99, i32 0, i32 15
  %100 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx106, align 8
  %add107 = add i64 %101, 1
  store i64 %add107, ptr %arrayidx106, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %99, i32 0, i32 1, i32 0, i32 1
  %102 = tail call ptr @llvm.returnaddress(i32 0) #10
  %103 = ptrtoint ptr %102 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %103) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %104 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %105, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef nonnull %call24, i32 noundef 0) #10
  br label %cleanup113

cleanup113:                                       ; preds = %no_route, %error, %if.then33, %if.end23.cleanup113_crit_edge, %if.else.cleanup113_crit_edge, %if.end5.cleanup113_crit_edge, %if.then2.cleanup113_crit_edge, %entry.cleanup113_crit_edge
  %rc.3 = phi i32 [ -107, %entry.cleanup113_crit_edge ], [ -113, %no_route ], [ -89, %if.else.cleanup113_crit_edge ], [ -97, %if.end5.cleanup113_crit_edge ], [ -22, %if.then2.cleanup113_crit_edge ], [ -12, %if.end23.cleanup113_crit_edge ], [ -14, %if.then33 ], [ %spec.select, %error ]
  tail call void @release_sock(ptr noundef %sk) #10
  ret i32 %rc.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %noblock, i32 noundef %flags, ptr nocapture noundef writeonly %addr_len) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -95, ptr %err, align 4
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %msg, align 8
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call1 = call ptr @skb_recv_datagram(ptr noundef %sk, i32 noundef %flags, i32 noundef %noblock, ptr noundef nonnull %err) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  %len5 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 6
  %3 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %len)
  %cmp = icmp ugt i32 %4, %len
  br i1 %cmp, label %if.then6, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %5 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_flags, align 4
  %or = or i32 %6, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %copied.0 = phi i32 [ %len, %if.then6 ], [ %4, %if.end4.if.end7_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call1, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #10
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.done_crit_edge

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end11:                                         ; preds = %if.end7
  %8 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 17
  %11 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 7
  %13 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.end11.if.then.i_crit_edge

if.end11.if.then.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end11
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %17 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sk_tsflags.i, align 8
  %conv.i = zext i16 %18 to i32
  %and.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool3.not.i = icmp eq i64 %10, 0
  %and6.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond.i, label %lor.lhs.false8.i, label %lor.lhs.false2.i.if.then.i_crit_edge

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false2.i
  %19 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %hwtstamps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool9.not.i = icmp eq i64 %20, 0
  %21 = and i16 %18, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool14.not.i = icmp eq i16 %21, 0
  %or.cond36.i = select i1 %tobool9.not.i, i1 true, i1 %tobool14.not.i
  br i1 %or.cond36.i, label %if.else.i, label %lor.lhs.false8.i.if.then.i_crit_edge

lor.lhs.false8.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false8.i.if.then.i_crit_edge, %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end11.if.then.i_crit_edge
  call void @__sock_recv_timestamp(ptr noundef %msg, ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk_stamp_seq.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64
  %lock.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #10
  %22 = ptrtoint ptr %sk_stamp_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_stamp_seq.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i.i.i.i, ptr %sk_stamp_seq.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !91
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 0, i32 0, i32 1
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %25) #10
  %sk_stamp.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %26 = ptrtoint ptr %sk_stamp.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %10, ptr %sk_stamp.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %25) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %27 = ptrtoint ptr %sk_stamp_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_stamp_seq.i.i, align 4
  %inc.i.i.i.i.i = add i32 %28, 1
  store i32 %inc.i.i.i.i.i, ptr %sk_stamp_seq.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %13, align 4
  %31 = and i32 %30, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i35.not.i = icmp eq i32 %31, 0
  br i1 %tobool.i35.not.i, label %if.end.i.sock_recv_timestamp.exit_crit_edge, label %land.lhs.true17.i

if.end.i.sock_recv_timestamp.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_recv_timestamp.exit

land.lhs.true17.i:                                ; preds = %if.end.i
  %wifi_acked_valid.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15
  %32 = ptrtoint ptr %wifi_acked_valid.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %wifi_acked_valid.i, align 8
  %33 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool19.not.i = icmp eq i16 %33, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge, label %if.then20.i

land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_recv_timestamp.exit

if.then20.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sock_recv_wifi_status(ptr noundef %msg, ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %sock_recv_timestamp.exit

sock_recv_timestamp.exit:                         ; preds = %if.then20.i, %land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge, %if.end.i.sock_recv_timestamp.exit_crit_edge
  %tobool12.not = icmp eq ptr %2, null
  br i1 %tobool12.not, label %sock_recv_timestamp.exit.if.end15_crit_edge, label %if.then13

sock_recv_timestamp.exit.if.end15_crit_edge:      ; preds = %sock_recv_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %sock_recv_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2, ptr %2, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %38 to i32
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %saddr, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 2
  %41 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %sin_addr, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 1
  %42 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %sin_port, align 2
  %__pad = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 3
  %43 = ptrtoint ptr %__pad to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 0, ptr %__pad, align 4
  %44 = ptrtoint ptr %addr_len to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %addr_len, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %sock_recv_timestamp.exit.if.end15_crit_edge
  %cmsg_flags = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 4
  %45 = ptrtoint ptr %cmsg_flags to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cmsg_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool16.not = icmp eq i16 %46, 0
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %47 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  call void @ip_cmsg_recv_offset(ptr noundef %msg, ptr noundef %49, ptr noundef nonnull %call1, i32 noundef 0, i32 noundef 0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %and19 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.done_crit_edge, label %if.then21

if.end18.done_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len5, align 4
  br label %done

done:                                             ; preds = %if.then21, %if.end18.done_crit_edge, %if.end7.done_crit_edge
  %copied.1 = phi i32 [ %copied.0, %if.end7.done_crit_edge ], [ %51, %if.then21 ], [ %copied.0, %if.end18.done_crit_edge ]
  call void @skb_free_datagram(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %out

out:                                              ; preds = %done, %if.end.out_crit_edge, %entry.out_crit_edge
  %copied.2 = phi i32 [ 0, %entry.out_crit_edge ], [ %copied.1, %done ], [ 0, %if.end.out_crit_edge ]
  %52 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool24.not = icmp eq i32 %53, 0
  %copied.2. = select i1 %tobool24.not, i32 %copied.2, i32 %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %copied.2.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip_bind(ptr noundef %sk, ptr nocapture noundef readonly %uaddr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp2.not = icmp eq i16 %3, 2
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %7 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.end5.out_crit_edge, label %if.end8

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.end5
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp10.not = icmp eq i8 %9, 7
  br i1 %cmp10.not, label %if.end13, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end13:                                         ; preds = %if.end8
  %l2tp_addr = getelementptr inbounds %struct.sockaddr_l2tpip, ptr %uaddr, i32 0, i32 2
  %10 = ptrtoint ptr %l2tp_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %l2tp_addr, align 4
  %call14 = tail call i32 @inet_addr_type(ptr noundef %1, i32 noundef %11) #10
  %12 = ptrtoint ptr %l2tp_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %l2tp_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14)
  %cmp17.not = icmp eq i32 %call14, 2
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp17.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call14)
  %cmp20.not = icmp eq i32 %call14, 5
  %or.cond85 = select i1 %or.cond, i1 true, i1 %cmp20.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call14)
  %cmp23.not = icmp eq i32 %call14, 3
  %or.cond86 = select i1 %or.cond85, i1 true, i1 %cmp23.not
  br i1 %or.cond86, label %if.end26, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end26:                                         ; preds = %if.end13
  br i1 %tobool.not, label %if.end26.if.end37_crit_edge, label %if.then30

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %skc_rcv_saddr = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %14 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %skc_rcv_saddr, align 4
  %15 = ptrtoint ptr %l2tp_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %l2tp_addr, align 4
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %17 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %inet_saddr, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.end26.if.end37_crit_edge
  %18 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call14, label %if.end37.if.end44_crit_edge [
    i32 5, label %if.end37.if.then42_crit_edge
    i32 3, label %if.end37.if.then42_crit_edge89
  ]

if.end37.if.then42_crit_edge89:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.end37.if.then42_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then42:                                        ; preds = %if.end37.if.then42_crit_edge, %if.end37.if.then42_crit_edge89
  %inet_saddr43 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %19 = ptrtoint ptr %inet_saddr43 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %inet_saddr43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end37.if.end44_crit_edge
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  %20 = ptrtoint ptr %l2tp_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %l2tp_addr, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %22 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %skc_bound_dev_if, align 4
  %l2tp_conn_id = getelementptr inbounds %struct.sockaddr_l2tpip, ptr %uaddr, i32 0, i32 3
  %24 = ptrtoint ptr %l2tp_conn_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %l2tp_conn_id, align 4
  %26 = load ptr, ptr @l2tp_ip_bind_table, align 4
  %tobool.not.i = icmp eq ptr %26, null
  %add.ptr.i = getelementptr i8, ptr %26, i32 -24
  %tobool2.not8589.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not85.i = or i1 %tobool.not.i, %tobool2.not8589.i
  br i1 %tobool2.not85.i, label %if.end44.if.end51_crit_edge, label %for.body.lr.ph.i

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

for.body.lr.ph.i:                                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not.i = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool18.not.i = icmp eq i32 %21, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sk.086.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr49.i, %for.inc.i.for.body.i_crit_edge ]
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.086.i, i32 0, i32 9
  %27 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %28, %1
  br i1 %cmp.i.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %sk.086.i, i32 0, i32 6
  %29 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %skc_bound_dev_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool7.not.i = icmp eq i32 %30, 0
  %or.cond.i = or i1 %tobool8.not.i, %tobool7.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %23)
  %cmp.not.i = icmp eq i32 %30, %23
  %or.cond73.i = or i1 %cmp.not.i, %or.cond.i
  br i1 %or.cond73.i, label %if.end13.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end.i
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon, ptr %sk.086.i, i32 0, i32 1
  %31 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %skc_rcv_saddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool16.not.i = icmp eq i32 %32, 0
  %or.cond74.i = or i1 %tobool18.not.i, %tobool16.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %21)
  %cmp23.not.i = icmp eq i32 %32, %21
  %or.cond75.i = or i1 %cmp23.not.i, %or.cond74.i
  br i1 %or.cond75.i, label %if.end25.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end25.i:                                       ; preds = %if.end13.i
  %conn_id.i = getelementptr inbounds %struct.l2tp_ip_sock, ptr %sk.086.i, i32 0, i32 1
  %33 = ptrtoint ptr %conn_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %conn_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %25)
  %cmp38.not.i = icmp eq i32 %34, %25
  br i1 %cmp38.not.i, label %if.then50, label %if.end25.i.for.inc.i_crit_edge

if.end25.i.for.inc.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end25.i.for.inc.i_crit_edge, %if.end13.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %35 = getelementptr inbounds %struct.sock_common, ptr %sk.086.i, i32 0, i32 7
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %tobool45.not.i = icmp eq ptr %37, null
  %add.ptr49.i = getelementptr i8, ptr %37, i32 -24
  %tobool2.not90.i = icmp eq ptr %add.ptr49.i, null
  %tobool2.not.i = or i1 %tobool45.not.i, %tobool2.not90.i
  br i1 %tobool2.not.i, label %for.inc.i.if.end51_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end51_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then50:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  br label %out

if.end51:                                         ; preds = %for.inc.i.if.end51_crit_edge, %if.end44.if.end51_crit_edge
  tail call fastcc void @sk_dst_reset(ptr noundef %sk)
  %38 = ptrtoint ptr %l2tp_conn_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %l2tp_conn_id, align 4
  %conn_id = getelementptr inbounds %struct.l2tp_ip_sock, ptr %sk, i32 0, i32 1
  %40 = ptrtoint ptr %conn_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %conn_id, align 8
  %41 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 7
  %42 = load ptr, ptr @l2tp_ip_bind_table, align 4
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %42, ptr %41, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end51.sk_add_bind_node.exit_crit_edge, label %do.body12.i.i

if.end51.sk_add_bind_node.exit_crit_edge:         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_add_bind_node.exit

do.body12.i.i:                                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %41, ptr %pprev.i.i, align 4
  br label %sk_add_bind_node.exit

sk_add_bind_node.exit:                            ; preds = %do.body12.i.i, %if.end51.sk_add_bind_node.exit_crit_edge
  store volatile ptr %41, ptr @l2tp_ip_bind_table, align 4
  %pprev34.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 7, i32 0, i32 1
  %45 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr @l2tp_ip_bind_table, ptr %pprev34.i.i, align 4
  tail call fastcc void @sk_del_node_init(ptr noundef %sk)
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %4, align 4
  %and.i.i = and i32 %47, -257
  store i32 %and.i.i, ptr %4, align 4
  br label %out

out:                                              ; preds = %sk_add_bind_node.exit, %if.then50, %if.end13.out_crit_edge, %if.end8.out_crit_edge, %if.end5.out_crit_edge
  %ret.0 = phi i32 [ -22, %if.end8.out_crit_edge ], [ -98, %if.then50 ], [ 0, %sk_add_bind_node.exit ], [ -22, %if.end5.out_crit_edge ], [ -99, %if.end13.out_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip_backlog_recv(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %mib = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mib, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %11, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx6 = getelementptr [37 x i64], ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 %13, 1
  store i64 %add7, ptr %arrayidx6, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %11, i32 0, i32 1, i32 0, i32 1
  %14 = tail call ptr @llvm.returnaddress(i32 0) #10
  %15 = ptrtoint ptr %14 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %16 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip_hash(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !81

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %5 = load ptr, ptr @l2tp_ip_table, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %4, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %sock_hold.exit.i.sk_add_node.exit_crit_edge, label %do.body12.i.i.i

sock_hold.exit.i.sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_add_node.exit

do.body12.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %4, ptr %pprev.i.i.i, align 4
  br label %sk_add_node.exit

sk_add_node.exit:                                 ; preds = %do.body12.i.i.i, %sock_hold.exit.i.sk_add_node.exit_crit_edge
  store volatile ptr %4, ptr @l2tp_ip_table, align 4
  %8 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr @l2tp_ip_table, ptr %pprev.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  br label %if.end

if.end:                                           ; preds = %sk_add_node.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_ip_unhash(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i.i.not.i, label %if.end.sk_del_node_init.exit_crit_edge, label %if.then.i.i

if.end.sk_del_node_init.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_del_node_init.exit

if.then.i.i:                                      ; preds = %if.end
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %3, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %3, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !81

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 729, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.sk_del_node_init.exit_crit_edge, !prof !81

if.end.i.sk_del_node_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_del_node_init.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  br label %sk_del_node_init.exit

sk_del_node_init.exit:                            ; preds = %if.then3.i.i.i.i, %if.end.i.sk_del_node_init.exit_crit_edge, %if.end.sk_del_node_init.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @l2tp_ip_lock) #10
  br label %return

return:                                           ; preds = %sk_del_node_init.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_del_node_init(ptr noundef %sk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.not, label %entry.if.end22_crit_edge, label %if.then.i

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then.i:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %1, align 4
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.then.i.if.then_crit_edge, label %do.body13.i.i.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.body13.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %1, ptr %pprev14.i.i.i, align 4
  br label %if.then

if.then:                                          ; preds = %do.body13.i.i.i, %if.then.i.if.then_crit_edge
  %7 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #10
  %8 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %skc_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge, !prof !81

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 729, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #10, !srcloc !86
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end.if.end22_crit_edge, !prof !81

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then3.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 4) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then3.i.i.i, %if.end.if.end22_crit_edge, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip4_datagram_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_sk_to_tunnel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_tunnel_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_wmalloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_queue_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %5 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %14 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %33 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !84

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !91
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #10
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_cmsg_recv_offset(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_dst_reset(ptr noundef %sk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_tx_queue_mapping.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %0 = ptrtoint ptr %skc_tx_queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i, align 4
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %1 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sk_dst_pending_confirm.i, align 8
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_dst_cache.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %sk_dst_cache.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_dst_cache.i) #10, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  %3 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @dst_release(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_register_protosw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !40, !42, !44, !45, !47, !48, !50, !52, !53, !54, !56, !57, !59, !60, !62, !64, !65, !66}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/l2tp/l2tp_ip.c", i32 583, i32 9}
!2 = !{ptr @__ksymtab_l2tp_ioctl, !3, !"__ksymtab_l2tp_ioctl", i1 false, i1 false}
!3 = !{!"../net/l2tp/l2tp_ip.c", i32 585, i32 1}
!4 = !{ptr @__initcall__kmod_l2tp_ip__521_670_l2tp_ip_init6, !5, !"__initcall__kmod_l2tp_ip__521_670_l2tp_ip_init6", i1 false, i1 false}
!5 = !{!"../net/l2tp/l2tp_ip.c", i32 670, i32 1}
!6 = !{ptr @__exitcall_l2tp_ip_exit, !7, !"__exitcall_l2tp_ip_exit", i1 false, i1 false}
!7 = !{!"../net/l2tp/l2tp_ip.c", i32 671, i32 1}
!8 = !{ptr @__UNIQUE_ID_file522, !9, !"__UNIQUE_ID_file522", i1 false, i1 false}
!9 = !{!"../net/l2tp/l2tp_ip.c", i32 673, i32 1}
!10 = !{ptr @__UNIQUE_ID_license523, !9, !"__UNIQUE_ID_license523", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author524, !12, !"__UNIQUE_ID_author524", i1 false, i1 false}
!12 = !{!"../net/l2tp/l2tp_ip.c", i32 674, i32 1}
!13 = !{ptr @__UNIQUE_ID_description525, !14, !"__UNIQUE_ID_description525", i1 false, i1 false}
!14 = !{!"../net/l2tp/l2tp_ip.c", i32 675, i32 1}
!15 = !{ptr @__UNIQUE_ID_version526, !16, !"__UNIQUE_ID_version526", i1 false, i1 false}
!16 = !{!"../net/l2tp/l2tp_ip.c", i32 676, i32 1}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__modver_attr, !16, !"__modver_attr", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_alias527, !22, !"__UNIQUE_ID_alias527", i1 false, i1 false}
!22 = !{!"../net/l2tp/l2tp_ip.c", i32 681, i32 1}
!23 = !{ptr @__UNIQUE_ID_alias528, !24, !"__UNIQUE_ID_alias528", i1 false, i1 false}
!24 = !{!"../net/l2tp/l2tp_ip.c", i32 682, i32 1}
!25 = !{ptr @l2tp_ip_protosw, !26, !"l2tp_ip_protosw", i1 false, i1 false}
!26 = !{!"../net/l2tp/l2tp_ip.c", i32 629, i32 28}
!27 = !{ptr @l2tp_ip_ops, !28, !"l2tp_ip_ops", i1 false, i1 false}
!28 = !{!"../net/l2tp/l2tp_ip.c", i32 607, i32 31}
!29 = !{ptr @l2tp_ip_protocol, !30, !"l2tp_ip_protocol", i1 false, i1 false}
!30 = !{!"../net/l2tp/l2tp_ip.c", i32 636, i32 28}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/l2tp/l2tp_ip.c", i32 36, i32 8}
!33 = !{ptr @l2tp_ip_lock, !32, !"l2tp_ip_lock", i1 false, i1 false}
!34 = !{ptr @l2tp_ip_bind_table, !35, !"l2tp_ip_bind_table", i1 false, i1 false}
!35 = !{!"../net/l2tp/l2tp_ip.c", i32 38, i32 26}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!38 = !{ptr @l2tp_ip_prot, !39, !"l2tp_ip_prot", i1 false, i1 false}
!39 = !{!"../net/l2tp/l2tp_ip.c", i32 587, i32 21}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/net/sock.h", i32 729, i32 3}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../net/l2tp/l2tp_ip.c", i32 466, i32 14}
!44 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!47 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!52 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!56 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!59 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @l2tp_ip_table, !61, !"l2tp_ip_table", i1 false, i1 false}
!61 = !{!"../net/l2tp/l2tp_ip.c", i32 37, i32 26}
!62 = !{ptr @.str.14, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/l2tp/l2tp_ip.c", i32 644, i32 2}
!64 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @l2tp_ip_init._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @l2tp_ip_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{!"sp"}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 4840831}
!78 = !{i64 4841028}
!79 = !{i64 2152326261}
!80 = !{i64 2157924968, i64 2157925248, i64 2157925582, i64 2157925916}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2154584073, i64 2154584561, i64 2154584110, i64 2154584166, i64 2154584200, i64 2154584224, i64 2154584265, i64 2154584286, i64 2154584314, i64 2154584348}
!83 = !{i64 2148373787, i64 2148373819, i64 2148373848, i64 2148373882, i64 2148373913, i64 2148373936}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2148461788}
!86 = !{i64 2148376252, i64 2148376284, i64 2148376313, i64 2148376347, i64 2148376378, i64 2148376401}
!87 = !{i64 2150543441}
!88 = !{i64 2149668894}
!89 = !{i64 2149669160}
!90 = !{i64 2150285913}
!91 = !{i64 2150285588}
!92 = !{i64 2150177515}
!93 = !{i64 2150182449}
!94 = !{i64 2150204167}
!95 = !{i64 2150209061}
!96 = !{i64 2156758774}
!97 = !{i64 879025, i64 879042, i64 879066, i64 879092, i64 879110}
!98 = !{i64 2156759119}
