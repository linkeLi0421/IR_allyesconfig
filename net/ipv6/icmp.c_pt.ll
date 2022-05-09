; ModuleID = '/llk/IR_all_yes/net/ipv6/icmp.c_pt.bc'
source_filename = "../net/ipv6/icmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+icmp6_send\22, \22a\22\09"
module asm "\09.weak\09__crc_icmp6_send\09\09\09\09"
module asm "\09.long\09__crc_icmp6_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icmp6_send:\09\09\09\09\09"
module asm "\09.asciz \09\22icmp6_send\22\09\09\09\09\09"
module asm "__kstrtabns_icmp6_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip6_err_gen_icmpv6_unreach\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_err_gen_icmpv6_unreach\09\09\09\09"
module asm "\09.long\09__crc_ip6_err_gen_icmpv6_unreach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_err_gen_icmpv6_unreach:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_err_gen_icmpv6_unreach\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_err_gen_icmpv6_unreach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+icmpv6_err_convert\22, \22a\22\09"
module asm "\09.weak\09__crc_icmpv6_err_convert\09\09\09\09"
module asm "\09.long\09__crc_icmpv6_err_convert\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icmpv6_err_convert:\09\09\09\09\09"
module asm "\09.asciz \09\22icmpv6_err_convert\22\09\09\09\09\09"
module asm "__kstrtabns_icmpv6_err_convert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.icmp6_err = type { i32, i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.79, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.79 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.69, i32, %struct.spinlock }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, ptr }
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
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.130, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.131, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.132, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.126, [0 x i32], %union.anon.127, i16, i16, %union.anon.128, %struct.refcount_struct, [0 x i32], %union.anon.129 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { %struct.hlist_node }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.130 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.131 = type { ptr }
%union.anon.132 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
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
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.156 }
%union.anon.156 = type { [1 x i32] }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.icmpv6_msg = type { ptr, i32, i8 }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.136, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.136 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.150 = type { ptr }
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
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.38 }
%union.anon.38 = type { %struct.flowi6 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.157, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.anon.40 = type { i8, i8 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.inet6_skb_parm = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ipv6_destopt_hao = type <{ i8, i8, %struct.in6_addr }>
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.71, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.71 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.74, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.74 = type { %struct.in6_addr }
%struct.inetpeer_addr = type { %union.anon.167, i16 }
%union.anon.167 = type { %struct.in6_addr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.170, i32, i32, i8, i8 }
%struct.anon.170 = type { i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.67, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.68, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.67 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.68 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.xfrm_mode = type { i8, i8, i8 }

@icmp6_send.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"icmp6_send\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/ipv6/icmp.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"icmp6_send: addr_any/mcast source [%pI6c > %pI6c]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"IPv6: icmp6_send: addr_any/mcast source [%pI6c > %pI6c]\0A\00", [39 x i8] zeroinitializer }, align 32
@icmp6_send.descriptor.5 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"icmp6_send: no reply to icmp error [%pI6c > %pI6c]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"IPv6: icmp6_send: no reply to icmp error [%pI6c > %pI6c]\0A\00", [38 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_icmp6_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_icmp6_send = external dso_local constant [0 x i8], align 1
@__ksymtab_icmp6_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icmp6_send to i32), ptr @__kstrtab_icmp6_send, ptr @__kstrtabns_icmp6_send }, section "___ksymtab+icmp6_send", align 4
@__kstrtab_ip6_err_gen_icmpv6_unreach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_err_gen_icmpv6_unreach = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_err_gen_icmpv6_unreach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_err_gen_icmpv6_unreach to i32), ptr @__kstrtab_ip6_err_gen_icmpv6_unreach, ptr @__kstrtabns_ip6_err_gen_icmpv6_unreach }, section "___ksymtab+ip6_err_gen_icmpv6_unreach", align 4
@inet6_protos = external dso_local global [256 x ptr], align 4
@icmpv6_notify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@icmpv6_sk_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @icmpv6_sk_init, ptr null, ptr @icmpv6_sk_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@icmpv6_protocol = internal constant { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr null, ptr null, ptr @icmpv6_rcv, ptr @icmpv6_err, i32 3 }, [44 x i8] zeroinitializer }, align 32
@icmpv6_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013IPv6: Failed to register ICMP6 protocol\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"icmpv6_init\00", [20 x i8] zeroinitializer }, align 32
@icmpv6_init._entry_ptr = internal global ptr @icmpv6_init._entry, section ".printk_index", align 4
@tab_unreach = internal constant { [7 x %struct.icmp6_err], [40 x i8] } { [7 x %struct.icmp6_err] [%struct.icmp6_err { i32 101, i32 0 }, %struct.icmp6_err { i32 13, i32 1 }, %struct.icmp6_err { i32 113, i32 0 }, %struct.icmp6_err { i32 113, i32 0 }, %struct.icmp6_err { i32 111, i32 1 }, %struct.icmp6_err { i32 13, i32 1 }, %struct.icmp6_err { i32 13, i32 1 }], [40 x i8] zeroinitializer }, align 32
@__kstrtab_icmpv6_err_convert = external dso_local constant [0 x i8], align 1
@__kstrtabns_icmpv6_err_convert = external dso_local constant [0 x i8], align 1
@__ksymtab_icmpv6_err_convert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icmpv6_err_convert to i32), ptr @__kstrtab_icmpv6_err_convert, ptr @__kstrtabns_icmpv6_err_convert }, section "___ksymtab+icmpv6_err_convert", align 4
@ipv6_icmp_table_template = internal global { [6 x %struct.ctl_table], [40 x i8] } { [6 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.33, ptr getelementptr (i8, ptr @init_net, i64 1980), i32 4, i16 420, ptr null, ptr @proc_dointvec_ms_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.34, ptr getelementptr (i8, ptr @init_net, i64 1984), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.35, ptr getelementptr (i8, ptr @init_net, i64 1985), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.36, ptr getelementptr (i8, ptr @init_net, i64 1986), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.37, ptr getelementptr (i8, ptr @init_net, i64 2020), i32 256, i16 420, ptr null, ptr @proc_do_large_bitmap, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@rt6_get_prefsrc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/ip6_fib.h\00", [42 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@icmpv6_route_lookup.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"icmpv6_route_lookup\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"icmp6_send: acast source\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IPv6: icmp6_send: acast source\0A\00", [32 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@icmpv6_sk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013IPv6: Failed to initialize the ICMP6 control socket (err %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"icmpv6_sk_init\00", [17 x i8] zeroinitializer }, align 32
@icmpv6_sk_init._entry_ptr = internal global ptr @icmpv6_sk_init._entry, section ".printk_index", align 4
@icmpv6_rcv.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"icmpv6_rcv\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ICMPv6 checksum failed [%pI6c > %pI6c]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"IPv6: ICMPv6 checksum failed [%pI6c > %pI6c]\0A\00", [50 x i8] zeroinitializer }, align 32
@icmpv6_rcv.descriptor.30 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.31, i8 0, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"icmpv6: msg of unknown type [%pI6c > %pI6c]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"IPv6: icmpv6: msg of unknown type [%pI6c > %pI6c]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ratelimit\00", [22 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"echo_ignore_all\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"echo_ignore_multicast\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"echo_ignore_anycast\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ratemask\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [25 x i64] [i64 23, i64 8, i64 1, i64 2, i64 3, i64 4, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 139, i64 140, i64 143, i64 144, i64 145, i64 146, i64 147, i64 160, i64 161]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 137]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 525, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 534, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 858, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"icmpv6_sk_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1078, i32 33 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"icmpv6_protocol\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 106, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1103, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"tab_unreach\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1119, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [25 x i8] c"ipv6_icmp_table_template\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1184, i32 25 }
@___asan_gen_.88 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 1011, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [25 x i8] c"../include/net/ip6_fib.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 475, i32 9 }
@___asan_gen_.94 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 271, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 375, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 695, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 313, i32 9 }
@___asan_gen_.115 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 723, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1059, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 909, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 991, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1186, i32 15 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1193, i32 15 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1200, i32 15 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1207, i32 15 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [19 x i8] c"../net/ipv6/icmp.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1214, i32 15 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__ksymtab_icmp6_send, ptr @__ksymtab_icmpv6_err_convert, ptr @__ksymtab_ip6_err_gen_icmpv6_unreach, ptr @icmpv6_init._entry, ptr @icmpv6_init._entry_ptr, ptr @icmpv6_sk_init._entry, ptr @icmpv6_sk_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.11, ptr @icmpv6_sk_ops, ptr @icmpv6_protocol, ptr @.str.13, ptr @.str.14, ptr @tab_unreach, ptr @ipv6_icmp_table_template, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmpv6_sk_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmpv6_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmpv6_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tab_unreach to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_icmp_table_template to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmpv6_sk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @icmpv6_push_pending_frames(ptr noundef %sk, ptr noundef %fl6, ptr nocapture noundef readonly %thdr, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i47 = icmp eq ptr %1, %sk_write_queue
  %tobool.not55 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i47, %tobool.not55
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %6 = ptrtoint ptr %thdr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %thdr, align 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %add.ptr.i.i, align 4
  %icmp6_cksum = getelementptr inbounds %struct.icmp6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %icmp6_cksum to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %icmp6_cksum, align 2
  %qlen.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %12 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %skb.056 = load ptr, ptr %sk_write_queue, align 8
  %cmp10.not57 = icmp eq ptr %skb.056, %sk_write_queue
  br i1 %cmp10.not57, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %call5 = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i, i32 noundef 8, i32 noundef %15) #13
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call5, ptr %13, align 8
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %17 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flowic_proto, align 2
  %conv.i48 = zext i8 %18 to i32
  %call.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %len, i32 noundef %conv.i48, i32 noundef %call5) #13
  %19 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #16, !srcloc !96
  br label %if.end20

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %skb.059 = phi ptr [ %skb.0, %for.body.for.body_crit_edge ], [ %skb.056, %for.cond.preheader.for.body_crit_edge ]
  %tmp_csum.058 = phi i32 [ %add1.i, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb.059, i32 0, i32 15, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %add.i = add i32 %22, %tmp_csum.058
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %22)
  %cmp.i = icmp ult i32 %add.i, %22
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add i32 %add.i, %conv.i
  %23 = ptrtoint ptr %skb.059 to i32
  call void @__asan_load4_noabort(i32 %23)
  %skb.0 = load ptr, ptr %skb.059, align 8
  %cmp10.not = icmp eq ptr %skb.0, %sk_write_queue
  br i1 %cmp10.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %tmp_csum.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add1.i, %for.body.for.end_crit_edge ]
  %call13 = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i, i32 noundef 8, i32 noundef %tmp_csum.0.lcssa) #13
  %saddr14 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %daddr15 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %flowic_proto17 = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %24 = ptrtoint ptr %flowic_proto17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flowic_proto17, align 2
  %conv.i50 = zext i8 %25 to i32
  %call.i51 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr14, ptr noundef %daddr15, i32 noundef %len, i32 noundef %conv.i50, i32 noundef %call13) #13
  %26 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i51) #16, !srcloc !96
  br label %if.end20

if.end20:                                         ; preds = %for.end, %if.then4
  %storemerge.in.in.in = phi i32 [ %26, %for.end ], [ %19, %if.then4 ]
  %storemerge.in.in = xor i32 %storemerge.in.in.in, -1
  %storemerge.in = lshr i32 %storemerge.in.in, 16
  %storemerge = trunc i32 %storemerge.in to i16
  %27 = ptrtoint ptr %icmp6_cksum to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %storemerge, ptr %icmp6_cksum, align 2
  %call21 = tail call i32 @ip6_push_pending_frames(ptr noundef %sk) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_push_pending_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @icmp6_send(ptr noundef %skb, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %info, ptr noundef readonly %force_saddr, ptr nocapture noundef readonly %parm) #0 align 64 {
entry:
  %nexthdr.i = alloca i8, align 1
  %frag_off.i = alloca i16, align 2
  %_type.i = alloca i8, align 1
  %tmp_hdr = alloca %struct.icmp6hdr, align 8
  %fl6 = alloca %struct.flowi6, align 8
  %msg = alloca %struct.icmpv6_msg, align 4
  %ipc6 = alloca %struct.ipcm6_cookie, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_hdr) #13
  %4 = getelementptr inbounds %struct.icmp6hdr, ptr %tmp_hdr, i32 0, i32 1
  %5 = getelementptr inbounds %struct.icmp6hdr, ptr %tmp_hdr, i32 0, i32 2
  %6 = getelementptr inbounds %struct.icmp6hdr, ptr %tmp_hdr, i32 0, i32 3
  %7 = ptrtoint ptr %tmp_hdr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %tmp_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #13
  %8 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #13
  %9 = call ptr @memset(ptr %msg, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ipc6) #13
  %10 = call ptr @memset(ptr %ipc6, i32 255, i32 32)
  %cmp = icmp ult ptr %add.ptr.i.i, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i, i32 40
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %cmp3 = icmp ugt ptr %add.ptr, %12
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %13 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 127
  %16 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nd_net.i, align 4
  %fwmark_reflect = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 36, i32 1, i32 26
  %18 = ptrtoint ptr %fwmark_reflect to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fwmark_reflect, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not = icmp eq i8 %19, 0
  br i1 %tobool7.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %22, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ]
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call.i379 = tail call i32 @__ipv6_addr_type(ptr noundef %daddr) #13
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %13, align 8
  %call10 = tail call i32 @ipv6_chk_addr(ptr noundef %17, ptr noundef %daddr, ptr noundef %24, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %cond.end.if.then16_crit_edge

cond.end.if.then16_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

lor.lhs.false12:                                  ; preds = %cond.end
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %13, align 8
  %call14 = tail call zeroext i1 @ipv6_chk_acast_addr_src(ptr noundef %17, ptr noundef %26, ptr noundef %daddr) #13
  br i1 %call14, label %lor.lhs.false12.if.then16_crit_edge, label %lor.lhs.false12.if.end18_crit_edge

lor.lhs.false12.if.end18_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

lor.lhs.false12.if.then16_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false12.if.then16_crit_edge, %cond.end.if.then16_crit_edge
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %lor.lhs.false12.if.end18_crit_edge
  %saddr.0 = phi ptr [ %daddr, %if.then16 ], [ null, %lor.lhs.false12.if.end18_crit_edge ]
  %and = and i32 %call.i379, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %if.end18.if.then24_crit_edge

if.end18.if.then24_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

lor.lhs.false20:                                  ; preds = %if.end18
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %27 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp22.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp22.not, label %lor.lhs.false20.if.end40_crit_edge, label %lor.lhs.false20.if.then24_crit_edge

lor.lhs.false20.if.then24_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

lor.lhs.false20.if.end40_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then24:                                        ; preds = %lor.lhs.false20.if.then24_crit_edge, %if.end18.if.then24_crit_edge
  %28 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %if.then24.cleanup_crit_edge [
    i8 2, label %if.then24.if.end40_crit_edge
    i8 4, label %land.lhs.true31
  ]

if.then24.if.end40_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true31:                                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %code)
  %cmp33 = icmp eq i8 %code, 2
  br i1 %cmp33, label %land.lhs.true35, label %land.lhs.true31.cleanup_crit_edge

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %call36 = tail call fastcc zeroext i1 @opt_unrec(ptr noundef %skb, i32 noundef %info)
  br i1 %call36, label %land.lhs.true35.if.end40_crit_edge, label %land.lhs.true35.cleanup_crit_edge

land.lhs.true35.cleanup_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true35.if.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true35.if.end40_crit_edge, %if.then24.if.end40_crit_edge, %lor.lhs.false20.if.end40_crit_edge
  %saddr.1 = phi ptr [ %saddr.0, %lor.lhs.false20.if.end40_crit_edge ], [ null, %if.then24.if.end40_crit_edge ], [ null, %land.lhs.true35.if.end40_crit_edge ]
  %saddr41 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call.i380 = tail call i32 @__ipv6_addr_type(ptr noundef %saddr41) #13
  %and.i381 = and i32 %call.i380, 65535
  %and.i382 = and i32 %call.i380, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i382)
  %tobool.not.i383 = icmp eq i32 %and.i382, 0
  br i1 %tobool.not.i383, label %lor.rhs.i, label %if.end40.if.then44_crit_edge

if.end40.if.then44_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

lor.rhs.i:                                        ; preds = %if.end40
  %and1.i = and i32 %call.i380, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 0
  %and3.i = and i32 %call.i380, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %or.cond432 = and i1 %tobool2.not.i, %tobool4.i
  br i1 %or.cond432, label %lor.rhs.i.if.then44_crit_edge, label %if.else

lor.rhs.i.if.then44_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

if.then44:                                        ; preds = %lor.rhs.i.if.then44_crit_edge, %if.end40.if.then44_crit_edge
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %13, align 8
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ifindex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i.i = icmp eq i32 %32, 1
  br i1 %cmp.i.i, label %if.then44.if.then.i.i_crit_edge, label %lor.rhs.i.i, !prof !97

if.then44.if.then.i.i_crit_edge:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.rhs.i.i:                                      ; preds = %if.then44
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 15
  %33 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %lor.rhs.i.i.icmp6_iif.exit_crit_edge, label %lor.rhs.i.i.if.then.i.i_crit_edge, !prof !98

lor.rhs.i.i.if.then.i.i_crit_edge:                ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.rhs.i.i.icmp6_iif.exit_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %icmp6_iif.exit

if.then.i.i:                                      ; preds = %lor.rhs.i.i.if.then.i.i_crit_edge, %if.then44.if.then.i.i_crit_edge
  %35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %and.i.i1.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i1.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.skb_rt6_info.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.skb_rt6_info.exit.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_rt6_info.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_rt6_info.exit.i_crit_edge

land.lhs.true.i.i.i.skb_rt6_info.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_rt6_info.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_rt6_info.exit.i_crit_edge, !prof !97

land.rhs.i.i.i.skb_rt6_info.exit.i_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_rt6_info.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_rt6_info.exit.i

skb_rt6_info.exit.i:                              ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_rt6_info.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_rt6_info.exit.i_crit_edge, %if.then.i.i.skb_rt6_info.exit.i_crit_edge
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %35, align 8
  %and25.i.i.i = and i32 %39, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool3.not.i.i, label %skb_rt6_info.exit.i.icmp6_iif.exit_crit_edge, label %if.then4.i.i

skb_rt6_info.exit.i.icmp6_iif.exit_crit_edge:     ; preds = %skb_rt6_info.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %icmp6_iif.exit

if.then4.i.i:                                     ; preds = %skb_rt6_info.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %40 = inttoptr i32 %and25.i.i.i to ptr
  %rt6i_idev.i.i = getelementptr inbounds %struct.rt6_info, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %rt6i_idev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rt6i_idev.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  br label %icmp6_iif.exit

