; ModuleID = '/llk/IR_all_yes/net/phonet/socket.c_pt.bc'
source_filename = "../net/phonet/socket.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pn_sock_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_pn_sock_hash\09\09\09\09"
module asm "\09.long\09__crc_pn_sock_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pn_sock_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22pn_sock_hash\22\09\09\09\09\09"
module asm "__kstrtabns_pn_sock_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pn_sock_unhash\22, \22a\22\09"
module asm "\09.weak\09__crc_pn_sock_unhash\09\09\09\09"
module asm "\09.long\09__crc_pn_sock_unhash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pn_sock_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22pn_sock_unhash\22\09\09\09\09\09"
module asm "__kstrtabns_pn_sock_unhash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+phonet_stream_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_phonet_stream_ops\09\09\09\09"
module asm "\09.long\09__crc_phonet_stream_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phonet_stream_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22phonet_stream_ops\22\09\09\09\09\09"
module asm "__kstrtabns_phonet_stream_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pn_sock_get_port\22, \22a\22\09"
module asm "\09.weak\09__crc_pn_sock_get_port\09\09\09\09"
module asm "\09.long\09__crc_pn_sock_get_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pn_sock_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22pn_sock_get_port\22\09\09\09\09\09"
module asm "__kstrtabns_pn_sock_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.anon = type { [16 x %struct.hlist_head], %struct.mutex }
%struct.hlist_head = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.69, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.69 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
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
%struct.anon.147 = type { [256 x ptr] }
%struct.sockaddr_pn = type { i16, i8, i8, i8, [11 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pn_sock = type { %struct.sock, i16, i16, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.1, %union.anon.3, %union.anon.4, i16, i8, i8, i32, %union.anon.6, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon.1 = type { i64 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }
%union.anon.6 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.115, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.115 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.140 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.86, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.86 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [112 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.141, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.142, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.143, ptr, %struct.address_space, %struct.list_head, %union.anon.144, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.141 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.142 = type { %struct.callback_head }
%union.anon.143 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.144 = type { ptr }
%struct.pep_sock = type { %struct.pn_sock, %struct.hlist_head, ptr, %struct.sk_buff_head, %struct.atomic_t, i32, i16, i8, i8, i8, i8, i8, i8 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.12, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.12 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }

@pnsocks = internal global { %struct.anon, [36 x i8] } zeroinitializer, align 32
@pn_sock_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pnsocks.lock\00", [18 x i8] zeroinitializer }, align 32
@pn_find_sock_by_sa.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/phonet/socket.c\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_pn_sock_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_pn_sock_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_pn_sock_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pn_sock_hash to i32), ptr @__kstrtab_pn_sock_hash, ptr @__kstrtabns_pn_sock_hash }, section "___ksymtab+pn_sock_hash", align 4
@__kstrtab_pn_sock_unhash = external dso_local constant [0 x i8], align 1
@__kstrtabns_pn_sock_unhash = external dso_local constant [0 x i8], align 1
@__ksymtab_pn_sock_unhash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pn_sock_unhash to i32), ptr @__kstrtab_pn_sock_unhash, ptr @__kstrtabns_pn_sock_unhash }, section "___ksymtab+pn_sock_unhash", align 4
@phonet_dgram_ops = dso_local constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 35, ptr null, ptr @pn_socket_release, ptr @pn_socket_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @pn_socket_getname, ptr @datagram_poll, ptr @pn_socket_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @pn_socket_sendmsg, ptr @sock_common_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@phonet_stream_ops = dso_local constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 35, ptr null, ptr @pn_socket_release, ptr @pn_socket_bind, ptr @pn_socket_connect, ptr @sock_no_socketpair, ptr @pn_socket_accept, ptr @pn_socket_getname, ptr @pn_socket_poll, ptr @pn_socket_ioctl, ptr null, ptr @pn_socket_listen, ptr @sock_no_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @pn_socket_sendmsg, ptr @sock_common_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_phonet_stream_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_phonet_stream_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_phonet_stream_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phonet_stream_ops to i32), ptr @__kstrtab_phonet_stream_ops, ptr @__kstrtabns_phonet_stream_ops }, section "___ksymtab+phonet_stream_ops", align 4
@pn_sock_get_port.port_cur = internal global { i32, [28 x i8] } zeroinitializer, align 32
@port_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @port_mutex, i64 52), ptr getelementptr (i8, ptr @port_mutex, i64 52) }, ptr @port_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_pn_sock_get_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_pn_sock_get_port = external dso_local constant [0 x i8], align 1
@__ksymtab_pn_sock_get_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pn_sock_get_port to i32), ptr @__kstrtab_pn_sock_get_port, ptr @__kstrtabns_pn_sock_get_port }, section "___ksymtab+pn_sock_get_port", align 4
@pn_sock_seq_ops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @pn_sock_seq_start, ptr @pn_sock_seq_stop, ptr @pn_sock_seq_next, ptr @pn_sock_seq_show }, [16 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@pnres = internal global { %struct.anon.147, [256 x i8] } zeroinitializer, align 32
@pn_find_sock_by_res.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@resource_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @resource_mutex, i64 52), ptr getelementptr (i8, ptr @resource_mutex, i64 52) }, ptr @resource_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pn_res_seq_ops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @pn_res_seq_start, ptr @pn_res_seq_stop, ptr @pn_res_seq_next, ptr @pn_res_seq_show }, [16 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_mutex\00", [21 x i8] zeroinitializer }, align 32
@pn_sock_get_idx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"pt  loc  rem rs st tx_queue rx_queue   uid inode ref pointer drops\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%2d %04X:%04X:%02X %02X %08X:%08X %5d %lu %d %pK %u\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"resource_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resource_mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rs   uid inode\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%02X %5u %lu\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.16 = private unnamed_addr constant [8 x i8] c"pnsocks\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 46, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 54, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 75, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"phonet_dgram_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 428, i32 24 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"phonet_stream_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 447, i32 24 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"port_cur\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 472, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"port_mutex\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"pn_sock_seq_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 599, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"pnres\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 609, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 622, i32 7 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"resource_mutex\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"pn_res_seq_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 768, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 695, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 723, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 729, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 154, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 579, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 585, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 629, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 754, i32 17 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [23 x i8] c"../net/phonet/socket.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 759, i32 19 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_phonet_stream_ops, ptr @__ksymtab_pn_sock_get_port, ptr @__ksymtab_pn_sock_hash, ptr @__ksymtab_pn_sock_unhash, ptr @pnsocks, ptr @pn_sock_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @phonet_dgram_ops, ptr @phonet_stream_ops, ptr @pn_sock_get_port.port_cur, ptr @port_mutex, ptr @pn_sock_seq_ops, ptr @pnres, ptr @.str.3, ptr @resource_mutex, ptr @pn_res_seq_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnsocks to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_sock_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_dgram_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_stream_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_sock_get_port.port_cur to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_sock_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnres to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resource_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_res_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @pn_sock_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @pnsocks, i32 0, i32 64)
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.anon, ptr @pnsocks, i32 0, i32 1), ptr noundef nonnull @.str, ptr noundef nonnull @pn_sock_init.__key) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pn_find_sock_by_sa(ptr noundef readnone %net, ptr nocapture noundef readonly %spn) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spn_dev.i = getelementptr inbounds %struct.sockaddr_pn, ptr %spn, i32 0, i32 2
  %0 = ptrtoint ptr %spn_dev.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spn_dev.i, align 1
  %spn_obj.i = getelementptr inbounds %struct.sockaddr_pn, ptr %spn, i32 0, i32 1
  %2 = ptrtoint ptr %spn_obj.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %spn_obj.i, align 1
  %conv.i = zext i8 %3 to i16
  %conv.i.i = zext i8 %1 to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %spn_resource = getelementptr inbounds %struct.sockaddr_pn, ptr %spn, i32 0, i32 3
  %4 = ptrtoint ptr %spn_resource to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %spn_resource, align 1
  %6 = and i16 %conv.i, 15
  %and.i = zext i16 %6 to i32
  %add.ptr.i = getelementptr %struct.hlist_head, ptr @pnsocks, i32 %and.i
  %7 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !69
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call2 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b103 = load i1, ptr @pn_find_sock_by_sa.__warned, align 1
  br i1 %.b103, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @pn_find_sock_by_sa.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 75, ptr noundef nonnull @.str.2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %add.ptr.i, align 4
  %tobool12.not = icmp eq ptr %12, null
  %add.ptr = getelementptr i8, ptr %12, i32 -84
  %tobool14.not127130 = icmp eq ptr %add.ptr, null
  %tobool14.not127 = or i1 %tobool12.not, %tobool14.not127130
  br i1 %tobool14.not127, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %shl.i.i.masked = and i16 %shl.i.i, 768
  %13 = or i16 %shl.i.i.masked, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool37.not = icmp eq i16 %13, 0
  %conv1.i107 = and i8 %1, -4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sknode.0128 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr78, %for.inc.for.body_crit_edge ]
  %sobject = getelementptr inbounds %struct.pn_sock, ptr %sknode.0128, i32 0, i32 1
  %14 = ptrtoint ptr %sobject to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sobject, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool17.not = icmp eq i16 %15, 0
  br i1 %tobool17.not, label %do.body22, label %do.end30, !prof !70

do.body22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #8, !srcloc !71
  unreachable

