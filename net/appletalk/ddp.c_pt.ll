; ModuleID = '/llk/IR_all_yes/net/appletalk/ddp.c_pt.bc'
source_filename = "../net/appletalk/ddp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+atrtr_get_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_atrtr_get_dev\09\09\09\09"
module asm "\09.long\09__crc_atrtr_get_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atrtr_get_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22atrtr_get_dev\22\09\09\09\09\09"
module asm "__kstrtabns_atrtr_get_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+atalk_find_dev_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_atalk_find_dev_addr\09\09\09\09"
module asm "\09.long\09__crc_atalk_find_dev_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atalk_find_dev_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22atalk_find_dev_addr\22\09\09\09\09\09"
module asm "__kstrtabns_atalk_find_dev_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.99, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.99 = type { ptr }
%struct.atalk_route = type { ptr, %struct.atalk_addr, %struct.atalk_addr, i32, ptr }
%struct.atalk_addr = type { i16, i8 }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.atalk_iface = type { ptr, %struct.atalk_addr, i32, %struct.atalk_netrange, ptr }
%struct.atalk_netrange = type { i8, i16, i16 }
%struct.sockaddr_at = type { i16, i8, %struct.atalk_addr, [8 x i8] }
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.ddpehdr = type { i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.datalink_proto = type { [8 x i8], ptr, i16, ptr, ptr, %struct.list_head }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.4, %union.anon.6, %union.anon.7, i16, i8, i8, i32, %union.anon.9, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.4 = type { i64 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }
%union.anon.9 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.atalk_sock = type { %struct.sock, i16, i16, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.70, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%union.anon.22 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.70 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ifreq = type { %union.anon.126, %union.anon.127 }
%union.anon.126 = type { [16 x i8] }
%union.anon.127 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.rtentry = type { i32, %struct.sockaddr, %struct.sockaddr, %struct.sockaddr, i16, i16, i32, ptr, i16, ptr, i32, i32, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.98, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.10, %union.anon.96 }
%union.anon.10 = type { ptr }
%union.anon.96 = type { i64 }
%union.anon.98 = type { ptr }

@atalk_sockets = dso_local global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atalk_sockets_lock\00", [45 x i8] zeroinitializer }, align 32
@atalk_sockets_lock = dso_local global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atalk_routes_lock\00", [46 x i8] zeroinitializer }, align 32
@atalk_routes_lock = dso_local global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atalk_interfaces_lock\00", [42 x i8] zeroinitializer }, align 32
@atalk_interfaces_lock = dso_local global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_atrtr_get_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_atrtr_get_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_atrtr_get_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atrtr_get_dev to i32), ptr @__kstrtab_atrtr_get_dev, ptr @__kstrtabns_atrtr_get_dev }, section "___ksymtab+atrtr_get_dev", align 4
@__kstrtab_atalk_find_dev_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_atalk_find_dev_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_atalk_find_dev_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atalk_find_dev_addr to i32), ptr @__kstrtab_atalk_find_dev_addr, ptr @__kstrtabns_atalk_find_dev_addr }, section "___ksymtab+atalk_find_dev_addr", align 4
@__initcall__kmod_appletalk__492_2012_atalk_init6 = internal global ptr @atalk_init, section ".initcall6.init", align 4
@ddp_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ddp_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ltalk_packet_type = internal global %struct.packet_type { i16 9, i8 0, ptr null, ptr null, ptr @ltalk_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@ppptalk_packet_type = internal global %struct.packet_type { i16 16, i8 0, ptr null, ptr null, ptr @atalk_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@ddp_dl = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ddp_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 968, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.99 zeroinitializer, ptr null, [32 x i8] c"DDP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_atalk_exit = internal global ptr @atalk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file493 = internal constant [39 x i8] c"appletalk.file=net/appletalk/appletalk\00", section ".modinfo", align 1
@__UNIQUE_ID_license494 = internal constant [22 x i8] c"appletalk.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author495 = internal constant [53 x i8] c"appletalk.author=Alan Cox <alan@lxorguk.ukuu.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description496 = internal constant [38 x i8] c"appletalk.description=AppleTalk 0.20\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_alias497 = internal constant [25 x i8] c"appletalk.alias=net-pf-5\00", section ".modinfo", align 1
@aarp_dl = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@atalk_routes = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@atalk_interfaces = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@atrtr_default = dso_local global { %struct.atalk_route, [44 x i8] } zeroinitializer, align 32
@atalk_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 5, ptr @atalk_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@ddp_snap_id = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\08\00\07\80\9B", [27 x i8] zeroinitializer }, align 32
@atalk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\012Unable to register DDP with SNAP.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atalk_init\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/appletalk/ddp.c\00", [44 x i8] zeroinitializer }, align 32
@atalk_init._entry_ptr = internal global ptr @atalk_init._entry, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@atalk_dgram_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 5, ptr null, ptr @atalk_release, ptr @atalk_bind, ptr @atalk_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @atalk_getname, ptr @datagram_poll, ptr @atalk_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @atalk_sendmsg, ptr @atalk_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@atalk_destroy_socket.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&sk->sk_timer)\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@atalk_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014atalk_connect: %s is broken and did not set SO_BROADCAST.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atalk_connect\00", [18 x i8] zeroinitializer }, align 32
@atalk_connect._entry_ptr = internal global ptr @atalk_connect._entry, section ".printk_index", align 4
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@atif_ioctl.aarp_mcast = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\09\00\00\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@atif_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017AppleTalk: point-to-point interface added with existing address\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atif_ioctl\00", [21 x i8] zeroinitializer }, align 32
@atif_ioctl._entry_ptr = internal global ptr @atif_ioctl._entry, section ".printk_index", align 4
@atif_ioctl._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014Too many routes/iface.\0A\00", [38 x i8] zeroinitializer }, align 32
@atif_ioctl._entry_ptr.17 = internal global ptr @atif_ioctl._entry.15, section ".printk_index", align 4
@atalk_sendmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 1620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017SK %p: Got address.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atalk_sendmsg\00", [18 x i8] zeroinitializer }, align 32
@atalk_sendmsg._entry_ptr = internal global ptr @atalk_sendmsg._entry, section ".printk_index", align 4
@atalk_sendmsg._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.5, i32 1642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017SK %p: Size needed %d, device %s\0A\00", [60 x i8] zeroinitializer }, align 32
@atalk_sendmsg._entry_ptr.22 = internal global ptr @atalk_sendmsg._entry.20, section ".printk_index", align 4
@atalk_sendmsg._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.5, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017SK %p: Begin build.\0A\00", [41 x i8] zeroinitializer }, align 32
@atalk_sendmsg._entry_ptr.25 = internal global ptr @atalk_sendmsg._entry.23, section ".printk_index", align 4
@atalk_sendmsg._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.5, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017SK %p: Copy user data (%zd bytes).\0A\00", [58 x i8] zeroinitializer }, align 32
@atalk_sendmsg._entry_ptr.28 = internal global ptr @atalk_sendmsg._entry.26, section ".printk_index", align 4
@atalk_sendmsg._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.5, i32 1705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017SK %p: send out(copy).\0A\00", [38 x i8] zeroinitializer }, align 32
@atalk_sendmsg._entry_ptr.31 = internal global ptr @atalk_sendmsg._entry.29, section ".printk_index", align 4
@atalk_sendmsg._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.5, i32 1714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017SK %p: Loop back.\0A\00", [43 x i8] zeroinitializer }, align 32
@atalk_sendmsg._entry_ptr.34 = internal global ptr @atalk_sendmsg._entry.32, section ".printk_index", align 4
@atalk_sendmsg._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.5, i32 1728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017SK %p: send out.\0A\00", [44 x i8] zeroinitializer }, align 32
@atalk_sendmsg._entry_ptr.37 = internal global ptr @atalk_sendmsg._entry.35, section ".printk_index", align 4
@atalk_sendmsg._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.19, ptr @.str.5, i32 1739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017SK %p: Done write (%zd).\0A\00", [36 x i8] zeroinitializer }, align 32
@atalk_sendmsg._entry_ptr.40 = internal global ptr @atalk_sendmsg._entry.38, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@atalk_rcv.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.42, ptr @.str.5, ptr @.str.43, i8 1, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"appletalk\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atalk_rcv\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"AppleTalk: dropping corrupted frame (deh_len=%u, skb->len=%u)\0A\00", [33 x i8] zeroinitializer }, align 32
@atalk_route_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017AppleTalk: didn't forward broadcast packet received from PPP iface\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atalk_route_packet\00", [45 x i8] zeroinitializer }, align 32
@atalk_route_packet._entry_ptr = internal global ptr @atalk_route_packet._entry, section ".printk_index", align 4
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ipddp0\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.49 = internal global [13 x i64] [i64 11, i64 32, i64 21521, i64 21531, i64 35083, i64 35084, i64 35093, i64 35094, i64 35097, i64 35126, i64 35155, i64 35157, i64 35296]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 35083, i64 35084]
@__sancov_gen_cov_switch_values.51 = internal global [9 x i64] [i64 7, i64 32, i64 35093, i64 35094, i64 35097, i64 35126, i64 35155, i64 35157, i64 35296]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 512, i64 772, i64 773]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"atalk_sockets\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 73, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"atalk_sockets_lock\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 74, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"atalk_routes_lock\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 189, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"atalk_interfaces_lock\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 192, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"ddp_notifier\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1936, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"ddp_dl\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 64, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant [10 x i8] c"ddp_proto\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1009, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant [8 x i8] c"aarp_dl\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 64, i32 33 }
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"atalk_routes\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 188, i32 21 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"atalk_interfaces\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 191, i32 21 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"atrtr_default\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 195, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"atalk_family_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1907, i32 38 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"ddp_snap_id\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1950, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1971, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"atalk_dgram_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1913, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 174, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 729, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1215, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 230, i32 6 }
@___asan_gen_.140 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 214, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 156, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [11 x i8] c"aarp_mcast\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 658, i32 14 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 702, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 766, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1620, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1641, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1670, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1681, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1705, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1714, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1728, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1739, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1456, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1338, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [23 x i8] c"../net/appletalk/ddp.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1295, i32 56 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_alias497, ptr @__UNIQUE_ID_author495, ptr @__UNIQUE_ID_description496, ptr @__UNIQUE_ID_file493, ptr @__UNIQUE_ID_license494, ptr @__exitcall_atalk_exit, ptr @__initcall__kmod_appletalk__492_2012_atalk_init6, ptr @__ksymtab_atalk_find_dev_addr, ptr @__ksymtab_atrtr_get_dev, ptr @atalk_connect._entry, ptr @atalk_connect._entry_ptr, ptr @atalk_exit, ptr @atalk_init._entry, ptr @atalk_init._entry_ptr, ptr @atalk_route_packet._entry, ptr @atalk_route_packet._entry_ptr, ptr @atalk_sendmsg._entry, ptr @atalk_sendmsg._entry.20, ptr @atalk_sendmsg._entry.23, ptr @atalk_sendmsg._entry.26, ptr @atalk_sendmsg._entry.29, ptr @atalk_sendmsg._entry.32, ptr @atalk_sendmsg._entry.35, ptr @atalk_sendmsg._entry.38, ptr @atalk_sendmsg._entry_ptr, ptr @atalk_sendmsg._entry_ptr.22, ptr @atalk_sendmsg._entry_ptr.25, ptr @atalk_sendmsg._entry_ptr.28, ptr @atalk_sendmsg._entry_ptr.31, ptr @atalk_sendmsg._entry_ptr.34, ptr @atalk_sendmsg._entry_ptr.37, ptr @atalk_sendmsg._entry_ptr.40, ptr @atif_ioctl._entry, ptr @atif_ioctl._entry.15, ptr @atif_ioctl._entry_ptr, ptr @atif_ioctl._entry_ptr.17, ptr @atalk_sockets, ptr @.str, ptr @atalk_sockets_lock, ptr @.str.1, ptr @atalk_routes_lock, ptr @.str.2, ptr @atalk_interfaces_lock, ptr @ddp_notifier, ptr @ddp_dl, ptr @ddp_proto, ptr @aarp_dl, ptr @atalk_routes, ptr @atalk_interfaces, ptr @atrtr_default, ptr @atalk_family_ops, ptr @ddp_snap_id, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @atalk_dgram_ops, ptr @atalk_destroy_socket.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @atif_ioctl.aarp_mcast, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_sockets to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_sockets_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_routes_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_interfaces_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_dl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aarp_dl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_routes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_interfaces to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atrtr_default to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_snap_id to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_dgram_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_destroy_socket.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atif_ioctl.aarp_mcast to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atif_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atif_ioctl._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_sendmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_sendmsg._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_sendmsg._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_sendmsg._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_sendmsg._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_sendmsg._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_sendmsg._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_sendmsg._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atalk_route_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @atalk_find_dev_addr(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %atalk_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 77
  %0 = ptrtoint ptr %atalk_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atalk_ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  %address = getelementptr inbounds %struct.atalk_iface, ptr %1, i32 0, i32 1
  %spec.select = select i1 %tobool.not, ptr null, ptr %address
  ret ptr %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @atrtr_get_dev(ptr nocapture noundef readonly %sa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  %r.040.i = load ptr, ptr @atalk_routes, align 4
  %tobool.not41.i = icmp eq ptr %r.040.i, null
  br i1 %tobool.not41.i, label %entry.if.else23.i_crit_edge, label %for.body.lr.ph.i

entry.if.else23.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23.i

for.body.lr.ph.i:                                 ; preds = %entry
  %s_node13.i = getelementptr inbounds %struct.atalk_addr, ptr %sa, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %r.043.i = phi ptr [ %r.040.i, %for.body.lr.ph.i ], [ %r.0.i, %for.inc.i.for.body.i_crit_edge ]
  %net_route.042.i = phi ptr [ null, %for.body.lr.ph.i ], [ %net_route.1.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %target2.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i, i32 0, i32 1
  %2 = ptrtoint ptr %target2.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %target2.i, align 4
  %4 = ptrtoint ptr %sa to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sa, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.i = icmp eq i16 %3, %5
  br i1 %cmp.i, label %if.then6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  %and8.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.then6.i.for.inc.i_crit_edge, label %if.then10.i

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then10.i:                                      ; preds = %if.then6.i
  %s_node.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %s_node.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_node.i, align 2
  %8 = ptrtoint ptr %s_node13.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_node13.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp15.i = icmp eq i8 %7, %9
  br i1 %cmp15.i, label %if.then10.i.cond.true_crit_edge, label %if.then10.i.for.inc.i_crit_edge

if.then10.i.for.inc.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then10.i.cond.true_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true

for.inc.i:                                        ; preds = %if.then10.i.for.inc.i_crit_edge, %if.then6.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %net_route.1.i = phi ptr [ %net_route.042.i, %if.then10.i.for.inc.i_crit_edge ], [ %net_route.042.i, %if.end.i.for.inc.i_crit_edge ], [ %net_route.042.i, %for.body.i.for.inc.i_crit_edge ], [ %r.043.i, %if.then6.i.for.inc.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i, i32 0, i32 4
  %10 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %r.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %r.0.i, null
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool21.not.i = icmp eq ptr %net_route.1.i, null
  br i1 %tobool21.not.i, label %for.end.i.if.else23.i_crit_edge, label %for.end.i.cond.true_crit_edge

for.end.i.cond.true_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true

for.end.i.if.else23.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23.i

if.else23.i:                                      ; preds = %for.end.i.if.else23.i_crit_edge, %entry.if.else23.i_crit_edge
  %11 = load ptr, ptr @atrtr_default, align 4
  %tobool24.not.i = icmp eq ptr %11, null
  br i1 %tobool24.not.i, label %atrtr_find.exit, label %if.else23.i.cond.true_crit_edge

if.else23.i.cond.true_crit_edge:                  ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true

atrtr_find.exit:                                  ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  br label %cond.end

cond.true:                                        ; preds = %if.else23.i.cond.true_crit_edge, %for.end.i.cond.true_crit_edge, %if.then10.i.cond.true_crit_edge
  %r.1.i.ph = phi ptr [ @atrtr_default, %if.else23.i.cond.true_crit_edge ], [ %net_route.1.i, %for.end.i.cond.true_crit_edge ], [ %r.043.i, %if.then10.i.cond.true_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  %12 = ptrtoint ptr %r.1.i.ph to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %r.1.i.ph, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %atrtr_find.exit
  %cond = phi ptr [ %13, %cond.true ], [ null, %atrtr_find.exit ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @atrtr_find(ptr nocapture noundef readonly %target) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  %r.040 = load ptr, ptr @atalk_routes, align 4
  %tobool.not41 = icmp eq ptr %r.040, null
  br i1 %tobool.not41, label %entry.if.else23_crit_edge, label %for.body.lr.ph

entry.if.else23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23

for.body.lr.ph:                                   ; preds = %entry
  %s_node13 = getelementptr inbounds %struct.atalk_addr, ptr %target, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %r.043 = phi ptr [ %r.040, %for.body.lr.ph ], [ %r.0, %for.inc.for.body_crit_edge ]
  %net_route.042 = phi ptr [ null, %for.body.lr.ph ], [ %net_route.1, %for.inc.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.atalk_route, ptr %r.043, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %target2 = getelementptr inbounds %struct.atalk_route, ptr %r.043, i32 0, i32 1
  %2 = ptrtoint ptr %target2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %target2, align 4
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %target, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp = icmp eq i16 %3, %5
  br i1 %cmp, label %if.then6, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then6:                                         ; preds = %if.end
  %and8 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then6.for.inc_crit_edge, label %if.then10

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10:                                        ; preds = %if.then6
  %s_node = getelementptr inbounds %struct.atalk_route, ptr %r.043, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_node, align 2
  %8 = ptrtoint ptr %s_node13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_node13, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp15 = icmp eq i8 %7, %9
  br i1 %cmp15, label %if.then10.out_crit_edge, label %if.then10.for.inc_crit_edge

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc:                                          ; preds = %if.then10.for.inc_crit_edge, %if.then6.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %net_route.1 = phi ptr [ %net_route.042, %if.then10.for.inc_crit_edge ], [ %net_route.042, %if.end.for.inc_crit_edge ], [ %net_route.042, %for.body.for.inc_crit_edge ], [ %r.043, %if.then6.for.inc_crit_edge ]
  %next = getelementptr inbounds %struct.atalk_route, ptr %r.043, i32 0, i32 4
  %10 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %10)
  %r.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %r.0, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool21.not = icmp eq ptr %net_route.1, null
  br i1 %tobool21.not, label %for.end.if.else23_crit_edge, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.end.if.else23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23

if.else23:                                        ; preds = %for.end.if.else23_crit_edge, %entry.if.else23_crit_edge
  %11 = load ptr, ptr @atrtr_default, align 4
  %tobool24.not = icmp eq ptr %11, null
  %.atrtr_default = select i1 %tobool24.not, ptr null, ptr @atrtr_default
  br label %out

out:                                              ; preds = %if.else23, %for.end.out_crit_edge, %if.then10.out_crit_edge
  %r.1 = phi ptr [ %net_route.1, %for.end.out_crit_edge ], [ %.atrtr_default, %if.else23 ], [ %r.043, %if.then10.out_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  ret ptr %r.1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @ddp_proto, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sock_register(ptr noundef nonnull @atalk_family_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_proto_crit_edge

if.end.out_proto_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_proto

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @register_snap_client(ptr noundef nonnull @ddp_snap_id, ptr noundef nonnull @atalk_rcv) #11
  store ptr %call5, ptr @ddp_dl, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %out_sock

if.end9:                                          ; preds = %if.end4
  tail call void @dev_add_pack(ptr noundef nonnull @ltalk_packet_type) #11
  tail call void @dev_add_pack(ptr noundef nonnull @ppptalk_packet_type) #11
  %call10 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ddp_notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_snap_crit_edge

if.end9.out_snap_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_snap

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @aarp_proto_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out_dev_crit_edge

if.end13.out_dev_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dev

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @atalk_proc_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.out_aarp_crit_edge

if.end17.out_aarp_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_aarp

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @atalk_register_sysctl() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.out_crit_edge, label %out_proc

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %out_proto, %if.end21.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %rc.5, %out_proto ], [ 0, %if.end21.out_crit_edge ]
  ret i32 %rc.0

out_proc:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @atalk_proc_exit() #11
  br label %out_aarp

out_aarp:                                         ; preds = %out_proc, %if.end17.out_aarp_crit_edge
  %rc.1 = phi i32 [ %call18, %if.end17.out_aarp_crit_edge ], [ %call22, %out_proc ]
  tail call void @aarp_cleanup_module() #11
  br label %out_dev

out_dev:                                          ; preds = %out_aarp, %if.end13.out_dev_crit_edge
  %rc.2 = phi i32 [ %call14, %if.end13.out_dev_crit_edge ], [ %rc.1, %out_aarp ]
  %call26 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ddp_notifier) #11
  br label %out_snap

out_snap:                                         ; preds = %out_dev, %if.end9.out_snap_crit_edge
  %rc.3 = phi i32 [ %call10, %if.end9.out_snap_crit_edge ], [ %rc.2, %out_dev ]
  tail call void @dev_remove_pack(ptr noundef nonnull @ppptalk_packet_type) #11
  tail call void @dev_remove_pack(ptr noundef nonnull @ltalk_packet_type) #11
  %0 = load ptr, ptr @ddp_dl, align 4
  tail call void @unregister_snap_client(ptr noundef %0) #11
  br label %out_sock

out_sock:                                         ; preds = %out_snap, %do.end
  %rc.4 = phi i32 [ %rc.3, %out_snap ], [ -12, %do.end ]
  tail call void @sock_unregister(i32 noundef 5) #11
  br label %out_proto

out_proto:                                        ; preds = %out_sock, %if.end.out_proto_crit_edge
  %rc.5 = phi i32 [ %call1, %if.end.out_proto_crit_edge ], [ %rc.4, %out_sock ]
  tail call void @proto_unregister(ptr noundef nonnull @ddp_proto) #11
  br label %out
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atalk_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @atalk_unregister_sysctl() #11
  tail call void @atalk_proc_exit() #11
  tail call void @aarp_cleanup_module() #11
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ddp_notifier) #11
  tail call void @dev_remove_pack(ptr noundef nonnull @ltalk_packet_type) #11
  tail call void @dev_remove_pack(ptr noundef nonnull @ppptalk_packet_type) #11
  %0 = load ptr, ptr @ddp_dl, align 4
  tail call void @unregister_snap_client(ptr noundef %0) #11
  tail call void @sock_unregister(i32 noundef 5) #11
  tail call void @proto_unregister(ptr noundef nonnull @ddp_proto) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atalk_unregister_sysctl() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @atalk_proc_exit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aarp_cleanup_module() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_snap_client(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_snap_client(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #2 align 64 {
entry:
  %ta.i = alloca %struct.atalk_addr, align 4
  %tosat = alloca %struct.sockaddr_at, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tosat) #11
  %0 = call ptr @memset(ptr %tosat, i32 255, i32 16)
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %1 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %2, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end:                                           ; preds = %entry
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #11
  %3 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i.not.i = icmp eq i32 %4, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #11
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread160, !prof !143

skb_share_check.exit.thread160:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %if.end5

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

skb_share_check.exit:                             ; preds = %if.end
  %tobool3.not = icmp eq ptr %skb, null
  br i1 %tobool3.not, label %skb_share_check.exit.cleanup_crit_edge, label %skb_share_check.exit.if.end5_crit_edge

skb_share_check.exit.if.end5_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

skb_share_check.exit.cleanup_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %skb_share_check.exit.if.end5_crit_edge, %skb_share_check.exit.thread160
  %skb.addr.0.i163 = phi ptr [ %call7.i, %skb_share_check.exit.thread160 ], [ %skb, %skb_share_check.exit.if.end5_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i163, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i163, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.i.i)
  %cmp.i115 = icmp ugt i32 %sub.i.i, 11
  br i1 %cmp.i115, label %if.end5.if.end8_crit_edge, label %if.end.i, !prof !144

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %6)
  %cmp3.i = icmp ult i32 %6, 12
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !143

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 12, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i163, i32 noundef %sub.i) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end8_crit_edge

pskb_may_pull.exit.if.end8_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end8:                                          ; preds = %pskb_may_pull.exit.if.end8_crit_edge, %if.end5.if.end8_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i163, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i163, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i, align 2
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i, align 4
  %17 = and i16 %14, 1023
  %and = zext i16 %17 to i32
  %18 = tail call i32 @llvm.umin.i32(i32 %16, i32 %and)
  tail call void @skb_trim(ptr noundef nonnull %skb.addr.0.i163, i32 noundef %18) #11
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %20)
  %cmp13 = icmp ult i32 %20, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %and)
  %cmp18 = icmp ult i32 %20, %and
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp18
  br i1 %or.cond, label %do.body, label %if.end31

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atalk_rcv.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atalk_rcv, %if.then26)) #11
          to label %drop [label %if.then26], !srcloc !145

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atalk_rcv.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.43, i32 noundef %and, i32 noundef %22) #11
  br label %drop

if.end31:                                         ; preds = %if.end8
  %deh_sum = getelementptr inbounds %struct.ddpehdr, ptr %add.ptr.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %deh_sum to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %deh_sum, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool33.not = icmp eq i16 %24, 0
  br i1 %tobool33.not, label %if.end31.if.end43_crit_edge, label %land.lhs.true

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end31
  %sub.i117 = add nsw i32 %and, -4
  %call.i = tail call fastcc i32 @atalk_sum_skb(ptr noundef nonnull %skb.addr.0.i163, i32 noundef 4, i32 noundef %sub.i117, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %conv.i118 = trunc i32 %call.i to i16
  %spec.select.i = select i1 %tobool.not.i, i16 -1, i16 %conv.i118
  %25 = ptrtoint ptr %deh_sum to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %deh_sum, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select.i, i16 %26)
  %cmp40.not = icmp eq i16 %spec.select.i, %26
  br i1 %cmp40.not, label %land.lhs.true.if.end43_crit_edge, label %land.lhs.true.drop_crit_edge

land.lhs.true.drop_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %if.end31.if.end43_crit_edge
  %deh_dnet = getelementptr inbounds %struct.ddpehdr, ptr %add.ptr.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %deh_dnet to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %deh_dnet, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool44.not = icmp eq i16 %28, 0
  %deh_dnode = getelementptr inbounds %struct.ddpehdr, ptr %add.ptr.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %deh_dnode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %deh_dnode, align 2
  br i1 %tobool44.not, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end43
  %atalk_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 77
  %31 = ptrtoint ptr %atalk_ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %atalk_ptr.i, align 4
  %tobool.not.i119 = icmp eq ptr %32, null
  br i1 %tobool.not.i119, label %if.then45.if.then54_crit_edge, label %lor.lhs.false.i

if.then45.if.then54_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54

lor.lhs.false.i:                                  ; preds = %if.then45
  %status.i = getelementptr inbounds %struct.atalk_iface, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status.i, align 4
  %and.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i120, label %lor.lhs.false.i.if.then54_crit_edge

lor.lhs.false.i.if.then54_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54

if.end.i120:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp.not.i = icmp eq i8 %30, -1
  br i1 %cmp.not.i, label %if.end.i120.if.end56_crit_edge, label %land.lhs.true.i

if.end.i120.if.end56_crit_edge:                   ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

land.lhs.true.i:                                  ; preds = %if.end.i120
  %s_node.i = getelementptr inbounds %struct.atalk_iface, ptr %32, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %s_node.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %s_node.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %30)
  %cmp2.not.i = icmp eq i8 %36, %30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp5.not.i = icmp eq i8 %30, 0
  %or.cond.i = or i1 %cmp5.not.i, %cmp2.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end56_crit_edge, label %land.lhs.true.i.if.then54_crit_edge

land.lhs.true.i.if.then54_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54