icmp6_iif.exit:                                   ; preds = %if.then4.i.i, %skb_rt6_info.exit.i.icmp6_iif.exit_crit_edge, %lor.rhs.i.i.icmp6_iif.exit_crit_edge
  %dev.1.i.i = phi ptr [ %30, %lor.rhs.i.i.icmp6_iif.exit_crit_edge ], [ %44, %if.then4.i.i ], [ %30, %skb_rt6_info.exit.i.icmp6_iif.exit_crit_edge ]
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev.1.i.i, i32 0, i32 17
  %45 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ifindex.i, align 4
  %.pre = and i32 %call.i380, 2
  br label %if.end47

if.else:                                          ; preds = %lor.rhs.i
  %47 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %13, align 8
  %49 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !99
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i384 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i384, label %if.else.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.else.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.else
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i385

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i385:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i385, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.else.rcu_read_lock.exit.i_crit_edge
  %call.i386 = tail call i32 @l3mdev_master_ifindex_rcu(ptr noundef %48) #13
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i1.i, label %rcu_read_lock.exit.i.l3mdev_master_ifindex.exit_crit_edge, label %land.lhs.true.i4.i

rcu_read_lock.exit.i.l3mdev_master_ifindex.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %l3mdev_master_ifindex.exit

land.lhs.true.i4.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.l3mdev_master_ifindex.exit_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.l3mdev_master_ifindex.exit_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %l3mdev_master_ifindex.exit

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.l3mdev_master_ifindex.exit_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.l3mdev_master_ifindex.exit_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %l3mdev_master_ifindex.exit

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %l3mdev_master_ifindex.exit

l3mdev_master_ifindex.exit:                       ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.l3mdev_master_ifindex.exit_crit_edge, %land.lhs.true.i4.i.l3mdev_master_ifindex.exit_crit_edge, %rcu_read_lock.exit.i.l3mdev_master_ifindex.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %53 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i.i8.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i9.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %if.end47

if.end47:                                         ; preds = %l3mdev_master_ifindex.exit, %icmp6_iif.exit
  %and51.pre-phi = phi i32 [ %and1.i, %l3mdev_master_ifindex.exit ], [ %.pre, %icmp6_iif.exit ]
  %iif.0 = phi i32 [ %call.i386, %l3mdev_master_ifindex.exit ], [ %46, %icmp6_iif.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i381)
  %cmp48 = icmp ne i32 %and.i381, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.pre-phi)
  %tobool52.not = icmp eq i32 %and51.pre-phi, 0
  %or.cond = and i1 %cmp48, %tobool52.not
  br i1 %or.cond, label %if.end65, label %do.body

do.body:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icmp6_send.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icmp6_send, %land.lhs.true58)) #13
          to label %cleanup [label %land.lhs.true58], !srcloc !101

land.lhs.true58:                                  ; preds = %do.body
  %call59 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true58.cleanup_crit_edge, label %if.then61

land.lhs.true58.cleanup_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @icmp6_send.descriptor, ptr noundef nonnull @.str.4, ptr noundef %saddr41, ptr noundef %daddr) #13
  br label %cleanup

if.end65:                                         ; preds = %if.end47
  %57 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %head.i.i, align 8
  %59 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %60 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %58, i32 %conv.i.i.i
  %add.ptr.i387 = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %61 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i387 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %63 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %64, %sub.ptr.sub.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr.i) #13
  %nexthdr3.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %nexthdr3.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nexthdr3.i, align 2
  %67 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %nexthdr.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #13
  %68 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %is_ineligible.exit.thread426, label %if.end.i

is_ineligible.exit.thread426:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #13
  br label %do.body68

if.end.i:                                         ; preds = %if.end65
  %call4.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %nexthdr.i, ptr noundef nonnull %frag_off.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.is_ineligible.exit.thread_crit_edge, label %if.end7.i

if.end.i.is_ineligible.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_ineligible.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %69 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %nexthdr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %70)
  %cmp8.i = icmp eq i8 %70, 58
  br i1 %cmp8.i, label %if.then10.i, label %if.end7.i.is_ineligible.exit.thread_crit_edge

if.end7.i.is_ineligible.exit.thread_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_ineligible.exit.thread

if.then10.i:                                      ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_type.i) #13
  %71 = ptrtoint ptr %_type.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %_type.i, align 1, !annotation !102
  %72 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len1.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %74 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data_len.i.i.i, align 8
  %76 = add i32 %call4.i, %75
  %sub.i1.i.i = sub i32 %73, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 0
  br i1 %cmp.i.i.i, label %skb_header_pointer.exit.i, label %if.end.i.i.i, !prof !98

if.end.i.i.i:                                     ; preds = %if.then10.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.land.lhs.true.i390_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.land.lhs.true.i390_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i390

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i388 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %call4.i, ptr noundef nonnull %_type.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i388)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i388, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.land.lhs.true.i390_crit_edge, label %lor.lhs.false.i.i.i.lor.lhs.false.critedge.i_crit_edge

lor.lhs.false.i.i.i.lor.lhs.false.critedge.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.critedge.i

lor.lhs.false.i.i.i.land.lhs.true.i390_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i390

skb_header_pointer.exit.i:                        ; preds = %if.then10.i
  %77 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i42.i = getelementptr i8, ptr %78, i32 %call4.i
  %tobool.not.i389 = icmp eq ptr %add.ptr.i.i42.i, null
  br i1 %tobool.not.i389, label %skb_header_pointer.exit.i.land.lhs.true.i390_crit_edge, label %skb_header_pointer.exit.i.lor.lhs.false.critedge.i_crit_edge

skb_header_pointer.exit.i.lor.lhs.false.critedge.i_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.critedge.i

skb_header_pointer.exit.i.land.lhs.true.i390_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i390

land.lhs.true.i390:                               ; preds = %skb_header_pointer.exit.i.land.lhs.true.i390_crit_edge, %lor.lhs.false.i.i.i.land.lhs.true.i390_crit_edge, %if.end.i.i.i.land.lhs.true.i390_crit_edge
  %79 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %frag_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp13.not.i = icmp eq i16 %80, 0
  br i1 %cmp13.not.i, label %land.lhs.true.i390.is_ineligible.exit.thread428_crit_edge, label %is_ineligible.exit

land.lhs.true.i390.is_ineligible.exit.thread428_crit_edge: ; preds = %land.lhs.true.i390
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_ineligible.exit.thread428

lor.lhs.false.critedge.i:                         ; preds = %skb_header_pointer.exit.i.lor.lhs.false.critedge.i_crit_edge, %lor.lhs.false.i.i.i.lor.lhs.false.critedge.i_crit_edge
  %retval.0.i.i48.i = phi ptr [ %add.ptr.i.i42.i, %skb_header_pointer.exit.i.lor.lhs.false.critedge.i_crit_edge ], [ %_type.i, %lor.lhs.false.i.i.i.lor.lhs.false.critedge.i_crit_edge ]
  %81 = ptrtoint ptr %retval.0.i.i48.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %retval.0.i.i48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %82)
  %tobool18.not.i = icmp sgt i8 %82, -1
  br i1 %tobool18.not.i, label %lor.lhs.false.critedge.i.is_ineligible.exit.thread428_crit_edge, label %cleanup.i

lor.lhs.false.critedge.i.is_ineligible.exit.thread428_crit_edge: ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_ineligible.exit.thread428

is_ineligible.exit.thread428:                     ; preds = %lor.lhs.false.critedge.i.is_ineligible.exit.thread428_crit_edge, %land.lhs.true.i390.is_ineligible.exit.thread428_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_type.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #13
  br label %do.body68

cleanup.i:                                        ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_type.i) #13
  br label %is_ineligible.exit.thread

is_ineligible.exit.thread:                        ; preds = %cleanup.i, %if.end7.i.is_ineligible.exit.thread_crit_edge, %if.end.i.is_ineligible.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #13
  br label %if.end89

is_ineligible.exit:                               ; preds = %land.lhs.true.i390
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_type.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #13
  br label %if.end89

do.body68:                                        ; preds = %is_ineligible.exit.thread428, %is_ineligible.exit.thread426
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icmp6_send.descriptor.5, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icmp6_send, %land.lhs.true80)) #13
          to label %cleanup [label %land.lhs.true80], !srcloc !101

land.lhs.true80:                                  ; preds = %do.body68
  %call81 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %land.lhs.true80.cleanup_crit_edge, label %if.then83

land.lhs.true80.cleanup_crit_edge:                ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then83:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @icmp6_send.descriptor.5, ptr noundef nonnull @.str.7, ptr noundef %saddr41, ptr noundef %daddr) #13
  br label %cleanup

if.end89:                                         ; preds = %is_ineligible.exit, %is_ineligible.exit.thread
  call fastcc void @local_bh_disable()
  %83 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %13, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 14
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 8
  %and90 = and i32 %86, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %land.lhs.true92, label %if.end89.if.end96_crit_edge

if.end89.if.end96_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

land.lhs.true92:                                  ; preds = %if.end89
  %conv93 = zext i8 %type to i32
  %icmpv6_ratemask.i.i = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 36, i32 1, i32 22
  %div3.i.i.i = lshr i32 %conv93, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %icmpv6_ratemask.i.i, i32 %div3.i.i.i
  %87 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i391 = and i32 %conv93, 31
  %89 = shl nuw i32 1, %and.i.i.i391
  %90 = and i32 %88, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i392 = icmp eq i32 %90, 0
  br i1 %tobool.not.i.i392, label %land.lhs.true92.if.end96_crit_edge, label %icmpv6_global_allow.exit

land.lhs.true92.if.end96_crit_edge:               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

icmpv6_global_allow.exit:                         ; preds = %land.lhs.true92
  %call1.i393 = call zeroext i1 @icmp_global_allow() #13
  br i1 %call1.i393, label %icmpv6_global_allow.exit.if.end96_crit_edge, label %icmpv6_global_allow.exit.out_bh_enable_crit_edge

icmpv6_global_allow.exit.out_bh_enable_crit_edge: ; preds = %icmpv6_global_allow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_bh_enable

icmpv6_global_allow.exit.if.end96_crit_edge:      ; preds = %icmpv6_global_allow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

if.end96:                                         ; preds = %icmpv6_global_allow.exit.if.end96_crit_edge, %land.lhs.true92.if.end96_crit_edge, %if.end89.if.end96_crit_edge
  call fastcc void @mip6_addr_swap(ptr noundef %skb, ptr noundef %parm)
  %call97 = call fastcc ptr @icmpv6_xmit_lock(ptr noundef %17)
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %if.end96.out_bh_enable_crit_edge, label %if.end100

if.end96.out_bh_enable_crit_edge:                 ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_bh_enable

if.end100:                                        ; preds = %if.end96
  %91 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %92 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 58, ptr %flowic_proto, align 2
  %daddr101 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %93 = call ptr @memcpy(ptr %daddr101, ptr %saddr41, i32 16)
  %tobool103.not = icmp eq ptr %force_saddr, null
  %spec.select = select i1 %tobool103.not, ptr %saddr.1, ptr %force_saddr
  %tobool106.not = icmp eq ptr %spec.select, null
  br i1 %tobool106.not, label %if.else109, label %if.then107

if.then107:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  %saddr108 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %94 = call ptr @memcpy(ptr %saddr108, ptr %spec.select, i32 16)
  br label %if.end125

if.else109:                                       ; preds = %if.end100
  %call110 = call fastcc zeroext i1 @icmpv6_rt_has_prefsrc(ptr noundef nonnull %call97, ptr noundef nonnull %fl6)
  br i1 %call110, label %if.else109.if.end125_crit_edge, label %if.then111

if.else109.if.end125_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.then111:                                       ; preds = %if.else109
  %95 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %parm, align 4
  %call113 = call ptr @dev_get_by_index(ptr noundef %17, i32 noundef %96) #13
  %tobool114.not = icmp eq ptr %call113, null
  br i1 %tobool114.not, label %if.then111.if.end125_crit_edge, label %if.then115

if.then111.if.end125_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.then115:                                       ; preds = %if.then111
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %call97, i32 0, i32 4
  %97 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i396 = zext i8 %98 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i396
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then115.inet6_sk.exit_crit_edge, label %cond.true.i

if.then115.inet6_sk.exit_crit_edge:               ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #15
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %call97, i32 0, i32 1
  %99 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %if.then115.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %100, %cond.true.i ], [ null, %if.then115.inet6_sk.exit_crit_edge ]
  %srcprefs = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %101 = ptrtoint ptr %srcprefs to i32
  call void @__asan_load2_noabort(i32 %101)
  %bf.load118 = load i16, ptr %srcprefs, align 2
  %bf.lshr119 = lshr i16 %bf.load118, 6
  %bf.clear = and i16 %bf.lshr119, 7
  %conv120 = zext i16 %bf.clear to i32
  %saddr121 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %call122 = call i32 @ipv6_dev_get_saddr(ptr noundef %17, ptr noundef nonnull %call113, ptr noundef %daddr101, i32 noundef %conv120, ptr noundef %saddr121) #13
  call fastcc void @dev_put(ptr noundef nonnull %call113)
  br label %if.end125

if.end125:                                        ; preds = %inet6_sk.exit, %if.then111.if.end125_crit_edge, %if.else109.if.end125_crit_edge, %if.then107
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %102 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %cond, ptr %flowic_mark, align 8
  %103 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %iif.0, ptr %fl6, align 8
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %104 = ptrtoint ptr %uli to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %type, ptr %uli, align 4
  %code130 = getelementptr inbounds %struct.anon.40, ptr %uli, i32 0, i32 1
  %105 = ptrtoint ptr %code130 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %code, ptr %code130, align 1
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %user_ns.i = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 11
  %106 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %user_ns.i, align 4
  %call.i397 = call i32 @make_kuid(ptr noundef %107, i32 noundef 0) #13
  %108 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call.i397, ptr %flowic_uid, align 4
  %call134 = call i32 @rt6_multipath_hash(ptr noundef %17, ptr noundef nonnull %fl6, ptr noundef %skb, ptr noundef null) #13
  %mp_hash = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 5
  %109 = ptrtoint ptr %mp_hash to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call134, ptr %mp_hash, align 8
  call void @security_skb_classify_flow(ptr noundef %skb, ptr noundef nonnull %fl6) #13
  %skc_state.i.i398 = getelementptr inbounds %struct.sock_common, ptr %call97, i32 0, i32 4
  %110 = ptrtoint ptr %skc_state.i.i398 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load volatile i8, ptr %skc_state.i.i398, align 2
  %conv.i.i399 = zext i8 %111 to i32
  %shl.i.i400 = shl nuw i32 1, %conv.i.i399
  %and.i.i401 = and i32 %shl.i.i400, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i401)
  %tobool.i.not.i402 = icmp eq i32 %and.i.i401, 0
  br i1 %tobool.i.not.i402, label %if.end125.inet6_sk.exit406_crit_edge, label %cond.true.i404

if.end125.inet6_sk.exit406_crit_edge:             ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sk.exit406

cond.true.i404:                                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  %pinet6.i403 = getelementptr inbounds %struct.inet_sock, ptr %call97, i32 0, i32 1
  %112 = ptrtoint ptr %pinet6.i403 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pinet6.i403, align 8
  br label %inet6_sk.exit406

inet6_sk.exit406:                                 ; preds = %cond.true.i404, %if.end125.inet6_sk.exit406_crit_edge
  %cond.i405 = phi ptr [ %113, %cond.true.i404 ], [ null, %if.end125.inet6_sk.exit406_crit_edge ]
  %call137 = call fastcc zeroext i1 @icmpv6_xrlim_allow(ptr noundef nonnull %call97, i8 noundef zeroext %type, ptr noundef nonnull %fl6)
  br i1 %call137, label %if.end139, label %inet6_sk.exit406.out_crit_edge

inet6_sk.exit406.out_crit_edge:                   ; preds = %inet6_sk.exit406
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end139:                                        ; preds = %inet6_sk.exit406
  %114 = ptrtoint ptr %tmp_hdr to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %type, ptr %tmp_hdr, align 8
  %115 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %code, ptr %4, align 1
  %116 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %5, align 2
  %117 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %info, ptr %6, align 4
  %118 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fl6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool142.not = icmp eq i32 %119, 0
  br i1 %tobool142.not, label %land.lhs.true143, label %if.end139.if.end158_crit_edge

if.end139.if.end158_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

land.lhs.true143:                                 ; preds = %if.end139
  %120 = ptrtoint ptr %daddr101 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %daddr101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %121)
  %cmp.i407 = icmp ugt i32 %121, -16777217
  br i1 %cmp.i407, label %if.then147, label %if.then154

if.then147:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #15
  %mcast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i405, i32 0, i32 8
  %122 = ptrtoint ptr %mcast_oif to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mcast_oif, align 4
  %124 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %fl6, align 8
  br label %if.end158

if.then154:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #15
  %ucast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i405, i32 0, i32 7
  %125 = ptrtoint ptr %ucast_oif to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ucast_oif, align 4
  %127 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %fl6, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %if.then147, %if.end139.if.end158_crit_edge
  %tclass1.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i405, i32 0, i32 12
  %128 = ptrtoint ptr %tclass1.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %tclass1.i, align 1
  %conv.i408 = zext i8 %129 to i16
  %dontfrag2.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i405, i32 0, i32 10
  %130 = ptrtoint ptr %dontfrag2.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %bf.load.i = load i16, ptr %dontfrag2.i, align 2
  %131 = trunc i16 %bf.load.i to i8
  %132 = lshr i8 %131, 5
  %conv3.i = and i8 %132, 1
  %133 = call ptr @memset(ptr %ipc6, i32 0, i32 16)
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 16
  %134 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 18
  %135 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv.i408, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 20
  %136 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.44.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 22
  %137 = ptrtoint ptr %.compoundliteral.sroa.44.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv3.i, ptr %.compoundliteral.sroa.44.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 23
  %138 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 9)
  %mark159 = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc6, i32 0, i32 1
  %139 = ptrtoint ptr %mark159 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %cond, ptr %mark159, align 8
  %conv160433 = zext i8 %129 to i32
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %140 = ptrtoint ptr %flowlabel to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flowlabel, align 8
  %shl.i = shl nuw nsw i32 %conv160433, 20
  %or.i = or i32 %shl.i, %141
  store i32 %or.i, ptr %flowlabel, align 8
  %call163 = call fastcc ptr @icmpv6_route_lookup(ptr noundef %17, ptr noundef %skb, ptr noundef nonnull %call97, ptr noundef nonnull %fl6)
  %cmp.i409 = icmp ugt ptr %call163, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i409, label %if.end158.out_crit_edge, label %if.end166

if.end158.out_crit_edge:                          ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end166:                                        ; preds = %if.end158
  %142 = ptrtoint ptr %daddr101 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %daddr101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %143)
  %cmp.i.i410 = icmp ugt i32 %143, -16777217
  %mcast_hops.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i405, i32 0, i32 6
  %144 = ptrtoint ptr %mcast_hops.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %bf.load.i411 = load i32, ptr %mcast_hops.i, align 4
  %bf.shl.i = shl i32 %bf.load.i411, 16
  %hlimit.0.in.i = select i1 %cmp.i.i410, i32 %bf.shl.i, i32 %bf.load.i411
  %hlimit.0.i = ashr i32 %hlimit.0.in.i, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hlimit.0.in.i)
  %cmp.i412 = icmp slt i32 %hlimit.0.in.i, 0
  br i1 %cmp.i412, label %if.then6.i, label %if.end166.ip6_sk_dst_hoplimit.exit_crit_edge

