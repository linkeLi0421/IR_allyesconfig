; ModuleID = '/llk/IR_all_yes/net/can/af_can.c_pt.bc'
source_filename = "../net/can/af_can.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+can_sock_destruct\22, \22a\22\09"
module asm "\09.weak\09__crc_can_sock_destruct\09\09\09\09"
module asm "\09.long\09__crc_can_sock_destruct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_sock_destruct:\09\09\09\09\09"
module asm "\09.asciz \09\22can_sock_destruct\22\09\09\09\09\09"
module asm "__kstrtabns_can_sock_destruct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+can_send\22, \22a\22\09"
module asm "\09.weak\09__crc_can_send\09\09\09\09"
module asm "\09.long\09__crc_can_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_send:\09\09\09\09\09"
module asm "\09.asciz \09\22can_send\22\09\09\09\09\09"
module asm "__kstrtabns_can_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+can_rx_register\22, \22a\22\09"
module asm "\09.weak\09__crc_can_rx_register\09\09\09\09"
module asm "\09.long\09__crc_can_rx_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_register:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_register\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+can_rx_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_can_rx_unregister\09\09\09\09"
module asm "\09.long\09__crc_can_rx_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+can_proto_register\22, \22a\22\09"
module asm "\09.weak\09__crc_can_proto_register\09\09\09\09"
module asm "\09.long\09__crc_can_proto_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_proto_register:\09\09\09\09\09"
module asm "\09.asciz \09\22can_proto_register\22\09\09\09\09\09"
module asm "__kstrtabns_can_proto_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+can_proto_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_can_proto_unregister\09\09\09\09"
module asm "\09.long\09__crc_can_proto_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_proto_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22can_proto_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_can_proto_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.144 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_pkg_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_dev_rcv_lists = type { [4 x %struct.hlist_head], [2048 x %struct.hlist_head], [1024 x %struct.hlist_head], i32 }
%struct.receiver = type { %struct.hlist_node, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.can_rcv_lists_stats = type { i32, i32, i32, i32 }
%struct.can_proto = type { i32, i32, ptr, ptr }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.145, i8, i8, i8, [8 x i8] }
%union.anon.145 = type { i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.70, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.70 = type { ptr }

@__UNIQUE_ID_description457 = internal constant [52 x i8] c"can.description=Controller Area Network PF_CAN core\00", section ".modinfo", align 1
@__UNIQUE_ID_file458 = internal constant [21 x i8] c"can.file=net/can/can\00", section ".modinfo", align 1
@__UNIQUE_ID_license459 = internal constant [25 x i8] c"can.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author460 = internal constant [104 x i8] c"can.author=Urs Thuermann <urs.thuermann@volkswagen.de>, Oliver Hartkopp <oliver.hartkopp@volkswagen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias461 = internal constant [20 x i8] c"can.alias=net-pf-29\00", section ".modinfo", align 1
@__param_str_stats_timer = internal constant [16 x i8] c"can.stats_timer\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@stats_timer = internal global i32 1, section ".data..read_mostly", align 4
@__param_stats_timer = internal constant %struct.kernel_param { ptr @__param_str_stats_timer, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @stats_timer } }, section "__param", align 4
@__UNIQUE_ID_stats_timertype462 = internal constant [29 x i8] c"can.parmtype=stats_timer:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stats_timer463 = internal constant [62 x i8] c"can.parm=stats_timer:enable timer for statistics (default:on)\00", section ".modinfo", align 1
@__kstrtab_can_sock_destruct = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_sock_destruct = external dso_local constant [0 x i8], align 1
@__ksymtab_can_sock_destruct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_sock_destruct to i32), ptr @__kstrtab_can_sock_destruct, ptr @__kstrtabns_can_sock_destruct }, section "___ksymtab+can_sock_destruct", align 4
@__kstrtab_can_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_send = external dso_local constant [0 x i8], align 1
@__ksymtab_can_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_send to i32), ptr @__kstrtab_can_send, ptr @__kstrtabns_can_send }, section "___ksymtab+can_send", align 4
@rcv_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__kstrtab_can_rx_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_register = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_register to i32), ptr @__kstrtab_can_rx_register, ptr @__kstrtabns_can_rx_register }, section "___ksymtab+can_rx_register", align 4
@can_rx_unregister.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/can/af_can.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@can_rx_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014can: receive list entry not found for dev %s, id %03X, mask %03X\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"can_rx_unregister\00", [46 x i8] zeroinitializer }, align 32
@can_rx_unregister._entry_ptr = internal global ptr @can_rx_unregister._entry, section ".printk_index", align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_can_rx_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_unregister to i32), ptr @__kstrtab_can_rx_unregister, ptr @__kstrtabns_can_rx_unregister }, section "___ksymtab+can_rx_unregister", align 4
@can_proto_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013can: protocol number %d out of range\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can_proto_register\00", [45 x i8] zeroinitializer }, align 32
@can_proto_register._entry_ptr = internal global ptr @can_proto_register._entry, section ".printk_index", align 4
@proto_tab_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @proto_tab_lock, i64 52), ptr getelementptr (i8, ptr @proto_tab_lock, i64 52) }, ptr @proto_tab_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@proto_tab = internal global [8 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@can_proto_register._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013can: protocol %d already registered\0A\00", [57 x i8] zeroinitializer }, align 32
@can_proto_register._entry_ptr.9 = internal global ptr @can_proto_register._entry.7, section ".printk_index", align 4
@__kstrtab_can_proto_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_proto_register = external dso_local constant [0 x i8], align 1
@__ksymtab_can_proto_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_proto_register to i32), ptr @__kstrtab_can_proto_register, ptr @__kstrtabns_can_proto_register }, section "___ksymtab+can_proto_register", align 4
@__kstrtab_can_proto_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_proto_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_can_proto_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_proto_unregister to i32), ptr @__kstrtab_can_proto_unregister, ptr @__kstrtabns_can_proto_unregister }, section "___ksymtab+can_proto_unregister", align 4
@canfd_packet = internal global %struct.packet_type { i16 13, i8 0, ptr null, ptr null, ptr @canfd_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@can_packet = internal global %struct.packet_type { i16 12, i8 0, ptr null, ptr null, ptr @can_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@can_pernet_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @can_pernet_init, ptr null, ptr @can_pernet_exit, ptr null, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_can__503_918_can_init6 = internal global ptr @can_init, section ".initcall6.init", align 4
@__exitcall_can_exit = internal global ptr @can_exit, section ".exitcall.exit", align 4
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"proto_tab_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"proto_tab_lock\00", [17 x i8] zeroinitializer }, align 32
@canfd_rcv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@canfd_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014PF_CAN: dropped non conform CAN FD skbuff: dev type %d, len %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"canfd_rcv\00", [22 x i8] zeroinitializer }, align 32
@canfd_rcv._entry_ptr = internal global ptr @canfd_rcv._entry, section ".printk_index", align 4
@canfd_rcv.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@canfd_rcv._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014PF_CAN: dropped non conform CAN FD skbuff: dev type %d, len %d, datalen %d\0A\00", [50 x i8] zeroinitializer }, align 32
@canfd_rcv._entry_ptr.17 = internal global ptr @canfd_rcv._entry.15, section ".printk_index", align 4
@skbcounter = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@can_rcv_filter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@can_rcv_filter.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@can_rcv_filter.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@can_rcv_filter.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@can_rcv_filter.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@can_rcv_filter.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@can_rcv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@can_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014PF_CAN: dropped non conform CAN skbuff: dev type %d, len %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can_rcv\00", [24 x i8] zeroinitializer }, align 32
@can_rcv._entry_ptr = internal global ptr @can_rcv._entry, section ".printk_index", align 4
@can_rcv.__already_done.28 = internal unnamed_addr global i1 false, section ".data.once", align 1
@can_rcv._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014PF_CAN: dropped non conform CAN skbuff: dev type %d, len %d, datalen %d\0A\00", [53 x i8] zeroinitializer }, align 32
@can_rcv._entry_ptr.31 = internal global ptr @can_rcv._entry.29, section ".printk_index", align 4
@can_pernet_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&net->can.rcvlists_lock\00", [40 x i8] zeroinitializer }, align 32
@can_pernet_init.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&net->can.stattimer)\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@can_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016can: controller area network core\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can_init\00", [23 x i8] zeroinitializer }, align 32
@can_init._entry_ptr = internal global ptr @can_init._entry, section ".printk_index", align 4
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"can_receiver\00", [19 x i8] zeroinitializer }, align 32
@can_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 29, ptr @can_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"can-proto-%d\00", [19 x i8] zeroinitializer }, align 32
@can_create._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.can_create = private unnamed_addr constant [11 x i8] c"can_create\00", align 1
@can_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.can_create, ptr @.str, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013can: request_module (can-proto-%d) failed.\0A\00", [50 x i8] zeroinitializer }, align 32
@can_create._entry_ptr = internal global ptr @can_create._entry, section ".printk_index", align 4
@can_get_proto.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 72]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 536, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 549, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 748, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"proto_tab_lock\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 759, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 83, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 710, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 717, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [11 x i8] c"skbcounter\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 85, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 695, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 723, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 684, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 691, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 795, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 810, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 875, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 877, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant [15 x i8] c"can_family_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 854, i32 38 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 132, i32 9 }
@___asan_gen_.156 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 139, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [20 x i8] c"../net/can/af_can.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 101, i32 7 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_alias461, ptr @__UNIQUE_ID_author460, ptr @__UNIQUE_ID_description457, ptr @__UNIQUE_ID_file458, ptr @__UNIQUE_ID_license459, ptr @__UNIQUE_ID_stats_timer463, ptr @__UNIQUE_ID_stats_timertype462, ptr @__exitcall_can_exit, ptr @__initcall__kmod_can__503_918_can_init6, ptr @__ksymtab_can_proto_register, ptr @__ksymtab_can_proto_unregister, ptr @__ksymtab_can_rx_register, ptr @__ksymtab_can_rx_unregister, ptr @__ksymtab_can_send, ptr @__ksymtab_can_sock_destruct, ptr @__param_stats_timer, ptr @can_create._entry, ptr @can_create._entry_ptr, ptr @can_exit, ptr @can_init._entry, ptr @can_init._entry_ptr, ptr @can_proto_register._entry, ptr @can_proto_register._entry.7, ptr @can_proto_register._entry_ptr, ptr @can_proto_register._entry_ptr.9, ptr @can_rcv._entry, ptr @can_rcv._entry.29, ptr @can_rcv._entry_ptr, ptr @can_rcv._entry_ptr.31, ptr @can_rx_unregister._entry, ptr @can_rx_unregister._entry_ptr, ptr @canfd_rcv._entry, ptr @canfd_rcv._entry.15, ptr @canfd_rcv._entry_ptr, ptr @canfd_rcv._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @proto_tab_lock, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @skbcounter, ptr @.str.18, ptr @.str.19, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @can_pernet_init.__key, ptr @.str.32, ptr @can_pernet_init.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @can_family_ops, ptr @.str.38, ptr @can_create._rs, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_rx_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_proto_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proto_tab_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_proto_register._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @canfd_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @canfd_rcv._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skbcounter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_rcv._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_pernet_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_pernet_init.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_create._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @can_sock_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #11
  %sk_error_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 7
  tail call void @skb_queue_purge(ptr noundef %sk_error_queue) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @can_send(ptr noundef %skb, i32 noundef %loop) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %pkg_stats1 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 50, i32 13
  %7 = ptrtoint ptr %pkg_stats1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pkg_stats1, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %entry.inval_skb_crit_edge [
    i32 16, label %if.then
    i32 72, label %if.then10
  ]