land.lhs.true.i.if.end56_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.else:                                          ; preds = %if.end43
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  %iface.047.i = load ptr, ptr @atalk_interfaces, align 4
  %tobool.not48.i = icmp eq ptr %iface.047.i, null
  br i1 %tobool.not48.i, label %if.else.if.end52.thread175_crit_edge, label %for.body.lr.ph.i

if.else.if.end52.thread175_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.thread175

for.body.lr.ph.i:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp12.i.not = icmp eq i8 %30, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %iface.049.i = phi ptr [ %iface.047.i, %for.body.lr.ph.i ], [ %iface.0.i130, %for.inc.i.for.body.i_crit_edge ]
  %37 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i8 %30, label %lor.lhs.false2.i [
    i8 -1, label %for.body.i.land.lhs.true.i126_crit_edge
    i8 0, label %for.body.i.land.lhs.true.i126_crit_edge190
  ]

for.body.i.land.lhs.true.i126_crit_edge190:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i126

for.body.i.land.lhs.true.i126_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i126

lor.lhs.false2.i:                                 ; preds = %for.body.i
  %s_node.i123 = getelementptr inbounds %struct.atalk_iface, ptr %iface.049.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %s_node.i123 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %s_node.i123, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %30)
  %cmp3.i125 = icmp eq i8 %39, %30
  br i1 %cmp3.i125, label %lor.lhs.false2.i.land.lhs.true.i126_crit_edge, label %lor.lhs.false2.i.for.inc.i_crit_edge

lor.lhs.false2.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false2.i.land.lhs.true.i126_crit_edge:    ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i126

land.lhs.true.i126:                               ; preds = %lor.lhs.false2.i.land.lhs.true.i126_crit_edge, %for.body.i.land.lhs.true.i126_crit_edge, %for.body.i.land.lhs.true.i126_crit_edge190
  %address5.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.049.i, i32 0, i32 1
  %40 = ptrtoint ptr %address5.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %address5.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %28)
  %cmp8.i = icmp eq i16 %41, %28
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i126.if.end.i129_crit_edge

land.lhs.true.i126.if.end.i129_crit_edge:         ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i129

land.lhs.true10.i:                                ; preds = %land.lhs.true.i126
  %status.i127 = getelementptr inbounds %struct.atalk_iface, ptr %iface.049.i, i32 0, i32 2
  %42 = ptrtoint ptr %status.i127 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status.i127, align 4
  %and.i128 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool11.not.i = icmp eq i32 %and.i128, 0
  br i1 %tobool11.not.i, label %land.lhs.true10.i.if.end52_crit_edge, label %land.lhs.true10.i.if.end.i129_crit_edge

land.lhs.true10.i.if.end.i129_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i129

land.lhs.true10.i.if.end52_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.end.i129:                                      ; preds = %land.lhs.true10.i.if.end.i129_crit_edge, %land.lhs.true.i126.if.end.i129_crit_edge
  br i1 %cmp12.i.not, label %land.lhs.true18.i, label %if.end.i129.for.inc.i_crit_edge

if.end.i129.for.inc.i_crit_edge:                  ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %if.end.i129
  %nr_firstnet.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.049.i, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %nr_firstnet.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %nr_firstnet.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %28)
  %cmp21.not.i = icmp ugt i16 %45, %28
  br i1 %cmp21.not.i, label %land.lhs.true18.i.for.inc.i_crit_edge, label %land.lhs.true23.i

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true23.i:                                ; preds = %land.lhs.true18.i
  %nr_lastnet.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.049.i, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %nr_lastnet.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nr_lastnet.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %28)
  %cmp27.not.i = icmp ult i16 %47, %28
  br i1 %cmp27.not.i, label %land.lhs.true23.i.for.inc.i_crit_edge, label %land.lhs.true23.i.if.end52_crit_edge

land.lhs.true23.i.if.end52_crit_edge:             ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true23.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true23.i.for.inc.i_crit_edge, %land.lhs.true18.i.for.inc.i_crit_edge, %if.end.i129.for.inc.i_crit_edge, %lor.lhs.false2.i.for.inc.i_crit_edge
  %next.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.049.i, i32 0, i32 4
  %48 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %iface.0.i130 = load ptr, ptr %next.i, align 4
  %tobool.not.i131 = icmp eq ptr %iface.0.i130, null
  br i1 %tobool.not.i131, label %for.inc.i.if.end52.thread175_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end52.thread175_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.thread175

if.end52.thread175:                               ; preds = %for.inc.i.if.end52.thread175_crit_edge, %if.else.if.end52.thread175_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  br label %if.then54

if.end52:                                         ; preds = %land.lhs.true23.i.if.end52_crit_edge, %land.lhs.true10.i.if.end52_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  br label %if.end56

if.then54:                                        ; preds = %if.end52.thread175, %land.lhs.true.i.if.then54_crit_edge, %lor.lhs.false.i.if.then54_crit_edge, %if.then45.if.then54_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ta.i) #11
  %49 = ptrtoint ptr %ta.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %ta.i, align 4, !annotation !146
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i163, i32 0, i32 15
  %50 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %cmp.not.i132 = icmp ult i16 %bf.load.i, 8192
  br i1 %cmp.not.i132, label %lor.lhs.false.i134, label %if.then54.if.then.i_crit_edge

if.then54.if.then.i_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i134:                               ; preds = %if.then54
  %51 = ptrtoint ptr %deh_dnet to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %deh_dnet, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.not.i133 = icmp eq i16 %52, 0
  br i1 %tobool.not.i133, label %lor.lhs.false.i134.if.then.i_crit_edge, label %if.end6.i

lor.lhs.false.i134.if.then.i_crit_edge:           ; preds = %lor.lhs.false.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i134.if.then.i_crit_edge, %if.then54.if.then.i_crit_edge
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %53 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %54)
  %cmp3.i135 = icmp eq i16 %54, 512
  br i1 %cmp3.i135, label %do.end.i, label %if.then.i.free_it.i_crit_edge

if.then.i.free_it.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_it.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #14
  br label %free_it.i

if.end6.i:                                        ; preds = %lor.lhs.false.i134
  %55 = ptrtoint ptr %ta.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %52, ptr %ta.i, align 4
  %deh_dnode.i = getelementptr inbounds %struct.ddpehdr, ptr %add.ptr.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %deh_dnode.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %deh_dnode.i, align 2
  %s_node.i137 = getelementptr inbounds %struct.atalk_addr, ptr %ta.i, i32 0, i32 1
  %58 = ptrtoint ptr %s_node.i137 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %s_node.i137, align 2
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  %r.040.i.i = load ptr, ptr @atalk_routes, align 4
  %tobool.not41.i.i = icmp eq ptr %r.040.i.i, null
  br i1 %tobool.not41.i.i, label %if.end6.i.if.else23.i.i_crit_edge, label %if.end6.i.for.body.i.i_crit_edge

if.end6.i.for.body.i.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i.i

if.end6.i.if.else23.i.i_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end6.i.for.body.i.i_crit_edge
  %r.043.i.i = phi ptr [ %r.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %r.040.i.i, %if.end6.i.for.body.i.i_crit_edge ]
  %net_route.042.i.i = phi ptr [ %net_route.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ null, %if.end6.i.for.body.i.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %target2.i.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %target2.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %target2.i.i, align 4
  %63 = ptrtoint ptr %ta.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %ta.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %64)
  %cmp.i.i = icmp eq i16 %62, %64
  br i1 %cmp.i.i, label %if.then6.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %and8.i.i = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.then6.i.i.for.inc.i.i_crit_edge, label %if.then10.i.i

if.then6.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then10.i.i:                                    ; preds = %if.then6.i.i
  %s_node.i.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i.i, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %s_node.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %s_node.i.i, align 2
  %67 = ptrtoint ptr %s_node.i137 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %s_node.i137, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %68)
  %cmp15.i.i = icmp eq i8 %66, %68
  br i1 %cmp15.i.i, label %if.then10.i.i.lor.lhs.false12.i_crit_edge, label %if.then10.i.i.for.inc.i.i_crit_edge

if.then10.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then10.i.i.lor.lhs.false12.i_crit_edge:        ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false12.i

for.inc.i.i:                                      ; preds = %if.then10.i.i.for.inc.i.i_crit_edge, %if.then6.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %net_route.1.i.i = phi ptr [ %net_route.042.i.i, %if.then10.i.i.for.inc.i.i_crit_edge ], [ %net_route.042.i.i, %if.end.i.i.for.inc.i.i_crit_edge ], [ %net_route.042.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %r.043.i.i, %if.then6.i.i.for.inc.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i.i, i32 0, i32 4
  %69 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %r.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %r.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %tobool21.not.i.i = icmp eq ptr %net_route.1.i.i, null
  br i1 %tobool21.not.i.i, label %for.end.i.i.if.else23.i.i_crit_edge, label %for.end.i.i.lor.lhs.false12.i_crit_edge

for.end.i.i.lor.lhs.false12.i_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false12.i

for.end.i.i.if.else23.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23.i.i

if.else23.i.i:                                    ; preds = %for.end.i.i.if.else23.i.i_crit_edge, %if.end6.i.if.else23.i.i_crit_edge
  %70 = load ptr, ptr @atrtr_default, align 4
  %tobool24.not.i.i = icmp eq ptr %70, null
  br i1 %tobool24.not.i.i, label %atrtr_find.exit.i, label %if.else23.i.i.lor.lhs.false12.i_crit_edge

if.else23.i.i.lor.lhs.false12.i_crit_edge:        ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false12.i

atrtr_find.exit.i:                                ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  br label %free_it.i

lor.lhs.false12.i:                                ; preds = %if.else23.i.i.lor.lhs.false12.i_crit_edge, %for.end.i.i.lor.lhs.false12.i_crit_edge, %if.then10.i.i.lor.lhs.false12.i_crit_edge
  %r.1.i.ph.i = phi ptr [ @atrtr_default, %if.else23.i.i.lor.lhs.false12.i_crit_edge ], [ %net_route.1.i.i, %for.end.i.i.lor.lhs.false12.i_crit_edge ], [ %r.043.i.i, %if.then10.i.i.lor.lhs.false12.i_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  %add77.i = add i16 %14, 1024
  %conv13.i = zext i16 %add77.i to i32
  %and.i138 = and i32 %conv13.i, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool14.not.i = icmp eq i32 %and.i138, 0
  br i1 %tobool14.not.i, label %lor.lhs.false12.i.free_it.i_crit_edge, label %if.end16.i

lor.lhs.false12.i.free_it.i_crit_edge:            ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_it.i

if.end16.i:                                       ; preds = %lor.lhs.false12.i
  %flags.i = getelementptr inbounds %struct.atalk_route, ptr %r.1.i.ph.i, i32 0, i32 3
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i, align 4
  %and17.i = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end25.i_crit_edge, label %if.then19.i

if.end16.i.if.end25.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %gateway.i = getelementptr inbounds %struct.atalk_route, ptr %r.1.i.ph.i, i32 0, i32 2
  %73 = ptrtoint ptr %gateway.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %gateway.i, align 4
  %75 = ptrtoint ptr %ta.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %ta.i, align 4
  %s_node23.i = getelementptr inbounds %struct.atalk_route, ptr %r.1.i.ph.i, i32 0, i32 2, i32 1
  %76 = ptrtoint ptr %s_node23.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %s_node23.i, align 2
  %78 = ptrtoint ptr %s_node.i137 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %s_node.i137, align 2
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end25.i_crit_edge
  %79 = ptrtoint ptr %r.1.i.ph.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %r.1.i.ph.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 19
  %81 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %hard_header_len.i, align 2
  %conv27.i = zext i16 %82 to i32
  %83 = load ptr, ptr @ddp_dl, align 4
  %header_length.i = getelementptr inbounds %struct.datalink_proto, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %header_length.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %header_length.i, align 4
  %conv28.i = zext i16 %85 to i32
  %and31.i = and i32 %conv13.i, 1023
  %add29.i = add nuw nsw i32 %and31.i, %conv27.i
  %add32.i = add nuw nsw i32 %add29.i, %conv28.i
  %86 = tail call i32 @llvm.umin.i32(i32 %add32.i, i32 %16) #11
  tail call void @skb_trim(ptr noundef %skb.addr.0.i163, i32 noundef %86) #11
  %87 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %add77.i, ptr %add.ptr.i.i, align 2
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i163, i32 0, i32 19
  %88 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i.i, align 4
  %90 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %89 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %91 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %sub.ptr.sub.i.i)
  %cmp37.i = icmp ult i32 %sub.ptr.sub.i.i, 22
  br i1 %cmp37.i, label %if.then39.i, label %if.else.i140

if.then39.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %call40.i = tail call ptr @skb_realloc_headroom(ptr noundef %skb.addr.0.i163, i32 noundef 32) #11
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i163, i32 noundef 0) #11
  br label %if.end42.i

if.else.i140:                                     ; preds = %if.end25.i
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i163, i32 0, i32 12
  %92 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.else.i140.if.end42.i_crit_edge, label %skb_cloned.exit.i.i

if.else.i140.if.end42.i_crit_edge:                ; preds = %if.else.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

skb_cloned.exit.i.i:                              ; preds = %if.else.i140
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i163, i32 0, i32 17
  %93 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %94, i32 0, i32 10
  %call.i.i.i.i.i141 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #11
  %95 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %96, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_cloned.exit.i.i.if.end42.i_crit_edge, label %if.then6.i75.i

skb_cloned.exit.i.i.if.end42.i_crit_edge:         ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then6.i75.i:                                   ; preds = %skb_cloned.exit.i.i
  %call7.i.i = tail call ptr @skb_copy(ptr noundef %skb.addr.0.i163, i32 noundef 2592) #11
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %if.end42.thread.i, label %if.end42.thread84.i, !prof !143

if.end42.thread84.i:                              ; preds = %if.then6.i75.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb.addr.0.i163) #11
  br label %if.end46.i

if.end42.thread.i:                                ; preds = %if.then6.i75.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i163, i32 noundef 0) #11
  br label %atalk_route_packet.exit

if.end42.i:                                       ; preds = %skb_cloned.exit.i.i.if.end42.i_crit_edge, %if.else.i140.if.end42.i_crit_edge, %if.then39.i
  %skb.addr.0.i142 = phi ptr [ %call40.i, %if.then39.i ], [ %skb.addr.0.i163, %skb_cloned.exit.i.i.if.end42.i_crit_edge ], [ %skb.addr.0.i163, %if.else.i140.if.end42.i_crit_edge ]
  %cmp43.i = icmp eq ptr %skb.addr.0.i142, null
  br i1 %cmp43.i, label %if.end42.i.atalk_route_packet.exit_crit_edge, label %if.end42.i.if.end46.i_crit_edge

if.end42.i.if.end46.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.end42.i.atalk_route_packet.exit_crit_edge:     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_route_packet.exit

if.end46.i:                                       ; preds = %if.end42.i.if.end46.i_crit_edge, %if.end42.thread84.i
  %skb.addr.087.i = phi ptr [ %call7.i.i, %if.end42.thread84.i ], [ %skb.addr.0.i142, %if.end42.i.if.end46.i_crit_edge ]
  %97 = ptrtoint ptr %r.1.i.ph.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %r.1.i.ph.i, align 4
  %call48.i = call i32 @aarp_send_ddp(ptr noundef %98, ptr noundef nonnull %skb.addr.087.i, ptr noundef nonnull %ta.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call48.i)
  %cmp49.i = icmp eq i32 %call48.i, 1
  %..i = zext i1 %cmp49.i to i32
  br label %atalk_route_packet.exit

free_it.i:                                        ; preds = %lor.lhs.false12.i.free_it.i_crit_edge, %atrtr_find.exit.i, %do.end.i, %if.then.i.free_it.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i163, i32 noundef 0) #11
  br label %atalk_route_packet.exit

atalk_route_packet.exit:                          ; preds = %free_it.i, %if.end46.i, %if.end42.i.atalk_route_packet.exit_crit_edge, %if.end42.thread.i
  %retval.0.i143 = phi i32 [ %..i, %if.end46.i ], [ 1, %if.end42.i.atalk_route_packet.exit_crit_edge ], [ 1, %free_it.i ], [ 1, %if.end42.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ta.i) #11
  br label %cleanup

if.end56:                                         ; preds = %if.end52, %land.lhs.true.i.if.end56_crit_edge, %if.end.i120.if.end56_crit_edge
  %atif.0170 = phi ptr [ %iface.049.i, %if.end52 ], [ %32, %land.lhs.true.i.if.end56_crit_edge ], [ %32, %if.end.i120.if.end56_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i163, i32 0, i32 19
  %99 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %100, i32 12
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %102)
  %cmp.i144.not = icmp eq i8 %102, 22
  br i1 %cmp.i144.not, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end56
  %call.i145 = tail call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.47) #11
  %tobool.not.i146 = icmp eq ptr %call.i145, null
  br i1 %tobool.not.i146, label %if.then.i147, label %if.end.i156

if.then.i147:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i163, i32 noundef 0) #11
  br label %cleanup

if.end.i156:                                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i163, i32 0, i32 15, i32 0, i32 18
  %103 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 2048, ptr %protocol.i, align 8
  %call1.i = tail call ptr @skb_pull(ptr noundef %skb.addr.0.i163, i32 noundef 13) #11
  %104 = getelementptr inbounds %struct.anon.1, ptr %skb.addr.0.i163, i32 0, i32 2
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i145, ptr %104, align 8
  %106 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i, align 4
  %108 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i150 = ptrtoint ptr %107 to i32
  %sub.ptr.rhs.cast.i.i151 = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i.i152 = sub i32 %sub.ptr.lhs.cast.i.i150, %sub.ptr.rhs.cast.i.i151
  %conv.i.i153 = trunc i32 %sub.ptr.sub.i.i152 to i16
  %110 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i.i153, ptr %transport_header.i.i, align 2
  %add.ptr.i.i155 = getelementptr i8, ptr %call.i145, i32 2304
  %111 = ptrtoint ptr %add.ptr.i.i155 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr.i.i155, align 4
  %inc.i = add i32 %112, 1
  store i32 %inc.i, ptr %add.ptr.i.i155, align 4
  %113 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len.i.i, align 4
  %add.i = add i32 %114, 13
  %rx_bytes.i = getelementptr i8, ptr %call.i145, i32 2312
  %115 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_bytes.i, align 4
  %add3.i = add i32 %add.i, %116
  store i32 %add3.i, ptr %rx_bytes.i, align 4
  %call4.i = tail call i32 @netif_rx(ptr noundef %skb.addr.0.i163) #11
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %117 = ptrtoint ptr %deh_dnet to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %deh_dnet, align 2
  %sat_addr = getelementptr inbounds %struct.sockaddr_at, ptr %tosat, i32 0, i32 2
  %119 = ptrtoint ptr %sat_addr to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %sat_addr, align 2
  %deh_dnode63 = getelementptr inbounds %struct.ddpehdr, ptr %add.ptr.i.i, i32 0, i32 4
  %120 = ptrtoint ptr %deh_dnode63 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %deh_dnode63, align 2
  %s_node = getelementptr inbounds %struct.sockaddr_at, ptr %tosat, i32 0, i32 2, i32 1
  %122 = ptrtoint ptr %s_node to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %s_node, align 2
  %deh_dport = getelementptr inbounds %struct.ddpehdr, ptr %add.ptr.i.i, i32 0, i32 6
  %123 = ptrtoint ptr %deh_dport to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %deh_dport, align 2
  %sat_port = getelementptr inbounds %struct.sockaddr_at, ptr %tosat, i32 0, i32 1
  %125 = ptrtoint ptr %sat_port to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %sat_port, align 2
  %call65 = call fastcc ptr @atalk_search_socket(ptr noundef nonnull %tosat, ptr noundef nonnull %atif.0170)
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end61.drop_crit_edge, label %if.end68

if.end61.drop_crit_edge:                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end68:                                         ; preds = %if.end61
  %call69 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %call65, ptr noundef nonnull %skb.addr.0.i163) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end68.drop_crit_edge, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end68.drop_crit_edge:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

drop:                                             ; preds = %if.end68.drop_crit_edge, %if.end61.drop_crit_edge, %land.lhs.true.drop_crit_edge, %if.then26, %do.body, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  %skb.addr.0 = phi ptr [ %skb.addr.0.i163, %if.then26 ], [ %skb.addr.0.i163, %land.lhs.true.drop_crit_edge ], [ %skb.addr.0.i163, %if.end68.drop_crit_edge ], [ %skb.addr.0.i163, %if.end61.drop_crit_edge ], [ %skb.addr.0.i163, %pskb_may_pull.exit.drop_crit_edge ], [ %skb, %entry.drop_crit_edge ], [ %skb.addr.0.i163, %do.body ], [ %skb.addr.0.i163, %if.end.i.drop_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end68.cleanup_crit_edge, %if.end.i156, %if.then.i147, %atalk_route_packet.exit, %skb_share_check.exit.cleanup_crit_edge, %skb_share_check.exit.thread
  %retval.0 = phi i32 [ %retval.0.i143, %atalk_route_packet.exit ], [ 0, %if.end68.cleanup_crit_edge ], [ 1, %skb_share_check.exit.cleanup_crit_edge ], [ 1, %drop ], [ 1, %skb_share_check.exit.thread ], [ %call4.i, %if.end.i156 ], [ 1, %if.then.i147 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tosat) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aarp_proto_init() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atalk_proc_init() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atalk_register_sysctl() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  %2 = and i16 %1, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %2)
  %switch = icmp eq i16 %2, 2
  br i1 %switch, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp10 = icmp eq i16 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %kern)
  %tobool13.not = icmp eq i32 %kern, 0
  %or.cond = and i1 %tobool13.not, %cmp10
  br i1 %or.cond, label %land.lhs.true14, label %if.end7.if.end17_crit_edge

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true14:                                  ; preds = %if.end7
  %call15 = tail call zeroext i1 @capable(i32 noundef 13) #11
  br i1 %call15, label %land.lhs.true14.if.end17_crit_edge, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true14.if.end17_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true14.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %call18 = tail call ptr @sk_alloc(ptr noundef nonnull @init_net, i32 noundef 5, i32 noundef 3264, ptr noundef nonnull @ddp_proto, i32 noundef %kern) #11
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @atalk_dgram_ops, ptr %ops, align 4
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call18) #11
  %4 = getelementptr inbounds %struct.sock_common, ptr %call18, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %or.i.i = or i32 %6, 256
  store i32 %or.i.i, ptr %4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end17.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -97, %entry.cleanup_crit_edge ], [ 0, %if.end21 ], [ -12, %if.end17.cleanup_crit_edge ], [ -1, %land.lhs.true14.cleanup_crit_edge ], [ -94, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_release(ptr nocapture noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !147
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !143

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #11
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #11
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %or.i.i.i = or i32 %6, 1
  store i32 %or.i.i.i, ptr %4, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %7 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %sk_socket.i.i, align 8
  %8 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %8, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #11
  %10 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sk1, align 16
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @atalk_sockets_lock) #11
  %pprev.i.i.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %11 = ptrtoint ptr %pprev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i.i.not.i.i.i, label %sock_hold.exit.atalk_remove_socket.exit.i_crit_edge, label %if.then.i.i.i.i

sock_hold.exit.atalk_remove_socket.exit.i_crit_edge: ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_remove_socket.exit.i

if.then.i.i.i.i:                                  ; preds = %sock_hold.exit
  %13 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %12, align 4
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.if.then.i.i.i_crit_edge, label %do.body13.i.i.i.i.i.i

if.then.i.i.i.i.if.then.i.i.i_crit_edge:          ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

do.body13.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %12, ptr %pprev14.i.i.i.i.i.i, align 4
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.body13.i.i.i.i.i.i, %if.then.i.i.i.i.if.then.i.i.i_crit_edge
  %18 = ptrtoint ptr %pprev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pprev.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i10 = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  %19 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i.i = icmp eq i32 %20, 1
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !143

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 729, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i.i.i, label %if.then3.i.i.i.i.i.i, label %if.end.i.i.i.atalk_remove_socket.exit.i_crit_edge, !prof !143

if.end.i.i.i.atalk_remove_socket.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_remove_socket.exit.i

if.then3.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  br label %atalk_remove_socket.exit.i

atalk_remove_socket.exit.i:                       ; preds = %if.then3.i.i.i.i.i.i, %if.end.i.i.i.atalk_remove_socket.exit.i_crit_edge, %sock_hold.exit.atalk_remove_socket.exit.i_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @atalk_sockets_lock) #11
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue.i) #11
  %sk_wmem_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i.i9.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %sk_wmem_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %sk_wmem_alloc.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 1
  br i1 %tobool.not.i.i, label %sk_has_allocations.exit.i, label %atalk_remove_socket.exit.i.do.body.i_crit_edge

atalk_remove_socket.exit.i.do.body.i_crit_edge:   ; preds = %atalk_remove_socket.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

sk_has_allocations.exit.i:                        ; preds = %atalk_remove_socket.exit.i
  %sk_backlog.i.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i.i, i32 noundef 4) #11
  %24 = ptrtoint ptr %sk_backlog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %sk_backlog.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool2.i.not.i, label %if.else.i, label %sk_has_allocations.exit.i.do.body.i_crit_edge

sk_has_allocations.exit.i.do.body.i_crit_edge:    ; preds = %sk_has_allocations.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.body.i:                                        ; preds = %sk_has_allocations.exit.i.do.body.i_crit_edge, %atalk_remove_socket.exit.i.do.body.i_crit_edge
  %sk_timer.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 32
  tail call void @init_timer_key(ptr noundef %sk_timer.i, ptr noundef nonnull @atalk_destroy_timer, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @atalk_destroy_socket.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %26, 1000
  %expires.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 32, i32 1
  %27 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %sk_timer.i) #11
  br label %atalk_destroy_socket.exit

if.else.i:                                        ; preds = %sk_has_allocations.exit.i
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.atalk_destroy_socket.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.atalk_destroy_socket.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_destroy_socket.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %atalk_destroy_socket.exit

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  tail call void @sk_free(ptr noundef nonnull %1) #11
  br label %atalk_destroy_socket.exit

atalk_destroy_socket.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.atalk_destroy_socket.exit_crit_edge, %do.body.i
  tail call void @release_sock(ptr noundef nonnull %1) #11
  %call.i.i.i.i.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %atalk_destroy_socket.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i13 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i13, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %if.end

if.then.i:                                        ; preds = %atalk_destroy_socket.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  tail call void @sk_free(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef %uaddr, i32 noundef %addr_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i = icmp ne i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp.not = icmp eq i32 %addr_len, 16
  %or.cond = and i1 %cmp.not, %tobool.i
  br i1 %or.cond, label %if.end, label %entry.cleanup51_crit_edge

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %7)
  %cmp3.not = icmp eq i16 %7, 5
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup51_crit_edge

if.end.cleanup51_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end6:                                          ; preds = %if.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %sat_addr = getelementptr inbounds %struct.sockaddr_at, ptr %uaddr, i32 0, i32 2
  %8 = ptrtoint ptr %sat_addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sat_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp8 = icmp eq i16 %9, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  %iface.029.i = load ptr, ptr @atalk_interfaces, align 4
  %tobool.not30.i = icmp eq ptr %iface.029.i, null
  br i1 %tobool.not30.i, label %atalk_find_primary.exit.thread, label %if.then10.for.body.i_crit_edge