do.end30:                                         ; preds = %for.body
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sknode.0128, i32 0, i32 9
  %16 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %17, %net
  br i1 %cmp.i.not, label %if.end35, label %do.end30.for.inc_crit_edge

do.end30.for.inc_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end35:                                         ; preds = %do.end30
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end35
  %18 = and i16 %15, 1023
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %13)
  %cmp.not = icmp eq i16 %18, %13
  br i1 %cmp.not, label %if.then38.if.end52_crit_edge, label %if.then38.for.inc_crit_edge

if.then38.for.inc_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then38.if.end52_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.else:                                          ; preds = %if.end35
  %resource = getelementptr inbounds %struct.pn_sock, ptr %sknode.0128, i32 0, i32 3
  %19 = ptrtoint ptr %resource to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %resource, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %5)
  %cmp48.not = icmp eq i8 %20, %5
  br i1 %cmp48.not, label %if.else.if.end52_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end52:                                         ; preds = %if.else.if.end52_crit_edge, %if.then38.if.end52_crit_edge
  %21 = lshr i16 %15, 8
  %22 = trunc i16 %21 to i8
  %conv1.i = and i8 %22, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool56.not = icmp eq i8 %conv1.i, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1.i, i8 %conv1.i107)
  %cmp63.not = icmp eq i8 %conv1.i, %conv1.i107
  %or.cond = select i1 %tobool56.not, i1 true, i1 %cmp63.not
  br i1 %or.cond, label %if.end66, label %if.end52.for.inc_crit_edge

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end66:                                         ; preds = %if.end52
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sknode.0128, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !72
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end66.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.end66.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end66
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.for.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.for.end_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end66.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end66.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #8
  br label %for.end

for.inc:                                          ; preds = %if.end52.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then38.for.inc_crit_edge, %do.end30.for.inc_crit_edge
  %25 = getelementptr inbounds %struct.sock_common, ptr %sknode.0128, i32 0, i32 15
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %25, align 4
  %tobool74.not = icmp eq ptr %27, null
  %add.ptr78 = getelementptr i8, ptr %27, i32 -84
  %tobool14.not135 = icmp eq ptr %add.ptr78, null
  %tobool14.not = or i1 %tobool74.not, %tobool14.not135
  br i1 %tobool14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.for.end_crit_edge, %do.end.for.end_crit_edge
  %rval.2 = phi ptr [ %sknode.0128, %if.end15.sink.split.i.i.i.i ], [ %sknode.0128, %if.else.i.i.i.i.for.end_crit_edge ], [ null, %do.end.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i108 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i108, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i111

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i111:                               ; preds = %for.end
  %call1.i109 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %tobool.not.i110 = icmp eq i32 %call1.i109, 0
  br i1 %tobool.not.i110, label %land.lhs.true.i111.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i113

land.lhs.true.i111.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i113:                              ; preds = %land.lhs.true.i111
  %.b4.i112 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i112, label %land.lhs.true2.i113.rcu_read_unlock.exit_crit_edge, label %if.then.i114

land.lhs.true2.i113.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i114:                                     ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i114, %land.lhs.true2.i113.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i111.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !74
  %28 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i.i.i.i.i115 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i115 to ptr
  %preempt_count.i.i.i.i116 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i116, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i116, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %rval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pn_deliver_sock_broadcast(ptr noundef readnone %net, ptr noundef %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !69
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.for.body.preheader_crit_edge, label %land.lhs.true.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.body.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.body.preheader_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.for.body.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.for.body.preheader_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then.i, %land.lhs.true2.i.for.body.preheader_crit_edge, %land.lhs.true.i.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.preheader
  %hlist.055 = phi ptr [ %incdec.ptr, %for.end.for.body_crit_edge ], [ @pnsocks, %for.body.preheader ]
  %h.054 = phi i32 [ %inc, %for.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %4 = ptrtoint ptr %hlist.055 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hlist.055, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -84
  %tobool3.not5156 = icmp eq ptr %add.ptr, null
  %tobool3.not51 = or i1 %tobool.not, %tobool3.not5156
  br i1 %tobool3.not51, label %for.body.for.end_crit_edge, label %for.body.for.body4_crit_edge

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body4:                                        ; preds = %cleanup.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %sknode.052 = phi ptr [ %add.ptr21, %cleanup.for.body4_crit_edge ], [ %add.ptr, %for.body.for.body4_crit_edge ]
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sknode.052, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %7, %net
  br i1 %cmp.i.not, label %if.end, label %for.body4.cleanup_crit_edge

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body4
  %8 = getelementptr inbounds %struct.sock_common, ptr %sknode.052, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sknode.052, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !72
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then12.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.then12.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then12
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then12.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then12.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #8
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %call.i39 = tail call i32 @__sk_receive_skb(ptr noundef nonnull %sknode.052, ptr noundef nonnull %call10, i32 noundef 0, i32 noundef 1, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %sock_hold.exit, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body4.cleanup_crit_edge
  %14 = getelementptr inbounds %struct.sock_common, ptr %sknode.052, i32 0, i32 15
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool17.not = icmp eq ptr %16, null
  %add.ptr21 = getelementptr i8, ptr %16, i32 -84
  %tobool3.not57 = icmp eq ptr %add.ptr21, null
  %tobool3.not = or i1 %tobool17.not, %tobool3.not57
  br i1 %tobool3.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body4_crit_edge

cleanup.for.body4_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.body.for.end_crit_edge
  %incdec.ptr = getelementptr %struct.hlist_head, ptr %hlist.055, i32 1
  %inc = add nuw nsw i32 %h.054, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end26, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end26:                                        ; preds = %for.end
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i40, label %for.end26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

for.end26.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %for.end26
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %for.end26.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !74
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i.i.i.i.i47 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pn_sock_hash(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sobject = getelementptr inbounds %struct.pn_sock, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %sobject to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sobject, align 8
  %2 = and i16 %1, 15
  %and.i = zext i16 %2 to i32
  %add.ptr.i = getelementptr %struct.hlist_head, ptr @pnsocks, i32 %and.i
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.anon, ptr @pnsocks, i32 0, i32 1), i32 noundef 0) #8
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #8, !srcloc !72
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !70

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %skc_reuseport.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %5 = ptrtoint ptr %skc_reuseport.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %skc_reuseport.i, align 1
  %6 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %sock_hold.exit.i.if.else.i_crit_edge, label %land.lhs.true.i

sock_hold.exit.i.if.else.i_crit_edge:             ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sock_hold.exit.i
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %7 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %8)
  %cmp.i = icmp eq i16 %8, 10
  br i1 %cmp.i, label %land.lhs.true.i.for.cond.i.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i.for.cond.i.i_crit_edge:           ; preds = %land.lhs.true.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %land.lhs.true.i.for.cond.i.i_crit_edge
  %last.0.i.i = phi ptr [ %i.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ null, %land.lhs.true.i.for.cond.i.i_crit_edge ]
  %i.0.in.i.i = phi ptr [ %i.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ %add.ptr.i, %land.lhs.true.i.for.cond.i.i_crit_edge ]
  %9 = ptrtoint ptr %i.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %i.0.i.i = load ptr, ptr %i.0.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %i.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %10 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %tobool1.not.i.i = icmp eq ptr %last.0.i.i, null
  br i1 %tobool1.not.i.i, label %if.else47.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %last.0.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %last.0.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %10, align 4
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %14 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %last.0.i.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !75
  br label %if.end48.sink.split.i.i

if.else47.i.i:                                    ; preds = %for.end.i.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %10, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %18 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %add.ptr.i, ptr %pprev.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %10, ptr %add.ptr.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %if.else47.i.i.sk_add_node_rcu.exit_crit_edge, label %do.body49.i.i.i

if.else47.i.i.sk_add_node_rcu.exit_crit_edge:     ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_add_node_rcu.exit

do.body49.i.i.i:                                  ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  br label %if.end48.sink.split.i.i

if.end48.sink.split.i.i:                          ; preds = %do.body49.i.i.i, %if.then.i.i
  %pprev51.i.sink.i.i = phi ptr [ %pprev51.i.i.i, %do.body49.i.i.i ], [ %last.0.i.i, %if.then.i.i ]
  %20 = ptrtoint ptr %pprev51.i.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %10, ptr %pprev51.i.sink.i.i, align 4
  br label %sk_add_node_rcu.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sock_hold.exit.i.if.else.i_crit_edge
  %21 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %21, align 4
  %pprev.i11.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %25 = ptrtoint ptr %pprev.i11.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %add.ptr.i, ptr %pprev.i11.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %21, ptr %add.ptr.i, align 4
  %tobool.not.i12.i = icmp eq ptr %23, null
  br i1 %tobool.not.i12.i, label %if.else.i.sk_add_node_rcu.exit_crit_edge, label %do.body49.i.i

if.else.i.sk_add_node_rcu.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_add_node_rcu.exit

do.body49.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %21, ptr %pprev51.i.i, align 4
  br label %sk_add_node_rcu.exit

sk_add_node_rcu.exit:                             ; preds = %do.body49.i.i, %if.else.i.sk_add_node_rcu.exit_crit_edge, %if.end48.sink.split.i.i, %if.else47.i.i.sk_add_node_rcu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.anon, ptr @pnsocks, i32 0, i32 1)) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pn_sock_unhash(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.anon, ptr @pnsocks, i32 0, i32 1), i32 noundef 0) #8
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.not.i, label %entry.sk_del_node_init.exit_crit_edge, label %if.then.i.i