entry.inval_skb_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %inval_skb

if.then:                                          ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 12, ptr %protocol, align 8
  %len2 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %len2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp3 = icmp ugt i8 %14, 8
  br i1 %cmp3, label %if.then.inval_skb_crit_edge, label %if.then.if.end26_crit_edge, !prof !146

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then.inval_skb_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %inval_skb

if.then10:                                        ; preds = %entry
  %protocol11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol11 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 13, ptr %protocol11, align 8
  %len12 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %len12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %len12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %17)
  %cmp14 = icmp ugt i8 %17, 64
  br i1 %cmp14, label %if.then10.inval_skb_crit_edge, label %if.then10.if.end26_crit_edge, !prof !146

if.then10.if.end26_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then10.inval_skb_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %inval_skb

if.end26:                                         ; preds = %if.then10.if.end26_crit_edge, %if.then.if.end26_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %18 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %19)
  %cmp28 = icmp ugt i32 %10, %19
  br i1 %cmp28, label %land.rhs, label %if.end26.if.end41_crit_edge

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

land.rhs:                                         ; preds = %if.end26
  %len30 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %len30 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %len30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %21)
  %cmp32 = icmp ugt i8 %21, 8
  br i1 %cmp32, label %land.rhs.inval_skb_crit_edge, label %land.rhs.if.end41_crit_edge, !prof !146

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

land.rhs.inval_skb_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %inval_skb

if.end41:                                         ; preds = %land.rhs.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  %type = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 32
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %23)
  %cmp43.not = icmp eq i16 %23, 280
  br i1 %cmp43.not, label %if.end52, label %if.end41.inval_skb_crit_edge, !prof !147

if.end41.inval_skb_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %inval_skb

if.end52:                                         ; preds = %if.end41
  %flags = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 8
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %if.end52.inval_skb_crit_edge, label %if.end63, !prof !146

if.end52.inval_skb_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %inval_skb

if.end63:                                         ; preds = %if.end52
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %26 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %ip_summed, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %27 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %29 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %31 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %transport_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loop)
  %tobool64.not = icmp eq i32 %loop, 0
  %bf.set = and i16 %bf.load, 6655
  br i1 %tobool64.not, label %if.else86, label %if.then65

if.then65:                                        ; preds = %if.end63
  %bf.set68 = or i16 %bf.set, -24064
  %32 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %bf.set68, ptr %ip_summed, align 8
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 8
  %and70 = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then72, label %if.then65.if.end91_crit_edge

if.then65.if.end91_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then72:                                        ; preds = %if.then65
  %call73 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #11
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

if.end76:                                         ; preds = %if.then72
  %35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.end76.can_skb_set_owner.exit_crit_edge, label %land.lhs.true.i

if.end76.can_skb_set_owner.exit_crit_edge:        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_skb_set_owner.exit

land.lhs.true.i:                                  ; preds = %if.end76
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %37, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  %38 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %skc_refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i
  %40 = phi i32 [ %39, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %41 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %40, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %42 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %44 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 %43, i32 %add.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !148
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %44, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %44, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %43
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !147

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %45 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %46, 1
  %47 = or i32 %add5.i.i.i.i, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !147

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 0) #11
  %48 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %49 = phi i32 [ %46, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool12.i.i.i.not.i = icmp eq i32 %49, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge, label %if.then.i

refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_skb_set_owner.exit

if.then.i:                                        ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call73, i32 0, i32 4, i32 0, i32 1
  %50 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @sock_efree, ptr %destructor.i, align 4
  %51 = getelementptr inbounds %struct.sk_buff, ptr %call73, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %37, ptr %51, align 4
  br label %can_skb_set_owner.exit

can_skb_set_owner.exit:                           ; preds = %if.then.i, %refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge, %if.end76.can_skb_set_owner.exit_crit_edge
  %ip_summed77 = getelementptr inbounds %struct.sk_buff, ptr %call73, i32 0, i32 15
  %53 = ptrtoint ptr %ip_summed77 to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load78 = load i16, ptr %ip_summed77, align 8
  %bf.clear79 = and i16 %bf.load78, 6655
  %bf.set84 = or i16 %bf.clear79, 8704
  store i16 %bf.set84, ptr %ip_summed77, align 8
  br label %if.end91

if.else86:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear89 = or i16 %bf.set, 512
  %54 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %bf.clear89, ptr %ip_summed, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.else86, %can_skb_set_owner.exit, %if.then65.if.end91_crit_edge
  %newskb.0 = phi ptr [ null, %if.then65.if.end91_crit_edge ], [ %call73, %can_skb_set_owner.exit ], [ null, %if.else86 ]
  %call92 = call i32 @dev_queue_xmit(ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp sgt i32 %call92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call92)
  %cmp96.not = icmp eq i32 %call92, 2
  %cond = select i1 %cmp96.not, i32 0, i32 -105
  %err.0 = select i1 %cmp93, i32 %cond, i32 %call92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool99.not = icmp eq i32 %err.0, 0
  br i1 %tobool99.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef %newskb.0, i32 noundef 0) #11
  br label %cleanup

if.end101:                                        ; preds = %if.end91
  %tobool102.not = icmp eq ptr %newskb.0, null
  br i1 %tobool102.not, label %if.end101.if.end105_crit_edge, label %if.then103

if.end101.if.end105_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %call104 = call i32 @netif_rx_ni(ptr noundef nonnull %newskb.0) #11
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.end101.if.end105_crit_edge
  %tx_frames = getelementptr inbounds %struct.can_pkg_stats, ptr %8, i32 0, i32 2
  %55 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_frames, align 4
  %inc = add i32 %56, 1
  store i32 %inc, ptr %tx_frames, align 4
  %tx_frames_delta = getelementptr inbounds %struct.can_pkg_stats, ptr %8, i32 0, i32 14
  %57 = ptrtoint ptr %tx_frames_delta to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_frames_delta, align 4
  %inc106 = add i32 %58, 1
  store i32 %inc106, ptr %tx_frames_delta, align 4
  br label %cleanup

inval_skb:                                        ; preds = %if.end52.inval_skb_crit_edge, %if.end41.inval_skb_crit_edge, %land.rhs.inval_skb_crit_edge, %if.then10.inval_skb_crit_edge, %if.then.inval_skb_crit_edge, %entry.inval_skb_crit_edge
  %err.1 = phi i32 [ -22, %if.then.inval_skb_crit_edge ], [ -22, %if.then10.inval_skb_crit_edge ], [ -22, %entry.inval_skb_crit_edge ], [ -90, %land.rhs.inval_skb_crit_edge ], [ -1, %if.end41.inval_skb_crit_edge ], [ -100, %if.end52.inval_skb_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %inval_skb, %if.end105, %if.then100, %if.then75
  %retval.0 = phi i32 [ %err.1, %inval_skb ], [ %err.0, %if.then100 ], [ 0, %if.end105 ], [ -12, %if.then75 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @can_rx_register(ptr noundef %net, ptr noundef readonly %dev, i32 noundef %can_id, i32 noundef %mask, ptr noundef %func, ptr noundef %data, ptr noundef %ident, ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_lists_stats1 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 14
  %0 = ptrtoint ptr %rcv_lists_stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcv_lists_stats1, align 4
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %3)
  %cmp.not = icmp eq i16 %3, 280
  br i1 %cmp.not, label %land.lhs.true4.critedge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true4.critedge:                          ; preds = %land.lhs.true
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %5, %net
  br i1 %cmp.i.not, label %land.lhs.true4.critedge.if.end8_crit_edge, label %land.lhs.true4.critedge.cleanup_crit_edge

land.lhs.true4.critedge.cleanup_crit_edge:        ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true4.critedge.if.end8_crit_edge:        ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true4.critedge.if.end8_crit_edge, %entry.if.end8_crit_edge
  %6 = load ptr, ptr @rcv_cache, align 4
  %call9 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 3264) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %rcvlists_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %rcvlists_lock) #11
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end12
  %ml_priv_type.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 129
  %7 = ptrtoint ptr %ml_priv_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ml_priv_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not.i.i.i = icmp eq i32 %8, 1
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.can_dev_rcv_lists_find.exit_crit_edge

if.then.i.can_dev_rcv_lists_find.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_dev_rcv_lists_find.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %ml_priv.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  br label %return.sink.split.i

if.else.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %rx_alldev_list.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 10
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.else.i, %if.end.i.i.i
  %ml_priv.i.i.sink.i = phi ptr [ %ml_priv.i.i.i, %if.end.i.i.i ], [ %rx_alldev_list.i, %if.else.i ]
  %9 = ptrtoint ptr %ml_priv.i.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ml_priv.i.i.sink.i, align 8
  br label %can_dev_rcv_lists_find.exit

can_dev_rcv_lists_find.exit:                      ; preds = %return.sink.split.i, %if.then.i.can_dev_rcv_lists_find.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then.i.can_dev_rcv_lists_find.exit_crit_edge ], [ %10, %return.sink.split.i ]
  %and1.i = and i32 %mask, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i55 = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i55, label %if.end.i, label %if.then.i56

if.then.i56:                                      ; preds = %can_dev_rcv_lists_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and2.i = and i32 %mask, 536870911
  br label %can_rcv_list_find.exit

if.end.i:                                         ; preds = %can_dev_rcv_lists_find.exit
  %and.i = and i32 %can_id, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool4.not.i = icmp slt i32 %mask, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %can_id)
  %tobool6.not.i = icmp sgt i32 %can_id, -1
  %or.cond.i = and i1 %tobool6.not.i, %tobool4.not.i
  %and8.i = and i32 %mask, -1073739777
  %spec.select = select i1 %or.cond.i, i32 %and8.i, i32 %mask
  %and10.i = and i32 %spec.select, %can_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end15.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx14.i = getelementptr [4 x %struct.hlist_head], ptr %retval.0.i, i32 0, i32 3
  br label %can_rcv_list_find.exit

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool16.not.i = icmp eq i32 %spec.select, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx19.i = getelementptr [4 x %struct.hlist_head], ptr %retval.0.i, i32 0, i32 1
  br label %can_rcv_list_find.exit

if.end20.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %spec.select)
  %cmp.i57 = icmp ugt i32 %spec.select, -1073741825
  %and23.i = and i32 %and10.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %or.cond60.i = and i1 %cmp.i57, %tobool24.not.i
  br i1 %or.cond60.i, label %if.then25.i, label %if.end20.i.if.end38.i_crit_edge

if.end20.i.if.end38.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then25.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and10.i)
  %tobool27.not.i = icmp sgt i32 %and10.i, -1
  br i1 %tobool27.not.i, label %if.else.i58, label %if.then28.i

if.then28.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870913, i32 %spec.select)
  %cmp29.i = icmp eq i32 %spec.select, -536870913
  br i1 %cmp29.i, label %if.then30.i, label %if.then28.i.if.end38.i_crit_edge