if.then10.for.body.i_crit_edge:                   ; preds = %if.then10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then10.for.body.i_crit_edge
  %iface.032.i = phi ptr [ %iface.0.i, %for.inc.i.for.body.i_crit_edge ], [ %iface.029.i, %if.then10.for.body.i_crit_edge ]
  %fiface.031.i = phi ptr [ %fiface.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.then10.for.body.i_crit_edge ]
  %tobool2.not.i = icmp eq ptr %fiface.031.i, null
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %iface.032.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iface.032.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool3.not.i, ptr %iface.032.i, ptr null
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %for.body.i.if.end.i_crit_edge
  %fiface.1.i = phi ptr [ %fiface.031.i, %for.body.i.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %14 = ptrtoint ptr %iface.032.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iface.032.i, align 4
  %flags5.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags5.i, align 8
  %and6.i = and i32 %17, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.atalk_find_primary.exit_crit_edge, label %for.inc.i

if.end.i.atalk_find_primary.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_find_primary.exit

for.inc.i:                                        ; preds = %if.end.i
  %next.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.032.i, i32 0, i32 4
  %18 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %iface.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %iface.0.i, null
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %tobool10.not.i = icmp eq ptr %fiface.1.i, null
  %iface.029.i.fiface.1.i.lcssa113 = select i1 %tobool10.not.i, ptr %iface.029.i, ptr %fiface.1.i
  br label %atalk_find_primary.exit

atalk_find_primary.exit.thread:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  br label %out

atalk_find_primary.exit:                          ; preds = %for.end.i, %if.end.i.atalk_find_primary.exit_crit_edge
  %iface.029.i.sink = phi ptr [ %iface.029.i.fiface.1.i.lcssa113, %for.end.i ], [ %iface.032.i, %if.end.i.atalk_find_primary.exit_crit_edge ]
  %address15.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.029.i.sink, i32 0, i32 1
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  %tobool.not = icmp eq ptr %address15.i, null
  br i1 %tobool.not, label %atalk_find_primary.exit.out_crit_edge, label %cleanup

atalk_find_primary.exit.out_crit_edge:            ; preds = %atalk_find_primary.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

cleanup:                                          ; preds = %atalk_find_primary.exit
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %address15.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %address15.i, align 2
  %21 = ptrtoint ptr %sat_addr to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %sat_addr, align 2
  %src_net = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %src_net to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %20, ptr %src_net, align 2
  %s_node = getelementptr inbounds %struct.atalk_iface, ptr %iface.029.i.sink, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_node, align 2
  %s_node18 = getelementptr inbounds %struct.sockaddr_at, ptr %uaddr, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %s_node18 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %s_node18, align 2
  br label %if.end34

if.else:                                          ; preds = %if.end6
  %s_node22 = getelementptr inbounds %struct.sockaddr_at, ptr %uaddr, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %s_node22 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %s_node22, align 2
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  %iface.047.i = load ptr, ptr @atalk_interfaces, align 4
  %tobool.not48.i = icmp eq ptr %iface.047.i, null
  br i1 %tobool.not48.i, label %if.else.atalk_find_interface.exit.thread_crit_edge, label %for.body.lr.ph.i

if.else.atalk_find_interface.exit.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_find_interface.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp12.i.not = icmp eq i8 %27, 0
  br label %for.body.i80

for.body.i80:                                     ; preds = %for.inc.i87.for.body.i80_crit_edge, %for.body.lr.ph.i
  %iface.049.i = phi ptr [ %iface.047.i, %for.body.lr.ph.i ], [ %iface.0.i85, %for.inc.i87.for.body.i80_crit_edge ]
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %27, label %lor.lhs.false2.i [
    i8 -1, label %for.body.i80.land.lhs.true.i81_crit_edge
    i8 0, label %for.body.i80.land.lhs.true.i81_crit_edge120
  ]

for.body.i80.land.lhs.true.i81_crit_edge120:      ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i81

for.body.i80.land.lhs.true.i81_crit_edge:         ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i81

lor.lhs.false2.i:                                 ; preds = %for.body.i80
  %s_node.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.049.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %s_node.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %s_node.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %27)
  %cmp3.i = icmp eq i8 %30, %27
  br i1 %cmp3.i, label %lor.lhs.false2.i.land.lhs.true.i81_crit_edge, label %lor.lhs.false2.i.for.inc.i87_crit_edge

lor.lhs.false2.i.for.inc.i87_crit_edge:           ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i87

lor.lhs.false2.i.land.lhs.true.i81_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i81

land.lhs.true.i81:                                ; preds = %lor.lhs.false2.i.land.lhs.true.i81_crit_edge, %for.body.i80.land.lhs.true.i81_crit_edge, %for.body.i80.land.lhs.true.i81_crit_edge120
  %address5.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.049.i, i32 0, i32 1
  %31 = ptrtoint ptr %address5.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %address5.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %9)
  %cmp8.i = icmp eq i16 %32, %9
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i81.if.end.i83_crit_edge

land.lhs.true.i81.if.end.i83_crit_edge:           ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i83

land.lhs.true10.i:                                ; preds = %land.lhs.true.i81
  %status.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.049.i, i32 0, i32 2
  %33 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status.i, align 4
  %and.i82 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool11.not.i = icmp eq i32 %and.i82, 0
  br i1 %tobool11.not.i, label %land.lhs.true10.i.if.end27_crit_edge, label %land.lhs.true10.i.if.end.i83_crit_edge

land.lhs.true10.i.if.end.i83_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i83

land.lhs.true10.i.if.end27_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end.i83:                                       ; preds = %land.lhs.true10.i.if.end.i83_crit_edge, %land.lhs.true.i81.if.end.i83_crit_edge
  br i1 %cmp12.i.not, label %land.lhs.true18.i, label %if.end.i83.for.inc.i87_crit_edge

if.end.i83.for.inc.i87_crit_edge:                 ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i87

land.lhs.true18.i:                                ; preds = %if.end.i83
  %nr_firstnet.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.049.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %nr_firstnet.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %nr_firstnet.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %9)
  %cmp21.not.i = icmp ugt i16 %36, %9
  br i1 %cmp21.not.i, label %land.lhs.true18.i.for.inc.i87_crit_edge, label %land.lhs.true23.i

land.lhs.true18.i.for.inc.i87_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i87

land.lhs.true23.i:                                ; preds = %land.lhs.true18.i
  %nr_lastnet.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.049.i, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %nr_lastnet.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %nr_lastnet.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %9)
  %cmp27.not.i = icmp ult i16 %38, %9
  br i1 %cmp27.not.i, label %land.lhs.true23.i.for.inc.i87_crit_edge, label %land.lhs.true23.i.if.end27_crit_edge

land.lhs.true23.i.if.end27_crit_edge:             ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true23.i.for.inc.i87_crit_edge:          ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i87

for.inc.i87:                                      ; preds = %land.lhs.true23.i.for.inc.i87_crit_edge, %land.lhs.true18.i.for.inc.i87_crit_edge, %if.end.i83.for.inc.i87_crit_edge, %lor.lhs.false2.i.for.inc.i87_crit_edge
  %next.i84 = getelementptr inbounds %struct.atalk_iface, ptr %iface.049.i, i32 0, i32 4
  %39 = ptrtoint ptr %next.i84 to i32
  call void @__asan_load4_noabort(i32 %39)
  %iface.0.i85 = load ptr, ptr %next.i84, align 4
  %tobool.not.i86 = icmp eq ptr %iface.0.i85, null
  br i1 %tobool.not.i86, label %for.inc.i87.atalk_find_interface.exit.thread_crit_edge, label %for.inc.i87.for.body.i80_crit_edge

for.inc.i87.for.body.i80_crit_edge:               ; preds = %for.inc.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i80

for.inc.i87.atalk_find_interface.exit.thread_crit_edge: ; preds = %for.inc.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_find_interface.exit.thread

atalk_find_interface.exit.thread:                 ; preds = %for.inc.i87.atalk_find_interface.exit.thread_crit_edge, %if.else.atalk_find_interface.exit.thread_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  br label %out

if.end27:                                         ; preds = %land.lhs.true23.i.if.end27_crit_edge, %land.lhs.true10.i.if.end27_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  %40 = ptrtoint ptr %sat_addr to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sat_addr, align 2
  %src_net30 = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %src_net30 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %src_net30, align 2
  %43 = ptrtoint ptr %s_node22 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %s_node22, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.end27, %cleanup
  %.sink = phi i8 [ %24, %cleanup ], [ %44, %if.end27 ]
  %src_node = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %src_node to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink, ptr %src_node, align 1
  %sat_port = getelementptr inbounds %struct.sockaddr_at, ptr %uaddr, i32 0, i32 1
  %46 = ptrtoint ptr %sat_port to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sat_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp36 = icmp eq i8 %47, 0
  br i1 %cmp36, label %if.then38, label %if.else44

if.then38:                                        ; preds = %if.end34
  %call39 = tail call fastcc i32 @atalk_pick_and_bind_port(ptr noundef %1, ptr noundef %uaddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then38.out_crit_edge, label %if.then38.if.end50_crit_edge

if.then38.if.end50_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then38.out_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else44:                                        ; preds = %if.end34
  %src_port = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %src_port to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %src_port, align 1
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @atalk_sockets_lock) #11
  %49 = load ptr, ptr @atalk_sockets, align 4
  %tobool.not.i89 = icmp eq ptr %49, null
  %add.ptr.i = getelementptr i8, ptr %49, i32 -84
  %tobool2.not4044.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not40.i = or i1 %tobool.not.i89, %tobool2.not4044.i
  br i1 %tobool2.not40.i, label %if.else44.for.end.i98_crit_edge, label %for.body.lr.ph.i91

if.else44.for.end.i98_crit_edge:                  ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i98

for.body.lr.ph.i91:                               ; preds = %if.else44
  %50 = ptrtoint ptr %sat_addr to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sat_addr, align 2
  %s_node.i90 = getelementptr inbounds %struct.sockaddr_at, ptr %uaddr, i32 0, i32 2, i32 1
  br label %for.body.i92

for.body.i92:                                     ; preds = %for.inc.i97.for.body.i92_crit_edge, %for.body.lr.ph.i91
  %s.041.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i91 ], [ %add.ptr21.i, %for.inc.i97.for.body.i92_crit_edge ]
  %src_net.i = getelementptr inbounds %struct.atalk_sock, ptr %s.041.i, i32 0, i32 2
  %52 = ptrtoint ptr %src_net.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %src_net.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %51)
  %cmp.i = icmp eq i16 %53, %51
  br i1 %cmp.i, label %land.lhs.true.i94, label %for.body.i92.for.inc.i97_crit_edge

for.body.i92.for.inc.i97_crit_edge:               ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i97

land.lhs.true.i94:                                ; preds = %for.body.i92
  %src_node.i = getelementptr inbounds %struct.atalk_sock, ptr %s.041.i, i32 0, i32 4
  %54 = ptrtoint ptr %src_node.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %src_node.i, align 1
  %56 = ptrtoint ptr %s_node.i90 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %s_node.i90, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp8.i93 = icmp eq i8 %55, %57
  br i1 %cmp8.i93, label %land.lhs.true10.i95, label %land.lhs.true.i94.for.inc.i97_crit_edge

land.lhs.true.i94.for.inc.i97_crit_edge:          ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i97

land.lhs.true10.i95:                              ; preds = %land.lhs.true.i94
  %src_port.i = getelementptr inbounds %struct.atalk_sock, ptr %s.041.i, i32 0, i32 6
  %58 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %src_port.i, align 1
  %60 = ptrtoint ptr %sat_port to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %sat_port, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %61)
  %cmp13.i = icmp eq i8 %59, %61
  br i1 %cmp13.i, label %atalk_find_or_insert_socket.exit, label %land.lhs.true10.i95.for.inc.i97_crit_edge

land.lhs.true10.i95.for.inc.i97_crit_edge:        ; preds = %land.lhs.true10.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i97

for.inc.i97:                                      ; preds = %land.lhs.true10.i95.for.inc.i97_crit_edge, %land.lhs.true.i94.for.inc.i97_crit_edge, %for.body.i92.for.inc.i97_crit_edge
  %62 = getelementptr inbounds %struct.sock_common, ptr %s.041.i, i32 0, i32 15
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %tobool17.not.i = icmp eq ptr %64, null
  %add.ptr21.i = getelementptr i8, ptr %64, i32 -84
  %tobool2.not46.i = icmp eq ptr %add.ptr21.i, null
  %tobool2.not.i96 = or i1 %tobool17.not.i, %tobool2.not46.i
  br i1 %tobool2.not.i96, label %for.inc.i97.for.end.i98_crit_edge, label %for.inc.i97.for.body.i92_crit_edge

for.inc.i97.for.body.i92_crit_edge:               ; preds = %for.inc.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i92

for.inc.i97.for.end.i98_crit_edge:                ; preds = %for.inc.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i98

for.end.i98:                                      ; preds = %for.inc.i97.for.end.i98_crit_edge, %if.else44.for.end.i98_crit_edge
  %skc_refcnt.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i.i, i32 1, i32 3, i32 1) #11
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i.i, ptr %skc_refcnt.i.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i.i) #11, !srcloc !147
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %for.end.i98.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !143

for.end.i98.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %for.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %for.end.i98
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %66 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %66, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.sock_hold.exit.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.sock_hold.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit.i.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %for.end.i98.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %for.end.i98.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #11
  br label %sock_hold.exit.i.i.i

sock_hold.exit.i.i.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.sock_hold.exit.i.i.i_crit_edge
  %67 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %68 = load ptr, ptr @atalk_sockets, align 4
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %68, ptr %67, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i.i.i.i, label %sock_hold.exit.i.i.i.atalk_find_or_insert_socket.exit.thread_crit_edge, label %do.body12.i.i.i.i.i

sock_hold.exit.i.i.i.atalk_find_or_insert_socket.exit.thread_crit_edge: ; preds = %sock_hold.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_find_or_insert_socket.exit.thread

do.body12.i.i.i.i.i:                              ; preds = %sock_hold.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %68, i32 0, i32 1
  %70 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %67, ptr %pprev.i.i.i.i.i, align 4
  br label %atalk_find_or_insert_socket.exit.thread

atalk_find_or_insert_socket.exit.thread:          ; preds = %do.body12.i.i.i.i.i, %sock_hold.exit.i.i.i.atalk_find_or_insert_socket.exit.thread_crit_edge
  store volatile ptr %67, ptr @atalk_sockets, align 4
  %pprev34.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %71 = ptrtoint ptr %pprev34.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr @atalk_sockets, ptr %pprev34.i.i.i.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @atalk_sockets_lock) #11
  br label %if.end50

atalk_find_or_insert_socket.exit:                 ; preds = %land.lhs.true10.i95
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @atalk_sockets_lock) #11
  br label %out

if.end50:                                         ; preds = %atalk_find_or_insert_socket.exit.thread, %if.then38.if.end50_crit_edge
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %2, align 4
  %and.i.i = and i32 %73, -257
  store i32 %and.i.i, ptr %2, align 4
  br label %out

out:                                              ; preds = %if.end50, %atalk_find_or_insert_socket.exit, %if.then38.out_crit_edge, %atalk_find_interface.exit.thread, %atalk_find_primary.exit.out_crit_edge, %atalk_find_primary.exit.thread
  %err.0 = phi i32 [ %call39, %if.then38.out_crit_edge ], [ 0, %if.end50 ], [ -98, %atalk_find_or_insert_socket.exit ], [ -99, %atalk_find_interface.exit.thread ], [ -99, %atalk_find_primary.exit.out_crit_edge ], [ -99, %atalk_find_primary.exit.thread ]
  tail call void @release_sock(ptr noundef %1) #11
  br label %cleanup51

cleanup51:                                        ; preds = %out, %if.end.cleanup51_crit_edge, %entry.cleanup51_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %entry.cleanup51_crit_edge ], [ -97, %if.end.cleanup51_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_connect(ptr nocapture noundef %sock, ptr nocapture noundef readonly %uaddr, i32 noundef %addr_len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 7, ptr %skc_state, align 2
  %3 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp.not = icmp eq i32 %addr_len, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %5)
  %cmp2.not = icmp eq i16 %5, 5
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sat_addr = getelementptr inbounds %struct.sockaddr_at, ptr %uaddr, i32 0, i32 2
  %s_node = getelementptr inbounds %struct.sockaddr_at, ptr %uaddr, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_node, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp7 = icmp eq i8 %7, -1
  br i1 %cmp7, label %land.lhs.true, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end5
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %do.end, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %12 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm) #14
  br label %if.end13

if.end13:                                         ; preds = %do.end, %land.lhs.true.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %16 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i51.not = icmp eq i32 %19, 0
  br i1 %tobool.i51.not, label %if.end13.if.end21_crit_edge, label %if.then15

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then15:                                        ; preds = %if.end13
  %call16 = tail call fastcc i32 @atalk_autobind(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then15.out_crit_edge, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %if.end13.if.end21_crit_edge
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  %r.040.i.i = load ptr, ptr @atalk_routes, align 4
  %tobool.not41.i.i = icmp eq ptr %r.040.i.i, null
  br i1 %tobool.not41.i.i, label %if.end21.if.else23.i.i_crit_edge, label %if.end21.for.body.i.i_crit_edge

if.end21.for.body.i.i_crit_edge:                  ; preds = %if.end21
  br label %for.body.i.i

if.end21.if.else23.i.i_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end21.for.body.i.i_crit_edge
  %r.043.i.i = phi ptr [ %r.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %r.040.i.i, %if.end21.for.body.i.i_crit_edge ]
  %net_route.042.i.i = phi ptr [ %net_route.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ null, %if.end21.for.body.i.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %target2.i.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %target2.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %target2.i.i, align 4
  %24 = ptrtoint ptr %sat_addr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sat_addr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp.i.i = icmp eq i16 %23, %25
  br i1 %cmp.i.i, label %if.then6.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %and8.i.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.then6.i.i.for.inc.i.i_crit_edge, label %if.then10.i.i

if.then6.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then10.i.i:                                    ; preds = %if.then6.i.i
  %s_node.i.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %s_node.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %s_node.i.i, align 2
  %28 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %s_node, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp15.i.i = icmp eq i8 %27, %29
  br i1 %cmp15.i.i, label %if.then10.i.i.atrtr_get_dev.exit_crit_edge, label %if.then10.i.i.for.inc.i.i_crit_edge

if.then10.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then10.i.i.atrtr_get_dev.exit_crit_edge:       ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atrtr_get_dev.exit

for.inc.i.i:                                      ; preds = %if.then10.i.i.for.inc.i.i_crit_edge, %if.then6.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %net_route.1.i.i = phi ptr [ %net_route.042.i.i, %if.then10.i.i.for.inc.i.i_crit_edge ], [ %net_route.042.i.i, %if.end.i.i.for.inc.i.i_crit_edge ], [ %net_route.042.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %r.043.i.i, %if.then6.i.i.for.inc.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %r.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %r.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %tobool21.not.i.i = icmp eq ptr %net_route.1.i.i, null
  br i1 %tobool21.not.i.i, label %for.end.i.i.if.else23.i.i_crit_edge, label %for.end.i.i.atrtr_get_dev.exit_crit_edge

for.end.i.i.atrtr_get_dev.exit_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atrtr_get_dev.exit

for.end.i.i.if.else23.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23.i.i

if.else23.i.i:                                    ; preds = %for.end.i.i.if.else23.i.i_crit_edge, %if.end21.if.else23.i.i_crit_edge
  %31 = load ptr, ptr @atrtr_default, align 4
  %tobool24.not.i.i = icmp eq ptr %31, null
  br i1 %tobool24.not.i.i, label %atrtr_get_dev.exit.thread, label %if.else23.i.i.atrtr_get_dev.exit_crit_edge

if.else23.i.i.atrtr_get_dev.exit_crit_edge:       ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atrtr_get_dev.exit

atrtr_get_dev.exit.thread:                        ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  br label %out

atrtr_get_dev.exit:                               ; preds = %if.else23.i.i.atrtr_get_dev.exit_crit_edge, %for.end.i.i.atrtr_get_dev.exit_crit_edge, %if.then10.i.i.atrtr_get_dev.exit_crit_edge
  %r.1.i.ph.i = phi ptr [ @atrtr_default, %if.else23.i.i.atrtr_get_dev.exit_crit_edge ], [ %net_route.1.i.i, %for.end.i.i.atrtr_get_dev.exit_crit_edge ], [ %r.043.i.i, %if.then10.i.i.atrtr_get_dev.exit_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  %32 = ptrtoint ptr %r.1.i.ph.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %r.1.i.ph.i, align 4
  %tobool.not = icmp eq ptr %33, null
  br i1 %tobool.not, label %atrtr_get_dev.exit.out_crit_edge, label %if.end25

atrtr_get_dev.exit.out_crit_edge:                 ; preds = %atrtr_get_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end25:                                         ; preds = %atrtr_get_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sat_port = getelementptr inbounds %struct.sockaddr_at, ptr %uaddr, i32 0, i32 1
  %34 = ptrtoint ptr %sat_port to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sat_port, align 2
  %dest_port = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %dest_port to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %dest_port, align 2
  %37 = ptrtoint ptr %sat_addr to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sat_addr, align 2
  %dest_net = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %dest_net to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %dest_net, align 8
  %40 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %s_node, align 2
  %dest_node = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %dest_node to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %dest_node, align 4
  %43 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %sock, align 128
  %44 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %44)
  store volatile i8 1, ptr %skc_state, align 2
  br label %out

out:                                              ; preds = %if.end25, %atrtr_get_dev.exit.out_crit_edge, %atrtr_get_dev.exit.thread, %if.then15.out_crit_edge
  %err.0 = phi i32 [ -16, %if.then15.out_crit_edge ], [ 0, %if.end25 ], [ -101, %atrtr_get_dev.exit.out_crit_edge ], [ -101, %atrtr_get_dev.exit.thread ]
  tail call void @release_sock(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc i32 @atalk_autobind(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.out_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end5
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp7.not = icmp eq i8 %7, 1
  br i1 %cmp7.not, label %if.end10, label %if.then6.out_crit_edge

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %dest_net = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 1
  %dest_node = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 3
  %dest_port = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 5
  br label %if.end17

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %src_net = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 2
  %src_node = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 4
  %src_port = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 6
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end10
  %sat.sroa.6.0.in = phi ptr [ %dest_port, %if.end10 ], [ %src_port, %if.else ]
  %sat.sroa.830.0.in = phi ptr [ %dest_net, %if.end10 ], [ %src_net, %if.else ]
  %sat.sroa.10.0.in = phi ptr [ %dest_node, %if.end10 ], [ %src_node, %if.else ]
  %8 = ptrtoint ptr %sat.sroa.10.0.in to i32
  call void @__asan_load1_noabort(i32 %8)
  %sat.sroa.10.0 = load i8, ptr %sat.sroa.10.0.in, align 1
  %9 = ptrtoint ptr %sat.sroa.830.0.in to i32
  call void @__asan_load2_noabort(i32 %9)
  %sat.sroa.830.0 = load i16, ptr %sat.sroa.830.0.in, align 2
  %10 = ptrtoint ptr %sat.sroa.6.0.in to i32
  call void @__asan_load1_noabort(i32 %10)
  %sat.sroa.6.0 = load i8, ptr %sat.sroa.6.0.in, align 1
  %11 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 5, ptr %uaddr, align 2
  %sat.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 2
  %12 = ptrtoint ptr %sat.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %sat.sroa.6.0, ptr %sat.sroa.6.0..sroa_idx, align 2
  %sat.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 3
  %13 = ptrtoint ptr %sat.sroa.8.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %sat.sroa.8.0..sroa_idx, align 1
  %sat.sroa.830.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 4
  %14 = ptrtoint ptr %sat.sroa.830.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %sat.sroa.830.0, ptr %sat.sroa.830.0..sroa_idx, align 2
  %sat.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 6
  %15 = ptrtoint ptr %sat.sroa.10.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %sat.sroa.10.0, ptr %sat.sroa.10.0..sroa_idx, align 2
  %sat.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 7
  %16 = call ptr @memset(ptr %sat.sroa.12.0..sroa_idx, i32 0, i32 9)
  br label %out

out:                                              ; preds = %if.end17, %if.then6.out_crit_edge, %if.then.out_crit_edge
  %err.0 = phi i32 [ -105, %if.then.out_crit_edge ], [ -107, %if.then6.out_crit_edge ], [ 16, %if.end17 ]
  tail call void @release_sock(ptr noundef %1) #11
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %atreq.i = alloca %struct.ifreq, align 4
  %rtdef.i = alloca %struct.rtentry, align 4
  %name.i.i = alloca [16 x i8], align 1
  %rt.i = alloca %struct.rtentry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 21521, label %sw.bb
    i32 21531, label %sw.bb4
    i32 35083, label %entry.sw.bb25_crit_edge
    i32 35084, label %entry.sw.bb25_crit_edge67
    i32 35093, label %entry.sw.bb30_crit_edge
    i32 35094, label %entry.sw.bb30_crit_edge68
    i32 35097, label %entry.sw.bb30_crit_edge69
    i32 35296, label %entry.sw.bb30_crit_edge70
    i32 35126, label %entry.sw.bb30_crit_edge71
    i32 35157, label %entry.sw.bb30_crit_edge72
    i32 35155, label %entry.sw.bb30_crit_edge73
  ]

entry.sw.bb30_crit_edge73:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30

entry.sw.bb30_crit_edge72:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30

entry.sw.bb30_crit_edge71:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30

entry.sw.bb30_crit_edge70:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30

entry.sw.bb30_crit_edge69:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30

entry.sw.bb30_crit_edge68:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30

entry.sw.bb30_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30

entry.sw.bb25_crit_edge67:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb25

entry.sw.bb25_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb25

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_sndbuf, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i.neg = add i32 %5, 1
  %sub = sub i32 %sub.i.neg, %7
  %8 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 1811) #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !151
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %8, i32 -1226833921) #11, !srcloc !154
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #11, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %14, %sk_receive_queue
  %tobool.not54 = icmp eq ptr %14, null
  %tobool.not = or i1 %cmp.i, %tobool.not54
  br i1 %tobool.not, label %sw.bb4.if.end9_crit_edge, label %if.then7

sw.bb4.if.end9_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %sub8 = add i32 %16, -12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %sw.bb4.if.end9_crit_edge
  %amount6.0 = phi i32 [ %sub8, %if.then7 ], [ 0, %sw.bb4.if.end9_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 1824) #11
  %17 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i.i41 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i41 to ptr
  %cpu_domain.i.i42 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i42) #7, !srcloc !151
  %and.i43 = and i32 %19, -13
  %or.i44 = or i32 %and.i43, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i44) #11, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %amount6.0, i32 -1226833921) #11, !srcloc !155
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #11, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry.sw.bb25_crit_edge, %entry.sw.bb25_crit_edge67
  %call26 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call26, label %if.then27, label %sw.bb25.sw.epilog_crit_edge

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then27:                                        ; preds = %sw.bb25
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %rt.i) #11
  %21 = call ptr @memset(ptr %rt.i, i32 255, i32 84)
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then27.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then27.if.then11.i.i.i_crit_edge:              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then27
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 84, i32 -1226833920) #15, !srcloc !156
  %asmresult.i.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !144

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rt.i, i32 noundef 84) #11
  %23 = call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !151
  %and.i.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !152
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rt.i, ptr noundef %2, i32 noundef 84) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #11, !srcloc !152
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !144

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then27.if.then11.i.i.i_crit_edge
  %res.0.i.i14.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 84, %if.then27.if.then11.i.i.i_crit_edge ], [ 84, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 84, %res.0.i.i14.i
  %add.ptr.i.i.i = getelementptr i8, ptr %rt.i, i32 %sub.i.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i14.i)
  br label %atrtr_ioctl.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %27 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %cmd, label %if.end.i.atrtr_ioctl.exit_crit_edge [
    i32 35084, label %sw.bb.i
    i32 35083, label %sw.bb6.i
  ]

if.end.i.atrtr_ioctl.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atrtr_ioctl.exit