if.end166.ip6_sk_dst_hoplimit.exit_crit_edge:     ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip6_sk_dst_hoplimit.exit

if.then6.i:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = call i32 @ip6_dst_hoplimit(ptr noundef %call163) #13
  br label %ip6_sk_dst_hoplimit.exit

ip6_sk_dst_hoplimit.exit:                         ; preds = %if.then6.i, %if.end166.ip6_sk_dst_hoplimit.exit_crit_edge
  %hlimit.1.i = phi i32 [ %call7.i, %if.then6.i ], [ %hlimit.0.i, %if.end166.ip6_sk_dst_hoplimit.exit_crit_edge ]
  %conv168 = trunc i32 %hlimit.1.i to i16
  %145 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv168, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %146 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %skb, ptr %msg, align 4
  %147 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %head.i.i, align 8
  %149 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i415 = zext i16 %150 to i32
  %add.ptr.i.i416 = getelementptr i8, ptr %148, i32 %conv.i.i415
  %151 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i418 = ptrtoint ptr %add.ptr.i.i416 to i32
  %sub.ptr.rhs.cast.i419 = ptrtoint ptr %152 to i32
  %sub.ptr.sub.i420 = sub i32 %sub.ptr.lhs.cast.i418, %sub.ptr.rhs.cast.i419
  %offset = getelementptr inbounds %struct.icmpv6_msg, ptr %msg, i32 0, i32 1
  %153 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %sub.ptr.sub.i420, ptr %offset, align 4
  %type171 = getelementptr inbounds %struct.icmpv6_msg, ptr %msg, i32 0, i32 2
  %154 = ptrtoint ptr %type171 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %type, ptr %type171, align 4
  %155 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %len1.i, align 4
  %sub = sub i32 %156, %sub.ptr.sub.i420
  call void @__sanitizer_cov_trace_const_cmp4(i32 1232, i32 %sub)
  %cmp175 = icmp ult i32 %sub, 1232
  %phi.bo = add i32 %sub, 8
  %cond180 = select i1 %cmp175, i32 %phi.bo, i32 1240
  %157 = call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %160, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !99
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %ip6_sk_dst_hoplimit.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

ip6_sk_dst_hoplimit.exit.rcu_read_lock.exit_crit_edge: ; preds = %ip6_sk_dst_hoplimit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %ip6_sk_dst_hoplimit.exit
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %ip6_sk_dst_hoplimit.exit.rcu_read_lock.exit_crit_edge
  %161 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %13, align 8
  %call206 = call fastcc ptr @__in6_dev_get(ptr noundef %162)
  %call207 = call i32 @ip6_append_data(ptr noundef nonnull %call97, ptr noundef nonnull @icmpv6_getfrag, ptr noundef nonnull %msg, i32 noundef %cond180, i32 noundef 8, ptr noundef nonnull %ipc6, ptr noundef nonnull %fl6, ptr noundef %call163, i32 noundef 64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.else275, label %if.then209

if.then209:                                       ; preds = %rcu_read_lock.exit
  %cmp210.not = icmp eq ptr %call206, null
  br i1 %cmp210.not, label %if.then209.do.body222_crit_edge, label %if.then218, !prof !97

if.then209.do.body222_crit_edge:                  ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body222

if.then218:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #15
  %icmpv6dev = getelementptr inbounds %struct.inet6_dev, ptr %call206, i32 0, i32 33, i32 2
  %163 = ptrtoint ptr %icmpv6dev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %icmpv6dev, align 4
  %arrayidx219 = getelementptr [6 x %struct.atomic_t], ptr %164, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx219, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %arrayidx219, i32 1, i32 3, i32 1) #13
  %165 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx219, ptr %arrayidx219, i32 1, ptr elementtype(i32) %arrayidx219) #13, !srcloc !103
  br label %do.body222

do.body222:                                       ; preds = %if.then218, %if.then209.do.body222_crit_edge
  %166 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !104
  %icmpv6_statistics = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 30, i32 13
  %167 = ptrtoint ptr %icmpv6_statistics to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %icmpv6_statistics, align 4
  %arrayidx240 = getelementptr [6 x i32], ptr %168, i32 0, i32 4
  %169 = ptrtoint ptr %arrayidx240 to i32
  %170 = call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i421 = and i32 %170, -16384
  %171 = inttoptr i32 %and.i421 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 3
  %172 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cpu, align 4
  %arrayidx243 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %173
  %174 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx243, align 4
  %add244 = add i32 %175, %169
  %176 = inttoptr i32 %add244 to ptr
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %176, align 4
  %add245 = add i32 %178, 1
  store i32 %add245, ptr %176, align 4
  %179 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !105
  %and.i.i422 = and i32 %179, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i422)
  %tobool256.not = icmp eq i32 %and.i.i422, 0
  br i1 %tobool256.not, label %if.then265, label %do.body222.do.end268_crit_edge, !prof !97

do.body222.do.end268_crit_edge:                   ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end268

if.then265:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %do.end268

do.end268:                                        ; preds = %if.then265, %do.body222.do.end268_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %166) #13, !srcloc !106
  call void @ip6_flush_pending_frames(ptr noundef nonnull %call97) #13
  br label %if.end277

if.else275:                                       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @icmpv6_push_pending_frames(ptr noundef nonnull %call97, ptr noundef nonnull %fl6, ptr noundef nonnull %tmp_hdr, i32 noundef %cond180)
  br label %if.end277

if.end277:                                        ; preds = %if.else275, %do.end268
  call fastcc void @rcu_read_unlock()
  call void @dst_release(ptr noundef %call163) #13
  br label %out

out:                                              ; preds = %if.end277, %if.end158.out_crit_edge, %inet6_sk.exit406.out_crit_edge
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %call97, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #13
  br label %out_bh_enable

out_bh_enable:                                    ; preds = %out, %if.end96.out_bh_enable_crit_edge, %icmpv6_global_allow.exit.out_bh_enable_crit_edge
  call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %out_bh_enable, %if.then83, %land.lhs.true80.cleanup_crit_edge, %do.body68, %if.then61, %land.lhs.true58.cleanup_crit_edge, %do.body, %land.lhs.true35.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ipc6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_hdr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_chk_acast_addr_src(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @opt_unrec(ptr noundef %skb, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  %_optval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_optval) #13
  %0 = ptrtoint ptr %_optval to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %_optval, align 1, !annotation !102
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, %offset
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %11 = add i32 %10, %add
  %sub.i1.i = sub i32 %8, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 0
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !98

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_optval, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %add.ptr.i.i8 = getelementptr i8, ptr %6, i32 %add
  %tobool.not = icmp eq ptr %add.ptr.i.i8, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i14 = phi ptr [ %add.ptr.i.i8, %skb_header_pointer.exit.if.end_crit_edge ], [ %_optval, %lor.lhs.false.i.i.if.end_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i.i14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %retval.0.i.i14, align 1
  %14 = and i8 %13, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %14)
  %cmp = icmp eq i8 %14, -128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ true, %skb_header_pointer.exit.cleanup_crit_edge ], [ true, %if.end.i.i.cleanup_crit_edge ], [ true, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_optval) #13
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mip6_addr_swap(ptr noundef %skb, ptr nocapture noundef readonly %opt) unnamed_addr #0 align 64 {
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
  %dsthao = getelementptr inbounds %struct.inet6_skb_parm, ptr %opt, i32 0, i32 8
  %4 = ptrtoint ptr %dsthao to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dsthao, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then:                                          ; preds = %entry
  %conv = zext i16 %5 to i32
  %call2 = tail call i32 @ipv6_find_tlv(ptr noundef %skb, i32 noundef %conv, i32 noundef 201) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.then6, label %if.then.if.end10_crit_edge, !prof !98

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %call2
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp.sroa.0.0.copyload = load i32, ptr %saddr, align 4
  %tmp.sroa.5.0.saddr.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %tmp.sroa.5.0.saddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp.sroa.5.0.copyload = load i32, ptr %tmp.sroa.5.0.saddr.sroa_idx, align 4
  %tmp.sroa.6.0.saddr.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %tmp.sroa.6.0.saddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.sroa.6.0.copyload = load i32, ptr %tmp.sroa.6.0.saddr.sroa_idx, align 4
  %tmp.sroa.7.0.saddr.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %tmp.sroa.7.0.saddr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp.sroa.7.0.copyload = load i32, ptr %tmp.sroa.7.0.saddr.sroa_idx, align 4
  %addr = getelementptr inbounds %struct.ipv6_destopt_hao, ptr %add.ptr, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %saddr, ptr %addr, i32 16)
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %tmp.sroa.0.0.copyload, ptr %addr, align 1
  %tmp.sroa.5.0.addr9.sroa_idx = getelementptr inbounds i8, ptr %addr, i32 4
  %16 = ptrtoint ptr %tmp.sroa.5.0.addr9.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %tmp.sroa.5.0.copyload, ptr %tmp.sroa.5.0.addr9.sroa_idx, align 1
  %tmp.sroa.6.0.addr9.sroa_idx = getelementptr inbounds i8, ptr %addr, i32 8
  %17 = ptrtoint ptr %tmp.sroa.6.0.addr9.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %tmp.sroa.6.0.copyload, ptr %tmp.sroa.6.0.addr9.sroa_idx, align 1
  %tmp.sroa.7.0.addr9.sroa_idx = getelementptr inbounds i8, ptr %addr, i32 12
  %18 = ptrtoint ptr %tmp.sroa.7.0.addr9.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %tmp.sroa.7.0.copyload, ptr %tmp.sroa.7.0.addr9.sroa_idx, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @icmpv6_xmit_lock(ptr nocapture noundef readonly %net) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !107
  %icmp_sk.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 25
  %4 = ptrtoint ptr %icmp_sk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %icmp_sk.i, align 8
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !108
  %16 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i19.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i19.i to ptr
  %preempt_count.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i20.i, align 4
  %sub.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i20.i, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %sk_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %.call = select i1 %tobool.not, ptr null, ptr %15, !prof !97
  ret ptr %.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @icmpv6_rt_has_prefsrc(ptr noundef %sk, ptr noundef %fl6) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %call.i = tail call ptr @ip6_route_output_flags(ptr noundef %1, ptr noundef %sk, ptr noundef %fl6, i32 noundef 0) #13
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i, i32 0, i32 15
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !99
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %from1.i = getelementptr inbounds %struct.rt6_info, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %from1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %from1.i, align 4
  %call.i1 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @rt6_get_prefsrc.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rt6_get_prefsrc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 475, ptr noundef nonnull @.str.11) #13
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %9, null
  br i1 %tobool10.not.i, label %do.end8.i.if.end13.i_crit_edge, label %if.then11.i

do.end8.i.if.end13.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.then11.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %fib6_prefsrc.i = getelementptr inbounds %struct.fib6_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %fib6_prefsrc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %prefsrc.sroa.0.0.copyload = load i32, ptr %fib6_prefsrc.i, align 4
  %prefsrc.sroa.6.0.fib6_prefsrc.i.sroa_idx = getelementptr inbounds %struct.fib6_info, ptr %9, i32 0, i32 11, i32 0, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prefsrc.sroa.6.0.fib6_prefsrc.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %prefsrc.sroa.6.0.copyload = load i32, ptr %prefsrc.sroa.6.0.fib6_prefsrc.i.sroa_idx, align 4
  %prefsrc.sroa.8.0.fib6_prefsrc.i.sroa_idx = getelementptr inbounds %struct.fib6_info, ptr %9, i32 0, i32 11, i32 0, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %prefsrc.sroa.8.0.fib6_prefsrc.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %prefsrc.sroa.8.0.copyload = load i32, ptr %prefsrc.sroa.8.0.fib6_prefsrc.i.sroa_idx, align 4
  %prefsrc.sroa.10.0.fib6_prefsrc.i.sroa_idx = getelementptr inbounds %struct.fib6_info, ptr %9, i32 0, i32 11, i32 0, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %prefsrc.sroa.10.0.fib6_prefsrc.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %prefsrc.sroa.10.0.copyload = load i32, ptr %prefsrc.sroa.10.0.fib6_prefsrc.i.sroa_idx, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %do.end8.i.if.end13.i_crit_edge
  %prefsrc.sroa.0.0 = phi i32 [ %prefsrc.sroa.0.0.copyload, %if.then11.i ], [ 0, %do.end8.i.if.end13.i_crit_edge ]
  %prefsrc.sroa.6.0 = phi i32 [ %prefsrc.sroa.6.0.copyload, %if.then11.i ], [ 0, %do.end8.i.if.end13.i_crit_edge ]
  %prefsrc.sroa.8.0 = phi i32 [ %prefsrc.sroa.8.0.copyload, %if.then11.i ], [ 0, %do.end8.i.if.end13.i_crit_edge ]
  %prefsrc.sroa.10.0 = phi i32 [ %prefsrc.sroa.10.0.copyload, %if.then11.i ], [ 0, %do.end8.i.if.end13.i_crit_edge ]
  %call.i17.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i17.i, label %if.end13.i.rt6_get_prefsrc.exit_crit_edge, label %land.lhs.true.i20.i

if.end13.i.rt6_get_prefsrc.exit_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt6_get_prefsrc.exit

land.lhs.true.i20.i:                              ; preds = %if.end13.i
  %call1.i18.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.rt6_get_prefsrc.exit_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.rt6_get_prefsrc.exit_crit_edge: ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt6_get_prefsrc.exit

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.rt6_get_prefsrc.exit_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.rt6_get_prefsrc.exit_crit_edge: ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rt6_get_prefsrc.exit

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %rt6_get_prefsrc.exit

rt6_get_prefsrc.exit:                             ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.rt6_get_prefsrc.exit_crit_edge, %land.lhs.true.i20.i.rt6_get_prefsrc.exit_crit_edge, %if.end13.i.rt6_get_prefsrc.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %14 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i.i24.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i25.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %or.i = or i32 %prefsrc.sroa.6.0, %prefsrc.sroa.0.0
  %or5.i = or i32 %or.i, %prefsrc.sroa.8.0
  %or8.i = or i32 %or5.i, %prefsrc.sroa.10.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp ne i32 %or8.i, 0
  br label %if.end

if.end:                                           ; preds = %rt6_get_prefsrc.exit, %entry.if.end_crit_edge
  %res.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ %cmp.i, %rt6_get_prefsrc.exit ]
  tail call void @dst_release(ptr noundef %call.i) #13
  ret i1 %res.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !104
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !105
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !97

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !106
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt6_multipath_hash(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_skb_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @icmpv6_xrlim_allow(ptr noundef %sk, i8 noundef zeroext %type, ptr noundef %fl6) unnamed_addr #0 align 64 {
entry:
  %daddr.i = alloca %struct.inetpeer_addr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %conv = zext i8 %type to i32
  %icmpv6_ratemask.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 1, i32 22
  %div3.i.i = lshr i32 %conv, 5
  %arrayidx.i.i = getelementptr i32, ptr %icmpv6_ratemask.i, i32 %div3.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv, 31
  %4 = shl nuw i32 1, %and.i.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @ip6_route_output_flags(ptr noundef %1, ptr noundef %sk, ptr noundef %fl6, i32 noundef 0) #13
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i, i32 0, i32 15
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %if.then3.do.body21_crit_edge, label %do.body, !prof !97

if.then3.do.body21_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body21

do.body:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %10 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipv6, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %19, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx13 = getelementptr [37 x i64], ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx13, align 8
  %add14 = add i64 %21, 1
  store i64 %add14, ptr %arrayidx13, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %19, i32 0, i32 1, i32 0, i32 1
  %22 = tail call ptr @llvm.returnaddress(i32 0) #13
  %23 = ptrtoint ptr %22 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %23) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !109
  %24 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body21

do.body21:                                        ; preds = %do.body, %if.then3.do.body21_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30, i32 1
  %26 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ipv6_statistics, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i89 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i89 to ptr
  %cpu32 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu32, align 4
  %arrayidx33 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %34, %28
  %35 = inttoptr i32 %add34 to ptr
  %syncp35 = getelementptr inbounds %struct.ipstats_mib, ptr %35, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp35)
  %arrayidx37 = getelementptr [37 x i64], ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx37, align 8
  %add38 = add i64 %37, 1
  store i64 %add38, ptr %arrayidx37, align 8
  %dep_map.i.i90 = getelementptr inbounds %struct.ipstats_mib, ptr %35, i32 0, i32 1, i32 0, i32 1
  %38 = tail call ptr @llvm.returnaddress(i32 0) #13
  %39 = ptrtoint ptr %38 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i90, i32 noundef %39) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !109
  %40 = ptrtoint ptr %syncp35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %syncp35, align 4
  %inc.i.i.i91 = add i32 %41, 1
  store i32 %inc.i.i.i91, ptr %syncp35, align 4
  tail call fastcc void @local_bh_enable()
  br label %if.end64

if.else:                                          ; preds = %if.end
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %tobool44.not = icmp eq ptr %43, null
  br i1 %tobool44.not, label %if.else.if.else48_crit_edge, label %land.lhs.true

if.else.if.else48_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else48

land.lhs.true:                                    ; preds = %if.else
  %flags = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 8
  %and = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %land.lhs.true.if.else48_crit_edge, label %land.lhs.true.if.end64_crit_edge

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

land.lhs.true.if.else48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else48

if.else48:                                        ; preds = %land.lhs.true.if.else48_crit_edge, %if.else.if.else48_crit_edge
  %icmpv6_time = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 1, i32 18
  %46 = ptrtoint ptr %icmpv6_time to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %icmpv6_time, align 4
  %plen = getelementptr inbounds %struct.rt6_info, ptr %call.i, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %plen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %49)
  %cmp50 = icmp slt i32 %49, 128
  %sub = sub i32 128, %49
  %shr = ashr i32 %sub, 5
  %shr55 = select i1 %cmp50, i32 %shr, i32 0
  %tmo.0 = ashr i32 %47, %shr55
  %peers = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 4
  %50 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %peers, align 8
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %daddr.i) #13
  %52 = getelementptr inbounds i8, ptr %daddr.i, i32 16
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 720895, ptr %52, align 4
  %54 = call ptr @memcpy(ptr %daddr.i, ptr %daddr, i32 16)
  %call.i92 = call ptr @inet_getpeer(ptr noundef %51, ptr noundef nonnull %daddr.i, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %daddr.i) #13
  %call59 = call zeroext i1 @inet_peer_xrlim_allow(ptr noundef %call.i92, i32 noundef %tmo.0) #13
  %tobool60.not = icmp eq ptr %call.i92, null
  br i1 %tobool60.not, label %if.else48.if.end64_crit_edge, label %if.then61