if.then28.i.if.end38.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then30.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i.i = lshr i32 %and10.i, 10
  %xor.i.i = xor i32 %shr.i.i, %and10.i
  %shr1.i.i = lshr i32 %and10.i, 20
  %xor2.i.i = xor i32 %xor.i.i, %shr1.i.i
  %and.i.i = and i32 %xor2.i.i, 1023
  %arrayidx31.i = getelementptr %struct.can_dev_rcv_lists, ptr %retval.0.i, i32 0, i32 2, i32 %and.i.i
  br label %can_rcv_list_find.exit

if.else.i58:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073739777, i32 %spec.select)
  %cmp33.i = icmp eq i32 %spec.select, -1073739777
  br i1 %cmp33.i, label %if.then34.i, label %if.else.i58.if.end38.i_crit_edge

if.else.i58.if.end38.i_crit_edge:                 ; preds = %if.else.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.else.i58
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx35.i = getelementptr %struct.can_dev_rcv_lists, ptr %retval.0.i, i32 0, i32 1, i32 %and10.i
  br label %can_rcv_list_find.exit

if.end38.i:                                       ; preds = %if.else.i58.if.end38.i_crit_edge, %if.then28.i.if.end38.i_crit_edge, %if.end20.i.if.end38.i_crit_edge
  %arrayidx40.i = getelementptr [4 x %struct.hlist_head], ptr %retval.0.i, i32 0, i32 2
  br label %can_rcv_list_find.exit

can_rcv_list_find.exit:                           ; preds = %if.end38.i, %if.then34.i, %if.then30.i, %if.then17.i, %if.then12.i, %if.then.i56
  %can_id.addr.0 = phi i32 [ 0, %if.then17.i ], [ %and10.i, %if.then34.i ], [ %and10.i, %if.end38.i ], [ %and10.i, %if.then30.i ], [ %and10.i, %if.then12.i ], [ %can_id, %if.then.i56 ]
  %mask.addr.1 = phi i32 [ 0, %if.then17.i ], [ -1073739777, %if.then34.i ], [ %spec.select, %if.end38.i ], [ -536870913, %if.then30.i ], [ %spec.select, %if.then12.i ], [ %and2.i, %if.then.i56 ]
  %retval.0.i59 = phi ptr [ %arrayidx19.i, %if.then17.i ], [ %arrayidx35.i, %if.then34.i ], [ %arrayidx40.i, %if.end38.i ], [ %arrayidx31.i, %if.then30.i ], [ %arrayidx14.i, %if.then12.i ], [ %retval.0.i, %if.then.i56 ]
  %can_id16 = getelementptr inbounds %struct.receiver, ptr %call9, i32 0, i32 1
  %11 = ptrtoint ptr %can_id16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %can_id.addr.0, ptr %can_id16, align 8
  %mask17 = getelementptr inbounds %struct.receiver, ptr %call9, i32 0, i32 2
  %12 = ptrtoint ptr %mask17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mask.addr.1, ptr %mask17, align 4
  %matches = getelementptr inbounds %struct.receiver, ptr %call9, i32 0, i32 3
  %13 = ptrtoint ptr %matches to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %matches, align 8
  %func18 = getelementptr inbounds %struct.receiver, ptr %call9, i32 0, i32 4
  %14 = ptrtoint ptr %func18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %func, ptr %func18, align 4
  %data19 = getelementptr inbounds %struct.receiver, ptr %call9, i32 0, i32 5
  %15 = ptrtoint ptr %data19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data, ptr %data19, align 8
  %ident20 = getelementptr inbounds %struct.receiver, ptr %call9, i32 0, i32 6
  %16 = ptrtoint ptr %ident20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ident, ptr %ident20, align 4
  %sk21 = getelementptr inbounds %struct.receiver, ptr %call9, i32 0, i32 7
  %17 = ptrtoint ptr %sk21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sk, ptr %sk21, align 8
  %18 = ptrtoint ptr %retval.0.i59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %retval.0.i59, align 4
  %20 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %call9, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call9, i32 0, i32 1
  %21 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %retval.0.i59, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !149
  %22 = ptrtoint ptr %retval.0.i59 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call9, ptr %retval.0.i59, align 4
  %tobool.not.i60 = icmp eq ptr %19, null
  br i1 %tobool.not.i60, label %can_rcv_list_find.exit.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

can_rcv_list_find.exit.hlist_add_head_rcu.exit_crit_edge: ; preds = %can_rcv_list_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %can_rcv_list_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call9, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %can_rcv_list_find.exit.hlist_add_head_rcu.exit_crit_edge
  %entries = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %retval.0.i, i32 0, i32 3
  %24 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entries, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %entries, align 4
  %rcv_entries = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %rcv_entries to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rcv_entries, align 4
  %inc22 = add i32 %27, 1
  store i32 %inc22, ptr %rcv_entries, align 4
  %rcv_entries_max = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %rcv_entries_max to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rcv_entries_max, align 4
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 %inc22)
  %31 = ptrtoint ptr %rcv_entries_max to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rcv_entries_max, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rcvlists_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head_rcu.exit, %if.end8.cleanup_crit_edge, %land.lhs.true4.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hlist_add_head_rcu.exit ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %land.lhs.true4.critedge.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @can_rx_unregister(ptr noundef %net, ptr noundef %dev, i32 noundef %can_id, i32 noundef %mask, ptr noundef readnone %func, ptr noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_lists_stats1 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 14
  %0 = ptrtoint ptr %rcv_lists_stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcv_lists_stats1, align 4
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.else.i, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %3)
  %cmp.not = icmp eq i16 %3, 280
  br i1 %cmp.not, label %land.lhs.true4.critedge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true4.critedge:                          ; preds = %land.lhs.true
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %5, %net
  br i1 %cmp.i.not, label %if.then.i, label %land.lhs.true4.critedge.cleanup_crit_edge

land.lhs.true4.critedge.cleanup_crit_edge:        ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true4.critedge
  %rcvlists_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %rcvlists_lock) #11
  %ml_priv_type.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 129
  %6 = ptrtoint ptr %ml_priv_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ml_priv_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i.i.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.can_dev_rcv_lists_find.exit_crit_edge

if.then.i.can_dev_rcv_lists_find.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_dev_rcv_lists_find.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %ml_priv.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  br label %return.sink.split.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rcvlists_lock136 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %rcvlists_lock136) #11
  %rx_alldev_list.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 10
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.else.i, %if.end.i.i.i
  %rcvlists_lock138 = phi ptr [ %rcvlists_lock, %if.end.i.i.i ], [ %rcvlists_lock136, %if.else.i ]
  %ml_priv.i.i.sink.i = phi ptr [ %ml_priv.i.i.i, %if.end.i.i.i ], [ %rx_alldev_list.i, %if.else.i ]
  %8 = ptrtoint ptr %ml_priv.i.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ml_priv.i.i.sink.i, align 8
  br label %can_dev_rcv_lists_find.exit

can_dev_rcv_lists_find.exit:                      ; preds = %return.sink.split.i, %if.then.i.can_dev_rcv_lists_find.exit_crit_edge
  %rcvlists_lock137 = phi ptr [ %rcvlists_lock, %if.then.i.can_dev_rcv_lists_find.exit_crit_edge ], [ %rcvlists_lock138, %return.sink.split.i ]
  %retval.0.i = phi ptr [ null, %if.then.i.can_dev_rcv_lists_find.exit_crit_edge ], [ %9, %return.sink.split.i ]
  %and1.i = and i32 %mask, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i124 = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i124, label %if.end.i, label %if.then.i125

if.then.i125:                                     ; preds = %can_dev_rcv_lists_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and2.i = and i32 %mask, 536870911
  br label %can_rcv_list_find.exit

if.end.i:                                         ; preds = %can_dev_rcv_lists_find.exit
  %and.i = and i32 %can_id, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool4.not.i = icmp slt i32 %mask, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %can_id)
  %tobool6.not.i = icmp sgt i32 %can_id, -1
  %or.cond.i = and i1 %tobool6.not.i, %tobool4.not.i
  %and8.i = and i32 %mask, -1073739777
  %spec.select = select i1 %or.cond.i, i32 %and8.i, i32 %mask
  %and10.i = and i32 %spec.select, %can_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end15.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx14.i = getelementptr [4 x %struct.hlist_head], ptr %retval.0.i, i32 0, i32 3
  br label %can_rcv_list_find.exit

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool16.not.i = icmp eq i32 %spec.select, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx19.i = getelementptr [4 x %struct.hlist_head], ptr %retval.0.i, i32 0, i32 1
  br label %can_rcv_list_find.exit

if.end20.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %spec.select)
  %cmp.i126 = icmp ugt i32 %spec.select, -1073741825
  %and23.i = and i32 %and10.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %or.cond60.i = and i1 %cmp.i126, %tobool24.not.i
  br i1 %or.cond60.i, label %if.then25.i, label %if.end20.i.if.end38.i_crit_edge

if.end20.i.if.end38.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then25.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and10.i)
  %tobool27.not.i = icmp sgt i32 %and10.i, -1
  br i1 %tobool27.not.i, label %if.else.i127, label %if.then28.i

if.then28.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870913, i32 %spec.select)
  %cmp29.i = icmp eq i32 %spec.select, -536870913
  br i1 %cmp29.i, label %if.then30.i, label %if.then28.i.if.end38.i_crit_edge

if.then28.i.if.end38.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then30.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i.i = lshr i32 %and10.i, 10
  %xor.i.i = xor i32 %shr.i.i, %and10.i
  %shr1.i.i = lshr i32 %and10.i, 20
  %xor2.i.i = xor i32 %xor.i.i, %shr1.i.i
  %and.i.i = and i32 %xor2.i.i, 1023
  %arrayidx31.i = getelementptr %struct.can_dev_rcv_lists, ptr %retval.0.i, i32 0, i32 2, i32 %and.i.i
  br label %can_rcv_list_find.exit

if.else.i127:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073739777, i32 %spec.select)
  %cmp33.i = icmp eq i32 %spec.select, -1073739777
  br i1 %cmp33.i, label %if.then34.i, label %if.else.i127.if.end38.i_crit_edge

if.else.i127.if.end38.i_crit_edge:                ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx35.i = getelementptr %struct.can_dev_rcv_lists, ptr %retval.0.i, i32 0, i32 1, i32 %and10.i
  br label %can_rcv_list_find.exit

if.end38.i:                                       ; preds = %if.else.i127.if.end38.i_crit_edge, %if.then28.i.if.end38.i_crit_edge, %if.end20.i.if.end38.i_crit_edge
  %arrayidx40.i = getelementptr [4 x %struct.hlist_head], ptr %retval.0.i, i32 0, i32 2
  br label %can_rcv_list_find.exit

can_rcv_list_find.exit:                           ; preds = %if.end38.i, %if.then34.i, %if.then30.i, %if.then17.i, %if.then12.i, %if.then.i125
  %can_id.addr.0 = phi i32 [ 0, %if.then17.i ], [ %and10.i, %if.then34.i ], [ %and10.i, %if.end38.i ], [ %and10.i, %if.then30.i ], [ %and10.i, %if.then12.i ], [ %can_id, %if.then.i125 ]
  %mask.addr.1 = phi i32 [ 0, %if.then17.i ], [ -1073739777, %if.then34.i ], [ %spec.select, %if.end38.i ], [ -536870913, %if.then30.i ], [ %spec.select, %if.then12.i ], [ %and2.i, %if.then.i125 ]
  %retval.0.i128 = phi ptr [ %arrayidx19.i, %if.then17.i ], [ %arrayidx35.i, %if.then34.i ], [ %arrayidx40.i, %if.end38.i ], [ %arrayidx31.i, %if.then30.i ], [ %arrayidx14.i, %if.then12.i ], [ %retval.0.i, %if.then.i125 ]
  %call12 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %can_rcv_list_find.exit.do.end_crit_edge