sw.bb.i:                                          ; preds = %if.end.i
  %rt_dst.i = getelementptr inbounds %struct.rtentry, ptr %rt.i, i32 0, i32 1
  %28 = ptrtoint ptr %rt_dst.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rt_dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %29)
  %cmp.not.i = icmp eq i16 %29, 5
  br i1 %cmp.not.i, label %if.end3.i, label %sw.bb.i.atrtr_ioctl.exit_crit_edge

sw.bb.i.atrtr_ioctl.exit_crit_edge:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atrtr_ioctl.exit

if.end3.i:                                        ; preds = %sw.bb.i
  call void @_raw_write_lock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  %30 = load ptr, ptr @atalk_routes, align 4
  %cmp.not23.i.i = icmp eq ptr %30, null
  br i1 %cmp.not23.i.i, label %if.end3.i.atrtr_delete.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end3.i.atrtr_delete.exit.i_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atrtr_delete.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end3.i
  %sat_addr.i = getelementptr inbounds %struct.rtentry, ptr %rt.i, i32 0, i32 1, i32 1, i32 2
  %31 = ptrtoint ptr %sat_addr.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sat_addr.i, align 4
  %s_node8.i.i = getelementptr inbounds %struct.rtentry, ptr %rt.i, i32 0, i32 1, i32 1, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %33 = phi ptr [ %30, %while.body.lr.ph.i.i ], [ %62, %if.end.i.i.while.body.i.i_crit_edge ]
  %r.024.i.i = phi ptr [ @atalk_routes, %while.body.lr.ph.i.i ], [ %next12.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %target.i.i = getelementptr inbounds %struct.atalk_route, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %target.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %32)
  %cmp4.i.i = icmp eq i16 %35, %32
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %flags.i.i = getelementptr inbounds %struct.atalk_route, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %s_node.i.i = getelementptr inbounds %struct.atalk_route, ptr %33, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %s_node.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %s_node.i.i, align 2
  %40 = ptrtoint ptr %s_node8.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %s_node8.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp10.i.i = icmp eq i8 %39, %41
  br i1 %cmp10.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i_crit_edge
  %next.i.i = getelementptr inbounds %struct.atalk_route, ptr %33, i32 0, i32 4
  %42 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %next.i.i, align 4
  %44 = ptrtoint ptr %r.024.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %r.024.i.i, align 4
  %45 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %33, align 4
  %tobool.not.i.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.dev_put.exit.i.i_crit_edge, label %do.body1.i.i.i

if.then.i.i.dev_put.exit.i.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit.i.i

do.body1.i.i.i:                                   ; preds = %if.then.i.i
  %47 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !157
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 118
  %48 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %56, %50
  %57 = inttoptr i32 %add.i.i.i to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add13.i.i.i = add i32 %59, -1
  store i32 %add13.i.i.i, ptr %57, align 4
  %60 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !158
  %and.i.i.i.i8.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i8.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i8.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.do.end30.i.i.i_crit_edge, !prof !143

do.body1.i.i.i.do.end30.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end30.i.i.i

do.end30.i.i.i:                                   ; preds = %if.then28.i.i.i, %do.body1.i.i.i.do.end30.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #11, !srcloc !159
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %do.end30.i.i.i, %if.then.i.i.dev_put.exit.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %33) #11
  br label %atrtr_delete.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge
  %next12.i.i = getelementptr inbounds %struct.atalk_route, ptr %33, i32 0, i32 4
  %61 = ptrtoint ptr %next12.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %next12.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %62, null
  br i1 %cmp.not.i.i, label %if.end.i.i.atrtr_delete.exit.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

if.end.i.i.atrtr_delete.exit.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atrtr_delete.exit.i

atrtr_delete.exit.i:                              ; preds = %if.end.i.i.atrtr_delete.exit.i_crit_edge, %dev_put.exit.i.i, %if.end3.i.atrtr_delete.exit.i_crit_edge
  %retval1.0.i.i = phi i32 [ 0, %dev_put.exit.i.i ], [ -2, %if.end3.i.atrtr_delete.exit.i_crit_edge ], [ -2, %if.end.i.i.atrtr_delete.exit.i_crit_edge ]
  call void @_raw_write_unlock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  br label %atrtr_ioctl.exit

sw.bb6.i:                                         ; preds = %if.end.i
  %rt_dev.i.i = getelementptr inbounds %struct.rtentry, ptr %rt.i, i32 0, i32 9
  %63 = ptrtoint ptr %rt_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rt_dev.i.i, align 4
  %tobool.not.i9.i = icmp eq ptr %64, null
  br i1 %tobool.not.i9.i, label %sw.bb6.i.if.end9.i.i_crit_edge, label %if.then.i11.i

sw.bb6.i.if.end9.i.i_crit_edge:                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.then.i11.i:                                    ; preds = %sw.bb6.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i.i) #11
  %65 = getelementptr inbounds [16 x i8], ptr %name.i.i, i32 0, i32 15
  %66 = call ptr @memset(ptr %name.i.i, i32 255, i32 16)
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #11
  %call.i.i.i10.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i10.i, label %if.then.i11.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i11.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i11.i
  %67 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %64, i32 15, i32 -1226833920) #15, !srcloc !156
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !144

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %name.i.i, i32 noundef 15) #11
  %68 = call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i.i.i.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 4
  %70 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !151
  %and.i.i.i.i.i.i = and i32 %70, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #11, !srcloc !152
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %name.i.i, ptr noundef nonnull %64, i32 noundef 15) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #11, !srcloc !152
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %cleanup.i.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !144

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i11.i.if.then11.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i.i) #11
  br label %atrtr_ioctl.exit

cleanup.i.i:                                      ; preds = %if.end.i.i.i.i
  %71 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %65, align 1
  %call5.i.i = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %name.i.i) #11
  %tobool6.not.not.i.i = icmp eq ptr %call5.i.i, null
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i.i) #11
  br i1 %tobool6.not.not.i.i, label %cleanup.i.i.atrtr_ioctl.exit_crit_edge, label %cleanup.i.i.if.end9.i.i_crit_edge

cleanup.i.i.if.end9.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

cleanup.i.i.atrtr_ioctl.exit_crit_edge:           ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atrtr_ioctl.exit

if.end9.i.i:                                      ; preds = %cleanup.i.i.if.end9.i.i_crit_edge, %sw.bb6.i.if.end9.i.i_crit_edge
  %dev.1.i.i = phi ptr [ %call5.i.i, %cleanup.i.i.if.end9.i.i_crit_edge ], [ null, %sw.bb6.i.if.end9.i.i_crit_edge ]
  %call10.i.i = call fastcc i32 @atrtr_create(ptr noundef nonnull %rt.i, ptr noundef %dev.1.i.i) #11
  br label %atrtr_ioctl.exit

atrtr_ioctl.exit:                                 ; preds = %if.end9.i.i, %cleanup.i.i.atrtr_ioctl.exit_crit_edge, %if.then11.i.i.i.i, %atrtr_delete.exit.i, %sw.bb.i.atrtr_ioctl.exit_crit_edge, %if.end.i.atrtr_ioctl.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %retval1.0.i.i, %atrtr_delete.exit.i ], [ -22, %sw.bb.i.atrtr_ioctl.exit_crit_edge ], [ -22, %if.end.i.atrtr_ioctl.exit_crit_edge ], [ %call10.i.i, %if.end9.i.i ], [ -19, %cleanup.i.i.atrtr_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %rt.i) #11
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry.sw.bb30_crit_edge, %entry.sw.bb30_crit_edge68, %entry.sw.bb30_crit_edge69, %entry.sw.bb30_crit_edge70, %entry.sw.bb30_crit_edge71, %entry.sw.bb30_crit_edge72, %entry.sw.bb30_crit_edge73
  tail call void @rtnl_lock() #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %atreq.i) #11
  %72 = call ptr @memset(ptr %atreq.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %rtdef.i) #11
  %73 = call ptr @memset(ptr %rtdef.i, i32 255, i32 84)
  %call.i = call i32 @get_user_ifreq(ptr noundef nonnull %atreq.i, ptr noundef null, ptr noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i46, label %sw.bb30.atif_ioctl.exit_crit_edge

sw.bb30.atif_ioctl.exit_crit_edge:                ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end.i46:                                       ; preds = %sw.bb30
  %call1.i = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %atreq.i) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i46.atif_ioctl.exit_crit_edge, label %if.end4.i

if.end.i46.atif_ioctl.exit_crit_edge:             ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end4.i:                                        ; preds = %if.end.i46
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %atreq.i, i32 0, i32 1
  %atalk_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 77
  %74 = ptrtoint ptr %atalk_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %atalk_ptr.i.i, align 4
  %76 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %cmd, label %if.end4.i.sw.epilog.i_crit_edge [
    i32 35094, label %sw.bb.i47
    i32 35093, label %sw.bb158.i
    i32 35097, label %sw.bb165.i
    i32 35296, label %if.end4.i.sw.bb176.i_crit_edge
    i32 35126, label %if.end4.i.sw.bb176.i_crit_edge74
    i32 35157, label %sw.bb186.i
    i32 35155, label %sw.bb236.i
  ]

if.end4.i.sw.bb176.i_crit_edge74:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb176.i

if.end4.i.sw.bb176.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb176.i

if.end4.i.sw.epilog.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i47:                                        ; preds = %if.end4.i
  %call6.i = call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call6.i, label %if.end8.i, label %sw.bb.i47.atif_ioctl.exit_crit_edge

sw.bb.i47.atif_ioctl.exit_crit_edge:              ; preds = %sw.bb.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end8.i:                                        ; preds = %sw.bb.i47
  %77 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %ifr_ifru.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %78)
  %cmp.not.i48 = icmp eq i16 %78, 5
  br i1 %cmp.not.i48, label %if.end11.i, label %if.end8.i.atif_ioctl.exit_crit_edge

if.end8.i.atif_ioctl.exit_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end11.i:                                       ; preds = %if.end8.i
  %type.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 32
  %79 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %type.i, align 16
  %81 = zext i16 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %80, label %if.end11.i.atif_ioctl.exit_crit_edge [
    i16 1, label %if.end11.i.if.end30.i_crit_edge
    i16 772, label %if.end11.i.if.end30.i_crit_edge75
    i16 773, label %if.end11.i.if.end30.i_crit_edge76
    i16 512, label %if.end11.i.if.end30.i_crit_edge77
  ]

if.end11.i.if.end30.i_crit_edge77:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.end11.i.if.end30.i_crit_edge76:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.end11.i.if.end30.i_crit_edge75:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.end11.i.if.end30.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.end11.i.atif_ioctl.exit_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end30.i:                                       ; preds = %if.end11.i.if.end30.i_crit_edge, %if.end11.i.if.end30.i_crit_edge75, %if.end11.i.if.end30.i_crit_edge76, %if.end11.i.if.end30.i_crit_edge77
  %sat_zero.i = getelementptr inbounds %struct.ifreq, ptr %atreq.i, i32 0, i32 1, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 14
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags.i, align 8
  %and.i49 = and i32 %83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool31.not.i = icmp eq i32 %and.i49, 0
  br i1 %tobool31.not.i, label %if.end30.i.if.end39.i_crit_edge, label %land.lhs.true32.i

if.end30.i.if.end39.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

land.lhs.true32.i:                                ; preds = %if.end30.i
  %sat_addr.i50 = getelementptr inbounds %struct.ifreq, ptr %atreq.i, i32 0, i32 1, i32 0, i32 1
  %84 = ptrtoint ptr %sat_addr.i50 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %sat_addr.i50, align 4
  %s_node.i = getelementptr inbounds %struct.atalk_addr, ptr %sat_addr.i50, i32 0, i32 1
  %86 = ptrtoint ptr %s_node.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %s_node.i, align 2
  %conv34.i = zext i8 %87 to i32
  %call35.i = call fastcc ptr @atalk_find_interface(i16 noundef zeroext %85, i32 noundef %conv34.i) #11
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %land.lhs.true32.i.if.end39.i_crit_edge, label %do.end.i

land.lhs.true32.i.if.end39.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

do.end.i:                                         ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #13
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  br label %if.end39.i

if.end39.i:                                       ; preds = %do.end.i, %land.lhs.true32.i.if.end39.i_crit_edge, %if.end30.i.if.end39.i_crit_edge
  %tobool145.not.i = phi i1 [ true, %do.end.i ], [ false, %land.lhs.true32.i.if.end39.i_crit_edge ], [ false, %if.end30.i.if.end39.i_crit_edge ]
  %88 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %89)
  %cmp42.i = icmp eq i16 %89, 1
  br i1 %cmp42.i, label %land.lhs.true44.i, label %if.end39.i.if.end49.i_crit_edge

if.end39.i.if.end49.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

land.lhs.true44.i:                                ; preds = %if.end39.i
  %90 = ptrtoint ptr %sat_zero.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sat_zero.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %cmp46.not.i = icmp eq i8 %91, 2
  br i1 %cmp46.not.i, label %land.lhs.true44.i.if.end49.i_crit_edge, label %land.lhs.true44.i.atif_ioctl.exit_crit_edge

land.lhs.true44.i.atif_ioctl.exit_crit_edge:      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

land.lhs.true44.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.end49.i:                                       ; preds = %land.lhs.true44.i.if.end49.i_crit_edge, %if.end39.i.if.end49.i_crit_edge
  %sat_addr50.i = getelementptr inbounds %struct.ifreq, ptr %atreq.i, i32 0, i32 1, i32 0, i32 1
  %s_node51.i = getelementptr inbounds %struct.atalk_addr, ptr %sat_addr50.i, i32 0, i32 1
  %92 = ptrtoint ptr %s_node51.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %s_node51.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %93)
  %switch.i = icmp ugt i8 %93, -3
  br i1 %switch.i, label %if.end49.i.atif_ioctl.exit_crit_edge, label %if.end61.i

if.end49.i.atif_ioctl.exit_crit_edge:             ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end61.i:                                       ; preds = %if.end49.i
  %tobool62.not.i = icmp eq ptr %75, null
  br i1 %tobool62.not.i, label %if.else.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.end61.i
  %status.i = getelementptr inbounds %struct.atalk_iface, ptr %75, i32 0, i32 2
  %94 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %status.i, align 4
  %and64.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end67.i, label %if.then63.i.atif_ioctl.exit_crit_edge

if.then63.i.atif_ioctl.exit_crit_edge:            ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end67.i:                                       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %sat_addr50.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %sat_addr50.i, align 4
  %address.i = getelementptr inbounds %struct.atalk_iface, ptr %75, i32 0, i32 1
  %98 = ptrtoint ptr %address.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %address.i, align 4
  %99 = ptrtoint ptr %s_node51.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %s_node51.i, align 2
  %s_node74.i = getelementptr inbounds %struct.atalk_iface, ptr %75, i32 0, i32 1, i32 1
  %101 = ptrtoint ptr %s_node74.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %s_node74.i, align 2
  call fastcc void @atrtr_device_down(ptr noundef nonnull %call1.i) #11
  br label %if.end80.i

if.else.i:                                        ; preds = %if.end61.i
  %call76.i = call fastcc ptr @atif_add_device(ptr noundef nonnull %call1.i, ptr noundef %sat_addr50.i) #11
  %tobool77.not.i = icmp eq ptr %call76.i, null
  br i1 %tobool77.not.i, label %if.else.i.atif_ioctl.exit_crit_edge, label %if.else.i.if.end80.i_crit_edge

if.else.i.if.end80.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.i

if.else.i.atif_ioctl.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end80.i:                                       ; preds = %if.else.i.if.end80.i_crit_edge, %if.end67.i
  %atif.0.i = phi ptr [ %75, %if.end67.i ], [ %call76.i, %if.else.i.if.end80.i_crit_edge ]
  %nets.i = getelementptr inbounds %struct.atalk_iface, ptr %atif.0.i, i32 0, i32 3
  %102 = call ptr @memcpy(ptr %nets.i, ptr %sat_zero.i, i32 6)
  %103 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i, align 8
  %105 = and i32 %104, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %land.lhs.true88.i, label %if.end80.i.if.end93.i_crit_edge

if.end80.i.if.end93.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93.i

land.lhs.true88.i:                                ; preds = %if.end80.i
  %call89.i = call fastcc i32 @atif_probe_device(ptr noundef nonnull %atif.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %cmp90.i = icmp slt i32 %call89.i, 0
  br i1 %cmp90.i, label %if.then92.i, label %land.lhs.true88.i.if.end93.i_crit_edge

land.lhs.true88.i.if.end93.i_crit_edge:           ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93.i

if.then92.i:                                      ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @atif_drop_device(ptr noundef nonnull %call1.i) #11
  br label %atif_ioctl.exit

if.end93.i:                                       ; preds = %land.lhs.true88.i.if.end93.i_crit_edge, %if.end80.i.if.end93.i_crit_edge
  %rt_gateway.i = getelementptr inbounds %struct.rtentry, ptr %rtdef.i, i32 0, i32 2
  %107 = ptrtoint ptr %rt_gateway.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 5, ptr %rt_gateway.i, align 4
  %address95.i = getelementptr inbounds %struct.atalk_iface, ptr %atif.0.i, i32 0, i32 1
  %108 = ptrtoint ptr %address95.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %address95.i, align 4
  %sat_addr97.i = getelementptr inbounds %struct.rtentry, ptr %rtdef.i, i32 0, i32 2, i32 1, i32 2
  %110 = ptrtoint ptr %sat_addr97.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %sat_addr97.i, align 4
  %s_node100.i = getelementptr inbounds %struct.atalk_iface, ptr %atif.0.i, i32 0, i32 1, i32 1
  %111 = ptrtoint ptr %s_node100.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %s_node100.i, align 2
  %s_node102.i = getelementptr inbounds %struct.rtentry, ptr %rtdef.i, i32 0, i32 2, i32 1, i32 4
  %113 = ptrtoint ptr %s_node102.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %s_node102.i, align 2
  %rt_dst.i51 = getelementptr inbounds %struct.rtentry, ptr %rtdef.i, i32 0, i32 1
  %rt_flags.i = getelementptr inbounds %struct.rtentry, ptr %rtdef.i, i32 0, i32 4
  %114 = ptrtoint ptr %rt_flags.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 1, ptr %rt_flags.i, align 4
  %115 = ptrtoint ptr %rt_dst.i51 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 5, ptr %rt_dst.i51, align 4
  %sat_addr104.i = getelementptr inbounds %struct.rtentry, ptr %rtdef.i, i32 0, i32 1, i32 1, i32 2
  %s_node105.i = getelementptr inbounds %struct.rtentry, ptr %rtdef.i, i32 0, i32 1, i32 1, i32 4
  %116 = ptrtoint ptr %s_node105.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %s_node105.i, align 2
  %117 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags.i, align 8
  %119 = and i32 %118, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %if.end93.i.if.end117.i_crit_edge, label %if.then113.i

if.end93.i.if.end117.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117.i

if.then113.i:                                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %rt_flags.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 5, ptr %rt_flags.i, align 4
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then113.i, %if.end93.i.if.end117.i_crit_edge
  %nr_firstnet.i = getelementptr inbounds %struct.ifreq, ptr %atreq.i, i32 0, i32 1, i32 0, i32 3
  %122 = ptrtoint ptr %nr_firstnet.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %nr_firstnet.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %cmp119.i = icmp eq i16 %123, 0
  br i1 %cmp119.i, label %land.lhs.true121.i, label %if.end117.i.if.else131.i_crit_edge

if.end117.i.if.else131.i_crit_edge:               ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else131.i

land.lhs.true121.i:                               ; preds = %if.end117.i
  %nr_lastnet.i = getelementptr inbounds %struct.ifreq, ptr %atreq.i, i32 0, i32 1, i32 0, i32 5
  %124 = ptrtoint ptr %nr_lastnet.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %nr_lastnet.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %125)
  %cmp123.i = icmp eq i16 %125, -2
  br i1 %cmp123.i, label %if.then125.i, label %land.lhs.true121.i.if.else131.i_crit_edge

land.lhs.true121.i.if.else131.i_crit_edge:        ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else131.i

if.then125.i:                                     ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %sat_addr104.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %109, ptr %sat_addr104.i, align 4
  %call130.i = call fastcc i32 @atrtr_create(ptr noundef nonnull %rtdef.i, ptr noundef nonnull %call1.i) #11
  store ptr %call1.i, ptr @atrtr_default, align 4
  store i32 1, ptr getelementptr inbounds (%struct.atalk_route, ptr @atrtr_default, i32 0, i32 3), align 4
  store i16 0, ptr getelementptr inbounds (%struct.atalk_route, ptr @atrtr_default, i32 0, i32 2), align 4
  store i8 0, ptr getelementptr inbounds (%struct.atalk_route, ptr @atrtr_default, i32 0, i32 2, i32 1), align 2
  br label %if.end156.i

if.else131.i:                                     ; preds = %land.lhs.true121.i.if.else131.i_crit_edge, %if.end117.i.if.else131.i_crit_edge
  %nr_lastnet132.i = getelementptr inbounds %struct.ifreq, ptr %atreq.i, i32 0, i32 1, i32 0, i32 5
  %127 = ptrtoint ptr %nr_lastnet132.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %nr_lastnet132.i, align 4
  %conv133.i = zext i16 %128 to i32
  %conv135.i = zext i16 %123 to i32
  %sub.i52 = sub nsw i32 %conv133.i, %conv135.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i52)
  %cmp136.i = icmp sgt i32 %sub.i52, 4096
  br i1 %cmp136.i, label %do.end141.i, label %if.end144.i

do.end141.i:                                      ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #13
  %call143.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  br label %atif_ioctl.exit

if.end144.i:                                      ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_cmp2(i16 %128, i16 %123)
  %cmp149.not340.i = icmp ult i16 %128, %123
  %or.cond.i = select i1 %tobool145.not.i, i1 true, i1 %cmp149.not340.i
  br i1 %or.cond.i, label %if.end144.i.if.end156.i_crit_edge, label %if.end144.i.for.body.i_crit_edge

if.end144.i.for.body.i_crit_edge:                 ; preds = %if.end144.i
  br label %for.body.i

if.end144.i.if.end156.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end144.i.for.body.i_crit_edge
  %ct.0341.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %conv135.i, %if.end144.i.for.body.i_crit_edge ]
  %conv151.i = trunc i32 %ct.0341.i to i16
  %129 = ptrtoint ptr %sat_addr104.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv151.i, ptr %sat_addr104.i, align 4
  %call154.i = call fastcc i32 @atrtr_create(ptr noundef nonnull %rtdef.i, ptr noundef nonnull %call1.i) #11
  %inc.i = add nuw nsw i32 %ct.0341.i, 1
  %exitcond.i = icmp eq i32 %ct.0341.i, %conv133.i
  br i1 %exitcond.i, label %for.body.i.if.end156.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.if.end156.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156.i

if.end156.i:                                      ; preds = %for.body.i.if.end156.i_crit_edge, %if.end144.i.if.end156.i_crit_edge, %if.then125.i
  %call157.i = call i32 @dev_mc_add_global(ptr noundef nonnull %call1.i, ptr noundef nonnull @atif_ioctl.aarp_mcast) #11
  br label %atif_ioctl.exit

sw.bb158.i:                                       ; preds = %if.end4.i
  %tobool159.not.i = icmp eq ptr %75, null
  br i1 %tobool159.not.i, label %sw.bb158.i.atif_ioctl.exit_crit_edge, label %if.end161.i

sw.bb158.i.atif_ioctl.exit_crit_edge:             ; preds = %sw.bb158.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end161.i:                                      ; preds = %sw.bb158.i
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 5, ptr %ifr_ifru.i, align 4
  %sat_addr163.i = getelementptr inbounds %struct.ifreq, ptr %atreq.i, i32 0, i32 1, i32 0, i32 1
  %address164.i = getelementptr inbounds %struct.atalk_iface, ptr %75, i32 0, i32 1
  %131 = ptrtoint ptr %address164.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %address164.i, align 4
  %133 = ptrtoint ptr %sat_addr163.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %sat_addr163.i, align 4
  br label %sw.epilog.i

sw.bb165.i:                                       ; preds = %if.end4.i
  %tobool166.not.i = icmp eq ptr %75, null
  br i1 %tobool166.not.i, label %sw.bb165.i.atif_ioctl.exit_crit_edge, label %if.end168.i

sw.bb165.i.atif_ioctl.exit_crit_edge:             ; preds = %sw.bb165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end168.i:                                      ; preds = %sw.bb165.i
  call void @__sanitizer_cov_trace_pc() #13
  %134 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 5, ptr %ifr_ifru.i, align 4
  %address170.i = getelementptr inbounds %struct.atalk_iface, ptr %75, i32 0, i32 1
  %135 = ptrtoint ptr %address170.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %address170.i, align 4
  %sat_addr172.i = getelementptr inbounds %struct.ifreq, ptr %atreq.i, i32 0, i32 1, i32 0, i32 1
  %137 = ptrtoint ptr %sat_addr172.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %sat_addr172.i, align 4
  %s_node175.i = getelementptr inbounds %struct.atalk_addr, ptr %sat_addr172.i, i32 0, i32 1
  %138 = ptrtoint ptr %s_node175.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 -1, ptr %s_node175.i, align 2
  br label %sw.epilog.i

sw.bb176.i:                                       ; preds = %if.end4.i.sw.bb176.i_crit_edge, %if.end4.i.sw.bb176.i_crit_edge74
  %call177.i = call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call177.i, label %if.end179.i, label %sw.bb176.i.atif_ioctl.exit_crit_edge

sw.bb176.i.atif_ioctl.exit_crit_edge:             ; preds = %sw.bb176.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end179.i:                                      ; preds = %sw.bb176.i
  %139 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %ifr_ifru.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %140)
  %cmp182.not.i = icmp eq i16 %140, 5
  br i1 %cmp182.not.i, label %if.end185.i, label %if.end179.i.atif_ioctl.exit_crit_edge

if.end179.i.atif_ioctl.exit_crit_edge:            ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end185.i:                                      ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @atalk_dev_down(ptr noundef nonnull %call1.i) #11
  br label %sw.epilog.i

sw.bb186.i:                                       ; preds = %if.end4.i
  %call187.i = call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call187.i, label %if.end189.i, label %sw.bb186.i.atif_ioctl.exit_crit_edge

sw.bb186.i.atif_ioctl.exit_crit_edge:             ; preds = %sw.bb186.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end189.i:                                      ; preds = %sw.bb186.i
  %141 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %ifr_ifru.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %142)
  %cmp192.not.i = icmp eq i16 %142, 5
  br i1 %cmp192.not.i, label %if.end195.i, label %if.end189.i.atif_ioctl.exit_crit_edge

if.end189.i.atif_ioctl.exit_crit_edge:            ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end195.i:                                      ; preds = %if.end189.i
  %type196.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 32
  %143 = ptrtoint ptr %type196.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %type196.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %144)
  %cmp198.not.i = icmp eq i16 %144, 1
  br i1 %cmp198.not.i, label %if.end201.i, label %if.end195.i.atif_ioctl.exit_crit_edge

if.end195.i.atif_ioctl.exit_crit_edge:            ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end201.i:                                      ; preds = %if.end195.i
  %tobool202.not.i = icmp eq ptr %75, null
  br i1 %tobool202.not.i, label %if.end201.i.atif_ioctl.exit_crit_edge, label %land.lhs.true210.i

if.end201.i.atif_ioctl.exit_crit_edge:            ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

land.lhs.true210.i:                               ; preds = %if.end201.i
  %nets205.i = getelementptr inbounds %struct.atalk_iface, ptr %75, i32 0, i32 3
  %145 = ptrtoint ptr %nets205.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %nets205.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %146)
  %cmp213.not.i = icmp eq i8 %146, 2
  br i1 %cmp213.not.i, label %if.end216.i, label %land.lhs.true210.i.atif_ioctl.exit_crit_edge