entry.sk_del_node_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_del_node_init.exit

if.then.i.i:                                      ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %1, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %1, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %7 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !70

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 729, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.sk_del_node_init.exit_crit_edge, !prof !70

if.end.i.sk_del_node_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_del_node_init.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  br label %sk_del_node_init.exit

sk_del_node_init.exit:                            ; preds = %if.then3.i.i.i.i, %if.end.i.sk_del_node_init.exit_crit_edge, %entry.sk_del_node_init.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.anon, ptr @pnsocks, i32 0, i32 1)) #8
  tail call void @pn_sock_unbind_all_res(ptr noundef %sk)
  tail call void @synchronize_rcu() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pn_sock_unbind_all_res(ptr noundef %sk) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @resource_mutex, i32 noundef 0) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %match.021 = phi i32 [ 0, %entry ], [ %match.1, %for.inc.for.body_crit_edge ]
  %res.020 = phi i32 [ 0, %entry ], [ %inc12, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @pnres, i32 0, i32 %res.020
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %1, %sk
  br i1 %cmp1, label %do.body4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %arrayidx, align 4
  %inc = add i32 %match.021, 1
  br label %for.inc

for.inc:                                          ; preds = %do.body4, %for.body.for.inc_crit_edge
  %match.1 = phi i32 [ %inc, %do.body4 ], [ %match.021, %for.body.for.inc_crit_edge ]
  %inc12 = add nuw nsw i32 %res.020, 1
  %exitcond.not = icmp eq i32 %inc12, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @mutex_unlock(ptr noundef nonnull @resource_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %match.1)
  %cmp13.not22 = icmp eq i32 %match.1, 0
  br i1 %cmp13.not22, label %for.end.while.end_crit_edge, label %while.body.lr.ph

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %__sock_put.exit.while.body_crit_edge, %while.body.lr.ph
  %match.223 = phi i32 [ %match.1, %while.body.lr.ph ], [ %dec, %__sock_put.exit.while.body_crit_edge ]
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !78
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %while.body.__sock_put.exit_crit_edge, !prof !70

while.body.__sock_put.exit_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sock_put.exit

if.then3.i.i.i:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  br label %__sock_put.exit

__sock_put.exit:                                  ; preds = %if.then3.i.i.i, %while.body.__sock_put.exit_crit_edge
  %dec = add i32 %match.223, -1
  %cmp13.not = icmp eq i32 %dec, 0
  br i1 %cmp13.not, label %__sock_put.exit.while.end_crit_edge, label %__sock_put.exit.while.body_crit_edge

__sock_put.exit.while.body_crit_edge:             ; preds = %__sock_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

__sock_put.exit.while.end_crit_edge:              ; preds = %__sock_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %__sock_put.exit.while.end_crit_edge, %for.end.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_socket_release(ptr nocapture noundef %sock) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sk1, align 16
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_prot, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void %6(ptr noundef nonnull %1, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_socket_bind(ptr nocapture noundef readonly %sock, ptr noundef %addr, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_prot, align 8
  %bind = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bind, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 %5(ptr noundef %1, ptr noundef %addr, i32 noundef %len) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp = icmp ult i32 %len, 16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %addr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %7)
  %cmp8.not = icmp eq i16 %7, 35
  br i1 %cmp8.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %spn_dev.i = getelementptr inbounds %struct.sockaddr_pn, ptr %addr, i32 0, i32 2
  %8 = ptrtoint ptr %spn_dev.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %spn_dev.i, align 1
  %spn_obj.i = getelementptr inbounds %struct.sockaddr_pn, ptr %addr, i32 0, i32 1
  %10 = ptrtoint ptr %spn_obj.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %spn_obj.i, align 1
  %conv.i = zext i8 %11 to i16
  %conv.i.i = zext i8 %9 to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %conv1.i = and i8 %9, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool15.not = icmp eq i8 %conv1.i, 0
  br i1 %tobool15.not, label %if.end11.if.end20_crit_edge, label %land.lhs.true

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end11
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  %call17 = tail call i32 @phonet_address_lookup(ptr noundef %13, i8 noundef zeroext %conv1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cmp23.not = icmp eq i8 %15, 7
  br i1 %cmp23.not, label %lor.lhs.false, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end20
  %sobject = getelementptr inbounds %struct.pn_sock, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %sobject to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sobject, align 8
  %18 = and i16 %17, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool27.not = icmp eq i16 %18, 0
  br i1 %tobool27.not, label %if.end29, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end29:                                         ; preds = %lor.lhs.false
  %pprev.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %19 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i.not, label %if.end29.if.end45_crit_edge, label %do.end, !prof !73

if.end29.if.end45_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 183, i32 noundef 9, ptr noundef null) #8
  br label %if.end45

if.end45:                                         ; preds = %do.end, %if.end29.if.end45_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @port_mutex, i32 noundef 0) #8
  %21 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skc_prot, align 8
  %get_port = getelementptr inbounds %struct.proto, ptr %22, i32 0, i32 23
  %23 = ptrtoint ptr %get_port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_port, align 4
  %shl.i.i.masked = and i16 %shl.i.i, 768
  %25 = or i16 %shl.i.i.masked, %conv.i
  %call55 = tail call i32 %24(ptr noundef %1, i16 noundef zeroext %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end45.out_port_crit_edge

if.end45.out_port_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_port

if.end58:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %sobject to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sobject, align 8
  %28 = and i16 %27, 1023
  %conv.i95 = zext i8 %conv1.i to i16
  %shl.i = shl nuw i16 %conv.i95, 8
  %or.i = or i16 %28, %shl.i
  store i16 %or.i, ptr %sobject, align 8
  %spn_resource = getelementptr inbounds %struct.sockaddr_pn, ptr %addr, i32 0, i32 3
  %29 = ptrtoint ptr %spn_resource to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %spn_resource, align 1
  %resource = getelementptr inbounds %struct.pn_sock, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %resource to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %resource, align 4
  %32 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skc_prot, align 8
  %hash = getelementptr inbounds %struct.proto, ptr %33, i32 0, i32 20
  %34 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hash, align 4
  %call65 = tail call i32 %35(ptr noundef %1) #8
  br label %out_port

out_port:                                         ; preds = %if.end58, %if.end45.out_port_crit_edge
  %err.0 = phi i32 [ %call55, %if.end45.out_port_crit_edge ], [ %call65, %if.end58 ]
  tail call void @mutex_unlock(ptr noundef nonnull @port_mutex) #8
  br label %out

out:                                              ; preds = %out_port, %lor.lhs.false.out_crit_edge, %if.end20.out_crit_edge
  %err.1 = phi i32 [ %err.0, %out_port ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end20.out_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ %err.1, %out ], [ -22, %if.end.cleanup_crit_edge ], [ -97, %if.end7.cleanup_crit_edge ], [ -99, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pn_socket_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %addr, i32 noundef %peer) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = getelementptr inbounds i8, ptr %addr, i32 2
  %3 = call ptr @memset(ptr %2, i32 0, i32 14)
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 35, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sobject = getelementptr inbounds %struct.pn_sock, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %sobject to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sobject, align 8
  %7 = lshr i16 %6, 8
  %conv1.i.i = trunc i16 %7 to i8
  %spn_dev.i = getelementptr inbounds %struct.sockaddr_pn, ptr %addr, i32 0, i32 2
  %8 = ptrtoint ptr %spn_dev.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1.i.i, ptr %spn_dev.i, align 1
  %conv1.i4.i = trunc i16 %6 to i8
  %spn_obj.i = getelementptr inbounds %struct.sockaddr_pn, ptr %addr, i32 0, i32 1
  %9 = ptrtoint ptr %spn_obj.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1.i4.i, ptr %spn_obj.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_socket_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 35296, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 35296
  br i1 %cmp, label %if.then, label %if.end40

if.then:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 367) #8
  %2 = inttoptr i32 %arg to ptr
  %3 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !79
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #8, !srcloc !82
  %asmresult = extractvalue { i32, i32 } %6, 0
  %asmresult3 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup43_crit_edge

if.then.cleanup43_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

if.end:                                           ; preds = %if.then
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  %skc_net.i65 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i65 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i65, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call ptr @dev_get_by_index(ptr noundef %10, i32 noundef %8) #8
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call ptr @phonet_device_get(ptr noundef %10) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7
  %dev.0 = phi ptr [ %call11, %if.then7 ], [ %call13, %if.else ]
  %tobool15.not = icmp eq ptr %dev.0, null
  br i1 %tobool15.not, label %dev_put.exit.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %flags = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %land.lhs.true.do.body1.i_crit_edge, label %if.then17

land.lhs.true.do.body1.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %13 = lshr i32 %asmresult3, 8
  %14 = trunc i32 %13 to i8
  %conv1.i = and i8 %14, -4
  %call19 = tail call zeroext i8 @phonet_address_get(ptr noundef nonnull %dev.0, i8 noundef zeroext %conv1.i) #8
  br label %do.body1.i

dev_put.exit.thread:                              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_sock(ptr noundef %1) #8
  br label %cleanup43

do.body1.i:                                       ; preds = %if.then17, %land.lhs.true.do.body1.i_crit_edge
  %saddr.0.ph = phi i8 [ -1, %land.lhs.true.do.body1.i_crit_edge ], [ %call19, %if.then17 ]
  tail call void @release_sock(ptr noundef %1) #8
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !83
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 118
  %16 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcpu_refcnt.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add13.i = add i32 %27, -1
  store i32 %add13.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !84
  %and.i.i.i66 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i66)
  %tobool24.not.i = icmp eq i32 %and.i.i.i66, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !70

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #8, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %saddr.0.ph)
  %cmp23 = icmp eq i8 %saddr.0.ph, -1
  br i1 %cmp23, label %dev_put.exit.cleanup43_crit_edge, label %if.end26