can_rcv_list_find.exit.do.end_crit_edge:          ; preds = %can_rcv_list_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true14:                                  ; preds = %can_rcv_list_find.exit
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true14.do.end_crit_edge, label %land.lhs.true17

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %.b121 = load i1, ptr @can_rx_unregister.__warned, align 1
  br i1 %.b121, label %land.lhs.true17.do.end_crit_edge, label %if.then19

land.lhs.true17.do.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @can_rx_unregister.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 536, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then19, %land.lhs.true17.do.end_crit_edge, %land.lhs.true14.do.end_crit_edge, %can_rcv_list_find.exit.do.end_crit_edge
  %10 = ptrtoint ptr %retval.0.i128 to i32
  call void @__asan_load4_noabort(i32 %10)
  %rcv.0141 = load volatile ptr, ptr %retval.0.i128, align 4
  %tobool28.not142 = icmp eq ptr %rcv.0141, null
  br i1 %tobool28.not142, label %do.end.do.end65.critedge_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.do.end65.critedge_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %rcv.0143 = phi ptr [ %rcv.0, %for.inc.for.body_crit_edge ], [ %rcv.0141, %do.end.for.body_crit_edge ]
  %can_id29 = getelementptr inbounds %struct.receiver, ptr %rcv.0143, i32 0, i32 1
  %11 = ptrtoint ptr %can_id29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %can_id29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %can_id.addr.0)
  %cmp30 = icmp eq i32 %12, %can_id.addr.0
  br i1 %cmp30, label %land.lhs.true32, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true32:                                  ; preds = %for.body
  %mask33 = getelementptr inbounds %struct.receiver, ptr %rcv.0143, i32 0, i32 2
  %13 = ptrtoint ptr %mask33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mask.addr.1)
  %cmp34 = icmp eq i32 %14, %mask.addr.1
  br i1 %cmp34, label %land.lhs.true36, label %land.lhs.true32.for.inc_crit_edge

land.lhs.true32.for.inc_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %func37 = getelementptr inbounds %struct.receiver, ptr %rcv.0143, i32 0, i32 4
  %15 = ptrtoint ptr %func37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %func37, align 4
  %cmp38 = icmp eq ptr %16, %func
  br i1 %cmp38, label %land.lhs.true40, label %land.lhs.true36.for.inc_crit_edge

land.lhs.true36.for.inc_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %data41 = getelementptr inbounds %struct.receiver, ptr %rcv.0143, i32 0, i32 5
  %17 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data41, align 4
  %cmp42 = icmp eq ptr %18, %data
  br i1 %cmp42, label %if.end73, label %land.lhs.true40.for.inc_crit_edge

land.lhs.true40.for.inc_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true40.for.inc_crit_edge, %land.lhs.true36.for.inc_crit_edge, %land.lhs.true32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %rcv.0143 to i32
  call void @__asan_load4_noabort(i32 %19)
  %rcv.0 = load volatile ptr, ptr %rcv.0143, align 4
  %tobool28.not = icmp eq ptr %rcv.0, null
  br i1 %tobool28.not, label %for.inc.do.end65.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end65.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.critedge

do.end65.critedge:                                ; preds = %for.inc.do.end65.critedge_crit_edge, %do.end.do.end65.critedge_crit_edge
  %cond71 = select i1 %tobool.not, ptr @.str.4, ptr %dev
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %cond71, i32 noundef %can_id.addr.0, i32 noundef %mask.addr.1) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %rcvlists_lock137) #11
  br label %cleanup

if.end73:                                         ; preds = %land.lhs.true40
  %20 = ptrtoint ptr %rcv.0143 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rcv.0143, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %rcv.0143, i32 0, i32 1
  %22 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pprev2.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %21, ptr %23, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end73.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.end73.hlist_del_rcu.exit_crit_edge:            ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.end73.hlist_del_rcu.exit_crit_edge
  %26 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %entries = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %retval.0.i, i32 0, i32 3
  %27 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %entries, align 4
  %dec = add i32 %28, -1
  store i32 %dec, ptr %entries, align 4
  %rcv_entries = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %rcv_entries to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rcv_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp75.not = icmp eq i32 %30, 0
  br i1 %cmp75.not, label %hlist_del_rcu.exit.if.then84_crit_edge, label %if.then77

hlist_del_rcu.exit.if.then84_crit_edge:           ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then84

if.then77:                                        ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dec79 = add i32 %30, -1
  %31 = ptrtoint ptr %rcv_entries to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dec79, ptr %rcv_entries, align 4
  br label %if.then84

if.then84:                                        ; preds = %if.then77, %hlist_del_rcu.exit.if.then84_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rcvlists_lock137) #11
  %sk = getelementptr inbounds %struct.receiver, ptr %rcv.0143, i32 0, i32 7
  %32 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk, align 4
  %tobool85.not = icmp eq ptr %33, null
  br i1 %tobool85.not, label %if.then84.if.end88_crit_edge, label %if.then86

if.then84.if.end88_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then86:                                        ; preds = %if.then84
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %33, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !150
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then86.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !146

if.then86.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then86
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end88_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !147

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end88_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then86.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then86.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %if.end88

if.end88:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end88_crit_edge, %if.then84.if.end88_crit_edge
  %rcu = getelementptr inbounds %struct.receiver, ptr %rcv.0143, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @can_rx_delete_receiver) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end65.critedge, %land.lhs.true4.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @can_rx_delete_receiver(ptr noundef %rp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rp, i32 -36
  %sk1 = getelementptr i8, ptr %rp, i32 -4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 4
  %2 = load ptr, ptr @rcv_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %add.ptr) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !152
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !147

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  tail call void @sk_free(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @can_proto_register(ptr noundef %cp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.can_proto, ptr %cp, i32 0, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %2 = icmp ugt i32 %1, 7
  br i1 %2, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %prot = getelementptr inbounds %struct.can_proto, ptr %cp, i32 0, i32 3
  %3 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prot, align 4
  %call2 = tail call i32 @proto_register(ptr noundef %4, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @proto_tab_lock, i32 noundef 0) #11
  %arrayidx = getelementptr [8 x ptr], ptr @proto_tab, i32 0, i32 %1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end30, label %if.then32

if.end30:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %cp, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @proto_tab_lock) #11
  br label %cleanup

if.then32:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %1) #14
  tail call void @mutex_unlock(ptr noundef nonnull @proto_tab_lock) #11
  %8 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prot, align 4
  tail call void @proto_unregister(ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end30, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %if.end.cleanup_crit_edge ], [ -16, %if.then32 ], [ %call2, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @can_proto_unregister(ptr noundef readonly %cp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.can_proto, ptr %cp, i32 0, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %protocol, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @proto_tab_lock, i32 noundef 0) #11
  %arrayidx = getelementptr [8 x ptr], ptr @proto_tab, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %3, %cp
  br i1 %cmp.not, label %do.body17, label %do.body4, !prof !147

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/can/af_can.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 783, 0\0A.popsection", ""() #11, !srcloc !154
  unreachable

do.body17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @proto_tab_lock) #11
  tail call void @synchronize_rcu() #11
  %prot = getelementptr inbounds %struct.can_proto, ptr %cp, i32 0, i32 3
  %5 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prot, align 4
  tail call void @proto_unregister(ptr noundef %6) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @can_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_remove_pack(ptr noundef nonnull @canfd_packet) #11
  tail call void @dev_remove_pack(ptr noundef nonnull @can_packet) #11
  tail call void @sock_unregister(i32 noundef 29) #11
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @can_pernet_ops) #11
  tail call void @rcu_barrier() #11
  %0 = load ptr, ptr @rcv_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @can_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #14
  %call4 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.37, i32 noundef 44, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  store ptr %call4, ptr @rcv_cache, align 4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @can_pernet_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out_pernet_crit_edge

if.end.out_pernet_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_pernet

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @sock_register(ptr noundef nonnull @can_family_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %out_sock

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_add_pack(ptr noundef nonnull @can_packet) #11
  tail call void @dev_add_pack(ptr noundef nonnull @canfd_packet) #11
  br label %cleanup

out_sock:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @can_pernet_ops) #11
  br label %out_pernet

out_pernet:                                       ; preds = %out_sock, %if.end.out_pernet_crit_edge
  %err.0 = phi i32 [ %call5, %if.end.out_pernet_crit_edge ], [ %call9, %out_sock ]
  %0 = load ptr, ptr @rcv_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  br label %cleanup

cleanup:                                          ; preds = %out_pernet, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_pernet ], [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @canfd_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %3)
  %cmp.not = icmp eq i16 %3, 280
  br i1 %cmp.not, label %lor.rhs, label %entry.land.end_crit_edge, !prof !147

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

lor.rhs:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %5)
  %cmp2.not = icmp eq i32 %5, 72
  br i1 %cmp2.not, label %if.end27, label %lor.rhs.land.end_crit_edge, !prof !147

lor.rhs.land.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.end:                                         ; preds = %lor.rhs.land.end_crit_edge, %entry.land.end_crit_edge
  %.b86 = load i1, ptr @canfd_rcv.__already_done, align 1
  br i1 %.b86, label %land.end.free_skb_crit_edge, label %if.then16, !prof !147

land.end.free_skb_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_skb

if.then16:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @canfd_rcv.__already_done, align 1
  %conv18 = zext i16 %3 to i32
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len19, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv18, i32 noundef %7) #14
  br label %free_skb

if.end27:                                         ; preds = %lor.rhs
  %len28 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %len28 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %9)
  %cmp30 = icmp ugt i8 %9, 64
  br i1 %cmp30, label %land.end46, label %if.end72, !prof !146

land.end46:                                       ; preds = %if.end27
  %.b8485 = load i1, ptr @canfd_rcv.__already_done.14, align 1
  br i1 %.b8485, label %land.end46.free_skb_crit_edge, label %if.then53, !prof !147

land.end46.free_skb_crit_edge:                    ; preds = %land.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_skb

if.then53:                                        ; preds = %land.end46
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @canfd_rcv.__already_done.14, align 1
  %conv62 = zext i8 %9 to i32
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 280, i32 noundef 72, i32 noundef %conv62) #14
  br label %free_skb

if.end72:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @can_receive(ptr noundef %skb, ptr noundef %dev)
  br label %cleanup