land.lhs.true210.i.atif_ioctl.exit_crit_edge:     ; preds = %land.lhs.true210.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end216.i:                                      ; preds = %land.lhs.true210.i
  %sat_addr217.i = getelementptr inbounds %struct.ifreq, ptr %atreq.i, i32 0, i32 1, i32 0, i32 1
  %s_node218.i = getelementptr inbounds %struct.atalk_addr, ptr %sat_addr217.i, i32 0, i32 1
  %147 = ptrtoint ptr %s_node218.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %s_node218.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %148)
  %switch339.i = icmp ugt i8 %148, -3
  br i1 %switch339.i, label %if.end216.i.atif_ioctl.exit_crit_edge, label %if.end229.i

if.end216.i.atif_ioctl.exit_crit_edge:            ; preds = %if.end216.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end229.i:                                      ; preds = %if.end216.i
  %call231.i = call fastcc i32 @atif_proxy_probe_device(ptr noundef nonnull %75, ptr noundef %sat_addr217.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.i)
  %cmp232.i = icmp slt i32 %call231.i, 0
  br i1 %cmp232.i, label %if.end229.i.atif_ioctl.exit_crit_edge, label %if.end229.i.sw.epilog.i_crit_edge

if.end229.i.sw.epilog.i_crit_edge:                ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end229.i.atif_ioctl.exit_crit_edge:            ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

sw.bb236.i:                                       ; preds = %if.end4.i
  %call237.i = call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call237.i, label %if.end239.i, label %sw.bb236.i.atif_ioctl.exit_crit_edge

sw.bb236.i.atif_ioctl.exit_crit_edge:             ; preds = %sw.bb236.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end239.i:                                      ; preds = %sw.bb236.i
  %149 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %ifr_ifru.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %150)
  %cmp242.not.i = icmp eq i16 %150, 5
  br i1 %cmp242.not.i, label %if.end245.i, label %if.end239.i.atif_ioctl.exit_crit_edge

if.end239.i.atif_ioctl.exit_crit_edge:            ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end245.i:                                      ; preds = %if.end239.i
  %tobool246.not.i = icmp eq ptr %75, null
  br i1 %tobool246.not.i, label %if.end245.i.atif_ioctl.exit_crit_edge, label %if.end248.i

if.end245.i.atif_ioctl.exit_crit_edge:            ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atif_ioctl.exit

if.end248.i:                                      ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #13
  %151 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %75, align 4
  %sat_addr250.i = getelementptr inbounds %struct.ifreq, ptr %atreq.i, i32 0, i32 1, i32 0, i32 1
  call void @aarp_proxy_remove(ptr noundef %152, ptr noundef %sat_addr250.i) #11
  br label %atif_ioctl.exit

sw.epilog.i:                                      ; preds = %if.end229.i.sw.epilog.i_crit_edge, %if.end185.i, %if.end168.i, %if.end161.i, %if.end4.i.sw.epilog.i_crit_edge
  %call251.i = call i32 @put_user_ifreq(ptr noundef nonnull %atreq.i, ptr noundef %2) #11
  br label %atif_ioctl.exit

atif_ioctl.exit:                                  ; preds = %sw.epilog.i, %if.end248.i, %if.end245.i.atif_ioctl.exit_crit_edge, %if.end239.i.atif_ioctl.exit_crit_edge, %sw.bb236.i.atif_ioctl.exit_crit_edge, %if.end229.i.atif_ioctl.exit_crit_edge, %if.end216.i.atif_ioctl.exit_crit_edge, %land.lhs.true210.i.atif_ioctl.exit_crit_edge, %if.end201.i.atif_ioctl.exit_crit_edge, %if.end195.i.atif_ioctl.exit_crit_edge, %if.end189.i.atif_ioctl.exit_crit_edge, %sw.bb186.i.atif_ioctl.exit_crit_edge, %if.end179.i.atif_ioctl.exit_crit_edge, %sw.bb176.i.atif_ioctl.exit_crit_edge, %sw.bb165.i.atif_ioctl.exit_crit_edge, %sw.bb158.i.atif_ioctl.exit_crit_edge, %if.end156.i, %do.end141.i, %if.then92.i, %if.else.i.atif_ioctl.exit_crit_edge, %if.then63.i.atif_ioctl.exit_crit_edge, %if.end49.i.atif_ioctl.exit_crit_edge, %land.lhs.true44.i.atif_ioctl.exit_crit_edge, %if.end11.i.atif_ioctl.exit_crit_edge, %if.end8.i.atif_ioctl.exit_crit_edge, %sw.bb.i47.atif_ioctl.exit_crit_edge, %if.end.i46.atif_ioctl.exit_crit_edge, %sw.bb30.atif_ioctl.exit_crit_edge
  %retval.0.i53 = phi i32 [ %call251.i, %sw.epilog.i ], [ 0, %if.end248.i ], [ 0, %if.end156.i ], [ -22, %do.end141.i ], [ -98, %if.then92.i ], [ -14, %sw.bb30.atif_ioctl.exit_crit_edge ], [ -19, %if.end.i46.atif_ioctl.exit_crit_edge ], [ -1, %sw.bb.i47.atif_ioctl.exit_crit_edge ], [ -22, %if.end8.i.atif_ioctl.exit_crit_edge ], [ -93, %if.end11.i.atif_ioctl.exit_crit_edge ], [ -93, %land.lhs.true44.i.atif_ioctl.exit_crit_edge ], [ -22, %if.end49.i.atif_ioctl.exit_crit_edge ], [ -16, %if.then63.i.atif_ioctl.exit_crit_edge ], [ -12, %if.else.i.atif_ioctl.exit_crit_edge ], [ -99, %sw.bb158.i.atif_ioctl.exit_crit_edge ], [ -99, %sw.bb165.i.atif_ioctl.exit_crit_edge ], [ -1, %sw.bb176.i.atif_ioctl.exit_crit_edge ], [ -22, %if.end179.i.atif_ioctl.exit_crit_edge ], [ -1, %sw.bb186.i.atif_ioctl.exit_crit_edge ], [ -22, %if.end189.i.atif_ioctl.exit_crit_edge ], [ -93, %if.end195.i.atif_ioctl.exit_crit_edge ], [ -99, %if.end201.i.atif_ioctl.exit_crit_edge ], [ -93, %land.lhs.true210.i.atif_ioctl.exit_crit_edge ], [ -22, %if.end216.i.atif_ioctl.exit_crit_edge ], [ -98, %if.end229.i.atif_ioctl.exit_crit_edge ], [ -1, %sw.bb236.i.atif_ioctl.exit_crit_edge ], [ -22, %if.end239.i.atif_ioctl.exit_crit_edge ], [ -99, %if.end245.i.atif_ioctl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %rtdef.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %atreq.i) #11
  call void @rtnl_unlock() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %atif_ioctl.exit, %atrtr_ioctl.exit, %sw.bb25.sw.epilog_crit_edge, %if.end9, %sw.bb, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -515, %entry.sw.epilog_crit_edge ], [ %retval.0.i53, %atif_ioctl.exit ], [ %retval.0.i, %atrtr_ioctl.exit ], [ -1, %sw.bb25.sw.epilog_crit_edge ], [ %20, %if.end9 ], [ %12, %sw.bb ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #2 align 64 {
entry:
  %local_satalk = alloca %struct.sockaddr_at, align 2
  %gsat = alloca %struct.sockaddr_at, align 2
  %err = alloca i32, align 4
  %at_hint = alloca %struct.atalk_addr, align 4
  %at_lo = alloca %struct.atalk_addr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %4 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_flags, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_satalk) #11
  %6 = call ptr @memset(ptr %local_satalk, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gsat) #11
  %7 = call ptr @memset(ptr %gsat, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #11
  %and = and i32 %5, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 587, i32 %len)
  %cmp = icmp ugt i32 %len, 587
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -16, ptr %err, align 4
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.then5.if.end12_crit_edge, label %if.then7

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then7:                                         ; preds = %if.then5
  %call8 = tail call fastcc i32 @atalk_autobind(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then7.out_crit_edge, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.then5.if.end12_crit_edge
  %13 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -22, ptr %err, align 4
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp13 = icmp ult i32 %15, 16
  br i1 %cmp13, label %if.end12.out_crit_edge, label %lor.lhs.false

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %if.end12
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %17)
  %cmp14.not = icmp eq i16 %17, 5
  br i1 %cmp14.not, label %if.end17, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end17:                                         ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %err, align 4
  %s_node = getelementptr inbounds %struct.sockaddr_at, ptr %3, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %s_node, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp19 = icmp eq i8 %20, -1
  br i1 %cmp19, label %land.lhs.true, label %if.end17.do.body34_crit_edge

if.end17.do.body34_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

land.lhs.true:                                    ; preds = %if.end17
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %9, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i409.not = icmp eq i32 %23, 0
  br i1 %tobool.i409.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.do.body34_crit_edge

land.lhs.true.do.body34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else:                                          ; preds = %if.end3
  %24 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -107, ptr %err, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp25.not = icmp eq i8 %26, 1
  br i1 %cmp25.not, label %if.end28, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %local_satalk to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 5, ptr %local_satalk, align 2
  %dest_port = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %dest_port to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dest_port, align 2
  %sat_port = getelementptr inbounds %struct.sockaddr_at, ptr %local_satalk, i32 0, i32 1
  %30 = ptrtoint ptr %sat_port to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %sat_port, align 2
  %dest_node = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %dest_node to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dest_node, align 4
  %sat_addr30 = getelementptr inbounds %struct.sockaddr_at, ptr %local_satalk, i32 0, i32 2
  %s_node31 = getelementptr inbounds %struct.sockaddr_at, ptr %local_satalk, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %s_node31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %s_node31, align 2
  %dest_net = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %dest_net to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %dest_net, align 8
  %36 = ptrtoint ptr %sat_addr30 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %sat_addr30, align 2
  br label %do.body34

do.body34:                                        ; preds = %if.end28, %land.lhs.true.do.body34_crit_edge, %if.end17.do.body34_crit_edge
  %usat.0 = phi ptr [ %3, %land.lhs.true.do.body34_crit_edge ], [ %3, %if.end17.do.body34_crit_edge ], [ %local_satalk, %if.end28 ]
  %tobool35.not = icmp eq ptr %1, null
  br i1 %tobool35.not, label %do.body34.do.end47_crit_edge, label %land.lhs.true36

do.body34.do.end47_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

land.lhs.true36:                                  ; preds = %do.body34
  %37 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %40 = and i32 %39, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i410.not = icmp eq i32 %40, 0
  br i1 %tobool.i410.not, label %land.lhs.true36.do.end47_crit_edge, label %do.end42

land.lhs.true36.do.end47_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

do.end42:                                         ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %1) #14
  br label %do.end47

do.end47:                                         ; preds = %do.end42, %land.lhs.true36.do.end47_crit_edge, %do.body34.do.end47_crit_edge
  %add = add nuw nsw i32 %len, 12
  %41 = load ptr, ptr @ddp_dl, align 4
  %header_length = getelementptr inbounds %struct.datalink_proto, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %header_length to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %header_length, align 4
  %conv48 = zext i16 %43 to i32
  %add49 = add nuw nsw i32 %add, %conv48
  %sat_addr50 = getelementptr inbounds %struct.sockaddr_at, ptr %usat.0, i32 0, i32 2
  %44 = ptrtoint ptr %sat_addr50 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sat_addr50, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool53.not = icmp eq i16 %45, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %do.end47.if.then60_crit_edge

do.end47.if.then60_crit_edge:                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60

lor.lhs.false54:                                  ; preds = %do.end47
  %s_node56 = getelementptr inbounds %struct.sockaddr_at, ptr %usat.0, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %s_node56 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %s_node56, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp58 = icmp eq i8 %47, 0
  br i1 %cmp58, label %lor.lhs.false54.if.then60_crit_edge, label %if.else63

lor.lhs.false54.if.then60_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60

if.then60:                                        ; preds = %lor.lhs.false54.if.then60_crit_edge, %do.end47.if.then60_crit_edge
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  %r.040.i = load ptr, ptr @atalk_routes, align 4
  %tobool.not41.i = icmp eq ptr %r.040.i, null
  br i1 %tobool.not41.i, label %if.then60.if.else23.i_crit_edge, label %for.body.lr.ph.i

if.then60.if.else23.i_crit_edge:                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23.i

for.body.lr.ph.i:                                 ; preds = %if.then60
  %s_node13.i = getelementptr inbounds %struct.sockaddr_at, ptr %usat.0, i32 0, i32 2, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %r.043.i = phi ptr [ %r.040.i, %for.body.lr.ph.i ], [ %r.0.i, %for.inc.i.for.body.i_crit_edge ]
  %net_route.042.i = phi ptr [ null, %for.body.lr.ph.i ], [ %net_route.1.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i, i32 0, i32 3
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %target2.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i, i32 0, i32 1
  %50 = ptrtoint ptr %target2.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %target2.i, align 4
  %52 = ptrtoint ptr %sat_addr50 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sat_addr50, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp.i = icmp eq i16 %51, %53
  br i1 %cmp.i, label %if.then6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  %and8.i = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.then6.i.for.inc.i_crit_edge, label %if.then10.i

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then10.i:                                      ; preds = %if.then6.i
  %s_node.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %s_node.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %s_node.i, align 2
  %56 = ptrtoint ptr %s_node13.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %s_node13.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp15.i = icmp eq i8 %55, %57
  br i1 %cmp15.i, label %if.then10.i.atrtr_find.exit_crit_edge, label %if.then10.i.for.inc.i_crit_edge

if.then10.i.for.inc.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then10.i.atrtr_find.exit_crit_edge:            ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atrtr_find.exit

for.inc.i:                                        ; preds = %if.then10.i.for.inc.i_crit_edge, %if.then6.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %net_route.1.i = phi ptr [ %net_route.042.i, %if.then10.i.for.inc.i_crit_edge ], [ %net_route.042.i, %if.end.i.for.inc.i_crit_edge ], [ %net_route.042.i, %for.body.i.for.inc.i_crit_edge ], [ %r.043.i, %if.then6.i.for.inc.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.atalk_route, ptr %r.043.i, i32 0, i32 4
  %58 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %r.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %r.0.i, null
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool21.not.i = icmp eq ptr %net_route.1.i, null
  br i1 %tobool21.not.i, label %for.end.i.if.else23.i_crit_edge, label %for.end.i.atrtr_find.exit_crit_edge

for.end.i.atrtr_find.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atrtr_find.exit

for.end.i.if.else23.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23.i

if.else23.i:                                      ; preds = %for.end.i.if.else23.i_crit_edge, %if.then60.if.else23.i_crit_edge
  %59 = load ptr, ptr @atrtr_default, align 4
  %tobool24.not.i = icmp eq ptr %59, null
  %.atrtr_default.i = select i1 %tobool24.not.i, ptr null, ptr @atrtr_default
  br label %atrtr_find.exit

atrtr_find.exit:                                  ; preds = %if.else23.i, %for.end.i.atrtr_find.exit_crit_edge, %if.then10.i.atrtr_find.exit_crit_edge
  %r.1.i = phi ptr [ %net_route.1.i, %for.end.i.atrtr_find.exit_crit_edge ], [ %.atrtr_default.i, %if.else23.i ], [ %r.043.i, %if.then10.i.atrtr_find.exit_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  br label %if.end67

if.else63:                                        ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %at_hint) #11
  %60 = ptrtoint ptr %at_hint to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -65281, ptr %at_hint, align 4, !annotation !146
  %src_net = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %src_net to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %src_net, align 2
  store i16 %62, ptr %at_hint, align 4
  %call66 = call fastcc ptr @atrtr_find(ptr noundef nonnull %at_hint)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %at_hint) #11
  br label %if.end67

if.end67:                                         ; preds = %if.else63, %atrtr_find.exit
  %rt.0 = phi ptr [ %r.1.i, %atrtr_find.exit ], [ %call66, %if.else63 ]
  %63 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -101, ptr %err, align 4
  %tobool68.not = icmp eq ptr %rt.0, null
  br i1 %tobool68.not, label %if.end67.out_crit_edge, label %if.end70

if.end67.out_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end70:                                         ; preds = %if.end67
  %64 = ptrtoint ptr %rt.0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rt.0, align 4
  br i1 %tobool35.not, label %if.end70.do.end85_crit_edge, label %land.lhs.true74

if.end70.do.end85_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end85

land.lhs.true74:                                  ; preds = %if.end70
  %66 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  %69 = and i32 %68, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i411.not = icmp eq i32 %69, 0
  br i1 %tobool.i411.not, label %land.lhs.true74.do.end85_crit_edge, label %do.end80

land.lhs.true74.do.end85_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end85

do.end80:                                         ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #13
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %1, i32 noundef %add49, ptr noundef %65) #14
  br label %do.end85

do.end85:                                         ; preds = %do.end80, %land.lhs.true74.do.end85_crit_edge, %if.end70.do.end85_crit_edge
  %hard_header_len86 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 19
  %70 = ptrtoint ptr %hard_header_len86 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %hard_header_len86, align 2
  %conv87 = zext i16 %71 to i32
  %s_node89 = getelementptr inbounds %struct.sockaddr_at, ptr %usat.0, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %s_node89 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %s_node89, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %73)
  %cmp91 = icmp eq i8 %73, -1
  br i1 %cmp91, label %land.lhs.true93, label %do.end85.if.end117_crit_edge

do.end85.if.end117_crit_edge:                     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

land.lhs.true93:                                  ; preds = %do.end85
  %flags94 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 14
  %74 = ptrtoint ptr %flags94 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags94, align 8
  %and95 = and i32 %75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %lor.lhs.false97, label %land.lhs.true93.if.then101_crit_edge

land.lhs.true93.if.then101_crit_edge:             ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then101

lor.lhs.false97:                                  ; preds = %land.lhs.true93
  %flags98 = getelementptr inbounds %struct.atalk_route, ptr %rt.0, i32 0, i32 3
  %76 = ptrtoint ptr %flags98 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags98, align 4
  %and99 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %lor.lhs.false97.if.then101_crit_edge, label %lor.lhs.false97.if.end117_crit_edge

lor.lhs.false97.if.end117_crit_edge:              ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

lor.lhs.false97.if.then101_crit_edge:             ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then101

if.then101:                                       ; preds = %lor.lhs.false97.if.then101_crit_edge, %land.lhs.true93.if.then101_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %at_lo) #11
  %78 = ptrtoint ptr %at_lo to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 255, ptr %at_lo, align 4, !annotation !146
  %call104 = call fastcc ptr @atrtr_find(ptr noundef nonnull %at_lo)
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %if.then101.if.end116_crit_edge, label %land.lhs.true106

if.then101.if.end116_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

land.lhs.true106:                                 ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %call104 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call104, align 4
  %hard_header_len108 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 19
  %81 = ptrtoint ptr %hard_header_len108 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %hard_header_len108, align 2
  %83 = tail call i16 @llvm.umax.i16(i16 %82, i16 %71)
  %84 = zext i16 %83 to i32
  br label %if.end116

if.end116:                                        ; preds = %land.lhs.true106, %if.then101.if.end116_crit_edge
  %hard_header_len.0 = phi i32 [ %conv87, %if.then101.if.end116_crit_edge ], [ %84, %land.lhs.true106 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %at_lo) #11
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %lor.lhs.false97.if.end117_crit_edge, %do.end85.if.end117_crit_edge
  %hard_header_len.1 = phi i32 [ %hard_header_len.0, %if.end116 ], [ %conv87, %lor.lhs.false97.if.end117_crit_edge ], [ %conv87, %do.end85.if.end117_crit_edge ]
  %rt_lo.0 = phi ptr [ %call104, %if.end116 ], [ null, %lor.lhs.false97.if.end117_crit_edge ], [ null, %do.end85.if.end117_crit_edge ]
  %add118 = add i32 %hard_header_len.1, %add49
  tail call void @release_sock(ptr noundef %1) #11
  %and119 = and i32 %5, 64
  %call120 = call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %add118, i32 noundef %and119, ptr noundef nonnull %err) #11
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %tobool121.not = icmp eq ptr %call120, null
  br i1 %tobool121.not, label %if.end117.out_crit_edge, label %if.end123

if.end117.out_crit_edge:                          ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end123:                                        ; preds = %if.end117
  %85 = load ptr, ptr @ddp_dl, align 4
  %header_length124 = getelementptr inbounds %struct.datalink_proto, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %header_length124 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %header_length124, align 4
  %conv125 = zext i16 %87 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call120, i32 0, i32 19
  %88 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %89, i32 %conv125
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call120, i32 0, i32 16
  %90 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %91, i32 %conv125
  %add.ptr.i413 = getelementptr i8, ptr %add.ptr.i, i32 %hard_header_len.1
  store ptr %add.ptr.i413, ptr %data.i, align 4
  %add.ptr1.i415 = getelementptr i8, ptr %add.ptr1.i, i32 %hard_header_len.1
  store ptr %add.ptr1.i415, ptr %tail.i, align 8
  %92 = getelementptr inbounds %struct.anon.1, ptr %call120, i32 0, i32 2
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %65, ptr %92, align 8
  br i1 %tobool35.not, label %if.end123.do.end139_crit_edge, label %land.lhs.true128

if.end123.do.end139_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end139

land.lhs.true128:                                 ; preds = %if.end123
  %94 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %94, align 4
  %97 = and i32 %96, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.i416.not = icmp eq i32 %97, 0
  br i1 %tobool.i416.not, label %land.lhs.true128.do.end139_crit_edge, label %do.end134

land.lhs.true128.do.end139_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end139

do.end134:                                        ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #13
  %call136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %1) #14
  br label %do.end139

do.end139:                                        ; preds = %do.end134, %land.lhs.true128.do.end139_crit_edge, %if.end123.do.end139_crit_edge
  %call140 = call ptr @skb_put(ptr noundef nonnull %call120, i32 noundef 12) #11
  %conv142 = trunc i32 %add to i16
  %98 = ptrtoint ptr %call140 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv142, ptr %call140, align 2
  %99 = ptrtoint ptr %sat_addr50 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %sat_addr50, align 2
  %deh_dnet = getelementptr inbounds %struct.ddpehdr, ptr %call140, i32 0, i32 2
  %101 = ptrtoint ptr %deh_dnet to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %deh_dnet, align 2
  %src_net145 = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 2
  %102 = ptrtoint ptr %src_net145 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %src_net145, align 2
  %deh_snet = getelementptr inbounds %struct.ddpehdr, ptr %call140, i32 0, i32 3
  %104 = ptrtoint ptr %deh_snet to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %deh_snet, align 2
  %105 = ptrtoint ptr %s_node89 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %s_node89, align 2
  %deh_dnode = getelementptr inbounds %struct.ddpehdr, ptr %call140, i32 0, i32 4
  %107 = ptrtoint ptr %deh_dnode to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %deh_dnode, align 2
  %src_node = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 4
  %108 = ptrtoint ptr %src_node to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %src_node, align 1
  %deh_snode = getelementptr inbounds %struct.ddpehdr, ptr %call140, i32 0, i32 5
  %110 = ptrtoint ptr %deh_snode to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %deh_snode, align 1
  %sat_port148 = getelementptr inbounds %struct.sockaddr_at, ptr %usat.0, i32 0, i32 1
  %111 = ptrtoint ptr %sat_port148 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %sat_port148, align 2
  %deh_dport = getelementptr inbounds %struct.ddpehdr, ptr %call140, i32 0, i32 6
  %113 = ptrtoint ptr %deh_dport to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %deh_dport, align 2
  %src_port = getelementptr inbounds %struct.atalk_sock, ptr %1, i32 0, i32 6
  %114 = ptrtoint ptr %src_port to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %src_port, align 1
  %deh_sport = getelementptr inbounds %struct.ddpehdr, ptr %call140, i32 0, i32 7
  %116 = ptrtoint ptr %deh_sport to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %deh_sport, align 1
  br i1 %tobool35.not, label %do.end139.do.end162_crit_edge, label %land.lhs.true151

do.end139.do.end162_crit_edge:                    ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end162

land.lhs.true151:                                 ; preds = %do.end139
  %117 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %117, align 4
  %120 = and i32 %119, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.i417.not = icmp eq i32 %120, 0
  br i1 %tobool.i417.not, label %land.lhs.true151.do.end162_crit_edge, label %do.end157

land.lhs.true151.do.end162_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end162

do.end157:                                        ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #13
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %1, i32 noundef %len) #14
  br label %do.end162

do.end162:                                        ; preds = %do.end157, %land.lhs.true151.do.end162_crit_edge, %do.end139.do.end162_crit_edge
  %call163 = call ptr @skb_put(ptr noundef nonnull %call120, i32 noundef %len) #11
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__check_object_size(ptr noundef %call163, i32 noundef %len, i1 noundef zeroext false) #11
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call163, i32 noundef %len, ptr noundef %msg_iter.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %len)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, %len
  br i1 %cmp.i.i, label %if.end167, label %if.then166, !prof !144

if.then166:                                       ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #13
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #11
  %121 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -14, ptr %err, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call120, i32 noundef 0) #11
  %122 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -14, ptr %err, align 4
  br label %out

if.end167:                                        ; preds = %do.end162
  %123 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %err, align 4
  %sk_no_check_tx = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 43
  %124 = ptrtoint ptr %sk_no_check_tx to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load = load i8, ptr %sk_no_check_tx, align 8
  %125 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool168.not = icmp eq i8 %125, 0
  br i1 %tobool168.not, label %if.else170, label %if.end167.if.end174_crit_edge

if.end167.if.end174_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.else170:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %len, 8
  %call.i = call fastcc i32 @atalk_sum_skb(ptr noundef nonnull %call120, i32 noundef 4, i32 noundef %sub.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i418 = icmp eq i32 %call.i, 0
  %conv.i = trunc i32 %call.i to i16
  %spec.select.i = select i1 %tobool.not.i418, i16 -1, i16 %conv.i
  br label %if.end174

if.end174:                                        ; preds = %if.else170, %if.end167.if.end174_crit_edge
  %.sink = phi i16 [ %spec.select.i, %if.else170 ], [ 0, %if.end167.if.end174_crit_edge ]
  %126 = getelementptr inbounds %struct.ddpehdr, ptr %call140, i32 0, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %.sink, ptr %126, align 2
  %128 = ptrtoint ptr %deh_dnode to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %deh_dnode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %129)
  %cmp177 = icmp eq i8 %129, -1
  br i1 %cmp177, label %land.lhs.true179, label %if.end174.if.end208_crit_edge

if.end174.if.end208_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

land.lhs.true179:                                 ; preds = %if.end174
  %flags180 = getelementptr inbounds %struct.atalk_route, ptr %rt.0, i32 0, i32 3
  %130 = ptrtoint ptr %flags180 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags180, align 4
  %and181 = and i32 %131, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %land.lhs.true183, label %land.lhs.true179.if.end208_crit_edge

land.lhs.true179.if.end208_crit_edge:             ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

land.lhs.true183:                                 ; preds = %land.lhs.true179
  %flags184 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 14
  %132 = ptrtoint ptr %flags184 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags184, align 8
  %and185 = and i32 %133, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.then187, label %land.lhs.true183.if.end208_crit_edge

land.lhs.true183.if.end208_crit_edge:             ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

if.then187:                                       ; preds = %land.lhs.true183
  %call188 = call ptr @skb_copy(ptr noundef nonnull %call120, i32 noundef 3264) #11
  %tobool189.not = icmp eq ptr %call188, null
  br i1 %tobool189.not, label %if.then187.if.end208_crit_edge, label %if.then190

if.then187.if.end208_crit_edge:                   ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

if.then190:                                       ; preds = %if.then187
  br i1 %tobool35.not, label %if.then190.if.end208.thread_crit_edge, label %land.lhs.true193

if.then190.if.end208.thread_crit_edge:            ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208.thread

land.lhs.true193:                                 ; preds = %if.then190
  %134 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %134, align 4
  %137 = and i32 %136, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.i419.not = icmp eq i32 %137, 0
  br i1 %tobool.i419.not, label %land.lhs.true193.if.end208.thread_crit_edge, label %do.end199