dev_put.exit.cleanup43_crit_edge:                 ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

if.end26:                                         ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sobject = getelementptr inbounds %struct.pn_sock, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %sobject to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sobject, align 8
  %31 = and i16 %30, 1023
  %conv.i = zext i8 %saddr.0.ph to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %or.i67 = or i16 %31, %shl.i
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 387) #8
  %32 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i.i.i61 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i61 to ptr
  %cpu_domain.i.i62 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i62) #6, !srcloc !79
  %and.i63 = and i32 %34, -13
  %or.i64 = or i32 %and.i63, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i64) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %35 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i16 %or.i67, i32 -1226833921) #8, !srcloc !86
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  br label %cleanup43

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skc_prot, align 8
  %ioctl = getelementptr inbounds %struct.proto, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioctl, align 4
  %call42 = tail call i32 %39(ptr noundef %1, i32 noundef %cmd, i32 noundef %arg) #8
  br label %cleanup43

cleanup43:                                        ; preds = %if.end40, %if.end26, %dev_put.exit.cleanup43_crit_edge, %dev_put.exit.thread, %if.then.cleanup43_crit_edge
  %retval.1 = phi i32 [ %call42, %if.end40 ], [ %35, %if.end26 ], [ -14, %if.then.cleanup43_crit_edge ], [ -113, %dev_put.exit.cleanup43_crit_edge ], [ -113, %dev_put.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_socket_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %m, i32 noundef %total_len) #3 align 64 {
entry:
  %sa.i = alloca %struct.sockaddr_pn, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i) #8
  %2 = getelementptr inbounds i8, ptr %sa.i, i32 2
  %3 = call ptr @memset(ptr %2, i32 0, i32 14)
  %4 = ptrtoint ptr %sa.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 35, ptr %sa.i, align 2
  %call.i = call i32 @pn_socket_bind(ptr noundef %sock, ptr noundef nonnull %sa.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -22
  br i1 %cmp.not.i, label %do.body.i, label %pn_socket_autobind.exit

do.body.i:                                        ; preds = %entry
  %5 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk1, align 16
  %sobject.i = getelementptr inbounds %struct.pn_sock, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %sobject.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sobject.i, align 8
  %9 = and i16 %8, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %do.body7.i, label %pn_socket_autobind.exit.thread, !prof !70

pn_socket_autobind.exit.thread:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  br label %if.end

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 213, 0\0A.popsection", ""() #8, !srcloc !87
  unreachable

pn_socket_autobind.exit:                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %pn_socket_autobind.exit.if.end_crit_edge, label %pn_socket_autobind.exit.cleanup_crit_edge

pn_socket_autobind.exit.cleanup_crit_edge:        ; preds = %pn_socket_autobind.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pn_socket_autobind.exit.if.end_crit_edge:         ; preds = %pn_socket_autobind.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %pn_socket_autobind.exit.if.end_crit_edge, %pn_socket_autobind.exit.thread
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_prot, align 8
  %sendmsg = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %sendmsg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sendmsg, align 4
  %call2 = call i32 %13(ptr noundef %1, ptr noundef %m, i32 noundef %total_len) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pn_socket_autobind.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -11, %pn_socket_autobind.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_socket_connect(ptr nocapture noundef %sock, ptr noundef %addr, i32 noundef %len, i32 noundef %flags) #3 align 64 {
entry:
  %sa.i = alloca %struct.sockaddr_pn, align 2
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_rcvtimeo.exit_crit_edge

entry.sock_rcvtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %6 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %7, %cond.false.i ], [ 0, %entry.sock_rcvtimeo.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i) #8
  %8 = getelementptr inbounds i8, ptr %sa.i, i32 2
  %9 = call ptr @memset(ptr %8, i32 0, i32 14)
  %10 = ptrtoint ptr %sa.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 35, ptr %sa.i, align 2
  %call.i = call i32 @pn_socket_bind(ptr noundef %sock, ptr noundef nonnull %sa.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -22
  br i1 %cmp.not.i, label %do.body.i, label %pn_socket_autobind.exit

do.body.i:                                        ; preds = %sock_rcvtimeo.exit
  %11 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk1, align 16
  %sobject.i = getelementptr inbounds %struct.pn_sock, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %sobject.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sobject.i, align 8
  %15 = and i16 %14, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i, label %do.body7.i, label %pn_socket_autobind.exit.thread, !prof !70

pn_socket_autobind.exit.thread:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  br label %if.end

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 213, 0\0A.popsection", ""() #8, !srcloc !87
  unreachable

pn_socket_autobind.exit:                          ; preds = %sock_rcvtimeo.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %pn_socket_autobind.exit.if.end_crit_edge, label %pn_socket_autobind.exit.cleanup68_crit_edge

pn_socket_autobind.exit.cleanup68_crit_edge:      ; preds = %pn_socket_autobind.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

pn_socket_autobind.exit.if.end_crit_edge:         ; preds = %pn_socket_autobind.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %pn_socket_autobind.exit.if.end_crit_edge, %pn_socket_autobind.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp = icmp ult i32 %len, 16
  br i1 %cmp, label %if.end.cleanup68_crit_edge, label %if.end7

if.end.cleanup68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end7:                                          ; preds = %if.end
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %addr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %17)
  %cmp8.not = icmp eq i16 %17, 35
  br i1 %cmp8.not, label %if.end11, label %if.end7.cleanup68_crit_edge

if.end7.cleanup68_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end11:                                         ; preds = %if.end7
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %18 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sock, align 128
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %if.end11.out_crit_edge
  ]

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %if.end11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %cmp13.not = icmp eq i8 %22, 7
  br i1 %cmp13.not, label %sw.epilog, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.default:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.epilog:                                        ; preds = %sw.bb
  %spn_dev.i = getelementptr inbounds %struct.sockaddr_pn, ptr %addr, i32 0, i32 2
  %23 = ptrtoint ptr %spn_dev.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %spn_dev.i, align 1
  %spn_obj.i = getelementptr inbounds %struct.sockaddr_pn, ptr %addr, i32 0, i32 1
  %25 = ptrtoint ptr %spn_obj.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %spn_obj.i, align 1
  %conv.i = zext i8 %26 to i16
  %conv.i.i = zext i8 %24 to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %or.i.i = or i16 %shl.i.i, %conv.i
  %dobject = getelementptr inbounds %struct.pn_sock, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %dobject to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or.i.i, ptr %dobject, align 2
  %spn_resource.i = getelementptr inbounds %struct.sockaddr_pn, ptr %addr, i32 0, i32 3
  %28 = ptrtoint ptr %spn_resource.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %spn_resource.i, align 1
  %resource = getelementptr inbounds %struct.pn_sock, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %resource to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %resource, align 4
  %31 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %sock, align 128
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skc_prot, align 8
  %connect = getelementptr inbounds %struct.proto, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %connect, align 4
  %call22 = call i32 %35(ptr noundef %1, ptr noundef %addr, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %while.cond.preheader, label %if.then24

while.cond.preheader:                             ; preds = %sw.epilog
  %36 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp31114 = icmp eq i8 %37, 2
  br i1 %cmp31114, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %38 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %39 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %40 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %41 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  %42 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  br label %while.body

if.then24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %sock, align 128
  %44 = ptrtoint ptr %dobject to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %dobject, align 2
  br label %out

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %timeo.0115 = phi i32 [ %cond.i, %while.body.lr.ph ], [ %call49, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %45 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %wait, align 4
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %48 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %38, align 4
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @autoremove_wake_function, ptr %39, align 4
  %50 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %40, ptr %40, align 4
  %51 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %40, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0115)
  %tobool39.not = icmp eq i32 %timeo.0115, 0
  br i1 %tobool39.not, label %while.body.cleanup.thread_crit_edge, label %if.end41

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end41:                                         ; preds = %while.body
  %52 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stack.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %56 = and i32 %55, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i102 = icmp eq i32 %56, 0
  br i1 %tobool.not.i102, label %signal_pending.exit, label %if.end41.if.then44_crit_edge, !prof !73

if.end41.if.then44_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

signal_pending.exit:                              ; preds = %if.end41
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %53, align 4
  %and1.i.i.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool43.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool43.not, label %cleanup, label %signal_pending.exit.if.then44_crit_edge

signal_pending.exit.if.then44_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.then44:                                        ; preds = %signal_pending.exit.if.then44_crit_edge, %if.end41.if.then44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %timeo.0115)
  %cmp.i = icmp eq i32 %timeo.0115, 2147483647
  %cond.i104 = select i1 %cmp.i, i32 -512, i32 -4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then44, %while.body.cleanup.thread_crit_edge
  %err.1.ph = phi i32 [ %cond.i104, %if.then44 ], [ -115, %while.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  br label %out

cleanup:                                          ; preds = %signal_pending.exit
  %59 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %42, align 8
  %call48 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %60, ptr noundef nonnull %wait, i32 noundef 1) #8
  call void @release_sock(ptr noundef %1) #8
  %call49 = call i32 @schedule_timeout(i32 noundef %timeo.0115) #8
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %61 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %42, align 8
  call void @finish_wait(ptr noundef %62, ptr noundef nonnull %wait) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  %63 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load volatile i8, ptr %skc_state, align 2
  %cmp31 = icmp eq i8 %64, 2
  br i1 %cmp31, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %65 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load volatile i8, ptr %skc_state, align 2
  %conv53 = zext i8 %66 to i32
  %shl = shl nuw i32 1, %conv53
  %and54 = and i32 %shl, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else, label %while.end.if.end65_crit_edge