free_skb:                                         ; preds = %if.then53, %land.end46.free_skb_crit_edge, %if.then16, %land.end.free_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.end72
  %retval.0 = phi i32 [ 1, %free_skb ], [ 0, %if.end72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @can_receive(ptr noundef %skb, ptr noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %pkg_stats1 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 50, i32 13
  %2 = ptrtoint ptr %pkg_stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkg_stats1, align 8
  %rx_frames = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_frames, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rx_frames, align 4
  %rx_frames_delta = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %rx_frames_delta to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_frames_delta, align 4
  %inc2 = add i32 %7, 1
  store i32 %inc2, ptr %rx_frames_delta, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %skbcnt37 = getelementptr inbounds %struct.can_skb_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %skbcnt37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skbcnt37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not38 = icmp eq i32 %11, 0
  br i1 %tobool.not38, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @skbcounter, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull @skbcounter, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @skbcounter, ptr nonnull @skbcounter, i32 1, ptr nonnull elementtype(i32) @skbcounter) #11, !srcloc !156
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 8
  %skbcnt6 = getelementptr inbounds %struct.can_skb_priv, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %skbcnt6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %asmresult.i.i.i.i, ptr %skbcnt6, align 4
  %16 = load ptr, ptr %head.i, align 8
  %skbcnt = getelementptr inbounds %struct.can_skb_priv, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %skbcnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %skbcnt, align 4
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %19 = tail call i32 @llvm.read_register.i32(metadata !136) #11
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !158
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %while.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

while.end.rcu_read_lock.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %while.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %while.end.rcu_read_lock.exit_crit_edge
  %rx_alldev_list = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 50, i32 10
  %23 = ptrtoint ptr %rx_alldev_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_alldev_list, align 8
  %call8 = tail call fastcc i32 @can_rcv_filter(ptr noundef %24, ptr noundef %skb)
  %tobool.not.i26 = icmp eq ptr %dev, null
  br i1 %tobool.not.i26, label %rcu_read_lock.exit.return.sink.split.i_crit_edge, label %if.then.i27

rcu_read_lock.exit.return.sink.split.i_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split.i

if.then.i27:                                      ; preds = %rcu_read_lock.exit
  %ml_priv_type.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 129
  %25 = ptrtoint ptr %ml_priv_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ml_priv_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.not.i.i.i = icmp eq i32 %26, 1
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i27.can_dev_rcv_lists_find.exit_crit_edge

if.then.i27.can_dev_rcv_lists_find.exit_crit_edge: ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_dev_rcv_lists_find.exit

if.end.i.i.i:                                     ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #13
  %ml_priv.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end.i.i.i, %rcu_read_lock.exit.return.sink.split.i_crit_edge
  %ml_priv.i.i.sink.i = phi ptr [ %ml_priv.i.i.i, %if.end.i.i.i ], [ %rx_alldev_list, %rcu_read_lock.exit.return.sink.split.i_crit_edge ]
  %27 = ptrtoint ptr %ml_priv.i.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ml_priv.i.i.sink.i, align 8
  br label %can_dev_rcv_lists_find.exit

can_dev_rcv_lists_find.exit:                      ; preds = %return.sink.split.i, %if.then.i27.can_dev_rcv_lists_find.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then.i27.can_dev_rcv_lists_find.exit_crit_edge ], [ %28, %return.sink.split.i ]
  %call10 = tail call fastcc i32 @can_rcv_filter(ptr noundef %retval.0.i, ptr noundef %skb)
  %add = add i32 %call10, %call8
  %call.i28 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i28, label %can_dev_rcv_lists_find.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i31

can_dev_rcv_lists_find.exit.rcu_read_unlock.exit_crit_edge: ; preds = %can_dev_rcv_lists_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i31:                                ; preds = %can_dev_rcv_lists_find.exit
  %call1.i29 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, label %if.then.i34

land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.25) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i34, %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, %can_dev_rcv_lists_find.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !159
  %29 = tail call i32 @llvm.read_register.i32(metadata !136) #11
  %and.i.i.i.i.i35 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  tail call void @consume_skb(ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp = icmp sgt i32 %add, 0
  br i1 %cmp, label %if.then, label %rcu_read_unlock.exit.if.end_crit_edge

rcu_read_unlock.exit.if.end_crit_edge:            ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %matches11 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %matches11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %matches11, align 4
  %inc12 = add i32 %34, 1
  store i32 %inc12, ptr %matches11, align 4
  %matches_delta = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 15
  %35 = ptrtoint ptr %matches_delta to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %matches_delta, align 4
  %inc13 = add i32 %36, 1
  store i32 %inc13, ptr %matches_delta, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_unlock.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @can_rcv_filter(ptr noundef %dev_rcv_lists, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %entries = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %dev_rcv_lists, i32 0, i32 3
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %call39 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool.not, label %do.body38, label %do.body

do.body:                                          ; preds = %if.end
  br i1 %tobool40.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b415 = load i1, ptr @can_rcv_filter.__warned, align 1
  br i1 %.b415, label %land.lhs.true6.do.end_crit_edge, label %if.then8

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @can_rcv_filter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 590, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %6 = ptrtoint ptr %dev_rcv_lists to i32
  call void @__asan_load4_noabort(i32 %6)
  %rcv.0449 = load volatile ptr, ptr %dev_rcv_lists, align 4
  %tobool17.not450 = icmp eq ptr %rcv.0449, null
  br i1 %tobool17.not450, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %rcv.0452 = phi ptr [ %rcv.0, %for.inc.for.body_crit_edge ], [ %rcv.0449, %do.end.for.body_crit_edge ]
  %matches.0451 = phi i32 [ %matches.1, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %mask = getelementptr inbounds %struct.receiver, ptr %rcv.0452, i32 0, i32 2
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  %and18 = and i32 %8, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %for.body.for.inc_crit_edge, label %if.then20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %func.i = getelementptr inbounds %struct.receiver, ptr %rcv.0452, i32 0, i32 4
  %9 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func.i, align 4
  %data.i = getelementptr inbounds %struct.receiver, ptr %rcv.0452, i32 0, i32 5
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  tail call void %10(ptr noundef %skb, ptr noundef %12) #11
  %matches.i = getelementptr inbounds %struct.receiver, ptr %rcv.0452, i32 0, i32 3
  %13 = ptrtoint ptr %matches.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %matches.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %matches.i, align 4
  %inc = add i32 %matches.0451, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %for.body.for.inc_crit_edge
  %matches.1 = phi i32 [ %inc, %if.then20 ], [ %matches.0451, %for.body.for.inc_crit_edge ]
  %15 = ptrtoint ptr %rcv.0452 to i32
  call void @__asan_load4_noabort(i32 %15)
  %rcv.0 = load volatile ptr, ptr %rcv.0452, align 4
  %tobool17.not = icmp eq ptr %rcv.0, null
  br i1 %tobool17.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body38:                                        ; preds = %if.end
  br i1 %tobool40.not, label %land.lhs.true41, label %do.body38.do.end49_crit_edge

do.body38.do.end49_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

land.lhs.true41:                                  ; preds = %do.body38
  %call42 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true41.do.end49_crit_edge, label %land.lhs.true44

land.lhs.true41.do.end49_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %.b405414 = load i1, ptr @can_rcv_filter.__warned.20, align 1
  br i1 %.b405414, label %land.lhs.true44.do.end49_crit_edge, label %if.then46

land.lhs.true44.do.end49_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

if.then46:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @can_rcv_filter.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 600, ptr noundef nonnull @.str.1) #11
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %land.lhs.true44.do.end49_crit_edge, %land.lhs.true41.do.end49_crit_edge, %do.body38.do.end49_crit_edge
  %arrayidx56 = getelementptr [4 x %struct.hlist_head], ptr %dev_rcv_lists, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %rcv.1453 = load volatile ptr, ptr %arrayidx56, align 4
  %tobool69.not454 = icmp eq ptr %rcv.1453, null
  br i1 %tobool69.not454, label %do.end49.do.body91_crit_edge, label %do.end49.for.body70_crit_edge

do.end49.for.body70_crit_edge:                    ; preds = %do.end49
  br label %for.body70

do.end49.do.body91_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body91

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %do.end49.for.body70_crit_edge
  %rcv.1456 = phi ptr [ %rcv.1, %for.body70.for.body70_crit_edge ], [ %rcv.1453, %do.end49.for.body70_crit_edge ]
  %matches.2455 = phi i32 [ %inc71, %for.body70.for.body70_crit_edge ], [ 0, %do.end49.for.body70_crit_edge ]
  %func.i427 = getelementptr inbounds %struct.receiver, ptr %rcv.1456, i32 0, i32 4
  %17 = ptrtoint ptr %func.i427 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %func.i427, align 4
  %data.i428 = getelementptr inbounds %struct.receiver, ptr %rcv.1456, i32 0, i32 5
  %19 = ptrtoint ptr %data.i428 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i428, align 4
  tail call void %18(ptr noundef %skb, ptr noundef %20) #11
  %matches.i429 = getelementptr inbounds %struct.receiver, ptr %rcv.1456, i32 0, i32 3
  %21 = ptrtoint ptr %matches.i429 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %matches.i429, align 4
  %inc.i430 = add i32 %22, 1
  store i32 %inc.i430, ptr %matches.i429, align 4
  %inc71 = add i32 %matches.2455, 1
  %23 = ptrtoint ptr %rcv.1456 to i32
  call void @__asan_load4_noabort(i32 %23)
  %rcv.1 = load volatile ptr, ptr %rcv.1456, align 4
  %tobool69.not = icmp eq ptr %rcv.1, null
  br i1 %tobool69.not, label %for.body70.do.body91_crit_edge, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body70

for.body70.do.body91_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body91

do.body91:                                        ; preds = %for.body70.do.body91_crit_edge, %do.end49.do.body91_crit_edge
  %matches.2.lcssa = phi i32 [ 0, %do.end49.do.body91_crit_edge ], [ %inc71, %for.body70.do.body91_crit_edge ]
  %call92 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %land.lhs.true94, label %do.body91.do.end102_crit_edge

do.body91.do.end102_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end102

land.lhs.true94:                                  ; preds = %do.body91
  %call95 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.lhs.true94.do.end102_crit_edge, label %land.lhs.true97

land.lhs.true94.do.end102_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end102

land.lhs.true97:                                  ; preds = %land.lhs.true94
  %.b406413 = load i1, ptr @can_rcv_filter.__warned.21, align 1
  br i1 %.b406413, label %land.lhs.true97.do.end102_crit_edge, label %if.then99

land.lhs.true97.do.end102_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end102

if.then99:                                        ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @can_rcv_filter.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 606, ptr noundef nonnull @.str.1) #11
  br label %do.end102

do.end102:                                        ; preds = %if.then99, %land.lhs.true97.do.end102_crit_edge, %land.lhs.true94.do.end102_crit_edge, %do.body91.do.end102_crit_edge
  %arrayidx109 = getelementptr [4 x %struct.hlist_head], ptr %dev_rcv_lists, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %24)
  %rcv.2458 = load volatile ptr, ptr %arrayidx109, align 4
  %tobool122.not459 = icmp eq ptr %rcv.2458, null
  br i1 %tobool122.not459, label %do.end102.do.body150_crit_edge, label %do.end102.for.body123_crit_edge

do.end102.for.body123_crit_edge:                  ; preds = %do.end102
  br label %for.body123

do.end102.do.body150_crit_edge:                   ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body150