land.lhs.true193.if.end208.thread_crit_edge:      ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208.thread

do.end199:                                        ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #13
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull %1) #14
  br label %if.end208.thread

if.end208.thread:                                 ; preds = %do.end199, %land.lhs.true193.if.end208.thread_crit_edge, %if.then190.if.end208.thread_crit_edge
  %call206 = call i32 @aarp_send_ddp(ptr noundef %65, ptr noundef nonnull %call188, ptr noundef %sat_addr50, ptr noundef null) #11
  br label %do.body215

if.end208:                                        ; preds = %if.then187.if.end208_crit_edge, %land.lhs.true183.if.end208_crit_edge, %land.lhs.true179.if.end208_crit_edge, %if.end174.if.end208_crit_edge
  %flags209 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 14
  %138 = ptrtoint ptr %flags209 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags209, align 8
  %and210 = and i32 %139, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %do.body241, label %if.end208.do.body215_crit_edge

if.end208.do.body215_crit_edge:                   ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body215

do.body215:                                       ; preds = %if.end208.do.body215_crit_edge, %if.end208.thread
  br i1 %tobool35.not, label %do.body215.do.end228_crit_edge, label %land.lhs.true217

do.body215.do.end228_crit_edge:                   ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end228

land.lhs.true217:                                 ; preds = %do.body215
  %140 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %140, align 4
  %143 = and i32 %142, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.i420.not = icmp eq i32 %143, 0
  br i1 %tobool.i420.not, label %land.lhs.true217.do.end228_crit_edge, label %do.end223

land.lhs.true217.do.end228_crit_edge:             ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end228

do.end223:                                        ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #13
  %call225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %1) #14
  br label %do.end228

do.end228:                                        ; preds = %do.end223, %land.lhs.true217.do.end228_crit_edge, %do.body215.do.end228_crit_edge
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call120, i32 0, i32 4, i32 0, i32 1
  %144 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i421 = icmp eq ptr %145, null
  br i1 %tobool.not.i421, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #13
  call void %145(ptr noundef nonnull %call120) #11
  %146 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %destructor.i, align 4
  %147 = getelementptr inbounds %struct.sk_buff, ptr %call120, i32 0, i32 1
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %147, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %do.end228
  %149 = getelementptr inbounds %struct.sk_buff, ptr %call120, i32 0, i32 1
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %tobool3.not.i = icmp eq ptr %151, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !144

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #11, !srcloc !160
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %152 = ptrtoint ptr %deh_dnode to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %deh_dnode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %153)
  %cmp231 = icmp eq i8 %153, -1
  br i1 %cmp231, label %if.then233, label %skb_orphan.exit.if.end238_crit_edge

skb_orphan.exit.if.end238_crit_edge:              ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end238

if.then233:                                       ; preds = %skb_orphan.exit
  %tobool234.not = icmp eq ptr %rt_lo.0, null
  br i1 %tobool234.not, label %if.then235, label %if.end236

if.then235:                                       ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef nonnull %call120, i32 noundef 0) #11
  %154 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -101, ptr %err, align 4
  br label %out

if.end236:                                        ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #13
  %155 = ptrtoint ptr %rt_lo.0 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rt_lo.0, align 4
  %157 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %156, ptr %92, align 8
  br label %if.end238

if.end238:                                        ; preds = %if.end236, %skb_orphan.exit.if.end238_crit_edge
  %dev.0 = phi ptr [ %156, %if.end236 ], [ %65, %skb_orphan.exit.if.end238_crit_edge ]
  %158 = load ptr, ptr @ddp_dl, align 4
  %request = getelementptr inbounds %struct.datalink_proto, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %request, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 86
  %161 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev_addr, align 64
  %call239 = call i32 %160(ptr noundef %158, ptr noundef nonnull %call120, ptr noundef %162) #11
  br label %do.body264

do.body241:                                       ; preds = %if.end208
  br i1 %tobool35.not, label %do.body241.do.end254_crit_edge, label %land.lhs.true243

do.body241.do.end254_crit_edge:                   ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end254

land.lhs.true243:                                 ; preds = %do.body241
  %163 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %163, align 4
  %166 = and i32 %165, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool.i422.not = icmp eq i32 %166, 0
  br i1 %tobool.i422.not, label %land.lhs.true243.do.end254_crit_edge, label %do.end249

land.lhs.true243.do.end254_crit_edge:             ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end254

do.end249:                                        ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #13
  %call251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %1) #14
  br label %do.end254

do.end254:                                        ; preds = %do.end249, %land.lhs.true243.do.end254_crit_edge, %do.body241.do.end254_crit_edge
  %flags255 = getelementptr inbounds %struct.atalk_route, ptr %rt.0, i32 0, i32 3
  %167 = ptrtoint ptr %flags255 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flags255, align 4
  %and256 = and i32 %168, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and256)
  %tobool257.not = icmp eq i32 %and256, 0
  br i1 %tobool257.not, label %do.end254.if.end260_crit_edge, label %if.then258

do.end254.if.end260_crit_edge:                    ; preds = %do.end254
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end260

if.then258:                                       ; preds = %do.end254
  call void @__sanitizer_cov_trace_pc() #13
  %sat_addr259 = getelementptr inbounds %struct.sockaddr_at, ptr %gsat, i32 0, i32 2
  %gateway = getelementptr inbounds %struct.atalk_route, ptr %rt.0, i32 0, i32 2
  %169 = ptrtoint ptr %gateway to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %gateway, align 4
  %171 = ptrtoint ptr %sat_addr259 to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 %170, ptr %sat_addr259, align 2
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %do.end254.if.end260_crit_edge
  %usat.1 = phi ptr [ %gsat, %if.then258 ], [ %usat.0, %do.end254.if.end260_crit_edge ]
  %sat_addr261 = getelementptr inbounds %struct.sockaddr_at, ptr %usat.1, i32 0, i32 2
  %call262 = call i32 @aarp_send_ddp(ptr noundef %65, ptr noundef nonnull %call120, ptr noundef %sat_addr261, ptr noundef null) #11
  br label %do.body264

do.body264:                                       ; preds = %if.end260, %if.end238
  br i1 %tobool35.not, label %do.body264.out_crit_edge, label %land.lhs.true266

do.body264.out_crit_edge:                         ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true266:                                 ; preds = %do.body264
  %172 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %172, align 4
  %175 = and i32 %174, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool.i423.not = icmp eq i32 %175, 0
  br i1 %tobool.i423.not, label %land.lhs.true266.out_crit_edge, label %do.end272

land.lhs.true266.out_crit_edge:                   ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end272:                                        ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #13
  %call274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull %1, i32 noundef %len) #14
  br label %out

out:                                              ; preds = %do.end272, %land.lhs.true266.out_crit_edge, %do.body264.out_crit_edge, %if.then235, %if.then166, %if.end117.out_crit_edge, %if.end67.out_crit_edge, %if.else.out_crit_edge, %land.lhs.true.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end12.out_crit_edge, %if.then7.out_crit_edge
  call void @release_sock(ptr noundef %1) #11
  %176 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool278.not = icmp eq i32 %177, 0
  %spec.select408 = select i1 %tobool278.not, i32 %len, i32 %177
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select408, %out ], [ -22, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gsat) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_satalk) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atalk_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #11
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %and = and i32 %flags, -65
  %and2 = and i32 %flags, 64
  %call = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %and, i32 noundef %and2, ptr noundef nonnull %err) #11
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 19
  %5 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %9 = and i16 %8, 1023
  %and4 = zext i16 %9 to i32
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %10 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %cmp.not = icmp eq i16 %11, 3
  %sub = add nsw i32 %and4, -12
  %spec.select = select i1 %cmp.not, i32 %and4, i32 %sub
  %spec.select45 = select i1 %cmp.not, i32 0, i32 12
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %size)
  %cmp9 = icmp ugt i32 %spec.select, %size
  br i1 %cmp9, label %if.then11, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %12 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_flags, align 4
  %or = or i32 %13, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %copied.1 = phi i32 [ %size, %if.then11 ], [ %spec.select, %if.end.if.end12_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call, i32 noundef %spec.select45, ptr noundef %msg_iter.i, i32 noundef %copied.1) #11
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end12
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msg, align 8
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %land.lhs.true.if.end19_crit_edge, label %if.then16

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 5, ptr %16, align 2
  %deh_sport = getelementptr inbounds %struct.ddpehdr, ptr %add.ptr.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %deh_sport to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %deh_sport, align 1
  %sat_port = getelementptr inbounds %struct.sockaddr_at, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %sat_port to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %sat_port, align 2
  %deh_snode = getelementptr inbounds %struct.ddpehdr, ptr %add.ptr.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %deh_snode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %deh_snode, align 1
  %sat_addr = getelementptr inbounds %struct.sockaddr_at, ptr %16, i32 0, i32 2
  %s_node = getelementptr inbounds %struct.sockaddr_at, ptr %16, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %s_node to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %s_node, align 2
  %deh_snet = getelementptr inbounds %struct.ddpehdr, ptr %add.ptr.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %deh_snet to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %deh_snet, align 2
  %26 = ptrtoint ptr %sat_addr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %sat_addr, align 2
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %27 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %msg_namelen, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call) #11
  br label %out

out:                                              ; preds = %if.end19, %entry.out_crit_edge
  %copied.2 = phi i32 [ %copied.1, %if.end19 ], [ 0, %entry.out_crit_edge ]
  call void @release_sock(ptr noundef %1) #11
  %28 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool20.not = icmp eq i32 %29, 0
  %spec.select46 = select i1 %tobool20.not, i32 %copied.2, i32 %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #11
  ret i32 %spec.select46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atalk_destroy_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -532
  %sk_wmem_alloc.i.i = getelementptr i8, ptr %t, i32 -88
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %sk_wmem_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_wmem_alloc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 1
  br i1 %tobool.not.i, label %sk_has_allocations.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

sk_has_allocations.exit:                          ; preds = %entry
  %sk_backlog.i.i = getelementptr i8, ptr %t, i32 -160
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sk_backlog.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.i.not = icmp eq i32 %3, 0
  br i1 %tobool2.i.not, label %if.else, label %sk_has_allocations.exit.if.then_crit_edge

sk_has_allocations.exit.if.then_crit_edge:        ; preds = %sk_has_allocations.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %sk_has_allocations.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 1000
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %5 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #11
  br label %if.end

if.else:                                          ; preds = %sk_has_allocations.exit
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -432
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %if.end

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  tail call void @sk_free(ptr noundef %add.ptr) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @atalk_find_interface(i16 noundef zeroext %net, i32 noundef %node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  %iface.047 = load ptr, ptr @atalk_interfaces, align 4
  %tobool.not48 = icmp eq ptr %iface.047, null
  br i1 %tobool.not48, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %node)
  %cmp12 = icmp ne i32 %node, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %net)
  %cmp16.not = icmp eq i16 %net, 0
  %or.cond = or i1 %cmp16.not, %cmp12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %iface.049 = phi ptr [ %iface.047, %for.body.lr.ph ], [ %iface.0, %for.inc.for.body_crit_edge ]
  %0 = zext i32 %node to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %node, label %lor.lhs.false2 [
    i32 255, label %for.body.land.lhs.true_crit_edge
    i32 0, label %for.body.land.lhs.true_crit_edge54
  ]

for.body.land.lhs.true_crit_edge54:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false2:                                   ; preds = %for.body
  %s_node = getelementptr inbounds %struct.atalk_iface, ptr %iface.049, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %s_node, align 2
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %node)
  %cmp3 = icmp eq i32 %conv, %node
  br i1 %cmp3, label %lor.lhs.false2.land.lhs.true_crit_edge, label %lor.lhs.false2.for.inc_crit_edge

lor.lhs.false2.for.inc_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false2.land.lhs.true_crit_edge:           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false2.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge54
  %address5 = getelementptr inbounds %struct.atalk_iface, ptr %iface.049, i32 0, i32 1
  %3 = ptrtoint ptr %address5 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %address5, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %net)
  %cmp8 = icmp eq i16 %4, %net
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %status = getelementptr inbounds %struct.atalk_iface, ptr %iface.049, i32 0, i32 2
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true10.for.end_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true10.for.end_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  br i1 %or.cond, label %if.end.for.inc_crit_edge, label %land.lhs.true18

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true18:                                  ; preds = %if.end
  %nr_firstnet = getelementptr inbounds %struct.atalk_iface, ptr %iface.049, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %nr_firstnet to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nr_firstnet, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %net)
  %cmp21.not = icmp ugt i16 %8, %net
  br i1 %cmp21.not, label %land.lhs.true18.for.inc_crit_edge, label %land.lhs.true23

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %nr_lastnet = getelementptr inbounds %struct.atalk_iface, ptr %iface.049, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %nr_lastnet to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nr_lastnet, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %net)
  %cmp27.not = icmp ult i16 %10, %net
  br i1 %cmp27.not, label %land.lhs.true23.for.inc_crit_edge, label %land.lhs.true23.for.end_crit_edge

land.lhs.true23.for.end_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true23.for.inc_crit_edge, %land.lhs.true18.for.inc_crit_edge, %if.end.for.inc_crit_edge, %lor.lhs.false2.for.inc_crit_edge
  %next = getelementptr inbounds %struct.atalk_iface, ptr %iface.049, i32 0, i32 4
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %11)
  %iface.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %iface.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true23.for.end_crit_edge, %land.lhs.true10.for.end_crit_edge, %entry.for.end_crit_edge
  %iface.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %iface.049, %land.lhs.true23.for.end_crit_edge ], [ %iface.049, %land.lhs.true10.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  ret ptr %iface.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atalk_pick_and_bind_port(ptr noundef %sk, ptr nocapture noundef %sat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @atalk_sockets_lock) #11
  %sat_port = getelementptr inbounds %struct.sockaddr_at, ptr %sat, i32 0, i32 1
  %0 = ptrtoint ptr %sat_port to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -128, ptr %sat_port, align 2
  %sat_addr = getelementptr inbounds %struct.sockaddr_at, ptr %sat, i32 0, i32 2
  %s_node = getelementptr inbounds %struct.sockaddr_at, ptr %sat, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc39.for.body_crit_edge, %entry
  %storemerge70 = phi i8 [ -128, %entry ], [ %inc, %for.inc39.for.body_crit_edge ]
  %1 = load ptr, ptr @atalk_sockets, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -84
  %tobool6.not6771 = icmp eq ptr %add.ptr, null
  %tobool6.not67 = or i1 %tobool.not, %tobool6.not6771
  br i1 %tobool6.not67, label %for.body.for.end_crit_edge, label %for.body7.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body7.lr.ph:                                  ; preds = %for.body
  %2 = ptrtoint ptr %sat_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sat_addr, align 2
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body7.lr.ph
  %s.068 = phi ptr [ %add.ptr, %for.body7.lr.ph ], [ %add.ptr29, %for.inc.for.body7_crit_edge ]
  %src_net = getelementptr inbounds %struct.atalk_sock, ptr %s.068, i32 0, i32 2
  %4 = ptrtoint ptr %src_net to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %src_net, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %3)
  %cmp10 = icmp eq i16 %5, %3
  br i1 %cmp10, label %land.lhs.true, label %for.body7.for.inc_crit_edge

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body7
  %src_node = getelementptr inbounds %struct.atalk_sock, ptr %s.068, i32 0, i32 4
  %6 = ptrtoint ptr %src_node to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %src_node, align 1
  %8 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_node, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp15 = icmp eq i8 %7, %9
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true
  %src_port = getelementptr inbounds %struct.atalk_sock, ptr %s.068, i32 0, i32 6
  %10 = ptrtoint ptr %src_port to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %src_port, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %storemerge70)
  %cmp21 = icmp eq i8 %11, %storemerge70
  br i1 %cmp21, label %for.inc39, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true17.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body7.for.inc_crit_edge
  %12 = getelementptr inbounds %struct.sock_common, ptr %s.068, i32 0, i32 15
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool25.not = icmp eq ptr %14, null
  %add.ptr29 = getelementptr i8, ptr %14, i32 -84
  %tobool6.not74 = icmp eq ptr %add.ptr29, null
  %tobool6.not = or i1 %tobool25.not, %tobool6.not74
  br i1 %tobool6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #11, !srcloc !147
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %for.end.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !143

for.end.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %for.end
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %for.end.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %for.end.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %17 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %18 = load ptr, ptr @atalk_sockets, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %18, ptr %17, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i.i, label %sock_hold.exit.i.i.cleanup36_crit_edge, label %do.body12.i.i.i.i

sock_hold.exit.i.i.cleanup36_crit_edge:           ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

do.body12.i.i.i.i:                                ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %17, ptr %pprev.i.i.i.i, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %do.body12.i.i.i.i, %sock_hold.exit.i.i.cleanup36_crit_edge
  store volatile ptr %17, ptr @atalk_sockets, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %21 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr @atalk_sockets, ptr %pprev34.i.i.i.i, align 4
  %22 = ptrtoint ptr %sat_port to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sat_port, align 2
  %src_port35 = getelementptr inbounds %struct.atalk_sock, ptr %sk, i32 0, i32 6
  %24 = ptrtoint ptr %src_port35 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %src_port35, align 1
  br label %cleanup42

for.inc39:                                        ; preds = %land.lhs.true17
  %25 = ptrtoint ptr %sat_port to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sat_port, align 2
  %inc = add i8 %26, 1
  store i8 %inc, ptr %sat_port, align 2
  %cmp = icmp ult i8 %inc, -2
  br i1 %cmp, label %for.inc39.for.body_crit_edge, label %for.inc39.cleanup42_crit_edge

for.inc39.cleanup42_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup42

for.inc39.for.body_crit_edge:                     ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup42:                                        ; preds = %for.inc39.cleanup42_crit_edge, %cleanup36
  %retval1.2 = phi i32 [ 0, %cleanup36 ], [ -16, %for.inc39.cleanup42_crit_edge ]
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @atalk_sockets_lock) #11
  ret i32 %retval1.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atalk_autobind(ptr noundef %sk) unnamed_addr #2 align 64 {
entry:
  %sat = alloca %struct.sockaddr_at, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sat) #11
  %0 = call ptr @memset(ptr %sat, i32 255, i32 16)
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  %iface.029.i = load ptr, ptr @atalk_interfaces, align 4
  %tobool.not30.i = icmp eq ptr %iface.029.i, null
  br i1 %tobool.not30.i, label %atalk_find_primary.exit.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %iface.032.i = phi ptr [ %iface.0.i, %for.inc.i.for.body.i_crit_edge ], [ %iface.029.i, %entry.for.body.i_crit_edge ]
  %fiface.031.i = phi ptr [ %fiface.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %entry.for.body.i_crit_edge ]
  %tobool2.not.i = icmp eq ptr %fiface.031.i, null
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %iface.032.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iface.032.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool3.not.i, ptr %iface.032.i, ptr null
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %for.body.i.if.end.i_crit_edge
  %fiface.1.i = phi ptr [ %fiface.031.i, %for.body.i.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %5 = ptrtoint ptr %iface.032.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iface.032.i, align 4
  %flags5.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags5.i, align 8
  %and6.i = and i32 %8, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.atalk_find_primary.exit_crit_edge, label %for.inc.i

if.end.i.atalk_find_primary.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_find_primary.exit

for.inc.i:                                        ; preds = %if.end.i
  %next.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.032.i, i32 0, i32 4
  %9 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %iface.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %iface.0.i, null
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %tobool10.not.i = icmp eq ptr %fiface.1.i, null
  %iface.029.i.fiface.1.i.lcssa26 = select i1 %tobool10.not.i, ptr %iface.029.i, ptr %fiface.1.i
  br label %atalk_find_primary.exit

atalk_find_primary.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  br label %out

atalk_find_primary.exit:                          ; preds = %for.end.i, %if.end.i.atalk_find_primary.exit_crit_edge
  %iface.029.i.sink = phi ptr [ %iface.029.i.fiface.1.i.lcssa26, %for.end.i ], [ %iface.032.i, %if.end.i.atalk_find_primary.exit_crit_edge ]
  %address15.i = getelementptr inbounds %struct.atalk_iface, ptr %iface.029.i.sink, i32 0, i32 1
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  %tobool.not = icmp eq ptr %address15.i, null
  br i1 %tobool.not, label %atalk_find_primary.exit.out_crit_edge, label %lor.lhs.false

atalk_find_primary.exit.out_crit_edge:            ; preds = %atalk_find_primary.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %atalk_find_primary.exit
  %10 = ptrtoint ptr %address15.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %address15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp = icmp eq i16 %11, 0
  br i1 %cmp, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %sat_addr = getelementptr inbounds %struct.sockaddr_at, ptr %sat, i32 0, i32 2
  %12 = ptrtoint ptr %sat_addr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %sat_addr, align 2
  %src_net = getelementptr inbounds %struct.atalk_sock, ptr %sk, i32 0, i32 2
  %13 = ptrtoint ptr %src_net to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %11, ptr %src_net, align 2
  %s_node = getelementptr inbounds %struct.atalk_iface, ptr %iface.029.i.sink, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_node, align 2
  %s_node6 = getelementptr inbounds %struct.sockaddr_at, ptr %sat, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %s_node6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %s_node6, align 2
  %src_node = getelementptr inbounds %struct.atalk_sock, ptr %sk, i32 0, i32 4
  %17 = ptrtoint ptr %src_node to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %15, ptr %src_node, align 1
  %call7 = call fastcc i32 @atalk_pick_and_bind_port(ptr noundef %sk, ptr noundef nonnull %sat)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and.i.i = and i32 %20, -257
  store i32 %and.i.i, ptr %18, align 4
  br label %out

out:                                              ; preds = %if.then9, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %atalk_find_primary.exit.out_crit_edge, %atalk_find_primary.exit.thread
  %n.0 = phi i32 [ -99, %lor.lhs.false.out_crit_edge ], [ %call7, %if.end.out_crit_edge ], [ 0, %if.then9 ], [ -99, %atalk_find_primary.exit.out_crit_edge ], [ -99, %atalk_find_primary.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sat) #11
  ret i32 %n.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atrtr_create(ptr nocapture noundef readonly %r, ptr noundef %devhint) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rt_dst = getelementptr inbounds %struct.rtentry, ptr %r, i32 0, i32 1
  %rt_gateway = getelementptr inbounds %struct.rtentry, ptr %r, i32 0, i32 2
  %0 = ptrtoint ptr %rt_dst to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rt_dst, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %1)
  %cmp.not = icmp eq i16 %1, 5
  br i1 %cmp.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp eq ptr %devhint, null
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %rt_gateway to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rt_gateway, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %3)
  %cmp5.not = icmp eq i16 %3, 5
  br i1 %cmp5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  %s_node = getelementptr inbounds %struct.rtentry, ptr %r, i32 0, i32 1, i32 1, i32 4
  %rt.0132 = load ptr, ptr @atalk_routes, align 4
  %tobool7.not133 = icmp eq ptr %rt.0132, null
  br i1 %tobool7.not133, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %rt_flags = getelementptr inbounds %struct.rtentry, ptr %r, i32 0, i32 4
  %4 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rt_flags, align 4
  %conv8 = zext i16 %5 to i32
  %sat_addr = getelementptr inbounds %struct.rtentry, ptr %r, i32 0, i32 1, i32 1, i32 2
  %and = and i32 %conv8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rt.0134 = phi ptr [ %rt.0132, %for.body.lr.ph ], [ %rt.0, %for.inc.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.atalk_route, ptr %rt.0134, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv8)
  %cmp9.not = icmp eq i32 %7, %conv8
  br i1 %cmp9.not, label %if.end12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %8 = ptrtoint ptr %sat_addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sat_addr, align 2
  %target = getelementptr inbounds %struct.atalk_route, ptr %rt.0134, i32 0, i32 1
  %10 = ptrtoint ptr %target to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %target, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp16 = icmp eq i16 %9, %11
  br i1 %cmp16, label %if.then18, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then18:                                        ; preds = %if.end12
  br i1 %tobool20.not, label %if.then18.for.end_crit_edge, label %if.end22

if.then18.for.end_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end22:                                         ; preds = %if.then18
  %12 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s_node, align 2
  %s_node26 = getelementptr inbounds %struct.atalk_route, ptr %rt.0134, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %s_node26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_node26, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp28 = icmp eq i8 %13, %15
  br i1 %cmp28, label %if.end22.for.end_crit_edge, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end22.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.atalk_route, ptr %rt.0134, i32 0, i32 4
  %16 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %16)
  %rt.0 = load ptr, ptr %next, align 4
  %tobool7.not = icmp eq ptr %rt.0, null
  br i1 %tobool7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge, %if.then18.for.end_crit_edge, %if.end.for.end_crit_edge
  %rt.0.lcssa = phi ptr [ null, %if.end.for.end_crit_edge ], [ %rt.0134, %if.end22.for.end_crit_edge ], [ %rt.0134, %if.then18.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %tobool7.not.lcssa = phi i1 [ true, %if.end.for.end_crit_edge ], [ false, %if.end22.for.end_crit_edge ], [ false, %if.then18.for.end_crit_edge ], [ true, %for.inc.for.end_crit_edge ]
  br i1 %tobool.not, label %if.then34, label %for.end.if.end80_crit_edge

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then34:                                        ; preds = %for.end
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  %iface.0142 = load ptr, ptr @atalk_interfaces, align 4
  %tobool36.not143 = icmp eq ptr %iface.0142, null
  br i1 %tobool36.not143, label %for.end76.thread, label %for.body37.lr.ph

for.end76.thread:                                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  br label %out_unlock

for.body37.lr.ph:                                 ; preds = %if.then34
  %sat_addr40 = getelementptr inbounds %struct.rtentry, ptr %r, i32 0, i32 2, i32 1, i32 2
  %17 = ptrtoint ptr %sat_addr40 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sat_addr40, align 2
  %s_node65 = getelementptr inbounds %struct.rtentry, ptr %r, i32 0, i32 2, i32 1, i32 4
  br label %for.body37

for.body37:                                       ; preds = %for.inc74.for.body37_crit_edge, %for.body37.lr.ph
  %iface.0145 = phi ptr [ %iface.0142, %for.body37.lr.ph ], [ %iface.0, %for.inc74.for.body37_crit_edge ]
  %riface.0144 = phi ptr [ null, %for.body37.lr.ph ], [ %riface.2, %for.inc74.for.body37_crit_edge ]
  %tobool38.not = icmp eq ptr %riface.0144, null
  br i1 %tobool38.not, label %land.lhs.true39, label %for.body37.if.end55_crit_edge

for.body37.if.end55_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

land.lhs.true39:                                  ; preds = %for.body37
  %19 = ptrtoint ptr %sat_addr40 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sat_addr40, align 2
  %nr_firstnet = getelementptr inbounds %struct.atalk_iface, ptr %iface.0145, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %nr_firstnet to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nr_firstnet, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp44.not = icmp ult i16 %20, %22
  br i1 %cmp44.not, label %land.lhs.true39.if.end55_crit_edge, label %land.lhs.true46

land.lhs.true39.if.end55_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

land.lhs.true46:                                  ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  %nr_lastnet = getelementptr inbounds %struct.atalk_iface, ptr %iface.0145, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %nr_lastnet to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nr_lastnet, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %24)
  %cmp52.not = icmp ugt i16 %20, %24
  %spec.select = select i1 %cmp52.not, ptr null, ptr %iface.0145
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true46, %land.lhs.true39.if.end55_crit_edge, %for.body37.if.end55_crit_edge
  %riface.1 = phi ptr [ %riface.0144, %for.body37.if.end55_crit_edge ], [ null, %land.lhs.true39.if.end55_crit_edge ], [ %spec.select, %land.lhs.true46 ]
  %address = getelementptr inbounds %struct.atalk_iface, ptr %iface.0145, i32 0, i32 1
  %25 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %address, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %26)
  %cmp61 = icmp eq i16 %18, %26
  br i1 %cmp61, label %land.lhs.true63, label %if.end55.for.inc74_crit_edge