while.end.if.end65_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %68)
  %cmp60 = icmp eq i8 %68, 8
  %. = select i1 %cmp60, i32 -104, i32 -111
  br label %if.end65

if.end65:                                         ; preds = %if.else, %while.end.if.end65_crit_edge
  %cond = phi i32 [ 3, %while.end.if.end65_crit_edge ], [ 1, %if.else ]
  %err.2 = phi i32 [ 0, %while.end.if.end65_crit_edge ], [ %., %if.else ]
  %69 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cond, ptr %sock, align 128
  br label %out

out:                                              ; preds = %if.end65, %cleanup.thread, %if.then24, %sw.default, %sw.bb.out_crit_edge, %if.end11.out_crit_edge
  %err.3 = phi i32 [ -106, %sw.default ], [ %call22, %if.then24 ], [ %err.2, %if.end65 ], [ -106, %sw.bb.out_crit_edge ], [ -114, %if.end11.out_crit_edge ], [ %err.1.ph, %cleanup.thread ]
  call void @release_sock(ptr noundef %1) #8
  br label %cleanup68

cleanup68:                                        ; preds = %out, %if.end7.cleanup68_crit_edge, %if.end.cleanup68_crit_edge, %pn_socket_autobind.exit.cleanup68_crit_edge
  %retval.0 = phi i32 [ %err.3, %out ], [ -105, %pn_socket_autobind.exit.cleanup68_crit_edge ], [ -22, %if.end.cleanup68_crit_edge ], [ -97, %if.end7.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_socket_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #3 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %err, align 4, !annotation !88
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp.not = icmp eq i8 %4, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !73

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_prot, align 8
  %accept = getelementptr inbounds %struct.proto, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %accept to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %accept, align 4
  %call = call ptr %8(ptr noundef %1, i32 noundef %flags, ptr noundef nonnull %err, i1 noundef zeroext %kern) #8
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @lock_sock_nested(ptr noundef nonnull %call, i32 noundef 0) #8
  %sk1.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 4
  %11 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk1.i, align 16
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end8.sock_graft.exit_crit_edge, label %do.end.i, !prof !73

if.end8.sock_graft.exit_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_graft.exit

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2024, i32 noundef 9, ptr noundef null) #8
  br label %sock_graft.exit

sock_graft.exit:                                  ; preds = %do.end.i, %if.end8.sock_graft.exit_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #8
  %wq.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !89
  %13 = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %wq.i, ptr %13, align 8
  %15 = ptrtoint ptr %sk1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %sk1.i, align 16
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 71
  %16 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %newsock, ptr %sk_socket.i.i, align 8
  %sk_uid.i = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 55
  %i_uid.i = getelementptr inbounds %struct.socket_alloc, ptr %newsock, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_uid.i, align 4
  %19 = ptrtoint ptr %sk_uid.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sk_uid.i, align 4
  call void @security_sock_graft(ptr noundef nonnull %call, ptr noundef %newsock) #8
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #8
  %20 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %newsock, align 128
  call void @release_sock(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %sock_graft.exit, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sock_graft.exit ], [ %10, %if.then7 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_socket_poll(ptr noundef %file, ptr nocapture noundef readonly %sock, ptr noundef %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %2, align 8
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  %tobool3.not.i = icmp eq ptr %4, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %6(ptr noundef %file, ptr noundef nonnull %4, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp = icmp eq i8 %8, 7
  br i1 %cmp, label %poll_wait.exit.cleanup_crit_edge, label %if.end

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %poll_wait.exit
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %10, %sk_receive_queue
  %spec.select = select i1 %cmp.i, i32 0, i32 65
  %ctrlreq_queue = getelementptr inbounds %struct.pep_sock, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %ctrlreq_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ctrlreq_queue, align 4
  %cmp.i48 = icmp eq ptr %12, %ctrlreq_queue
  %or9 = or i32 %spec.select, 2
  %mask.1 = select i1 %cmp.i48, i32 %spec.select, i32 %or9
  %tobool.not = select i1 %cmp.i48, i1 %cmp.i, i1 false
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp14 = icmp eq i8 %14, 8
  br i1 %cmp14, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %15 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp21 = icmp eq i8 %16, 1
  br i1 %cmp21, label %land.lhs.true23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.end17
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #8
  %17 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %sk_wmem_alloc, align 4
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %19 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_sndbuf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp25 = icmp ult i32 %18, %20
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true27:                                  ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  %tx_credits = getelementptr inbounds %struct.pep_sock, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_credits, i32 noundef 4) #8
  %21 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %tx_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool29.not = icmp eq i32 %22, 0
  %or31 = or i32 %mask.1, 772
  %spec.select47 = select i1 %tobool29.not, i32 %mask.1, i32 %or31
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true27, %land.lhs.true23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %poll_wait.exit.cleanup_crit_edge ], [ 16, %land.lhs.true.cleanup_crit_edge ], [ %mask.1, %land.lhs.true23.cleanup_crit_edge ], [ %mask.1, %if.end17.cleanup_crit_edge ], [ %spec.select47, %land.lhs.true27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_socket_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #3 align 64 {
entry:
  %sa.i = alloca %struct.sockaddr_pn, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i) #8
  %2 = getelementptr inbounds i8, ptr %sa.i, i32 2
  %3 = call ptr @memset(ptr %2, i32 0, i32 14)
  %4 = ptrtoint ptr %sa.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 35, ptr %sa.i, align 2
  %call.i = call i32 @pn_socket_bind(ptr noundef %sock, ptr noundef nonnull %sa.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -22
  br i1 %cmp.not.i, label %do.body.i, label %pn_socket_autobind.exit

do.body.i:                                        ; preds = %entry
  %5 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk1, align 16
  %sobject.i = getelementptr inbounds %struct.pn_sock, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %sobject.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sobject.i, align 8
  %9 = and i16 %8, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %do.body7.i, label %pn_socket_autobind.exit.thread, !prof !70

pn_socket_autobind.exit.thread:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  br label %if.end

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 213, 0\0A.popsection", ""() #8, !srcloc !87
  unreachable

pn_socket_autobind.exit:                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %pn_socket_autobind.exit.if.end_crit_edge, label %pn_socket_autobind.exit.cleanup_crit_edge

pn_socket_autobind.exit.cleanup_crit_edge:        ; preds = %pn_socket_autobind.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pn_socket_autobind.exit.if.end_crit_edge:         ; preds = %pn_socket_autobind.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %pn_socket_autobind.exit.if.end_crit_edge, %pn_socket_autobind.exit.thread
  call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %10 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end3:                                          ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp4.not = icmp eq i8 %13, 10
  br i1 %cmp4.not, label %if.end3.if.end9_crit_edge, label %if.then6

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 10, ptr %skc_state, align 2
  %sk_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %15 = ptrtoint ptr %sk_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sk_ack_backlog, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end3.if.end9_crit_edge
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %16 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  br label %out

out:                                              ; preds = %if.end9, %if.end.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end9 ], [ -22, %if.end.out_crit_edge ]
  call void @release_sock(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %pn_socket_autobind.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -105, %pn_socket_autobind.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pn_sock_get_port(ptr nocapture noundef %sk, i16 noundef zeroext %sport) #3 align 64 {
entry:
  %try_sa = alloca %struct.sockaddr_pn, align 2
  %pmin = alloca i32, align 4
  %pmax = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %try_sa) #8
  %2 = getelementptr inbounds %struct.sockaddr_pn, ptr %try_sa, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sockaddr_pn, ptr %try_sa, i32 0, i32 2
  %4 = getelementptr inbounds i8, ptr %try_sa, i32 2
  %5 = call ptr @memset(ptr %4, i32 0, i32 14)
  %6 = ptrtoint ptr %try_sa to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 35, ptr %try_sa, align 2
  %call2 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @port_mutex) #8
  br i1 %call2, label %entry.if.end_crit_edge, label %do.end, !prof !73

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 480, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sport)
  %tobool22.not = icmp eq i16 %sport, 0
  br i1 %tobool22.not, label %if.then23, label %if.else37

if.then23:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmin) #8
  %7 = ptrtoint ptr %pmin to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %pmin, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmax) #8
  %8 = ptrtoint ptr %pmax to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pmax, align 4, !annotation !88
  call void @phonet_get_local_port_range(ptr noundef nonnull %pmin, ptr noundef nonnull %pmax) #8
  %9 = ptrtoint ptr %pmin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pmin, align 4
  %11 = ptrtoint ptr %pmax to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pmax, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not78 = icmp sgt i32 %10, %12
  br i1 %cmp.not78, label %if.then23.cleanup_crit_edge, label %if.then23.for.body_crit_edge