for.body123:                                      ; preds = %for.inc131.for.body123_crit_edge, %do.end102.for.body123_crit_edge
  %rcv.2461 = phi ptr [ %rcv.2, %for.inc131.for.body123_crit_edge ], [ %rcv.2458, %do.end102.for.body123_crit_edge ]
  %matches.3460 = phi i32 [ %matches.4, %for.inc131.for.body123_crit_edge ], [ %matches.2.lcssa, %do.end102.for.body123_crit_edge ]
  %mask124 = getelementptr inbounds %struct.receiver, ptr %rcv.2461, i32 0, i32 2
  %25 = ptrtoint ptr %mask124 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask124, align 4
  %and125 = and i32 %26, %3
  %can_id126 = getelementptr inbounds %struct.receiver, ptr %rcv.2461, i32 0, i32 1
  %27 = ptrtoint ptr %can_id126 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %can_id126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and125, i32 %28)
  %cmp127 = icmp eq i32 %and125, %28
  br i1 %cmp127, label %if.then128, label %for.body123.for.inc131_crit_edge

for.body123.for.inc131_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc131

if.then128:                                       ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  %func.i431 = getelementptr inbounds %struct.receiver, ptr %rcv.2461, i32 0, i32 4
  %29 = ptrtoint ptr %func.i431 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %func.i431, align 4
  %data.i432 = getelementptr inbounds %struct.receiver, ptr %rcv.2461, i32 0, i32 5
  %31 = ptrtoint ptr %data.i432 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i432, align 4
  tail call void %30(ptr noundef %skb, ptr noundef %32) #11
  %matches.i433 = getelementptr inbounds %struct.receiver, ptr %rcv.2461, i32 0, i32 3
  %33 = ptrtoint ptr %matches.i433 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %matches.i433, align 4
  %inc.i434 = add i32 %34, 1
  store i32 %inc.i434, ptr %matches.i433, align 4
  %inc129 = add i32 %matches.3460, 1
  br label %for.inc131

for.inc131:                                       ; preds = %if.then128, %for.body123.for.inc131_crit_edge
  %matches.4 = phi i32 [ %inc129, %if.then128 ], [ %matches.3460, %for.body123.for.inc131_crit_edge ]
  %35 = ptrtoint ptr %rcv.2461 to i32
  call void @__asan_load4_noabort(i32 %35)
  %rcv.2 = load volatile ptr, ptr %rcv.2461, align 4
  %tobool122.not = icmp eq ptr %rcv.2, null
  br i1 %tobool122.not, label %for.inc131.do.body150_crit_edge, label %for.inc131.for.body123_crit_edge

for.inc131.for.body123_crit_edge:                 ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body123

for.inc131.do.body150_crit_edge:                  ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body150

do.body150:                                       ; preds = %for.inc131.do.body150_crit_edge, %do.end102.do.body150_crit_edge
  %matches.3.lcssa = phi i32 [ %matches.2.lcssa, %do.end102.do.body150_crit_edge ], [ %matches.4, %for.inc131.do.body150_crit_edge ]
  %call151 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %land.lhs.true153, label %do.body150.do.end161_crit_edge

do.body150.do.end161_crit_edge:                   ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end161

land.lhs.true153:                                 ; preds = %do.body150
  %call154 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %land.lhs.true153.do.end161_crit_edge, label %land.lhs.true156

land.lhs.true153.do.end161_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end161

land.lhs.true156:                                 ; preds = %land.lhs.true153
  %.b407412 = load i1, ptr @can_rcv_filter.__warned.22, align 1
  br i1 %.b407412, label %land.lhs.true156.do.end161_crit_edge, label %if.then158

land.lhs.true156.do.end161_crit_edge:             ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end161

if.then158:                                       ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @can_rcv_filter.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 614, ptr noundef nonnull @.str.1) #11
  br label %do.end161

do.end161:                                        ; preds = %if.then158, %land.lhs.true156.do.end161_crit_edge, %land.lhs.true153.do.end161_crit_edge, %do.body150.do.end161_crit_edge
  %arrayidx168 = getelementptr [4 x %struct.hlist_head], ptr %dev_rcv_lists, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %36)
  %rcv.3463 = load volatile ptr, ptr %arrayidx168, align 4
  %tobool181.not464 = icmp eq ptr %rcv.3463, null
  br i1 %tobool181.not464, label %do.end161.for.end208_crit_edge, label %do.end161.for.body182_crit_edge

do.end161.for.body182_crit_edge:                  ; preds = %do.end161
  br label %for.body182

do.end161.for.end208_crit_edge:                   ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end208

for.body182:                                      ; preds = %for.inc190.for.body182_crit_edge, %do.end161.for.body182_crit_edge
  %rcv.3466 = phi ptr [ %rcv.3, %for.inc190.for.body182_crit_edge ], [ %rcv.3463, %do.end161.for.body182_crit_edge ]
  %matches.5465 = phi i32 [ %matches.6, %for.inc190.for.body182_crit_edge ], [ %matches.3.lcssa, %do.end161.for.body182_crit_edge ]
  %mask183 = getelementptr inbounds %struct.receiver, ptr %rcv.3466, i32 0, i32 2
  %37 = ptrtoint ptr %mask183 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mask183, align 4
  %and184 = and i32 %38, %3
  %can_id185 = getelementptr inbounds %struct.receiver, ptr %rcv.3466, i32 0, i32 1
  %39 = ptrtoint ptr %can_id185 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %can_id185, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and184, i32 %40)
  %cmp186.not = icmp eq i32 %and184, %40
  br i1 %cmp186.not, label %for.body182.for.inc190_crit_edge, label %if.then187

for.body182.for.inc190_crit_edge:                 ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc190

if.then187:                                       ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #13
  %func.i435 = getelementptr inbounds %struct.receiver, ptr %rcv.3466, i32 0, i32 4
  %41 = ptrtoint ptr %func.i435 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %func.i435, align 4
  %data.i436 = getelementptr inbounds %struct.receiver, ptr %rcv.3466, i32 0, i32 5
  %43 = ptrtoint ptr %data.i436 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i436, align 4
  tail call void %42(ptr noundef %skb, ptr noundef %44) #11
  %matches.i437 = getelementptr inbounds %struct.receiver, ptr %rcv.3466, i32 0, i32 3
  %45 = ptrtoint ptr %matches.i437 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %matches.i437, align 4
  %inc.i438 = add i32 %46, 1
  store i32 %inc.i438, ptr %matches.i437, align 4
  %inc188 = add i32 %matches.5465, 1
  br label %for.inc190

for.inc190:                                       ; preds = %if.then187, %for.body182.for.inc190_crit_edge
  %matches.6 = phi i32 [ %inc188, %if.then187 ], [ %matches.5465, %for.body182.for.inc190_crit_edge ]
  %47 = ptrtoint ptr %rcv.3466 to i32
  call void @__asan_load4_noabort(i32 %47)
  %rcv.3 = load volatile ptr, ptr %rcv.3466, align 4
  %tobool181.not = icmp eq ptr %rcv.3, null
  br i1 %tobool181.not, label %for.inc190.for.end208_crit_edge, label %for.inc190.for.body182_crit_edge

for.inc190.for.body182_crit_edge:                 ; preds = %for.inc190
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body182

for.inc190.for.end208_crit_edge:                  ; preds = %for.inc190
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end208

for.end208:                                       ; preds = %for.inc190.for.end208_crit_edge, %do.end161.for.end208_crit_edge
  %matches.5.lcssa = phi i32 [ %matches.3.lcssa, %do.end161.for.end208_crit_edge ], [ %matches.6, %for.inc190.for.end208_crit_edge ]
  %and209 = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end212, label %for.end208.cleanup_crit_edge

for.end208.cleanup_crit_edge:                     ; preds = %for.end208
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end212:                                        ; preds = %for.end208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool214.not = icmp sgt i32 %3, -1
  br i1 %tobool214.not, label %if.else, label %do.body216

do.body216:                                       ; preds = %if.end212
  %call217 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %land.lhs.true219, label %do.body216.do.end227_crit_edge

do.body216.do.end227_crit_edge:                   ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end227

land.lhs.true219:                                 ; preds = %do.body216
  %call220 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %land.lhs.true219.do.end227_crit_edge, label %land.lhs.true222

land.lhs.true219.do.end227_crit_edge:             ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end227

land.lhs.true222:                                 ; preds = %land.lhs.true219
  %.b408411 = load i1, ptr @can_rcv_filter.__warned.23, align 1
  br i1 %.b408411, label %land.lhs.true222.do.end227_crit_edge, label %if.then224

land.lhs.true222.do.end227_crit_edge:             ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end227

if.then224:                                       ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @can_rcv_filter.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 626, ptr noundef nonnull @.str.1) #11
  br label %do.end227

do.end227:                                        ; preds = %if.then224, %land.lhs.true222.do.end227_crit_edge, %land.lhs.true219.do.end227_crit_edge, %do.body216.do.end227_crit_edge
  %shr.i = lshr i32 %3, 10
  %xor.i = xor i32 %shr.i, %3
  %shr1.i = lshr i32 %3, 20
  %xor2.i = xor i32 %xor.i, %shr1.i
  %and.i = and i32 %xor2.i, 1023
  %arrayidx234 = getelementptr %struct.can_dev_rcv_lists, ptr %dev_rcv_lists, i32 0, i32 2, i32 %and.i
  %48 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %48)
  %rcv.4468 = load volatile ptr, ptr %arrayidx234, align 4
  %tobool247.not469 = icmp eq ptr %rcv.4468, null
  br i1 %tobool247.not469, label %do.end227.cleanup_crit_edge, label %do.end227.for.body248_crit_edge

do.end227.for.body248_crit_edge:                  ; preds = %do.end227
  br label %for.body248

do.end227.cleanup_crit_edge:                      ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body248:                                      ; preds = %for.inc254.for.body248_crit_edge, %do.end227.for.body248_crit_edge
  %rcv.4471 = phi ptr [ %rcv.4, %for.inc254.for.body248_crit_edge ], [ %rcv.4468, %do.end227.for.body248_crit_edge ]
  %matches.7470 = phi i32 [ %matches.8, %for.inc254.for.body248_crit_edge ], [ %matches.5.lcssa, %do.end227.for.body248_crit_edge ]
  %can_id249 = getelementptr inbounds %struct.receiver, ptr %rcv.4471, i32 0, i32 1
  %49 = ptrtoint ptr %can_id249 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %can_id249, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %3)
  %cmp250 = icmp eq i32 %50, %3
  br i1 %cmp250, label %if.then251, label %for.body248.for.inc254_crit_edge

for.body248.for.inc254_crit_edge:                 ; preds = %for.body248
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc254

if.then251:                                       ; preds = %for.body248
  call void @__sanitizer_cov_trace_pc() #13
  %func.i439 = getelementptr inbounds %struct.receiver, ptr %rcv.4471, i32 0, i32 4
  %51 = ptrtoint ptr %func.i439 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %func.i439, align 4
  %data.i440 = getelementptr inbounds %struct.receiver, ptr %rcv.4471, i32 0, i32 5
  %53 = ptrtoint ptr %data.i440 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i440, align 4
  tail call void %52(ptr noundef %skb, ptr noundef %54) #11
  %matches.i441 = getelementptr inbounds %struct.receiver, ptr %rcv.4471, i32 0, i32 3
  %55 = ptrtoint ptr %matches.i441 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %matches.i441, align 4
  %inc.i442 = add i32 %56, 1
  store i32 %inc.i442, ptr %matches.i441, align 4
  %inc252 = add i32 %matches.7470, 1
  br label %for.inc254