if.end55.for.inc74_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc74

land.lhs.true63:                                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %s_node65 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %s_node65, align 2
  %s_node68 = getelementptr inbounds %struct.atalk_iface, ptr %iface.0145, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %s_node68 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %s_node68, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp70 = icmp eq i8 %28, %30
  %spec.select131 = select i1 %cmp70, ptr %iface.0145, ptr %riface.1
  br label %for.inc74

for.inc74:                                        ; preds = %land.lhs.true63, %if.end55.for.inc74_crit_edge
  %riface.2 = phi ptr [ %riface.1, %if.end55.for.inc74_crit_edge ], [ %spec.select131, %land.lhs.true63 ]
  %next75 = getelementptr inbounds %struct.atalk_iface, ptr %iface.0145, i32 0, i32 4
  %31 = ptrtoint ptr %next75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %iface.0 = load ptr, ptr %next75, align 4
  %tobool36.not = icmp eq ptr %iface.0, null
  br i1 %tobool36.not, label %for.end76, label %for.inc74.for.body37_crit_edge

for.inc74.for.body37_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body37

for.end76:                                        ; preds = %for.inc74
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  %tobool77.not = icmp eq ptr %riface.2, null
  br i1 %tobool77.not, label %for.end76.out_unlock_crit_edge, label %if.end79

for.end76.out_unlock_crit_edge:                   ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end79:                                         ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %riface.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %riface.2, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %for.end.if.end80_crit_edge
  %devhint.addr.0 = phi ptr [ %devhint, %for.end.if.end80_crit_edge ], [ %33, %if.end79 ]
  br i1 %tobool7.not.lcssa, label %if.then82, label %if.end80.if.end87_crit_edge

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then82:                                        ; preds = %if.end80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 2848, i32 noundef 20) #16
  %tobool83.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool83.not, label %if.then82.out_unlock_crit_edge, label %if.end85

if.then82.out_unlock_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end85:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  %35 = load ptr, ptr @atalk_routes, align 4
  %next86 = getelementptr inbounds %struct.atalk_route, ptr %call7.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %next86 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %next86, align 8
  store ptr %call7.i.i, ptr @atalk_routes, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end80.if.end87_crit_edge
  %rt.1 = phi ptr [ %rt.0.lcssa, %if.end80.if.end87_crit_edge ], [ %call7.i.i, %if.end85 ]
  %target88 = getelementptr inbounds %struct.atalk_route, ptr %rt.1, i32 0, i32 1
  %sat_addr89 = getelementptr inbounds %struct.rtentry, ptr %r, i32 0, i32 1, i32 1, i32 2
  %37 = ptrtoint ptr %sat_addr89 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %sat_addr89, align 2
  %39 = ptrtoint ptr %target88 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %target88, align 4
  %tobool.not.i = icmp eq ptr %devhint.addr.0, null
  br i1 %tobool.not.i, label %if.end87.dev_hold.exit_crit_edge, label %do.body1.i

if.end87.dev_hold.exit_crit_edge:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end87
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !157
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %devhint.addr.0, i32 0, i32 118
  %41 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcpu_refcnt.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %49, %43
  %50 = inttoptr i32 %add.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add13.i = add i32 %52, 1
  store i32 %add13.i, ptr %50, align 4
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !158
  %and.i.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !143

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #11, !srcloc !159
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end87.dev_hold.exit_crit_edge
  %54 = ptrtoint ptr %rt.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %devhint.addr.0, ptr %rt.1, align 4
  %rt_flags91 = getelementptr inbounds %struct.rtentry, ptr %r, i32 0, i32 4
  %55 = ptrtoint ptr %rt_flags91 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %rt_flags91, align 4
  %conv92 = zext i16 %56 to i32
  %flags93 = getelementptr inbounds %struct.atalk_route, ptr %rt.1, i32 0, i32 3
  %57 = ptrtoint ptr %flags93 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv92, ptr %flags93, align 4
  %gateway = getelementptr inbounds %struct.atalk_route, ptr %rt.1, i32 0, i32 2
  %sat_addr94 = getelementptr inbounds %struct.rtentry, ptr %r, i32 0, i32 2, i32 1, i32 2
  %58 = ptrtoint ptr %sat_addr94 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %sat_addr94, align 2
  %60 = ptrtoint ptr %gateway to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %gateway, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %dev_hold.exit, %if.then82.out_unlock_crit_edge, %for.end76.out_unlock_crit_edge, %for.end76.thread
  %retval1.0 = phi i32 [ 0, %dev_hold.exit ], [ -105, %if.then82.out_unlock_crit_edge ], [ -101, %for.end76.out_unlock_crit_edge ], [ -101, %for.end76.thread ]
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  br label %out

out:                                              ; preds = %out_unlock, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %retval1.1 = phi i32 [ -22, %entry.out_crit_edge ], [ %retval1.0, %out_unlock ], [ -22, %land.lhs.true.out_crit_edge ]
  ret i32 %retval1.1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_ifreq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atrtr_device_down(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  %0 = load ptr, ptr @atalk_routes, align 4
  %cmp.not13 = icmp eq ptr %0, null
  br i1 %cmp.not13, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tobool.not.i = icmp eq ptr %dev, null
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %1 = phi ptr [ %0, %while.body.lr.ph ], [ %22, %if.end.while.body_crit_edge ]
  %r.014 = phi ptr [ @atalk_routes, %while.body.lr.ph ], [ %r.1, %if.end.while.body_crit_edge ]
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp2 = icmp eq ptr %3, %dev
  %next = getelementptr inbounds %struct.atalk_route, ptr %1, i32 0, i32 4
  br i1 %cmp2, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.body
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %6 = ptrtoint ptr %r.014 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %r.014, align 4
  br i1 %tobool.not.i, label %if.then.dev_put.exit_crit_edge, label %do.body1.i

if.then.dev_put.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.then
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !157
  %8 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcpu_refcnt.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add13.i = add i32 %19, -1
  store i32 %add13.i, ptr %17, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !158
  %and.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !143

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #11, !srcloc !159
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.then.dev_put.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %dev_put.exit, %while.body.if.end_crit_edge
  %r.1 = phi ptr [ %r.014, %dev_put.exit ], [ %next, %while.body.if.end_crit_edge ]
  %21 = ptrtoint ptr %r.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %r.1, align 4
  %cmp.not = icmp eq ptr %22, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @atalk_routes_lock) #11
  %23 = load ptr, ptr @atrtr_default, align 4
  %cmp4 = icmp eq ptr %23, %dev
  br i1 %cmp4, label %if.then5, label %while.end.if.end6_crit_edge

while.end.if.end6_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  store ptr null, ptr @atrtr_default, align 4
  store i32 1, ptr getelementptr inbounds (%struct.atalk_route, ptr @atrtr_default, i32 0, i32 3), align 4
  store i16 0, ptr getelementptr inbounds (%struct.atalk_route, ptr @atrtr_default, i32 0, i32 2), align 4
  store i8 0, ptr getelementptr inbounds (%struct.atalk_route, ptr @atrtr_default, i32 0, i32 2, i32 1), align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %while.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @atif_add_device(ptr noundef %dev, ptr nocapture noundef readonly %sa) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end.dev_hold.exit_crit_edge, label %do.body1.i

if.end.dev_hold.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !157
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %2 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcpu_refcnt.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !133) #11
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
  %add.i = add i32 %10, %4
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add13.i = add i32 %13, 1
  store i32 %add13.i, ptr %11, align 4
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !158
  %and.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !143

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #11, !srcloc !159
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end.dev_hold.exit_crit_edge
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %call7.i.i, align 8
  %atalk_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 77
  %16 = ptrtoint ptr %atalk_ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %atalk_ptr, align 4
  %address = getelementptr inbounds %struct.atalk_iface, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %sa to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %sa, align 2
  %19 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %address, align 4
  %status = getelementptr inbounds %struct.atalk_iface, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %status, align 8
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  %21 = load ptr, ptr @atalk_interfaces, align 4
  %next = getelementptr inbounds %struct.atalk_iface, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %next, align 4
  store ptr %call7.i.i, ptr @atalk_interfaces, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  br label %out

out:                                              ; preds = %dev_hold.exit, %entry.out_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atif_probe_device(ptr noundef %atif) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_lastnet = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %nr_lastnet to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nr_lastnet, align 4
  %conv = zext i16 %1 to i32
  %nr_firstnet = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %nr_firstnet to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nr_firstnet, align 2
  %conv2 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv2
  %add = add nsw i32 %sub, 1
  %address = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 1
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %address, align 4
  %conv3 = zext i16 %5 to i32
  %s_node = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_node, align 2
  %conv5 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %if.then.if.end12_crit_edge, label %if.then10

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %rem = urem i32 %8, %add
  %add11 = add i32 %rem, %conv2
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %probe_net.0 = phi i32 [ %add11, %if.then10 ], [ %conv2, %if.then.if.end12_crit_edge ], [ %conv3, %entry.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp13 = icmp eq i8 %7, 0
  br i1 %cmp13, label %if.then15, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %and = and i32 %9, 255
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %probe_node.0 = phi i32 [ %and, %if.then15 ], [ %conv5, %if.end12.if.end16_crit_edge ]
  %status = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 2
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp17.not99 = icmp slt i32 %sub, -1
  br i1 %cmp17.not99, label %if.end16.for.end65_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end65_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end65

for.body:                                         ; preds = %for.inc63.for.body_crit_edge, %if.end16.for.body_crit_edge
  %netct.0101 = phi i32 [ %inc64, %for.inc63.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %probe_net.1100 = phi i32 [ %probe_net.2, %for.inc63.for.body_crit_edge ], [ %probe_net.0, %if.end16.for.body_crit_edge ]
  %conv19 = trunc i32 %probe_net.1100 to i16
  %12 = ptrtoint ptr %address to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv19, ptr %address, align 4
  br label %for.body25

for.body25:                                       ; preds = %if.end49.for.body25_crit_edge, %for.body
  %nodect.098 = phi i32 [ 0, %for.body ], [ %inc, %if.end49.for.body25_crit_edge ]
  %add26 = add nuw nsw i32 %nodect.098, %probe_node.0
  %conv28 = trunc i32 %add26 to i8
  %13 = ptrtoint ptr %s_node to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv28, ptr %s_node, align 2
  %conv33 = and i32 %add26, 255
  %14 = add nsw i32 %conv33, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %14)
  %15 = icmp ult i32 %14, 253
  br i1 %15, label %if.then41, label %for.body25.if.end49_crit_edge

for.body25.if.end49_crit_edge:                    ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then41:                                        ; preds = %for.body25
  tail call void @aarp_probe_network(ptr noundef %atif) #11
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  %and43 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then41.cleanup_crit_edge, label %if.then41.if.end49_crit_edge

if.then41.if.end49_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end49:                                         ; preds = %if.then41.if.end49_crit_edge, %for.body25.if.end49_crit_edge
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %and51 = and i32 %19, -3
  store i32 %and51, ptr %status, align 4
  %inc = add nuw nsw i32 %nodect.098, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %if.end49.for.body25_crit_edge

if.end49.for.body25_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body25

for.end:                                          ; preds = %if.end49
  %inc52 = add i32 %probe_net.1100, 1
  %20 = ptrtoint ptr %nr_lastnet to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nr_lastnet, align 4
  %conv55 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc52, i32 %conv55)
  %cmp56 = icmp sgt i32 %inc52, %conv55
  br i1 %cmp56, label %if.then58, label %for.end.for.inc63_crit_edge

for.end.for.inc63_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc63

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %nr_firstnet to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nr_firstnet, align 2
  %conv61 = zext i16 %23 to i32
  br label %for.inc63

for.inc63:                                        ; preds = %if.then58, %for.end.for.inc63_crit_edge
  %probe_net.2 = phi i32 [ %conv61, %if.then58 ], [ %inc52, %for.end.for.inc63_crit_edge ]
  %inc64 = add nuw nsw i32 %netct.0101, 1
  %cmp17.not = icmp sgt i32 %netct.0101, %sub
  br i1 %cmp17.not, label %for.inc63.for.end65_crit_edge, label %for.inc63.for.body_crit_edge

for.inc63.for.body_crit_edge:                     ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc63.for.end65_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end65

for.end65:                                        ; preds = %for.inc63.for.end65_crit_edge, %if.end16.for.end65_crit_edge
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end65, %if.then41.cleanup_crit_edge
  %storemerge.in = phi i32 [ %25, %for.end65 ], [ %17, %if.then41.cleanup_crit_edge ]
  %retval.0 = phi i32 [ -98, %for.end65 ], [ 0, %if.then41.cleanup_crit_edge ]
  %storemerge = and i32 %storemerge.in, -2
  %26 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge, ptr %status, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atif_drop_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  %0 = load ptr, ptr @atalk_interfaces, align 4
  %cmp.not10 = icmp eq ptr %0, null
  br i1 %cmp.not10, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tobool.not.i = icmp eq ptr %dev, null
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %atalk_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 77
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %1 = phi ptr [ %0, %while.body.lr.ph ], [ %23, %if.end.while.body_crit_edge ]
  %iface.011 = phi ptr [ @atalk_interfaces, %while.body.lr.ph ], [ %iface.1, %if.end.while.body_crit_edge ]
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp2 = icmp eq ptr %3, %dev
  %next = getelementptr inbounds %struct.atalk_iface, ptr %1, i32 0, i32 4
  br i1 %cmp2, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.body
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %6 = ptrtoint ptr %iface.011 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %iface.011, align 4
  br i1 %tobool.not.i, label %if.then.dev_put.exit_crit_edge, label %do.body1.i

if.then.dev_put.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.then
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !157
  %8 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcpu_refcnt.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add13.i = add i32 %19, -1
  store i32 %add13.i, ptr %17, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !158
  %and.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !143

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #11, !srcloc !159
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.then.dev_put.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #11
  %21 = ptrtoint ptr %atalk_ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %atalk_ptr, align 4
  br label %if.end

if.end:                                           ; preds = %dev_put.exit, %while.body.if.end_crit_edge
  %iface.1 = phi ptr [ %iface.011, %dev_put.exit ], [ %next, %while.body.if.end_crit_edge ]
  %22 = ptrtoint ptr %iface.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iface.1, align 4
  %cmp.not = icmp eq ptr %23, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @atalk_interfaces_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add_global(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atalk_dev_down(ptr noundef %dev) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @atrtr_device_down(ptr noundef %dev)
  tail call void @aarp_device_down(ptr noundef %dev) #11
  tail call fastcc void @atif_drop_device(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atif_proxy_probe_device(ptr noundef %atif, ptr noundef %proxy_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_lastnet = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %nr_lastnet to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nr_lastnet, align 4
  %conv = zext i16 %1 to i32
  %nr_firstnet = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %nr_firstnet to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nr_firstnet, align 2
  %conv2 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv2
  %add = add nsw i32 %sub, 1
  %address = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 1
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %address, align 4
  %conv3 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.then13_crit_edge

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  br i1 %tobool.not, label %if.then.for.body.lr.ph_crit_edge, label %if.then8

if.then.for.body.lr.ph_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %rem = urem i32 %6, %add
  %add9 = add i32 %rem, %conv2
  br label %if.then13

if.then13:                                        ; preds = %if.then8, %entry.if.then13_crit_edge
  %probe_net.0 = phi i32 [ %add9, %if.then8 ], [ %conv3, %entry.if.then13_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp15.not82 = icmp slt i32 %sub, -1
  br i1 %cmp15.not82, label %if.then13.cleanup54_crit_edge, label %if.then13.for.body.lr.ph_crit_edge

if.then13.for.body.lr.ph_crit_edge:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

if.then13.cleanup54_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup54

for.body.lr.ph:                                   ; preds = %if.then13.for.body.lr.ph_crit_edge, %if.then.for.body.lr.ph_crit_edge
  %8 = phi i32 [ %7, %if.then13.for.body.lr.ph_crit_edge ], [ %6, %if.then.for.body.lr.ph_crit_edge ]
  %probe_net.088 = phi i32 [ %probe_net.0, %if.then13.for.body.lr.ph_crit_edge ], [ %conv2, %if.then.for.body.lr.ph_crit_edge ]
  %s_node = getelementptr inbounds %struct.atalk_addr, ptr %proxy_addr, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc51.for.body_crit_edge, %for.body.lr.ph
  %netct.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc52, %for.inc51.for.body_crit_edge ]
  %probe_net.183 = phi i32 [ %probe_net.088, %for.body.lr.ph ], [ %probe_net.2, %for.inc51.for.body_crit_edge ]
  %conv17 = trunc i32 %probe_net.183 to i16
  %9 = ptrtoint ptr %proxy_addr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv17, ptr %proxy_addr, align 2
  br label %for.body22

for.body22:                                       ; preds = %for.inc.for.body22_crit_edge, %for.body
  %nodect.081 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body22_crit_edge ]
  %add23 = add i32 %nodect.081, %8
  %conv25 = trunc i32 %add23 to i8
  %10 = ptrtoint ptr %s_node to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv25, ptr %s_node, align 2
  %conv27 = and i32 %add23, 255
  %11 = add nsw i32 %conv27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %11)
  %12 = icmp ult i32 %11, 253
  br i1 %12, label %if.then34, label %for.body22.for.inc_crit_edge

for.body22.for.inc_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then34:                                        ; preds = %for.body22
  %call = tail call i32 @aarp_proxy_probe_network(ptr noundef %atif, ptr noundef %proxy_addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -98, i32 %call)
  %cmp35.not = icmp eq i32 %call, -98
  br i1 %cmp35.not, label %if.then34.for.inc_crit_edge, label %if.then34.cleanup54_crit_edge

if.then34.cleanup54_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup54

if.then34.for.inc_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.then34.for.inc_crit_edge, %for.body22.for.inc_crit_edge
  %inc = add nuw nsw i32 %nodect.081, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body22_crit_edge

for.inc.for.body22_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22

for.end:                                          ; preds = %for.inc
  %inc40 = add i32 %probe_net.183, 1
  %13 = ptrtoint ptr %nr_lastnet to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nr_lastnet, align 4
  %conv43 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc40, i32 %conv43)
  %cmp44 = icmp sgt i32 %inc40, %conv43
  br i1 %cmp44, label %if.then46, label %for.end.for.inc51_crit_edge

for.end.for.inc51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc51

if.then46:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %nr_firstnet to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nr_firstnet, align 2
  %conv49 = zext i16 %16 to i32
  br label %for.inc51

for.inc51:                                        ; preds = %if.then46, %for.end.for.inc51_crit_edge
  %probe_net.2 = phi i32 [ %conv49, %if.then46 ], [ %inc40, %for.end.for.inc51_crit_edge ]
  %inc52 = add nuw nsw i32 %netct.084, 1
  %cmp15.not = icmp sgt i32 %netct.084, %sub
  br i1 %cmp15.not, label %for.inc51.cleanup54_crit_edge, label %for.inc51.for.body_crit_edge

for.inc51.for.body_crit_edge:                     ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc51.cleanup54_crit_edge:                    ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup54

cleanup54:                                        ; preds = %for.inc51.cleanup54_crit_edge, %if.then34.cleanup54_crit_edge, %if.then13.cleanup54_crit_edge
  %retval.4 = phi i32 [ -98, %if.then13.cleanup54_crit_edge ], [ %call, %if.then34.cleanup54_crit_edge ], [ -98, %for.inc51.cleanup54_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aarp_proxy_remove(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_user_ifreq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aarp_probe_network(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aarp_device_down(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aarp_proxy_probe_network(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aarp_send_ddp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atalk_sum_skb(ptr nocapture noundef readonly %skb, i32 noundef %offset, i32 noundef %len, i32 noundef %sum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  %sub = sub i32 %sub.i, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %4 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not5.i = icmp eq i32 %4, 0
  br i1 %tobool.not5.i, label %if.then.atalk_sum_partial.exit_crit_edge, label %while.body.i.preheader

if.then.atalk_sum_partial.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_sum_partial.exit

while.body.i.preheader:                           ; preds = %if.then
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %offset
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %sum.addr.08.i = phi i32 [ %conv2.i, %while.body.i.while.body.i_crit_edge ], [ %sum, %while.body.i.preheader ]
  %len.addr.07.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %4, %while.body.i.preheader ]
  %data.addr.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr, %while.body.i.preheader ]
  %dec.i = add i32 %len.addr.07.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %data.addr.06.i, i32 1
  %7 = ptrtoint ptr %data.addr.06.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.addr.06.i, align 1
  %conv.i = zext i8 %8 to i32
  %add.i = add i32 %sum.addr.08.i, %conv.i
  %conv1.i = trunc i32 %add.i to i16
  %or.i.i = tail call i16 @llvm.fshl.i16(i16 %conv1.i, i16 %conv1.i, i16 1) #11
  %conv2.i = zext i16 %or.i.i to i32
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.atalk_sum_partial.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.atalk_sum_partial.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_sum_partial.exit

atalk_sum_partial.exit:                           ; preds = %while.body.i.atalk_sum_partial.exit_crit_edge, %if.then.atalk_sum_partial.exit_crit_edge
  %sum.addr.0.lcssa.i = phi i32 [ %sum, %if.then.atalk_sum_partial.exit_crit_edge ], [ %conv2.i, %while.body.i.atalk_sum_partial.exit_crit_edge ]
  %sub4 = sub i32 %len, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %cmp5 = icmp eq i32 %sub4, 0
  br i1 %cmp5, label %atalk_sum_partial.exit.cleanup150_crit_edge, label %if.end7

atalk_sum_partial.exit.cleanup150_crit_edge:      ; preds = %atalk_sum_partial.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup150

if.end7:                                          ; preds = %atalk_sum_partial.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %4, %offset
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry.if.end8_crit_edge
  %len.addr.0 = phi i32 [ %sub4, %if.end7 ], [ %len, %entry.if.end8_crit_edge ]
  %sum.addr.0 = phi i32 [ %sum.addr.0.lcssa.i, %if.end7 ], [ %sum, %entry.if.end8_crit_edge ]
  %offset.addr.0 = phi i32 [ %add, %if.end7 ], [ %offset, %entry.if.end8_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %nr_frags262 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %nr_frags262 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nr_frags262, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp10264.not = icmp eq i8 %12, 0
  br i1 %cmp10264.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %13 = phi ptr [ %45, %for.inc.for.body_crit_edge ], [ %10, %if.end8.for.body_crit_edge ]
  %offset.addr.1270 = phi i32 [ %offset.addr.3, %for.inc.for.body_crit_edge ], [ %offset.addr.0, %if.end8.for.body_crit_edge ]
  %i.0268 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %start.0267 = phi i32 [ %add37, %for.inc.for.body_crit_edge ], [ %sub.i, %if.end8.for.body_crit_edge ]
  %sum.addr.1266 = phi i32 [ %sum.addr.2, %for.inc.for.body_crit_edge ], [ %sum.addr.0, %if.end8.for.body_crit_edge ]
  %len.addr.1265 = phi i32 [ %len.addr.2, %for.inc.for.body_crit_edge ], [ %len.addr.0, %if.end8.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %13, i32 0, i32 12, i32 %i.0268
  %add13 = add i32 %offset.addr.1270, %len.addr.1265
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0267, i32 %add13)
  %cmp14 = icmp sgt i32 %start.0267, %add13
  br i1 %cmp14, label %do.end, label %for.body.if.end29_crit_edge, !prof !143

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 955, i32 noundef 9, ptr noundef null) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end, %for.body.if.end29_crit_edge
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %13, i32 0, i32 12, i32 %i.0268, i32 1
  %14 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bv_len.i, align 4
  %add37 = add i32 %15, %start.0267
  %sub38 = sub i32 %add37, %offset.addr.1270
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub38)
  %cmp39 = icmp sgt i32 %sub38, 0
  br i1 %cmp39, label %if.then41, label %if.end29.for.inc_crit_edge

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then41:                                        ; preds = %if.end29
  %16 = tail call i32 @llvm.smin.i32(i32 %sub38, i32 %len.addr.1265)
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %19 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %19, 512
  %20 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !161
  %24 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i.i1.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 213
  %28 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %29, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !162
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %18, i32 noundef %or.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not5.i221 = icmp eq i32 %16, 0
  br i1 %tobool.not5.i221, label %if.then41.atalk_sum_partial.exit235_crit_edge, label %while.body.i233.preheader

if.then41.atalk_sum_partial.exit235_crit_edge:    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_sum_partial.exit235

while.body.i233.preheader:                        ; preds = %if.then41
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %13, i32 0, i32 12, i32 %i.0268, i32 2
  %30 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bv_offset.i, align 4
  %add.ptr49 = getelementptr i8, ptr %call.i.i, i32 %31
  %add.ptr50 = getelementptr i8, ptr %add.ptr49, i32 %offset.addr.1270
  %idx.neg = sub i32 0, %start.0267
  %add.ptr51 = getelementptr i8, ptr %add.ptr50, i32 %idx.neg
  br label %while.body.i233

while.body.i233:                                  ; preds = %while.body.i233.while.body.i233_crit_edge, %while.body.i233.preheader
  %sum.addr.08.i222 = phi i32 [ %conv2.i231, %while.body.i233.while.body.i233_crit_edge ], [ %sum.addr.1266, %while.body.i233.preheader ]
  %len.addr.07.i223 = phi i32 [ %dec.i225, %while.body.i233.while.body.i233_crit_edge ], [ %16, %while.body.i233.preheader ]
  %data.addr.06.i224 = phi ptr [ %incdec.ptr.i226, %while.body.i233.while.body.i233_crit_edge ], [ %add.ptr51, %while.body.i233.preheader ]
  %dec.i225 = add i32 %len.addr.07.i223, -1
  %incdec.ptr.i226 = getelementptr i8, ptr %data.addr.06.i224, i32 1
  %32 = ptrtoint ptr %data.addr.06.i224 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data.addr.06.i224, align 1
  %conv.i227 = zext i8 %33 to i32
  %add.i228 = add i32 %sum.addr.08.i222, %conv.i227
  %conv1.i229 = trunc i32 %add.i228 to i16
  %or.i.i230 = tail call i16 @llvm.fshl.i16(i16 %conv1.i229, i16 %conv1.i229, i16 1) #11
  %conv2.i231 = zext i16 %or.i.i230 to i32
  %tobool.not.i232 = icmp eq i32 %dec.i225, 0
  br i1 %tobool.not.i232, label %while.body.i233.atalk_sum_partial.exit235_crit_edge, label %while.body.i233.while.body.i233_crit_edge

while.body.i233.while.body.i233_crit_edge:        ; preds = %while.body.i233
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i233

while.body.i233.atalk_sum_partial.exit235_crit_edge: ; preds = %while.body.i233
  call void @__sanitizer_cov_trace_pc() #13
  br label %atalk_sum_partial.exit235

atalk_sum_partial.exit235:                        ; preds = %while.body.i233.atalk_sum_partial.exit235_crit_edge, %if.then41.atalk_sum_partial.exit235_crit_edge
  %sum.addr.0.lcssa.i234 = phi i32 [ %sum.addr.1266, %if.then41.atalk_sum_partial.exit235_crit_edge ], [ %conv2.i231, %while.body.i233.atalk_sum_partial.exit235_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !163
  %34 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i.i1.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 213
  %38 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %39, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !164
  %40 = tail call i32 @llvm.read_register.i32(metadata !133) #11
  %and.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %sub59 = sub i32 %len.addr.1265, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub59)
  %tobool60.not = icmp eq i32 %sub59, 0
  %add63 = add i32 %16, %offset.addr.1270
  br i1 %tobool60.not, label %atalk_sum_partial.exit235.cleanup150_crit_edge, label %atalk_sum_partial.exit235.for.inc_crit_edge

atalk_sum_partial.exit235.for.inc_crit_edge:      ; preds = %atalk_sum_partial.exit235
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

atalk_sum_partial.exit235.cleanup150_crit_edge:   ; preds = %atalk_sum_partial.exit235
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup150

for.inc:                                          ; preds = %atalk_sum_partial.exit235.for.inc_crit_edge, %if.end29.for.inc_crit_edge
  %len.addr.2 = phi i32 [ %sub59, %atalk_sum_partial.exit235.for.inc_crit_edge ], [ %len.addr.1265, %if.end29.for.inc_crit_edge ]
  %sum.addr.2 = phi i32 [ %sum.addr.0.lcssa.i234, %atalk_sum_partial.exit235.for.inc_crit_edge ], [ %sum.addr.1266, %if.end29.for.inc_crit_edge ]
  %offset.addr.3 = phi i32 [ %add63, %atalk_sum_partial.exit235.for.inc_crit_edge ], [ %offset.addr.1270, %if.end29.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0268, 1
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %47 to i32
  %cmp10 = icmp ult i32 %inc, %conv
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %len.addr.1.lcssa = phi i32 [ %len.addr.0, %if.end8.for.end_crit_edge ], [ %len.addr.2, %for.inc.for.end_crit_edge ]
  %sum.addr.1.lcssa = phi i32 [ %sum.addr.0, %if.end8.for.end_crit_edge ], [ %sum.addr.2, %for.inc.for.end_crit_edge ]
  %start.0.lcssa = phi i32 [ %sub.i, %if.end8.for.end_crit_edge ], [ %add37, %for.inc.for.end_crit_edge ]
  %offset.addr.1.lcssa = phi i32 [ %offset.addr.0, %if.end8.for.end_crit_edge ], [ %offset.addr.3, %for.inc.for.end_crit_edge ]
  %.lcssa = phi ptr [ %10, %if.end8.for.end_crit_edge ], [ %45, %for.inc.for.end_crit_edge ]
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %.lcssa, i32 0, i32 6
  %48 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %48)
  %frag_iter.0275 = load ptr, ptr %frag_list, align 8
  %tobool71.not276 = icmp eq ptr %frag_iter.0275, null
  br i1 %tobool71.not276, label %for.end.do.body131_crit_edge, label %for.end.for.body72_crit_edge

for.end.for.body72_crit_edge:                     ; preds = %for.end
  br label %for.body72

for.end.do.body131_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body131

for.body72:                                       ; preds = %cleanup126.for.body72_crit_edge, %for.end.for.body72_crit_edge
  %frag_iter.0281 = phi ptr [ %frag_iter.0, %cleanup126.for.body72_crit_edge ], [ %frag_iter.0275, %for.end.for.body72_crit_edge ]
  %offset.addr.5280 = phi i32 [ %offset.addr.7, %cleanup126.for.body72_crit_edge ], [ %offset.addr.1.lcssa, %for.end.for.body72_crit_edge ]
  %start.2279 = phi i32 [ %add108, %cleanup126.for.body72_crit_edge ], [ %start.0.lcssa, %for.end.for.body72_crit_edge ]
  %sum.addr.4278 = phi i32 [ %sum.addr.6, %cleanup126.for.body72_crit_edge ], [ %sum.addr.1.lcssa, %for.end.for.body72_crit_edge ]
  %len.addr.4277 = phi i32 [ %len.addr.6, %cleanup126.for.body72_crit_edge ], [ %len.addr.1.lcssa, %for.end.for.body72_crit_edge ]
  %add75 = add i32 %offset.addr.5280, %len.addr.4277
  call void @__sanitizer_cov_trace_cmp4(i32 %start.2279, i32 %add75)
  %cmp76 = icmp sgt i32 %start.2279, %add75
  br i1 %cmp76, label %do.end93, label %for.body72.if.end99_crit_edge, !prof !143

for.body72.if.end99_crit_edge:                    ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

do.end93:                                         ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 978, i32 noundef 9, ptr noundef null) #11
  br label %if.end99

if.end99:                                         ; preds = %do.end93, %for.body72.if.end99_crit_edge
  %len107 = getelementptr inbounds %struct.sk_buff, ptr %frag_iter.0281, i32 0, i32 6
  %49 = ptrtoint ptr %len107 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len107, align 4
  %add108 = add i32 %50, %start.2279
  %sub109 = sub i32 %add108, %offset.addr.5280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub109)
  %cmp110 = icmp sgt i32 %sub109, 0
  br i1 %cmp110, label %if.then112, label %if.end99.cleanup126_crit_edge

if.end99.cleanup126_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup126

if.then112:                                       ; preds = %if.end99
  %51 = tail call i32 @llvm.smin.i32(i32 %sub109, i32 %len.addr.4277)
  %sub117 = sub i32 %offset.addr.5280, %start.2279
  %call118 = tail call fastcc i32 @atalk_sum_skb(ptr noundef nonnull %frag_iter.0281, i32 noundef %sub117, i32 noundef %51, i32 noundef %sum.addr.4278)
  %sub119 = sub i32 %len.addr.4277, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub119)
  %cmp120 = icmp eq i32 %sub119, 0
  br i1 %cmp120, label %if.then112.cleanup150_crit_edge, label %if.end123