if.else48.if.end64_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then61:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #15
  call void @inet_putpeer(ptr noundef nonnull %call.i92) #13
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.else48.if.end64_crit_edge, %land.lhs.true.if.end64_crit_edge, %do.body21
  %res.0.off0 = phi i1 [ false, %do.body21 ], [ true, %land.lhs.true.if.end64_crit_edge ], [ %call59, %if.then61 ], [ %call59, %if.else48.if.end64_crit_edge ]
  call void @dst_release(ptr noundef %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %res.0.off0, %if.end64 ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @icmpv6_route_lookup(ptr noundef %net, ptr noundef %skb, ptr noundef %sk, ptr noundef %fl6) unnamed_addr #0 align 64 {
entry:
  %dst = alloca ptr, align 4
  %dst2 = alloca ptr, align 4
  %fl2 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst) #13
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst2) #13
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl2) #13
  %1 = call ptr @memset(ptr %fl2, i32 255, i32 88)
  %call = call i32 @ip6_dst_lookup(ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %dst, ptr noundef %fl6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst, align 4
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rt6i_flags.i, align 4
  %and.i = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.rhs.i:                                        ; preds = %if.end
  %plen.i = getelementptr inbounds %struct.rt6_info, ptr %4, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %plen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %plen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %8)
  %cmp.i = icmp slt i32 %8, 127
  %and2.i = and i32 %6, 2097154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool3.not.i, i1 false
  br i1 %or.cond.i, label %ipv6_anycast_destination.exit, label %lor.rhs.i.if.end13_crit_edge

lor.rhs.i.if.end13_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

ipv6_anycast_destination.exit:                    ; preds = %lor.rhs.i
  %rt6i_dst.i = getelementptr inbounds %struct.rt6_info, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %rt6i_dst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rt6i_dst.i, align 4
  %11 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %daddr, align 4
  %xor.i.i = xor i32 %12, %10
  %arrayidx4.i.i = getelementptr %struct.rt6_info, ptr %4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %16, %14
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr %struct.rt6_info, ptr %4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %20, %18
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr %struct.rt6_info, ptr %4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %24, %22
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %ipv6_anycast_destination.exit.do.body_crit_edge, label %ipv6_anycast_destination.exit.if.end13_crit_edge

ipv6_anycast_destination.exit.if.end13_crit_edge: ; preds = %ipv6_anycast_destination.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

ipv6_anycast_destination.exit.do.body_crit_edge:  ; preds = %ipv6_anycast_destination.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %ipv6_anycast_destination.exit.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icmpv6_route_lookup.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icmpv6_route_lookup, %land.lhs.true)) #13
          to label %do.end [label %land.lhs.true], !srcloc !101

land.lhs.true:                                    ; preds = %do.body
  %call8 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %if.then10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @icmpv6_route_lookup.descriptor, ptr noundef nonnull @.str.20) #13
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true.do.end_crit_edge, %do.body
  %25 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dst, align 4
  call void @dst_release(ptr noundef %26) #13
  br label %cleanup

if.end13:                                         ; preds = %ipv6_anycast_destination.exit.if.end13_crit_edge, %lor.rhs.i.if.end13_crit_edge
  %27 = ptrtoint ptr %dst2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %4, ptr %dst2, align 4
  %call15 = call ptr @xfrm_lookup(ptr noundef %net, ptr noundef %4, ptr noundef %fl6, ptr noundef %sk, i32 noundef 0) #13
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call15, ptr %dst, align 4
  %cmp.i66 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end13
  %29 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dst2, align 4
  %cmp.not = icmp eq ptr %call15, %30
  br i1 %cmp.not, label %if.then17.if.end25_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.else:                                          ; preds = %if.end13
  %cmp21 = icmp eq ptr %call15, inttoptr (i32 -1 to ptr)
  br i1 %cmp21, label %if.then22, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %dst, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.then17.if.end25_crit_edge
  %call.i = call i32 @__xfrm_decode_session(ptr noundef %skb, ptr noundef nonnull %fl2, i32 noundef 10, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.relookup_failed_crit_edge

if.end25.relookup_failed_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %relookup_failed

if.end30:                                         ; preds = %if.end25
  %call31 = call i32 @ip6_dst_lookup(ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %dst2, ptr noundef nonnull %fl2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.relookup_failed_crit_edge

if.end30.relookup_failed_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %relookup_failed

if.end34:                                         ; preds = %if.end30
  %32 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dst2, align 4
  %call36 = call ptr @xfrm_lookup(ptr noundef %net, ptr noundef %33, ptr noundef nonnull %fl2, ptr noundef %sk, i32 noundef 1) #13
  %34 = ptrtoint ptr %dst2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call36, ptr %dst2, align 4
  %cmp.i67 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.else39, label %if.then38

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dst, align 4
  call void @dst_release(ptr noundef %36) #13
  br label %relookup_failed

if.else39:                                        ; preds = %if.end34
  %37 = ptrtoint ptr %call36 to i32
  %cmp41 = icmp eq ptr %call36, inttoptr (i32 -1 to ptr)
  br i1 %cmp41, label %if.then42, label %if.else39.relookup_failed_crit_edge

if.else39.relookup_failed_crit_edge:              ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  br label %relookup_failed

if.then42:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dst, align 4
  call void @dst_release(ptr noundef %39) #13
  %40 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst2, align 4
  br label %cleanup

relookup_failed:                                  ; preds = %if.else39.relookup_failed_crit_edge, %if.then38, %if.end30.relookup_failed_crit_edge, %if.end25.relookup_failed_crit_edge
  %.in = phi ptr [ %dst2, %if.then38 ], [ %dst, %if.end25.relookup_failed_crit_edge ], [ %dst, %if.end30.relookup_failed_crit_edge ], [ %dst, %if.else39.relookup_failed_crit_edge ]
  %err.0 = phi i32 [ 0, %if.then38 ], [ %call.i, %if.end25.relookup_failed_crit_edge ], [ %call31, %if.end30.relookup_failed_crit_edge ], [ %37, %if.else39.relookup_failed_crit_edge ]
  %42 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %.in, align 4
  %tobool45.not = icmp eq ptr %43, null
  br i1 %tobool45.not, label %if.end47, label %relookup_failed.cleanup_crit_edge

relookup_failed.cleanup_crit_edge:                ; preds = %relookup_failed
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end47:                                         ; preds = %relookup_failed
  call void @__sanitizer_cov_trace_pc() #15
  %44 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %relookup_failed.cleanup_crit_edge, %if.then42, %if.else.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi ptr [ %2, %if.then ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %44, %if.end47 ], [ %41, %if.then42 ], [ %call15, %if.then17.cleanup_crit_edge ], [ %43, %relookup_failed.cleanup_crit_edge ], [ %call15, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst) #13
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__in6_dev_get(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %ip6_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 80
  %0 = ptrtoint ptr %ip6_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ip6_ptr, align 8
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call, label %entry.do.end8_crit_edge, label %lor.lhs.false

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end8_crit_edge

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b10 = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 313, ptr noundef nonnull @.str.11) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %lor.lhs.false.do.end8_crit_edge, %entry.do.end8_crit_edge
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_append_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icmpv6_getfrag(ptr nocapture noundef readonly %from, ptr noundef %to, i32 noundef %offset, i32 noundef %len, i32 noundef %odd, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %from, align 4
  %offset2 = getelementptr inbounds %struct.icmpv6_msg, ptr %from, i32 0, i32 1
  %2 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset2, align 4
  %add = add i32 %3, %offset
  %call = tail call i32 @skb_copy_and_csum_bits(ptr noundef %1, i32 noundef %add, ptr noundef %to, i32 noundef %len) #13
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i.i = and i32 %odd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %call, i32 %call, i32 24) #13
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %call, i32 %or.i.i.i
  %add.i.i = add i32 %retval.0.i.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %retval.0.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %retval.0.i.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add1.i.i, ptr %4, align 8
  %type = getelementptr inbounds %struct.icmpv6_msg, ptr %from, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool.not = icmp sgt i8 %9, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nf_ct_attach(ptr noundef %skb, ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_flush_pending_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #13
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @icmpv6_param_prob(ptr noundef %skb, i8 noundef zeroext %code, i32 noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 4, i8 noundef zeroext %code, i32 noundef %pos, ptr noundef null, ptr noundef %cb)
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_err_gen_icmpv6_unreach(ptr noundef %skb, i32 noundef %nhs, i32 noundef %type, i32 noundef %data_len) #0 align 64 {
entry:
  %temp_saddr = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %temp_saddr) #13
  %0 = getelementptr inbounds [4 x i32], ptr %temp_saddr, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %temp_saddr, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %temp_saddr, i32 0, i32 3
  %add1 = add i32 %nhs, 48
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = call ptr @memset(ptr %temp_saddr, i32 255, i32 16)
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add1, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !97

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add1)
  %cmp3.i = icmp ult i32 %5, %add1
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !97

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add1, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #13
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %data_len)
  %cmp = icmp ugt i32 %data_len, 127
  %and = and i32 %data_len, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false2, label %if.end.cond.false_crit_edge

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

lor.lhs.false2:                                   ; preds = %if.end
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %data_len)
  %cmp3 = icmp ult i32 %9, %data_len
  br i1 %cmp3, label %lor.lhs.false2.cond.false_crit_edge, label %cond.true

lor.lhs.false2.cond.false_crit_edge:              ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

cond.true:                                        ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #13
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false2.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %call8 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %tobool6.not103 = phi i1 [ false, %cond.true ], [ true, %cond.false ]
  %data_len.addr.0101 = phi i32 [ %data_len, %cond.true ], [ 0, %cond.false ]
  %cond = phi ptr [ %call7, %cond.true ], [ %call8, %cond.false ]
  %tobool9.not = icmp eq ptr %cond, null
  br i1 %tobool9.not, label %cond.end.cleanup_crit_edge, label %if.end11

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %cond.end
  %10 = getelementptr inbounds %struct.sk_buff, ptr %cond, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end11.skb_dst_drop.exit_crit_edge, label %if.then.i

if.end11.skb_dst_drop.exit_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %if.end11
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %and1.i.i = and i32 %12, -2
  %13 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %13) #13
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %10, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end11.skb_dst_drop.exit_crit_edge
  %call12 = tail call ptr @skb_pull(ptr noundef nonnull %cond, i32 noundef %nhs) #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %cond, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %cond, i32 0, i32 18
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %cond, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %network_header.i, align 4
  %20 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 127
  %23 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nd_net.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call15 = tail call ptr @rt6_lookup(ptr noundef %24, ptr noundef %saddr, ptr noundef null, i32 noundef 0, ptr noundef %skb, i32 noundef 0) #13
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %skb_dst_drop.exit.if.end21_crit_edge, label %land.lhs.true

skb_dst_drop.exit.if.end21_crit_edge:             ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true:                                    ; preds = %skb_dst_drop.exit
  %25 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call15, align 4
  %tobool17.not = icmp eq ptr %26, null
  br i1 %tobool17.not, label %land.lhs.true.if.end21_crit_edge, label %if.then18

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %27 = getelementptr inbounds %struct.anon.45, ptr %cond, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %27, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true.if.end21_crit_edge, %skb_dst_drop.exit.if.end21_crit_edge
  %head.i.i84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i84, align 8
  %network_header.i.i85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i85 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i85, align 4
  %conv.i.i86 = zext i16 %32 to i32
  %add.ptr.i.i87 = getelementptr i8, ptr %30, i32 %conv.i.i86
  %saddr23 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i87, i32 0, i32 8
  %33 = ptrtoint ptr %saddr23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saddr23, align 4
  %35 = ptrtoint ptr %temp_saddr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %temp_saddr, align 4
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %0, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 65535, ptr %1, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %34, ptr %2, align 4
  br i1 %tobool6.not103, label %if.end21.if.end31_crit_edge, label %if.then25

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %idx.neg.i = sub i32 0, %nhs
  %add.ptr.i = getelementptr i8, ptr %40, i32 %idx.neg.i
  store ptr %add.ptr.i, ptr %data.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %cond, i32 0, i32 6
  %41 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %42, %nhs
  store i32 %add.i, ptr %len1.i, align 4
  %43 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i91 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i92 = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i93 = sub i32 %sub.ptr.lhs.cast.i91, %sub.ptr.rhs.cast.i92
  %conv.i94 = trunc i32 %sub.ptr.sub.i93 to i16
  %45 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i94, ptr %network_header.i, align 4
  %sub = sub i32 %data_len.addr.0101, %nhs
  %46 = call ptr @memmove(ptr %add.ptr.i, ptr %40, i32 %sub)
  %47 = load ptr, ptr %data.i, align 4
  %add.ptr29 = getelementptr i8, ptr %47, i32 %data_len.addr.0101
  %add.ptr30 = getelementptr i8, ptr %add.ptr29, i32 %idx.neg.i
  %48 = call ptr @memset(ptr %add.ptr30, i32 0, i32 %nhs)
  %49 = shl i32 %data_len.addr.0101, 21
  %shl = and i32 %49, -16777216
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.end21.if.end31_crit_edge
  %info.0 = phi i32 [ %shl, %if.then25 ], [ 0, %if.end21.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %type)
  %cmp32 = icmp eq i32 %type, 11
  %cb = getelementptr inbounds %struct.sk_buff, ptr %cond, i32 0, i32 3
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  call void @icmp6_send(ptr noundef nonnull %cond, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef %info.0, ptr noundef nonnull %temp_saddr, ptr noundef %cb)
  br label %if.end36

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  call void @icmp6_send(ptr noundef nonnull %cond, i8 noundef zeroext 1, i8 noundef zeroext 3, i32 noundef %info.0, ptr noundef nonnull %temp_saddr, ptr noundef %cb)
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then33
  br i1 %tobool16.not, label %if.end36.if.end39_crit_edge, label %if.then38

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  call void @dst_release(ptr noundef nonnull %call15) #13
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36.if.end39_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %cond, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %cond.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ 1, %pskb_may_pull.exit.cleanup_crit_edge ], [ 1, %cond.end.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %temp_saddr) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not = icmp ult i32 %sub.i, %len
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !97

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp3 = icmp ult i32 %1, %len
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end11, !prof !97

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %len, %sub.i
  %call13 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub) #13
  %cmp14 = icmp ne ptr %call13, null
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end11 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @icmpv6_notify(ptr noundef %skb, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %frag_off = alloca i16, align 2
  %nexthdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #13
  %0 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %frag_off, align 2, !annotation !102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #13
  %1 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %nexthdr, align 1, !annotation !102
  %2 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 40
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !97

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %8)
  %cmp3.i = icmp ult i32 %8, 40
  br i1 %cmp3.i, label %if.end.i.out_crit_edge, label %pskb_may_pull.exit, !prof !97

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 40, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #13
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

pskb_may_pull.exit.out_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @seg6_icmp_srh(ptr noundef %skb, ptr noundef %cb) #13
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %nexthdr2 = getelementptr inbounds %struct.ipv6hdr, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %nexthdr2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nexthdr2, align 2
  %15 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %nexthdr, align 1
  %call3 = tail call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %14) #13
  br i1 %call3, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then4.out_crit_edge, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %inner_offset.0 = phi i32 [ %call5, %if.then4.if.end8_crit_edge ], [ 40, %if.end.if.end8_crit_edge ]
  %add = add nuw i32 %inner_offset.0, 8
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  %18 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i87 = sub i32 %17, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i87)
  %cmp.not.i88 = icmp ugt i32 %add, %sub.i.i87
  br i1 %cmp.not.i88, label %if.end.i90, label %if.end8.if.end11_crit_edge, !prof !97

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end.i90:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add)
  %cmp3.i89 = icmp ult i32 %17, %add
  br i1 %cmp3.i89, label %if.end.i90.out_crit_edge, label %pskb_may_pull.exit96, !prof !97

if.end.i90.out_crit_edge:                         ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

pskb_may_pull.exit96:                             ; preds = %if.end.i90
  %sub.i91 = sub i32 %add, %sub.i.i87
  %call13.i92 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i91) #13
  %cmp14.i93.not = icmp eq ptr %call13.i92, null
  br i1 %cmp14.i93.not, label %pskb_may_pull.exit96.out_crit_edge, label %pskb_may_pull.exit96.if.end11_crit_edge

pskb_may_pull.exit96.if.end11_crit_edge:          ; preds = %pskb_may_pull.exit96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

pskb_may_pull.exit96.out_crit_edge:               ; preds = %pskb_may_pull.exit96
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end11:                                         ; preds = %pskb_may_pull.exit96.if.end11_crit_edge, %if.end8.if.end11_crit_edge
  %20 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nexthdr, align 1
  %idxprom = zext i8 %21 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @inet6_protos, i32 0, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx, align 4
  %call13 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end11.do.end21_crit_edge

if.end11.do.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

land.lhs.true:                                    ; preds = %if.end11
  %call14 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b84 = load i1, ptr @icmpv6_notify.__warned, align 1
  br i1 %.b84, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @icmpv6_notify.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 858, ptr noundef nonnull @.str.11) #13
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %if.end11.do.end21_crit_edge
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %do.end21.if.end29_crit_edge, label %land.lhs.true24

do.end21.if.end29_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true24:                                  ; preds = %do.end21
  %err_handler = getelementptr inbounds %struct.inet6_protocol, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %err_handler to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %err_handler, align 4
  %tobool25.not = icmp eq ptr %25, null
  br i1 %tobool25.not, label %land.lhs.true24.if.end29_crit_edge, label %if.then26

land.lhs.true24.if.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = call i32 %25(ptr noundef %skb, ptr noundef %cb, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %inner_offset.0, i32 noundef %info) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true24.if.end29_crit_edge, %do.end21.if.end29_crit_edge
  %26 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nexthdr, align 1
  %conv = zext i8 %27 to i32
  call void @raw6_icmp_error(ptr noundef %skb, i32 noundef %conv, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %inner_offset.0, i32 noundef %info) #13
  br label %cleanup

out:                                              ; preds = %pskb_may_pull.exit96.out_crit_edge, %if.end.i90.out_crit_edge, %if.then4.out_crit_edge, %pskb_may_pull.exit.out_crit_edge, %if.end.i.out_crit_edge
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %2, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 80
  %30 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call.i, label %out.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

out.__in6_dev_get.exit_crit_edge:                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %out
  %call2.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 313, ptr noundef nonnull @.str.11) #13
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %out.__in6_dev_get.exit_crit_edge
  %cmp31.not = icmp eq ptr %31, null
  br i1 %cmp31.not, label %__in6_dev_get.exit.if.end37_crit_edge, label %if.then35, !prof !97