if.then23.for.body_crit_edge:                     ; preds = %if.then23
  br label %for.body

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %sock_put.exit.for.body_crit_edge, %if.then23.for.body_crit_edge
  %13 = phi i32 [ %27, %sock_put.exit.for.body_crit_edge ], [ %12, %if.then23.for.body_crit_edge ]
  %port.079 = phi i32 [ %inc34, %sock_put.exit.for.body_crit_edge ], [ %10, %if.then23.for.body_crit_edge ]
  %14 = load i32, ptr @pn_sock_get_port.port_cur, align 4
  %inc = add i32 %14, 1
  %15 = ptrtoint ptr %pmin to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pmin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %16)
  %cmp24 = icmp slt i32 %inc, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %13)
  %cmp25 = icmp sgt i32 %inc, %13
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp25
  %spec.store.select = select i1 %or.cond, i32 %16, i32 %inc
  store i32 %spec.store.select, ptr @pn_sock_get_port.port_cur, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 1
  %19 = and i8 %18, -4
  %20 = lshr i32 %spec.store.select, 8
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 3
  %conv6.i = or i8 %22, %19
  store i8 %conv6.i, ptr %3, align 1
  %conv9.i = trunc i32 %spec.store.select to i8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv9.i, ptr %2, align 2
  %call28 = call ptr @pn_find_sock_by_sa(ptr noundef %1, ptr noundef nonnull %try_sa)
  %cmp29 = icmp eq ptr %call28, null
  br i1 %cmp29, label %cleanup.thread, label %if.else

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %24 = load i32, ptr @pn_sock_get_port.port_cur, align 4
  %conv32 = trunc i32 %24 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmax) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmin) #8
  br label %found

if.else:                                          ; preds = %for.body
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call28, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !73

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !90
  call void @sk_free(ptr noundef nonnull %call28) #8
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %inc34 = add i32 %port.079, 1
  %26 = ptrtoint ptr %pmax to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pmax, align 4
  %cmp.not = icmp sgt i32 %inc34, %27
  br i1 %cmp.not, label %sock_put.exit.cleanup_crit_edge, label %sock_put.exit.for.body_crit_edge

sock_put.exit.for.body_crit_edge:                 ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

sock_put.exit.cleanup_crit_edge:                  ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sock_put.exit.cleanup_crit_edge, %if.then23.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmax) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmin) #8
  br label %cleanup48

if.else37:                                        ; preds = %if.end
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %3, align 1
  %30 = and i8 %29, -4
  %31 = lshr i16 %sport, 8
  %32 = trunc i16 %31 to i8
  %33 = and i8 %32, 3
  %conv6.i63 = or i8 %30, %33
  store i8 %conv6.i63, ptr %3, align 1
  %conv9.i64 = trunc i16 %sport to i8
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv9.i64, ptr %2, align 2
  %call38 = call ptr @pn_find_sock_by_sa(ptr noundef %1, ptr noundef nonnull %try_sa)
  %cmp39 = icmp eq ptr %call38, null
  br i1 %cmp39, label %if.else37.found_crit_edge, label %if.else42

if.else37.found_crit_edge:                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %found

if.else42:                                        ; preds = %if.else37
  %skc_refcnt.i66 = getelementptr inbounds %struct.sock_common, ptr %call38, i32 0, i32 19
  %call.i.i.i.i.i.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i66, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i66, i32 1, i32 3, i32 1) #8
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i66, ptr %skc_refcnt.i66, i32 1, ptr elementtype(i32) %skc_refcnt.i66) #8, !srcloc !78
  %asmresult.i.i.i.i.i.i.i68 = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i68)
  %cmp.i.i.i.i69 = icmp eq i32 %asmresult.i.i.i.i.i.i.i68, 1
  br i1 %cmp.i.i.i.i69, label %if.then.i73, label %if.end5.i.i.i.i71

if.end5.i.i.i.i71:                                ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i68)
  %.not.i.i.i.i70 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i68, 0
  br i1 %.not.i.i.i.i70, label %if.end5.i.i.i.i71.cleanup48_crit_edge, label %if.then10.i.i.i.i72, !prof !73

if.end5.i.i.i.i71.cleanup48_crit_edge:            ; preds = %if.end5.i.i.i.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup48

if.then10.i.i.i.i72:                              ; preds = %if.end5.i.i.i.i71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i66, i32 noundef 3) #8
  br label %cleanup48

if.then.i73:                                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @sk_free(ptr noundef nonnull %call38) #8
  br label %cleanup48

found:                                            ; preds = %if.else37.found_crit_edge, %cleanup.thread
  %sport.addr.1 = phi i16 [ %sport, %if.else37.found_crit_edge ], [ %conv32, %cleanup.thread ]
  %sobject = getelementptr inbounds %struct.pn_sock, ptr %sk, i32 0, i32 1
  %36 = ptrtoint ptr %sobject to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sobject, align 8
  %conv.i = and i16 %37, -1024
  %38 = and i16 %sport.addr.1, 1023
  %or.i = or i16 %conv.i, %38
  store i16 %or.i, ptr %sobject, align 8
  br label %cleanup48

cleanup48:                                        ; preds = %found, %if.then.i73, %if.then10.i.i.i.i72, %if.end5.i.i.i.i71.cleanup48_crit_edge, %cleanup
  %retval.0 = phi i32 [ 0, %found ], [ -98, %cleanup ], [ -98, %if.end5.i.i.i.i71.cleanup48_crit_edge ], [ -98, %if.then10.i.i.i.i72 ], [ -98, %if.then.i73 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %try_sa) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phonet_get_local_port_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pn_sock_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !69
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.cond.end_crit_edge, label %cond.true

rcu_read_lock.exit.cond.end_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %rcu_read_lock.exit
  %sub = add i64 %5, -1
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %6 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %for.end.i.do.body.i_crit_edge, %cond.true
  %pos.addr.066.i = phi i64 [ %sub, %cond.true ], [ %pos.addr.1.lcssa.i, %for.end.i.do.body.i_crit_edge ]
  %hlist.065.i = phi ptr [ @pnsocks, %cond.true ], [ %incdec.ptr.i, %for.end.i.do.body.i_crit_edge ]
  %h.064.i = phi i32 [ 0, %cond.true ], [ %inc.i, %for.end.i.do.body.i_crit_edge ]
  %call1.i2 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i4:                                 ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i4.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i4.do.end.i_crit_edge:              ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i4
  %.b53.i = load i1, ptr @pn_sock_get_idx.__warned, align 1
  br i1 %.b53.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i5

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i5:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @pn_sock_get_idx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 527, ptr noundef nonnull @.str.2) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i5, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i4.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %10 = ptrtoint ptr %hlist.065.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hlist.065.i, align 4
  %tobool11.not.i = icmp eq ptr %11, null
  %add.ptr.i = getelementptr i8, ptr %11, i32 -84
  %tobool14.not6069.i = icmp eq ptr %add.ptr.i, null
  %tobool14.not60.i = or i1 %tobool11.not.i, %tobool14.not6069.i
  br i1 %tobool14.not60.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body15.i_crit_edge

do.end.i.for.body15.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body15.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body15.i:                                     ; preds = %for.inc.i.for.body15.i_crit_edge, %do.end.i.for.body15.i_crit_edge
  %pos.addr.163.i = phi i64 [ %pos.addr.2.i, %for.inc.i.for.body15.i_crit_edge ], [ %pos.addr.066.i, %do.end.i.for.body15.i_crit_edge ]
  %sknode.061.i = phi ptr [ %add.ptr35.i, %for.inc.i.for.body15.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body15.i_crit_edge ]
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sknode.061.i, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %13
  br i1 %cmp.i.not.i, label %if.end20.i, label %for.body15.i.for.inc.i_crit_edge

for.body15.i.for.inc.i_crit_edge:                 ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end20.i:                                       ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.addr.163.i)
  %tobool21.not.i = icmp eq i64 %pos.addr.163.i, 0
  br i1 %tobool21.not.i, label %if.end20.i.cond.end_crit_edge, label %if.end23.i

if.end20.i.cond.end_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end23.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i64 %pos.addr.163.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i, %for.body15.i.for.inc.i_crit_edge
  %pos.addr.2.i = phi i64 [ %dec.i, %if.end23.i ], [ %pos.addr.163.i, %for.body15.i.for.inc.i_crit_edge ]
  %14 = getelementptr inbounds %struct.sock_common, ptr %sknode.061.i, i32 0, i32 15
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %14, align 4
  %tobool31.not.i = icmp eq ptr %16, null
  %add.ptr35.i = getelementptr i8, ptr %16, i32 -84
  %tobool14.not72.i = icmp eq ptr %add.ptr35.i, null
  %tobool14.not.i = or i1 %tobool31.not.i, %tobool14.not72.i
  br i1 %tobool14.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body15.i_crit_edge