if.then112.cleanup150_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup150

if.end123:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  %add124 = add i32 %51, %offset.addr.5280
  br label %cleanup126

cleanup126:                                       ; preds = %if.end123, %if.end99.cleanup126_crit_edge
  %len.addr.6 = phi i32 [ %sub119, %if.end123 ], [ %len.addr.4277, %if.end99.cleanup126_crit_edge ]
  %sum.addr.6 = phi i32 [ %call118, %if.end123 ], [ %sum.addr.4278, %if.end99.cleanup126_crit_edge ]
  %offset.addr.7 = phi i32 [ %add124, %if.end123 ], [ %offset.addr.5280, %if.end99.cleanup126_crit_edge ]
  %52 = ptrtoint ptr %frag_iter.0281 to i32
  call void @__asan_load4_noabort(i32 %52)
  %frag_iter.0 = load ptr, ptr %frag_iter.0281, align 8
  %tobool71.not = icmp eq ptr %frag_iter.0, null
  br i1 %tobool71.not, label %cleanup126.do.body131_crit_edge, label %cleanup126.for.body72_crit_edge

cleanup126.for.body72_crit_edge:                  ; preds = %cleanup126
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body72

cleanup126.do.body131_crit_edge:                  ; preds = %cleanup126
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body131

do.body131:                                       ; preds = %cleanup126.do.body131_crit_edge, %for.end.do.body131_crit_edge
  %len.addr.4.lcssa = phi i32 [ %len.addr.1.lcssa, %for.end.do.body131_crit_edge ], [ %len.addr.6, %cleanup126.do.body131_crit_edge ]
  %sum.addr.4.lcssa = phi i32 [ %sum.addr.1.lcssa, %for.end.do.body131_crit_edge ], [ %sum.addr.6, %cleanup126.do.body131_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.4.lcssa)
  %cmp132 = icmp sgt i32 %len.addr.4.lcssa, 0
  br i1 %cmp132, label %do.body141, label %do.body131.cleanup150_crit_edge, !prof !143

do.body131.cleanup150_crit_edge:                  ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup150

do.body141:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/appletalk/ddp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 993, 0\0A.popsection", ""() #11, !srcloc !165
  unreachable

cleanup150:                                       ; preds = %do.body131.cleanup150_crit_edge, %if.then112.cleanup150_crit_edge, %atalk_sum_partial.exit235.cleanup150_crit_edge, %atalk_sum_partial.exit.cleanup150_crit_edge
  %retval.6 = phi i32 [ %sum.addr.0.lcssa.i, %atalk_sum_partial.exit.cleanup150_crit_edge ], [ %sum.addr.4.lcssa, %do.body131.cleanup150_crit_edge ], [ %call118, %if.then112.cleanup150_crit_edge ], [ %sum.addr.0.lcssa.i234, %atalk_sum_partial.exit235.cleanup150_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @atalk_search_socket(ptr nocapture noundef %to, ptr nocapture noundef readonly %atif) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @atalk_sockets_lock) #11
  %0 = load ptr, ptr @atalk_sockets, align 4
  %tobool.not = icmp eq ptr %0, null
  %add.ptr = getelementptr i8, ptr %0, i32 -84
  %tobool2.not101111 = icmp eq ptr %add.ptr, null
  %tobool2.not101 = or i1 %tobool.not, %tobool2.not101111
  br i1 %tobool2.not101, label %entry.cleanup74_crit_edge, label %for.body.lr.ph

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup74

for.body.lr.ph:                                   ; preds = %entry
  %sat_port = getelementptr inbounds %struct.sockaddr_at, ptr %to, i32 0, i32 1
  %1 = ptrtoint ptr %sat_port to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sat_port, align 2
  %sat_addr = getelementptr inbounds %struct.sockaddr_at, ptr %to, i32 0, i32 2
  %s_node = getelementptr inbounds %struct.sockaddr_at, ptr %to, i32 0, i32 2, i32 1
  %s_node52 = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %s.0102 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr70, %for.inc.for.body_crit_edge ]
  %src_port = getelementptr inbounds %struct.atalk_sock, ptr %s.0102, i32 0, i32 6
  %3 = ptrtoint ptr %src_port to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %src_port, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp.not = icmp eq i8 %2, %4
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %sat_addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sat_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp6 = icmp eq i16 %6, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_node, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp10 = icmp eq i8 %8, -1
  br i1 %cmp10, label %land.lhs.true.cleanup74_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true.cleanup74_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup74

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %src_net = getelementptr inbounds %struct.atalk_sock, ptr %s.0102, i32 0, i32 2
  %9 = ptrtoint ptr %src_net to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %src_net, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %10)
  %cmp18 = icmp eq i16 %6, %10
  br i1 %cmp18, label %land.lhs.true20, label %if.end13.if.end39_crit_edge

if.end13.if.end39_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true20:                                  ; preds = %if.end13
  %11 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s_node, align 2
  %src_node = getelementptr inbounds %struct.atalk_sock, ptr %s.0102, i32 0, i32 4
  %13 = ptrtoint ptr %src_node to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %src_node, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp25 = icmp eq i8 %12, %14
  %15 = freeze i1 %cmp25
  br i1 %15, label %land.lhs.true20.cleanup74_crit_edge, label %switch.early.test

land.lhs.true20.cleanup74_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup74

switch.early.test:                                ; preds = %land.lhs.true20
  %16 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %12, label %switch.early.test.if.end39_crit_edge [
    i8 -1, label %switch.early.test.cleanup74_crit_edge
    i8 0, label %switch.early.test.cleanup74_crit_edge117
  ]

switch.early.test.cleanup74_crit_edge117:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup74

switch.early.test.cleanup74_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup74

switch.early.test.if.end39_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end39:                                         ; preds = %switch.early.test.if.end39_crit_edge, %if.end13.if.end39_crit_edge
  %17 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %s_node, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp43 = icmp ne i8 %18, 0
  %brmerge = select i1 %cmp43, i1 true, i1 %cmp6
  br i1 %brmerge, label %if.end39.for.inc_crit_edge, label %land.lhs.true51

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true51:                                  ; preds = %if.end39
  %19 = ptrtoint ptr %s_node52 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %s_node52, align 2
  %src_node54 = getelementptr inbounds %struct.atalk_sock, ptr %s.0102, i32 0, i32 4
  %21 = ptrtoint ptr %src_node54 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %src_node54, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp56 = icmp eq i8 %20, %22
  br i1 %cmp56, label %if.then58, label %land.lhs.true51.for.inc_crit_edge

land.lhs.true51.for.inc_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then58:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %s_node to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %20, ptr %s_node, align 2
  br label %cleanup74

for.inc:                                          ; preds = %land.lhs.true51.for.inc_crit_edge, %if.end39.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = getelementptr inbounds %struct.sock_common, ptr %s.0102, i32 0, i32 15
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool66.not = icmp eq ptr %26, null
  %add.ptr70 = getelementptr i8, ptr %26, i32 -84
  %tobool2.not113 = icmp eq ptr %add.ptr70, null
  %tobool2.not = or i1 %tobool66.not, %tobool2.not113
  br i1 %tobool2.not, label %for.inc.cleanup74_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup74_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup74

cleanup74:                                        ; preds = %for.inc.cleanup74_crit_edge, %if.then58, %switch.early.test.cleanup74_crit_edge, %switch.early.test.cleanup74_crit_edge117, %land.lhs.true20.cleanup74_crit_edge, %land.lhs.true.cleanup74_crit_edge, %entry.cleanup74_crit_edge
  %s.0100 = phi ptr [ %s.0102, %if.then58 ], [ null, %entry.cleanup74_crit_edge ], [ %s.0102, %land.lhs.true.cleanup74_crit_edge ], [ %s.0102, %land.lhs.true20.cleanup74_crit_edge ], [ %s.0102, %switch.early.test.cleanup74_crit_edge ], [ %s.0102, %switch.early.test.cleanup74_crit_edge117 ], [ null, %for.inc.cleanup74_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @atalk_sockets_lock) #11
  ret ptr %s.0100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddp_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i = icmp eq ptr %3, @init_net
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp = icmp eq i32 %event, 2
  %or.cond = and i1 %cmp, %cmp.i
  br i1 %or.cond, label %if.then3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @atrtr_device_down(ptr noundef %1) #11
  tail call void @aarp_device_down(ptr noundef %1) #11
  tail call fastcc void @atif_drop_device(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltalk_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %1, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.freeit_crit_edge

entry.freeit_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %freeit

if.end:                                           ; preds = %entry
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i, align 2
  %conv.i49 = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i49
  %arrayidx = getelementptr i8, ptr %add.ptr.i, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then4, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then4:                                         ; preds = %if.end
  %atalk_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 77
  %8 = ptrtoint ptr %atalk_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %atalk_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %address.i = getelementptr inbounds %struct.atalk_iface, ptr %9, i32 0, i32 1
  %tobool6.not72 = icmp eq ptr %address.i, null
  %tobool6.not = select i1 %tobool.not.i, i1 true, i1 %tobool6.not72
  br i1 %tobool6.not, label %if.then4.freeit_crit_edge, label %lor.lhs.false

if.then4.freeit_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %freeit

lor.lhs.false:                                    ; preds = %if.then4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %12 = add i32 %11, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1022, i32 %12)
  %13 = icmp ult i32 %12, -1022
  br i1 %13, label %lor.lhs.false.freeit_crit_edge, label %if.end14

lor.lhs.false.freeit_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %freeit

if.end14:                                         ; preds = %lor.lhs.false
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #11
  %14 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i.not.i = icmp eq i32 %15, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end14
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #11
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread62, !prof !143

skb_share_check.exit.thread62:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %return

skb_share_check.exit:                             ; preds = %if.end14
  %tobool16.not = icmp eq ptr %skb, null
  br i1 %tobool16.not, label %skb_share_check.exit.return_crit_edge, label %skb_share_check.exit.cleanup_crit_edge

skb_share_check.exit.cleanup_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_share_check.exit.return_crit_edge:            ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cleanup:                                          ; preds = %skb_share_check.exit.cleanup_crit_edge, %skb_share_check.exit.thread62
  %skb.addr.0.i65 = phi ptr [ %call7.i, %skb_share_check.exit.thread62 ], [ %skb, %skb_share_check.exit.cleanup_crit_edge ]
  %call19 = tail call ptr @skb_push(ptr noundef nonnull %skb.addr.0.i65, i32 noundef 8) #11
  %head.i50 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i65, i32 0, i32 18
  %16 = ptrtoint ptr %head.i50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i50, align 8
  %mac_header.i51 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i65, i32 0, i32 15, i32 0, i32 21
  %18 = ptrtoint ptr %mac_header.i51 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mac_header.i51, align 2
  %conv.i52 = zext i16 %19 to i32
  %add.ptr.i53 = getelementptr i8, ptr %17, i32 %conv.i52
  %20 = ptrtoint ptr %add.ptr.i53 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i53, align 1
  %deh_dnode = getelementptr inbounds %struct.ddpehdr, ptr %call19, i32 0, i32 4
  %22 = ptrtoint ptr %deh_dnode to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %deh_dnode, align 2
  %23 = load ptr, ptr %head.i50, align 8
  %24 = load i16, ptr %mac_header.i51, align 2
  %conv.i56 = zext i16 %24 to i32
  %add.ptr.i57 = getelementptr i8, ptr %23, i32 %conv.i56
  %arrayidx23 = getelementptr i8, ptr %add.ptr.i57, i32 1
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx23, align 1
  %deh_snode = getelementptr inbounds %struct.ddpehdr, ptr %call19, i32 0, i32 5
  %27 = ptrtoint ptr %deh_snode to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %deh_snode, align 1
  %28 = ptrtoint ptr %address.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %address.i, align 2
  %deh_dnet = getelementptr inbounds %struct.ddpehdr, ptr %call19, i32 0, i32 2
  %30 = ptrtoint ptr %deh_dnet to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %deh_dnet, align 2
  %31 = load i16, ptr %address.i, align 2
  %deh_snet = getelementptr inbounds %struct.ddpehdr, ptr %call19, i32 0, i32 3
  %32 = ptrtoint ptr %deh_snet to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %deh_snet, align 2
  %deh_sum = getelementptr inbounds %struct.ddpehdr, ptr %call19, i32 0, i32 1
  %33 = ptrtoint ptr %deh_sum to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %deh_sum, align 2
  %len25 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i65, i32 0, i32 6
  %34 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len25, align 4
  %36 = trunc i32 %35 to i16
  %conv26 = add i16 %36, 15360
  %37 = ptrtoint ptr %call19 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv26, ptr %call19, align 2
  br label %if.end28

if.end28:                                         ; preds = %cleanup, %if.end.if.end28_crit_edge
  %skb.addr.1 = phi ptr [ %skb.addr.0.i65, %cleanup ], [ %skb, %if.end.if.end28_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %head.i58 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 18
  %40 = ptrtoint ptr %head.i58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i58, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i59 = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 19
  %42 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i59, ptr %transport_header.i, align 2
  %call29 = tail call i32 @atalk_rcv(ptr noundef %skb.addr.1, ptr noundef %dev, ptr noundef %pt, ptr noundef %orig_dev)
  br label %return

freeit:                                           ; preds = %lor.lhs.false.freeit_crit_edge, %if.then4.freeit_crit_edge, %entry.freeit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %return

return:                                           ; preds = %freeit, %if.end28, %skb_share_check.exit.return_crit_edge, %skb_share_check.exit.thread
  %retval.1 = phi i32 [ 0, %freeit ], [ %call29, %if.end28 ], [ 0, %skb_share_check.exit.return_crit_edge ], [ 0, %skb_share_check.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !48, !50, !51, !53, !55, !56, !57, !58, !60, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !113, !114, !115, !116, !118, !120, !121, !122, !123, !125, !127, !129, !131}
!llvm.named.register.sp = !{!133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @atalk_sockets, !1, !"atalk_sockets", i1 false, i1 false}
!1 = !{!"../net/appletalk/ddp.c", i32 73, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/appletalk/ddp.c", i32 74, i32 1}
!4 = !{ptr @atalk_sockets_lock, !3, !"atalk_sockets_lock", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/appletalk/ddp.c", i32 189, i32 1}
!7 = !{ptr @atalk_routes_lock, !6, !"atalk_routes_lock", i1 false, i1 false}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/appletalk/ddp.c", i32 192, i32 1}
!10 = !{ptr @atalk_interfaces_lock, !9, !"atalk_interfaces_lock", i1 false, i1 false}
!11 = !{ptr @__ksymtab_atrtr_get_dev, !12, !"__ksymtab_atrtr_get_dev", i1 false, i1 false}
!12 = !{!"../net/appletalk/ddp.c", i32 1953, i32 1}
!13 = !{ptr @__ksymtab_atalk_find_dev_addr, !14, !"__ksymtab_atalk_find_dev_addr", i1 false, i1 false}
!14 = !{!"../net/appletalk/ddp.c", i32 1954, i32 1}
!15 = !{ptr @__initcall__kmod_appletalk__492_2012_atalk_init6, !16, !"__initcall__kmod_appletalk__492_2012_atalk_init6", i1 false, i1 false}
!16 = !{!"../net/appletalk/ddp.c", i32 2012, i32 1}
!17 = !{ptr @__exitcall_atalk_exit, !18, !"__exitcall_atalk_exit", i1 false, i1 false}
!18 = !{!"../net/appletalk/ddp.c", i32 2037, i32 1}
!19 = !{ptr @__UNIQUE_ID_file493, !20, !"__UNIQUE_ID_file493", i1 false, i1 false}
!20 = !{!"../net/appletalk/ddp.c", i32 2039, i32 1}
!21 = !{ptr @__UNIQUE_ID_license494, !20, !"__UNIQUE_ID_license494", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author495, !23, !"__UNIQUE_ID_author495", i1 false, i1 false}
!23 = !{!"../net/appletalk/ddp.c", i32 2040, i32 1}
!24 = !{ptr @__UNIQUE_ID_description496, !25, !"__UNIQUE_ID_description496", i1 false, i1 false}
!25 = !{!"../net/appletalk/ddp.c", i32 2041, i32 1}
!26 = !{ptr @__UNIQUE_ID_alias497, !27, !"__UNIQUE_ID_alias497", i1 false, i1 false}
!27 = !{!"../net/appletalk/ddp.c", i32 2042, i32 1}
!28 = !{ptr @ddp_dl, !29, !"ddp_dl", i1 false, i1 false}
!29 = !{!"../net/appletalk/ddp.c", i32 64, i32 24}
!30 = !{ptr @aarp_dl, !31, !"aarp_dl", i1 false, i1 false}
!31 = !{!"../net/appletalk/ddp.c", i32 64, i32 33}
!32 = !{ptr @atalk_routes, !33, !"atalk_routes", i1 false, i1 false}
!33 = !{!"../net/appletalk/ddp.c", i32 188, i32 21}
!34 = !{ptr @atalk_interfaces, !35, !"atalk_interfaces", i1 false, i1 false}
!35 = !{!"../net/appletalk/ddp.c", i32 191, i32 21}
!36 = !{ptr @atrtr_default, !37, !"atrtr_default", i1 false, i1 false}
!37 = !{!"../net/appletalk/ddp.c", i32 195, i32 20}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/appletalk/ddp.c", i32 1971, i32 3}
!40 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @atalk_init._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @atalk_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @atalk_family_ops, !45, !"atalk_family_ops", i1 false, i1 false}
!45 = !{!"../net/appletalk/ddp.c", i32 1907, i32 38}
!46 = !{ptr @atalk_dgram_ops, !47, !"atalk_dgram_ops", i1 false, i1 false}
!47 = !{!"../net/appletalk/ddp.c", i32 1913, i32 31}
!48 = !{ptr @atalk_destroy_socket.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../net/appletalk/ddp.c", i32 174, i32 3}
!50 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/net/sock.h", i32 729, i32 3}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/appletalk/ddp.c", i32 1215, i32 3}
!55 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @atalk_connect._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @atalk_connect._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!60 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!63 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!65 = !{ptr @atif_ioctl.aarp_mcast, !66, !"aarp_mcast", i1 false, i1 false}
!66 = !{!"../net/appletalk/ddp.c", i32 658, i32 14}
!67 = !{ptr @.str.13, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/appletalk/ddp.c", i32 702, i32 4}
!69 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @atif_ioctl._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @atif_ioctl._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/appletalk/ddp.c", i32 766, i32 5}
!74 = !{ptr @atif_ioctl._entry.15, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @atif_ioctl._entry_ptr.17, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/appletalk/ddp.c", i32 1620, i32 2}
!78 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @atalk_sendmsg._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @atalk_sendmsg._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/appletalk/ddp.c", i32 1641, i32 2}
!83 = !{ptr @atalk_sendmsg._entry.20, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @atalk_sendmsg._entry_ptr.22, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/appletalk/ddp.c", i32 1670, i32 2}
!87 = !{ptr @atalk_sendmsg._entry.23, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @atalk_sendmsg._entry_ptr.25, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/appletalk/ddp.c", i32 1681, i32 2}
!91 = !{ptr @atalk_sendmsg._entry.26, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @atalk_sendmsg._entry_ptr.28, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/appletalk/ddp.c", i32 1705, i32 4}
!95 = !{ptr @atalk_sendmsg._entry.29, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @atalk_sendmsg._entry_ptr.31, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/appletalk/ddp.c", i32 1714, i32 3}
!99 = !{ptr @atalk_sendmsg._entry.32, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @atalk_sendmsg._entry_ptr.34, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/appletalk/ddp.c", i32 1728, i32 3}
!103 = !{ptr @atalk_sendmsg._entry.35, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @atalk_sendmsg._entry_ptr.37, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/appletalk/ddp.c", i32 1739, i32 2}
!107 = !{ptr @atalk_sendmsg._entry.38, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @atalk_sendmsg._entry_ptr.40, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @ddp_snap_id, !110, !"ddp_snap_id", i1 false, i1 false}
!110 = !{!"../net/appletalk/ddp.c", i32 1950, i32 22}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/appletalk/ddp.c", i32 1456, i32 3}
!113 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @atalk_rcv.__UNIQUE_ID_ddebug489, !112, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/appletalk/ddp.c", i32 1338, i32 4}
!120 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @atalk_route_packet._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @atalk_route_packet._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/appletalk/ddp.c", i32 1295, i32 56}
!125 = !{ptr @ddp_notifier, !126, !"ddp_notifier", i1 false, i1 false}
!126 = !{!"../net/appletalk/ddp.c", i32 1936, i32 30}
!127 = !{ptr @ltalk_packet_type, !128, !"ltalk_packet_type", i1 false, i1 false}
!128 = !{!"../net/appletalk/ddp.c", i32 1940, i32 27}
!129 = !{ptr @ppptalk_packet_type, !130, !"ppptalk_packet_type", i1 false, i1 false}
!130 = !{!"../net/appletalk/ddp.c", i32 1945, i32 27}
!131 = !{ptr @ddp_proto, !132, !"ddp_proto", i1 false, i1 false}
!132 = !{!"../net/appletalk/ddp.c", i32 1009, i32 21}
!133 = !{!"sp"}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{i64 2149030498, i64 2149030503, i64 2149030516, i64 2149030560, i64 2149030594, i64 2149030615}
!146 = !{!"auto-init"}
!147 = !{i64 2148428722, i64 2148428754, i64 2148428783, i64 2148428817, i64 2148428848, i64 2148428871}
!148 = !{i64 2148516747}
!149 = !{i64 2148431187, i64 2148431219, i64 2148431248, i64 2148431282, i64 2148431313, i64 2148431336}
!150 = !{i64 2149382790}
!151 = !{i64 5107570}
!152 = !{i64 5107767}
!153 = !{i64 2152593000}
!154 = !{i64 2157433151, i64 2157433431, i64 2157433765, i64 2157434099}
!155 = !{i64 2157442016, i64 2157442296, i64 2157442630, i64 2157442964}
!156 = !{i64 2152612015, i64 2152612040}
!157 = !{i64 830892, i64 830953}
!158 = !{i64 833624}
!159 = !{i64 833909}
!160 = !{i64 2154633935, i64 2154634423, i64 2154633972, i64 2154634028, i64 2154634062, i64 2154634086, i64 2154634127, i64 2154634148, i64 2154634176, i64 2154634210}
!161 = !{i64 2153952999}
!162 = !{i64 2152614832}
!163 = !{i64 2152615039}
!164 = !{i64 2153955770}
!165 = !{i64 2157392140, i64 2157392624, i64 2157392177, i64 2157392233, i64 2157392267, i64 2157392291, i64 2157392332, i64 2157392353, i64 2157392381, i64 2157392415}