__in6_dev_get.exit.if.end37_crit_edge:            ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then35:                                        ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %icmpv6dev = getelementptr inbounds %struct.inet6_dev, ptr %31, i32 0, i32 33, i32 2
  %32 = ptrtoint ptr %icmpv6dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %icmpv6dev, align 4
  %arrayidx36 = getelementptr [6 x %struct.atomic_t], ptr %33, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx36, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %arrayidx36, i32 1, i32 3, i32 1) #13
  %34 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx36, ptr %arrayidx36, i32 1, ptr elementtype(i32) %arrayidx36) #13, !srcloc !103
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %__in6_dev_get.exit.if.end37_crit_edge
  %icmpv6_statistics = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 30, i32 13
  %35 = ptrtoint ptr %icmpv6_statistics to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %icmpv6_statistics, align 4
  %arrayidx49 = getelementptr [6 x i32], ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx49 to i32
  %38 = call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu, align 4
  %arrayidx52 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx52, align 4
  %add53 = add i32 %43, %37
  %44 = inttoptr i32 %add53 to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add54 = add i32 %46, 1
  store i32 %add54, ptr %44, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seg6_icmp_srh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw6_icmp_error(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @icmpv6_flow_init(ptr noundef %sk, ptr noundef %fl6, i8 noundef zeroext %type, ptr nocapture noundef readonly %saddr, ptr nocapture noundef readonly %daddr, i32 noundef %oif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %saddr1 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %1 = call ptr @memcpy(ptr %saddr1, ptr %saddr, i32 16)
  %daddr2 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %daddr2, ptr %daddr, i32 16)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %3 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 58, ptr %flowic_proto, align 2
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %4 = ptrtoint ptr %uli to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %type, ptr %uli, align 4
  %code = getelementptr inbounds %struct.anon.40, ptr %uli, i32 0, i32 1
  %5 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %code, align 1
  %6 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %oif, ptr %fl6, align 8
  tail call void @security_sk_classify_flow(ptr noundef %sk, ptr noundef %fl6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @icmpv6_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @icmpv6_sk_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @icmpv6_protocol, i8 noundef zeroext 58) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #17
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @icmpv6_sk_ops) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @icmpv6_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @icmpv6_sk_ops) #13
  %call1 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @icmpv6_protocol, i8 noundef zeroext 58) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @icmpv6_err_convert(i8 noundef zeroext %type, i8 noundef zeroext %code, ptr nocapture noundef writeonly %err) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 71, ptr %err, align 4
  %1 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %type, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb7
    i8 4, label %sw.bb8
    i8 3, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %code)
  %cmp = icmp ult i8 %code, 7
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %conv1 = zext i8 %code to i32
  %arrayidx = getelementptr [7 x %struct.icmp6_err], ptr @tab_unreach, i32 0, i32 %conv1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %err, align 4
  %fatal6 = getelementptr [7 x %struct.icmp6_err], ptr @tab_unreach, i32 0, i32 %conv1, i32 1
  %5 = ptrtoint ptr %fatal6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fatal6, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 90, ptr %err, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 113, ptr %err, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb7, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %fatal.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb9 ], [ 1, %sw.bb8 ], [ 0, %sw.bb7 ], [ %6, %if.then ], [ 1, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %fatal.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipv6_icmp_sysctl_init(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef nonnull @ipv6_icmp_table_template, i32 noundef 216, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %icmpv6_time = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 18
  %data = getelementptr inbounds %struct.ctl_table, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %icmpv6_time, ptr %data, align 4
  %icmpv6_echo_ignore_all = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 19
  %data4 = getelementptr %struct.ctl_table, ptr %call, i32 1, i32 1
  %1 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %icmpv6_echo_ignore_all, ptr %data4, align 4
  %icmpv6_echo_ignore_multicast = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 20
  %data8 = getelementptr %struct.ctl_table, ptr %call, i32 2, i32 1
  %2 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %icmpv6_echo_ignore_multicast, ptr %data8, align 4
  %icmpv6_echo_ignore_anycast = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 21
  %data12 = getelementptr %struct.ctl_table, ptr %call, i32 3, i32 1
  %3 = ptrtoint ptr %data12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %icmpv6_echo_ignore_anycast, ptr %data12, align 4
  %icmpv6_ratemask_ptr = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 23
  %data16 = getelementptr %struct.ctl_table, ptr %call, i32 4, i32 1
  %4 = ptrtoint ptr %data16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %icmpv6_ratemask_ptr, ptr %data16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_rt6_info(ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !97

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @icmp_global_allow() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_tlv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !110
  %5 = tail call i32 @llvm.read_register.i32(metadata !86) #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !111
  %14 = tail call i32 @llvm.read_register.i32(metadata !86) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !86) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !113
  %33 = tail call i32 @llvm.read_register.i32(metadata !86) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !98

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #13
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_peer_xrlim_allow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_putpeer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_getpeer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_decode_session(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #2

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
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

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
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icmpv6_sk_init(ptr noundef %net) #0 align 64 {
entry:
  %sk = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sk) #13
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sk, align 4, !annotation !102
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %icmp_sk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 25
  %1 = ptrtoint ptr %icmp_sk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %icmp_sk, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call326 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call326, i32 %2)
  %cmp27 = icmp ult i32 %call326, %2
  br i1 %cmp27, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call328 = phi i32 [ %call3, %if.end8.for.body_crit_edge ], [ %call326, %for.cond.preheader.for.body_crit_edge ]
  %call4 = call i32 @inet_ctl_sock_create(ptr noundef nonnull %sk, i16 noundef zeroext 10, i16 noundef zeroext 3, i8 noundef zeroext 58, ptr noundef %net) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end8

do.end:                                           ; preds = %for.body
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call4) #17
  %call7.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %3)
  %cmp8.i = icmp ult i32 %call7.i, %3
  br i1 %cmp8.i, label %do.end.do.body.i_crit_edge, label %do.end.icmpv6_sk_exit.exit_crit_edge

do.end.icmpv6_sk_exit.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %icmpv6_sk_exit.exit

do.end.do.body.i_crit_edge:                       ; preds = %do.end
  br label %do.body.i

do.body.i:                                        ; preds = %inet_ctl_sock_destroy.exit.i.do.body.i_crit_edge, %do.end.do.body.i_crit_edge
  %call9.i = phi i32 [ %call.i, %inet_ctl_sock_destroy.exit.i.do.body.i_crit_edge ], [ %call7.i, %do.end.do.body.i_crit_edge ]
  %4 = ptrtoint ptr %icmp_sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %icmp_sk, align 8
  %6 = ptrtoint ptr %5 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %6
  %9 = inttoptr i32 %add.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %do.body.i.inet_ctl_sock_destroy.exit.i_crit_edge, label %if.then.i.i

do.body.i.inet_ctl_sock_destroy.exit.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet_ctl_sock_destroy.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 71
  %12 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk_socket.i.i, align 8
  call void @sock_release(ptr noundef %13) #13
  br label %inet_ctl_sock_destroy.exit.i

inet_ctl_sock_destroy.exit.i:                     ; preds = %if.then.i.i, %do.body.i.inet_ctl_sock_destroy.exit.i_crit_edge
  %call.i = call i32 @cpumask_next(i32 noundef %call9.i, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %14
  br i1 %cmp.i, label %inet_ctl_sock_destroy.exit.i.do.body.i_crit_edge, label %inet_ctl_sock_destroy.exit.i.icmpv6_sk_exit.exit_crit_edge

inet_ctl_sock_destroy.exit.i.icmpv6_sk_exit.exit_crit_edge: ; preds = %inet_ctl_sock_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %icmpv6_sk_exit.exit

inet_ctl_sock_destroy.exit.i.do.body.i_crit_edge: ; preds = %inet_ctl_sock_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

icmpv6_sk_exit.exit:                              ; preds = %inet_ctl_sock_destroy.exit.i.icmpv6_sk_exit.exit_crit_edge, %do.end.icmpv6_sk_exit.exit_crit_edge
  %15 = ptrtoint ptr %icmp_sk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %icmp_sk, align 8
  call void @free_percpu(ptr noundef %16) #13
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %17 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk, align 4
  %19 = ptrtoint ptr %icmp_sk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %icmp_sk, align 8
  %21 = ptrtoint ptr %20 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call328
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %add = add i32 %23, %21
  %24 = inttoptr i32 %add to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %18, ptr %24, align 4
  %26 = load ptr, ptr %sk, align 4
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %26, i32 0, i32 21
  %27 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 132096, ptr %sk_sndbuf, align 4
  %call3 = call i32 @cpumask_next(i32 noundef %call328, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call3, %28
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %icmpv6_sk_exit.exit, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %icmpv6_sk_exit.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sk) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icmpv6_sk_exit(ptr nocapture noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %0)
  %cmp8 = icmp ult i32 %call7, %0
  br i1 %cmp8, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %icmp_sk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 25
  br label %do.body

do.body:                                          ; preds = %inet_ctl_sock_destroy.exit.do.body_crit_edge, %do.body.lr.ph
  %call9 = phi i32 [ %call7, %do.body.lr.ph ], [ %call, %inet_ctl_sock_destroy.exit.do.body_crit_edge ]
  %1 = ptrtoint ptr %icmp_sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %icmp_sk, align 8
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.body.inet_ctl_sock_destroy.exit_crit_edge, label %if.then.i

do.body.inet_ctl_sock_destroy.exit_crit_edge:     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet_ctl_sock_destroy.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 71
  %9 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_socket.i, align 8
  tail call void @sock_release(ptr noundef %10) #13
  br label %inet_ctl_sock_destroy.exit

inet_ctl_sock_destroy.exit:                       ; preds = %if.then.i, %do.body.inet_ctl_sock_destroy.exit_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call9, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %11
  br i1 %cmp, label %inet_ctl_sock_destroy.exit.do.body_crit_edge, label %inet_ctl_sock_destroy.exit.for.end_crit_edge

inet_ctl_sock_destroy.exit.for.end_crit_edge:     ; preds = %inet_ctl_sock_destroy.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

inet_ctl_sock_destroy.exit.do.body_crit_edge:     ; preds = %inet_ctl_sock_destroy.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.end:                                          ; preds = %inet_ctl_sock_destroy.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %icmp_sk3 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 25
  %12 = ptrtoint ptr %icmp_sk3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %icmp_sk3, align 8
  tail call void @free_percpu(ptr noundef %13) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icmpv6_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 17
  %5 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp eq i32 %6, 1
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.rhs.i, !prof !97

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.rhs.i:                                        ; preds = %entry
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.rhs.i.icmp6_dev.exit_crit_edge, label %lor.rhs.i.if.then.i_crit_edge, !prof !98

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.rhs.i.icmp6_dev.exit_crit_edge:               ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %icmp6_dev.exit

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call2.i = tail call fastcc ptr @skb_rt6_info(ptr noundef %skb) #13
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then.i.icmp6_dev.exit_crit_edge, label %if.then4.i

if.then.i.icmp6_dev.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %icmp6_dev.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %call2.i, i32 0, i32 6
  %9 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rt6i_idev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  br label %icmp6_dev.exit

icmp6_dev.exit:                                   ; preds = %if.then4.i, %if.then.i.icmp6_dev.exit_crit_edge, %lor.rhs.i.icmp6_dev.exit_crit_edge
  %dev.1.i = phi ptr [ %2, %lor.rhs.i.icmp6_dev.exit_crit_edge ], [ %12, %if.then4.i ], [ %2, %if.then.i.icmp6_dev.exit_crit_edge ]
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev.1.i, i32 0, i32 80
  %13 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call.i, label %icmp6_dev.exit.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

icmp6_dev.exit.__in6_dev_get.exit_crit_edge:      ; preds = %icmp6_dev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %icmp6_dev.exit
  %call2.i322 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i322)
  %tobool.not.i = icmp eq i32 %call2.i322, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i323

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

if.then.i323:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 313, ptr noundef nonnull @.str.11) #13
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i323, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %icmp6_dev.exit.__in6_dev_get.exit_crit_edge
  %call.i.i324 = tail call fastcc i32 @__xfrm_policy_check2(ptr noundef %skb, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i324)
  %tobool.not = icmp eq i32 %call.i.i324, 0
  br i1 %tobool.not, label %if.then, label %__in6_dev_get.exit.if.end17_crit_edge

__in6_dev_get.exit.if.end17_crit_edge:            ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then:                                          ; preds = %__in6_dev_get.exit
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %15 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active_extensions.i.i.i, align 1
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.i.not.i.i, label %if.then.drop_no_count_crit_edge, label %skb_sec_path.exit

if.then.drop_no_count_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_no_count

skb_sec_path.exit:                                ; preds = %if.then
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %18 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %21 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %shl.i.i
  %tobool5.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool5.not, label %skb_sec_path.exit.drop_no_count_crit_edge, label %land.lhs.true

skb_sec_path.exit.drop_no_count_crit_edge:        ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_no_count

land.lhs.true:                                    ; preds = %skb_sec_path.exit
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %sub = add i32 %23, -1
  %arrayidx = getelementptr %struct.sec_path, ptr %add.ptr.i.i, i32 0, i32 2, i32 %sub
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 14, i32 6
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags, align 1
  %28 = and i8 %27, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool6.not = icmp eq i8 %28, 0
  br i1 %tobool6.not, label %land.lhs.true.drop_no_count_crit_edge, label %if.end

land.lhs.true.drop_no_count_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_no_count

if.end:                                           ; preds = %land.lhs.true
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %31 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %30, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 48
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end10_crit_edge, !prof !97

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %30)
  %cmp3.i = icmp ult i32 %30, 48
  br i1 %cmp3.i, label %if.end.i.drop_no_count_crit_edge, label %pskb_may_pull.exit, !prof !97

if.end.i.drop_no_count_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_no_count

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 48, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #13
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_no_count_crit_edge, label %pskb_may_pull.exit.if.end10_crit_edge

pskb_may_pull.exit.if.end10_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

pskb_may_pull.exit.drop_no_count_crit_edge:       ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_no_count

if.end10:                                         ; preds = %pskb_may_pull.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %33 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %35 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %network_header.i.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i329 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv1.i = add i16 %conv.i.i329, 8
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %call.i331 = tail call fastcc i32 @__xfrm_policy_check2(ptr noundef %skb, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %tobool13.not = icmp eq i32 %call.i331, 0
  br i1 %tobool13.not, label %if.end10.drop_no_count_crit_edge, label %cleanup

if.end10.drop_no_count_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_no_count

cleanup:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i326 = zext i16 %36 to i32
  %add.ptr.i.i327 = getelementptr i8, ptr %34, i32 %conv.i.i326
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i327 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %41 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i334 = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i.i335 = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i336 = sub i32 %sub.ptr.lhs.cast.i.i334, %sub.ptr.rhs.cast.i.i335
  %conv.i.i337 = trunc i32 %sub.ptr.sub.i.i336 to i16
  %43 = trunc i32 %sub.ptr.sub.i to i16
  %conv1.i339 = add i16 %conv.i.i337, %43
  %44 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv1.i339, ptr %network_header.i.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %cleanup, %__in6_dev_get.exit.if.end17_crit_edge
  %cmp.not = icmp eq ptr %14, null
  br i1 %cmp.not, label %if.end17.if.end23_crit_edge, label %if.then21, !prof !97

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %icmpv6dev = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 33, i32 2
  %45 = ptrtoint ptr %icmpv6dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %icmpv6dev, align 4
  %arrayidx22 = getelementptr [6 x %struct.atomic_t], ptr %46, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx22, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx22, i32 1, i32 3, i32 1) #13
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx22, ptr %arrayidx22, i32 1, ptr elementtype(i32) %arrayidx22) #13, !srcloc !103
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end17.if.end23_crit_edge
  %nd_net.i340 = getelementptr inbounds %struct.net_device, ptr %dev.1.i, i32 0, i32 127
  %48 = ptrtoint ptr %nd_net.i340 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nd_net.i340, align 4
  %icmpv6_statistics = getelementptr inbounds %struct.net, ptr %49, i32 0, i32 30, i32 13
  %50 = ptrtoint ptr %icmpv6_statistics to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %icmpv6_statistics, align 4
  %arrayidx32 = getelementptr [6 x i32], ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx32 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu, align 4
  %arrayidx35 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx35, align 4
  %add = add i32 %58, %52
  %59 = inttoptr i32 %add to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add36 = add i32 %61, 1
  store i32 %add36, ptr %59, align 4
  %head.i.i341 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %62 = ptrtoint ptr %head.i.i341 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i341, align 8
  %network_header.i.i342 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %64 = ptrtoint ptr %network_header.i.i342 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %network_header.i.i342, align 4
  %conv.i.i343 = zext i16 %65 to i32
  %add.ptr.i.i344 = getelementptr i8, ptr %63, i32 %conv.i.i343
  %saddr42 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i344, i32 0, i32 5
  %daddr44 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i344, i32 0, i32 6
  %csum_valid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %66 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load = load i16, ptr %csum_valid, align 8
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, ptr %csum_valid, align 8
  %bf.lshr.i.i = lshr i16 %bf.load, 9
  %trunc = trunc i16 %bf.lshr.i.i to i2
  %67 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.39)
  switch i2 %trunc, label %if.end23.if.then46_crit_edge [
    i2 1, label %if.end23.if.then.i350_crit_edge
    i2 -1, label %skb_csum_unnecessary.exit.i
  ]

if.end23.if.then.i350_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i350

if.end23.if.then46_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

skb_csum_unnecessary.exit.i:                      ; preds = %if.end23
  %68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %68, align 8
  %conv.i.i.i = zext i16 %70 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %71 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.neg.i.i.i = add i32 %conv.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.i.i.i = sub i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i349 = icmp slt i32 %sub.i.i.i, 0
  br i1 %tobool.not.i349, label %skb_csum_unnecessary.exit.i.if.then46_crit_edge, label %skb_csum_unnecessary.exit.i.if.then.i350_crit_edge

skb_csum_unnecessary.exit.i.if.then.i350_crit_edge: ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i350

skb_csum_unnecessary.exit.i.if.then46_crit_edge:  ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

if.then.i350:                                     ; preds = %skb_csum_unnecessary.exit.i.if.then.i350_crit_edge, %if.end23.if.then.i350_crit_edge
  %bf.set.i = or i16 %bf.load, 1
  %73 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %bf.set.i, ptr %csum_valid, align 8
  %74 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %74)
  %cmp.i3.i = icmp eq i16 %74, 512
  br i1 %cmp.i3.i, label %if.then.i.i351, label %if.then.i350.if.end70_crit_edge

if.then.i350.if.end70_crit_edge:                  ; preds = %if.then.i350
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then.i.i351:                                   ; preds = %if.then.i350
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %75 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %76 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp7.i.i = icmp eq i32 %76, 0
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i351
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear12.i.i = and i16 %bf.set.i, -1537
  %77 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %bf.clear12.i.i, ptr %csum_valid, align 8
  br label %if.end70

if.else.i.i:                                      ; preds = %if.then.i.i351
  call void @__sanitizer_cov_trace_pc() #15
  %78 = add i32 %bf.load2.i.i, 805306368
  %bf.shl.i.i = and i32 %78, 805306368
  %bf.clear19.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set20.i.i = or i32 %bf.shl.i.i, %bf.clear19.i.i
  %79 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %bf.set20.i.i, ptr %csum_level.i.i, align 2
  br label %if.end70