for.inc.i.for.body15.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %pos.addr.1.lcssa.i = phi i64 [ %pos.addr.066.i, %do.end.i.for.end.i_crit_edge ], [ %pos.addr.2.i, %for.inc.i.for.end.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.hlist_head, ptr %hlist.065.i, i32 1
  %inc.i = add nuw nsw i32 %h.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i.cond.end_crit_edge, label %for.end.i.do.body.i_crit_edge

for.end.i.do.body.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.end.i.cond.end_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.end:                                         ; preds = %for.end.i.cond.end_crit_edge, %if.end20.i.cond.end_crit_edge, %rcu_read_lock.exit.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 1 to ptr), %rcu_read_lock.exit.cond.end_crit_edge ], [ %sknode.061.i, %if.end20.i.cond.end_crit_edge ], [ null, %for.end.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn_sock_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !74
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pn_sock_seq_next(ptr nocapture noundef readonly %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br i1 %cmp, label %entry.do.body.i_crit_edge, label %entry.do.body.i6_crit_edge

entry.do.body.i6_crit_edge:                       ; preds = %entry
  br label %do.body.i6

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %for.end.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %hlist.065.i = phi ptr [ %incdec.ptr.i, %for.end.i.do.body.i_crit_edge ], [ @pnsocks, %entry.do.body.i_crit_edge ]
  %h.064.i = phi i32 [ %inc.i, %for.end.i.do.body.i_crit_edge ], [ 0, %entry.do.body.i_crit_edge ]
  %call1.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b53.i = load i1, ptr @pn_sock_get_idx.__warned, align 1
  br i1 %.b53.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @pn_sock_get_idx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 527, ptr noundef nonnull @.str.2) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %4 = ptrtoint ptr %hlist.065.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hlist.065.i, align 4
  %tobool11.not.i = icmp eq ptr %5, null
  %add.ptr.i = getelementptr i8, ptr %5, i32 -84
  %tobool14.not6069.i = icmp eq ptr %add.ptr.i, null
  %tobool14.not60.i = or i1 %tobool11.not.i, %tobool14.not6069.i
  br i1 %tobool14.not60.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body15.i_crit_edge

do.end.i.for.body15.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body15.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body15.i:                                     ; preds = %for.inc.i.for.body15.i_crit_edge, %do.end.i.for.body15.i_crit_edge
  %sknode.061.i = phi ptr [ %add.ptr35.i, %for.inc.i.for.body15.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body15.i_crit_edge ]
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sknode.061.i, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %7
  br i1 %cmp.i.not.i, label %for.body15.i.if.end_crit_edge, label %for.inc.i

for.body15.i.if.end_crit_edge:                    ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i:                                        ; preds = %for.body15.i
  %8 = getelementptr inbounds %struct.sock_common, ptr %sknode.061.i, i32 0, i32 15
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 4
  %tobool31.not.i = icmp eq ptr %10, null
  %add.ptr35.i = getelementptr i8, ptr %10, i32 -84
  %tobool14.not72.i = icmp eq ptr %add.ptr35.i, null
  %tobool14.not.i = or i1 %tobool31.not.i, %tobool14.not72.i
  br i1 %tobool14.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body15.i_crit_edge

for.inc.i.for.body15.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.hlist_head, ptr %hlist.065.i, i32 1
  %inc.i = add nuw nsw i32 %h.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i.if.end_crit_edge, label %for.end.i.do.body.i_crit_edge

for.end.i.do.body.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body.i6:                                       ; preds = %land.rhs.i.do.body.i6_crit_edge, %entry.do.body.i6_crit_edge
  %sk.addr.0.i = phi ptr [ %add.ptr.i.i, %land.rhs.i.do.body.i6_crit_edge ], [ %v, %entry.do.body.i6_crit_edge ]
  %11 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i, i32 0, i32 15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 -84
  %tobool.not8.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i5 = or i1 %tobool.not.i.i, %tobool.not8.i
  br i1 %tobool.not.i5, label %do.body.i6.if.end_crit_edge, label %land.rhs.i

do.body.i6.if.end_crit_edge:                      ; preds = %do.body.i6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs.i:                                       ; preds = %do.body.i6
  %skc_net.i.i7 = getelementptr i8, ptr %13, i32 -48
  %14 = ptrtoint ptr %skc_net.i.i7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_net.i.i7, align 4
  %cmp.i.not.i8 = icmp eq ptr %3, %15
  br i1 %cmp.i.not.i8, label %land.rhs.i.if.end_crit_edge, label %land.rhs.i.do.body.i6_crit_edge

land.rhs.i.do.body.i6_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i6

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.rhs.i.if.end_crit_edge, %do.body.i6.if.end_crit_edge, %for.end.i.if.end_crit_edge, %for.body15.i.if.end_crit_edge
  %sk.0 = phi ptr [ %sknode.061.i, %for.body15.i.if.end_crit_edge ], [ null, %for.end.i.if.end_crit_edge ], [ %add.ptr.i.i, %land.rhs.i.if.end_crit_edge ], [ null, %do.body.i6.if.end_crit_edge ]
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %sk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_sock_seq_show(ptr noundef %seq, ptr noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 3
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  %add.i = add i32 %1, 127
  %pad_until.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 4
  %2 = ptrtoint ptr %pad_until.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add.i, ptr %pad_until.i, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.10) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 46
  %3 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sk_protocol, align 4
  %conv = zext i16 %4 to i32
  %sobject = getelementptr inbounds %struct.pn_sock, ptr %v, i32 0, i32 1
  %5 = ptrtoint ptr %sobject to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sobject, align 8
  %conv1 = zext i16 %6 to i32
  %dobject = getelementptr inbounds %struct.pn_sock, ptr %v, i32 0, i32 2
  %7 = ptrtoint ptr %dobject to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dobject, align 2
  %conv2 = zext i16 %8 to i32
  %resource = getelementptr inbounds %struct.pn_sock, ptr %v, i32 0, i32 3
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %resource, align 4
  %conv3 = zext i8 %10 to i32
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  %conv4 = zext i8 %12 to i32
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #8
  %13 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %14, -1
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #8
  %15 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sk_backlog.i, align 4
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %17 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %user_ns.i, align 4
  %call8 = tail call i32 @sock_i_uid(ptr noundef %v) #8
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call8, 0
  %call10 = tail call i32 @from_kuid_munged(ptr noundef %22, [1 x i32] %.fca.0.insert) #8
  %call11 = tail call i32 @sock_i_ino(ptr noundef %v) #8
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 19
  %call.i.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #8
  %23 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %skc_refcnt, align 4
  %sk_drops = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_drops, i32 noundef 4) #8
  %25 = ptrtoint ptr %sk_drops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %sk_drops, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %sub.i, i32 noundef %16, i32 noundef %call10, i32 noundef %call11, i32 noundef %24, ptr noundef %v, i32 noundef %26) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @seq_pad(ptr noundef %seq, i8 noundef zeroext 10) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pn_find_sock_by_res(ptr noundef readnone %net, i8 noundef zeroext %res) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !69
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %idxprom = zext i8 %res to i32
  %arrayidx = getelementptr [256 x ptr], ptr @pnres, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @pn_find_sock_by_res.__warned, align 1
  br i1 %.b18, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @pn_find_sock_by_res.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 622, ptr noundef nonnull @.str.3) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %do.end11.if.end15_crit_edge, label %if.then14

do.end11.if.end15_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %do.end11
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !72
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then14.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.then14.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then14
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end15_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end15_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then14.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then14.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #8
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end15_crit_edge, %do.end11.if.end15_crit_edge
  %call.i19 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i19, label %if.end15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

if.end15.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %if.end15
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %if.end15.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !74
  %8 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i.i.i.i.i26 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %rcu_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pn_sock_bind_res(ptr noundef %sk, i8 noundef zeroext %res) local_unnamed_addr #3 align 64 {
entry:
  %sa.i = alloca %struct.sockaddr_pn, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %1, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %2 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_socket, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa.i) #8
  %4 = getelementptr inbounds i8, ptr %sa.i, i32 2
  %5 = call ptr @memset(ptr %4, i32 0, i32 14)
  %6 = ptrtoint ptr %sa.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 35, ptr %sa.i, align 2
  %call.i = call i32 @pn_socket_bind(ptr noundef %3, ptr noundef nonnull %sa.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -22
  br i1 %cmp.not.i, label %do.body.i, label %pn_socket_autobind.exit

do.body.i:                                        ; preds = %if.end4
  %sk.i = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk.i, align 16
  %sobject.i = getelementptr inbounds %struct.pn_sock, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %sobject.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sobject.i, align 8
  %11 = and i16 %10, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %do.body7.i, label %pn_socket_autobind.exit.thread, !prof !70

pn_socket_autobind.exit.thread:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  br label %if.end8

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 213, 0\0A.popsection", ""() #8, !srcloc !87
  unreachable

pn_socket_autobind.exit:                          ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %pn_socket_autobind.exit.if.end8_crit_edge, label %pn_socket_autobind.exit.cleanup_crit_edge

pn_socket_autobind.exit.cleanup_crit_edge:        ; preds = %pn_socket_autobind.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pn_socket_autobind.exit.if.end8_crit_edge:        ; preds = %pn_socket_autobind.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %pn_socket_autobind.exit.if.end8_crit_edge, %pn_socket_autobind.exit.thread
  call void @mutex_lock_nested(ptr noundef nonnull @resource_mutex, i32 noundef 0) #8
  %idxprom = zext i8 %res to i32
  %arrayidx = getelementptr [256 x ptr], ptr @pnres, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %13, null
  br i1 %cmp, label %if.then9, label %if.end8.if.end47_crit_edge

if.end8.if.end47_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then9:                                         ; preds = %if.end8
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !72
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then9.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.then9.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then9
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then9.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then9.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #8
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !91
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %sk, ptr %arrayidx, align 4
  br label %if.end47

if.end47:                                         ; preds = %sock_hold.exit, %if.end8.if.end47_crit_edge
  %ret.0 = phi i32 [ 0, %sock_hold.exit ], [ -98, %if.end8.if.end47_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @resource_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %pn_socket_autobind.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end47 ], [ -515, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -11, %pn_socket_autobind.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pn_sock_unbind_res(ptr noundef %sk, i8 noundef zeroext %res) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @resource_mutex, i32 noundef 0) #8
  %idxprom = zext i8 %res to i32
  %arrayidx = getelementptr [256 x ptr], ptr @pnres, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, %sk
  br i1 %cmp, label %if.then15, label %if.end13

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @resource_mutex) #8
  br label %cleanup