for.inc254:                                       ; preds = %if.then251, %for.body248.for.inc254_crit_edge
  %matches.8 = phi i32 [ %inc252, %if.then251 ], [ %matches.7470, %for.body248.for.inc254_crit_edge ]
  %57 = ptrtoint ptr %rcv.4471 to i32
  call void @__asan_load4_noabort(i32 %57)
  %rcv.4 = load volatile ptr, ptr %rcv.4471, align 4
  %tobool247.not = icmp eq ptr %rcv.4, null
  br i1 %tobool247.not, label %for.inc254.cleanup_crit_edge, label %for.inc254.for.body248_crit_edge

for.inc254.for.body248_crit_edge:                 ; preds = %for.inc254
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body248

for.inc254.cleanup_crit_edge:                     ; preds = %for.inc254
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end212
  %and273 = and i32 %3, 2047
  %call275 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %land.lhs.true277, label %if.else.do.end285_crit_edge

if.else.do.end285_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end285

land.lhs.true277:                                 ; preds = %if.else
  %call278 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %land.lhs.true277.do.end285_crit_edge, label %land.lhs.true280

land.lhs.true277.do.end285_crit_edge:             ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end285

land.lhs.true280:                                 ; preds = %land.lhs.true277
  %.b409410 = load i1, ptr @can_rcv_filter.__warned.24, align 1
  br i1 %.b409410, label %land.lhs.true280.do.end285_crit_edge, label %if.then282

land.lhs.true280.do.end285_crit_edge:             ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end285

if.then282:                                       ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @can_rcv_filter.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 634, ptr noundef nonnull @.str.1) #11
  br label %do.end285

do.end285:                                        ; preds = %if.then282, %land.lhs.true280.do.end285_crit_edge, %land.lhs.true277.do.end285_crit_edge, %if.else.do.end285_crit_edge
  %arrayidx291 = getelementptr %struct.can_dev_rcv_lists, ptr %dev_rcv_lists, i32 0, i32 1, i32 %and273
  %58 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load4_noabort(i32 %58)
  %rcv.5473 = load volatile ptr, ptr %arrayidx291, align 4
  %tobool304.not474 = icmp eq ptr %rcv.5473, null
  br i1 %tobool304.not474, label %do.end285.cleanup_crit_edge, label %do.end285.for.body305_crit_edge

do.end285.for.body305_crit_edge:                  ; preds = %do.end285
  br label %for.body305

do.end285.cleanup_crit_edge:                      ; preds = %do.end285
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body305:                                      ; preds = %for.body305.for.body305_crit_edge, %do.end285.for.body305_crit_edge
  %rcv.5476 = phi ptr [ %rcv.5, %for.body305.for.body305_crit_edge ], [ %rcv.5473, %do.end285.for.body305_crit_edge ]
  %matches.9475 = phi i32 [ %inc306, %for.body305.for.body305_crit_edge ], [ %matches.5.lcssa, %do.end285.for.body305_crit_edge ]
  %func.i443 = getelementptr inbounds %struct.receiver, ptr %rcv.5476, i32 0, i32 4
  %59 = ptrtoint ptr %func.i443 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %func.i443, align 4
  %data.i444 = getelementptr inbounds %struct.receiver, ptr %rcv.5476, i32 0, i32 5
  %61 = ptrtoint ptr %data.i444 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i444, align 4
  tail call void %60(ptr noundef %skb, ptr noundef %62) #11
  %matches.i445 = getelementptr inbounds %struct.receiver, ptr %rcv.5476, i32 0, i32 3
  %63 = ptrtoint ptr %matches.i445 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %matches.i445, align 4
  %inc.i446 = add i32 %64, 1
  store i32 %inc.i446, ptr %matches.i445, align 4
  %inc306 = add i32 %matches.9475, 1
  %65 = ptrtoint ptr %rcv.5476 to i32
  call void @__asan_load4_noabort(i32 %65)
  %rcv.5 = load volatile ptr, ptr %rcv.5476, align 4
  %tobool304.not = icmp eq ptr %rcv.5, null
  br i1 %tobool304.not, label %for.body305.cleanup_crit_edge, label %for.body305.for.body305_crit_edge

for.body305.for.body305_crit_edge:                ; preds = %for.body305
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body305

for.body305.cleanup_crit_edge:                    ; preds = %for.body305
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body305.cleanup_crit_edge, %do.end285.cleanup_crit_edge, %for.inc254.cleanup_crit_edge, %do.end227.cleanup_crit_edge, %for.end208.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %matches.5.lcssa, %for.end208.cleanup_crit_edge ], [ %matches.5.lcssa, %do.end285.cleanup_crit_edge ], [ %matches.5.lcssa, %do.end227.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %inc306, %for.body305.cleanup_crit_edge ], [ %matches.8, %for.inc254.cleanup_crit_edge ], [ %matches.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %3)
  %cmp.not = icmp eq i16 %3, 280
  br i1 %cmp.not, label %lor.rhs, label %entry.land.end_crit_edge, !prof !147

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

lor.rhs:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp2.not = icmp eq i32 %5, 16
  br i1 %cmp2.not, label %if.end27, label %lor.rhs.land.end_crit_edge, !prof !147

lor.rhs.land.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.end:                                         ; preds = %lor.rhs.land.end_crit_edge, %entry.land.end_crit_edge
  %.b86 = load i1, ptr @can_rcv.__already_done, align 1
  br i1 %.b86, label %land.end.free_skb_crit_edge, label %if.then16, !prof !147

land.end.free_skb_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_skb

if.then16:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @can_rcv.__already_done, align 1
  %conv18 = zext i16 %3 to i32
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len19, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv18, i32 noundef %7) #14
  br label %free_skb

if.end27:                                         ; preds = %lor.rhs
  %len28 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %len28 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp30 = icmp ugt i8 %9, 8
  br i1 %cmp30, label %land.end46, label %if.end72, !prof !146

land.end46:                                       ; preds = %if.end27
  %.b8485 = load i1, ptr @can_rcv.__already_done.28, align 1
  br i1 %.b8485, label %land.end46.free_skb_crit_edge, label %if.then53, !prof !147

land.end46.free_skb_crit_edge:                    ; preds = %land.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_skb

if.then53:                                        ; preds = %land.end46
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @can_rcv.__already_done.28, align 1
  %conv62 = zext i8 %9 to i32
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef 280, i32 noundef 16, i32 noundef %conv62) #14
  br label %free_skb

if.end72:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @can_receive(ptr noundef %skb, ptr noundef %dev)
  br label %cleanup

free_skb:                                         ; preds = %if.then53, %land.end46.free_skb_crit_edge, %if.then16, %land.end.free_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.end72
  %retval.0 = phi i32 [ 1, %free_skb ], [ 0, %if.end72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_pernet_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rcvlists_lock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %rcvlists_lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @can_pernet_init.__key, i16 noundef signext 3) #11
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 12308, i32 noundef 3520, i32 noundef 2) #15
  %rx_alldev_list = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 10
  %0 = ptrtoint ptr %rx_alldev_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i.i.i, ptr %rx_alldev_list, align 8
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 64) #16
  %pkg_stats = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 13
  %2 = ptrtoint ptr %pkg_stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %pkg_stats, align 8
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end.out_free_rx_alldev_list_crit_edge, label %if.end11

if.end.out_free_rx_alldev_list_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_rx_alldev_list

if.end11:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #16
  %rcv_lists_stats = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 14
  %4 = ptrtoint ptr %rcv_lists_stats to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i47, ptr %rcv_lists_stats, align 4
  %tobool16.not = icmp eq ptr %call7.i.i47, null
  br i1 %tobool16.not, label %out_free_pkg_stats, label %if.end18

if.end18:                                         ; preds = %if.end11
  %5 = load i32, ptr @stats_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool19.not = icmp eq i32 %5, 0
  br i1 %tobool19.not, label %if.end18.if.end28_crit_edge, label %do.body21

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

do.body21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %stattimer = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 12
  tail call void @init_timer_key(ptr noundef %stattimer, ptr noundef nonnull @can_stat_update, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @can_pernet_init.__key.33) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 100
  %call26 = tail call i32 @round_jiffies(i32 noundef %add) #11
  %call27 = tail call i32 @mod_timer(ptr noundef %stattimer, i32 noundef %call26) #11
  br label %if.end28

if.end28:                                         ; preds = %do.body21, %if.end18.if.end28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = ptrtoint ptr %pkg_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pkg_stats, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %9, align 4
  tail call void @can_init_proc(ptr noundef %net) #11
  br label %return

out_free_pkg_stats:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %pkg_stats to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pkg_stats, align 8
  tail call void @kfree(ptr noundef %12) #11
  br label %out_free_rx_alldev_list

out_free_rx_alldev_list:                          ; preds = %out_free_pkg_stats, %if.end.out_free_rx_alldev_list_crit_edge
  %13 = ptrtoint ptr %rx_alldev_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_alldev_list, align 8
  tail call void @kfree(ptr noundef %14) #11
  br label %return

return:                                           ; preds = %out_free_rx_alldev_list, %if.end28, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -12, %entry.return_crit_edge ], [ -12, %out_free_rx_alldev_list ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @can_pernet_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @can_remove_proc(ptr noundef %net) #11
  %0 = load i32, ptr @stats_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %stattimer = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 12
  %call = tail call i32 @del_timer_sync(ptr noundef %stattimer) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_alldev_list = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 10
  %1 = ptrtoint ptr %rx_alldev_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_alldev_list, align 8
  tail call void @kfree(ptr noundef %2) #11
  %pkg_stats = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 13
  %3 = ptrtoint ptr %pkg_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pkg_stats, align 8
  tail call void @kfree(ptr noundef %4) #11
  %rcv_lists_stats = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 14
  %5 = ptrtoint ptr %rcv_lists_stats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rcv_lists_stats, align 4
  tail call void @kfree(ptr noundef %6) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_stat_update(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_init_proc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_remove_proc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %protocol)
  %1 = icmp ugt i32 %protocol, 7
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @can_get_proto(i32 noundef %protocol)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.38, i32 noundef %protocol) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end13_crit_edge, label %if.then5

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then5:                                         ; preds = %if.then2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @can_create._rs, ptr noundef nonnull @__func__.can_create) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end13_crit_edge, label %do.end

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %protocol) #14
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then5.if.end13_crit_edge, %if.then2.if.end13_crit_edge
  %call12 = tail call fastcc ptr @can_get_proto(i32 noundef %protocol)
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end13.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %err.066 = phi i32 [ %call3, %if.end13.if.end16_crit_edge ], [ 0, %if.end.if.end16_crit_edge ]
  %cp.064 = phi ptr [ %call12, %if.end13.if.end16_crit_edge ], [ %call, %if.end.if.end16_crit_edge ]
  %2 = ptrtoint ptr %cp.064 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cp.064, align 4
  %type17 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %4 = ptrtoint ptr %type17 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type17, align 4
  %conv = sext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp18.not = icmp eq i32 %3, %conv
  br i1 %cmp18.not, label %if.end21, label %if.end16.errout_crit_edge

if.end16.errout_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.end21:                                         ; preds = %if.end16
  %ops = getelementptr inbounds %struct.can_proto, ptr %cp.064, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %ops22 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %8 = ptrtoint ptr %ops22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %ops22, align 4
  %prot = getelementptr inbounds %struct.can_proto, ptr %cp.064, i32 0, i32 3
  %9 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prot, align 4
  %call23 = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 29, i32 noundef 3264, ptr noundef %10, i32 noundef %kern) #11
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end21.errout_crit_edge, label %if.end26