if.then46:                                        ; preds = %skb_csum_unnecessary.exit.i.if.then46_crit_edge, %if.end23.if.then46_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i, align 4
  %call.i.i353 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr42, ptr noundef %daddr44, i32 noundef %81, i32 noundef 58, i32 noundef 0) #13
  %82 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i353) #16, !srcloc !96
  %shr.i.i.i = lshr i32 %82, 16
  %neg6.i = or i32 %shr.i.i.i, -65536
  %83 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load.i = load i16, ptr %csum_valid, align 8
  %84 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %84)
  %cmp.i354 = icmp eq i16 %84, 1024
  br i1 %cmp.i354, label %if.then.i358, label %if.then46.if.end49_crit_edge

if.then46.if.end49_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then.i358:                                     ; preds = %if.then46
  %85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  %add.i.i = add i32 %87, %neg6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %87)
  %cmp.i.i355 = icmp ult i32 %add.i.i, %87
  %conv.i.i356 = zext i1 %cmp.i.i355 to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i356
  %88 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #16, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %88)
  %tobool.not.i357 = icmp ugt i32 %88, -65537
  br i1 %tobool.not.i357, label %if.end49.thread388, label %if.then.i358.if.end49_crit_edge

if.then.i358.if.end49_crit_edge:                  ; preds = %if.then.i358
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.end49.thread388:                               ; preds = %if.then.i358
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set.i359 = or i16 %bf.load.i, 1
  %89 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %bf.set.i359, ptr %csum_valid, align 8
  br label %if.end70

if.end49:                                         ; preds = %if.then.i358.if.end49_crit_edge, %if.then46.if.end49_crit_edge
  %90 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %neg6.i, ptr %90, align 8
  %call12.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call12.i)
  %tobool13.not.i = icmp eq i16 %call12.i, 0
  %92 = zext i1 %tobool13.not.i to i16
  %93 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load16.i = load i16, ptr %csum_valid, align 8
  %bf.clear17.i = and i16 %bf.load16.i, -2
  %bf.set18.i = or i16 %bf.clear17.i, %92
  store i16 %bf.set18.i, ptr %csum_valid, align 8
  br i1 %tobool13.not.i, label %if.end49.if.end70_crit_edge, label %do.body53

if.end49.if.end70_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

do.body53:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icmpv6_rcv.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icmpv6_rcv, %land.lhs.true63)) #13
          to label %csum_error [label %land.lhs.true63], !srcloc !101

land.lhs.true63:                                  ; preds = %do.body53
  %call64 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true63.csum_error_crit_edge, label %if.then66

land.lhs.true63.csum_error_crit_edge:             ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %csum_error

if.then66:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @icmpv6_rcv.descriptor, ptr noundef nonnull @.str.29, ptr noundef %saddr42, ptr noundef %daddr44) #13
  br label %csum_error

if.end70:                                         ; preds = %if.end49.if.end70_crit_edge, %if.end49.thread388, %if.else.i.i, %if.then9.i.i, %if.then.i350.if.end70_crit_edge
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %94 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %95)
  %cmp.i361 = icmp ult i32 %95, 8
  br i1 %cmp.i361, label %if.end70.discard_it_crit_edge, label %cond.false.i, !prof !97

if.end70.discard_it_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_it

cond.false.i:                                     ; preds = %if.end70
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %96 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i362 = sub i32 %95, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i.i362)
  %cmp.i.i363 = icmp ult i32 %sub.i.i.i362, 8
  br i1 %cmp.i.i363, label %land.lhs.true.i.i, label %cond.false.i.pskb_pull.exit_crit_edge

cond.false.i.pskb_pull.exit_crit_edge:            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pskb_pull.exit

land.lhs.true.i.i:                                ; preds = %cond.false.i
  %sub.i.i364 = sub nuw nsw i32 8, %sub.i.i.i362
  %call2.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i364) #13
  %tobool.not.i.i365 = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i365, label %land.lhs.true.i.i.discard_it_crit_edge, label %land.lhs.true.i.i.pskb_pull.exit_crit_edge

land.lhs.true.i.i.pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pskb_pull.exit

land.lhs.true.i.i.discard_it_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_it

pskb_pull.exit:                                   ; preds = %land.lhs.true.i.i.pskb_pull.exit_crit_edge, %cond.false.i.pskb_pull.exit_crit_edge
  %98 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len1.i, align 4
  %sub4.i.i = add i32 %99, -8
  store i32 %sub4.i.i, ptr %len1.i, align 4
  %data.i.i366 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %100 = ptrtoint ptr %data.i.i366 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i366, align 4
  %add.ptr.i.i367 = getelementptr i8, ptr %101, i32 8
  store ptr %add.ptr.i.i367, ptr %data.i.i366, align 4
  %tobool72.not = icmp eq ptr %add.ptr.i.i367, null
  br i1 %tobool72.not, label %pskb_pull.exit.discard_it_crit_edge, label %if.end74

pskb_pull.exit.discard_it_crit_edge:              ; preds = %pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_it

if.end74:                                         ; preds = %pskb_pull.exit
  %102 = ptrtoint ptr %head.i.i341 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %head.i.i341, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %104 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i369 = zext i16 %105 to i32
  %add.ptr.i.i370 = getelementptr i8, ptr %103, i32 %conv.i.i369
  %106 = ptrtoint ptr %add.ptr.i.i370 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %add.ptr.i.i370, align 4
  br i1 %cmp.not, label %if.end74.if.end89_crit_edge, label %if.then85, !prof !97

if.end74.if.end89_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = zext i8 %107 to i32
  br label %if.end89

if.then85:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %icmpv6msgdev = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 33, i32 3
  %108 = ptrtoint ptr %icmpv6msgdev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %icmpv6msgdev, align 4
  %idxprom = zext i8 %107 to i32
  %arrayidx88 = getelementptr [512 x %struct.atomic_t], ptr %109, i32 0, i32 %idxprom
  %call.i.i315 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx88, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx88, i32 1, i32 3, i32 1) #13
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx88, ptr %arrayidx88, i32 1, ptr elementtype(i32) %arrayidx88) #13, !srcloc !103
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.end74.if.end89_crit_edge
  %idxprom93.pre-phi = phi i32 [ %.pre, %if.end74.if.end89_crit_edge ], [ %idxprom, %if.then85 ]
  %111 = ptrtoint ptr %nd_net.i340 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %nd_net.i340, align 4
  %icmpv6msg_statistics = getelementptr inbounds %struct.net, ptr %112, i32 0, i32 30, i32 14
  %113 = ptrtoint ptr %icmpv6msg_statistics to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %icmpv6msg_statistics, align 4
  %arrayidx94 = getelementptr [512 x %struct.atomic_t], ptr %114, i32 0, i32 %idxprom93.pre-phi
  %call.i.i316 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx94, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx94, i32 1, i32 3, i32 1) #13
  %115 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx94, ptr %arrayidx94, i32 1, ptr elementtype(i32) %arrayidx94) #13, !srcloc !103
  %116 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %107, label %sw.default [
    i8 -128, label %sw.bb
    i8 -96, label %sw.bb99
    i8 -127, label %sw.epilog
    i8 -95, label %sw.bb112
    i8 2, label %sw.bb115
    i8 1, label %if.end89.sw.bb120_crit_edge
    i8 3, label %if.end89.sw.bb120_crit_edge396
    i8 4, label %if.end89.sw.bb120_crit_edge397
    i8 -123, label %if.end89.sw.bb122_crit_edge
    i8 -122, label %if.end89.sw.bb122_crit_edge398
    i8 -121, label %if.end89.sw.bb122_crit_edge399
    i8 -120, label %if.end89.sw.bb122_crit_edge400
    i8 -119, label %if.end89.sw.bb122_crit_edge401
    i8 -126, label %sw.bb124
    i8 -125, label %sw.bb125
    i8 -124, label %if.end89.if.else_crit_edge
    i8 -117, label %if.end89.if.else_crit_edge402
    i8 -116, label %if.end89.if.else_crit_edge403
    i8 -113, label %if.end89.if.else_crit_edge404
    i8 -112, label %if.end89.if.else_crit_edge405
    i8 -111, label %if.end89.if.else_crit_edge406
    i8 -110, label %if.end89.if.else_crit_edge407
    i8 -109, label %if.end89.if.else_crit_edge408
  ]

if.end89.if.else_crit_edge408:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end89.if.else_crit_edge407:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end89.if.else_crit_edge406:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end89.if.else_crit_edge405:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end89.if.else_crit_edge404:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end89.if.else_crit_edge403:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end89.if.else_crit_edge402:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end89.if.else_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end89.sw.bb122_crit_edge401:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb122

if.end89.sw.bb122_crit_edge400:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb122

if.end89.sw.bb122_crit_edge399:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb122

if.end89.sw.bb122_crit_edge398:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb122

if.end89.sw.bb122_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb122

if.end89.sw.bb120_crit_edge397:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb120

if.end89.sw.bb120_crit_edge396:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb120

if.end89.sw.bb120_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb120

sw.bb:                                            ; preds = %if.end89
  %icmpv6_echo_ignore_all = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 1, i32 19
  %117 = ptrtoint ptr %icmpv6_echo_ignore_all to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %icmpv6_echo_ignore_all, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool96.not = icmp eq i8 %118, 0
  br i1 %tobool96.not, label %if.then97, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then97:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @icmpv6_echo_reply(ptr noundef %skb)
  br label %if.else

sw.bb99:                                          ; preds = %if.end89
  %icmpv6_echo_ignore_all102 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 1, i32 19
  %119 = ptrtoint ptr %icmpv6_echo_ignore_all102 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %icmpv6_echo_ignore_all102, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool103.not = icmp eq i8 %120, 0
  br i1 %tobool103.not, label %land.lhs.true104, label %sw.bb99.if.else_crit_edge

sw.bb99.if.else_crit_edge:                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true104:                                 ; preds = %sw.bb99
  %sysctl_icmp_echo_enable_probe = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35, i32 26
  %121 = ptrtoint ptr %sysctl_icmp_echo_enable_probe to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %sysctl_icmp_echo_enable_probe, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool106.not = icmp eq i8 %122, 0
  br i1 %tobool106.not, label %land.lhs.true104.if.else_crit_edge, label %if.then107

land.lhs.true104.if.else_crit_edge:               ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then107:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @icmpv6_echo_reply(ptr noundef %skb)
  br label %if.else

sw.bb112:                                         ; preds = %if.end89
  %call113 = tail call zeroext i1 @ping_rcv(ptr noundef %skb) #13
  br i1 %call113, label %sw.bb112.if.then155_crit_edge, label %sw.bb112.if.else_crit_edge

sw.bb112.if.else_crit_edge:                       ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

sw.bb112.if.then155_crit_edge:                    ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then155

sw.bb115:                                         ; preds = %if.end89
  %call116 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef 40)
  br i1 %call116, label %if.end118, label %sw.bb115.discard_it_crit_edge

sw.bb115.discard_it_crit_edge:                    ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #15
  br label %discard_it

if.end118:                                        ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %head.i.i341 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %head.i.i341, align 8
  %125 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i374 = zext i16 %126 to i32
  %add.ptr.i.i375 = getelementptr i8, ptr %124, i32 %conv.i.i374
  br label %sw.bb120

sw.bb120:                                         ; preds = %if.end118, %if.end89.sw.bb120_crit_edge, %if.end89.sw.bb120_crit_edge396, %if.end89.sw.bb120_crit_edge397
  %hdr.0 = phi ptr [ %add.ptr.i.i370, %if.end89.sw.bb120_crit_edge ], [ %add.ptr.i.i370, %if.end89.sw.bb120_crit_edge396 ], [ %add.ptr.i.i370, %if.end89.sw.bb120_crit_edge397 ], [ %add.ptr.i.i375, %if.end118 ]
  %icmp6_code = getelementptr inbounds %struct.icmp6hdr, ptr %hdr.0, i32 0, i32 1
  %127 = ptrtoint ptr %icmp6_code to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %icmp6_code, align 1
  %icmp6_dataun = getelementptr inbounds %struct.icmp6hdr, ptr %hdr.0, i32 0, i32 3
  %129 = ptrtoint ptr %icmp6_dataun to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %icmp6_dataun, align 4
  tail call void @icmpv6_notify(ptr noundef %skb, i8 noundef zeroext %107, i8 noundef zeroext %128, i32 noundef %130)
  br label %if.else

sw.bb122:                                         ; preds = %if.end89.sw.bb122_crit_edge, %if.end89.sw.bb122_crit_edge398, %if.end89.sw.bb122_crit_edge399, %if.end89.sw.bb122_crit_edge400, %if.end89.sw.bb122_crit_edge401
  %call123 = tail call i32 @ndisc_rcv(ptr noundef %skb) #13
  br label %if.else

sw.bb124:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @igmp6_event_query(ptr noundef %skb) #13
  br label %cleanup241

sw.bb125:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @igmp6_event_report(ptr noundef %skb) #13
  br label %cleanup241

sw.default:                                       ; preds = %if.end89
  %and128 = and i32 %idxprom93.pre-phi, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %do.body132, label %sw.default.if.else_crit_edge

sw.default.if.else_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

do.body132:                                       ; preds = %sw.default
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icmpv6_rcv.descriptor.30, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icmpv6_rcv, %land.lhs.true144)) #13
          to label %do.end150 [label %land.lhs.true144], !srcloc !101

land.lhs.true144:                                 ; preds = %do.body132
  %call145 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %land.lhs.true144.do.end150_crit_edge, label %if.then147

land.lhs.true144.do.end150_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end150

if.then147:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @icmpv6_rcv.descriptor.30, ptr noundef nonnull @.str.32, ptr noundef %saddr42, ptr noundef %daddr44) #13
  br label %do.end150

do.end150:                                        ; preds = %if.then147, %land.lhs.true144.do.end150_crit_edge, %do.body132
  %icmp6_code151 = getelementptr inbounds %struct.icmp6hdr, ptr %add.ptr.i.i370, i32 0, i32 1
  %131 = ptrtoint ptr %icmp6_code151 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %icmp6_code151, align 1
  %icmp6_dataun152 = getelementptr inbounds %struct.icmp6hdr, ptr %add.ptr.i.i370, i32 0, i32 3
  %133 = ptrtoint ptr %icmp6_dataun152 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %icmp6_dataun152, align 4
  tail call void @icmpv6_notify(ptr noundef %skb, i8 noundef zeroext %107, i8 noundef zeroext %132, i32 noundef %134)
  br label %if.else

sw.epilog:                                        ; preds = %if.end89
  %call110 = tail call zeroext i1 @ping_rcv(ptr noundef %skb) #13
  br i1 %call110, label %sw.epilog.if.then155_crit_edge, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

sw.epilog.if.then155_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then155

if.then155:                                       ; preds = %sw.epilog.if.then155_crit_edge, %sw.bb112.if.then155_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #13
  br label %cleanup241

if.else:                                          ; preds = %sw.epilog.if.else_crit_edge, %do.end150, %sw.default.if.else_crit_edge, %sw.bb122, %sw.bb120, %sw.bb112.if.else_crit_edge, %if.then107, %land.lhs.true104.if.else_crit_edge, %sw.bb99.if.else_crit_edge, %if.then97, %sw.bb.if.else_crit_edge, %if.end89.if.else_crit_edge, %if.end89.if.else_crit_edge402, %if.end89.if.else_crit_edge403, %if.end89.if.else_crit_edge404, %if.end89.if.else_crit_edge405, %if.end89.if.else_crit_edge406, %if.end89.if.else_crit_edge407, %if.end89.if.else_crit_edge408
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup241

csum_error:                                       ; preds = %if.then66, %land.lhs.true63.csum_error_crit_edge, %do.body53
  br i1 %cmp.not, label %csum_error.if.end171_crit_edge, label %if.then166, !prof !97

csum_error.if.end171_crit_edge:                   ; preds = %csum_error
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

if.then166:                                       ; preds = %csum_error
  call void @__sanitizer_cov_trace_pc() #15
  %icmpv6dev168 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 33, i32 2
  %135 = ptrtoint ptr %icmpv6dev168 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %icmpv6dev168, align 4
  %arrayidx170 = getelementptr [6 x %struct.atomic_t], ptr %136, i32 0, i32 5
  %call.i.i320 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx170, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx170, i32 1, i32 3, i32 1) #13
  %137 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx170, ptr %arrayidx170, i32 1, ptr elementtype(i32) %arrayidx170) #13, !srcloc !103
  br label %if.end171

if.end171:                                        ; preds = %if.then166, %csum_error.if.end171_crit_edge
  %138 = ptrtoint ptr %nd_net.i340 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %nd_net.i340, align 4
  %icmpv6_statistics186 = getelementptr inbounds %struct.net, ptr %139, i32 0, i32 30, i32 13
  %140 = ptrtoint ptr %icmpv6_statistics186 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %icmpv6_statistics186, align 4
  %arrayidx188 = getelementptr [6 x i32], ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %arrayidx188 to i32
  %143 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cpu, align 4
  %arrayidx192 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %144
  %145 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx192, align 4
  %add193 = add i32 %146, %142
  %147 = inttoptr i32 %add193 to ptr
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  %add194 = add i32 %149, 1
  store i32 %add194, ptr %147, align 4
  br label %discard_it

discard_it:                                       ; preds = %if.end171, %sw.bb115.discard_it_crit_edge, %pskb_pull.exit.discard_it_crit_edge, %land.lhs.true.i.i.discard_it_crit_edge, %if.end70.discard_it_crit_edge
  br i1 %cmp.not, label %discard_it.if.end213_crit_edge, label %if.then208, !prof !97

discard_it.if.end213_crit_edge:                   ; preds = %discard_it
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end213

if.then208:                                       ; preds = %discard_it
  call void @__sanitizer_cov_trace_pc() #15
  %icmpv6dev210 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 33, i32 2
  %150 = ptrtoint ptr %icmpv6dev210 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %icmpv6dev210, align 4
  %arrayidx212 = getelementptr [6 x %struct.atomic_t], ptr %151, i32 0, i32 2
  %call.i.i321 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx212, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx212, i32 1, i32 3, i32 1) #13
  %152 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx212, ptr %arrayidx212, i32 1, ptr elementtype(i32) %arrayidx212) #13, !srcloc !103
  br label %if.end213

if.end213:                                        ; preds = %if.then208, %discard_it.if.end213_crit_edge
  %153 = ptrtoint ptr %nd_net.i340 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %nd_net.i340, align 4
  %icmpv6_statistics228 = getelementptr inbounds %struct.net, ptr %154, i32 0, i32 30, i32 13
  %155 = ptrtoint ptr %icmpv6_statistics228 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %icmpv6_statistics228, align 4
  %arrayidx230 = getelementptr [6 x i32], ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %arrayidx230 to i32
  %158 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %cpu, align 4
  %arrayidx234 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %159
  %160 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx234, align 4
  %add235 = add i32 %161, %157
  %162 = inttoptr i32 %add235 to ptr
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  %add236 = add i32 %164, 1
  store i32 %add236, ptr %162, align 4
  br label %drop_no_count