if.then15:                                        ; preds = %if.end
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @resource_mutex) #8
  tail call void @synchronize_rcu() #8
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !73

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @sk_free(ptr noundef %sk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -2, %if.end13 ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pn_res_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @resource_mutex, i32 noundef 0) #8
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %2 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.i.not.i = icmp eq ptr %5, @init_net
  br i1 %cmp.i.not.i, label %for.body.i.preheader, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

for.body.i.preheader:                             ; preds = %cond.true
  %sub = add i64 %1, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %pos.addr.014.i = phi i64 [ %pos.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %sub, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [256 x ptr], ptr @pnres, i32 0, i32 %i.015.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %7, null
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.addr.014.i)
  %tobool5.not.i = icmp eq i64 %pos.addr.014.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.cond.end_crit_edge, label %if.end7.i

if.end4.i.cond.end_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i64 %pos.addr.014.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end7.i, %for.body.i.for.inc.i_crit_edge
  %pos.addr.1.i = phi i64 [ %pos.addr.014.i, %for.body.i.for.inc.i_crit_edge ], [ %dec.i, %if.end7.i ]
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc.i.cond.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cond.end_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.end:                                         ; preds = %for.inc.i.cond.end_crit_edge, %if.end4.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ], [ null, %cond.true.cond.end_crit_edge ], [ %arrayidx.i, %if.end4.i.cond.end_crit_edge ], [ null, %for.inc.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn_res_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @resource_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pn_res_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.i.not.i = icmp eq ptr %3, @init_net
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i.not.i, label %if.then.for.body.i_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x ptr], ptr @pnres, i32 0, i32 %i.015.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %5, null
  br i1 %cmp2.i, label %for.inc.i, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.not.i, label %do.end10.i, label %do.body5.i, !prof !73

do.body5.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/socket.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !92
  unreachable

do.end10.i:                                       ; preds = %if.else
  %sub.ptr.lhs.cast.i = ptrtoint ptr %v to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @pnres to i32)
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i7.for.cond.i_crit_edge, %do.end10.i
  %i.0.in.i = phi i32 [ %sub.ptr.div.i, %do.end10.i ], [ %i.0.i, %for.body.i7.for.cond.i_crit_edge ]
  %i.0.i = add nsw i32 %i.0.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.0.i)
  %cmp.i = icmp ult i32 %i.0.i, 256
  br i1 %cmp.i, label %for.body.i7, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i7:                                      ; preds = %for.cond.i
  %arrayidx.i6 = getelementptr [256 x ptr], ptr @pnres, i32 0, i32 %i.0.i
  %6 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i6, align 4
  %tobool11.not.i = icmp eq ptr %7, null
  br i1 %tobool11.not.i, label %for.body.i7.for.cond.i_crit_edge, label %for.body.i7.if.end_crit_edge

for.body.i7.if.end_crit_edge:                     ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i7.for.cond.i_crit_edge:                 ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i7.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %sk.0 = phi ptr [ null, %if.then.if.end_crit_edge ], [ %arrayidx.i, %for.body.i.if.end_crit_edge ], [ null, %for.inc.i.if.end_crit_edge ], [ null, %for.cond.i.if.end_crit_edge ], [ %arrayidx.i6, %for.body.i7.if.end_crit_edge ]
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %sk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_res_seq_show(ptr noundef %seq, ptr noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 3
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  %add.i = add i32 %1, 63
  %pad_until.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 4
  %2 = ptrtoint ptr %pad_until.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add.i, ptr %pad_until.i, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.14) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %v, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %v to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @pnres to i32)
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %5 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_ns.i, align 4
  %call1 = tail call i32 @sock_i_uid(ptr noundef %4) #8
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call1, 0
  %call3 = tail call i32 @from_kuid_munged(ptr noundef %10, [1 x i32] %.fca.0.insert) #8
  %call4 = tail call i32 @sock_i_ino(ptr noundef %4) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, i32 noundef %sub.ptr.div, i32 noundef %call3, i32 noundef %call4) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @seq_pad(ptr noundef %seq, i8 noundef zeroext 10) #8
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_receive_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phonet_address_lookup(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phonet_device_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @phonet_address_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sock_graft(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !47, !49, !51, !53, !54, !55, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @pn_sock_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/phonet/socket.c", i32 54, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!4 = !{!"../net/phonet/socket.c", i32 75, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_pn_sock_hash, !8, !"__ksymtab_pn_sock_hash", i1 false, i1 false}
!8 = !{!"../net/phonet/socket.c", i32 142, i32 1}
!9 = !{ptr @__ksymtab_pn_sock_unhash, !10, !"__ksymtab_pn_sock_unhash", i1 false, i1 false}
!10 = !{!"../net/phonet/socket.c", i32 152, i32 1}
!11 = !{ptr @phonet_dgram_ops, !12, !"phonet_dgram_ops", i1 false, i1 false}
!12 = !{!"../net/phonet/socket.c", i32 428, i32 24}
!13 = !{ptr @phonet_stream_ops, !14, !"phonet_stream_ops", i1 false, i1 false}
!14 = !{!"../net/phonet/socket.c", i32 447, i32 24}
!15 = !{ptr @__ksymtab_phonet_stream_ops, !16, !"__ksymtab_phonet_stream_ops", i1 false, i1 false}
!16 = !{!"../net/phonet/socket.c", i32 467, i32 1}
!17 = !{ptr @pn_sock_get_port.port_cur, !18, !"port_cur", i1 false, i1 false}
!18 = !{!"../net/phonet/socket.c", i32 472, i32 13}
!19 = !{ptr @__ksymtab_pn_sock_get_port, !20, !"__ksymtab_pn_sock_get_port", i1 false, i1 false}
!20 = !{!"../net/phonet/socket.c", i32 516, i32 1}
!21 = !{ptr @pn_sock_seq_ops, !22, !"pn_sock_seq_ops", i1 false, i1 false}
!22 = !{!"../net/phonet/socket.c", i32 599, i32 29}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/phonet/socket.c", i32 622, i32 7}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pn_res_seq_ops, !27, !"pn_res_seq_ops", i1 false, i1 false}
!27 = !{!"../net/phonet/socket.c", i32 768, i32 29}
!28 = !{ptr @pnsocks, !29, !"pnsocks", i1 false, i1 false}
!29 = !{!"../net/phonet/socket.c", i32 46, i32 3}
!30 = !{ptr @pnres, !31, !"pnres", i1 false, i1 false}
!31 = !{!"../net/phonet/socket.c", i32 609, i32 3}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!38 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/net/sock.h", i32 729, i32 3}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/phonet/socket.c", i32 154, i32 8}
!43 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @port_mutex, !42, !"port_mutex", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/phonet/socket.c", i32 527, i32 3}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/phonet/socket.c", i32 579, i32 17}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/phonet/socket.c", i32 585, i32 19}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/phonet/socket.c", i32 629, i32 8}
!53 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @resource_mutex, !52, !"resource_mutex", i1 false, i1 false}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/phonet/socket.c", i32 754, i32 17}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/phonet/socket.c", i32 759, i32 19}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2149908120}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2156860763, i64 2156861246, i64 2156860800, i64 2156860856, i64 2156860890, i64 2156860914, i64 2156860955, i64 2156860976, i64 2156861004, i64 2156861038}
!72 = !{i64 2148572779, i64 2148572811, i64 2148572840, i64 2148572874, i64 2148572905, i64 2148572928}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2149908386}
!75 = !{i64 2151492675}
!76 = !{i64 2151477608}
!77 = !{i64 2148660804}
!78 = !{i64 2148575244, i64 2148575276, i64 2148575305, i64 2148575339, i64 2148575370, i64 2148575393}
!79 = !{i64 4720492}
!80 = !{i64 4720689}
!81 = !{i64 2152205922}
!82 = !{i64 2156879014, i64 2156879294, i64 2156879628, i64 2156879962}
!83 = !{i64 975929, i64 975990}
!84 = !{i64 978661}
!85 = !{i64 978946}
!86 = !{i64 2156889222, i64 2156889502, i64 2156889836, i64 2156890170}
!87 = !{i64 2156870690, i64 2156871174, i64 2156870727, i64 2156870783, i64 2156870817, i64 2156870841, i64 2156870882, i64 2156870903, i64 2156870931, i64 2156870965}
!88 = !{!"auto-init"}
!89 = !{i64 2156708550}
!90 = !{i64 2149858577}
!91 = !{i64 2156929231}
!92 = !{i64 2156936987, i64 2156937471, i64 2156937024, i64 2156937080, i64 2156937114, i64 2156937138, i64 2156937179, i64 2156937200, i64 2156937228, i64 2156937262}