if.end21.errout_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.end26:                                         ; preds = %if.end21
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call23) #11
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call23, i32 0, i32 82
  %11 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @can_sock_destruct, ptr %sk_destruct, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %call23, i32 0, i32 8
  %12 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_prot, align 8
  %init = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init, align 4
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %if.end26.if.end33_crit_edge, label %if.then28

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call i32 %15(ptr noundef nonnull %call23) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end26.if.end33_crit_edge
  %err.1 = phi i32 [ %call32, %if.then28 ], [ %err.066, %if.end26.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool34.not = icmp eq i32 %err.1, 0
  br i1 %tobool34.not, label %if.end33.errout_crit_edge, label %if.then35

if.end33.errout_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.then35:                                        ; preds = %if.end33
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %call23, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #11
  %16 = getelementptr inbounds %struct.sock_common, ptr %call23, i32 0, i32 13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %or.i.i.i = or i32 %18, 1
  store i32 %or.i.i.i, ptr %16, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %call23, i32 0, i32 71
  %19 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sk_socket.i.i, align 8
  %20 = getelementptr inbounds %struct.sock, ptr %call23, i32 0, i32 17
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %20, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #11
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call23, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !152
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.errout_crit_edge, label %if.then10.i.i.i.i, !prof !147

if.end5.i.i.i.i.errout_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %errout

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  tail call void @sk_free(ptr noundef nonnull %call23) #11
  br label %errout

errout:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.errout_crit_edge, %if.end33.errout_crit_edge, %if.end21.errout_crit_edge, %if.end16.errout_crit_edge
  %err.2 = phi i32 [ 0, %if.end33.errout_crit_edge ], [ -91, %if.end16.errout_crit_edge ], [ -12, %if.end21.errout_crit_edge ], [ %err.1, %if.end5.i.i.i.i.errout_crit_edge ], [ %err.1, %if.then10.i.i.i.i ], [ %err.1, %if.then.i ]
  %prot.i = getelementptr inbounds %struct.can_proto, ptr %cp.064, i32 0, i32 3
  %23 = ptrtoint ptr %prot.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prot.i, align 4
  %owner.i = getelementptr inbounds %struct.proto, ptr %24, i32 0, i32 51
  %25 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %26) #11
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %errout ], [ -22, %entry.cleanup_crit_edge ], [ -93, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @can_get_proto(i32 noundef %protocol) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !136) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !158
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr [8 x ptr], ptr @proto_tab, i32 0, i32 %protocol
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @can_get_proto.__warned, align 1
  br i1 %.b16, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @can_get_proto.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @.str.41) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end13_crit_edge, label %land.lhs.true10

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true10:                                  ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  %prot = getelementptr inbounds %struct.can_proto, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prot, align 4
  %owner = getelementptr inbounds %struct.proto, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 4
  %call11 = tail call zeroext i1 @try_module_get(ptr noundef %9) #11
  %spec.select = select i1 %call11, ptr %5, ptr null
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true10, %do.end7.if.end13_crit_edge
  %cp.0 = phi ptr [ null, %do.end7.if.end13_crit_edge ], [ %spec.select, %land.lhs.true10 ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i17, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end13
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.25) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !159
  %10 = tail call i32 @llvm.read_register.i32(metadata !136) #11
  %and.i.i.i.i.i24 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %cp.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !26, !27, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !98, !99, !100, !101, !102, !104, !105, !106, !107, !109, !111, !112, !114, !115, !117, !118, !119, !120, !122, !124, !126, !128, !129, !130, !131, !132, !133, !135}
!llvm.named.register.sp = !{!136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__UNIQUE_ID_description457, !1, !"__UNIQUE_ID_description457", i1 false, i1 false}
!1 = !{!"../net/can/af_can.c", i32 68, i32 1}
!2 = !{ptr @__UNIQUE_ID_file458, !3, !"__UNIQUE_ID_file458", i1 false, i1 false}
!3 = !{!"../net/can/af_can.c", i32 69, i32 1}
!4 = !{ptr @__UNIQUE_ID_license459, !3, !"__UNIQUE_ID_license459", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author460, !6, !"__UNIQUE_ID_author460", i1 false, i1 false}
!6 = !{!"../net/can/af_can.c", i32 70, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias461, !8, !"__UNIQUE_ID_alias461", i1 false, i1 false}
!8 = !{!"../net/can/af_can.c", i32 73, i32 1}
!9 = !{ptr @__param_stats_timer, !10, !"__param_stats_timer", i1 false, i1 false}
!10 = !{!"../net/can/af_can.c", i32 76, i32 1}
!11 = !{ptr @__UNIQUE_ID_stats_timertype462, !10, !"__UNIQUE_ID_stats_timertype462", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_stats_timer463, !13, !"__UNIQUE_ID_stats_timer463", i1 false, i1 false}
!13 = !{!"../net/can/af_can.c", i32 77, i32 1}
!14 = !{ptr @__ksymtab_can_sock_destruct, !15, !"__ksymtab_can_sock_destruct", i1 false, i1 false}
!15 = !{!"../net/can/af_can.c", i32 94, i32 1}
!16 = !{ptr @__ksymtab_can_send, !17, !"__ksymtab_can_send", i1 false, i1 false}
!17 = !{!"../net/can/af_can.c", i32 299, i32 1}
!18 = !{ptr @__ksymtab_can_rx_register, !19, !"__ksymtab_can_rx_register", i1 false, i1 false}
!19 = !{!"../net/can/af_can.c", i32 487, i32 1}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/can/af_can.c", i32 536, i32 2}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/can/af_can.c", i32 549, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @can_rx_unregister._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @can_rx_unregister._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__ksymtab_can_rx_unregister, !31, !"__ksymtab_can_rx_unregister", i1 false, i1 false}
!31 = !{!"../net/can/af_can.c", i32 570, i32 1}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/can/af_can.c", i32 748, i32 3}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @can_proto_register._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @can_proto_register._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/can/af_can.c", i32 759, i32 3}
!39 = !{ptr @can_proto_register._entry.7, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @can_proto_register._entry_ptr.9, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__ksymtab_can_proto_register, !42, !"__ksymtab_can_proto_register", i1 false, i1 false}
!42 = !{!"../net/can/af_can.c", i32 772, i32 1}
!43 = !{ptr @__ksymtab_can_proto_unregister, !44, !"__ksymtab_can_proto_unregister", i1 false, i1 false}
!44 = !{!"../net/can/af_can.c", i32 791, i32 1}
!45 = !{ptr @__initcall__kmod_can__503_918_can_init6, !46, !"__initcall__kmod_can__503_918_can_init6", i1 false, i1 false}
!46 = !{!"../net/can/af_can.c", i32 918, i32 1}
!47 = !{ptr @__exitcall_can_exit, !48, !"__exitcall_can_exit", i1 false, i1 false}
!48 = !{!"../net/can/af_can.c", i32 919, i32 1}
!49 = !{ptr @rcv_cache, !50, !"rcv_cache", i1 false, i1 false}
!50 = !{!"../net/can/af_can.c", i32 79, i32 27}
!51 = !{ptr @proto_tab, !52, !"proto_tab", i1 false, i1 false}
!52 = !{!"../net/can/af_can.c", i32 82, i32 38}
!53 = !{ptr @__param_str_stats_timer, !10, !"__param_str_stats_timer", i1 false, i1 false}
!54 = !{ptr @stats_timer, !55, !"stats_timer", i1 false, i1 false}
!55 = !{!"../net/can/af_can.c", i32 75, i32 12}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/can/af_can.c", i32 83, i32 8}
!58 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @proto_tab_lock, !57, !"proto_tab_lock", i1 false, i1 false}
!60 = !{ptr @canfd_packet, !61, !"canfd_packet", i1 false, i1 false}
!61 = !{!"../net/can/af_can.c", i32 849, i32 27}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../net/can/af_can.c", i32 710, i32 3}
!64 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @canfd_rcv._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @canfd_rcv._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../net/can/af_can.c", i32 717, i32 3}
!70 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @canfd_rcv._entry.15, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @canfd_rcv._entry_ptr.17, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @skbcounter, !74, !"skbcounter", i1 false, i1 false}
!74 = !{!"../net/can/af_can.c", i32 85, i32 17}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!77 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/can/af_can.c", i32 590, i32 3}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../net/can/af_can.c", i32 600, i32 2}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../net/can/af_can.c", i32 606, i32 2}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/can/af_can.c", i32 614, i32 2}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../net/can/af_can.c", i32 626, i32 3}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../net/can/af_can.c", i32 634, i32 3}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!93 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @can_packet, !95, !"can_packet", i1 false, i1 false}
!95 = !{!"../net/can/af_can.c", i32 844, i32 27}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../net/can/af_can.c", i32 684, i32 3}
!98 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @can_rcv._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @can_rcv._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../net/can/af_can.c", i32 691, i32 3}
!104 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @can_rcv._entry.29, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @can_rcv._entry_ptr.31, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @can_pernet_ops, !108, !"can_pernet_ops", i1 false, i1 false}
!108 = !{!"../net/can/af_can.c", i32 860, i32 33}
!109 = !{ptr @can_pernet_init.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../net/can/af_can.c", i32 795, i32 2}
!111 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @can_pernet_init.__key.33, !113, !"__key", i1 false, i1 false}
!113 = !{!"../net/can/af_can.c", i32 810, i32 4}
!114 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/can/af_can.c", i32 875, i32 2}
!117 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @can_init._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @can_init._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/can/af_can.c", i32 877, i32 32}
!122 = !{ptr @can_family_ops, !123, !"can_family_ops", i1 false, i1 false}
!123 = !{!"../net/can/af_can.c", i32 854, i32 38}
!124 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/can/af_can.c", i32 132, i32 9}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/can/af_can.c", i32 139, i32 4}
!128 = !{ptr @can_create._rs, !127, !"_rs", i1 false, i1 false}
!129 = !{ptr @__func__.can_create, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @can_create._entry, !127, !"_entry", i1 false, i1 false}
!132 = !{ptr @can_create._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!133 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!134 = !{!"../net/can/af_can.c", i32 101, i32 7}
!135 = !{ptr @.str.41, !134, !"<string literal>", i1 false, i1 false}
!136 = !{!"sp"}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{i64 847783, i64 847807, i64 847828, i64 847845, i64 847862}
!149 = !{i64 2151930718}
!150 = !{i64 2148364780, i64 2148364812, i64 2148364841, i64 2148364875, i64 2148364906, i64 2148364929}
!151 = !{i64 2148452805}
!152 = !{i64 2148367245, i64 2148367277, i64 2148367306, i64 2148367340, i64 2148367371, i64 2148367394}
!153 = !{i64 2149328919}
!154 = !{i64 2157076526, i64 2157077007, i64 2157076563, i64 2157076619, i64 2157076653, i64 2157076677, i64 2157076718, i64 2157076739, i64 2157076767, i64 2157076801}
!155 = !{i64 2148448685}
!156 = !{i64 2148363970, i64 2148364002, i64 2148364031, i64 2148364065, i64 2148364096, i64 2148364119}
!157 = !{i64 2148448914}
!158 = !{i64 2149379409}
!159 = !{i64 2149379675}