drop_no_count:                                    ; preds = %if.end213, %if.end10.drop_no_count_crit_edge, %pskb_may_pull.exit.drop_no_count_crit_edge, %if.end.i.drop_no_count_crit_edge, %land.lhs.true.drop_no_count_crit_edge, %skb_sec_path.exit.drop_no_count_crit_edge, %if.then.drop_no_count_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup241

cleanup241:                                       ; preds = %drop_no_count, %if.else, %if.then155, %sw.bb125, %sw.bb124
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icmpv6_err(ptr noundef %skb, ptr nocapture noundef readnone %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %7 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %type, label %if.end13 [
    i8 2, label %if.end13.thread
    i8 -119, label %if.end13.thread39
  ]

if.end13.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ifindex = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %8 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 11
  %10 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i, align 4
  %call.i = tail call i32 @make_kuid(ptr noundef %11, i32 noundef 0) #13
  %.fca.0.insert22 = insertvalue [1 x i32] poison, i32 %call.i, 0
  tail call void @ip6_update_pmtu(ptr noundef %skb, ptr noundef %6, i32 noundef %info, i32 noundef %9, i32 noundef 0, [1 x i32] %.fca.0.insert22) #13
  br label %if.then15

if.end13.thread39:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ifindex8 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex8, align 4
  %user_ns.i36 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 11
  %14 = ptrtoint ptr %user_ns.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns.i36, align 4
  %call.i37 = tail call i32 @make_kuid(ptr noundef %15, i32 noundef 0) #13
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call.i37, 0
  tail call void @ip6_redirect(ptr noundef %skb, ptr noundef %6, i32 noundef %13, i32 noundef 0, [1 x i32] %.fca.0.insert) #13
  br label %if.end21

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %type)
  %tobool.not = icmp sgt i8 %type, -1
  br i1 %tobool.not, label %if.end13.if.then15_crit_edge, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %if.end13.thread
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %17)
  %cmp17 = icmp eq i8 %17, -128
  br i1 %cmp17, label %if.then19, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ping_err(ptr noundef %skb, i32 noundef %offset, i32 noundef %info) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then15.if.end21_crit_edge, %if.end13.if.end21_crit_edge, %if.end13.thread39
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @icmpv6_echo_reply(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %tmp_hdr = alloca %struct.icmp6hdr, align 8
  %fl6 = alloca %struct.flowi6, align 8
  %msg = alloca %struct.icmpv6_msg, align 4
  %dst = alloca ptr, align 4
  %ipc6 = alloca %struct.ipcm6_cookie, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_hdr) #13
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #13
  %9 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #13
  %10 = call ptr @memset(ptr %msg, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst) #13
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ipc6) #13
  %12 = call ptr @memset(ptr %ipc6, i32 255, i32 32)
  %fwmark_reflect = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 1, i32 26
  %13 = ptrtoint ptr %fwmark_reflect to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fwmark_reflect, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %17, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i209 = zext i16 %19 to i32
  %add.ptr.i.i210 = getelementptr i8, ptr %6, i32 %conv.i.i209
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i210, i32 0, i32 6
  %20 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %21)
  %cmp.i = icmp ugt i32 %21, -16777217
  br i1 %cmp.i, label %land.lhs.true, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %icmpv6_echo_ignore_multicast = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 1, i32 20
  %22 = ptrtoint ptr %icmpv6_echo_ignore_multicast to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %icmpv6_echo_ignore_multicast, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool8.not = icmp eq i8 %23, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %and.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end.skb_dst.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !97

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end.skb_dst.exit_crit_edge
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 8
  %and25.i = and i32 %28, -2
  %29 = inttoptr i32 %and25.i to ptr
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rt6i_flags.i, align 4
  %and.i215 = and i32 %31, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i215)
  %tobool.not.i216 = icmp eq i32 %and.i215, 0
  br i1 %tobool.not.i216, label %lor.rhs.i, label %skb_dst.exit.land.lhs.true15_crit_edge

skb_dst.exit.land.lhs.true15_crit_edge:           ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true15

lor.rhs.i:                                        ; preds = %skb_dst.exit
  %plen.i = getelementptr inbounds %struct.rt6_info, ptr %29, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %plen.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %plen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %33)
  %cmp.i217 = icmp slt i32 %33, 127
  %and2.i = and i32 %31, 2097154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i218 = icmp eq i32 %and2.i, 0
  %or.cond.i = select i1 %cmp.i217, i1 %tobool3.not.i218, i1 false
  br i1 %or.cond.i, label %ipv6_anycast_destination.exit, label %lor.rhs.i.if.end21_crit_edge

lor.rhs.i.if.end21_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

ipv6_anycast_destination.exit:                    ; preds = %lor.rhs.i
  %rt6i_dst.i = getelementptr inbounds %struct.rt6_info, ptr %29, i32 0, i32 3
  %34 = ptrtoint ptr %rt6i_dst.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rt6i_dst.i, align 4
  %36 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %daddr, align 4
  %xor.i.i = xor i32 %37, %35
  %arrayidx4.i.i = getelementptr %struct.rt6_info, ptr %29, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %41, %39
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr %struct.rt6_info, ptr %29, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %45, %43
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr %struct.rt6_info, ptr %29, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %49, %47
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %ipv6_anycast_destination.exit.land.lhs.true15_crit_edge, label %ipv6_anycast_destination.exit.if.end21_crit_edge

ipv6_anycast_destination.exit.if.end21_crit_edge: ; preds = %ipv6_anycast_destination.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

ipv6_anycast_destination.exit.land.lhs.true15_crit_edge: ; preds = %ipv6_anycast_destination.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %ipv6_anycast_destination.exit.land.lhs.true15_crit_edge, %skb_dst.exit.land.lhs.true15_crit_edge
  %icmpv6_echo_ignore_anycast = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 1, i32 21
  %50 = ptrtoint ptr %icmpv6_echo_ignore_anycast to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %icmpv6_echo_ignore_anycast, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool19.not = icmp eq i8 %51, 0
  br i1 %tobool19.not, label %land.lhs.true15.if.end21_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true15.if.end21_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true15.if.end21_crit_edge, %ipv6_anycast_destination.exit.if.end21_crit_edge, %lor.rhs.i.if.end21_crit_edge
  %52 = phi i1 [ false, %land.lhs.true15.if.end21_crit_edge ], [ true, %ipv6_anycast_destination.exit.if.end21_crit_edge ], [ true, %lor.rhs.i.if.end21_crit_edge ]
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end21.ipv6_unicast_destination.exit_crit_edge, label %land.lhs.true.i.i

if.end21.ipv6_unicast_destination.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_unicast_destination.exit

land.lhs.true.i.i:                                ; preds = %if.end21
  %call.i.i220 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i220)
  %tobool1.not.i.i = icmp eq i32 %call.i.i220, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge

land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_unicast_destination.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge, !prof !97

land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipv6_unicast_destination.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %ipv6_unicast_destination.exit

ipv6_unicast_destination.exit:                    ; preds = %do.end.i.i, %land.rhs.i.i.ipv6_unicast_destination.exit_crit_edge, %land.lhs.true.i.i.ipv6_unicast_destination.exit_crit_edge, %if.end21.ipv6_unicast_destination.exit_crit_edge
  %53 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %24, align 8
  %and25.i.i = and i32 %54, -2
  %55 = inttoptr i32 %and25.i.i to ptr
  %rt6i_flags.i221 = getelementptr inbounds %struct.rt6_info, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %rt6i_flags.i221 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rt6i_flags.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i = icmp slt i32 %57, 0
  br i1 %tobool.i, label %ipv6_unicast_destination.exit.if.end32_crit_edge, label %land.lhs.true23

ipv6_unicast_destination.exit.if.end32_crit_edge: ; preds = %ipv6_unicast_destination.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true23:                                  ; preds = %ipv6_unicast_destination.exit
  call void @__sanitizer_cov_trace_pc() #15
  %anycast_src_echo_reply = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 1, i32 24
  %58 = ptrtoint ptr %anycast_src_echo_reply to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %anycast_src_echo_reply, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool27.not = icmp eq i8 %59, 0
  %brmerge = or i1 %52, %tobool27.not
  %spec.select = select i1 %brmerge, ptr null, ptr %daddr
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true23, %ipv6_unicast_destination.exit.if.end32_crit_edge
  %saddr.0 = phi ptr [ %daddr, %ipv6_unicast_destination.exit.if.end32_crit_edge ], [ %spec.select, %land.lhs.true23 ]
  %60 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %61)
  %cmp = icmp eq i8 %61, -96
  %. = select i1 %cmp, i8 -95, i8 -127
  %62 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %63 = load i64, ptr %add.ptr.i.i, align 4
  %64 = ptrtoint ptr %tmp_hdr to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %tmp_hdr, align 8
  store i8 %., ptr %tmp_hdr, align 8
  %65 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %flowlabel_reflect = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 1, i32 30
  %66 = ptrtoint ptr %flowlabel_reflect to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flowlabel_reflect, align 4
  %and = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end32.if.end44_crit_edge, label %if.then41

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head.i.i, align 8
  %70 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i224 = zext i16 %71 to i32
  %add.ptr.i.i225 = getelementptr i8, ptr %69, i32 %conv.i.i224
  %72 = ptrtoint ptr %add.ptr.i.i225 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i225, align 4
  %and.i226 = and i32 %73, 1048575
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %74 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and.i226, ptr %flowlabel, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end32.if.end44_crit_edge
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %75 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 58, ptr %flowic_proto, align 2
  %daddr45 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %76 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %head.i.i, align 8
  %78 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i229 = zext i16 %79 to i32
  %add.ptr.i.i230 = getelementptr i8, ptr %77, i32 %conv.i.i229
  %saddr47 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i230, i32 0, i32 5
  %80 = call ptr @memcpy(ptr %daddr45, ptr %saddr47, i32 16)
  %tobool48.not = icmp eq ptr %saddr.0, null
  br i1 %tobool48.not, label %if.end44.if.end51_crit_edge, label %if.then49

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %saddr50 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %81 = call ptr @memcpy(ptr %saddr50, ptr %saddr.0, i32 16)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end44.if.end51_crit_edge
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %0, align 8
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 17
  %84 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ifindex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp.i.i231 = icmp eq i32 %85, 1
  br i1 %cmp.i.i231, label %if.end51.if.then.i.i_crit_edge, label %lor.rhs.i.i, !prof !97

if.end51.if.then.i.i_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.rhs.i.i:                                      ; preds = %if.end51
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 15
  %86 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %87, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %lor.rhs.i.i.icmp6_iif.exit_crit_edge, label %lor.rhs.i.i.if.then.i.i_crit_edge, !prof !98

lor.rhs.i.i.if.then.i.i_crit_edge:                ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.rhs.i.i.icmp6_iif.exit_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %icmp6_iif.exit

if.then.i.i:                                      ; preds = %lor.rhs.i.i.if.then.i.i_crit_edge, %if.end51.if.then.i.i_crit_edge
  %and.i.i1.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i1.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.skb_rt6_info.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.skb_rt6_info.exit.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_rt6_info.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_rt6_info.exit.i_crit_edge

land.lhs.true.i.i.i.skb_rt6_info.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_rt6_info.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_rt6_info.exit.i_crit_edge, !prof !97

land.rhs.i.i.i.skb_rt6_info.exit.i_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_rt6_info.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_rt6_info.exit.i

skb_rt6_info.exit.i:                              ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_rt6_info.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_rt6_info.exit.i_crit_edge, %if.then.i.i.skb_rt6_info.exit.i_crit_edge
  %88 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %24, align 8
  %and25.i.i.i = and i32 %89, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool3.not.i.i232 = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool3.not.i.i232, label %skb_rt6_info.exit.i.icmp6_iif.exit_crit_edge, label %if.then4.i.i

skb_rt6_info.exit.i.icmp6_iif.exit_crit_edge:     ; preds = %skb_rt6_info.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %icmp6_iif.exit

if.then4.i.i:                                     ; preds = %skb_rt6_info.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %90 = inttoptr i32 %and25.i.i.i to ptr
  %rt6i_idev.i.i = getelementptr inbounds %struct.rt6_info, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %rt6i_idev.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rt6i_idev.i.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  br label %icmp6_iif.exit

icmp6_iif.exit:                                   ; preds = %if.then4.i.i, %skb_rt6_info.exit.i.icmp6_iif.exit_crit_edge, %lor.rhs.i.i.icmp6_iif.exit_crit_edge
  %dev.1.i.i = phi ptr [ %83, %lor.rhs.i.i.icmp6_iif.exit_crit_edge ], [ %94, %if.then4.i.i ], [ %83, %skb_rt6_info.exit.i.icmp6_iif.exit_crit_edge ]
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev.1.i.i, i32 0, i32 17
  %95 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ifindex.i, align 4
  %97 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %fl6, align 8
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %98 = ptrtoint ptr %uli to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %., ptr %uli, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %99 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %cond, ptr %flowic_mark, align 8
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %user_ns.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %100 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %user_ns.i, align 4
  %call.i233 = tail call i32 @make_kuid(ptr noundef %101, i32 noundef 0) #13
  %102 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call.i233, ptr %flowic_uid, align 4
  call void @security_skb_classify_flow(ptr noundef %skb, ptr noundef nonnull %fl6) #13
  call fastcc void @local_bh_disable()
  %103 = call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %106, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !107
  %icmp_sk.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 25
  %107 = ptrtoint ptr %icmp_sk.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %icmp_sk.i.i, align 8
  %109 = ptrtoint ptr %108 to i32
  %110 = call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i234 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i234 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %113
  %114 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %115, %109
  %116 = inttoptr i32 %add.i.i to ptr
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %116, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !108
  %119 = call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i19.i.i = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i.i19.i.i to ptr
  %preempt_count.i.i20.i.i = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %preempt_count.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %preempt_count.i.i20.i.i, align 4
  %sub.i.i.i = add i32 %122, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i20.i.i, align 4
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %118, i32 0, i32 4
  %call.i.i235 = call i32 @_raw_spin_trylock(ptr noundef %sk_lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i235)
  %tobool.not.i236 = icmp eq i32 %call.i.i235, 0
  %tobool60.not257 = icmp eq ptr %118, null
  %tobool60.not = select i1 %tobool.not.i236, i1 true, i1 %tobool60.not257
  br i1 %tobool60.not, label %icmp6_iif.exit.out_bh_enable_crit_edge, label %if.end62

icmp6_iif.exit.out_bh_enable_crit_edge:           ; preds = %icmp6_iif.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_bh_enable

if.end62:                                         ; preds = %icmp6_iif.exit
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %118, i32 0, i32 4
  %123 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i237 = zext i8 %124 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i237
  %and.i.i238 = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i238)
  %tobool.i.not.i = icmp eq i32 %and.i.i238, 0
  br i1 %tobool.i.not.i, label %if.end62.inet6_sk.exit_crit_edge, label %cond.true.i

if.end62.inet6_sk.exit_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %118, i32 0, i32 1
  %125 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %if.end62.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %126, %cond.true.i ], [ null, %if.end62.inet6_sk.exit_crit_edge ]
  %127 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fl6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool66.not = icmp eq i32 %128, 0
  br i1 %tobool66.not, label %land.lhs.true67, label %inet6_sk.exit.if.end82_crit_edge

inet6_sk.exit.if.end82_crit_edge:                 ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

land.lhs.true67:                                  ; preds = %inet6_sk.exit
  %129 = ptrtoint ptr %daddr45 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %daddr45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %130)
  %cmp.i239 = icmp ugt i32 %130, -16777217
  br i1 %cmp.i239, label %if.then71, label %if.then78

if.then71:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #15
  %mcast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 8
  %131 = ptrtoint ptr %mcast_oif to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %mcast_oif, align 4
  %133 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %fl6, align 8
  br label %if.end82

if.then78:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #15
  %ucast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 7
  %134 = ptrtoint ptr %ucast_oif to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ucast_oif, align 4
  %136 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %fl6, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.then71, %inet6_sk.exit.if.end82_crit_edge
  %call83 = call i32 @ip6_dst_lookup(ptr noundef %4, ptr noundef nonnull %118, ptr noundef nonnull %dst, ptr noundef nonnull %fl6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.out_crit_edge

if.end82.out_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end86:                                         ; preds = %if.end82
  %137 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dst, align 4
  %call88 = call ptr @xfrm_lookup(ptr noundef %4, ptr noundef %138, ptr noundef nonnull %fl6, ptr noundef nonnull %118, i32 noundef 0) #13
  %139 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call88, ptr %dst, align 4
  %cmp.i240 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %if.end86.out_crit_edge, label %if.end91

if.end86.out_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end91:                                         ; preds = %if.end86
  %140 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %0, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 14
  %142 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags, align 8
  %and92 = and i32 %143, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %land.lhs.true94, label %if.end91.lor.lhs.false_crit_edge

if.end91.lor.lhs.false_crit_edge:                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true94:                                  ; preds = %if.end91
  %arrayidx.i.i.i = getelementptr %struct.net, ptr %4, i32 0, i32 36, i32 1, i32 22, i32 4
  %144 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %146 = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i.i241 = icmp eq i32 %146, 0
  br i1 %tobool.not.i.i241, label %land.lhs.true94.lor.lhs.false_crit_edge, label %icmpv6_global_allow.exit

land.lhs.true94.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

icmpv6_global_allow.exit:                         ; preds = %land.lhs.true94
  %call1.i = call zeroext i1 @icmp_global_allow() #13
  br i1 %call1.i, label %icmpv6_global_allow.exit.lor.lhs.false_crit_edge, label %icmpv6_global_allow.exit.out_dst_release_crit_edge

icmpv6_global_allow.exit.out_dst_release_crit_edge: ; preds = %icmpv6_global_allow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dst_release

icmpv6_global_allow.exit.lor.lhs.false_crit_edge: ; preds = %icmpv6_global_allow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %icmpv6_global_allow.exit.lor.lhs.false_crit_edge, %land.lhs.true94.lor.lhs.false_crit_edge, %if.end91.lor.lhs.false_crit_edge
  %call96 = call fastcc zeroext i1 @icmpv6_xrlim_allow(ptr noundef nonnull %118, i8 noundef zeroext -127, ptr noundef nonnull %fl6)
  br i1 %call96, label %if.end98, label %lor.lhs.false.out_dst_release_crit_edge

lor.lhs.false.out_dst_release_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dst_release

if.end98:                                         ; preds = %lor.lhs.false
  %147 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %0, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %148, i32 0, i32 80
  %149 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i242 = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call.i242, label %if.end98.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end98.__in6_dev_get.exit_crit_edge:            ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end98
  %call2.i243 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i243)
  %tobool.not.i244 = icmp eq i32 %call2.i243, 0
  br i1 %tobool.not.i244, label %land.lhs.true.i245, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

land.lhs.true.i245:                               ; preds = %lor.lhs.false.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i245.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i245.__in6_dev_get.exit_crit_edge:  ; preds = %land.lhs.true.i245
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i245
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 313, ptr noundef nonnull @.str.11) #13
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i245.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.end98.__in6_dev_get.exit_crit_edge
  %151 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %skb, ptr %msg, align 4
  %offset = getelementptr inbounds %struct.icmpv6_msg, ptr %msg, i32 0, i32 1
  %152 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %offset, align 4
  %type101 = getelementptr inbounds %struct.icmpv6_msg, ptr %msg, i32 0, i32 2
  %153 = ptrtoint ptr %type101 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %., ptr %type101, align 4
  %dontfrag2.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %154 = ptrtoint ptr %dontfrag2.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %bf.load.i = load i16, ptr %dontfrag2.i, align 2
  %155 = trunc i16 %bf.load.i to i8
  %156 = lshr i8 %155, 5
  %conv3.i = and i8 %156, 1
  %157 = call ptr @memset(ptr %ipc6, i32 0, i32 16)
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 16
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 18
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 20
  %158 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.44.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 22
  %159 = ptrtoint ptr %.compoundliteral.sroa.44.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv3.i, ptr %.compoundliteral.sroa.44.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 23
  %160 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 9)
  %161 = ptrtoint ptr %daddr45 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %daddr45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %162)
  %cmp.i.i246 = icmp ugt i32 %162, -16777217
  %mcast_hops.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 6
  %163 = ptrtoint ptr %mcast_hops.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %bf.load.i247 = load i32, ptr %mcast_hops.i, align 4
  %bf.shl.i = shl i32 %bf.load.i247, 16
  %hlimit.0.in.i = select i1 %cmp.i.i246, i32 %bf.shl.i, i32 %bf.load.i247
  %hlimit.0.i = ashr i32 %hlimit.0.in.i, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hlimit.0.in.i)
  %cmp.i248 = icmp slt i32 %hlimit.0.in.i, 0
  br i1 %cmp.i248, label %if.then6.i, label %__in6_dev_get.exit.ip6_sk_dst_hoplimit.exit_crit_edge

__in6_dev_get.exit.ip6_sk_dst_hoplimit.exit_crit_edge: ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip6_sk_dst_hoplimit.exit

if.then6.i:                                       ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %164 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dst, align 4
  %call7.i = call i32 @ip6_dst_hoplimit(ptr noundef %165) #13
  br label %ip6_sk_dst_hoplimit.exit

ip6_sk_dst_hoplimit.exit:                         ; preds = %if.then6.i, %__in6_dev_get.exit.ip6_sk_dst_hoplimit.exit_crit_edge
  %hlimit.1.i = phi i32 [ %call7.i, %if.then6.i ], [ %hlimit.0.i, %__in6_dev_get.exit.ip6_sk_dst_hoplimit.exit_crit_edge ]
  %conv103 = trunc i32 %hlimit.1.i to i16
  %166 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv103, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %167 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %head.i.i, align 8
  %169 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i251 = zext i16 %170 to i32
  %add.ptr.i.i252 = getelementptr i8, ptr %168, i32 %conv.i.i251
  %171 = ptrtoint ptr %add.ptr.i.i252 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %add.ptr.i.i252, align 2
  %173 = lshr i16 %172, 4
  %conv106 = and i16 %173, 255
  %174 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv106, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  %mark107 = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc6, i32 0, i32 1
  %175 = ptrtoint ptr %mark107 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %cond, ptr %mark107, align 8
  %176 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %177)
  %cmp110 = icmp eq i8 %177, -96
  br i1 %cmp110, label %if.then112, label %ip6_sk_dst_hoplimit.exit.if.end116_crit_edge

ip6_sk_dst_hoplimit.exit.if.end116_crit_edge:     ; preds = %ip6_sk_dst_hoplimit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.then112:                                       ; preds = %ip6_sk_dst_hoplimit.exit
  %call113 = call zeroext i1 @icmp_build_probe(ptr noundef %skb, ptr noundef nonnull %tmp_hdr) #13
  br i1 %call113, label %if.then112.if.end116_crit_edge, label %if.then112.out_dst_release_crit_edge

if.then112.out_dst_release_crit_edge:             ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dst_release

if.then112.if.end116_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.end116:                                        ; preds = %if.then112.if.end116_crit_edge, %ip6_sk_dst_hoplimit.exit.if.end116_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %178 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %len, align 4
  %add = add i32 %179, 8
  %180 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dst, align 4
  %call117 = call i32 @ip6_append_data(ptr noundef nonnull %118, ptr noundef nonnull @icmpv6_getfrag, ptr noundef nonnull %msg, i32 noundef %add, i32 noundef 8, ptr noundef nonnull %ipc6, ptr noundef nonnull %fl6, ptr noundef %181, i32 noundef 64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.else144, label %if.then119

if.then119:                                       ; preds = %if.end116
  %cmp120.not = icmp eq ptr %150, null
  br i1 %cmp120.not, label %if.then119.if.end125_crit_edge, label %if.then124, !prof !97

if.then119.if.end125_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.then124:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #15
  %icmpv6dev = getelementptr inbounds %struct.inet6_dev, ptr %150, i32 0, i32 33, i32 2
  %182 = ptrtoint ptr %icmpv6dev to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %icmpv6dev, align 4
  %arrayidx = getelementptr [6 x %struct.atomic_t], ptr %183, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #13
  %184 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #13, !srcloc !103
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.then119.if.end125_crit_edge
  %icmpv6_statistics = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 13
  %185 = ptrtoint ptr %icmpv6_statistics to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %icmpv6_statistics, align 4
  %arrayidx134 = getelementptr [6 x i32], ptr %186, i32 0, i32 4
  %187 = ptrtoint ptr %arrayidx134 to i32
  %188 = call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i253 = and i32 %188, -16384
  %189 = inttoptr i32 %and.i253 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cpu, align 4
  %arrayidx137 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %191
  %192 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx137, align 4
  %add138 = add i32 %193, %187
  %194 = inttoptr i32 %add138 to ptr
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 4
  %add139 = add i32 %196, 1
  store i32 %add139, ptr %194, align 4
  call void @ip6_flush_pending_frames(ptr noundef nonnull %118) #13
  br label %out_dst_release

if.else144:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  %197 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %len, align 4
  %add146 = add i32 %198, 8
  call void @icmpv6_push_pending_frames(ptr noundef nonnull %118, ptr noundef nonnull %fl6, ptr noundef nonnull %tmp_hdr, i32 noundef %add146)
  br label %out_dst_release

out_dst_release:                                  ; preds = %if.else144, %if.end125, %if.then112.out_dst_release_crit_edge, %lor.lhs.false.out_dst_release_crit_edge, %icmpv6_global_allow.exit.out_dst_release_crit_edge
  %199 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dst, align 4
  call void @dst_release(ptr noundef %200) #13
  br label %out

out:                                              ; preds = %out_dst_release, %if.end86.out_crit_edge, %if.end82.out_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #13
  br label %out_bh_enable

out_bh_enable:                                    ; preds = %out, %icmp6_iif.exit.out_bh_enable_crit_edge
  call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %out_bh_enable, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ipc6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_hdr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ping_rcv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndisc_rcv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igmp6_event_query(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igmp6_event_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xfrm_policy_check2(ptr noundef %skb, i32 noundef %reverse) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reverse)
  %tobool.not = icmp eq i32 %reverse, 0
  %cond = select i1 %tobool.not, i32 0, i32 4
  %policy_default.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %5 = ptrtoint ptr %policy_default.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %policy_default.i, align 16
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i = icmp eq i8 %7, 0
  br i1 %tobool1.i, label %if.then5, label %if.else

if.then5:                                         ; preds = %entry
  %policy_count = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 13
  %8 = ptrtoint ptr %policy_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %policy_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %if.then5.lor.lhs.false_crit_edge

if.then5.lor.lhs.false_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true8:                                   ; preds = %if.then5
  %active_extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %10 = ptrtoint ptr %active_extensions.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_extensions.i.i, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.lor.lhs.false_crit_edge

land.lhs.true8.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true8.lor.lhs.false_crit_edge, %if.then5.lor.lhs.false_crit_edge
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.skb_dst.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.skb_dst.exit_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exitthread-pre-split

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, !prof !97

land.rhs.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %13, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %lor.lhs.false.skb_dst.exit_crit_edge
  %17 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %15, %lor.lhs.false.skb_dst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %tobool12.not = icmp ult i32 %17, 2
  br i1 %tobool12.not, label %skb_dst.exit.cleanup.sink.split_crit_edge, label %land.lhs.true13

skb_dst.exit.cleanup.sink.split_crit_edge:        ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true13:                                  ; preds = %skb_dst.exit
  %and.i2 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true13.skb_dst.exit12_crit_edge, label %land.lhs.true.i6

land.lhs.true13.skb_dst.exit12_crit_edge:         ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit12

land.lhs.true.i6:                                 ; preds = %land.lhs.true13
  %call.i4 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool1.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool1.not.i5, label %land.rhs.i9, label %land.lhs.true.i6.skb_dst.exit12_crit_edge

land.lhs.true.i6.skb_dst.exit12_crit_edge:        ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit12

land.rhs.i9:                                      ; preds = %land.lhs.true.i6
  %call2.i7 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7)
  %tobool3.not.i8 = icmp eq i32 %call2.i7, 0
  br i1 %tobool3.not.i8, label %do.end.i10, label %land.rhs.i9.skb_dst.exit12_crit_edge, !prof !97

land.rhs.i9.skb_dst.exit12_crit_edge:             ; preds = %land.rhs.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit12

do.end.i10:                                       ; preds = %land.rhs.i9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit12

skb_dst.exit12:                                   ; preds = %do.end.i10, %land.rhs.i9.skb_dst.exit12_crit_edge, %land.lhs.true.i6.skb_dst.exit12_crit_edge, %land.lhs.true13.skb_dst.exit12_crit_edge
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 8
  %and25.i11 = and i32 %19, -2
  %20 = inttoptr i32 %and25.i11 to ptr
  %flags = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags, align 4
  %23 = and i16 %22, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool16.not = icmp eq i16 %23, 0
  br i1 %tobool16.not, label %skb_dst.exit12.cleanup.sink.split_crit_edge, label %skb_dst.exit12.cleanup_crit_edge

skb_dst.exit12.cleanup_crit_edge:                 ; preds = %skb_dst.exit12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

skb_dst.exit12.cleanup.sink.split_crit_edge:      ; preds = %skb_dst.exit12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %and.i13 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %if.else.skb_dst.exit23_crit_edge, label %land.lhs.true.i17

if.else.skb_dst.exit23_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit23

land.lhs.true.i17:                                ; preds = %if.else
  %call.i15 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool1.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool1.not.i16, label %land.rhs.i20, label %land.lhs.true.i17.skb_dst.exit23thread-pre-split_crit_edge

land.lhs.true.i17.skb_dst.exit23thread-pre-split_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit23thread-pre-split

land.rhs.i20:                                     ; preds = %land.lhs.true.i17
  %call2.i18 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18)
  %tobool3.not.i19 = icmp eq i32 %call2.i18, 0
  br i1 %tobool3.not.i19, label %do.end.i21, label %land.rhs.i20.skb_dst.exit23thread-pre-split_crit_edge, !prof !97

land.rhs.i20.skb_dst.exit23thread-pre-split_crit_edge: ; preds = %land.rhs.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit23thread-pre-split

do.end.i21:                                       ; preds = %land.rhs.i20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit23thread-pre-split

skb_dst.exit23thread-pre-split:                   ; preds = %do.end.i21, %land.rhs.i20.skb_dst.exit23thread-pre-split_crit_edge, %land.lhs.true.i17.skb_dst.exit23thread-pre-split_crit_edge
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr35 = load i32, ptr %24, align 8
  br label %skb_dst.exit23

skb_dst.exit23:                                   ; preds = %skb_dst.exit23thread-pre-split, %if.else.skb_dst.exit23_crit_edge
  %28 = phi i32 [ %.pr35, %skb_dst.exit23thread-pre-split ], [ %26, %if.else.skb_dst.exit23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %tobool21.not = icmp ult i32 %28, 2
  br i1 %tobool21.not, label %skb_dst.exit23.cleanup.sink.split_crit_edge, label %land.lhs.true22

skb_dst.exit23.cleanup.sink.split_crit_edge:      ; preds = %skb_dst.exit23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true22:                                  ; preds = %skb_dst.exit23
  %and.i24 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true22.skb_dst.exit34_crit_edge, label %land.lhs.true.i28

land.lhs.true22.skb_dst.exit34_crit_edge:         ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit34

land.lhs.true.i28:                                ; preds = %land.lhs.true22
  %call.i26 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool1.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool1.not.i27, label %land.rhs.i31, label %land.lhs.true.i28.skb_dst.exit34_crit_edge

land.lhs.true.i28.skb_dst.exit34_crit_edge:       ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit34

land.rhs.i31:                                     ; preds = %land.lhs.true.i28
  %call2.i29 = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29)
  %tobool3.not.i30 = icmp eq i32 %call2.i29, 0
  br i1 %tobool3.not.i30, label %do.end.i32, label %land.rhs.i31.skb_dst.exit34_crit_edge, !prof !97

land.rhs.i31.skb_dst.exit34_crit_edge:            ; preds = %land.rhs.i31
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit34

do.end.i32:                                       ; preds = %land.rhs.i31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit34

skb_dst.exit34:                                   ; preds = %do.end.i32, %land.rhs.i31.skb_dst.exit34_crit_edge, %land.lhs.true.i28.skb_dst.exit34_crit_edge, %land.lhs.true22.skb_dst.exit34_crit_edge
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %24, align 8
  %and25.i33 = and i32 %30, -2
  %31 = inttoptr i32 %and25.i33 to ptr
  %flags24 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %flags24 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags24, align 4
  %34 = and i16 %33, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool27.not = icmp eq i16 %34, 0
  br i1 %tobool27.not, label %skb_dst.exit34.cleanup.sink.split_crit_edge, label %skb_dst.exit34.cleanup_crit_edge

skb_dst.exit34.cleanup_crit_edge:                 ; preds = %skb_dst.exit34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

skb_dst.exit34.cleanup.sink.split_crit_edge:      ; preds = %skb_dst.exit34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %skb_dst.exit34.cleanup.sink.split_crit_edge, %skb_dst.exit23.cleanup.sink.split_crit_edge, %skb_dst.exit12.cleanup.sink.split_crit_edge, %skb_dst.exit.cleanup.sink.split_crit_edge
  %call30 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef %cond, ptr noundef %skb, i16 noundef zeroext 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31 = icmp ne i32 %call30, 0
  %phi.cast = zext i1 %tobool31 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %skb_dst.exit34.cleanup_crit_edge, %skb_dst.exit12.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  %retval.0.shrunk = phi i32 [ 1, %skb_dst.exit12.cleanup_crit_edge ], [ 1, %land.lhs.true8.cleanup_crit_edge ], [ 1, %skb_dst.exit34.cleanup_crit_edge ], [ %phi.cast, %cleanup.sink.split ]
  ret i32 %retval.0.shrunk
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @icmp_build_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ping_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_ms_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dou8vec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_do_large_bitmap(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare ptr @memmove(ptr, ptr, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !19, !21, !22, !24, !26, !27, !28, !29, !31, !33, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/icmp.c", i32 525, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @icmp6_send.descriptor, !1, !"descriptor", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/ipv6/icmp.c", i32 534, i32 3}
!9 = !{ptr @icmp6_send.descriptor.5, !8, !"descriptor", i1 false, i1 false}
!10 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/ipv6/icmp.c", i32 611, i32 3}
!13 = distinct !{null, !12, !"descriptor", i1 false, i1 false}
!14 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_icmp6_send, !16, !"__ksymtab_icmp6_send", i1 false, i1 false}
!16 = !{!"../net/ipv6/icmp.c", i32 638, i32 1}
!17 = !{ptr @__ksymtab_ip6_err_gen_icmpv6_unreach, !18, !"__ksymtab_ip6_err_gen_icmpv6_unreach", i1 false, i1 false}
!18 = !{!"../net/ipv6/icmp.c", i32 712, i32 1}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/ipv6/icmp.c", i32 858, i32 11}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ipv6/icmp.c", i32 866, i32 2}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv6/icmp.c", i32 1103, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @icmpv6_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @icmpv6_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_icmpv6_err_convert, !30, !"__ksymtab_icmpv6_err_convert", i1 false, i1 false}
!30 = !{!"../net/ipv6/icmp.c", i32 1181, i32 1}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/net/ip6_fib.h", i32 475, i32 9}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ipv6/icmp.c", i32 375, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @icmpv6_route_lookup.descriptor, !40, !"descriptor", i1 false, i1 false}
!43 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @icmpv6_sk_ops, !55, !"icmpv6_sk_ops", i1 false, i1 false}
!55 = !{!"../net/ipv6/icmp.c", i32 1078, i32 33}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/ipv6/icmp.c", i32 1059, i32 4}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @icmpv6_sk_init._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @icmpv6_sk_init._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @icmpv6_protocol, !62, !"icmpv6_protocol", i1 false, i1 false}
!62 = !{!"../net/ipv6/icmp.c", i32 106, i32 36}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/ipv6/icmp.c", i32 909, i32 3}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @icmpv6_rcv.descriptor, !64, !"descriptor", i1 false, i1 false}
!67 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/ipv6/icmp.c", i32 991, i32 3}
!70 = !{ptr @icmpv6_rcv.descriptor.30, !69, !"descriptor", i1 false, i1 false}
!71 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @tab_unreach, !73, !"tab_unreach", i1 false, i1 false}
!73 = !{!"../net/ipv6/icmp.c", i32 1119, i32 3}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/ipv6/icmp.c", i32 1186, i32 15}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/ipv6/icmp.c", i32 1193, i32 15}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/ipv6/icmp.c", i32 1200, i32 15}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/ipv6/icmp.c", i32 1207, i32 15}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/ipv6/icmp.c", i32 1214, i32 15}
!84 = !{ptr @ipv6_icmp_table_template, !85, !"ipv6_icmp_table_template", i1 false, i1 false}
!85 = !{!"../net/ipv6/icmp.c", i32 1184, i32 25}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 6625620}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2149383917}
!100 = !{i64 2149384183}
!101 = !{i64 2148981135, i64 2148981140, i64 2148981153, i64 2148981197, i64 2148981231, i64 2148981252}
!102 = !{!"auto-init"}
!103 = !{i64 2148367758, i64 2148367784, i64 2148367813, i64 2148367847, i64 2148367878, i64 2148367901}
!104 = !{i64 771458, i64 771519}
!105 = !{i64 774190}
!106 = !{i64 774475}
!107 = !{i64 2158127385}
!108 = !{i64 2158144448}
!109 = !{i64 2150000234}
!110 = !{i64 2149891916}
!111 = !{i64 2149896848}
!112 = !{i64 2149918560}
!113 = !{i64 2149923452}
!114 = !{i64 2149999909}
