; ModuleID = '/llk/IR_all_yes/drivers/net/geneve.c_pt.bc'
source_filename = "../drivers/net/geneve.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+geneve_dev_create_fb\22, \22a\22\09"
module asm "\09.weak\09__crc_geneve_dev_create_fb\09\09\09\09"
module asm "\09.long\09__crc_geneve_dev_create_fb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_geneve_dev_create_fb:\09\09\09\09\09"
module asm "\09.asciz \09\22geneve_dev_create_fb\22\09\09\09\09\09"
module asm "__kstrtabns_geneve_dev_create_fb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.135 }
%union.anon.135 = type { ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.136 }
%struct.atomic_t = type { i32 }
%union.anon.136 = type { i32 }
%struct.geneve_config = type { %struct.ip_tunnel_info, i8, i8, i8, i32 }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.159, i16, i8, i8, i32, i16, i16 }
%union.anon.159 = type { %struct.anon.161 }
%struct.anon.161 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.141, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.158, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.141 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.158 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.geneve_sock = type { i8, %struct.list_head, ptr, %struct.callback_head, i32, [1024 x %struct.hlist_head] }
%struct.callback_head = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.99, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.99 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.udp_port_cfg = type { i8, %union.anon.165, %union.anon.166, i16, i16, i32, i8 }
%union.anon.165 = type { %struct.in6_addr }
%union.anon.166 = type { %struct.in6_addr }
%struct.udp_tunnel_sock_cfg = type { ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.geneve_dev = type { %struct.geneve_dev_node, %struct.geneve_dev_node, ptr, ptr, ptr, ptr, %struct.list_head, %struct.gro_cells, %struct.geneve_config }
%struct.geneve_dev_node = type { %struct.hlist_node, ptr }
%struct.gro_cells = type { ptr }
%struct.geneve_net = type { %struct.list_head, %struct.list_head }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.85 }
%union.anon.85 = type { %struct.flowi6 }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }
%struct.genevehdr = type { i16, i16, [3 x i8], i8, [0 x %struct.geneve_opt] }
%struct.geneve_opt = type { i16, i8, i8, [0 x i8] }
%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.167 }
%union.anon.167 = type { %struct.ip_tunnel_info }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.anon.86 = type { i16, i16 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__param_str_log_ecn_error = internal constant [21 x i8] c"geneve.log_ecn_error\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@log_ecn_error = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_log_ecn_error = internal constant %struct.kernel_param { ptr @__param_str_log_ecn_error, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.135 { ptr @log_ecn_error } }, section "__param", align 4
@__UNIQUE_ID_log_ecn_errortype570 = internal constant [35 x i8] c"geneve.parmtype=log_ecn_error:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_log_ecn_error571 = internal constant [66 x i8] c"geneve.parm=log_ecn_error:Log packets received with corrupted ECN\00", section ".modinfo", align 1
@geneve_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.1, i32 136, ptr null, ptr @geneve_setup, i8 0, i32 13, ptr @geneve_policy, ptr @geneve_validate, ptr @geneve_newlink, ptr @geneve_changelink, ptr @geneve_dellink, ptr @geneve_get_size, ptr @geneve_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__kstrtab_geneve_dev_create_fb = external dso_local constant [0 x i8], align 1
@__kstrtabns_geneve_dev_create_fb = external dso_local constant [0 x i8], align 1
@__ksymtab_geneve_dev_create_fb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @geneve_dev_create_fb to i32), ptr @__kstrtab_geneve_dev_create_fb, ptr @__kstrtabns_geneve_dev_create_fb }, section "___ksymtab_gpl+geneve_dev_create_fb", align 4
@__initcall__kmod_geneve__636_1966_geneve_init_module7 = internal global ptr @geneve_init_module, section ".initcall7.init", align 4
@geneve_notifier_block = internal global %struct.notifier_block { ptr @geneve_netdevice_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@geneve_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @geneve_init_net, ptr null, ptr null, ptr @geneve_exit_batch_net, ptr @geneve_net_id, i32 16 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_geneve_cleanup_module = internal global ptr @geneve_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file637 = internal constant [31 x i8] c"geneve.file=drivers/net/geneve\00", section ".modinfo", align 1
@__UNIQUE_ID_license638 = internal constant [19 x i8] c"geneve.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version639 = internal constant [19 x i8] c"geneve.version=0.6\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"geneve\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.6\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author640 = internal constant [56 x i8] c"geneve.author=John W. Linville <linville@tuxdriver.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description641 = internal constant [68 x i8] c"geneve.description=Interface driver for GENEVE encapsulated traffic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias642 = internal constant [30 x i8] c"geneve.alias=rtnl-link-geneve\00", section ".modinfo", align 1
@geneve_policy = internal constant { [14 x %struct.nla_policy], [48 x i8] } { [14 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@geneve_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @geneve_init, ptr @geneve_uninit, ptr @geneve_open, ptr @geneve_stop, ptr @geneve_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @geneve_change_mtu, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @geneve_fill_metadata_dst, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@geneve_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @geneve_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@geneve_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@geneve_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@geneve_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@geneve_udp_encap_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/net/geneve.c\00", [43 x i8] zeroinitializer }, align 32
@geneve_lookup_skb.zero_vni = internal global { [3 x i8], [29 x i8] } zeroinitializer, align 32
@geneve_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@geneve6_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@geneve_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.9, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016geneve: non-ECT from %pI4 with TOS=%#x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"geneve_rx\00", [22 x i8] zeroinitializer }, align 32
@geneve_rx._entry_ptr = internal global ptr @geneve_rx._entry, section ".printk_index", align 4
@geneve_rx._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.9, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016geneve: non-ECT from %pI6\0A\00", [35 x i8] zeroinitializer }, align 32
@geneve_rx._entry_ptr.15 = internal global ptr @geneve_rx._entry.13, section ".printk_index", align 4
@ip_tunnel_metadata_cnt = external dso_local global %struct.static_key_false, align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@geneve_udp_encap_err_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@geneve_sock_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@geneve_sock_release.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@geneve_xmit.__UNIQUE_ID_ddebug605 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.9, ptr @.str.21, i8 1, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"geneve_xmit\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no tunnel metadata\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@geneve6_xmit_skb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@geneve_get_v6_dst.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.9, ptr @.str.24, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"geneve_get_v6_dst\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no route to %pI6\0A\00", [46 x i8] zeroinitializer }, align 32
@geneve_get_v6_dst.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.9, ptr @.str.25, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"circular route to %pI6\0A\00", [40 x i8] zeroinitializer }, align 32
@geneve_xmit_skb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@geneve_get_v4_rt.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.9, ptr @.str.27, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"geneve_get_v4_rt\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no route to %pI4\0A\00", [46 x i8] zeroinitializer }, align 32
@geneve_get_v4_rt.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.9, ptr @.str.28, i8 0, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"circular route to %pI4\0A\00", [40 x i8] zeroinitializer }, align 32
@geneve_fill_metadata_dst.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@geneve_fill_metadata_dst.__warned.29 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@geneve_validate.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Provided link layer address is not Ethernet\00", [52 x i8] zeroinitializer }, align 32
@geneve_validate.__msg.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Provided Ethernet address is not unicast\00", [55 x i8] zeroinitializer }, align 32
@geneve_validate.__msg.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Not enough attributes provided to perform the operation\00", [40 x i8] zeroinitializer }, align 32
@geneve_validate.__msg.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Geneve ID must be lower than 16777216\00", [58 x i8] zeroinitializer }, align 32
@geneve_validate.__msg.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid DF attribute\00", [43 x i8] zeroinitializer }, align 32
@geneve_nl2info.__msg = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Cannot specify both IPv4 and IPv6 Remote addresses\00", [45 x i8] zeroinitializer }, align 32
@geneve_nl2info.__msg.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Remote IPv4 address cannot be Multicast\00", [56 x i8] zeroinitializer }, align 32
@geneve_nl2info.__msg.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Remote IPv6 address cannot be link-local\00", [55 x i8] zeroinitializer }, align 32
@geneve_nl2info.__msg.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Remote IPv6 address cannot be Multicast\00", [56 x i8] zeroinitializer }, align 32
@geneve_nl2info.__msg.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Label attribute only applies for IPv6 Geneve devices\00", [43 x i8] zeroinitializer }, align 32
@geneve_nl2info.__msg.38 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"Changing VNI, Port, endpoint IP address family, external, and UDP checksum attributes are not supported\00", [56 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@geneve_quiesce.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@geneve_quiesce.__warned.40 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@geneve_unquiesce.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@geneve_unquiesce.__already_done.42 = internal unnamed_addr global i1 false, section ".data.once", align 1
@geneve_configure.__msg = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"Device is externally controlled, so attributes (VNI, Port, and so on) must not be specified\00", [36 x i8] zeroinitializer }, align 32
@geneve_configure.__msg.43 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"There can be only one externally controlled device on a destination port\00", [55 x i8] zeroinitializer }, align 32
@geneve_configure.__msg.44 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"There already exists an externally controlled device on this destination port\00", [50 x i8] zeroinitializer }, align 32
@geneve_offload_rx_ports.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@geneve_exit_batch_net.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967206]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 4294967195, i64 4294967256]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 28, i64 29]
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"log_ecn_error\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 31, i32 13 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"geneve_net_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1935, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1977, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"geneve_policy\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1240, i32 32 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"geneve_netdev_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1153, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"geneve_ethtool_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1173, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"geneve_type\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1179, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 314, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant [14 x i8] c"geneve_net_id\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 46, i32 21 }
@___asan_gen_.115 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 45, i32 7 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 695, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 723, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 362, i32 7 }
@___asan_gen_.129 = private unnamed_addr constant [9 x i8] c"zero_vni\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 176, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 140, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 280, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 286, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 598, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 271, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 612, i32 28 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1062, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1011, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 861, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 865, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 806, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 810, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1261, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1267, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1274, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1283, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1293, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1413, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1428, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1447, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1452, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1503, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1566, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 313, i32 9 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1351, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1376, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.229 = private constant [24 x i8] c"../drivers/net/geneve.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1382, i32 4 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_alias642, ptr @__UNIQUE_ID_author640, ptr @__UNIQUE_ID_description641, ptr @__UNIQUE_ID_file637, ptr @__UNIQUE_ID_license638, ptr @__UNIQUE_ID_log_ecn_error571, ptr @__UNIQUE_ID_log_ecn_errortype570, ptr @__UNIQUE_ID_version639, ptr @__exitcall_geneve_cleanup_module, ptr @__initcall__kmod_geneve__636_1966_geneve_init_module7, ptr @__ksymtab_geneve_dev_create_fb, ptr @__modver_attr, ptr @__param_log_ecn_error, ptr @geneve_cleanup_module, ptr @geneve_rx._entry, ptr @geneve_rx._entry.13, ptr @geneve_rx._entry_ptr, ptr @geneve_rx._entry_ptr.15, ptr @log_ecn_error, ptr @geneve_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @geneve_policy, ptr @geneve_netdev_ops, ptr @geneve_ethtool_ops, ptr @geneve_type, ptr @geneve_init.__key, ptr @.str.3, ptr @geneve_net_id, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @geneve_lookup_skb.zero_vni, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @geneve_validate.__msg, ptr @geneve_validate.__msg.30, ptr @geneve_validate.__msg.31, ptr @geneve_validate.__msg.32, ptr @geneve_validate.__msg.33, ptr @geneve_nl2info.__msg, ptr @geneve_nl2info.__msg.34, ptr @geneve_nl2info.__msg.35, ptr @geneve_nl2info.__msg.36, ptr @geneve_nl2info.__msg.37, ptr @geneve_nl2info.__msg.38, ptr @.str.39, ptr @geneve_configure.__msg, ptr @geneve_configure.__msg.43, ptr @geneve_configure.__msg.44], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_ecn_error to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_policy to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_lookup_skb.zero_vni to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_rx._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_validate.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_validate.__msg.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_validate.__msg.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_validate.__msg.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_validate.__msg.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_nl2info.__msg to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_nl2info.__msg.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_nl2info.__msg.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_nl2info.__msg.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_nl2info.__msg.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_nl2info.__msg.38 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_configure.__msg to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_configure.__msg.43 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_configure.__msg.44 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @geneve_dev_create_fb(ptr noundef %net, ptr noundef %name, i8 noundef zeroext %name_assign_type, i16 noundef zeroext %dst_port) #0 align 64 {
entry:
  %tb = alloca [59 x ptr], align 4
  %list_kill = alloca %struct.list_head, align 4
  %cfg = alloca %struct.geneve_config, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %tb) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list_kill) #18
  %0 = getelementptr inbounds %struct.list_head, ptr %list_kill, i32 0, i32 1
  %1 = ptrtoint ptr %list_kill to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list_kill, ptr %list_kill, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list_kill, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cfg) #18
  %3 = getelementptr inbounds i8, ptr %cfg, i32 72
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %3, align 8
  %5 = getelementptr inbounds { { { i64, %union.anon.159, i16, i8, i8, i32, i16, i16, [4 x i8] }, %struct.dst_cache, i8, i8, [6 x i8] }, i8, i8, i8, [1 x i8], i32 }, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %5, align 8
  %7 = getelementptr inbounds { { { i64, %union.anon.159, i16, i8, i8, i32, i16, i16, [4 x i8] }, %struct.dst_cache, i8, i8, [6 x i8] }, i8, i8, i8, [1 x i8], i32 }, ptr %cfg, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %7, align 1
  %9 = call ptr @memset(ptr %tb, i32 0, i32 236)
  %call = call ptr @rtnl_create_link(ptr noundef %net, ptr noundef %name, i8 noundef zeroext %name_assign_type, ptr noundef nonnull @geneve_link_ops, ptr noundef nonnull %tb, ptr noundef null) #18
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = call ptr @memset(ptr %cfg, i32 0, i32 72)
  %tp_dst.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 7
  %11 = ptrtoint ptr %tp_dst.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %dst_port, ptr %tp_dst.i, align 2
  %call3 = call fastcc i32 @geneve_configure(ptr noundef %net, ptr noundef %call, ptr noundef null, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @free_netdev(ptr noundef %call) #18
  %12 = inttoptr i32 %call3 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %13 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %14)
  %cmp.i32 = icmp ult i32 %14, 65535
  br i1 %cmp.i32, label %if.end6.geneve_change_mtu.exit_crit_edge, label %if.else.i

if.end6.geneve_change_mtu.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve_change_mtu.exit

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %15 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %min_mtu.i, align 8
  %17 = call i32 @llvm.umax.i32(i32 %16, i32 65535) #18
  br label %geneve_change_mtu.exit

geneve_change_mtu.exit:                           ; preds = %if.else.i, %if.end6.geneve_change_mtu.exit_crit_edge
  %new_mtu.addr.0.i = phi i32 [ %14, %if.end6.geneve_change_mtu.exit_crit_edge ], [ %17, %if.else.i ]
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 20
  %18 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %new_mtu.addr.0.i, ptr %mtu.i, align 4
  %call11 = call i32 @rtnl_configure_link(ptr noundef %call, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %err14, label %geneve_change_mtu.exit.cleanup_crit_edge

geneve_change_mtu.exit.cleanup_crit_edge:         ; preds = %geneve_change_mtu.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

err14:                                            ; preds = %geneve_change_mtu.exit
  %next.i = getelementptr i8, ptr %call, i32 2344
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %next.i) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %err14.geneve_dellink.exit_crit_edge

err14.geneve_dellink.exit_crit_edge:              ; preds = %err14
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve_dellink.exit

if.end.i.i.i:                                     ; preds = %err14
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i = getelementptr i8, ptr %call, i32 2348
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %next.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %geneve_dellink.exit

geneve_dellink.exit:                              ; preds = %if.end.i.i.i, %err14.geneve_dellink.exit_crit_edge
  %25 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %next.i, align 4
  %prev.i.i = getelementptr i8, ptr %call, i32 2348
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @unregister_netdevice_queue(ptr noundef %call, ptr noundef nonnull %list_kill) #18
  call void @unregister_netdevice_many(ptr noundef nonnull %list_kill) #18
  %27 = inttoptr i32 %call11 to ptr
  br label %cleanup

cleanup:                                          ; preds = %geneve_dellink.exit, %geneve_change_mtu.exit.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.then4 ], [ %27, %geneve_dellink.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call, %geneve_change_mtu.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cfg) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list_kill) #18
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %tb) #18
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtnl_create_link(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @geneve_configure(ptr noundef %net, ptr noundef %dev, ptr noundef writeonly %extack, ptr noundef %cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @geneve_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %collect_md = getelementptr inbounds %struct.geneve_config, ptr %cfg, i32 0, i32 1
  %1 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %collect_md, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %cfg, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not.i = icmp eq i64 %4, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %tun_flags.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 2
  %5 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tun_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool2.not.i = icmp eq i16 %6, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.do.body_crit_edge

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %tos.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 3
  %7 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tos.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not.i = icmp eq i8 %8, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false3.i.do.body_crit_edge

lor.lhs.false3.i.do.body_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false3.i
  %ttl.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 4
  %9 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ttl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not.i = icmp eq i8 %10, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false7.i.do.body_crit_edge

lor.lhs.false7.i.do.body_crit_edge:               ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

lor.lhs.false11.i:                                ; preds = %lor.lhs.false7.i
  %label.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 5
  %11 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %label.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not.i = icmp eq i32 %12, 0
  br i1 %tobool13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false11.i.do.body_crit_edge

lor.lhs.false11.i.do.body_crit_edge:              ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

lor.lhs.false14.i:                                ; preds = %lor.lhs.false11.i
  %tp_src.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 6
  %13 = ptrtoint ptr %tp_src.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tp_src.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool17.not.i = icmp eq i16 %14, 0
  br i1 %tobool17.not.i, label %is_tnl_info_zero.exit, label %lor.lhs.false14.i.do.body_crit_edge

lor.lhs.false14.i.do.body_crit_edge:              ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

is_tnl_info_zero.exit:                            ; preds = %lor.lhs.false14.i
  %u.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 1
  %call.i = tail call ptr @memchr_inv(ptr noundef %u.i, i32 noundef 0, i32 noundef 32) #18
  %tobool19.i = icmp eq ptr %call.i, null
  br i1 %tobool19.i, label %is_tnl_info_zero.exit.if.end6_crit_edge, label %is_tnl_info_zero.exit.do.body_crit_edge

is_tnl_info_zero.exit.do.body_crit_edge:          ; preds = %is_tnl_info_zero.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

is_tnl_info_zero.exit.if.end6_crit_edge:          ; preds = %is_tnl_info_zero.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

do.body:                                          ; preds = %is_tnl_info_zero.exit.do.body_crit_edge, %lor.lhs.false14.i.do.body_crit_edge, %lor.lhs.false11.i.do.body_crit_edge, %lor.lhs.false7.i.do.body_crit_edge, %lor.lhs.false3.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_configure.__msg) #18
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @geneve_configure.__msg, ptr %extack, align 4
  br label %cleanup

if.end6:                                          ; preds = %is_tnl_info_zero.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %net7 = getelementptr i8, ptr %dev, i32 2328
  %16 = ptrtoint ptr %net7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %net, ptr %net7, align 8
  %dev8 = getelementptr i8, ptr %dev, i32 2332
  %17 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %dev8, align 4
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn54.i = load ptr, ptr %call, align 4
  %cmp.not56.i = icmp eq ptr %.pn54.i, %call
  br i1 %cmp.not56.i, label %if.end6.if.end12_crit_edge, label %for.body.lr.ph.i

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

for.body.lr.ph.i:                                 ; preds = %if.end6
  %tp_dst.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 7
  %u.i91 = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 1
  %19 = ptrtoint ptr %tp_dst.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tp_dst.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tun_collect_md.0 = phi i8 [ 0, %for.body.lr.ph.i ], [ %tun_collect_md.196, %for.inc.i.for.body.i_crit_edge ]
  %tun_on_same_port.0 = phi i8 [ 0, %for.body.lr.ph.i ], [ %tun_on_same_port.198, %for.inc.i.for.body.i_crit_edge ]
  %.pn58.i = phi ptr [ %.pn54.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %t.057.i = phi ptr [ null, %for.body.lr.ph.i ], [ %t.1.i, %for.inc.i.for.body.i_crit_edge ]
  %geneve.059.i = getelementptr i8, ptr %.pn58.i, i32 -40
  %tp_dst5.i = getelementptr i8, ptr %.pn58.i, i32 66
  %21 = ptrtoint ptr %tp_dst5.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tp_dst5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp7.i = icmp eq i16 %20, %22
  br i1 %cmp7.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %cfg.i = getelementptr i8, ptr %.pn58.i, i32 16
  %collect_md.i = getelementptr i8, ptr %.pn58.i, i32 88
  %23 = ptrtoint ptr %collect_md.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %collect_md.i, align 8, !range !177
  %25 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cfg, align 8
  %27 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %cfg.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp15.i = icmp eq i64 %26, %28
  br i1 %cmp15.i, label %land.lhs.true27.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true27.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %u32.i = getelementptr i8, ptr %.pn58.i, i32 24
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(32) %u.i91, ptr noundef dereferenceable(32) %u32.i, i32 32) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool33.not.i = icmp eq i32 %bcmp.i, 0
  %spec.select.i = select i1 %tobool33.not.i, ptr %geneve.059.i, ptr %t.057.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true27.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %tun_on_same_port.198 = phi i8 [ 1, %if.end.i.for.inc.i_crit_edge ], [ 1, %land.lhs.true27.i ], [ %tun_on_same_port.0, %for.body.i.for.inc.i_crit_edge ]
  %tun_collect_md.196 = phi i8 [ %24, %if.end.i.for.inc.i_crit_edge ], [ %24, %land.lhs.true27.i ], [ %tun_collect_md.0, %for.body.i.for.inc.i_crit_edge ]
  %t.1.i = phi ptr [ %t.057.i, %if.end.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true27.i ], [ %t.057.i, %for.body.i.for.inc.i_crit_edge ]
  %29 = ptrtoint ptr %.pn58.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn58.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %call
  br i1 %cmp.not.i, label %geneve_find_dev.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

geneve_find_dev.exit:                             ; preds = %for.inc.i
  %tobool10.not = icmp eq ptr %t.1.i, null
  br i1 %tobool10.not, label %geneve_find_dev.exit.if.end12_crit_edge, label %geneve_find_dev.exit.cleanup_crit_edge

geneve_find_dev.exit.cleanup_crit_edge:           ; preds = %geneve_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

geneve_find_dev.exit.if.end12_crit_edge:          ; preds = %geneve_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.end12:                                         ; preds = %geneve_find_dev.exit.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %tun_on_same_port.2107 = phi i8 [ %tun_on_same_port.198, %geneve_find_dev.exit.if.end12_crit_edge ], [ 0, %if.end6.if.end12_crit_edge ]
  %tun_collect_md.2106 = phi i8 [ %tun_collect_md.196, %geneve_find_dev.exit.if.end12_crit_edge ], [ 0, %if.end6.if.end12_crit_edge ]
  %30 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %collect_md, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool14.not = icmp eq i8 %31, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %if.end12.if.else_crit_edge

if.end12.if.else_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true15:                                  ; preds = %if.end12
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %cfg, i32 0, i32 3
  %32 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mode.i, align 1
  %34 = and i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i92 = icmp eq i8 %34, 0
  br i1 %tobool.not.i92, label %land.lhs.true15.if.end22_crit_edge, label %land.lhs.true15.if.else_crit_edge

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true15.if.end22_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true15.if.else_crit_edge, %if.end12.if.else_crit_edge
  br label %if.end22

if.end22:                                         ; preds = %if.else, %land.lhs.true15.if.end22_crit_edge
  %.sink108 = phi i32 [ -40, %if.else ], [ -20, %land.lhs.true15.if.end22_crit_edge ]
  %encap_len.0 = phi i16 [ 84, %if.else ], [ 64, %land.lhs.true15.if.end22_crit_edge ]
  %max_mtu20 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %35 = ptrtoint ptr %max_mtu20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_mtu20, align 4
  %sub21 = add i32 %36, %.sink108
  store i32 %sub21, ptr %max_mtu20, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %37 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %encap_len.0, ptr %needed_headroom, align 8
  %38 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %collect_md, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool26.not = icmp eq i8 %39, 0
  br i1 %tobool26.not, label %if.else39, label %if.then27

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tun_on_same_port.2107)
  %tobool28.not = icmp eq i8 %tun_on_same_port.2107, 0
  br i1 %tobool28.not, label %if.then27.if.end51_crit_edge, label %do.body30

if.then27.if.end51_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

do.body30:                                        ; preds = %if.then27
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_configure.__msg.43) #18
  %tobool32.not = icmp eq ptr %extack, null
  br i1 %tobool32.not, label %do.body30.cleanup_crit_edge, label %if.then33

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then33:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #20
  %40 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @geneve_configure.__msg.43, ptr %extack, align 4
  br label %cleanup

if.else39:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tun_collect_md.2106)
  %tobool40.not = icmp eq i8 %tun_collect_md.2106, 0
  br i1 %tobool40.not, label %if.else39.if.end51_crit_edge, label %do.body42

if.else39.if.end51_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

do.body42:                                        ; preds = %if.else39
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_configure.__msg.44) #18
  %tobool44.not = icmp eq ptr %extack, null
  br i1 %tobool44.not, label %do.body42.cleanup_crit_edge, label %if.then45

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then45:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @geneve_configure.__msg.44, ptr %extack, align 4
  br label %cleanup

if.end51:                                         ; preds = %if.else39.if.end51_crit_edge, %if.then27.if.end51_crit_edge
  %cfg52 = getelementptr i8, ptr %dev, i32 2360
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i = getelementptr i8, ptr %dev, i32 2420
  %43 = ptrtoint ptr %reset_ts.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %reset_ts.i, align 4
  %44 = call ptr @memcpy(ptr %cfg52, ptr %cfg, i32 80)
  %call55 = tail call i32 @register_netdevice(ptr noundef %dev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  %next = getelementptr i8, ptr %dev, i32 2344
  %45 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next, ptr noundef %call, ptr noundef %46) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %next, ptr %prev1.i.i, align 4
  %48 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %next, align 4
  %prev3.i.i = getelementptr i8, ptr %dev, i32 2348
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %next, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end58.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.then45, %do.body42.cleanup_crit_edge, %if.then33, %do.body30.cleanup_crit_edge, %geneve_find_dev.exit.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -22, %do.body.cleanup_crit_edge ], [ -16, %geneve_find_dev.exit.cleanup_crit_edge ], [ -1, %if.then33 ], [ -1, %do.body30.cleanup_crit_edge ], [ -1, %if.then45 ], [ -1, %do.body42.cleanup_crit_edge ], [ %call55, %if.end51.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @geneve_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %0 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %new_mtu)
  %cmp = icmp ult i32 %1, %new_mtu
  br i1 %cmp, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %2 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_mtu, align 8
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 %new_mtu)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %entry.if.end5_crit_edge
  %new_mtu.addr.0 = phi i32 [ %1, %entry.if.end5_crit_edge ], [ %4, %if.else ]
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %new_mtu.addr.0, ptr %mtu, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_configure_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @geneve_dellink(ptr noundef %dev, ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %next = getelementptr i8, ptr %dev, i32 2344
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %next) #18
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %next, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2348
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_init_module() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @geneve_net_ops) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @geneve_notifier_block) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out2_crit_edge

if.end.out2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out2

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @rtnl_link_register(ptr noundef nonnull @geneve_link_ops) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %out3

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

out3:                                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %call9 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @geneve_notifier_block) #18
  br label %out2

out2:                                             ; preds = %out3, %if.end.out2_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.out2_crit_edge ], [ %call5, %out3 ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @geneve_net_ops) #18
  br label %cleanup

cleanup:                                          ; preds = %out2, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %rc.0, %out2 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @geneve_cleanup_module() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @rtnl_link_unregister(ptr noundef nonnull @geneve_link_ops) #18
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @geneve_notifier_block) #18
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @geneve_net_ops) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @geneve_setup(ptr noundef %dev) #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #18
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @geneve_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %1 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @geneve_ethtool_ops, ptr %ethtool_ops, align 16
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %2 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %needs_free_netdev, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @geneve_type, ptr %type, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features, align 16
  %or7 = or i64 %5, 1126357078089
  store i64 %or7, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %6 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %hw_features, align 8
  %or12 = or i64 %7, 1126357073993
  store i64 %or12, ptr %hw_features, align 8
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %8 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 68, ptr %min_mtu, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %10 to i32
  %sub = sub nsw i32 65519, %conv
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %11 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %max_mtu, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %12 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %priv_flags.i, align 16
  %and = and i64 %13, -690209
  %or14 = or i64 %and, 557056
  store i64 %or14, ptr %priv_flags.i, align 16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #18
  %14 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #18
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr.i, align 1
  %17 = and i8 %16, -4
  %18 = or i8 %17, 2
  store i8 %18, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #18
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %19 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_validate(ptr nocapture noundef readonly %tb, ptr noundef readonly %data, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not = icmp eq i16 %3, 10
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_validate.__msg) #18
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.return_crit_edge, label %if.then4

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @geneve_validate.__msg, ptr %extack, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %7 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %8 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %policy, align 4
  br label %return

if.end6:                                          ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end6.do.body11_crit_edge

if.end6.do.body11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body11

is_valid_ether_addr.exit:                         ; preds = %if.end6
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %or.i.i = or i32 %10, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.body11_crit_edge, label %is_valid_ether_addr.exit.if.end22_crit_edge

is_valid_ether_addr.exit.if.end22_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

is_valid_ether_addr.exit.do.body11_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body11

do.body11:                                        ; preds = %is_valid_ether_addr.exit.do.body11_crit_edge, %if.end6.do.body11_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_validate.__msg.30) #18
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.body11.return_crit_edge, label %if.then14

do.body11.return_crit_edge:                       ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then14:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @geneve_validate.__msg.30, ptr %extack, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %bad_attr17 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %17 = ptrtoint ptr %bad_attr17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %bad_attr17, align 4
  %policy18 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %18 = ptrtoint ptr %policy18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %policy18, align 4
  br label %return

if.end22:                                         ; preds = %is_valid_ether_addr.exit.if.end22_crit_edge, %entry.if.end22_crit_edge
  %tobool23.not = icmp eq ptr %data, null
  br i1 %tobool23.not, label %do.body25, label %if.end32

do.body25:                                        ; preds = %if.end22
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_validate.__msg.31) #18
  %tobool27.not = icmp eq ptr %extack, null
  br i1 %tobool27.not, label %do.body25.return_crit_edge, label %if.then28

do.body25.return_crit_edge:                       ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @geneve_validate.__msg.31, ptr %extack, align 4
  br label %return

if.end32:                                         ; preds = %if.end22
  %arrayidx33 = getelementptr ptr, ptr %data, i32 1
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx33, align 4
  %tobool34.not = icmp eq ptr %21, null
  br i1 %tobool34.not, label %if.end32.if.end51_crit_edge, label %if.then35

if.end32.if.end51_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

if.then35:                                        ; preds = %if.end32
  %add.ptr.i.i110 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i110 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %23)
  %cmp38 = icmp ugt i32 %23, 16777215
  br i1 %cmp38, label %do.body40, label %if.then35.if.end51_crit_edge

if.then35.if.end51_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

do.body40:                                        ; preds = %if.then35
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_validate.__msg.32) #18
  %tobool42.not = icmp eq ptr %extack, null
  br i1 %tobool42.not, label %do.body40.return_crit_edge, label %if.then43

do.body40.return_crit_edge:                       ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then43:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @geneve_validate.__msg.32, ptr %extack, align 4
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx33, align 4
  %bad_attr46 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %27 = ptrtoint ptr %bad_attr46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %bad_attr46, align 4
  %policy47 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %28 = ptrtoint ptr %policy47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %policy47, align 4
  br label %return

if.end51:                                         ; preds = %if.then35.if.end51_crit_edge, %if.end32.if.end51_crit_edge
  %arrayidx52 = getelementptr ptr, ptr %data, i32 13
  %29 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx52, align 4
  %tobool53.not = icmp eq ptr %30, null
  br i1 %tobool53.not, label %if.end51.return_crit_edge, label %if.then54

if.end51.return_crit_edge:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then54:                                        ; preds = %if.end51
  %add.ptr.i.i111 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i111 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr.i.i111, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp59 = icmp ugt i8 %32, 2
  br i1 %cmp59, label %do.body62, label %if.then54.return_crit_edge

if.then54.return_crit_edge:                       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

do.body62:                                        ; preds = %if.then54
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_validate.__msg.33) #18
  %tobool64.not = icmp eq ptr %extack, null
  br i1 %tobool64.not, label %do.body62.return_crit_edge, label %if.then65

do.body62.return_crit_edge:                       ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then65:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #20
  %33 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @geneve_validate.__msg.33, ptr %extack, align 4
  %34 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx52, align 4
  %bad_attr68 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %36 = ptrtoint ptr %bad_attr68 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %bad_attr68, align 4
  %policy69 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %37 = ptrtoint ptr %policy69 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %policy69, align 4
  br label %return

return:                                           ; preds = %if.then65, %do.body62.return_crit_edge, %if.then54.return_crit_edge, %if.end51.return_crit_edge, %if.then43, %do.body40.return_crit_edge, %if.then28, %do.body25.return_crit_edge, %if.then14, %do.body11.return_crit_edge, %if.then4, %do.body.return_crit_edge
  %retval.3 = phi i32 [ -22, %if.then4 ], [ -22, %do.body.return_crit_edge ], [ -99, %if.then14 ], [ -99, %do.body11.return_crit_edge ], [ -22, %if.then28 ], [ -22, %do.body25.return_crit_edge ], [ 0, %if.then54.return_crit_edge ], [ 0, %if.end51.return_crit_edge ], [ -34, %do.body40.return_crit_edge ], [ -34, %if.then43 ], [ -22, %do.body62.return_crit_edge ], [ -22, %if.then65 ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_newlink(ptr noundef %net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr nocapture noundef readonly %data, ptr noundef %extack) #0 align 64 {
entry:
  %cfg = alloca %struct.geneve_config, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cfg) #18
  %tp_dst.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 7
  %0 = call ptr @memset(ptr %cfg, i32 0, i32 80)
  %1 = ptrtoint ptr %tp_dst.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 6081, ptr %tp_dst.i, align 2
  %call = call fastcc i32 @geneve_nl2info(ptr noundef %data, ptr noundef %extack, ptr noundef nonnull %cfg, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @geneve_configure(ptr noundef %net, ptr noundef %dev, ptr noundef %extack, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @geneve_link_config(ptr noundef %dev, ptr noundef nonnull %cfg, ptr noundef %tb)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cfg) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_changelink(ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr nocapture noundef readonly %data, ptr noundef %extack) #0 align 64 {
entry:
  %cfg = alloca %struct.geneve_config, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cfg) #18
  %cfg1 = getelementptr i8, ptr %dev, i32 2360
  %collect_md = getelementptr i8, ptr %dev, i32 2432
  %0 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %collect_md, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memcpy(ptr %cfg, ptr %cfg1, i32 80)
  %call3 = call fastcc i32 @geneve_nl2info(ptr noundef %data, ptr noundef %extack, ptr noundef nonnull %cfg, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mode.i.i = getelementptr i8, ptr %dev, i32 2425
  %3 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mode.i.i, align 1
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i, label %geneve_dst_addr_equal.exit

if.then.i:                                        ; preds = %if.end6
  %dst.i = getelementptr i8, ptr %dev, i32 2372
  %6 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst.i, align 4
  %dst4.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %dst4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.i = icmp eq i32 %7, %9
  br i1 %cmp5.i, label %if.then.i.if.end13_crit_edge, label %if.then.i.if.then10_crit_edge

if.then.i.if.then10_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10

if.then.i.if.end13_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

geneve_dst_addr_equal.exit:                       ; preds = %if.end6
  %dst9.i = getelementptr i8, ptr %dev, i32 2384
  %dst12.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %dst9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dst9.i, align 4
  %12 = ptrtoint ptr %dst12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dst12.i, align 8
  %xor.i.i = xor i32 %13, %11
  %arrayidx4.i.i = getelementptr i8, ptr %dev, i32 2388
  %14 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %17, %15
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr i8, ptr %dev, i32 2392
  %18 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11.i.i, align 8
  %xor12.i.i = xor i32 %21, %19
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr i8, ptr %dev, i32 2396
  %22 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %25, %23
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %geneve_dst_addr_equal.exit.if.end13_crit_edge, label %geneve_dst_addr_equal.exit.if.then10_crit_edge

geneve_dst_addr_equal.exit.if.then10_crit_edge:   ; preds = %geneve_dst_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10

geneve_dst_addr_equal.exit.if.end13_crit_edge:    ; preds = %geneve_dst_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then10:                                        ; preds = %geneve_dst_addr_equal.exit.if.then10_crit_edge, %if.then.i.if.then10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %reset_ts.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %cfg, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %reset_ts.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %reset_ts.i, align 4
  call fastcc void @geneve_link_config(ptr noundef %dev, ptr noundef nonnull %cfg, ptr noundef %tb)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %geneve_dst_addr_equal.exit.if.end13_crit_edge, %if.then.i.if.end13_crit_edge
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #18
  br i1 %call.i, label %if.end13.do.end.i_crit_edge, label %land.lhs.true.i

if.end13.do.end.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end13
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b312.i = load i1, ptr @geneve_quiesce.__warned, align 1
  br i1 %.b312.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %if.then.i27

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

if.then.i27:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_quiesce.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1658, ptr noundef nonnull @.str.18) #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i27, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end13.do.end.i_crit_edge
  %sock4.i = getelementptr i8, ptr %dev, i32 2336
  %28 = ptrtoint ptr %sock4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sock4.i, align 8
  store volatile ptr null, ptr %sock4.i, align 8
  %tobool40.not.i = icmp eq ptr %29, null
  br i1 %tobool40.not.i, label %do.end.i.do.body127.i_crit_edge, label %do.body93.i

do.end.i.do.body127.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body127.i

do.body93.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %sock.i = getelementptr inbounds %struct.geneve_sock, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk.i, align 16
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 72
  %34 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr null, ptr %sk_user_data.i, align 4
  br label %do.body127.i

do.body127.i:                                     ; preds = %do.body93.i, %do.end.i.do.body127.i_crit_edge
  %call128.i = call zeroext i1 @lockdep_rtnl_is_held() #18
  br i1 %call128.i, label %do.body127.i.do.end137.i_crit_edge, label %land.lhs.true129.i

do.body127.i.do.end137.i_crit_edge:               ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end137.i

land.lhs.true129.i:                               ; preds = %do.body127.i
  %call130.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i)
  %tobool131.not.i = icmp eq i32 %call130.i, 0
  br i1 %tobool131.not.i, label %land.lhs.true129.i.do.end137.i_crit_edge, label %land.lhs.true132.i

land.lhs.true129.i.do.end137.i_crit_edge:         ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end137.i

land.lhs.true132.i:                               ; preds = %land.lhs.true129.i
  %.b310311.i = load i1, ptr @geneve_quiesce.__warned.40, align 1
  br i1 %.b310311.i, label %land.lhs.true132.i.do.end137.i_crit_edge, label %if.then134.i

land.lhs.true132.i.do.end137.i_crit_edge:         ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end137.i

if.then134.i:                                     ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_quiesce.__warned.40, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1663, ptr noundef nonnull @.str.18) #18
  br label %do.end137.i

do.end137.i:                                      ; preds = %if.then134.i, %land.lhs.true132.i.do.end137.i_crit_edge, %land.lhs.true129.i.do.end137.i_crit_edge, %do.body127.i.do.end137.i_crit_edge
  %sock6.i = getelementptr i8, ptr %dev, i32 2340
  %35 = ptrtoint ptr %sock6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sock6.i, align 4
  store volatile ptr null, ptr %sock6.i, align 4
  %tobool179.not.i = icmp eq ptr %36, null
  br i1 %tobool179.not.i, label %do.end137.i.geneve_quiesce.exit_crit_edge, label %do.body246.i

do.end137.i.geneve_quiesce.exit_crit_edge:        ; preds = %do.end137.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve_quiesce.exit

do.body246.i:                                     ; preds = %do.end137.i
  call void @__sanitizer_cov_trace_pc() #20
  %sock247.i = getelementptr inbounds %struct.geneve_sock, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %sock247.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sock247.i, align 4
  %sk248.i = getelementptr inbounds %struct.socket, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %sk248.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk248.i, align 16
  %sk_user_data249.i = getelementptr inbounds %struct.sock, ptr %40, i32 0, i32 72
  %41 = ptrtoint ptr %sk_user_data249.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr null, ptr %sk_user_data249.i, align 4
  br label %geneve_quiesce.exit

geneve_quiesce.exit:                              ; preds = %do.body246.i, %do.end137.i.geneve_quiesce.exit_crit_edge
  call void @synchronize_net() #18
  %42 = call ptr @memcpy(ptr %cfg1, ptr %cfg, i32 80)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !178
  %43 = ptrtoint ptr %sock4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %29, ptr %sock4.i, align 8
  br i1 %tobool40.not.i, label %geneve_quiesce.exit.do.body117.i_crit_edge, label %if.then32.i

geneve_quiesce.exit.do.body117.i_crit_edge:       ; preds = %geneve_quiesce.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body117.i

if.then32.i:                                      ; preds = %geneve_quiesce.exit
  %44 = ptrtoint ptr %29 to i32
  %and.i = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool33.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool33.not.i, label %if.then32.i.if.end66.i_crit_edge, label %land.rhs.i

if.then32.i.if.end66.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66.i

land.rhs.i:                                       ; preds = %if.then32.i
  %.b284.i = load i1, ptr @geneve_unquiesce.__already_done, align 1
  br i1 %.b284.i, label %land.rhs.i.if.end66.i_crit_edge, label %if.then41.i, !prof !179

land.rhs.i.if.end66.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66.i

if.then41.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_unquiesce.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1679, i32 noundef 9, ptr noundef null) #18
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then41.i, %land.rhs.i.if.end66.i_crit_edge, %if.then32.i.if.end66.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !180
  %sock102.i = getelementptr inbounds %struct.geneve_sock, ptr %29, i32 0, i32 2
  %45 = ptrtoint ptr %sock102.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sock102.i, align 4
  %sk103.i = getelementptr inbounds %struct.socket, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %sk103.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sk103.i, align 16
  %sk_user_data104.i = getelementptr inbounds %struct.sock, ptr %48, i32 0, i32 72
  %49 = ptrtoint ptr %sk_user_data104.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %29, ptr %sk_user_data104.i, align 4
  br label %do.body117.i

do.body117.i:                                     ; preds = %if.end66.i, %geneve_quiesce.exit.do.body117.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !181
  %50 = ptrtoint ptr %sock6.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %36, ptr %sock6.i, align 4
  br i1 %tobool179.not.i, label %do.body117.i.geneve_unquiesce.exit_crit_edge, label %if.then158.i

do.body117.i.geneve_unquiesce.exit_crit_edge:     ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve_unquiesce.exit

if.then158.i:                                     ; preds = %do.body117.i
  %51 = ptrtoint ptr %36 to i32
  %and161.i = and i32 %51, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i)
  %tobool162.not.i = icmp eq i32 %and161.i, 0
  br i1 %tobool162.not.i, label %if.then158.i.if.end207.i_crit_edge, label %land.rhs169.i

if.then158.i.if.end207.i_crit_edge:               ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end207.i

land.rhs169.i:                                    ; preds = %if.then158.i
  %.b282283.i = load i1, ptr @geneve_unquiesce.__already_done.42, align 1
  br i1 %.b282283.i, label %land.rhs169.i.if.end207.i_crit_edge, label %if.then180.i, !prof !179

land.rhs169.i.if.end207.i_crit_edge:              ; preds = %land.rhs169.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end207.i

if.then180.i:                                     ; preds = %land.rhs169.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_unquiesce.__already_done.42, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1683, i32 noundef 9, ptr noundef null) #18
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.then180.i, %land.rhs169.i.if.end207.i_crit_edge, %if.then158.i.if.end207.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !182
  %sock246.i = getelementptr inbounds %struct.geneve_sock, ptr %36, i32 0, i32 2
  %52 = ptrtoint ptr %sock246.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sock246.i, align 4
  %sk247.i = getelementptr inbounds %struct.socket, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %sk247.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sk247.i, align 16
  %sk_user_data248.i = getelementptr inbounds %struct.sock, ptr %55, i32 0, i32 72
  %56 = ptrtoint ptr %sk_user_data248.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %36, ptr %sk_user_data248.i, align 4
  br label %geneve_unquiesce.exit

geneve_unquiesce.exit:                            ; preds = %if.end207.i, %do.body117.i.geneve_unquiesce.exit_crit_edge
  call void @synchronize_net() #18
  br label %cleanup

cleanup:                                          ; preds = %geneve_unquiesce.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %geneve_unquiesce.exit ], [ -95, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cfg) #18
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @geneve_get_size(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 104
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_fill_info(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %tmp.i152 = alloca i8, align 1
  %tmp.i150 = alloca i8, align 1
  %tmp.i147 = alloca i16, align 2
  %tmp.i145 = alloca i8, align 1
  %tmp.i143 = alloca i32, align 4
  %tmp.i141 = alloca i8, align 1
  %tmp.i139 = alloca i8, align 1
  %tmp.i137 = alloca i8, align 1
  %tmp.i134 = alloca i8, align 1
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr i8, ptr %dev, i32 2360
  %ttl_inherit3 = getelementptr i8, ptr %dev, i32 2434
  %0 = ptrtoint ptr %ttl_inherit3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ttl_inherit3, align 2, !range !177
  %collect_md = getelementptr i8, ptr %dev, i32 2432
  %2 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %collect_md, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cfg, align 8
  %6 = trunc i64 %5 to i32
  %or12 = and i32 %6, 16777215
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #18
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or12, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  br i1 %tobool5.not, label %land.lhs.true, label %if.end.if.end56_crit_edge

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end
  %mode.i = getelementptr i8, ptr %dev, i32 2425
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode.i, align 1
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then19, label %if.then35.critedge

if.then19:                                        ; preds = %land.lhs.true
  %dst = getelementptr i8, ptr %dev, i32 2372
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #18
  %13 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool22.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool22.not, label %if.end24, label %if.then19.nla_put_failure_crit_edge

if.then19.nla_put_failure_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

if.end24:                                         ; preds = %if.then19
  %tun_flags = getelementptr i8, ptr %dev, i32 2400
  %14 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tun_flags, align 8
  %16 = trunc i16 %15 to i8
  %17 = and i8 %16, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i134) #18
  %18 = ptrtoint ptr %tmp.i134 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %tmp.i134, align 1
  %call.i135 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i134) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i134) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool31.not = icmp eq i32 %call.i135, 0
  br i1 %tobool31.not, label %if.end24.if.end56_crit_edge, label %if.end24.nla_put_failure_crit_edge

if.end24.nla_put_failure_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

if.end24.if.end56_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end56

if.then35.critedge:                               ; preds = %land.lhs.true
  %dst38 = getelementptr i8, ptr %dev, i32 2384
  %call.i136 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 16, ptr noundef %dst38) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool40.not = icmp eq i32 %call.i136, 0
  br i1 %tobool40.not, label %if.end42, label %if.then35.critedge.nla_put_failure_crit_edge

if.then35.critedge.nla_put_failure_crit_edge:     ; preds = %if.then35.critedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

if.end42:                                         ; preds = %if.then35.critedge
  %tun_flags44 = getelementptr i8, ptr %dev, i32 2400
  %19 = ptrtoint ptr %tun_flags44 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tun_flags44, align 8
  %21 = trunc i16 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i137) #18
  %24 = ptrtoint ptr %tmp.i137 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %tmp.i137, align 1
  %call.i138 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %tmp.i137) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i137) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool52.not = icmp eq i32 %call.i138, 0
  br i1 %tobool52.not, label %if.end42.if.end56_crit_edge, label %if.end42.nla_put_failure_crit_edge

if.end42.nla_put_failure_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

if.end42.if.end56_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end56

if.end56:                                         ; preds = %if.end42.if.end56_crit_edge, %if.end24.if.end56_crit_edge, %if.end.if.end56_crit_edge
  %ttl = getelementptr i8, ptr %dev, i32 2403
  %25 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ttl, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i139) #18
  %27 = ptrtoint ptr %tmp.i139 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %tmp.i139, align 1
  %call.i140 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i139) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i139) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool59.not = icmp eq i32 %call.i140, 0
  br i1 %tobool59.not, label %lor.lhs.false, label %if.end56.nla_put_failure_crit_edge

if.end56.nla_put_failure_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.end56
  %tos = getelementptr i8, ptr %dev, i32 2402
  %28 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tos, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i141) #18
  %30 = ptrtoint ptr %tmp.i141 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %tmp.i141, align 1
  %call.i142 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i141) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i141) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool62.not = icmp eq i32 %call.i142, 0
  br i1 %tobool62.not, label %lor.lhs.false63, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

lor.lhs.false63:                                  ; preds = %lor.lhs.false
  %label = getelementptr i8, ptr %dev, i32 2404
  %31 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %label, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i143) #18
  %33 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tmp.i143, align 4
  %call.i144 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i143) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i143) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool66.not = icmp eq i32 %call.i144, 0
  br i1 %tobool66.not, label %if.end68, label %lor.lhs.false63.nla_put_failure_crit_edge

lor.lhs.false63.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

if.end68:                                         ; preds = %lor.lhs.false63
  %df = getelementptr i8, ptr %dev, i32 2436
  %34 = ptrtoint ptr %df to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %df, align 4
  %conv70 = trunc i32 %35 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i145) #18
  %36 = ptrtoint ptr %tmp.i145 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv70, ptr %tmp.i145, align 1
  %call.i146 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 1, ptr noundef nonnull %tmp.i145) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i145) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool72.not = icmp eq i32 %call.i146, 0
  br i1 %tobool72.not, label %if.end74, label %if.end68.nla_put_failure_crit_edge

if.end68.nla_put_failure_crit_edge:               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

if.end74:                                         ; preds = %if.end68
  %tp_dst = getelementptr i8, ptr %dev, i32 2410
  %37 = ptrtoint ptr %tp_dst to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tp_dst, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i147) #18
  %39 = ptrtoint ptr %tmp.i147 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %tmp.i147, align 2
  %call.i148 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i147) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i147) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool77.not = icmp eq i32 %call.i148, 0
  br i1 %tobool77.not, label %if.end79, label %if.end74.nla_put_failure_crit_edge

if.end74.nla_put_failure_crit_edge:               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

if.end79:                                         ; preds = %if.end74
  br i1 %tobool5.not, label %if.end79.if.end86_crit_edge, label %land.lhs.true82

if.end79.if.end86_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end86

land.lhs.true82:                                  ; preds = %if.end79
  %call.i149 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 0, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool84.not = icmp eq i32 %call.i149, 0
  br i1 %tobool84.not, label %land.lhs.true82.if.end86_crit_edge, label %land.lhs.true82.nla_put_failure_crit_edge

land.lhs.true82.nla_put_failure_crit_edge:        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

land.lhs.true82.if.end86_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end86

if.end86:                                         ; preds = %land.lhs.true82.if.end86_crit_edge, %if.end79.if.end86_crit_edge
  %use_udp6_rx_checksums = getelementptr i8, ptr %dev, i32 2433
  %40 = ptrtoint ptr %use_udp6_rx_checksums to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %use_udp6_rx_checksums, align 1, !range !177
  %42 = xor i8 %41, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i150) #18
  %43 = ptrtoint ptr %tmp.i150 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %tmp.i150, align 1
  %call.i151 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %tmp.i150) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i150) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool93.not = icmp eq i32 %call.i151, 0
  br i1 %tobool93.not, label %if.end95, label %if.end86.nla_put_failure_crit_edge

if.end86.nla_put_failure_crit_edge:               ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

if.end95:                                         ; preds = %if.end86
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i152) #18
  %44 = ptrtoint ptr %tmp.i152 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %1, ptr %tmp.i152, align 1
  %call.i153 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %tmp.i152) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i152) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool99.not = icmp eq i32 %call.i153, 0
  br i1 %tobool99.not, label %if.end95.cleanup_crit_edge, label %if.end95.nla_put_failure_crit_edge

if.end95.nla_put_failure_crit_edge:               ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #20
  br label %nla_put_failure

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end95.nla_put_failure_crit_edge, %if.end86.nla_put_failure_crit_edge, %land.lhs.true82.nla_put_failure_crit_edge, %if.end74.nla_put_failure_crit_edge, %if.end68.nla_put_failure_crit_edge, %lor.lhs.false63.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %if.end56.nla_put_failure_crit_edge, %if.end42.nla_put_failure_crit_edge, %if.then35.critedge.nla_put_failure_crit_edge, %if.end24.nla_put_failure_crit_edge, %if.then19.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end95.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %if.end95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #22
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call235 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call235, i32 %0)
  %cmp36 = icmp ult i32 %call235, %0
  br i1 %cmp36, label %for.body.lr.ph, label %for.cond.preheader.if.end10_crit_edge

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %call1 to i32
  br label %for.body

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 64
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call237 = phi i32 [ %call235, %for.body.lr.ph ], [ %call2, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call237
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %6, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %6, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @geneve_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %7 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %syncp, align 4
  %call2 = tail call i32 @cpumask_next(i32 noundef %call237, ptr noundef nonnull @__cpu_possible_mask) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.end10:                                         ; preds = %for.body.if.end10_crit_edge, %for.cond.preheader.if.end10_crit_edge
  %9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %9, align 64
  %gro_cells = getelementptr i8, ptr %dev, i32 2352
  %call11 = tail call i32 @gro_cells_init(ptr noundef %gro_cells, ptr noundef %dev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 64
  tail call void @free_percpu(ptr noundef %12) #18
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %dst_cache = getelementptr i8, ptr %dev, i32 2416
  %call15 = tail call i32 @dst_cache_init(ptr noundef %dst_cache, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 64
  tail call void @free_percpu(ptr noundef %14) #18
  tail call void @gro_cells_destroy(ptr noundef %gro_cells) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end14.cleanup_crit_edge, %if.then13, %if.end.thread
  %retval.0 = phi i32 [ %call11, %if.then13 ], [ %call15, %if.then17 ], [ 0, %if.end14.cleanup_crit_edge ], [ -12, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @geneve_uninit(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_cache = getelementptr i8, ptr %dev, i32 2416
  tail call void @dst_cache_destroy(ptr noundef %dst_cache) #18
  %gro_cells = getelementptr i8, ptr %dev, i32 2352
  tail call void @gro_cells_destroy(ptr noundef %gro_cells) #18
  %0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 64
  tail call void @free_percpu(ptr noundef %2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %collect_md = getelementptr i8, ptr %dev, i32 2432
  %0 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %collect_md, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  %mode = getelementptr i8, ptr %dev, i32 2425
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp ne i8 %4, 0
  %spec.select = select i1 %tobool2.not, i1 true, i1 %tobool
  %not.spec.select = xor i1 %spec.select, true
  %spec.select38 = select i1 %not.spec.select, i1 true, i1 %tobool
  br i1 %spec.select, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then:                                          ; preds = %entry
  %call13 = tail call fastcc i32 @geneve_sock_add(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 -97, i32 %call13)
  %cmp15.not = icmp eq i32 %call13, -97
  %spec.select36 = select i1 %cmp15.not, i1 %spec.select38, i1 false
  br i1 %spec.select36, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.if.then25_crit_edge

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then25

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.end18:                                         ; preds = %if.then
  br i1 %tobool, label %if.end18.if.end22_crit_edge, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.end22:                                         ; preds = %if.end18.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  %call21 = tail call fastcc i32 @geneve_sock_add(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp23 = icmp slt i32 %call21, 0
  br i1 %cmp23, label %if.end22.if.then25_crit_edge, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.end22.if.then25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then25

if.then25:                                        ; preds = %if.end22.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge
  %ret.142 = phi i32 [ %call21, %if.end22.if.then25_crit_edge ], [ %call13, %land.lhs.true.if.then25_crit_edge ]
  tail call fastcc void @geneve_sock_release(ptr noundef %add.ptr.i)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %ret.141 = phi i32 [ %ret.142, %if.then25 ], [ %call21, %if.end22.if.end26_crit_edge ], [ %call13, %if.end18.if.end26_crit_edge ]
  ret i32 %ret.141
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pprev.i.i = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

entry.hlist_del_init_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i7.i = icmp eq ptr %3, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %entry.hlist_del_init_rcu.exit_crit_edge
  %pprev.i.i4 = getelementptr i8, ptr %dev, i32 2320
  %7 = ptrtoint ptr %pprev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i4, align 4
  %tobool.not.i.not.i5 = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i5, label %hlist_del_init_rcu.exit.hlist_del_init_rcu.exit11_crit_edge, label %if.then.i7

hlist_del_init_rcu.exit.hlist_del_init_rcu.exit11_crit_edge: ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %hlist_del_init_rcu.exit11

if.then.i7:                                       ; preds = %hlist_del_init_rcu.exit
  %hlist6 = getelementptr i8, ptr %dev, i32 2316
  %9 = ptrtoint ptr %hlist6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hlist6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %8, align 4
  %tobool.not.i7.i6 = icmp eq ptr %10, null
  br i1 %tobool.not.i7.i6, label %if.then.i7.__hlist_del.exit.i10_crit_edge, label %do.body13.i.i9

if.then.i7.__hlist_del.exit.i10_crit_edge:        ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #20
  br label %__hlist_del.exit.i10

do.body13.i.i9:                                   ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #20
  %pprev14.i.i8 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %pprev14.i.i8, align 4
  br label %__hlist_del.exit.i10

__hlist_del.exit.i10:                             ; preds = %do.body13.i.i9, %if.then.i7.__hlist_del.exit.i10_crit_edge
  %13 = ptrtoint ptr %pprev.i.i4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %pprev.i.i4, align 4
  br label %hlist_del_init_rcu.exit11

hlist_del_init_rcu.exit11:                        ; preds = %__hlist_del.exit.i10, %hlist_del_init_rcu.exit.hlist_del_init_rcu.exit11_crit_edge
  tail call fastcc void @geneve_sock_release(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %fl4.i = alloca %struct.flowi4, align 8
  %fl6.i = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %collect_md = getelementptr i8, ptr %dev, i32 2432
  %0 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %collect_md, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc ptr @skb_tunnel_info(ptr noundef %skb)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.do.body8_crit_edge, label %lor.rhs, !prof !183

if.then.do.body8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body8

lor.rhs:                                          ; preds = %if.then
  %mode = getelementptr inbounds %struct.ip_tunnel_info, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %lor.rhs.do.body8_crit_edge, label %lor.rhs.if.end23_crit_edge, !prof !183

lor.rhs.if.end23_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

lor.rhs.do.body8_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body8

do.body8:                                         ; preds = %lor.rhs.do.body8_crit_edge, %if.then.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geneve_xmit.__UNIQUE_ID_ddebug605, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@geneve_xmit, %if.then17)) #18
          to label %do.end19 [label %if.then17], !srcloc !184

if.then17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @geneve_xmit.__UNIQUE_ID_ddebug605, ptr noundef %dev, ptr noundef nonnull @.str.21) #18
  br label %do.end19

do.end19:                                         ; preds = %if.then17, %do.body8
  tail call void @consume_skb(ptr noundef %skb) #18
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %cfg = getelementptr i8, ptr %dev, i32 2360
  br label %if.end23

if.end23:                                         ; preds = %if.else, %lor.rhs.if.end23_crit_edge
  %info.0 = phi ptr [ %call1, %lor.rhs.if.end23_crit_edge ], [ %cfg, %if.else ]
  %5 = tail call i32 @llvm.read_register.i32(metadata !167) #18
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !185
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end23.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end23.rcu_read_lock.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end23
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end23.rcu_read_lock.exit_crit_edge
  %mode24 = getelementptr inbounds %struct.ip_tunnel_info, ptr %info.0, i32 0, i32 3
  %9 = ptrtoint ptr %mode24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode24, align 1
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool27.not = icmp eq i8 %11, 0
  %net.i88 = getelementptr i8, ptr %dev, i32 2328
  %12 = ptrtoint ptr %net.i88 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net.i88, align 8
  %dev1.i89 = getelementptr i8, ptr %dev, i32 2332
  %14 = ptrtoint ptr %dev1.i89 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i89, align 4
  %nd_net.i.i90 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 127
  %16 = ptrtoint ptr %nd_net.i.i90 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nd_net.i.i90, align 4
  %cmp.i.i91 = icmp ne ptr %13, %17
  br i1 %tobool27.not, label %if.else30, label %if.then28

if.then28:                                        ; preds = %rcu_read_lock.exit
  %sock6.i = getelementptr i8, ptr %dev, i32 2340
  %18 = ptrtoint ptr %sock6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %sock6.i, align 4
  %call4.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i85, label %if.then28.do.end11.i_crit_edge

if.then28.do.end11.i_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end11.i

land.lhs.true.i85:                                ; preds = %if.then28
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i85.do.end11.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i85.do.end11.i_crit_edge:           ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end11.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i85
  %.b167.i = load i1, ptr @geneve6_xmit_skb.__warned, align 1
  br i1 %.b167.i, label %land.lhs.true8.i.do.end11.i_crit_edge, label %if.then.i86

land.lhs.true8.i.do.end11.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end11.i

if.then.i86:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve6_xmit_skb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 979, ptr noundef nonnull @.str.5) #18
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i86, %land.lhs.true8.i.do.end11.i_crit_edge, %land.lhs.true.i85.do.end11.i_crit_edge, %if.then28.do.end11.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i) #18
  %20 = call ptr @memset(ptr %fl6.i, i32 255, i32 88)
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %21 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %22)
  %switch.selectcmp.i.i = icmp eq i16 %22, 2048
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 20, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %22)
  %switch.selectcmp3.i.i = icmp eq i16 %22, -31011
  %switch.select4.i.i = select i1 %switch.selectcmp3.i.i, i32 40, i32 %switch.select.i.i
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i.i.i.i, align 8
  %network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %26 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %24, i32 %conv.i.i.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %add.i.i.i87 = add i32 %sub.ptr.sub.i.i.i.i, %switch.select4.i.i
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i.i.i.i, align 4
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %31 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %sub.i.i.i.i.i = sub i32 %30, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i87, i32 %sub.i.i.i.i.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %add.i.i.i87, %sub.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end11.i.if.end16.i_crit_edge, !prof !183

do.end11.i.if.end16.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i

if.end.i.i.i.i:                                   ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add.i.i.i87)
  %cmp3.i.i.i.i = icmp ult i32 %30, %add.i.i.i87
  br i1 %cmp3.i.i.i.i, label %if.end.i.i.i.i.geneve6_xmit_skb.exit_crit_edge, label %pskb_inet_may_pull.exit.i, !prof !183

if.end.i.i.i.i.geneve6_xmit_skb.exit_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve6_xmit_skb.exit

pskb_inet_may_pull.exit.i:                        ; preds = %if.end.i.i.i.i
  %sub.i.i.i.i = sub i32 %add.i.i.i87, %sub.i.i.i.i.i
  %call13.i.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i.i) #18
  %cmp14.i.i.i.not.i = icmp eq ptr %call13.i.i.i.i, null
  br i1 %cmp14.i.i.i.not.i, label %pskb_inet_may_pull.exit.i.geneve6_xmit_skb.exit_crit_edge, label %pskb_inet_may_pull.exit.i.if.end16.i_crit_edge

pskb_inet_may_pull.exit.i.if.end16.i_crit_edge:   ; preds = %pskb_inet_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i

pskb_inet_may_pull.exit.i.geneve6_xmit_skb.exit_crit_edge: ; preds = %pskb_inet_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve6_xmit_skb.exit

if.end16.i:                                       ; preds = %pskb_inet_may_pull.exit.i.if.end16.i_crit_edge, %do.end11.i.if.end16.i_crit_edge
  %l4_hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %33 = ptrtoint ptr %l4_hash.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i.i.i = load i16, ptr %l4_hash.i.i.i, align 8
  %34 = and i16 %bf.load.i.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %if.then.i.i.i, label %if.end16.i.skb_get_hash.exit.i.i_crit_edge

if.end16.i.skb_get_hash.exit.i.i_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_get_hash.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__skb_get_hash(ptr noundef %skb) #18
  br label %skb_get_hash.exit.i.i

skb_get_hash.exit.i.i:                            ; preds = %if.then.i.i.i, %if.end16.i.skb_get_hash.exit.i.i_crit_edge
  %hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %36 = ptrtoint ptr %hash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hash.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %if.then6.i.i, label %skb_get_hash.exit.i.i.udp_flow_src_port.exit.i_crit_edge, !prof !183

skb_get_hash.exit.i.i.udp_flow_src_port.exit.i_crit_edge: ; preds = %skb_get_hash.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %udp_flow_src_port.exit.i

if.then6.i.i:                                     ; preds = %skb_get_hash.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %38 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i.i, align 4
  %40 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %protocol.i.i, align 8
  %conv.i169.i = zext i16 %41 to i32
  %call7.i.i = tail call fastcc i32 @jhash(ptr noundef %39, i32 noundef %conv.i169.i) #18
  br label %udp_flow_src_port.exit.i

udp_flow_src_port.exit.i:                         ; preds = %if.then6.i.i, %skb_get_hash.exit.i.i.udp_flow_src_port.exit.i_crit_edge
  %hash.0.i.i = phi i32 [ %call7.i.i, %if.then6.i.i ], [ %37, %skb_get_hash.exit.i.i.udp_flow_src_port.exit.i_crit_edge ]
  %shl.i.i = shl i32 %hash.0.i.i, 16
  %xor.i.i = xor i32 %shl.i.i, %hash.0.i.i
  %conv11.i.i = zext i32 %xor.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv11.i.i, 65534
  %shr.i.i = lshr i64 %mul.i.i, 32
  %42 = trunc i64 %shr.i.i to i16
  %conv14.i.i = add nuw i16 %42, 1
  %tp_dst.i = getelementptr i8, ptr %dev, i32 2410
  %43 = ptrtoint ptr %tp_dst.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %tp_dst.i, align 2
  %call21.i = call fastcc ptr @geneve_get_v6_dst(ptr noundef %skb, ptr noundef %dev, ptr noundef %19, ptr noundef nonnull %fl6.i, ptr noundef %info.0, i16 noundef zeroext %44, i16 noundef zeroext %conv14.i.i) #18
  %cmp.i170.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %udp_flow_src_port.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %45 = ptrtoint ptr %call21.i to i32
  br label %geneve6_xmit_skb.exit

if.end25.i:                                       ; preds = %udp_flow_src_port.exit.i
  %options_len.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %info.0, i32 0, i32 2
  %46 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %options_len.i, align 8
  %conv.i = zext i8 %47 to i32
  %add.i = add nuw nsw i32 %conv.i, 70
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %48 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %priv_flags.i.i.i, align 16
  %50 = and i64 %49, 1536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %51 = icmp ne i64 %50, 0
  %call27.i = call i32 @skb_tunnel_check_pmtu(ptr noundef %skb, ptr noundef %call21.i, i32 noundef %add.i, i1 noundef zeroext %51) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp.i = icmp slt i32 %call27.i, 0
  br i1 %cmp.i, label %if.then29.i, label %if.else.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @dst_release(ptr noundef %call21.i) #18
  br label %geneve6_xmit_skb.exit

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool30.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool30.not.i, label %if.end57.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.else.i
  %call33.i = call fastcc ptr @skb_tunnel_info(ptr noundef %skb) #18
  %tobool34.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool34.not.i, label %if.then31.i.if.end48.i_crit_edge, label %if.then35.i

if.then31.i.if.end48.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48.i

if.then35.i:                                      ; preds = %if.then31.i
  %call36.i = call fastcc ptr @skb_tunnel_info_unclone(ptr noundef %skb) #18
  %tobool37.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool37.not.i, label %if.then42.i, label %if.end43.i, !prof !183

if.then42.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @dst_release(ptr noundef %call21.i) #18
  br label %geneve6_xmit_skb.exit

if.end43.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #20
  %u.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call36.i, i32 0, i32 1
  %dst45.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call36.i, i32 0, i32 1, i32 0, i32 1
  %saddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2
  %52 = call ptr @memcpy(ptr %dst45.i, ptr %saddr.i, i32 16)
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 1
  %53 = call ptr @memcpy(ptr %u.i, ptr %daddr.i, i32 16)
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end43.i, %if.then31.i.if.end48.i_crit_edge
  %54 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i.i.i.i.i, align 4
  %56 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %sub.i.i.i = sub i32 %55, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 14
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end48.i.if.end51.i_crit_edge, !prof !183

if.end48.i.if.end51.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51.i

if.end.i.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %55)
  %cmp3.i.i = icmp ult i32 %55, 14
  br i1 %cmp3.i.i, label %if.end.i.i.if.then50.i_crit_edge, label %pskb_may_pull.exit.i, !prof !183

if.end.i.i.if.then50.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then50.i

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 14, %sub.i.i.i
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #18
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.if.then50.i_crit_edge, label %pskb_may_pull.exit.i.if.end51.i_crit_edge

pskb_may_pull.exit.i.if.end51.i_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51.i

pskb_may_pull.exit.i.if.then50.i_crit_edge:       ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then50.i

if.then50.i:                                      ; preds = %pskb_may_pull.exit.i.if.then50.i_crit_edge, %if.end.i.i.if.then50.i_crit_edge
  call void @dst_release(ptr noundef %call21.i) #18
  br label %geneve6_xmit_skb.exit

if.end51.i:                                       ; preds = %pskb_may_pull.exit.i.if.end51.i_crit_edge, %if.end48.i.if.end51.i_crit_edge
  %58 = ptrtoint ptr %dev1.i89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1.i89, align 4
  %call53.i = call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %59) #18
  %60 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %call53.i, ptr %protocol.i.i, align 8
  %call54.i = call i32 @netif_rx(ptr noundef %skb) #18
  call void @dst_release(ptr noundef %call21.i) #18
  br label %geneve6_xmit_skb.exit

if.end57.i:                                       ; preds = %if.else.i
  %61 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %collect_md, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool59.not.i = icmp eq i8 %62, 0
  br i1 %tobool59.not.i, label %if.else64.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.end57.i
  %tos.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %info.0, i32 0, i32 3
  %63 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tos.i, align 2
  %65 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i.i.i.i, align 8
  %67 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i = zext i16 %68 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %66, i32 %conv.i.i.i
  %69 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %protocol.i.i, align 8
  %71 = zext i16 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i16 %70, label %if.then60.i.ip_tunnel_ecn_encap.exit.i_crit_edge [
    i16 2048, label %if.then.i.i171.i
    i16 -31011, label %if.then6.i.i.i
  ]

if.then60.i.ip_tunnel_ecn_encap.exit.i_crit_edge: ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ip_tunnel_ecn_encap.exit.i

if.then.i.i171.i:                                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #20
  %tos.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %tos.i.i.i, align 1
  br label %ip_tunnel_ecn_encap.exit.i

if.then6.i.i.i:                                   ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #20
  %74 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i.i.i, align 2
  %76 = lshr i16 %75, 4
  %conv1.i.i.i.i = trunc i16 %76 to i8
  br label %ip_tunnel_ecn_encap.exit.i

ip_tunnel_ecn_encap.exit.i:                       ; preds = %if.then6.i.i.i, %if.then.i.i171.i, %if.then60.i.ip_tunnel_ecn_encap.exit.i_crit_edge
  %retval.0.i.i.i = phi i8 [ %73, %if.then.i.i171.i ], [ %conv1.i.i.i.i, %if.then6.i.i.i ], [ 0, %if.then60.i.ip_tunnel_ecn_encap.exit.i_crit_edge ]
  %77 = and i8 %retval.0.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %77)
  %cmp.i.not.i.i.i = icmp eq i8 %77, 3
  %spec.select.i.i.i = select i1 %cmp.i.not.i.i.i, i8 2, i8 %77
  %78 = and i8 %64, -4
  %or.i.i.i = or i8 %spec.select.i.i.i, %78
  %ttl63.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %info.0, i32 0, i32 4
  %79 = ptrtoint ptr %ttl63.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ttl63.i, align 1
  br label %if.end80.i

if.else64.i:                                      ; preds = %if.end57.i
  %flowlabel.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 3
  %81 = ptrtoint ptr %flowlabel.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flowlabel.i, align 8
  %and.i.i = lshr i32 %82, 20
  %conv.i172.i = trunc i32 %and.i.i to i8
  %83 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %head.i.i.i.i.i, align 8
  %85 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i175.i = zext i16 %86 to i32
  %add.ptr.i.i176.i = getelementptr i8, ptr %84, i32 %conv.i.i175.i
  %87 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %protocol.i.i, align 8
  %89 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %88, label %if.else64.i.ip_tunnel_ecn_encap.exit186.i_crit_edge [
    i16 2048, label %if.then.i.i179.i
    i16 -31011, label %if.then6.i.i181.i
  ]

if.else64.i.ip_tunnel_ecn_encap.exit186.i_crit_edge: ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ip_tunnel_ecn_encap.exit186.i

if.then.i.i179.i:                                 ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #20
  %tos.i.i178.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i176.i, i32 0, i32 1
  %90 = ptrtoint ptr %tos.i.i178.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %tos.i.i178.i, align 1
  br label %ip_tunnel_ecn_encap.exit186.i

if.then6.i.i181.i:                                ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #20
  %92 = ptrtoint ptr %add.ptr.i.i176.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %add.ptr.i.i176.i, align 2
  %94 = lshr i16 %93, 4
  %conv1.i.i.i180.i = trunc i16 %94 to i8
  br label %ip_tunnel_ecn_encap.exit186.i

ip_tunnel_ecn_encap.exit186.i:                    ; preds = %if.then6.i.i181.i, %if.then.i.i179.i, %if.else64.i.ip_tunnel_ecn_encap.exit186.i_crit_edge
  %retval.0.i.i182.i = phi i8 [ %91, %if.then.i.i179.i ], [ %conv1.i.i.i180.i, %if.then6.i.i181.i ], [ 0, %if.else64.i.ip_tunnel_ecn_encap.exit186.i_crit_edge ]
  %95 = and i8 %retval.0.i.i182.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %95)
  %cmp.i.not.i.i183.i = icmp eq i8 %95, 3
  %spec.select.i.i184.i = select i1 %cmp.i.not.i.i183.i, i8 2, i8 %95
  %96 = and i8 %conv.i172.i, -4
  %or.i.i185.i = or i8 %spec.select.i.i184.i, %96
  %ttl_inherit.i = getelementptr i8, ptr %dev, i32 2434
  %97 = ptrtoint ptr %ttl_inherit.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ttl_inherit.i, align 2, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool69.not.i = icmp eq i8 %98, 0
  br i1 %tobool69.not.i, label %if.else73.i, label %if.then70.i

if.then70.i:                                      ; preds = %ip_tunnel_ecn_encap.exit186.i
  %99 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %88, label %if.then70.i.cond.false.i_crit_edge [
    i16 2048, label %if.then.i.i
    i16 -31011, label %if.then6.i192.i
  ]

if.then70.i.cond.false.i_crit_edge:               ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false.i

if.then.i.i:                                      ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #20
  %ttl.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i176.i, i32 0, i32 5
  br label %if.end75.i

if.then6.i192.i:                                  ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #20
  %hop_limit.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i176.i, i32 0, i32 4
  br label %if.end75.i

if.else73.i:                                      ; preds = %ip_tunnel_ecn_encap.exit186.i
  call void @__sanitizer_cov_trace_pc() #20
  %ttl74.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %info.0, i32 0, i32 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.else73.i, %if.then6.i192.i, %if.then.i.i
  %ttl.0.in.i = phi ptr [ %ttl74.i, %if.else73.i ], [ %ttl.i.i, %if.then.i.i ], [ %hop_limit.i.i, %if.then6.i192.i ]
  %100 = ptrtoint ptr %ttl.0.in.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %ttl.0.i = load i8, ptr %ttl.0.in.i, align 1
  %conv76.i = zext i8 %ttl.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ttl.0.i)
  %tobool77.not.i = icmp eq i8 %ttl.0.i, 0
  br i1 %tobool77.not.i, label %if.end75.i.cond.false.i_crit_edge, label %if.end75.i.cond.end.i_crit_edge

if.end75.i.cond.end.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i

if.end75.i.cond.false.i_crit_edge:                ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false.i

cond.false.i:                                     ; preds = %if.end75.i.cond.false.i_crit_edge, %if.then70.i.cond.false.i_crit_edge
  %call78.i = call i32 @ip6_dst_hoplimit(ptr noundef %call21.i) #18
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end75.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call78.i, %cond.false.i ], [ %conv76.i, %if.end75.i.cond.end.i_crit_edge ]
  %conv79.i = trunc i32 %cond.i to i8
  br label %if.end80.i

if.end80.i:                                       ; preds = %cond.end.i, %ip_tunnel_ecn_encap.exit.i
  %prio.0.i = phi i8 [ %or.i.i.i, %ip_tunnel_ecn_encap.exit.i ], [ %or.i.i185.i, %cond.end.i ]
  %ttl.1.i = phi i8 [ %80, %ip_tunnel_ecn_encap.exit.i ], [ %conv79.i, %cond.end.i ]
  %call82.i = call fastcc i32 @geneve_build_skb(ptr noundef %call21.i, ptr noundef %skb, ptr noundef %info.0, i1 noundef zeroext %cmp.i.i91, i32 noundef 40) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.end91.i, label %if.end80.i.geneve6_xmit_skb.exit_crit_edge, !prof !179

if.end80.i.geneve6_xmit_skb.exit_crit_edge:       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve6_xmit_skb.exit

if.end91.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #20
  %sock.i = getelementptr inbounds %struct.geneve_sock, ptr %19, i32 0, i32 2
  %101 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sk.i, align 16
  %saddr92.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2
  %daddr93.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 1
  %label.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %info.0, i32 0, i32 5
  %105 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %label.i, align 4
  %107 = ptrtoint ptr %tp_dst.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %tp_dst.i, align 2
  %tun_flags.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %info.0, i32 0, i32 2
  %109 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %tun_flags.i, align 8
  %111 = and i16 %110, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool101.not.i = icmp eq i16 %111, 0
  %call104.i = call i32 @udp_tunnel6_xmit_skb(ptr noundef %call21.i, ptr noundef %104, ptr noundef %skb, ptr noundef %dev, ptr noundef %saddr92.i, ptr noundef %daddr93.i, i8 noundef zeroext %prio.0.i, i8 noundef zeroext %ttl.1.i, i32 noundef %106, i16 noundef zeroext %conv14.i.i, i16 noundef zeroext %108, i1 noundef zeroext %tobool101.not.i) #18
  br label %geneve6_xmit_skb.exit

geneve6_xmit_skb.exit:                            ; preds = %if.end91.i, %if.end80.i.geneve6_xmit_skb.exit_crit_edge, %if.end51.i, %if.then50.i, %if.then42.i, %if.then29.i, %if.then23.i, %pskb_inet_may_pull.exit.i.geneve6_xmit_skb.exit_crit_edge, %if.end.i.i.i.i.geneve6_xmit_skb.exit_crit_edge
  %retval.2.i = phi i32 [ %45, %if.then23.i ], [ %call27.i, %if.then29.i ], [ 0, %if.end91.i ], [ -22, %pskb_inet_may_pull.exit.i.geneve6_xmit_skb.exit_crit_edge ], [ -90, %if.end51.i ], [ -22, %if.then50.i ], [ -12, %if.then42.i ], [ %call82.i, %if.end80.i.geneve6_xmit_skb.exit_crit_edge ], [ -22, %if.end.i.i.i.i.geneve6_xmit_skb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i) #18
  br label %if.end32

if.else30:                                        ; preds = %rcu_read_lock.exit
  %sock4.i = getelementptr i8, ptr %dev, i32 2336
  %112 = ptrtoint ptr %sock4.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %sock4.i, align 8
  %call4.i92 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i92)
  %tobool5.not.i93 = icmp eq i32 %call4.i92, 0
  br i1 %tobool5.not.i93, label %land.lhs.true.i96, label %if.else30.do.end11.i117_crit_edge

if.else30.do.end11.i117_crit_edge:                ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end11.i117

land.lhs.true.i96:                                ; preds = %if.else30
  %call6.i94 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i94)
  %tobool7.not.i95 = icmp eq i32 %call6.i94, 0
  br i1 %tobool7.not.i95, label %land.lhs.true.i96.do.end11.i117_crit_edge, label %land.lhs.true8.i97

land.lhs.true.i96.do.end11.i117_crit_edge:        ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end11.i117

land.lhs.true8.i97:                               ; preds = %land.lhs.true.i96
  %.b223.i = load i1, ptr @geneve_xmit_skb.__warned, align 1
  br i1 %.b223.i, label %land.lhs.true8.i97.do.end11.i117_crit_edge, label %if.then.i98

land.lhs.true8.i97.do.end11.i117_crit_edge:       ; preds = %land.lhs.true8.i97
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end11.i117

if.then.i98:                                      ; preds = %land.lhs.true8.i97
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_xmit_skb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 881, ptr noundef nonnull @.str.5) #18
  br label %do.end11.i117

do.end11.i117:                                    ; preds = %if.then.i98, %land.lhs.true8.i97.do.end11.i117_crit_edge, %land.lhs.true.i96.do.end11.i117_crit_edge, %if.else30.do.end11.i117_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i) #18
  %114 = call ptr @memset(ptr %fl4.i, i32 255, i32 56)
  %protocol.i.i99 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %115 = ptrtoint ptr %protocol.i.i99 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %protocol.i.i99, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %116)
  %switch.selectcmp.i.i100 = icmp eq i16 %116, 2048
  %switch.select.i.i101 = select i1 %switch.selectcmp.i.i100, i32 20, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %116)
  %switch.selectcmp3.i.i102 = icmp eq i16 %116, -31011
  %switch.select4.i.i103 = select i1 %switch.selectcmp3.i.i102, i32 40, i32 %switch.select.i.i101
  %head.i.i.i.i.i104 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %117 = ptrtoint ptr %head.i.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %head.i.i.i.i.i104, align 8
  %network_header.i.i.i.i.i105 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %119 = ptrtoint ptr %network_header.i.i.i.i.i105 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %network_header.i.i.i.i.i105, align 4
  %conv.i.i.i.i.i106 = zext i16 %120 to i32
  %add.ptr.i.i.i.i.i107 = getelementptr i8, ptr %118, i32 %conv.i.i.i.i.i106
  %data.i.i.i.i108 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %121 = ptrtoint ptr %data.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data.i.i.i.i108, align 4
  %sub.ptr.lhs.cast.i.i.i.i109 = ptrtoint ptr %add.ptr.i.i.i.i.i107 to i32
  %sub.ptr.rhs.cast.i.i.i.i110 = ptrtoint ptr %122 to i32
  %sub.ptr.sub.i.i.i.i111 = sub i32 %sub.ptr.lhs.cast.i.i.i.i109, %sub.ptr.rhs.cast.i.i.i.i110
  %add.i.i.i112 = add i32 %sub.ptr.sub.i.i.i.i111, %switch.select4.i.i103
  %len.i.i.i.i.i113 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %123 = ptrtoint ptr %len.i.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %len.i.i.i.i.i113, align 4
  %data_len.i.i.i.i.i114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %125 = ptrtoint ptr %data_len.i.i.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %data_len.i.i.i.i.i114, align 8
  %sub.i.i.i.i.i115 = sub i32 %124, %126
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i112, i32 %sub.i.i.i.i.i115)
  %cmp.not.i.i.i.i116 = icmp ugt i32 %add.i.i.i112, %sub.i.i.i.i.i115
  br i1 %cmp.not.i.i.i.i116, label %if.end.i.i.i.i119, label %do.end11.i117.if.end16.i126_crit_edge, !prof !183

do.end11.i117.if.end16.i126_crit_edge:            ; preds = %do.end11.i117
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i126

if.end.i.i.i.i119:                                ; preds = %do.end11.i117
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %add.i.i.i112)
  %cmp3.i.i.i.i118 = icmp ult i32 %124, %add.i.i.i112
  br i1 %cmp3.i.i.i.i118, label %if.end.i.i.i.i119.geneve_xmit_skb.exit_crit_edge, label %pskb_inet_may_pull.exit.i123, !prof !183

if.end.i.i.i.i119.geneve_xmit_skb.exit_crit_edge: ; preds = %if.end.i.i.i.i119
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve_xmit_skb.exit

pskb_inet_may_pull.exit.i123:                     ; preds = %if.end.i.i.i.i119
  %sub.i.i.i.i120 = sub i32 %add.i.i.i112, %sub.i.i.i.i.i115
  %call13.i.i.i.i121 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i.i120) #18
  %cmp14.i.i.i.not.i122 = icmp eq ptr %call13.i.i.i.i121, null
  br i1 %cmp14.i.i.i.not.i122, label %pskb_inet_may_pull.exit.i123.geneve_xmit_skb.exit_crit_edge, label %pskb_inet_may_pull.exit.i123.if.end16.i126_crit_edge

pskb_inet_may_pull.exit.i123.if.end16.i126_crit_edge: ; preds = %pskb_inet_may_pull.exit.i123
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i126

pskb_inet_may_pull.exit.i123.geneve_xmit_skb.exit_crit_edge: ; preds = %pskb_inet_may_pull.exit.i123
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve_xmit_skb.exit

if.end16.i126:                                    ; preds = %pskb_inet_may_pull.exit.i123.if.end16.i126_crit_edge, %do.end11.i117.if.end16.i126_crit_edge
  %l4_hash.i.i.i124 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %127 = ptrtoint ptr %l4_hash.i.i.i124 to i32
  call void @__asan_load2_noabort(i32 %127)
  %bf.load.i.i.i125 = load i16, ptr %l4_hash.i.i.i124, align 8
  %128 = and i16 %bf.load.i.i.i125, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %if.then.i.i.i127, label %if.end16.i126.skb_get_hash.exit.i.i130_crit_edge

if.end16.i126.skb_get_hash.exit.i.i130_crit_edge: ; preds = %if.end16.i126
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_get_hash.exit.i.i130

if.then.i.i.i127:                                 ; preds = %if.end16.i126
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__skb_get_hash(ptr noundef %skb) #18
  br label %skb_get_hash.exit.i.i130

skb_get_hash.exit.i.i130:                         ; preds = %if.then.i.i.i127, %if.end16.i126.skb_get_hash.exit.i.i130_crit_edge
  %hash.i.i.i128 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %130 = ptrtoint ptr %hash.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %hash.i.i.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i.i129 = icmp eq i32 %131, 0
  br i1 %tobool.not.i.i129, label %if.then6.i.i132, label %skb_get_hash.exit.i.i130.udp_flow_src_port.exit.i142_crit_edge, !prof !183

skb_get_hash.exit.i.i130.udp_flow_src_port.exit.i142_crit_edge: ; preds = %skb_get_hash.exit.i.i130
  call void @__sanitizer_cov_trace_pc() #20
  br label %udp_flow_src_port.exit.i142

if.then6.i.i132:                                  ; preds = %skb_get_hash.exit.i.i130
  call void @__sanitizer_cov_trace_pc() #20
  %132 = ptrtoint ptr %data.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i.i.i.i108, align 4
  %134 = ptrtoint ptr %protocol.i.i99 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %protocol.i.i99, align 8
  %conv.i225.i = zext i16 %135 to i32
  %call7.i.i131 = tail call fastcc i32 @jhash(ptr noundef %133, i32 noundef %conv.i225.i) #18
  br label %udp_flow_src_port.exit.i142

udp_flow_src_port.exit.i142:                      ; preds = %if.then6.i.i132, %skb_get_hash.exit.i.i130.udp_flow_src_port.exit.i142_crit_edge
  %hash.0.i.i133 = phi i32 [ %call7.i.i131, %if.then6.i.i132 ], [ %131, %skb_get_hash.exit.i.i130.udp_flow_src_port.exit.i142_crit_edge ]
  %shl.i.i134 = shl i32 %hash.0.i.i133, 16
  %xor.i.i135 = xor i32 %shl.i.i134, %hash.0.i.i133
  %conv11.i.i136 = zext i32 %xor.i.i135 to i64
  %mul.i.i137 = mul nuw nsw i64 %conv11.i.i136, 65534
  %shr.i.i138 = lshr i64 %mul.i.i137, 32
  %136 = trunc i64 %shr.i.i138 to i16
  %conv14.i.i139 = add nuw i16 %136, 1
  %tp_dst.i140 = getelementptr i8, ptr %dev, i32 2410
  %137 = ptrtoint ptr %tp_dst.i140 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %tp_dst.i140, align 2
  %call21.i141 = call fastcc ptr @geneve_get_v4_rt(ptr noundef %skb, ptr noundef %dev, ptr noundef %113, ptr noundef nonnull %fl4.i, ptr noundef %info.0, i16 noundef zeroext %138, i16 noundef zeroext %conv14.i.i139) #18
  %cmp.i226.i = icmp ugt ptr %call21.i141, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226.i, label %if.then23.i143, label %if.end25.i150

if.then23.i143:                                   ; preds = %udp_flow_src_port.exit.i142
  call void @__sanitizer_cov_trace_pc() #20
  %139 = ptrtoint ptr %call21.i141 to i32
  br label %geneve_xmit_skb.exit

if.end25.i150:                                    ; preds = %udp_flow_src_port.exit.i142
  %options_len.i144 = getelementptr inbounds %struct.ip_tunnel_info, ptr %info.0, i32 0, i32 2
  %140 = ptrtoint ptr %options_len.i144 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %options_len.i144, align 8
  %conv.i145 = zext i8 %141 to i32
  %add.i146 = add nuw nsw i32 %conv.i145, 50
  %priv_flags.i.i.i147 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %142 = ptrtoint ptr %priv_flags.i.i.i147 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %priv_flags.i.i.i147, align 16
  %144 = and i64 %143, 1536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %144)
  %145 = icmp ne i64 %144, 0
  %call27.i148 = call i32 @skb_tunnel_check_pmtu(ptr noundef %skb, ptr noundef %call21.i141, i32 noundef %add.i146, i1 noundef zeroext %145) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i148)
  %cmp.i149 = icmp slt i32 %call27.i148, 0
  br i1 %cmp.i149, label %if.then29.i151, label %if.else.i152

if.then29.i151:                                   ; preds = %if.end25.i150
  call void @__sanitizer_cov_trace_pc() #20
  call void @dst_release(ptr noundef %call21.i141) #18
  br label %geneve_xmit_skb.exit

if.else.i152:                                     ; preds = %if.end25.i150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i148)
  %tobool31.not.i = icmp eq i32 %call27.i148, 0
  br i1 %tobool31.not.i, label %if.end61.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.else.i152
  %call34.i = call fastcc ptr @skb_tunnel_info(ptr noundef %skb) #18
  %tobool35.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not.i, label %if.then32.i.if.end50.i_crit_edge, label %if.then36.i

if.then32.i.if.end50.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50.i

if.then36.i:                                      ; preds = %if.then32.i
  %call37.i = call fastcc ptr @skb_tunnel_info_unclone(ptr noundef %skb) #18
  %tobool38.not.i = icmp eq ptr %call37.i, null
  br i1 %tobool38.not.i, label %if.then43.i, label %if.end45.i, !prof !183

if.then43.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @dst_release(ptr noundef %call21.i141) #18
  br label %geneve_xmit_skb.exit

if.end45.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #20
  %saddr.i153 = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 1
  %146 = ptrtoint ptr %saddr.i153 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %saddr.i153, align 8
  %u.i154 = getelementptr inbounds %struct.ip_tunnel_key, ptr %call37.i, i32 0, i32 1
  %dst47.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call37.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %148 = ptrtoint ptr %dst47.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %dst47.i, align 4
  %daddr.i155 = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %149 = ptrtoint ptr %daddr.i155 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %daddr.i155, align 4
  %151 = ptrtoint ptr %u.i154 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %u.i154, align 8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end45.i, %if.then32.i.if.end50.i_crit_edge
  %152 = ptrtoint ptr %len.i.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %len.i.i.i.i.i113, align 4
  %154 = ptrtoint ptr %data_len.i.i.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %data_len.i.i.i.i.i114, align 8
  %sub.i.i.i156 = sub i32 %153, %155
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i.i.i156)
  %cmp.not.i.i157 = icmp ult i32 %sub.i.i.i156, 14
  br i1 %cmp.not.i.i157, label %if.end.i.i159, label %if.end50.i.if.end54.i_crit_edge, !prof !183

if.end50.i.if.end54.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54.i

if.end.i.i159:                                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %153)
  %cmp3.i.i158 = icmp ult i32 %153, 14
  br i1 %cmp3.i.i158, label %if.end.i.i159.if.then52.i_crit_edge, label %pskb_may_pull.exit.i163, !prof !183

if.end.i.i159.if.then52.i_crit_edge:              ; preds = %if.end.i.i159
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then52.i

pskb_may_pull.exit.i163:                          ; preds = %if.end.i.i159
  %sub.i.i160 = sub nuw nsw i32 14, %sub.i.i.i156
  %call13.i.i161 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i160) #18
  %cmp14.i.not.i162 = icmp eq ptr %call13.i.i161, null
  br i1 %cmp14.i.not.i162, label %pskb_may_pull.exit.i163.if.then52.i_crit_edge, label %pskb_may_pull.exit.i163.if.end54.i_crit_edge

pskb_may_pull.exit.i163.if.end54.i_crit_edge:     ; preds = %pskb_may_pull.exit.i163
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54.i

pskb_may_pull.exit.i163.if.then52.i_crit_edge:    ; preds = %pskb_may_pull.exit.i163
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then52.i

if.then52.i:                                      ; preds = %pskb_may_pull.exit.i163.if.then52.i_crit_edge, %if.end.i.i159.if.then52.i_crit_edge
  call void @dst_release(ptr noundef %call21.i141) #18
  br label %geneve_xmit_skb.exit

if.end54.i:                                       ; preds = %pskb_may_pull.exit.i163.if.end54.i_crit_edge, %if.end50.i.if.end54.i_crit_edge
  %156 = ptrtoint ptr %dev1.i89 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev1.i89, align 4
  %call56.i = call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %157) #18
  %158 = ptrtoint ptr %protocol.i.i99 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %call56.i, ptr %protocol.i.i99, align 8
  %call57.i = call i32 @netif_rx(ptr noundef %skb) #18
  call void @dst_release(ptr noundef %call21.i141) #18
  br label %geneve_xmit_skb.exit

if.end61.i:                                       ; preds = %if.else.i152
  %159 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %collect_md, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool63.not.i = icmp eq i8 %160, 0
  br i1 %tobool63.not.i, label %if.else72.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.end61.i
  %tos65.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %info.0, i32 0, i32 3
  %161 = ptrtoint ptr %tos65.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %tos65.i, align 2
  %163 = ptrtoint ptr %head.i.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %head.i.i.i.i.i104, align 8
  %165 = ptrtoint ptr %network_header.i.i.i.i.i105 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %network_header.i.i.i.i.i105, align 4
  %conv.i.i.i165 = zext i16 %166 to i32
  %add.ptr.i.i.i166 = getelementptr i8, ptr %164, i32 %conv.i.i.i165
  %167 = ptrtoint ptr %protocol.i.i99 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %protocol.i.i99, align 8
  %169 = zext i16 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %168, label %if.then64.i.ip_tunnel_ecn_encap.exit.i175_crit_edge [
    i16 2048, label %if.then.i.i227.i
    i16 -31011, label %if.then6.i.i.i169
  ]

if.then64.i.ip_tunnel_ecn_encap.exit.i175_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ip_tunnel_ecn_encap.exit.i175

if.then.i.i227.i:                                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #20
  %tos.i.i.i167 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i166, i32 0, i32 1
  %170 = ptrtoint ptr %tos.i.i.i167 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %tos.i.i.i167, align 1
  br label %ip_tunnel_ecn_encap.exit.i175

if.then6.i.i.i169:                                ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #20
  %172 = ptrtoint ptr %add.ptr.i.i.i166 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %add.ptr.i.i.i166, align 2
  %174 = lshr i16 %173, 4
  %conv1.i.i.i.i168 = trunc i16 %174 to i8
  br label %ip_tunnel_ecn_encap.exit.i175

ip_tunnel_ecn_encap.exit.i175:                    ; preds = %if.then6.i.i.i169, %if.then.i.i227.i, %if.then64.i.ip_tunnel_ecn_encap.exit.i175_crit_edge
  %retval.0.i.i.i170 = phi i8 [ %171, %if.then.i.i227.i ], [ %conv1.i.i.i.i168, %if.then6.i.i.i169 ], [ 0, %if.then64.i.ip_tunnel_ecn_encap.exit.i175_crit_edge ]
  %175 = and i8 %retval.0.i.i.i170, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %175)
  %cmp.i.not.i.i.i171 = icmp eq i8 %175, 3
  %spec.select.i.i.i172 = select i1 %cmp.i.not.i.i.i171, i8 2, i8 %175
  %176 = and i8 %162, -4
  %or.i.i.i173 = or i8 %spec.select.i.i.i172, %176
  %ttl68.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %info.0, i32 0, i32 4
  %177 = ptrtoint ptr %ttl68.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %ttl68.i, align 1
  %tun_flags.i174 = getelementptr inbounds %struct.ip_tunnel_key, ptr %info.0, i32 0, i32 2
  %179 = ptrtoint ptr %tun_flags.i174 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %tun_flags.i174, align 8
  %181 = shl i16 %180, 6
  %182 = and i16 %181, 16384
  br label %if.end121.i

if.else72.i:                                      ; preds = %if.end61.i
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 3
  %183 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %flowic_tos.i, align 4
  %185 = ptrtoint ptr %head.i.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %head.i.i.i.i.i104, align 8
  %187 = ptrtoint ptr %network_header.i.i.i.i.i105 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %network_header.i.i.i.i.i105, align 4
  %conv.i.i230.i = zext i16 %188 to i32
  %add.ptr.i.i231.i = getelementptr i8, ptr %186, i32 %conv.i.i230.i
  %189 = ptrtoint ptr %protocol.i.i99 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %protocol.i.i99, align 8
  %191 = zext i16 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %190, label %if.else72.i.ip_tunnel_ecn_encap.exit241.i_crit_edge [
    i16 2048, label %if.then.i.i234.i
    i16 -31011, label %if.then6.i.i236.i
  ]

if.else72.i.ip_tunnel_ecn_encap.exit241.i_crit_edge: ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ip_tunnel_ecn_encap.exit241.i

if.then.i.i234.i:                                 ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #20
  %tos.i.i233.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i231.i, i32 0, i32 1
  %192 = ptrtoint ptr %tos.i.i233.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %tos.i.i233.i, align 1
  br label %ip_tunnel_ecn_encap.exit241.i

if.then6.i.i236.i:                                ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #20
  %194 = ptrtoint ptr %add.ptr.i.i231.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %add.ptr.i.i231.i, align 2
  %196 = lshr i16 %195, 4
  %conv1.i.i.i235.i = trunc i16 %196 to i8
  br label %ip_tunnel_ecn_encap.exit241.i

ip_tunnel_ecn_encap.exit241.i:                    ; preds = %if.then6.i.i236.i, %if.then.i.i234.i, %if.else72.i.ip_tunnel_ecn_encap.exit241.i_crit_edge
  %retval.0.i.i237.i = phi i8 [ %193, %if.then.i.i234.i ], [ %conv1.i.i.i235.i, %if.then6.i.i236.i ], [ 0, %if.else72.i.ip_tunnel_ecn_encap.exit241.i_crit_edge ]
  %197 = and i8 %retval.0.i.i237.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %197)
  %cmp.i.not.i.i238.i = icmp eq i8 %197, 3
  %spec.select.i.i239.i = select i1 %cmp.i.not.i.i238.i, i8 2, i8 %197
  %198 = and i8 %184, -4
  %or.i.i240.i = or i8 %spec.select.i.i239.i, %198
  %ttl_inherit.i176 = getelementptr i8, ptr %dev, i32 2434
  %199 = ptrtoint ptr %ttl_inherit.i176 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %ttl_inherit.i176, align 2, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool76.not.i = icmp eq i8 %200, 0
  br i1 %tobool76.not.i, label %if.else80.i, label %if.then77.i

if.then77.i:                                      ; preds = %ip_tunnel_ecn_encap.exit241.i
  %201 = zext i16 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %190, label %if.then77.i.cond.false.i182_crit_edge [
    i16 2048, label %if.then.i.i178
    i16 -31011, label %if.then6.i247.i
  ]

if.then77.i.cond.false.i182_crit_edge:            ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false.i182

if.then.i.i178:                                   ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #20
  %ttl.i.i177 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i231.i, i32 0, i32 5
  br label %if.end82.i

if.then6.i247.i:                                  ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #20
  %hop_limit.i.i179 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i231.i, i32 0, i32 4
  br label %if.end82.i

if.else80.i:                                      ; preds = %ip_tunnel_ecn_encap.exit241.i
  call void @__sanitizer_cov_trace_pc() #20
  %ttl81.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %info.0, i32 0, i32 4
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.else80.i, %if.then6.i247.i, %if.then.i.i178
  %ttl.0.in.i180 = phi ptr [ %ttl81.i, %if.else80.i ], [ %ttl.i.i177, %if.then.i.i178 ], [ %hop_limit.i.i179, %if.then6.i247.i ]
  %202 = ptrtoint ptr %ttl.0.in.i180 to i32
  call void @__asan_load1_noabort(i32 %202)
  %ttl.0.i181 = load i8, ptr %ttl.0.in.i180, align 1
  %conv83.i = zext i8 %ttl.0.i181 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ttl.0.i181)
  %tobool84.not.i = icmp eq i8 %ttl.0.i181, 0
  br i1 %tobool84.not.i, label %if.end82.i.cond.false.i182_crit_edge, label %if.end82.i.cond.end.i183_crit_edge

if.end82.i.cond.end.i183_crit_edge:               ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i183

if.end82.i.cond.false.i182_crit_edge:             ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false.i182

cond.false.i182:                                  ; preds = %if.end82.i.cond.false.i182_crit_edge, %if.then77.i.cond.false.i182_crit_edge
  %_metrics.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %call21.i141, i32 0, i32 2
  %203 = ptrtoint ptr %_metrics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i.i.i = and i32 %204, -4
  %205 = inttoptr i32 %and.i.i.i to ptr
  %arrayidx.i.i.i = getelementptr i32, ptr %205, i32 9
  %206 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp.i249.i = icmp eq i32 %207, 0
  br i1 %cmp.i249.i, label %if.then.i251.i, label %cond.false.i182.cond.end.i183_crit_edge

cond.false.i182.cond.end.i183_crit_edge:          ; preds = %cond.false.i182
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i183

if.then.i251.i:                                   ; preds = %cond.false.i182
  call void @__sanitizer_cov_trace_pc() #20
  %208 = ptrtoint ptr %call21.i141 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %call21.i141, align 4
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %209, i32 0, i32 127
  %210 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %nd_net.i.i.i, align 4
  %sysctl_ip_default_ttl.i.i = getelementptr inbounds %struct.net, ptr %211, i32 0, i32 35, i32 37
  %212 = ptrtoint ptr %sysctl_ip_default_ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %sysctl_ip_default_ttl.i.i, align 2
  %conv.i250.i = zext i8 %213 to i32
  br label %cond.end.i183

cond.end.i183:                                    ; preds = %if.then.i251.i, %cond.false.i182.cond.end.i183_crit_edge, %if.end82.i.cond.end.i183_crit_edge
  %cond87.i = phi i32 [ %conv83.i, %if.end82.i.cond.end.i183_crit_edge ], [ %conv.i250.i, %if.then.i251.i ], [ %207, %cond.false.i182.cond.end.i183_crit_edge ]
  %conv88.i = trunc i32 %cond87.i to i8
  %df90.i = getelementptr i8, ptr %dev, i32 2436
  %214 = ptrtoint ptr %df90.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %df90.i, align 4
  %216 = zext i32 %215 to i64
  call void @__sanitizer_cov_trace_switch(i64 %216, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %215, label %if.end121.fold.split.i [
    i32 1, label %cond.end.i183.if.end121.i_crit_edge
    i32 2, label %if.then99.i
  ]

cond.end.i183.if.end121.i_crit_edge:              ; preds = %cond.end.i183
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end121.i

if.then99.i:                                      ; preds = %cond.end.i183
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %217 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i254.i = zext i16 %218 to i32
  %add.ptr.i.i255.i = getelementptr i8, ptr %186, i32 %conv.i.i254.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i255.i, i32 0, i32 2
  %219 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %219, i32 2)
  %220 = load i16, ptr %h_proto.i, align 1
  %221 = zext i16 %220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %220, label %if.end118.fold.split.i [
    i16 -31011, label %if.then99.i.if.end121.i_crit_edge
    i16 2048, label %if.then110.i
  ]

if.then99.i.if.end121.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end121.i

if.then110.i:                                     ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #20
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i231.i, i32 0, i32 4
  %222 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %frag_off.i, align 2
  %224 = and i16 %223, 16384
  br label %if.end121.i

if.end118.fold.split.i:                           ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end121.i

if.end121.fold.split.i:                           ; preds = %cond.end.i183
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.end121.fold.split.i, %if.end118.fold.split.i, %if.then110.i, %if.then99.i.if.end121.i_crit_edge, %cond.end.i183.if.end121.i_crit_edge, %ip_tunnel_ecn_encap.exit.i175
  %tos.0.i = phi i8 [ %or.i.i.i173, %ip_tunnel_ecn_encap.exit.i175 ], [ %or.i.i240.i, %cond.end.i183.if.end121.i_crit_edge ], [ %or.i.i240.i, %if.end121.fold.split.i ], [ %or.i.i240.i, %if.then99.i.if.end121.i_crit_edge ], [ %or.i.i240.i, %if.end118.fold.split.i ], [ %or.i.i240.i, %if.then110.i ]
  %ttl.1.i184 = phi i8 [ %178, %ip_tunnel_ecn_encap.exit.i175 ], [ %conv88.i, %cond.end.i183.if.end121.i_crit_edge ], [ %conv88.i, %if.end121.fold.split.i ], [ %conv88.i, %if.then99.i.if.end121.i_crit_edge ], [ %conv88.i, %if.end118.fold.split.i ], [ %conv88.i, %if.then110.i ]
  %df.2.i = phi i16 [ %182, %ip_tunnel_ecn_encap.exit.i175 ], [ 16384, %cond.end.i183.if.end121.i_crit_edge ], [ 0, %if.end121.fold.split.i ], [ 16384, %if.then99.i.if.end121.i_crit_edge ], [ 0, %if.end118.fold.split.i ], [ %224, %if.then110.i ]
  %call124.i = call fastcc i32 @geneve_build_skb(ptr noundef %call21.i141, ptr noundef %skb, ptr noundef %info.0, i1 noundef zeroext %cmp.i.i91, i32 noundef 20) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %tobool125.not.i = icmp eq i32 %call124.i, 0
  br i1 %tobool125.not.i, label %if.end133.i, label %if.end121.i.geneve_xmit_skb.exit_crit_edge, !prof !179

if.end121.i.geneve_xmit_skb.exit_crit_edge:       ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve_xmit_skb.exit

if.end133.i:                                      ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #20
  %sock.i185 = getelementptr inbounds %struct.geneve_sock, ptr %113, i32 0, i32 2
  %225 = ptrtoint ptr %sock.i185 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %sock.i185, align 4
  %sk.i186 = getelementptr inbounds %struct.socket, ptr %226, i32 0, i32 4
  %227 = ptrtoint ptr %sk.i186 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %sk.i186, align 16
  %saddr134.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 1
  %229 = ptrtoint ptr %saddr134.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %saddr134.i, align 8
  %daddr135.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %231 = ptrtoint ptr %daddr135.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %daddr135.i, align 4
  %233 = ptrtoint ptr %tp_dst.i140 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %tp_dst.i140, align 2
  %235 = ptrtoint ptr %net.i88 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %net.i88, align 8
  %237 = ptrtoint ptr %dev1.i89 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev1.i89, align 4
  %nd_net.i260.i = getelementptr inbounds %struct.net_device, ptr %238, i32 0, i32 127
  %239 = ptrtoint ptr %nd_net.i260.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %nd_net.i260.i, align 4
  %cmp.i261.i = icmp ne ptr %236, %240
  %tun_flags148.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %info.0, i32 0, i32 2
  %241 = ptrtoint ptr %tun_flags148.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %tun_flags148.i, align 8
  %243 = and i16 %242, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %243)
  %tobool151.not.i = icmp eq i16 %243, 0
  call void @udp_tunnel_xmit_skb(ptr noundef %call21.i141, ptr noundef %228, ptr noundef %skb, i32 noundef %230, i32 noundef %232, i8 noundef zeroext %tos.0.i, i8 noundef zeroext %ttl.1.i184, i16 noundef zeroext %df.2.i, i16 noundef zeroext %conv14.i.i139, i16 noundef zeroext %234, i1 noundef zeroext %cmp.i261.i, i1 noundef zeroext %tobool151.not.i) #18
  br label %geneve_xmit_skb.exit

geneve_xmit_skb.exit:                             ; preds = %if.end133.i, %if.end121.i.geneve_xmit_skb.exit_crit_edge, %if.end54.i, %if.then52.i, %if.then43.i, %if.then29.i151, %if.then23.i143, %pskb_inet_may_pull.exit.i123.geneve_xmit_skb.exit_crit_edge, %if.end.i.i.i.i119.geneve_xmit_skb.exit_crit_edge
  %retval.2.i187 = phi i32 [ %139, %if.then23.i143 ], [ %call27.i148, %if.then29.i151 ], [ 0, %if.end133.i ], [ -22, %pskb_inet_may_pull.exit.i123.geneve_xmit_skb.exit_crit_edge ], [ -90, %if.end54.i ], [ -22, %if.then52.i ], [ -12, %if.then43.i ], [ %call124.i, %if.end121.i.geneve_xmit_skb.exit_crit_edge ], [ -22, %if.end.i.i.i.i119.geneve_xmit_skb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #18
  br label %if.end32

if.end32:                                         ; preds = %geneve_xmit_skb.exit, %geneve6_xmit_skb.exit
  %err.0 = phi i32 [ %retval.2.i, %geneve6_xmit_skb.exit ], [ %retval.2.i187, %geneve_xmit_skb.exit ]
  %call.i188 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i188, label %if.end32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i191

if.end32.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i191:                               ; preds = %if.end32
  %call1.i189 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i189)
  %tobool.not.i190 = icmp eq i32 %call1.i189, 0
  br i1 %tobool.not.i190, label %land.lhs.true.i191.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i193

land.lhs.true.i191.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i193:                              ; preds = %land.lhs.true.i191
  %.b4.i192 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i192, label %land.lhs.true2.i193.rcu_read_unlock.exit_crit_edge, label %if.then.i194

land.lhs.true2.i193.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i193
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i194:                                     ; preds = %land.lhs.true2.i193
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i194, %land.lhs.true2.i193.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i191.rcu_read_unlock.exit_crit_edge, %if.end32.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !186
  %244 = call i32 @llvm.read_register.i32(metadata !167) #18
  %and.i.i.i.i.i195 = and i32 %244, -16384
  %245 = inttoptr i32 %and.i.i.i.i.i195 to ptr
  %preempt_count.i.i.i.i196 = getelementptr inbounds %struct.thread_info, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %preempt_count.i.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load volatile i32, ptr %preempt_count.i.i.i.i196, align 4
  %sub.i.i.i197 = add i32 %247, -1
  store volatile i32 %sub.i.i.i197, ptr %preempt_count.i.i.i.i196, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  %248 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %248, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %err.0, label %if.then45 [
    i32 0, label %rcu_read_unlock.exit.cleanup_crit_edge
    i32 -90, label %rcu_read_unlock.exit.if.end59_crit_edge
  ], !prof !187

rcu_read_unlock.exit.if.end59_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then45:                                        ; preds = %rcu_read_unlock.exit
  call void @consume_skb(ptr noundef %skb) #18
  %249 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %err.0, label %if.then45.if.end59_crit_edge [
    i32 -40, label %if.then49
    i32 -101, label %if.then55
  ]

if.then45.if.end59_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #20
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  br label %if.end59.sink.split

if.then55:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #20
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.then55, %if.then49
  %tx_carrier_errors.sink199 = phi ptr [ %tx_carrier_errors, %if.then55 ], [ %collisions, %if.then49 ]
  %250 = ptrtoint ptr %tx_carrier_errors.sink199 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %tx_carrier_errors.sink199, align 4
  %inc57 = add i32 %251, 1
  store i32 %inc57, ptr %tx_carrier_errors.sink199, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.then45.if.end59_crit_edge, %rcu_read_unlock.exit.if.end59_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end59, %do.end19
  %tx_errors.sink200 = phi ptr [ %tx_errors, %if.end59 ], [ %tx_dropped, %do.end19 ]
  %252 = ptrtoint ptr %tx_errors.sink200 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %tx_errors.sink200, align 4
  %inc61 = add i32 %253, 1
  store i32 %inc61, ptr %tx_errors.sink200, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %rcu_read_unlock.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_fill_metadata_dst(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @skb_tunnel_info(ptr noundef %skb)
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.then, label %if.then28

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #18
  %3 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  %sock4 = getelementptr i8, ptr %dev, i32 2336
  %4 = ptrtoint ptr %sock4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sock4, align 8
  %call5 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.do.end12_crit_edge

if.then.do.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end12

land.lhs.true:                                    ; preds = %if.then
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true8

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end12

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b108 = load i1, ptr @geneve_fill_metadata_dst.__warned, align 1
  br i1 %.b108, label %land.lhs.true8.do.end12_crit_edge, label %if.then10

land.lhs.true8.do.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end12

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_fill_metadata_dst.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1116, ptr noundef nonnull @.str.5) #18
  br label %do.end12

do.end12:                                         ; preds = %if.then10, %land.lhs.true8.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %if.then.do.end12_crit_edge
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %6 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %7 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %if.then.i.i, label %do.end12.skb_get_hash.exit.i_crit_edge

do.end12.skb_get_hash.exit.i_crit_edge:           ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_get_hash.exit.i

if.then.i.i:                                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__skb_get_hash(ptr noundef %skb) #18
  br label %skb_get_hash.exit.i

skb_get_hash.exit.i:                              ; preds = %if.then.i.i, %do.end12.skb_get_hash.exit.i_crit_edge
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %9 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hash.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i109 = icmp eq i32 %10, 0
  br i1 %tobool.not.i109, label %if.then6.i, label %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge, !prof !183

skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge: ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %udp_flow_src_port.exit

if.then6.i:                                       ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %13 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol.i, align 8
  %conv.i = zext i16 %14 to i32
  %call7.i = tail call fastcc i32 @jhash(ptr noundef %12, i32 noundef %conv.i) #18
  br label %udp_flow_src_port.exit

udp_flow_src_port.exit:                           ; preds = %if.then6.i, %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge
  %hash.0.i = phi i32 [ %call7.i, %if.then6.i ], [ %10, %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge ]
  %shl.i = shl i32 %hash.0.i, 16
  %xor.i = xor i32 %shl.i, %hash.0.i
  %conv11.i = zext i32 %xor.i to i64
  %mul.i = mul nuw nsw i64 %conv11.i, 65534
  %shr.i = lshr i64 %mul.i, 32
  %15 = trunc i64 %shr.i to i16
  %conv14.i = add nuw i16 %15, 1
  %tp_dst = getelementptr i8, ptr %dev, i32 2410
  %16 = ptrtoint ptr %tp_dst to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tp_dst, align 2
  %call16 = call fastcc ptr @geneve_get_v4_rt(ptr noundef %skb, ptr noundef %dev, ptr noundef %5, ptr noundef nonnull %fl4, ptr noundef %call, i16 noundef zeroext %17, i16 noundef zeroext %conv14.i)
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %udp_flow_src_port.exit
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %call16 to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #18
  br label %cleanup76

cleanup:                                          ; preds = %udp_flow_src_port.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @dst_release(ptr noundef %call16) #18
  %saddr = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %19 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %saddr, align 8
  %u = getelementptr inbounds %struct.ip_tunnel_key, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %u, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #18
  br label %if.end68

if.then28:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #18
  %22 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  %sock6 = getelementptr i8, ptr %dev, i32 2340
  %23 = ptrtoint ptr %sock6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %sock6, align 4
  %call34 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %if.then28.do.end44_crit_edge

if.then28.do.end44_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end44

land.lhs.true36:                                  ; preds = %if.then28
  %call37 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.do.end44_crit_edge, label %land.lhs.true39

land.lhs.true36.do.end44_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end44

land.lhs.true39:                                  ; preds = %land.lhs.true36
  %.b106107 = load i1, ptr @geneve_fill_metadata_dst.__warned.29, align 1
  br i1 %.b106107, label %land.lhs.true39.do.end44_crit_edge, label %if.then41

land.lhs.true39.do.end44_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end44

if.then41:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_fill_metadata_dst.__warned.29, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1132, ptr noundef nonnull @.str.5) #18
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %land.lhs.true39.do.end44_crit_edge, %land.lhs.true36.do.end44_crit_edge, %if.then28.do.end44_crit_edge
  %l4_hash.i.i113 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %25 = ptrtoint ptr %l4_hash.i.i113 to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i.i114 = load i16, ptr %l4_hash.i.i113, align 8
  %26 = and i16 %bf.load.i.i114, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %if.then.i.i115, label %do.end44.skb_get_hash.exit.i118_crit_edge

do.end44.skb_get_hash.exit.i118_crit_edge:        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_get_hash.exit.i118

if.then.i.i115:                                   ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__skb_get_hash(ptr noundef %skb) #18
  br label %skb_get_hash.exit.i118

skb_get_hash.exit.i118:                           ; preds = %if.then.i.i115, %do.end44.skb_get_hash.exit.i118_crit_edge
  %hash.i.i116 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %28 = ptrtoint ptr %hash.i.i116 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hash.i.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i117 = icmp eq i32 %29, 0
  br i1 %tobool.not.i117, label %if.then6.i123, label %skb_get_hash.exit.i118.udp_flow_src_port.exit131_crit_edge, !prof !183

skb_get_hash.exit.i118.udp_flow_src_port.exit131_crit_edge: ; preds = %skb_get_hash.exit.i118
  call void @__sanitizer_cov_trace_pc() #20
  br label %udp_flow_src_port.exit131

if.then6.i123:                                    ; preds = %skb_get_hash.exit.i118
  call void @__sanitizer_cov_trace_pc() #20
  %data.i119 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %30 = ptrtoint ptr %data.i119 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i119, align 4
  %protocol.i120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %32 = ptrtoint ptr %protocol.i120 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %protocol.i120, align 8
  %conv.i121 = zext i16 %33 to i32
  %call7.i122 = tail call fastcc i32 @jhash(ptr noundef %31, i32 noundef %conv.i121) #18
  br label %udp_flow_src_port.exit131

udp_flow_src_port.exit131:                        ; preds = %if.then6.i123, %skb_get_hash.exit.i118.udp_flow_src_port.exit131_crit_edge
  %hash.0.i124 = phi i32 [ %call7.i122, %if.then6.i123 ], [ %29, %skb_get_hash.exit.i118.udp_flow_src_port.exit131_crit_edge ]
  %shl.i125 = shl i32 %hash.0.i124, 16
  %xor.i126 = xor i32 %shl.i125, %hash.0.i124
  %conv11.i127 = zext i32 %xor.i126 to i64
  %mul.i128 = mul nuw nsw i64 %conv11.i127, 65534
  %shr.i129 = lshr i64 %mul.i128, 32
  %34 = trunc i64 %shr.i129 to i16
  %conv14.i130 = add nuw i16 %34, 1
  %tp_dst51 = getelementptr i8, ptr %dev, i32 2410
  %35 = ptrtoint ptr %tp_dst51 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tp_dst51, align 2
  %call52 = call fastcc ptr @geneve_get_v6_dst(ptr noundef %skb, ptr noundef %dev, ptr noundef %24, ptr noundef nonnull %fl6, ptr noundef %call, i16 noundef zeroext %36, i16 noundef zeroext %conv14.i130)
  %cmp.i132 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %cleanup61.thread, label %cleanup61

cleanup61.thread:                                 ; preds = %udp_flow_src_port.exit131
  call void @__sanitizer_cov_trace_pc() #20
  %37 = ptrtoint ptr %call52 to i32
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #18
  br label %cleanup76

cleanup61:                                        ; preds = %udp_flow_src_port.exit131
  call void @__sanitizer_cov_trace_pc() #20
  call void @dst_release(ptr noundef %call52) #18
  %u58 = getelementptr inbounds %struct.ip_tunnel_key, ptr %call, i32 0, i32 1
  %saddr60 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %38 = call ptr @memcpy(ptr %u58, ptr %saddr60, i32 16)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #18
  br label %if.end68

if.end68:                                         ; preds = %cleanup61, %cleanup
  %sport.0 = phi i16 [ %conv14.i, %cleanup ], [ %conv14.i130, %cleanup61 ]
  %tp_src = getelementptr inbounds %struct.ip_tunnel_key, ptr %call, i32 0, i32 6
  %39 = ptrtoint ptr %tp_src to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %sport.0, ptr %tp_src, align 8
  %tp_dst73 = getelementptr i8, ptr %dev, i32 2410
  %40 = ptrtoint ptr %tp_dst73 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tp_dst73, align 2
  %tp_dst75 = getelementptr inbounds %struct.ip_tunnel_key, ptr %call, i32 0, i32 7
  %42 = ptrtoint ptr %tp_dst75 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %tp_dst75, align 2
  br label %cleanup76

cleanup76:                                        ; preds = %if.end68, %cleanup61.thread, %cleanup.thread
  %retval.2 = phi i32 [ 0, %if.end68 ], [ %18, %cleanup.thread ], [ %37, %cleanup61.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gro_cells_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @geneve_sock_add(ptr noundef %geneve, i1 noundef zeroext %ipv6) unnamed_addr #0 align 64 {
entry:
  %sock.i.i = alloca ptr, align 4
  %udp_conf.i.i = alloca %struct.udp_port_cfg, align 4
  %tunnel_cfg.i = alloca %struct.udp_tunnel_sock_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 2
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 8
  %2 = load i32, ptr @geneve_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %conv = select i1 %ipv6, i16 10, i16 2
  %cfg = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 8
  %tp_dst = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 8, i32 0, i32 0, i32 7
  %3 = ptrtoint ptr %tp_dst to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tp_dst, align 2
  %sock_list.i = getelementptr inbounds %struct.geneve_net, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %sock_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn22.i = load ptr, ptr %sock_list.i, align 4
  %cmp.not23.i = icmp eq ptr %.pn22.i, %sock_list.i
  br i1 %cmp.not23.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn24.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn22.i, %entry.for.body.i_crit_edge ]
  %sock.i = getelementptr i8, ptr %.pn24.i, i32 8
  %6 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk.i, align 16
  %inet_sport.i = getelementptr inbounds %struct.inet_sock, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inet_sport.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %4)
  %cmp3.i = icmp eq i16 %11, %4
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %skc_family.i.i = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %skc_family.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %skc_family.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %conv)
  %cmp8.i = icmp eq i16 %13, %conv
  br i1 %cmp8.i, label %geneve_find_sock.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn24.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %sock_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

geneve_find_sock.exit:                            ; preds = %land.lhs.true.i
  %gs.0.le.i = getelementptr i8, ptr %.pn24.i, i32 -4
  %tobool3.not = icmp eq ptr %gs.0.le.i, null
  br i1 %tobool3.not, label %geneve_find_sock.exit.if.end_crit_edge, label %if.then

geneve_find_sock.exit.if.end_crit_edge:           ; preds = %geneve_find_sock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %geneve_find_sock.exit
  call void @__sanitizer_cov_trace_pc() #20
  %refcnt = getelementptr i8, ptr %.pn24.i, i32 20
  %15 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refcnt, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %refcnt, align 4
  br label %out

if.end:                                           ; preds = %geneve_find_sock.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %use_udp6_rx_checksums = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %use_udp6_rx_checksums to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %use_udp6_rx_checksums, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not = icmp eq i8 %18, 0
  %19 = load i32, ptr @geneve_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %19) #18
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tunnel_cfg.i) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 4124) #24
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %geneve_socket_create.exit.thread, label %if.end.i

geneve_socket_create.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tunnel_cfg.i) #18
  br label %if.then13

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i.i) #18
  %21 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock.i.i, align 4, !annotation !188
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %udp_conf.i.i) #18
  %22 = call ptr @memset(ptr %udp_conf.i.i, i32 0, i32 48)
  br i1 %ipv6, label %if.then6.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %udp_conf.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %udp_conf.i.i, align 4
  %local_udp_port14.i.i = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %local_udp_port14.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %4, ptr %local_udp_port14.i.i, align 4
  %call.i.i.i = call i32 @udp_sock_create4(ptr noundef %1, ptr noundef nonnull %udp_conf.i.i, ptr noundef nonnull %sock.i.i) #18
  br label %udp_sock_create.exit.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %25 = ptrtoint ptr %udp_conf.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %udp_conf.i.i, align 4
  %ipv6_v6only.i.i = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %ipv6_v6only.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i = load i8, ptr %ipv6_v6only.i.i, align 4
  %bf.set.i.i = and i8 %bf.load.i.i, -49
  %bf.clear4.i.i = select i1 %tobool10.not, i8 16, i8 48
  %bf.set5.i.i = or i8 %bf.set.i.i, %bf.clear4.i.i
  store i8 %bf.set5.i.i, ptr %ipv6_v6only.i.i, align 4
  %local_udp_port.i.i = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %local_udp_port.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %4, ptr %local_udp_port.i.i, align 4
  %call7.i.i32.i = call i32 @udp_sock_create6(ptr noundef %1, ptr noundef nonnull %udp_conf.i.i, ptr noundef nonnull %sock.i.i) #18
  br label %udp_sock_create.exit.i.i

udp_sock_create.exit.i.i:                         ; preds = %if.then6.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %call7.i.i32.i, %if.then6.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp.i.i, label %if.then8.i.i, label %if.end10.i.i

if.then8.i.i:                                     ; preds = %udp_sock_create.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %28 = inttoptr i32 %retval.0.i.i.i to ptr
  br label %geneve_create_sock.exit.i

if.end10.i.i:                                     ; preds = %udp_sock_create.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sock.i.i, align 4
  %sk.i.i131 = getelementptr inbounds %struct.socket, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %sk.i.i131 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk.i.i131, align 16
  %accept_udp_l4.i.i.i = getelementptr inbounds %struct.udp_sock, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %accept_udp_l4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i.i = load i8, ptr %accept_udp_l4.i.i.i, align 1
  %bf.set4.i.i.i = or i8 %bf.load.i.i.i, 12
  store i8 %bf.set4.i.i.i, ptr %accept_udp_l4.i.i.i, align 1
  br label %geneve_create_sock.exit.i

geneve_create_sock.exit.i:                        ; preds = %if.end10.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %28, %if.then8.i.i ], [ %30, %if.end10.i.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %udp_conf.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i.i) #18
  %cmp.i33.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %geneve_create_sock.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #18
  br label %geneve_socket_create.exit

if.end10.i:                                       ; preds = %geneve_create_sock.exit.i
  %sock11.i = getelementptr inbounds %struct.geneve_sock, ptr %call7.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %sock11.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i.i, ptr %sock11.i, align 4
  %refcnt.i = getelementptr inbounds %struct.geneve_sock, ptr %call7.i.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %refcnt.i, align 8
  %uglygep.i = getelementptr i8, ptr %call7.i.i.i, i32 28
  %36 = call ptr @memset(ptr %uglygep.i, i32 0, i32 4096)
  call void @udp_tunnel_notify_add_rx_port(ptr noundef %retval.0.i.i, i16 noundef zeroext 2) #18
  %37 = getelementptr inbounds i8, ptr %tunnel_cfg.i, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 16777216, ptr %37, align 4
  %39 = ptrtoint ptr %tunnel_cfg.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i, ptr %tunnel_cfg.i, align 4
  %gro_receive.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 5
  %40 = ptrtoint ptr %gro_receive.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @geneve_gro_receive, ptr %gro_receive.i, align 4
  %gro_complete.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 6
  %41 = ptrtoint ptr %gro_complete.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @geneve_gro_complete, ptr %gro_complete.i, align 4
  %encap_rcv.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 2
  %42 = ptrtoint ptr %encap_rcv.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @geneve_udp_encap_recv, ptr %encap_rcv.i, align 4
  %encap_err_lookup.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 3
  %43 = ptrtoint ptr %encap_err_lookup.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @geneve_udp_encap_err_lookup, ptr %encap_err_lookup.i, align 4
  %encap_destroy.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 4
  %44 = ptrtoint ptr %encap_destroy.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %encap_destroy.i, align 4
  call void @setup_udp_tunnel_sock(ptr noundef %1, ptr noundef %retval.0.i.i, ptr noundef nonnull %tunnel_cfg.i) #18
  %list.i = getelementptr inbounds %struct.geneve_sock, ptr %call7.i.i.i, i32 0, i32 1
  %sock_list.i132 = getelementptr inbounds %struct.geneve_net, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %sock_list.i132 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sock_list.i132, align 4
  %call.i.i34.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %sock_list.i132, ptr noundef %46) #18
  br i1 %call.i.i34.i, label %if.end.i.i.i, label %if.end10.i.geneve_socket_create.exit_crit_edge

if.end10.i.geneve_socket_create.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve_socket_create.exit

if.end.i.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.geneve_sock, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %sock_list.i132, ptr %prev3.i.i.i, align 8
  %50 = ptrtoint ptr %sock_list.i132 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %list.i, ptr %sock_list.i132, align 4
  br label %geneve_socket_create.exit

geneve_socket_create.exit:                        ; preds = %if.end.i.i.i, %if.end10.i.geneve_socket_create.exit_crit_edge, %if.then8.i
  %retval.0.i133 = phi ptr [ %retval.0.i.i, %if.then8.i ], [ %call7.i.i.i, %if.end10.i.geneve_socket_create.exit_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tunnel_cfg.i) #18
  %cmp.i = icmp ugt ptr %retval.0.i133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %geneve_socket_create.exit.if.then13_crit_edge, label %geneve_socket_create.exit.out_crit_edge

geneve_socket_create.exit.out_crit_edge:          ; preds = %geneve_socket_create.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

geneve_socket_create.exit.if.then13_crit_edge:    ; preds = %geneve_socket_create.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then13

if.then13:                                        ; preds = %geneve_socket_create.exit.if.then13_crit_edge, %geneve_socket_create.exit.thread
  %retval.0.i133141 = phi ptr [ inttoptr (i32 -12 to ptr), %geneve_socket_create.exit.thread ], [ %retval.0.i133, %geneve_socket_create.exit.if.then13_crit_edge ]
  %51 = ptrtoint ptr %retval.0.i133141 to i32
  br label %cleanup

out:                                              ; preds = %geneve_socket_create.exit.out_crit_edge, %if.then
  %gs.0 = phi ptr [ %gs.0.le.i, %if.then ], [ %retval.0.i133, %geneve_socket_create.exit.out_crit_edge ]
  %collect_md = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %collect_md, align 8, !range !177
  %54 = ptrtoint ptr %gs.0 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %gs.0, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18
  br i1 %ipv6, label %do.body, label %do.body57

do.body:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  %sock644 = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 5
  %55 = ptrtoint ptr %sock644 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %gs.0, ptr %sock644, align 4
  %hlist6 = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 1
  br label %if.end98

do.body57:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  %sock486 = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 4
  %56 = ptrtoint ptr %sock486 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %gs.0, ptr %sock486, align 8
  br label %if.end98

if.end98:                                         ; preds = %do.body57, %do.body
  %node.0 = phi ptr [ %hlist6, %do.body ], [ %geneve, %do.body57 ]
  %geneve99 = getelementptr inbounds %struct.geneve_dev_node, ptr %node.0, i32 0, i32 1
  %57 = ptrtoint ptr %geneve99 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %geneve, ptr %geneve99, align 4
  %58 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %cfg, align 8
  %60 = trunc i64 %59 to i32
  %or6.i = and i32 %60, 16777215
  %mul.i.i.i = mul i32 %or6.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx = getelementptr %struct.geneve_sock, ptr %gs.0, i32 0, i32 5, i32 %shr.i.i
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %63 = ptrtoint ptr %node.0 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %node.0, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %node.0, i32 0, i32 1
  %64 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !189
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %node.0, ptr %arrayidx, align 4
  %tobool.not.i136 = icmp eq ptr %62, null
  br i1 %tobool.not.i136, label %if.end98.cleanup_crit_edge, label %do.body49.i

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body49.i:                                      ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #20
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %62, i32 0, i32 1
  %66 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %node.0, ptr %pprev51.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body49.i, %if.end98.cleanup_crit_edge, %if.then13
  %retval.0 = phi i32 [ %51, %if.then13 ], [ 0, %if.end98.cleanup_crit_edge ], [ 0, %do.body49.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @geneve_sock_release(ptr noundef %geneve) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #18
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b104 = load i1, ptr @geneve_sock_release.__warned, align 1
  br i1 %.b104, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_sock_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 612, ptr noundef nonnull @.str.18) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %sock4 = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 4
  %0 = ptrtoint ptr %sock4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock4, align 8
  %call5 = tail call zeroext i1 @lockdep_rtnl_is_held() #18
  br i1 %call5, label %do.end.do.end14_crit_edge, label %land.lhs.true6

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end14

land.lhs.true6:                                   ; preds = %do.end
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b102103 = load i1, ptr @geneve_sock_release.__warned.19, align 1
  br i1 %.b102103, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_sock_release.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 614, ptr noundef nonnull @.str.18) #18
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true6.do.end14_crit_edge, %do.end.do.end14_crit_edge
  %sock6 = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 5
  %2 = ptrtoint ptr %sock6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock6, align 4
  store volatile ptr null, ptr %sock6, align 4
  %4 = ptrtoint ptr %sock4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %sock4, align 8
  tail call void @synchronize_net() #18
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end14.__geneve_sock_release.exit_crit_edge, label %lor.lhs.false.i

do.end14.__geneve_sock_release.exit_crit_edge:    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %__geneve_sock_release.exit

lor.lhs.false.i:                                  ; preds = %do.end14
  %refcnt.i = getelementptr inbounds %struct.geneve_sock, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcnt.i, align 4
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.__geneve_sock_release.exit_crit_edge

lor.lhs.false.i.__geneve_sock_release.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__geneve_sock_release.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %list.i = getelementptr inbounds %struct.geneve_sock, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i = getelementptr inbounds %struct.geneve_sock, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.geneve_sock, ptr %1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %sock.i = getelementptr inbounds %struct.geneve_sock, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sock.i, align 4
  tail call void @udp_tunnel_notify_del_rx_port(ptr noundef %16, i16 noundef zeroext 2) #18
  %17 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sock.i, align 4
  tail call void @udp_tunnel_sock_release(ptr noundef %18) #18
  %rcu.i = getelementptr inbounds %struct.geneve_sock, ptr %1, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 16 to ptr)) #18
  br label %__geneve_sock_release.exit

__geneve_sock_release.exit:                       ; preds = %list_del.exit.i, %lor.lhs.false.i.__geneve_sock_release.exit_crit_edge, %do.end14.__geneve_sock_release.exit_crit_edge
  %tobool.not.i105 = icmp eq ptr %3, null
  br i1 %tobool.not.i105, label %__geneve_sock_release.exit.__geneve_sock_release.exit120_crit_edge, label %lor.lhs.false.i109

__geneve_sock_release.exit.__geneve_sock_release.exit120_crit_edge: ; preds = %__geneve_sock_release.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %__geneve_sock_release.exit120

lor.lhs.false.i109:                               ; preds = %__geneve_sock_release.exit
  %refcnt.i106 = getelementptr inbounds %struct.geneve_sock, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %refcnt.i106 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %refcnt.i106, align 4
  %dec.i107 = add i32 %20, -1
  store i32 %dec.i107, ptr %refcnt.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i107)
  %tobool1.not.i108 = icmp eq i32 %dec.i107, 0
  br i1 %tobool1.not.i108, label %if.end.i112, label %lor.lhs.false.i109.__geneve_sock_release.exit120_crit_edge

lor.lhs.false.i109.__geneve_sock_release.exit120_crit_edge: ; preds = %lor.lhs.false.i109
  call void @__sanitizer_cov_trace_pc() #20
  br label %__geneve_sock_release.exit120

if.end.i112:                                      ; preds = %lor.lhs.false.i109
  %list.i110 = getelementptr inbounds %struct.geneve_sock, ptr %3, i32 0, i32 1
  %call.i.i.i111 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i110) #18
  br i1 %call.i.i.i111, label %if.end.i.i.i115, label %if.end.i112.list_del.exit.i119_crit_edge

if.end.i112.list_del.exit.i119_crit_edge:         ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit.i119

if.end.i.i.i115:                                  ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i113 = getelementptr inbounds %struct.geneve_sock, ptr %3, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i113, align 4
  %23 = ptrtoint ptr %list.i110 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list.i110, align 4
  %prev1.i.i.i.i114 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i114, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit.i119

list_del.exit.i119:                               ; preds = %if.end.i.i.i115, %if.end.i112.list_del.exit.i119_crit_edge
  %27 = ptrtoint ptr %list.i110 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i110, align 4
  %prev.i.i116 = getelementptr inbounds %struct.geneve_sock, ptr %3, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i.i116 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i116, align 4
  %sock.i117 = getelementptr inbounds %struct.geneve_sock, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %sock.i117 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sock.i117, align 4
  tail call void @udp_tunnel_notify_del_rx_port(ptr noundef %30, i16 noundef zeroext 2) #18
  %31 = ptrtoint ptr %sock.i117 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sock.i117, align 4
  tail call void @udp_tunnel_sock_release(ptr noundef %32) #18
  %rcu.i118 = getelementptr inbounds %struct.geneve_sock, ptr %3, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i118, ptr noundef nonnull inttoptr (i32 16 to ptr)) #18
  br label %__geneve_sock_release.exit120

__geneve_sock_release.exit120:                    ; preds = %list_del.exit.i119, %lor.lhs.false.i109.__geneve_sock_release.exit120_crit_edge, %__geneve_sock_release.exit.__geneve_sock_release.exit120_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !185
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.5) #18
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !186
  %8 = tail call i32 @llvm.read_register.i32(metadata !167) #18
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_notify_add_rx_port(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @geneve_gro_receive(ptr nocapture noundef readnone %sk, ptr noundef %head, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_offset.i, align 8
  %add = add i32 %1, 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %frag0_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frag0_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i.not = icmp ult i32 %5, %add
  br i1 %cmp.i.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then:                                          ; preds = %entry
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.skb_gro_header_slow.exit_crit_edge, !prof !183

if.then.skb_gro_header_slow.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_gro_header_slow.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3.i.i = icmp ult i32 %7, %add
  br i1 %cmp3.i.i, label %if.end.i.i.if.then.i145_crit_edge, label %pskb_may_pull.exit.i, !prof !183

if.end.i.i.if.then.i145_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i145

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #18
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.if.then.i145_crit_edge, label %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge

pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_gro_header_slow.exit

pskb_may_pull.exit.i.if.then.i145_crit_edge:      ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i145

skb_gro_header_slow.exit:                         ; preds = %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge, %if.then.skb_gro_header_slow.exit_crit_edge
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cb.i, align 8
  %11 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %frag0_len.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %13, i32 %1
  %tobool4.not = icmp eq ptr %add.ptr.i116, null
  br i1 %tobool4.not, label %skb_gro_header_slow.exit.if.then.i145_crit_edge, label %skb_gro_header_slow.exit.if.end9_crit_edge, !prof !183

skb_gro_header_slow.exit.if.end9_crit_edge:       ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

skb_gro_header_slow.exit.if.then.i145_crit_edge:  ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i145

if.end9:                                          ; preds = %skb_gro_header_slow.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  %gh.0 = phi ptr [ %add.ptr.i116, %skb_gro_header_slow.exit.if.end9_crit_edge ], [ %add.ptr.i, %entry.if.end9_crit_edge ]
  %14 = ptrtoint ptr %gh.0 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %gh.0, align 2
  %15 = and i16 %bf.load, -16256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %if.end17, label %if.end9.if.then.i145_crit_edge

if.end9.if.then.i145_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i145

if.end17:                                         ; preds = %if.end9
  %17 = lshr i16 %bf.load, 6
  %18 = and i16 %17, 252
  %narrow.i = add nuw nsw i16 %18, 8
  %add.i = zext i16 %narrow.i to i32
  %add19 = add i32 %1, %add.i
  %19 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frag0_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add19)
  %cmp.i118.not = icmp ult i32 %20, %add19
  br i1 %cmp.i118.not, label %if.then22, label %if.end17.if.end35_crit_edge

if.end17.if.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

if.then22:                                        ; preds = %if.end17
  %len.i.i.i120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i.i120, align 4
  %data_len.i.i.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i.i121, align 8
  %sub.i.i.i122 = sub i32 %22, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %sub.i.i.i122)
  %cmp.not.i.i123 = icmp ugt i32 %add19, %sub.i.i.i122
  br i1 %cmp.not.i.i123, label %if.end.i.i125, label %if.then22.skb_gro_header_slow.exit136_crit_edge, !prof !183

if.then22.skb_gro_header_slow.exit136_crit_edge:  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_gro_header_slow.exit136

if.end.i.i125:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add19)
  %cmp3.i.i124 = icmp ult i32 %22, %add19
  br i1 %cmp3.i.i124, label %if.end.i.i125.if.then.i145_crit_edge, label %pskb_may_pull.exit.i129, !prof !183

if.end.i.i125.if.then.i145_crit_edge:             ; preds = %if.end.i.i125
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i145

pskb_may_pull.exit.i129:                          ; preds = %if.end.i.i125
  %sub.i.i126 = sub i32 %add19, %sub.i.i.i122
  %call13.i.i127 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i126) #18
  %cmp14.i.not.i128 = icmp eq ptr %call13.i.i127, null
  br i1 %cmp14.i.not.i128, label %pskb_may_pull.exit.i129.if.then.i145_crit_edge, label %pskb_may_pull.exit.i129.skb_gro_header_slow.exit136_crit_edge

pskb_may_pull.exit.i129.skb_gro_header_slow.exit136_crit_edge: ; preds = %pskb_may_pull.exit.i129
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_gro_header_slow.exit136

pskb_may_pull.exit.i129.if.then.i145_crit_edge:   ; preds = %pskb_may_pull.exit.i129
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i145

skb_gro_header_slow.exit136:                      ; preds = %pskb_may_pull.exit.i129.skb_gro_header_slow.exit136_crit_edge, %if.then22.skb_gro_header_slow.exit136_crit_edge
  %25 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %cb.i, align 8
  %26 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %frag0_len.i, align 4
  %data.i132 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i132 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i132, align 4
  %add.ptr.i133 = getelementptr i8, ptr %28, i32 %1
  %tobool24.not = icmp eq ptr %add.ptr.i133, null
  br i1 %tobool24.not, label %skb_gro_header_slow.exit136.if.then.i145_crit_edge, label %skb_gro_header_slow.exit136.if.end35_crit_edge, !prof !183

skb_gro_header_slow.exit136.if.end35_crit_edge:   ; preds = %skb_gro_header_slow.exit136
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

skb_gro_header_slow.exit136.if.then.i145_crit_edge: ; preds = %skb_gro_header_slow.exit136
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i145

if.end35:                                         ; preds = %skb_gro_header_slow.exit136.if.end35_crit_edge, %if.end17.if.end35_crit_edge
  %gh.1 = phi ptr [ %add.ptr.i133, %skb_gro_header_slow.exit136.if.end35_crit_edge ], [ %gh.0, %if.end17.if.end35_crit_edge ]
  %29 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %29)
  %p.0157 = load ptr, ptr %head, align 4
  %cmp36.not158 = icmp eq ptr %p.0157, %head
  br i1 %cmp36.not158, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35.for.body_crit_edge
  %p.0159 = phi ptr [ %p.0, %for.inc.for.body_crit_edge ], [ %p.0157, %if.end35.for.body_crit_edge ]
  %same_flow = getelementptr inbounds %struct.sk_buff, ptr %p.0159, i32 0, i32 3, i32 26
  %30 = ptrtoint ptr %same_flow to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load40 = load i16, ptr %same_flow, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load40)
  %tobool43.not = icmp sgt i16 %bf.load40, -1
  br i1 %tobool43.not, label %for.body.for.inc_crit_edge, label %if.end45

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end45:                                         ; preds = %for.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %p.0159, i32 0, i32 19
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %add.ptr46 = getelementptr i8, ptr %32, i32 %1
  %33 = ptrtoint ptr %gh.1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load47 = load i16, ptr %gh.1, align 2
  %34 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load52 = load i16, ptr %add.ptr46, align 2
  %bf.lshr48115 = xor i16 %bf.load52, %bf.load47
  %35 = and i16 %bf.lshr48115, 16128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp57.not = icmp eq i16 %35, 0
  br i1 %cmp57.not, label %lor.lhs.false59, label %if.end45.if.then62_crit_edge

if.end45.if.then62_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then62

lor.lhs.false59:                                  ; preds = %if.end45
  %bcmp = tail call i32 @bcmp(ptr noundef %gh.1, ptr noundef %add.ptr46, i32 %add.i) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool61.not = icmp eq i32 %bcmp, 0
  br i1 %tobool61.not, label %lor.lhs.false59.for.inc_crit_edge, label %lor.lhs.false59.if.then62_crit_edge

lor.lhs.false59.if.then62_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then62

lor.lhs.false59.for.inc_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then62:                                        ; preds = %lor.lhs.false59.if.then62_crit_edge, %if.end45.if.then62_crit_edge
  %bf.clear67 = and i16 %bf.load40, 32767
  %36 = ptrtoint ptr %same_flow to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %bf.clear67, ptr %same_flow, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then62, %lor.lhs.false59.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %37 = ptrtoint ptr %p.0159 to i32
  call void @__asan_load4_noabort(i32 %37)
  %p.0 = load ptr, ptr %p.0159, align 4
  %cmp36.not = icmp eq ptr %p.0, %head
  br i1 %cmp36.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end35.for.end_crit_edge
  %proto_type = getelementptr inbounds %struct.genevehdr, ptr %gh.1, i32 0, i32 1
  %38 = ptrtoint ptr %proto_type to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %proto_type, align 2
  %call73 = tail call ptr @gro_find_receive_by_type(i16 noundef zeroext %39) #18
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %for.end.if.then.i145_crit_edge, label %if.end76

for.end.if.then.i145_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i145

if.end76:                                         ; preds = %for.end
  %40 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_offset.i, align 8
  %add.i138 = add i32 %41, %add.i
  store i32 %add.i138, ptr %data_offset.i, align 8
  %csum_valid.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %42 = ptrtoint ptr %csum_valid.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i139 = load i16, ptr %csum_valid.i, align 2
  %43 = and i16 %bf.load.i139, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i = icmp eq i16 %43, 0
  br i1 %tobool.not.i, label %if.end76.skb_gro_postpull_rcsum.exit_crit_edge, label %if.then.i

if.end76.skb_gro_postpull_rcsum.exit_crit_edge:   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_gro_postpull_rcsum.exit

if.then.i:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #20
  %csum.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %44 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %csum.i, align 4
  %sub.i.i140 = sub i32 0, %45
  %call3.i = tail call i32 @csum_partial(ptr noundef %gh.1, i32 noundef %add.i, i32 noundef %sub.i.i140) #18
  %sub.i11.i = sub i32 0, %call3.i
  %46 = ptrtoint ptr %csum.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i11.i, ptr %csum.i, align 4
  br label %skb_gro_postpull_rcsum.exit

skb_gro_postpull_rcsum.exit:                      ; preds = %if.then.i, %if.end76.skb_gro_postpull_rcsum.exit_crit_edge
  %gro_receive = getelementptr inbounds %struct.packet_offload, ptr %call73, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %gro_receive to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gro_receive, align 4
  %49 = ptrtoint ptr %csum_valid.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i.i = load i16, ptr %csum_valid.i, align 2
  %50 = trunc i16 %bf.load.i.i to i8
  %51 = lshr i8 %50, 1
  %inc.i.i = add nuw i8 %51, 1
  %52 = and i8 %inc.i.i, 15
  %53 = shl nuw nsw i8 %52, 1
  %bf.shl.i.i = zext i8 %53 to i16
  %bf.clear2.i.i = and i16 %bf.load.i.i, -31
  %bf.set.i.i = or i16 %bf.clear2.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %csum_valid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %52)
  %cmp.i.not.i = icmp eq i8 %52, 15
  br i1 %cmp.i.not.i, label %if.then.i142, label %out, !prof !183

if.then.i142:                                     ; preds = %skb_gro_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #20
  %flush.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %54 = ptrtoint ptr %flush.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flush.i, align 4
  %56 = or i16 %55, 1
  store i16 %56, ptr %flush.i, align 4
  br label %if.then.i145

out:                                              ; preds = %skb_gro_postpull_rcsum.exit
  %call5.i = tail call ptr %48(ptr noundef %head, ptr noundef %skb) #18
  %cmp.not.i = icmp eq ptr %call5.i, inttoptr (i32 -115 to ptr)
  br i1 %cmp.not.i, label %out.skb_gro_flush_final.exit_crit_edge, label %out.if.then.i145_crit_edge

out.if.then.i145_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i145

out.skb_gro_flush_final.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_gro_flush_final.exit

if.then.i145:                                     ; preds = %out.if.then.i145_crit_edge, %if.then.i142, %for.end.if.then.i145_crit_edge, %skb_gro_header_slow.exit136.if.then.i145_crit_edge, %pskb_may_pull.exit.i129.if.then.i145_crit_edge, %if.end.i.i125.if.then.i145_crit_edge, %if.end9.if.then.i145_crit_edge, %skb_gro_header_slow.exit.if.then.i145_crit_edge, %pskb_may_pull.exit.i.if.then.i145_crit_edge, %if.end.i.i.if.then.i145_crit_edge
  %pp.0155 = phi ptr [ %call5.i, %out.if.then.i145_crit_edge ], [ null, %skb_gro_header_slow.exit.if.then.i145_crit_edge ], [ null, %if.end9.if.then.i145_crit_edge ], [ null, %skb_gro_header_slow.exit136.if.then.i145_crit_edge ], [ null, %for.end.if.then.i145_crit_edge ], [ null, %if.then.i142 ], [ null, %pskb_may_pull.exit.i.if.then.i145_crit_edge ], [ null, %if.end.i.i.if.then.i145_crit_edge ], [ null, %pskb_may_pull.exit.i129.if.then.i145_crit_edge ], [ null, %if.end.i.i125.if.then.i145_crit_edge ]
  %flush.0154 = phi i16 [ 0, %out.if.then.i145_crit_edge ], [ 1, %skb_gro_header_slow.exit.if.then.i145_crit_edge ], [ 1, %if.end9.if.then.i145_crit_edge ], [ 1, %skb_gro_header_slow.exit136.if.then.i145_crit_edge ], [ 1, %for.end.if.then.i145_crit_edge ], [ 0, %if.then.i142 ], [ 1, %pskb_may_pull.exit.i.if.then.i145_crit_edge ], [ 1, %if.end.i.i.if.then.i145_crit_edge ], [ 1, %pskb_may_pull.exit.i129.if.then.i145_crit_edge ], [ 1, %if.end.i.i125.if.then.i145_crit_edge ]
  %flush1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %57 = ptrtoint ptr %flush1.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flush1.i, align 4
  %conv2.i = or i16 %58, %flush.0154
  store i16 %conv2.i, ptr %flush1.i, align 4
  br label %skb_gro_flush_final.exit

skb_gro_flush_final.exit:                         ; preds = %if.then.i145, %out.skb_gro_flush_final.exit_crit_edge
  %pp.0156 = phi ptr [ inttoptr (i32 -115 to ptr), %out.skb_gro_flush_final.exit_crit_edge ], [ %pp.0155, %if.then.i145 ]
  ret ptr %pp.0156
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_gro_complete(ptr nocapture noundef readnone %sk, ptr noundef %skb, i32 noundef %nhoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %nhoff
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %add.ptr, align 2
  %3 = lshr i16 %bf.load.i, 6
  %4 = and i16 %3, 252
  %narrow.i = add nuw nsw i16 %4, 8
  %proto_type = getelementptr inbounds %struct.genevehdr, ptr %add.ptr, i32 0, i32 1
  %5 = ptrtoint ptr %proto_type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %proto_type, align 2
  %call1 = tail call ptr @gro_find_complete_by_type(i16 noundef zeroext %6) #18
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.i = zext i16 %narrow.i to i32
  %gro_complete = getelementptr inbounds %struct.packet_offload, ptr %call1, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %gro_complete to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gro_complete, align 4
  %add = add i32 %add.i, %nhoff
  %call2 = tail call i32 %8(ptr noundef %skb, i32 noundef %add) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call2, %if.then ], [ -38, %entry.if.end_crit_edge ]
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %13 = trunc i32 %nhoff to i16
  %14 = add i16 %narrow.i, %13
  %conv1.i = add i16 %14, %conv.i.i
  %15 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv1.i, ptr %inner_mac_header.i.i, align 2
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_udp_encap_recv(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 16
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !183

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp3.i = icmp ult i32 %1, 16
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !183

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 16, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #18
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !183

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %add.ptr.i = getelementptr %struct.udphdr, ptr %add.ptr.i.i.i, i32 1
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 16384
  br i1 %cmp.not, label %if.end12, label %if.end.drop_crit_edge, !prof !179

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end12:                                         ; preds = %if.end
  %proto_type = getelementptr inbounds %struct.genevehdr, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %proto_type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %proto_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %10)
  %cmp14.not = icmp eq i16 %10, 25944
  br i1 %cmp14.not, label %if.end23, label %if.end12.drop_crit_edge, !prof !179

if.end12.drop_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end23:                                         ; preds = %if.end12
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %11 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %sk_user_data, align 4
  %call25 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true, label %if.end23.do.end34_crit_edge

if.end23.do.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end34

land.lhs.true:                                    ; preds = %if.end23
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true.do.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true
  %.b74 = load i1, ptr @geneve_udp_encap_recv.__warned, align 1
  br i1 %.b74, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_udp_encap_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 362, ptr noundef nonnull @.str.5) #18
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true.do.end34_crit_edge, %if.end23.do.end34_crit_edge
  %13 = ptrtoint ptr %12 to i32
  %and = and i32 %13, -4
  %14 = inttoptr i32 %and to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %do.end34.drop_crit_edge, label %if.end39

do.end34.drop_crit_edge:                          ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end39:                                         ; preds = %do.end34
  %sock.i.i = getelementptr inbounds %struct.geneve_sock, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %sock.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sock.i.i, align 4
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk.i.i, align 16
  %skc_family.i.i = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %skc_family.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %skc_family.i.i, align 8
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %20, label %if.end39.drop_crit_edge [
    i16 2, label %if.then.i
    i16 10, label %if.then12.i
  ]

if.end39.drop_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.then.i:                                        ; preds = %if.end39
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %14, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i.if.end.i78_crit_edge

if.then.i.if.end.i78_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i78

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i76 = zext i16 %27 to i32
  %add.ptr.i.i.i77 = getelementptr i8, ptr %25, i32 %conv.i.i.i76
  %28 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %29 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 %conv.i.i.i.i
  %add.ptr.i.i = getelementptr %struct.udphdr, ptr %add.ptr.i.i.i.i, i32 1
  %vni5.i = getelementptr inbounds %struct.genevehdr, ptr %add.ptr.i.i, i32 0, i32 2
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i77, i32 0, i32 8
  %30 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %saddr.i, align 4
  br label %if.end.i78

if.end.i78:                                       ; preds = %if.else.i, %if.then.i.if.end.i78_crit_edge
  %vni.0.i = phi ptr [ %vni5.i, %if.else.i ], [ @geneve_lookup_skb.zero_vni, %if.then.i.if.end.i78_crit_edge ]
  %addr.0.i = phi i32 [ %31, %if.else.i ], [ 0, %if.then.i.if.end.i78_crit_edge ]
  %call6.i = tail call fastcc ptr @geneve_lookup(ptr noundef nonnull %14, i32 noundef %addr.0.i, ptr noundef %vni.0.i) #18
  br label %geneve_lookup_skb.exit

if.then12.i:                                      ; preds = %if.end39
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %14, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool15.not.i = icmp eq i8 %33, 0
  br i1 %tobool15.not.i, label %if.else17.i, label %if.then12.i.if.end22.i_crit_edge

if.then12.i.if.end22.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22.i

if.else17.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i44.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i.i44.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i44.i, align 4
  %conv.i.i45.i = zext i16 %37 to i32
  %add.ptr.i.i46.i = getelementptr i8, ptr %35, i32 %conv.i.i45.i
  %38 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i49.i = zext i16 %39 to i32
  %add.ptr.i.i.i50.i = getelementptr i8, ptr %35, i32 %conv.i.i.i49.i
  %add.ptr.i51.i = getelementptr %struct.udphdr, ptr %add.ptr.i.i.i50.i, i32 1
  %vni19.i = getelementptr inbounds %struct.genevehdr, ptr %add.ptr.i51.i, i32 0, i32 2
  %saddr21.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i46.i, i32 0, i32 5
  %40 = ptrtoint ptr %saddr21.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %addr6.sroa.0.0.copyload27.i = load i32, ptr %saddr21.i, align 4
  %addr6.sroa.6.0.saddr21.sroa_idx.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i46.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %addr6.sroa.6.0.saddr21.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %addr6.sroa.6.0.copyload28.i = load i32, ptr %addr6.sroa.6.0.saddr21.sroa_idx.i, align 4
  %addr6.sroa.8.0.saddr21.sroa_idx.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i46.i, i32 0, i32 5, i32 0, i32 0, i32 2
  %42 = ptrtoint ptr %addr6.sroa.8.0.saddr21.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %addr6.sroa.8.0.copyload29.i = load i32, ptr %addr6.sroa.8.0.saddr21.sroa_idx.i, align 4
  %addr6.sroa.10.0.saddr21.sroa_idx.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i46.i, i32 0, i32 5, i32 0, i32 0, i32 3
  %43 = ptrtoint ptr %addr6.sroa.10.0.saddr21.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %addr6.sroa.10.0.copyload30.i = load i32, ptr %addr6.sroa.10.0.saddr21.sroa_idx.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else17.i, %if.then12.i.if.end22.i_crit_edge
  %vni.1.i = phi ptr [ %vni19.i, %if.else17.i ], [ @geneve_lookup_skb.zero_vni, %if.then12.i.if.end22.i_crit_edge ]
  %addr6.sroa.10.0.i = phi i32 [ %addr6.sroa.10.0.copyload30.i, %if.else17.i ], [ 0, %if.then12.i.if.end22.i_crit_edge ]
  %addr6.sroa.8.0.i = phi i32 [ %addr6.sroa.8.0.copyload29.i, %if.else17.i ], [ 0, %if.then12.i.if.end22.i_crit_edge ]
  %addr6.sroa.6.0.i = phi i32 [ %addr6.sroa.6.0.copyload28.i, %if.else17.i ], [ 0, %if.then12.i.if.end22.i_crit_edge ]
  %addr6.sroa.0.0.i = phi i32 [ %addr6.sroa.0.0.copyload27.i, %if.else17.i ], [ 0, %if.then12.i.if.end22.i_crit_edge ]
  %.fca.0.insert.i = insertvalue [4 x i32] poison, i32 %addr6.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue [4 x i32] %.fca.0.insert.i, i32 %addr6.sroa.6.0.i, 1
  %.fca.2.insert.i = insertvalue [4 x i32] %.fca.1.insert.i, i32 %addr6.sroa.8.0.i, 2
  %.fca.3.insert.i = insertvalue [4 x i32] %.fca.2.insert.i, i32 %addr6.sroa.10.0.i, 3
  %call24.i = tail call fastcc ptr @geneve6_lookup(ptr noundef nonnull %14, [4 x i32] %.fca.3.insert.i, ptr noundef %vni.1.i) #18
  br label %geneve_lookup_skb.exit

geneve_lookup_skb.exit:                           ; preds = %if.end22.i, %if.end.i78
  %retval.0.i79 = phi ptr [ %call6.i, %if.end.i78 ], [ %call24.i, %if.end22.i ]
  %tobool41.not = icmp eq ptr %retval.0.i79, null
  br i1 %tobool41.not, label %geneve_lookup_skb.exit.drop_crit_edge, label %if.end43

geneve_lookup_skb.exit.drop_crit_edge:            ; preds = %geneve_lookup_skb.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop

if.end43:                                         ; preds = %geneve_lookup_skb.exit
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load44 = load i16, ptr %add.ptr.i, align 2
  %45 = lshr i16 %bf.load44, 6
  %46 = and i16 %45, 252
  %narrow = add nuw nsw i16 %46, 16
  %add = zext i16 %narrow to i32
  %net = getelementptr inbounds %struct.geneve_dev, ptr %retval.0.i79, i32 0, i32 2
  %47 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net, align 8
  %dev = getelementptr inbounds %struct.geneve_dev, ptr %retval.0.i79, i32 0, i32 3
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 127
  %51 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nd_net.i, align 4
  %cmp.i = icmp ne ptr %48, %52
  %call.i = tail call i32 @__iptunnel_pull_header(ptr noundef %skb, i32 noundef %add, i16 noundef zeroext 25944, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool54.not = icmp eq i32 %call.i, 0
  br i1 %tobool54.not, label %if.end57, label %if.then55

if.then55:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 6
  %55 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %56, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %drop

if.end57:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @geneve_rx(ptr noundef nonnull %retval.0.i79, ptr noundef nonnull %14, ptr noundef %skb)
  br label %cleanup

drop:                                             ; preds = %if.then55, %geneve_lookup_skb.exit.drop_crit_edge, %if.end39.drop_crit_edge, %do.end34.drop_crit_edge, %if.end12.drop_crit_edge, %if.end.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end57
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_udp_encap_err_lookup(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  %zero_vni = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %zero_vni) #18
  %0 = call ptr @memset(ptr %zero_vni, i32 0, i32 3)
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
  %add = add i32 %sub.ptr.sub.i, 16
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !183

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp3.i = icmp ult i32 %8, %add
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !183

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #18
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %13 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i = zext i16 %14 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %conv.i.i.i
  %add.ptr.i = getelementptr %struct.udphdr, ptr %add.ptr.i.i.i, i32 1
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 16384
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %proto_type = getelementptr inbounds %struct.genevehdr, ptr %add.ptr.i, i32 0, i32 1
  %16 = ptrtoint ptr %proto_type to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %proto_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %17)
  %cmp7.not = icmp eq i16 %17, 25944
  br i1 %cmp7.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %18 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %sk_user_data, align 4
  %call12 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end10.do.end20_crit_edge

if.end10.do.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end20

land.lhs.true:                                    ; preds = %if.end10
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end20_crit_edge, label %land.lhs.true15

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end20

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b77 = load i1, ptr @geneve_udp_encap_err_lookup.__warned, align 1
  br i1 %.b77, label %land.lhs.true15.do.end20_crit_edge, label %if.then17

land.lhs.true15.do.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end20

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_udp_encap_err_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 405, ptr noundef nonnull @.str.5) #18
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %land.lhs.true15.do.end20_crit_edge, %land.lhs.true.do.end20_crit_edge, %if.end10.do.end20_crit_edge
  %20 = ptrtoint ptr %19 to i32
  %and = and i32 %20, -4
  %21 = inttoptr i32 %and to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.end20.cleanup_crit_edge, label %if.end25

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end25:                                         ; preds = %do.end20
  %sock.i = getelementptr inbounds %struct.geneve_sock, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk.i, align 16
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %skc_family.i, align 8
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %27, label %if.end25.cleanup_crit_edge [
    i16 2, label %if.then30
    i16 10, label %if.then45
  ]

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then30:                                        ; preds = %if.end25
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %21, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool32.not = icmp eq i8 %30, 0
  br i1 %tobool32.not, label %if.then33, label %if.then30.if.end37_crit_edge

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %33 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i79 = zext i16 %34 to i32
  %add.ptr.i.i80 = getelementptr i8, ptr %32, i32 %conv.i.i79
  %35 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i83 = zext i16 %36 to i32
  %add.ptr.i.i.i84 = getelementptr i8, ptr %32, i32 %conv.i.i.i83
  %add.ptr.i85 = getelementptr %struct.udphdr, ptr %add.ptr.i.i.i84, i32 1
  %vni35 = getelementptr inbounds %struct.genevehdr, ptr %add.ptr.i85, i32 0, i32 2
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i80, i32 0, i32 9
  %37 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %daddr, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.then30.if.end37_crit_edge
  %vni.0 = phi ptr [ %zero_vni, %if.then30.if.end37_crit_edge ], [ %vni35, %if.then33 ]
  %addr4.0 = phi i32 [ 0, %if.then30.if.end37_crit_edge ], [ %38, %if.then33 ]
  %call38 = call fastcc ptr @geneve_lookup(ptr noundef nonnull %21, i32 noundef %addr4.0, ptr noundef %vni.0)
  %tobool39.not = icmp eq ptr %call38, null
  %cond = select i1 %tobool39.not, i32 -2, i32 0
  br label %cleanup

if.then45:                                        ; preds = %if.end25
  %39 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %21, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool48.not = icmp eq i8 %40, 0
  br i1 %tobool48.not, label %if.then49, label %if.then45.if.end54_crit_edge

if.then45.if.end54_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i90 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %43 = ptrtoint ptr %network_header.i.i90 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %network_header.i.i90, align 4
  %conv.i.i91 = zext i16 %44 to i32
  %add.ptr.i.i92 = getelementptr i8, ptr %42, i32 %conv.i.i91
  %45 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i95 = zext i16 %46 to i32
  %add.ptr.i.i.i96 = getelementptr i8, ptr %42, i32 %conv.i.i.i95
  %add.ptr.i97 = getelementptr %struct.udphdr, ptr %add.ptr.i.i.i96, i32 1
  %vni51 = getelementptr inbounds %struct.genevehdr, ptr %add.ptr.i97, i32 0, i32 2
  %daddr53 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i92, i32 0, i32 6
  %47 = ptrtoint ptr %daddr53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %addr6.sroa.0.0.copyload = load i32, ptr %daddr53, align 4
  %addr6.sroa.6.0.daddr53.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i92, i32 0, i32 6, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %addr6.sroa.6.0.daddr53.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %addr6.sroa.6.0.copyload = load i32, ptr %addr6.sroa.6.0.daddr53.sroa_idx, align 4
  %addr6.sroa.8.0.daddr53.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i92, i32 0, i32 6, i32 0, i32 0, i32 2
  %49 = ptrtoint ptr %addr6.sroa.8.0.daddr53.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %addr6.sroa.8.0.copyload = load i32, ptr %addr6.sroa.8.0.daddr53.sroa_idx, align 4
  %addr6.sroa.10.0.daddr53.sroa_idx = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i92, i32 0, i32 6, i32 0, i32 0, i32 3
  %50 = ptrtoint ptr %addr6.sroa.10.0.daddr53.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %addr6.sroa.10.0.copyload = load i32, ptr %addr6.sroa.10.0.daddr53.sroa_idx, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.then45.if.end54_crit_edge
  %vni.1 = phi ptr [ %zero_vni, %if.then45.if.end54_crit_edge ], [ %vni51, %if.then49 ]
  %addr6.sroa.0.0 = phi i32 [ 0, %if.then45.if.end54_crit_edge ], [ %addr6.sroa.0.0.copyload, %if.then49 ]
  %addr6.sroa.6.0 = phi i32 [ 0, %if.then45.if.end54_crit_edge ], [ %addr6.sroa.6.0.copyload, %if.then49 ]
  %addr6.sroa.8.0 = phi i32 [ 0, %if.then45.if.end54_crit_edge ], [ %addr6.sroa.8.0.copyload, %if.then49 ]
  %addr6.sroa.10.0 = phi i32 [ 0, %if.then45.if.end54_crit_edge ], [ %addr6.sroa.10.0.copyload, %if.then49 ]
  %.fca.0.insert = insertvalue [4 x i32] poison, i32 %addr6.sroa.0.0, 0
  %.fca.1.insert = insertvalue [4 x i32] %.fca.0.insert, i32 %addr6.sroa.6.0, 1
  %.fca.2.insert = insertvalue [4 x i32] %.fca.1.insert, i32 %addr6.sroa.8.0, 2
  %.fca.3.insert = insertvalue [4 x i32] %.fca.2.insert, i32 %addr6.sroa.10.0, 3
  %call56 = call fastcc ptr @geneve6_lookup(ptr noundef nonnull %21, [4 x i32] %.fca.3.insert, ptr noundef %vni.1)
  %tobool57.not = icmp eq ptr %call56, null
  %cond58 = select i1 %tobool57.not, i32 -2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end37, %if.end25.cleanup_crit_edge, %do.end20.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end37 ], [ %cond58, %if.end54 ], [ -22, %pskb_may_pull.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -2, %do.end20.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -96, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %zero_vni) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_udp_tunnel_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gro_find_receive_by_type(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gro_find_complete_by_type(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @geneve_rx(ptr noundef %geneve, ptr nocapture noundef readonly %gs, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %vhdr.i.i.i.i212 = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
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
  %add.ptr.i = getelementptr %struct.udphdr, ptr %add.ptr.i.i.i, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ip_tunnel_metadata_cnt, ptr blockaddress(@geneve_rx, %if.then)) #18
          to label %lor.lhs.false [label %if.then], !srcloc !184

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %gs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gs, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %add.ptr.i, align 2
  %7 = shl i16 %bf.load, 2
  %8 = and i16 %7, 512
  %9 = shl i16 %bf.load, 4
  %10 = and i16 %9, 1024
  %11 = or i16 %10, %8
  %or11180 = or i16 %11, 4
  %sock.i = getelementptr inbounds %struct.geneve_sock, ptr %gs, i32 0, i32 2
  %12 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sock.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i, align 16
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %skc_family.i, align 8
  %vni = getelementptr inbounds %struct.genevehdr, ptr %add.ptr.i, i32 0, i32 2
  %18 = ptrtoint ptr %vni to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vni, align 1
  %conv.i = zext i8 %19 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr i8, ptr %vni, i32 1
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %21 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %vni, i32 2
  %22 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %23 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %conv7.i = zext i32 %or6.i to i64
  %24 = lshr i16 %bf.load, 6
  %25 = and i16 %24, 252
  %mul = zext i16 %25 to i32
  %call20 = tail call ptr @udp_tun_rx_dst(ptr noundef %skb, i16 noundef zeroext %17, i16 noundef zeroext %or11180, i64 noundef %conv7.i, i32 noundef %mul) #18
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load24 = load i16, ptr %add.ptr.i, align 2
  %27 = lshr i16 %bf.load24, 6
  %28 = and i16 %27, 252
  %conv.i182 = trunc i16 %28 to i8
  %options_len.i = getelementptr inbounds %struct.metadata_dst, ptr %call20, i32 0, i32 2, i32 0, i32 2
  %29 = ptrtoint ptr %options_len.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i182, ptr %options_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.i.not = icmp eq i16 %28, 0
  br i1 %cmp.i.not, label %if.end.if.end43_crit_edge, label %if.then.i

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %mul29 = zext i16 %28 to i32
  %options = getelementptr inbounds %struct.genevehdr, ptr %add.ptr.i, i32 0, i32 4
  %add.ptr.i.i = getelementptr %struct.metadata_dst, ptr %call20, i32 1
  %30 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %options, i32 %mul29)
  %tun_flags.i = getelementptr inbounds %struct.metadata_dst, ptr %call20, i32 0, i32 2, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tun_flags.i, align 8
  %33 = or i16 %32, 2048
  store i16 %33, ptr %tun_flags.i, align 8
  br label %if.end43

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %dev = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 3
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 36, i32 6
  br label %drop

if.else:                                          ; preds = %lor.lhs.false
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load30 = load i16, ptr %add.ptr.i, align 2
  %37 = and i16 %bf.load30, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool34.not = icmp eq i16 %37, 0
  br i1 %tobool34.not, label %if.else.if.end43_crit_edge, label %if.then35

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %dev36 = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 3
  %38 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev36, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 36, i32 13
  %40 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_frame_errors, align 4
  %inc38 = add i32 %41, 1
  store i32 %inc38, ptr %rx_frame_errors, align 4
  %42 = load ptr, ptr %dev36, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 4
  br label %drop

if.end43:                                         ; preds = %if.else.if.end43_crit_edge, %if.then.i, %if.end.if.end43_crit_edge
  %tun_dst.0 = phi ptr [ null, %if.else.if.end43_crit_edge ], [ %call20, %if.end.if.end43_crit_edge ], [ %call20, %if.then.i ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %45 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i183 = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %47 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i183, ptr %mac_header.i, align 2
  %dev44 = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 3
  %48 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev44, align 4
  %call45 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %49) #18
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %50 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %call45, ptr %protocol, align 8
  %51 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.i.i.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %53 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %trunc.i = trunc i16 %bf.lshr.i to i2
  %54 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.56)
  switch i2 %trunc.i, label %if.end43.skb_postpull_rcsum.exit_crit_edge [
    i2 -2, label %if.then.i185
    i2 -1, label %land.lhs.true.i
  ]

if.end43.skb_postpull_rcsum.exit_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_postpull_rcsum.exit

if.then.i185:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  %55 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %mac_header.i, align 2
  %conv.i.i = zext i16 %56 to i32
  %add.ptr.i.i184 = getelementptr i8, ptr %52, i32 %conv.i.i
  %57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %sub.i.i = sub i32 0, %59
  %call2.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i184, i32 noundef 14, i32 noundef %sub.i.i) #18
  %sub.i1.i = sub i32 0, %call2.i
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub.i1.i, ptr %57, align 8
  br label %skb_postpull_rcsum.exit

land.lhs.true.i:                                  ; preds = %if.end43
  %61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %61, align 8
  %conv.i.i186 = zext i16 %63 to i32
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i.neg.i.i = add i32 %conv.i.i186, %sub.ptr.rhs.cast.i.i.i
  %sub.i2.i = sub i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.lhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i2.i)
  %cmp13.i = icmp slt i32 %sub.i2.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge

land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_postpull_rcsum.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear18.i = and i16 %bf.load.i, -1537
  %66 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %bf.clear18.i, ptr %ip_summed.i, align 8
  br label %skb_postpull_rcsum.exit

skb_postpull_rcsum.exit:                          ; preds = %if.then15.i, %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge, %if.then.i185, %if.end43.skb_postpull_rcsum.exit_crit_edge
  %tobool47.not = icmp eq ptr %tun_dst.0, null
  br i1 %tobool47.not, label %skb_postpull_rcsum.exit.if.end49_crit_edge, label %if.then48

skb_postpull_rcsum.exit.if.end49_crit_edge:       ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

if.then48:                                        ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #20
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %67 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %bf.load.i188 = load i32, ptr %slow_gro.i, align 2
  %bf.set.i = or i32 %bf.load.i188, 4096
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %68 = ptrtoint ptr %tun_dst.0 to i32
  %69 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %68, ptr %69, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %skb_postpull_rcsum.exit.if.end49_crit_edge
  %71 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %head.i.i.i, align 8
  %73 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %mac_header.i, align 2
  %conv.i.i191 = zext i16 %74 to i32
  %add.ptr.i.i192 = getelementptr i8, ptr %72, i32 %conv.i.i191
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i192, i32 0, i32 1
  %75 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev44, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 86
  %77 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_addr, align 64
  %79 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %h_source, align 4
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %78, align 4
  %xor.i = xor i32 %82, %80
  %add.ptr.i193 = getelementptr i8, ptr %h_source, i32 4
  %83 = ptrtoint ptr %add.ptr.i193 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr.i193, align 2
  %add.ptr1.i = getelementptr i8, ptr %78, i32 4
  %85 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %86, %84
  %xor3.i = zext i16 %xor37.i to i32
  %or.i194 = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i194)
  %cmp.i195 = icmp eq i32 %or.i194, 0
  br i1 %cmp.i195, label %if.then54, label %if.end59

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  %rx_errors57 = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 36, i32 4
  br label %drop

if.end59:                                         ; preds = %if.end49
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %87 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %network_header.i, align 4
  %conv.i197 = zext i16 %88 to i32
  %add.ptr.i198 = getelementptr i8, ptr %72, i32 %conv.i197
  %89 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i201 = ptrtoint ptr %90 to i32
  %sub.ptr.rhs.cast.i202 = ptrtoint ptr %72 to i32
  %sub.ptr.sub.i203 = sub i32 %sub.ptr.lhs.cast.i201, %sub.ptr.rhs.cast.i202
  %conv.i204 = trunc i32 %sub.ptr.sub.i203 to i16
  store i16 %conv.i204, ptr %network_header.i, align 4
  %sock.i206 = getelementptr inbounds %struct.geneve_sock, ptr %gs, i32 0, i32 2
  %91 = ptrtoint ptr %sock.i206 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sock.i206, align 4
  %sk.i207 = getelementptr inbounds %struct.socket, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %sk.i207 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sk.i207, align 16
  %skc_family.i208 = getelementptr inbounds %struct.sock_common, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %skc_family.i208 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %skc_family.i208, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %96)
  %cmp = icmp eq i16 %96, 2
  %97 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %protocol, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %99 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %100 to i32
  br i1 %cmp, label %if.then64, label %if.else66

if.then64:                                        ; preds = %if.end59
  %101 = zext i16 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %98, label %if.then64.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %if.then64.if.then.i.i.i.i_crit_edge
    i16 -32512, label %if.then64.if.then.i.i.i.i_crit_edge291
  ]

if.then64.if.then.i.i.i.i_crit_edge291:           ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.then64.if.then.i.i.i.i_crit_edge:              ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.then64.skb_protocol.exit.i_crit_edge:          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_protocol.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then64.if.then.i.i.i.i_crit_edge, %if.then64.if.then.i.i.i.i_crit_edge291
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool.not.i.i.i.i = icmp eq i16 %100, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %100)
  %cmp.i.i.i.i = icmp ult i16 %100, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !183

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 598, i32 noundef 9, ptr noundef null) #18
  br label %if.end117

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %102 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #18
  %103 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !188
  %104 = ptrtoint ptr %102 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -1, ptr %102, align 2, !annotation !188
  %105 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %107 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %109 = add i32 %vlan_depth.1.i.i.i.i, %108
  %sub.i1.i.i.i.i.i = sub i32 %106, %109
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !179

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %110 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %111, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !183
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %112 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !183
  br i1 %112, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !183

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #18
  br label %if.end117

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #18
  %115 = zext i16 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %114, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge292
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge292: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge292
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %if.then64.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %98, %if.then64.skb_protocol.exit.i_crit_edge ], [ %114, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  %116 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %retval.2.i.i.i.i, label %skb_protocol.exit.i.if.end117_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb2.i
  ]

skb_protocol.exit.i.if.end117_crit_edge:          ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end117

sw.bb.i:                                          ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %117 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %head.i.i.i, align 8
  %119 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i210 = zext i16 %120 to i32
  %add.ptr.i.i.i211 = getelementptr i8, ptr %118, i32 %conv.i.i.i210
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i211, i32 0, i32 1
  %121 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %tos.i, align 1
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %123 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %head.i.i.i, align 8
  %125 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %network_header.i, align 4
  %conv.i.i12.i = zext i16 %126 to i32
  %add.ptr.i.i13.i = getelementptr i8, ptr %124, i32 %conv.i.i12.i
  %127 = ptrtoint ptr %add.ptr.i.i13.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %add.ptr.i.i13.i, align 2
  %129 = lshr i16 %128, 4
  %conv1.i.i = trunc i16 %129 to i8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %inner.0.i = phi i8 [ %conv1.i.i, %sw.bb2.i ], [ %122, %sw.bb.i ]
  %tos5.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i198, i32 0, i32 1
  %130 = ptrtoint ptr %tos5.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %tos5.i, align 1
  %call6.i = call fastcc i32 @INET_ECN_decapsulate(ptr noundef %skb, i8 noundef zeroext %131, i8 noundef zeroext %inner.0.i) #18
  br label %if.end68

if.else66:                                        ; preds = %if.end59
  %132 = zext i16 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %98, label %if.else66.skb_protocol.exit.i252_crit_edge [
    i16 -30552, label %if.else66.if.then.i.i.i.i217_crit_edge
    i16 -32512, label %if.else66.if.then.i.i.i.i217_crit_edge293
  ]

if.else66.if.then.i.i.i.i217_crit_edge293:        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i217

if.else66.if.then.i.i.i.i217_crit_edge:           ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i217

if.else66.skb_protocol.exit.i252_crit_edge:       ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_protocol.exit.i252

if.then.i.i.i.i217:                               ; preds = %if.else66.if.then.i.i.i.i217_crit_edge, %if.else66.if.then.i.i.i.i217_crit_edge293
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool.not.i.i.i.i216 = icmp eq i16 %100, 0
  br i1 %tobool.not.i.i.i.i216, label %if.then.i.i.i.i217.if.end26.i.i.i.i228_crit_edge, label %if.then1.i.i.i.i219

if.then.i.i.i.i217.if.end26.i.i.i.i228_crit_edge: ; preds = %if.then.i.i.i.i217
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.i.i.i.i228

if.then1.i.i.i.i219:                              ; preds = %if.then.i.i.i.i217
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %100)
  %cmp.i.i.i.i218 = icmp ult i16 %100, 4
  br i1 %cmp.i.i.i.i218, label %do.end.i.i.i.i220, label %if.end25.i.i.i.i222, !prof !183

do.end.i.i.i.i220:                                ; preds = %if.then1.i.i.i.i219
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 598, i32 noundef 9, ptr noundef null) #18
  br label %if.end117

if.end25.i.i.i.i222:                              ; preds = %if.then1.i.i.i.i219
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i.i.i221 = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i228

if.end26.i.i.i.i228:                              ; preds = %if.end25.i.i.i.i222, %if.then.i.i.i.i217.if.end26.i.i.i.i228_crit_edge
  %vlan_depth.0.i.i.i.i223 = phi i32 [ %sub.i.i.i.i221, %if.end25.i.i.i.i222 ], [ 14, %if.then.i.i.i.i217.if.end26.i.i.i.i228_crit_edge ]
  %133 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i212, i32 0, i32 1
  %len.i.i.i.i.i.i224 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i225 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i226 = icmp eq ptr %skb, null
  br label %do.body27.i.i.i.i233

do.body27.i.i.i.i233:                             ; preds = %do.body27.backedge.i.i.i.i250, %if.end26.i.i.i.i228
  %vlan_depth.1.i.i.i.i229 = phi i32 [ %vlan_depth.0.i.i.i.i223, %if.end26.i.i.i.i228 ], [ %add.i.i.i.i249, %do.body27.backedge.i.i.i.i250 ]
  %parse_depth.0.i.i.i.i230 = phi i32 [ 8, %if.end26.i.i.i.i228 ], [ %dec.i.i.i.i243, %do.body27.backedge.i.i.i.i250 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i212) #18
  %134 = ptrtoint ptr %vhdr.i.i.i.i212 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 -1, ptr %vhdr.i.i.i.i212, align 2, !annotation !188
  %135 = ptrtoint ptr %133 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 -1, ptr %133, align 2, !annotation !188
  %136 = ptrtoint ptr %len.i.i.i.i.i.i224 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %len.i.i.i.i.i.i224, align 4
  %138 = ptrtoint ptr %data_len.i.i.i.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %data_len.i.i.i.i.i.i225, align 8
  %140 = add i32 %vlan_depth.1.i.i.i.i229, %139
  %sub.i1.i.i.i.i.i231 = sub i32 %137, %140
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i231)
  %cmp.i.i.i.i.i.i232 = icmp sgt i32 %sub.i1.i.i.i.i.i231, 3
  br i1 %cmp.i.i.i.i.i.i232, label %if.then.i.i.i.i.i.i235, label %if.end.i.i.i.i.i.i236, !prof !179

if.then.i.i.i.i.i.i235:                           ; preds = %do.body27.i.i.i.i233
  call void @__sanitizer_cov_trace_pc() #20
  %141 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i.i234 = getelementptr i8, ptr %142, i32 %vlan_depth.1.i.i.i.i229
  br label %skb_header_pointer.exit.i.i.i.i245

if.end.i.i.i.i.i.i236:                            ; preds = %do.body27.i.i.i.i233
  br i1 %tobool2.not.i.i.i.i.i.i226, label %if.end.i.i.i.i.i.i236.cleanup.thread.i.i.i.i246_crit_edge, label %lor.lhs.false.i.i.i.i.i.i240

if.end.i.i.i.i.i.i236.cleanup.thread.i.i.i.i246_crit_edge: ; preds = %if.end.i.i.i.i.i.i236
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i.i.i.i246

lor.lhs.false.i.i.i.i.i.i240:                     ; preds = %if.end.i.i.i.i.i.i236
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i.i.i.i237 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i229, ptr noundef nonnull %vhdr.i.i.i.i212, i32 noundef 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i237)
  %cmp3.i.i.i.i.i.i238 = icmp slt i32 %call.i.i.i.i.i.i237, 0
  %spec.select.i.i.i.i.i.i239 = select i1 %cmp3.i.i.i.i.i.i238, ptr null, ptr %vhdr.i.i.i.i212, !prof !183
  br label %skb_header_pointer.exit.i.i.i.i245

skb_header_pointer.exit.i.i.i.i245:               ; preds = %lor.lhs.false.i.i.i.i.i.i240, %if.then.i.i.i.i.i.i235
  %retval.0.i.i.i.i.i.i241 = phi ptr [ %add.ptr.i.i.i.i.i.i234, %if.then.i.i.i.i.i.i235 ], [ %spec.select.i.i.i.i.i.i239, %lor.lhs.false.i.i.i.i.i.i240 ]
  %tobool29.not.i.i.i.i242 = icmp eq ptr %retval.0.i.i.i.i.i.i241, null
  %dec.i.i.i.i243 = add nsw i32 %parse_depth.0.i.i.i.i230, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i243)
  %tobool30.not.i.i.i.i244 = icmp eq i32 %dec.i.i.i.i243, 0
  %143 = select i1 %tobool29.not.i.i.i.i242, i1 true, i1 %tobool30.not.i.i.i.i244, !prof !183
  br i1 %143, label %skb_header_pointer.exit.i.i.i.i245.cleanup.thread.i.i.i.i246_crit_edge, label %do.cond42.i.i.i.i248, !prof !183

skb_header_pointer.exit.i.i.i.i245.cleanup.thread.i.i.i.i246_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i245
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i.i.i.i246

cleanup.thread.i.i.i.i246:                        ; preds = %skb_header_pointer.exit.i.i.i.i245.cleanup.thread.i.i.i.i246_crit_edge, %if.end.i.i.i.i.i.i236.cleanup.thread.i.i.i.i246_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i212) #18
  br label %if.end117

do.cond42.i.i.i.i248:                             ; preds = %skb_header_pointer.exit.i.i.i.i245
  %h_vlan_encapsulated_proto.i.i.i.i247 = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i241, i32 0, i32 1
  %144 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i247 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i247, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i212) #18
  %146 = zext i16 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %145, label %do.cond42.i.i.i.i248.skb_protocol.exit.i252_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i248.do.body27.backedge.i.i.i.i250_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i248.do.body27.backedge.i.i.i.i250_crit_edge294
  ]

do.cond42.i.i.i.i248.do.body27.backedge.i.i.i.i250_crit_edge294: ; preds = %do.cond42.i.i.i.i248
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body27.backedge.i.i.i.i250

do.cond42.i.i.i.i248.do.body27.backedge.i.i.i.i250_crit_edge: ; preds = %do.cond42.i.i.i.i248
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body27.backedge.i.i.i.i250

do.cond42.i.i.i.i248.skb_protocol.exit.i252_crit_edge: ; preds = %do.cond42.i.i.i.i248
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_protocol.exit.i252

do.body27.backedge.i.i.i.i250:                    ; preds = %do.cond42.i.i.i.i248.do.body27.backedge.i.i.i.i250_crit_edge, %do.cond42.i.i.i.i248.do.body27.backedge.i.i.i.i250_crit_edge294
  %add.i.i.i.i249 = add nsw i32 %vlan_depth.1.i.i.i.i229, 4
  br label %do.body27.i.i.i.i233

skb_protocol.exit.i252:                           ; preds = %do.cond42.i.i.i.i248.skb_protocol.exit.i252_crit_edge, %if.else66.skb_protocol.exit.i252_crit_edge
  %retval.2.i.i.i.i251 = phi i16 [ %98, %if.else66.skb_protocol.exit.i252_crit_edge ], [ %145, %do.cond42.i.i.i.i248.skb_protocol.exit.i252_crit_edge ]
  %147 = zext i16 %retval.2.i.i.i.i251 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %retval.2.i.i.i.i251, label %skb_protocol.exit.i252.if.end117_crit_edge [
    i16 2048, label %sw.bb.i258
    i16 -31011, label %sw.bb2.i264
  ]

skb_protocol.exit.i252.if.end117_crit_edge:       ; preds = %skb_protocol.exit.i252
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end117

sw.bb.i258:                                       ; preds = %skb_protocol.exit.i252
  call void @__sanitizer_cov_trace_pc() #20
  %148 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %head.i.i.i, align 8
  %150 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i255 = zext i16 %151 to i32
  %add.ptr.i.i.i256 = getelementptr i8, ptr %149, i32 %conv.i.i.i255
  %tos.i257 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i256, i32 0, i32 1
  %152 = ptrtoint ptr %tos.i257 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %tos.i257, align 1
  br label %sw.epilog.i267

sw.bb2.i264:                                      ; preds = %skb_protocol.exit.i252
  call void @__sanitizer_cov_trace_pc() #20
  %154 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %head.i.i.i, align 8
  %156 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %network_header.i, align 4
  %conv.i.i12.i261 = zext i16 %157 to i32
  %add.ptr.i.i13.i262 = getelementptr i8, ptr %155, i32 %conv.i.i12.i261
  %158 = ptrtoint ptr %add.ptr.i.i13.i262 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %add.ptr.i.i13.i262, align 2
  %160 = lshr i16 %159, 4
  %conv1.i.i263 = trunc i16 %160 to i8
  br label %sw.epilog.i267

sw.epilog.i267:                                   ; preds = %sw.bb2.i264, %sw.bb.i258
  %inner.0.i265 = phi i8 [ %conv1.i.i263, %sw.bb2.i264 ], [ %153, %sw.bb.i258 ]
  %161 = ptrtoint ptr %add.ptr.i198 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %add.ptr.i198, align 2
  %163 = lshr i16 %162, 4
  %conv1.i14.i = trunc i16 %163 to i8
  %call6.i266 = call fastcc i32 @INET_ECN_decapsulate(ptr noundef %skb, i8 noundef zeroext %conv1.i14.i, i8 noundef zeroext %inner.0.i265) #18
  br label %if.end68

if.end68:                                         ; preds = %sw.epilog.i267, %sw.epilog.i
  %err.0 = phi i32 [ %call6.i, %sw.epilog.i ], [ %call6.i266, %sw.epilog.i267 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool69.not = icmp eq i32 %err.0, 0
  br i1 %tobool69.not, label %if.end68.if.end117_crit_edge, label %if.then72, !prof !179

if.end68.if.end117_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end117

if.then72:                                        ; preds = %if.end68
  %164 = load i8, ptr @log_ecn_error, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool73.not = icmp eq i8 %164, 0
  br i1 %tobool73.not, label %if.then72.if.end104_crit_edge, label %if.then74

if.then72.if.end104_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end104

if.then74:                                        ; preds = %if.then72
  %165 = ptrtoint ptr %sock.i206 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %sock.i206, align 4
  %sk.i270 = getelementptr inbounds %struct.socket, ptr %166, i32 0, i32 4
  %167 = ptrtoint ptr %sk.i270 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %sk.i270, align 16
  %skc_family.i271 = getelementptr inbounds %struct.sock_common, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %skc_family.i271 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %skc_family.i271, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %170)
  %cmp77 = icmp eq i16 %170, 2
  %call80 = call i32 @net_ratelimit() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %cmp77, label %do.body, label %do.body90

do.body:                                          ; preds = %if.then74
  br i1 %tobool81.not, label %do.body.if.end104_crit_edge, label %do.end

do.body.if.end104_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end104

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i198, i32 0, i32 8
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i198, i32 0, i32 1
  %171 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %tos, align 1
  %conv84 = zext i8 %172 to i32
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %saddr, i32 noundef %conv84) #26
  br label %if.end104

do.body90:                                        ; preds = %if.then74
  br i1 %tobool81.not, label %do.body90.if.end104_crit_edge, label %do.end96

do.body90.if.end104_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end104

do.end96:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #20
  %saddr98 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i198, i32 0, i32 5
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %saddr98) #26
  br label %if.end104

if.end104:                                        ; preds = %do.end96, %do.body90.if.end104_crit_edge, %do.end, %do.body.if.end104_crit_edge, %if.then72.if.end104_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err.0)
  %cmp105 = icmp sgt i32 %err.0, 1
  br i1 %cmp105, label %if.then107, label %if.end104.if.end117_crit_edge

if.end104.if.end117_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end117

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #20
  %173 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev44, align 4
  %rx_frame_errors110 = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 36, i32 13
  %175 = ptrtoint ptr %rx_frame_errors110 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rx_frame_errors110, align 4
  %inc111 = add i32 %176, 1
  store i32 %inc111, ptr %rx_frame_errors110, align 4
  %177 = load ptr, ptr %dev44, align 4
  %rx_errors114 = getelementptr inbounds %struct.net_device, ptr %177, i32 0, i32 36, i32 4
  br label %drop

if.end117:                                        ; preds = %if.end104.if.end117_crit_edge, %if.end68.if.end117_crit_edge, %skb_protocol.exit.i252.if.end117_crit_edge, %cleanup.thread.i.i.i.i246, %do.end.i.i.i.i220, %skb_protocol.exit.i.if.end117_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i
  %len118 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %178 = ptrtoint ptr %len118 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %len118, align 4
  %gro_cells = getelementptr inbounds %struct.geneve_dev, ptr %geneve, i32 0, i32 7
  %call119 = call i32 @gro_cells_receive(ptr noundef %gro_cells, ptr noundef %skb) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %if.then128, label %if.end117.cleanup131_crit_edge, !prof !179

if.end117.cleanup131_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup131

if.then128:                                       ; preds = %if.end117
  %180 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev44, align 4
  %182 = getelementptr inbounds %struct.net_device, ptr %181, i32 0, i32 130
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 64
  %185 = call i32 @llvm.read_register.i32(metadata !167) #18
  %and.i.i = and i32 %185, -16384
  %186 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %188
  %189 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %191 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i.i.i = icmp eq i32 %191, 0
  br i1 %tobool.not.i.i.i, label %if.then128.dev_sw_netstats_rx_add.exit_crit_edge, label %land.lhs.true.i.i.i

if.then128.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_sw_netstats_rx_add.exit

land.lhs.true.i.i.i:                              ; preds = %if.then128
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 1
  %192 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i272 = add i32 %193, 1
  store volatile i32 %add.i.i.i.i272, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !190
  %194 = call i32 @llvm.read_register.i32(metadata !167) #18
  %and.i.i.i.i = and i32 %194, -16384
  %195 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 3
  %196 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %197
  %198 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %199, ptrtoint (ptr @lockdep_recursion to i32)
  %200 = inttoptr i32 %add.i.i.i to ptr
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %200, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !191
  %203 = call i32 @llvm.read_register.i32(metadata !167) #18
  %and.i.i.i7.i.i.i = and i32 %203, -16384
  %204 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i273 = add i32 %206, -1
  store volatile i32 %sub.i.i.i.i273, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool20.not.i.i.i = icmp eq i32 %202, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge

land.lhs.true.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_sw_netstats_rx_add.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %207 = call i32 @llvm.read_register.i32(metadata !167) #18
  %and.i.i.i.i.i = and i32 %207, -16384
  %208 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp.i.i.i = icmp eq i32 %210, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge

land.rhs.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_sw_netstats_rx_add.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %211 = call i32 @llvm.read_register.i32(metadata !167) #18
  %and.i.i.i9.i.i.i = and i32 %211, -16384
  %212 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %214, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !192
  %215 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %216
  %217 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %218, ptrtoint (ptr @hardirqs_enabled to i32)
  %219 = inttoptr i32 %add47.i.i.i to ptr
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load volatile i32, ptr %219, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !193
  %222 = call i32 @llvm.read_register.i32(metadata !167) #18
  %and.i.i.i12.i.i.i = and i32 %222, -16384
  %223 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %225, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool54.not.i.i.i = icmp eq i32 %221, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_sw_netstats_rx_add.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, label %if.then.i.i.i, !prof !179

land.rhs58.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_sw_netstats_rx_add.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 271, i32 noundef 9, ptr noundef null) #18
  br label %dev_sw_netstats_rx_add.exit

dev_sw_netstats_rx_add.exit:                      ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %land.rhs22.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %land.rhs.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %land.lhs.true.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %if.then128.dev_sw_netstats_rx_add.exit_crit_edge
  %226 = ptrtoint ptr %184 to i32
  %add.i = add i32 %190, %226
  %227 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %227, i32 0, i32 4
  %228 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %229, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !194
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %227, i32 0, i32 4, i32 0, i32 1
  %230 = call ptr @llvm.returnaddress(i32 0) #18
  %231 = ptrtoint ptr %230 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %231) #18
  %conv.i274 = zext i32 %179 to i64
  %rx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %227, i32 0, i32 1
  %232 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %rx_bytes.i, align 8
  %add2.i = add i64 %233, %conv.i274
  store i64 %add2.i, ptr %rx_bytes.i, align 8
  %234 = ptrtoint ptr %227 to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %227, align 32
  %inc.i = add i64 %235, 1
  store i64 %inc.i, ptr %227, align 32
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %231) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !195
  %236 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %237, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  br label %cleanup131

drop:                                             ; preds = %if.then107, %if.then54, %if.then35, %cleanup
  %rx_dropped.sink287 = phi ptr [ %rx_dropped, %cleanup ], [ %rx_errors114, %if.then107 ], [ %rx_errors57, %if.then54 ], [ %rx_errors, %if.then35 ]
  %238 = ptrtoint ptr %rx_dropped.sink287 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %rx_dropped.sink287, align 8
  %inc = add i32 %239, 1
  store i32 %inc, ptr %rx_dropped.sink287, align 8
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #18
  br label %cleanup131

cleanup131:                                       ; preds = %drop, %dev_sw_netstats_rx_add.exit, %if.end117.cleanup131_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @geneve_lookup(ptr noundef %gs, i32 noundef %addr, ptr nocapture noundef readonly %vni) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vni to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vni, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr i8, ptr %vni, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %3 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %vni, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %mul.i.i.i = mul i32 %or6.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx = getelementptr %struct.geneve_sock, ptr %gs, i32 0, i32 5, i32 %shr.i.i
  %call1 = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b48 = load i1, ptr @geneve_lookup.__warned, align 1
  br i1 %.b48, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 140, ptr noundef nonnull @.str.10) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.050 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not51 = icmp eq ptr %node.050, null
  br i1 %tobool13.not51, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %node.052 = phi ptr [ %node.0, %for.inc.for.body_crit_edge ], [ %node.050, %do.end.for.body_crit_edge ]
  %geneve = getelementptr inbounds %struct.geneve_dev_node, ptr %node.052, i32 0, i32 1
  %7 = ptrtoint ptr %geneve to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %geneve, align 4
  %cfg = getelementptr inbounds %struct.geneve_dev, ptr %8, i32 0, i32 8
  %arrayidx.i = getelementptr i8, ptr %cfg, i32 5
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %vni, ptr noundef dereferenceable(3) %arrayidx.i, i32 3) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true15:                                  ; preds = %for.body
  %dst = getelementptr inbounds %struct.geneve_dev, ptr %8, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %addr)
  %cmp = icmp eq i32 %10, %addr
  br i1 %cmp, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %node.052 to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.0 = load volatile ptr, ptr %node.052, align 4
  %tobool13.not = icmp eq ptr %node.0, null
  br i1 %tobool13.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %8, %land.lhs.true15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @geneve6_lookup(ptr noundef %gs, [4 x i32] %addr6.coerce, ptr nocapture noundef readonly %vni) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %addr6.coerce.fca.0.extract = extractvalue [4 x i32] %addr6.coerce, 0
  %addr6.coerce.fca.1.extract = extractvalue [4 x i32] %addr6.coerce, 1
  %addr6.coerce.fca.2.extract = extractvalue [4 x i32] %addr6.coerce, 2
  %addr6.coerce.fca.3.extract = extractvalue [4 x i32] %addr6.coerce, 3
  %0 = ptrtoint ptr %vni to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vni, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr i8, ptr %vni, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %3 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %vni, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %mul.i.i.i = mul i32 %or6.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx = getelementptr %struct.geneve_sock, ptr %gs, i32 0, i32 5, i32 %shr.i.i
  %call2 = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @geneve6_lookup.__warned, align 1
  br i1 %.b50, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve6_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 159, ptr noundef nonnull @.str.10) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.054 = load volatile ptr, ptr %arrayidx, align 4
  %tobool14.not55 = icmp eq ptr %node.054, null
  br i1 %tobool14.not55, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %node.056 = phi ptr [ %node.0, %for.inc.for.body_crit_edge ], [ %node.054, %do.end.for.body_crit_edge ]
  %geneve = getelementptr inbounds %struct.geneve_dev_node, ptr %node.056, i32 0, i32 1
  %7 = ptrtoint ptr %geneve to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %geneve, align 4
  %cfg = getelementptr inbounds %struct.geneve_dev, ptr %8, i32 0, i32 8
  %arrayidx.i = getelementptr i8, ptr %cfg, i32 5
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %vni, ptr noundef dereferenceable(3) %arrayidx.i, i32 3) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true16:                                  ; preds = %for.body
  %dst = getelementptr inbounds %struct.geneve_dev, ptr %8, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst, align 4
  %xor.i = xor i32 %10, %addr6.coerce.fca.0.extract
  %arrayidx6.i = getelementptr %struct.geneve_dev, ptr %8, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %12, %addr6.coerce.fca.1.extract
  %or.i53 = or i32 %xor7.i, %xor.i
  %arrayidx11.i = getelementptr %struct.geneve_dev, ptr %8, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %14, %addr6.coerce.fca.2.extract
  %or13.i = or i32 %or.i53, %xor12.i
  %arrayidx17.i = getelementptr %struct.geneve_dev, ptr %8, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %16, %addr6.coerce.fca.3.extract
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %node.056 to i32
  call void @__asan_load4_noabort(i32 %17)
  %node.0 = load volatile ptr, ptr %node.056, align 4
  %tobool14.not = icmp eq ptr %node.0, null
  br i1 %tobool14.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %8, %land.lhs.true16.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iptunnel_pull_header(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp_tun_rx_dst(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @INET_ECN_decapsulate(ptr noundef %skb, i8 noundef zeroext %outer, i8 noundef zeroext %inner) unnamed_addr #8 align 64 {
entry:
  %vhdr.i.i.i.i13 = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #20
  %0 = and i8 %inner, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.i.not.i = icmp eq i8 %0, 0
  %1 = and i8 %outer, 3
  br i1 %cmp.i.not.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %entry
  %and.i = zext i8 %1 to i32
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %and.i, label %if.then.unreachabledefault.i [
    i32 0, label %if.else
    i32 2, label %if.then.i.if.end8_crit_edge
    i32 1, label %if.then.i.if.end8_crit_edge101
    i32 3, label %sw.bb2.i
  ]

if.then.i.if.end8_crit_edge101:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then.i.if.end8_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then.unreachabledefault.i:                     ; preds = %if.then.i
  unreachable

if.then:                                          ; preds = %entry
  %trunc = trunc i8 %outer to i2
  %3 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.64)
  switch i2 %trunc, label %if.then.if.end8_crit_edge [
    i2 -1, label %if.then2
    i2 1, label %if.then.if.then5_crit_edge
  ]

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then2:                                         ; preds = %if.then
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %6 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %7 to i32
  %8 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %5, label %if.then2.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %if.then2.if.then.i.i.i.i_crit_edge
    i16 -32512, label %if.then2.if.then.i.i.i.i_crit_edge102
  ]

if.then2.if.then.i.i.i.i_crit_edge102:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.then2.if.then.i.i.i.i_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i

if.then2.skb_protocol.exit.i_crit_edge:           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_protocol.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then2.if.then.i.i.i.i_crit_edge, %if.then2.if.then.i.i.i.i_crit_edge102
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp.i.i.i.i = icmp ult i16 %7, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !183

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 598, i32 noundef 9, ptr noundef null) #18
  br label %if.end8

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %9 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #18
  %10 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !188
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %9, align 2, !annotation !188
  %12 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %16 = add i32 %vlan_depth.1.i.i.i.i, %15
  %sub.i1.i.i.i.i.i = sub i32 %13, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !179

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %18, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !183
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %19 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !183
  br i1 %19, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !183

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #18
  br label %if.end8

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #18
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %21, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge103
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge103: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge103
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %if.then2.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %5, %if.then2.skb_protocol.exit.i_crit_edge ], [ %21, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  %23 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %retval.2.i.i.i.i, label %skb_protocol.exit.i.if.end8_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb6.i
  ]

skb_protocol.exit.i.if.end8_crit_edge:            ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

sw.bb.i:                                          ; preds = %skb_protocol.exit.i
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
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 20
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i, align 8
  %cmp.not.i = icmp ugt ptr %add.ptr.i, %29
  br i1 %cmp.not.i, label %sw.bb.i.if.end8_crit_edge, label %if.then.i12

sw.bb.i.if.end8_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then.i12:                                      ; preds = %sw.bb.i
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos.i.i, align 1
  %32 = add i8 %31, 1
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i, label %if.then.i12.if.end8_crit_edge, label %if.end.i.i

if.then.i12.if.end8_crit_edge:                    ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end.i.i:                                       ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #20
  %34 = and i8 %32, 3
  %conv4.i.i = zext i8 %34 to i16
  %add5.i.i = add nuw nsw i16 %conv4.i.i, -5
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %check.i.i, align 2
  %add.i.i.i = add i16 %36, %add5.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %add5.i.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %add5.i.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv6.i.i.i
  %37 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %add7.i.i.i, ptr %check.i.i, align 2
  %38 = or i8 %31, 3
  %39 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %tos.i.i, align 1
  br label %if.end8

sw.bb6.i:                                         ; preds = %skb_protocol.exit.i
  %head.i1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %40 = ptrtoint ptr %head.i1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i1.i, align 8
  %network_header.i2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %42 = ptrtoint ptr %network_header.i2.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i2.i, align 4
  %conv.i3.i = zext i16 %43 to i32
  %add.ptr.i4.i = getelementptr i8, ptr %41, i32 %conv.i3.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i4.i, i32 40
  %tail.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i5.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i5.i, align 8
  %cmp10.not.i = icmp ugt ptr %add.ptr8.i, %45
  br i1 %cmp10.not.i, label %sw.bb6.i.if.end8_crit_edge, label %if.then12.i

sw.bb6.i.if.end8_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then12.i:                                      ; preds = %sw.bb6.i
  %46 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i4.i, align 2
  %48 = and i16 %47, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp.i14.not.i.i = icmp eq i16 %48, 0
  br i1 %cmp.i14.not.i.i, label %if.then12.i.if.end8_crit_edge, label %if.end.i10.i

if.then12.i.if.end8_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end.i10.i:                                     ; preds = %if.then12.i
  %49 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i4.i, align 4
  %or.i.i = or i32 %50, 3145728
  store i32 %or.i.i, ptr %add.ptr.i4.i, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %51 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %52 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %52)
  %cmp.i.i = icmp eq i16 %52, 1024
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i10.i.if.end8_crit_edge

if.end.i10.i.if.end8_crit_edge:                   ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then3.i.i:                                     ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #20
  %53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %neg.i.i.i = xor i32 %50, -1
  %add.i.i.i11.i = add i32 %55, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i11.i, i32 %neg.i.i.i)
  %cmp.i.i.i12.i = icmp ult i32 %add.i.i.i11.i, %neg.i.i.i
  %conv.i.i.i13.i = zext i1 %cmp.i.i.i12.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i11.i, %or.i.i
  %add.i.i14.i = add i32 %add1.i.i.i.i, %conv.i.i.i13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i14.i, i32 %or.i.i)
  %cmp.i.i15.i = icmp ult i32 %add.i.i14.i, %or.i.i
  %conv.i.i16.i = zext i1 %cmp.i.i15.i to i32
  %add1.i.i.i = add i32 %add.i.i14.i, %conv.i.i16.i
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add1.i.i.i, ptr %53, align 8
  br label %if.end8

if.else:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.else.if.then5_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.else.if.then5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5

if.then5:                                         ; preds = %if.else.if.then5_crit_edge, %if.then.if.then5_crit_edge
  %protocol.i.i.i14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %57 = ptrtoint ptr %protocol.i.i.i14 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %protocol.i.i.i14, align 8
  %mac_len.i.i.i.i15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %59 = ptrtoint ptr %mac_len.i.i.i.i15 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %mac_len.i.i.i.i15, align 4
  %conv.i.i.i.i16 = zext i16 %60 to i32
  %61 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %58, label %if.then5.skb_protocol.exit.i53_crit_edge [
    i16 -30552, label %if.then5.if.then.i.i.i.i18_crit_edge
    i16 -32512, label %if.then5.if.then.i.i.i.i18_crit_edge104
  ]

if.then5.if.then.i.i.i.i18_crit_edge104:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i18

if.then5.if.then.i.i.i.i18_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i.i18

if.then5.skb_protocol.exit.i53_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_protocol.exit.i53

if.then.i.i.i.i18:                                ; preds = %if.then5.if.then.i.i.i.i18_crit_edge, %if.then5.if.then.i.i.i.i18_crit_edge104
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool.not.i.i.i.i17 = icmp eq i16 %60, 0
  br i1 %tobool.not.i.i.i.i17, label %if.then.i.i.i.i18.if.end26.i.i.i.i29_crit_edge, label %if.then1.i.i.i.i20

if.then.i.i.i.i18.if.end26.i.i.i.i29_crit_edge:   ; preds = %if.then.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.i.i.i.i29

if.then1.i.i.i.i20:                               ; preds = %if.then.i.i.i.i18
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %60)
  %cmp.i.i.i.i19 = icmp ult i16 %60, 4
  br i1 %cmp.i.i.i.i19, label %do.end.i.i.i.i21, label %if.end25.i.i.i.i23, !prof !183

do.end.i.i.i.i21:                                 ; preds = %if.then1.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 598, i32 noundef 9, ptr noundef null) #18
  br label %if.end8

if.end25.i.i.i.i23:                               ; preds = %if.then1.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i.i.i22 = add nsw i32 %conv.i.i.i.i16, -4
  br label %if.end26.i.i.i.i29

if.end26.i.i.i.i29:                               ; preds = %if.end25.i.i.i.i23, %if.then.i.i.i.i18.if.end26.i.i.i.i29_crit_edge
  %vlan_depth.0.i.i.i.i24 = phi i32 [ %sub.i.i.i.i22, %if.end25.i.i.i.i23 ], [ 14, %if.then.i.i.i.i18.if.end26.i.i.i.i29_crit_edge ]
  %62 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i13, i32 0, i32 1
  %len.i.i.i.i.i.i25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i27 = icmp eq ptr %skb, null
  %data.i.i.i.i.i28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i.i34

do.body27.i.i.i.i34:                              ; preds = %do.body27.backedge.i.i.i.i51, %if.end26.i.i.i.i29
  %vlan_depth.1.i.i.i.i30 = phi i32 [ %vlan_depth.0.i.i.i.i24, %if.end26.i.i.i.i29 ], [ %add.i.i.i.i50, %do.body27.backedge.i.i.i.i51 ]
  %parse_depth.0.i.i.i.i31 = phi i32 [ 8, %if.end26.i.i.i.i29 ], [ %dec.i.i.i.i44, %do.body27.backedge.i.i.i.i51 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i13) #18
  %63 = ptrtoint ptr %vhdr.i.i.i.i13 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %vhdr.i.i.i.i13, align 2, !annotation !188
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %62, align 2, !annotation !188
  %65 = ptrtoint ptr %len.i.i.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i.i.i.i.i.i25, align 4
  %67 = ptrtoint ptr %data_len.i.i.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_len.i.i.i.i.i.i26, align 8
  %69 = add i32 %vlan_depth.1.i.i.i.i30, %68
  %sub.i1.i.i.i.i.i32 = sub i32 %66, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i32)
  %cmp.i.i.i.i.i.i33 = icmp sgt i32 %sub.i1.i.i.i.i.i32, 3
  br i1 %cmp.i.i.i.i.i.i33, label %if.then.i.i.i.i.i.i36, label %if.end.i.i.i.i.i.i37, !prof !179

if.then.i.i.i.i.i.i36:                            ; preds = %do.body27.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #20
  %70 = ptrtoint ptr %data.i.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i.i.i.i28, align 4
  %add.ptr.i.i.i.i.i.i35 = getelementptr i8, ptr %71, i32 %vlan_depth.1.i.i.i.i30
  br label %skb_header_pointer.exit.i.i.i.i46

if.end.i.i.i.i.i.i37:                             ; preds = %do.body27.i.i.i.i34
  br i1 %tobool2.not.i.i.i.i.i.i27, label %if.end.i.i.i.i.i.i37.cleanup.thread.i.i.i.i47_crit_edge, label %lor.lhs.false.i.i.i.i.i.i41

if.end.i.i.i.i.i.i37.cleanup.thread.i.i.i.i47_crit_edge: ; preds = %if.end.i.i.i.i.i.i37
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i.i.i.i47

lor.lhs.false.i.i.i.i.i.i41:                      ; preds = %if.end.i.i.i.i.i.i37
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i.i.i.i38 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i30, ptr noundef nonnull %vhdr.i.i.i.i13, i32 noundef 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i38)
  %cmp3.i.i.i.i.i.i39 = icmp slt i32 %call.i.i.i.i.i.i38, 0
  %spec.select.i.i.i.i.i.i40 = select i1 %cmp3.i.i.i.i.i.i39, ptr null, ptr %vhdr.i.i.i.i13, !prof !183
  br label %skb_header_pointer.exit.i.i.i.i46

skb_header_pointer.exit.i.i.i.i46:                ; preds = %lor.lhs.false.i.i.i.i.i.i41, %if.then.i.i.i.i.i.i36
  %retval.0.i.i.i.i.i.i42 = phi ptr [ %add.ptr.i.i.i.i.i.i35, %if.then.i.i.i.i.i.i36 ], [ %spec.select.i.i.i.i.i.i40, %lor.lhs.false.i.i.i.i.i.i41 ]
  %tobool29.not.i.i.i.i43 = icmp eq ptr %retval.0.i.i.i.i.i.i42, null
  %dec.i.i.i.i44 = add nsw i32 %parse_depth.0.i.i.i.i31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i44)
  %tobool30.not.i.i.i.i45 = icmp eq i32 %dec.i.i.i.i44, 0
  %72 = select i1 %tobool29.not.i.i.i.i43, i1 true, i1 %tobool30.not.i.i.i.i45, !prof !183
  br i1 %72, label %skb_header_pointer.exit.i.i.i.i46.cleanup.thread.i.i.i.i47_crit_edge, label %do.cond42.i.i.i.i49, !prof !183

skb_header_pointer.exit.i.i.i.i46.cleanup.thread.i.i.i.i47_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i.i.i.i47

cleanup.thread.i.i.i.i47:                         ; preds = %skb_header_pointer.exit.i.i.i.i46.cleanup.thread.i.i.i.i47_crit_edge, %if.end.i.i.i.i.i.i37.cleanup.thread.i.i.i.i47_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i13) #18
  br label %if.end8

do.cond42.i.i.i.i49:                              ; preds = %skb_header_pointer.exit.i.i.i.i46
  %h_vlan_encapsulated_proto.i.i.i.i48 = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i42, i32 0, i32 1
  %73 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i48 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i48, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i13) #18
  %75 = zext i16 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %74, label %do.cond42.i.i.i.i49.skb_protocol.exit.i53_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i49.do.body27.backedge.i.i.i.i51_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i49.do.body27.backedge.i.i.i.i51_crit_edge105
  ]

do.cond42.i.i.i.i49.do.body27.backedge.i.i.i.i51_crit_edge105: ; preds = %do.cond42.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body27.backedge.i.i.i.i51

do.cond42.i.i.i.i49.do.body27.backedge.i.i.i.i51_crit_edge: ; preds = %do.cond42.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body27.backedge.i.i.i.i51

do.cond42.i.i.i.i49.skb_protocol.exit.i53_crit_edge: ; preds = %do.cond42.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_protocol.exit.i53

do.body27.backedge.i.i.i.i51:                     ; preds = %do.cond42.i.i.i.i49.do.body27.backedge.i.i.i.i51_crit_edge, %do.cond42.i.i.i.i49.do.body27.backedge.i.i.i.i51_crit_edge105
  %add.i.i.i.i50 = add nsw i32 %vlan_depth.1.i.i.i.i30, 4
  br label %do.body27.i.i.i.i34

skb_protocol.exit.i53:                            ; preds = %do.cond42.i.i.i.i49.skb_protocol.exit.i53_crit_edge, %if.then5.skb_protocol.exit.i53_crit_edge
  %retval.2.i.i.i.i52 = phi i16 [ %58, %if.then5.skb_protocol.exit.i53_crit_edge ], [ %74, %do.cond42.i.i.i.i49.skb_protocol.exit.i53_crit_edge ]
  %76 = zext i16 %retval.2.i.i.i.i52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %retval.2.i.i.i.i52, label %skb_protocol.exit.i53.if.end8_crit_edge [
    i16 2048, label %sw.bb.i61
    i16 -31011, label %sw.bb6.i77
  ]

skb_protocol.exit.i53.if.end8_crit_edge:          ; preds = %skb_protocol.exit.i53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

sw.bb.i61:                                        ; preds = %skb_protocol.exit.i53
  %head.i.i54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %77 = ptrtoint ptr %head.i.i54 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %head.i.i54, align 8
  %network_header.i.i55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %79 = ptrtoint ptr %network_header.i.i55 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %network_header.i.i55, align 4
  %conv.i.i56 = zext i16 %80 to i32
  %add.ptr.i.i57 = getelementptr i8, ptr %78, i32 %conv.i.i56
  %add.ptr.i58 = getelementptr i8, ptr %add.ptr.i.i57, i32 20
  %tail.i.i59 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %81 = ptrtoint ptr %tail.i.i59 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tail.i.i59, align 8
  %cmp.not.i60 = icmp ugt ptr %add.ptr.i58, %82
  br i1 %cmp.not.i60, label %sw.bb.i61.if.end8_crit_edge, label %if.then.i63

sw.bb.i61.if.end8_crit_edge:                      ; preds = %sw.bb.i61
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then.i63:                                      ; preds = %sw.bb.i61
  %tos.i.i62 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i57, i32 0, i32 1
  %83 = ptrtoint ptr %tos.i.i62 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %tos.i.i62, align 1
  %85 = and i8 %84, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %85)
  %cmp.not.i.i = icmp eq i8 %85, 2
  br i1 %cmp.not.i.i, label %if.end.i.i69, label %if.then.i63.if.end8_crit_edge

if.then.i63.if.end8_crit_edge:                    ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end.i.i69:                                     ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #20
  %check.i.i64 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i57, i32 0, i32 7
  %86 = ptrtoint ptr %check.i.i64 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %check.i.i64, align 2
  %add.i.i.i65 = add i16 %87, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i.i65)
  %cmp.i.i.i66 = icmp eq i16 %add.i.i.i65, 0
  %conv6.i.i.i67 = zext i1 %cmp.i.i.i66 to i16
  %add7.i.i.i68 = add i16 %add.i.i.i65, %conv6.i.i.i67
  %88 = ptrtoint ptr %check.i.i64 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %add7.i.i.i68, ptr %check.i.i64, align 2
  %89 = xor i8 %84, 3
  %90 = ptrtoint ptr %tos.i.i62 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %tos.i.i62, align 1
  br label %if.end8

sw.bb6.i77:                                       ; preds = %skb_protocol.exit.i53
  %head.i1.i70 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %91 = ptrtoint ptr %head.i1.i70 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i1.i70, align 8
  %network_header.i2.i71 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %93 = ptrtoint ptr %network_header.i2.i71 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %network_header.i2.i71, align 4
  %conv.i3.i72 = zext i16 %94 to i32
  %add.ptr.i4.i73 = getelementptr i8, ptr %92, i32 %conv.i3.i72
  %add.ptr8.i74 = getelementptr i8, ptr %add.ptr.i4.i73, i32 40
  %tail.i5.i75 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %95 = ptrtoint ptr %tail.i5.i75 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tail.i5.i75, align 8
  %cmp10.not.i76 = icmp ugt ptr %add.ptr8.i74, %96
  br i1 %cmp10.not.i76, label %sw.bb6.i77.if.end8_crit_edge, label %if.then12.i78

sw.bb6.i77.if.end8_crit_edge:                     ; preds = %sw.bb6.i77
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then12.i78:                                    ; preds = %sw.bb6.i77
  %97 = ptrtoint ptr %add.ptr.i4.i73 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %add.ptr.i4.i73, align 2
  %99 = and i16 %98, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %99)
  %cmp.not.i10.i = icmp eq i16 %99, 32
  br i1 %cmp.not.i10.i, label %if.end.i11.i, label %if.then12.i78.if.end8_crit_edge

if.then12.i78.if.end8_crit_edge:                  ; preds = %if.then12.i78
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end.i11.i:                                     ; preds = %if.then12.i78
  %100 = ptrtoint ptr %add.ptr.i4.i73 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i4.i73, align 4
  %xor.i.i = xor i32 %101, 3145728
  store i32 %xor.i.i, ptr %add.ptr.i4.i73, align 4
  %ip_summed.i.i79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %102 = ptrtoint ptr %ip_summed.i.i79 to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load.i.i80 = load i16, ptr %ip_summed.i.i79, align 8
  %103 = and i16 %bf.load.i.i80, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %103)
  %cmp3.i.i = icmp eq i16 %103, 1024
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.end.i11.i.if.end8_crit_edge

if.end.i11.i.if.end8_crit_edge:                   ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then5.i.i:                                     ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #20
  %104 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 8
  %neg.i.i.i81 = xor i32 %101, -1
  %add.i.i.i12.i = add i32 %106, %neg.i.i.i81
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i12.i, i32 %neg.i.i.i81)
  %cmp.i.i.i13.i = icmp ult i32 %add.i.i.i12.i, %neg.i.i.i81
  %conv.i.i.i14.i = zext i1 %cmp.i.i.i13.i to i32
  %add1.i.i.i.i82 = add i32 %add.i.i.i12.i, %xor.i.i
  %add.i.i15.i = add i32 %add1.i.i.i.i82, %conv.i.i.i14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i15.i, i32 %xor.i.i)
  %cmp.i.i16.i = icmp ult i32 %add.i.i15.i, %xor.i.i
  %conv.i.i17.i = zext i1 %cmp.i.i16.i to i32
  %add1.i.i.i83 = add i32 %add.i.i15.i, %conv.i.i17.i
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add1.i.i.i83, ptr %104, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5.i.i, %if.end.i11.i.if.end8_crit_edge, %if.then12.i78.if.end8_crit_edge, %sw.bb6.i77.if.end8_crit_edge, %if.end.i.i69, %if.then.i63.if.end8_crit_edge, %sw.bb.i61.if.end8_crit_edge, %skb_protocol.exit.i53.if.end8_crit_edge, %cleanup.thread.i.i.i.i47, %do.end.i.i.i.i21, %if.else.if.end8_crit_edge, %if.then3.i.i, %if.end.i10.i.if.end8_crit_edge, %if.then12.i.if.end8_crit_edge, %sw.bb6.i.if.end8_crit_edge, %if.end.i.i, %if.then.i12.if.end8_crit_edge, %sw.bb.i.if.end8_crit_edge, %skb_protocol.exit.i.if.end8_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i, %if.then.if.end8_crit_edge, %sw.bb2.i, %if.then.i.if.end8_crit_edge, %if.then.i.if.end8_crit_edge101
  %retval.0.i88 = phi i32 [ 0, %if.else.if.end8_crit_edge ], [ 2, %sw.bb2.i ], [ 0, %do.end.i.i.i.i ], [ 0, %cleanup.thread.i.i.i.i ], [ 0, %skb_protocol.exit.i.if.end8_crit_edge ], [ 0, %sw.bb.i.if.end8_crit_edge ], [ 0, %if.then.i12.if.end8_crit_edge ], [ 0, %if.end.i.i ], [ 0, %sw.bb6.i.if.end8_crit_edge ], [ 0, %if.then12.i.if.end8_crit_edge ], [ 0, %if.end.i10.i.if.end8_crit_edge ], [ 0, %if.then3.i.i ], [ 0, %do.end.i.i.i.i21 ], [ 0, %cleanup.thread.i.i.i.i47 ], [ 0, %skb_protocol.exit.i53.if.end8_crit_edge ], [ 0, %sw.bb.i61.if.end8_crit_edge ], [ 0, %if.then.i63.if.end8_crit_edge ], [ 0, %if.end.i.i69 ], [ 0, %sw.bb6.i77.if.end8_crit_edge ], [ 0, %if.then12.i78.if.end8_crit_edge ], [ 0, %if.end.i11.i.if.end8_crit_edge ], [ 0, %if.then5.i.i ], [ 1, %if.then.i.if.end8_crit_edge ], [ 1, %if.then.i.if.end8_crit_edge101 ], [ 0, %if.then.if.end8_crit_edge ]
  ret i32 %retval.0.i88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_notify_del_rx_port(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_tunnel_info(ptr nocapture noundef readonly %skb) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

entry.skb_dst.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !183

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %entry.skb_dst.exit.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i, label %skb_dst.exit.i.if.end_crit_edge, label %land.lhs.true.i

skb_dst.exit.i.if.end_crit_edge:                  ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.i:                                  ; preds = %skb_dst.exit.i
  %5 = inttoptr i32 %and25.i.i to ptr
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 4
  %8 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %type = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %u = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 2
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %skb_dst.exit.i.if.end_crit_edge
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i27 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i27, label %if.end.skb_dst.exit_crit_edge, label %land.lhs.true.i29

if.end.skb_dst.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.lhs.true.i29:                                ; preds = %if.end
  %call.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i28 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i28, label %land.rhs.i, label %land.lhs.true.i29.skb_dst.exit_crit_edge

land.lhs.true.i29.skb_dst.exit_crit_edge:         ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i29
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !183

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i29.skb_dst.exit_crit_edge, %if.end.skb_dst.exit_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %and25.i = and i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool2.not = icmp eq i32 %and25.i, 0
  br i1 %tobool2.not, label %skb_dst.exit.cleanup_crit_edge, label %land.lhs.true3

skb_dst.exit.cleanup_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true3:                                   ; preds = %skb_dst.exit
  %13 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lwtstate, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true5

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 4
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %17, label %land.lhs.true5.cleanup_crit_edge [
    i16 2, label %land.lhs.true5.if.then15_crit_edge
    i16 4, label %land.lhs.true5.if.then15_crit_edge33
  ]

land.lhs.true5.if.then15_crit_edge33:             ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

land.lhs.true5.if.then15_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true5.if.then15_crit_edge, %land.lhs.true5.if.then15_crit_edge33
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %15, i32 0, i32 7
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge, %skb_dst.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %u, %if.then ], [ %data.i, %if.then15 ], [ null, %land.lhs.true5.cleanup_crit_edge ], [ null, %land.lhs.true3.cleanup_crit_edge ], [ null, %skb_dst.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @geneve_get_v6_dst(ptr nocapture noundef readonly %skb, ptr noundef %dev, ptr noundef readonly %gs6, ptr noundef %fl6, ptr noundef %info, i16 noundef zeroext %dport, i16 noundef zeroext %sport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ip_tunnel_dst_cache_usable.exit_crit_edge

entry.ip_tunnel_dst_cache_usable.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %ip_tunnel_dst_cache_usable.exit

if.end.i:                                         ; preds = %entry
  %tobool1.not.i = icmp eq ptr %info, null
  br i1 %tobool1.not.i, label %if.end.i.ip_tunnel_dst_cache_usable.exit_crit_edge, label %if.end3.i

if.end.i.ip_tunnel_dst_cache_usable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ip_tunnel_dst_cache_usable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %tun_flags.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tun_flags.i, align 8
  %5 = and i16 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool4.not.i = icmp eq i16 %5, 0
  br label %ip_tunnel_dst_cache_usable.exit

ip_tunnel_dst_cache_usable.exit:                  ; preds = %if.end3.i, %if.end.i.ip_tunnel_dst_cache_usable.exit_crit_edge, %entry.ip_tunnel_dst_cache_usable.exit_crit_edge
  %retval.0.i116 = phi i1 [ false, %entry.ip_tunnel_dst_cache_usable.exit_crit_edge ], [ true, %if.end.i.ip_tunnel_dst_cache_usable.exit_crit_edge ], [ %tobool4.not.i, %if.end3.i ]
  %tobool.not = icmp eq ptr %gs6, null
  br i1 %tobool.not, label %ip_tunnel_dst_cache_usable.exit.cleanup_crit_edge, label %if.end

ip_tunnel_dst_cache_usable.exit.cleanup_crit_edge: ; preds = %ip_tunnel_dst_cache_usable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %ip_tunnel_dst_cache_usable.exit
  %6 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %9 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flowic_mark, align 8
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %10 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 17, ptr %flowic_proto, align 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %u = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 1
  %dst4 = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 1, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %daddr, ptr %dst4, i32 16)
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %saddr, ptr %u, i32 16)
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %13 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %dport, ptr %uli, align 4
  %sport9 = getelementptr inbounds %struct.anon.86, ptr %uli, i32 0, i32 1
  %14 = ptrtoint ptr %sport9 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %sport, ptr %sport9, align 2
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 3
  %15 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tos, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp = icmp eq i8 %16, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %collect_md = getelementptr i8, ptr %dev, i32 2432
  %17 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %collect_md, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not = icmp eq i8 %18, 0
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %21 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %conv.i.i
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %23 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %protocol.i, align 8
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %24, label %if.then13.if.end16.thread_crit_edge [
    i16 2048, label %if.then.i
    i16 -31011, label %if.then6.i
  ]

if.then13.if.end16.thread_crit_edge:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.thread

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tos.i, align 1
  br label %if.end16.thread

if.then6.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i, align 2
  %30 = lshr i16 %29, 4
  %conv1.i.i = trunc i16 %30 to i8
  br label %if.end16.thread

if.end16.thread:                                  ; preds = %if.then6.i, %if.then.i, %if.then13.if.end16.thread_crit_edge
  %prio.0.ph = phi i8 [ 0, %if.then13.if.end16.thread_crit_edge ], [ %conv1.i.i, %if.then6.i ], [ %27, %if.then.i ]
  %31 = and i8 %prio.0.ph, 30
  %and120 = zext i8 %31 to i32
  %label121 = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 5
  %32 = ptrtoint ptr %label121 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %label121, align 4
  %shl.i122 = shl nuw nsw i32 %and120, 20
  %or.i123 = or i32 %shl.i122, %33
  %flowlabel124 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %34 = ptrtoint ptr %flowlabel124 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i123, ptr %flowlabel124, align 8
  %dst_cache20125 = getelementptr inbounds %struct.ip_tunnel_info, ptr %info, i32 0, i32 1
  br label %if.end28

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %35 = and i8 %16, 30
  %and = zext i8 %35 to i32
  %label = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 5
  %36 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %label, align 4
  %shl.i = shl nuw nsw i32 %and, 20
  %or.i = or i32 %shl.i, %37
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %38 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i, ptr %flowlabel, align 8
  %dst_cache20 = getelementptr inbounds %struct.ip_tunnel_info, ptr %info, i32 0, i32 1
  br i1 %retval.0.i116, label %if.then22, label %if.end16.if.end28_crit_edge

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then22:                                        ; preds = %if.end16
  %call24 = tail call ptr @dst_cache_get_ip6(ptr noundef %dst_cache20, ptr noundef %saddr) #18
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then22.if.end28_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.end16.if.end28_crit_edge, %if.end16.thread
  %dst_cache20127 = phi ptr [ %dst_cache20125, %if.end16.thread ], [ %dst_cache20, %if.then22.if.end28_crit_edge ], [ %dst_cache20, %if.end16.if.end28_crit_edge ]
  %use_cache.0.shrunk126 = phi i1 [ false, %if.end16.thread ], [ true, %if.then22.if.end28_crit_edge ], [ false, %if.end16.if.end28_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %39 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_dst_lookup_flow = getelementptr inbounds %struct.ipv6_stub, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ipv6_dst_lookup_flow to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ipv6_dst_lookup_flow, align 4
  %net = getelementptr i8, ptr %dev, i32 2328
  %42 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net, align 8
  %sock = getelementptr inbounds %struct.geneve_sock, ptr %gs6, i32 0, i32 2
  %44 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sk, align 16
  %call29 = tail call ptr %41(ptr noundef %43, ptr noundef %47, ptr noundef %fl6, ptr noundef null) #18
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body32, label %if.end44

do.body32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geneve_get_v6_dst.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@geneve_get_v6_dst, %if.then38)) #18
          to label %cleanup [label %if.then38], !srcloc !184

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @geneve_get_v6_dst.__UNIQUE_ID_ddebug599, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %daddr) #18
  br label %cleanup

if.end44:                                         ; preds = %if.end28
  %48 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call29, align 4
  %cmp46 = icmp eq ptr %49, %dev
  br i1 %cmp46, label %do.body50, label %if.end70

do.body50:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geneve_get_v6_dst.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@geneve_get_v6_dst, %if.then62)) #18
          to label %do.end68 [label %if.then62], !srcloc !184

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @geneve_get_v6_dst.__UNIQUE_ID_ddebug600, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef %daddr) #18
  br label %do.end68

do.end68:                                         ; preds = %if.then62, %do.body50
  tail call void @dst_release(ptr noundef %call29) #18
  br label %cleanup

if.end70:                                         ; preds = %if.end44
  br i1 %use_cache.0.shrunk126, label %if.then72, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dst_cache_set_ip6(ptr noundef %dst_cache20127, ptr noundef %call29, ptr noundef %saddr) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end70.cleanup_crit_edge, %do.end68, %if.then38, %do.body32, %if.then22.cleanup_crit_edge, %ip_tunnel_dst_cache_usable.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -40 to ptr), %do.end68 ], [ %call24, %if.then22.cleanup_crit_edge ], [ %call29, %if.then72 ], [ %call29, %if.end70.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %ip_tunnel_dst_cache_usable.exit.cleanup_crit_edge ], [ inttoptr (i32 -101 to ptr), %do.body32 ], [ inttoptr (i32 -101 to ptr), %if.then38 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_tunnel_check_pmtu(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_tunnel_info_unclone(ptr nocapture noundef %skb) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.skb_dst.exit.i.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !183

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1013, i32 noundef 9, ptr noundef null) #18
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %entry.skb_dst.exit.i.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i.i, label %skb_dst.exit.i.i.tun_dst_unclone.exit_crit_edge, label %land.lhs.true.i.i

skb_dst.exit.i.i.tun_dst_unclone.exit_crit_edge:  ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tun_dst_unclone.exit

land.lhs.true.i.i:                                ; preds = %skb_dst.exit.i.i
  %5 = inttoptr i32 %and25.i.i.i to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i.i, align 4
  %8 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.tun_dst_unclone.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.i.tun_dst_unclone.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tun_dst_unclone.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.i
  %type.i = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.tun_dst_unclone.exit_crit_edge

lor.lhs.false.i.tun_dst_unclone.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tun_dst_unclone.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %options_len.i = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %options_len.i, align 8
  %call3.i = tail call ptr @metadata_dst_alloc(i8 noundef zeroext %12, i32 noundef 0, i32 noundef 2592) #18
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.tun_dst_unclone.exit_crit_edge, label %if.end7.i

if.end.i.tun_dst_unclone.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tun_dst_unclone.exit

if.end7.i:                                        ; preds = %if.end.i
  %conv.i = zext i8 %12 to i32
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 2
  %u8.i = getelementptr inbounds %struct.metadata_dst, ptr %call3.i, i32 0, i32 2
  %add.i = add nuw nsw i32 %conv.i, 72
  %13 = call ptr @memcpy(ptr %u8.i, ptr %u.i, i32 %add.i)
  %dst_cache.i = getelementptr inbounds %struct.metadata_dst, ptr %call3.i, i32 0, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst_cache.i, align 8
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %if.end7.i.if.end20.i_crit_edge, label %if.then12.i

if.end7.i.if.end20.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i

if.then12.i:                                      ; preds = %if.end7.i
  %call15.i = tail call i32 @dst_cache_init(ptr noundef %dst_cache.i, i32 noundef 2592) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then12.i.if.end20.i_crit_edge, label %cleanup.i

if.then12.i.if.end20.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i

cleanup.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @metadata_dst_free(ptr noundef nonnull %call3.i) #18
  %16 = inttoptr i32 %call15.i to ptr
  br label %tun_dst_unclone.exit

if.end20.i:                                       ; preds = %if.then12.i.if.end20.i_crit_edge, %if.end7.i.if.end20.i_crit_edge
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i37.i = icmp ne i32 %18, 0
  %and.i.i38.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %and.i.i38.i, 0
  %or.cond.i = and i1 %tobool.not.i37.i, %tobool.not.i.i39.i
  br i1 %or.cond.i, label %if.then.i.i.i, label %if.end20.i.skb_dst_drop.exit.i_crit_edge

if.end20.i.skb_dst_drop.exit.i_crit_edge:         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_dst_drop.exit.i

if.then.i.i.i:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #20
  %and1.i.i.i = and i32 %18, -2
  %19 = inttoptr i32 %and1.i.i.i to ptr
  tail call void @dst_release(ptr noundef %19) #18
  br label %skb_dst_drop.exit.i

skb_dst_drop.exit.i:                              ; preds = %if.then.i.i.i, %if.end20.i.skb_dst_drop.exit.i_crit_edge
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %20 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, 4096
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %21 = ptrtoint ptr %call3.i to i32
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %0, align 8
  br label %tun_dst_unclone.exit

tun_dst_unclone.exit:                             ; preds = %skb_dst_drop.exit.i, %cleanup.i, %if.end.i.tun_dst_unclone.exit_crit_edge, %lor.lhs.false.i.tun_dst_unclone.exit_crit_edge, %land.lhs.true.i.i.tun_dst_unclone.exit_crit_edge, %skb_dst.exit.i.i.tun_dst_unclone.exit_crit_edge
  %retval.1.i = phi ptr [ %call3.i, %skb_dst_drop.exit.i ], [ %16, %cleanup.i ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.i.tun_dst_unclone.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.tun_dst_unclone.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %skb_dst.exit.i.i.tun_dst_unclone.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.i.tun_dst_unclone.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.1.i, inttoptr (i32 -4096 to ptr)
  %u = getelementptr inbounds %struct.metadata_dst, ptr %retval.1.i, i32 0, i32 2
  %retval.0 = select i1 %cmp.i, ptr null, ptr %u
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @geneve_build_skb(ptr noundef %dst, ptr noundef %skb, ptr nocapture noundef readonly %info, i1 noundef zeroext %xnet, i32 noundef %ip_hdr_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tun_flags = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tun_flags, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %mac_header.i, align 2
  tail call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %xnet) #18
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hard_header_len, align 2
  %conv4 = zext i16 %10 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 21
  %11 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %needed_headroom, align 8
  %conv6 = zext i16 %12 to i32
  %add = add nuw nsw i32 %conv6, %conv4
  %and7 = and i32 %add, 131056
  %header_len = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 9
  %13 = ptrtoint ptr %header_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %header_len, align 4
  %conv9 = zext i16 %14 to i32
  %options_len = getelementptr inbounds %struct.ip_tunnel_info, ptr %info, i32 0, i32 2
  %15 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %options_len, align 8
  %conv12 = zext i8 %16 to i32
  %add10 = add i32 %ip_hdr_len, 32
  %add11 = add i32 %add10, %conv9
  %add13 = add i32 %add11, %and7
  %add14 = add i32 %add13, %conv12
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %17 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

entry.skb_header_cloned.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #18
  %20 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %21, 65535
  %shr.i.i = ashr i32 %21, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %entry.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %entry.skb_header_cloned.exit.i_crit_edge ]
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add14)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add14
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end_crit_edge:        ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %26 = tail call i32 @llvm.usub.sat.i32(i32 %add14, i32 %sub.ptr.sub.i.i.i) #18
  %add.i.i = add i32 %26, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool15.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool15.not, label %skb_cow_head.exit.if.end_crit_edge, label %skb_cow_head.exit.free_dst_crit_edge, !prof !179

skb_cow_head.exit.free_dst_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_dst

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %skb_header_cloned.exit.i.if.end_crit_edge
  %27 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not = icmp eq i16 %27, 0
  %cond.i = select i1 %tobool.not, i32 1024, i32 2048
  %call.i = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef %cond.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.end23, label %if.end.free_dst_crit_edge

if.end.free_dst_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_dst

if.end23:                                         ; preds = %if.end
  %28 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %options_len, align 8
  %conv25 = zext i8 %29 to i32
  %add26 = add nuw nsw i32 %conv25, 8
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %idx.neg.i = sub nuw nsw i32 -8, %conv25
  %add.ptr.i = getelementptr i8, ptr %31, i32 %idx.neg.i
  store ptr %add.ptr.i, ptr %data.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %add26, %33
  store i32 %add.i, ptr %len1.i, align 4
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i = load i16, ptr %add.ptr.i, align 2
  %bf.clear.i = and i16 %bf.load.i, 16383
  store i16 %bf.clear.i, ptr %add.ptr.i, align 2
  %35 = load i8, ptr %options_len, align 8
  %36 = lshr i8 %35, 2
  %37 = zext i8 %36 to i16
  %bf.shl.i = shl nuw nsw i16 %37, 8
  %bf.clear3.i = and i16 %bf.load.i, 255
  %bf.set4.i = or i16 %bf.shl.i, %bf.clear3.i
  store i16 %bf.set4.i, ptr %add.ptr.i, align 2
  %38 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tun_flags, align 8
  %40 = lshr i16 %39, 2
  %bf.shl10.i = and i16 %40, 128
  %bf.clear11.i = and i16 %bf.set4.i, 16255
  %bf.set12.i = or i16 %bf.clear11.i, %bf.shl10.i
  store i16 %bf.set12.i, ptr %add.ptr.i, align 2
  %41 = load i16, ptr %tun_flags, align 8
  %42 = lshr i16 %41, 4
  %bf.shl26.i = and i16 %42, 64
  %bf.clear27.i = or i16 %bf.shl10.i, %bf.shl.i
  %bf.set28.i = or i16 %bf.clear27.i, %bf.shl26.i
  store i16 %bf.set28.i, ptr %add.ptr.i, align 2
  %43 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %info, align 8
  %vni.i = getelementptr inbounds %struct.genevehdr, ptr %add.ptr.i, i32 0, i32 2
  %shr.i.i45 = lshr i64 %44, 16
  %conv.i.i = trunc i64 %shr.i.i45 to i8
  %45 = ptrtoint ptr %vni.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i.i, ptr %vni.i, align 1
  %shr1.i.i = lshr i64 %44, 8
  %conv2.i.i = trunc i64 %shr1.i.i to i8
  %arrayidx3.i.i = getelementptr %struct.genevehdr, ptr %add.ptr.i, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv2.i.i, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = trunc i64 %44 to i8
  %arrayidx5.i.i = getelementptr %struct.genevehdr, ptr %add.ptr.i, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv4.i.i, ptr %arrayidx5.i.i, align 1
  %proto_type.i = getelementptr inbounds %struct.genevehdr, ptr %add.ptr.i, i32 0, i32 1
  %48 = ptrtoint ptr %proto_type.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 25944, ptr %proto_type.i, align 2
  %rsvd2.i = getelementptr inbounds %struct.genevehdr, ptr %add.ptr.i, i32 0, i32 3
  %49 = ptrtoint ptr %rsvd2.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %rsvd2.i, align 1
  %50 = load i16, ptr %tun_flags, align 8
  %51 = and i16 %50, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool38.not.i = icmp eq i16 %51, 0
  br i1 %tobool38.not.i, label %if.end23.geneve_build_header.exit_crit_edge, label %if.then.i

if.end23.geneve_build_header.exit_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve_build_header.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  %options.i = getelementptr inbounds %struct.genevehdr, ptr %add.ptr.i, i32 0, i32 4
  %add.ptr.i.i = getelementptr %struct.ip_tunnel_info, ptr %info, i32 1
  %52 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %options_len, align 8
  %conv.i53.i = zext i8 %53 to i32
  %54 = call ptr @memcpy(ptr %options.i, ptr %add.ptr.i.i, i32 %conv.i53.i)
  br label %geneve_build_header.exit

geneve_build_header.exit:                         ; preds = %if.then.i, %if.end23.geneve_build_header.exit_crit_edge
  %55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 25944, ptr %55, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %57 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %bf.load.i46 = load i32, ptr %inner_protocol_type.i, align 2
  %bf.clear.i47 = and i32 %bf.load.i46, -4194305
  store i32 %bf.clear.i47, ptr %inner_protocol_type.i, align 2
  br label %cleanup

free_dst:                                         ; preds = %if.end.free_dst_crit_edge, %skb_cow_head.exit.free_dst_crit_edge
  %err.0 = phi i32 [ %call4.i.i, %skb_cow_head.exit.free_dst_crit_edge ], [ %call.i, %if.end.free_dst_crit_edge ]
  tail call void @dst_release(ptr noundef %dst) #18
  br label %cleanup

cleanup:                                          ; preds = %free_dst, %geneve_build_header.exit
  %retval.0 = phi i32 [ %err.0, %free_dst ], [ 0, %geneve_build_header.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_tunnel6_xmit_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @jhash(ptr nocapture noundef readonly %key, i32 noundef %initval) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %add1 = add i32 %initval, -559038725
  %arrayidx = getelementptr i8, ptr %key, i32 11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 %conv, 24
  %add32 = add i32 %shl, %add1
  %arrayidx34 = getelementptr i8, ptr %key, i32 10
  %2 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %3 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %add37 = add i32 %add32, %shl36
  %arrayidx39 = getelementptr i8, ptr %key, i32 9
  %4 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %5 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %add42 = add i32 %add37, %shl41
  %arrayidx44 = getelementptr i8, ptr %key, i32 8
  %6 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %7 to i32
  %add46 = add i32 %add42, %conv45
  %arrayidx48 = getelementptr i8, ptr %key, i32 7
  %8 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %9 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %add51 = add i32 %shl50, %add1
  %arrayidx53 = getelementptr i8, ptr %key, i32 6
  %10 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %11 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %add56 = add i32 %add51, %shl55
  %arrayidx58 = getelementptr i8, ptr %key, i32 5
  %12 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %13 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = add i32 %add56, %shl60
  %arrayidx63 = getelementptr i8, ptr %key, i32 4
  %14 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %15 to i32
  %add65 = add i32 %add61, %conv64
  %arrayidx67 = getelementptr i8, ptr %key, i32 3
  %16 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %17 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %add70 = add i32 %shl69, %add1
  %arrayidx72 = getelementptr i8, ptr %key, i32 2
  %18 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %19 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %add75 = add i32 %add70, %shl74
  %arrayidx77 = getelementptr i8, ptr %key, i32 1
  %20 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %21 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %add80 = add i32 %add75, %shl79
  %22 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %key, align 1
  %conv83 = zext i8 %23 to i32
  %add84 = add i32 %add80, %conv83
  %xor85 = xor i32 %add65, %add46
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add65, i32 %add65, i32 14) #18
  %sub87 = sub i32 %xor85, %or.i
  %xor88 = xor i32 %add84, %sub87
  %or.i1 = tail call i32 @llvm.fshl.i32(i32 %sub87, i32 %sub87, i32 11) #18
  %sub90 = sub i32 %xor88, %or.i1
  %xor91 = xor i32 %sub90, %add65
  %or.i2 = tail call i32 @llvm.fshl.i32(i32 %sub90, i32 %sub90, i32 25) #18
  %sub93 = sub i32 %xor91, %or.i2
  %xor94 = xor i32 %sub93, %sub87
  %or.i3 = tail call i32 @llvm.fshl.i32(i32 %sub93, i32 %sub93, i32 16) #18
  %sub96 = sub i32 %xor94, %or.i3
  %xor97 = xor i32 %sub96, %sub90
  %or.i4 = tail call i32 @llvm.fshl.i32(i32 %sub96, i32 %sub96, i32 4) #18
  %sub99 = sub i32 %xor97, %or.i4
  %xor100 = xor i32 %sub99, %sub93
  %or.i5 = tail call i32 @llvm.fshl.i32(i32 %sub99, i32 %sub99, i32 14) #18
  %sub102 = sub i32 %xor100, %or.i5
  %or.i6 = tail call i32 @llvm.fshl.i32(i32 %sub102, i32 %sub102, i32 24) #18
  %xor103 = xor i32 %sub102, %sub96
  %sub105 = sub i32 %xor103, %or.i6
  ret i32 %sub105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get_ip6(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @metadata_dst_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iptunnel_handle_offloads(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @geneve_get_v4_rt(ptr nocapture noundef readonly %skb, ptr noundef %dev, ptr noundef readnone %gs4, ptr noundef %fl4, ptr noundef %info, i16 noundef zeroext %dport, i16 noundef zeroext %sport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ip_tunnel_dst_cache_usable.exit_crit_edge

entry.ip_tunnel_dst_cache_usable.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %ip_tunnel_dst_cache_usable.exit

if.end.i:                                         ; preds = %entry
  %tobool1.not.i = icmp eq ptr %info, null
  br i1 %tobool1.not.i, label %if.end.i.ip_tunnel_dst_cache_usable.exit_crit_edge, label %if.end3.i

if.end.i.ip_tunnel_dst_cache_usable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %ip_tunnel_dst_cache_usable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %tun_flags.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tun_flags.i, align 8
  %5 = and i16 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool4.not.i = icmp eq i16 %5, 0
  br label %ip_tunnel_dst_cache_usable.exit

ip_tunnel_dst_cache_usable.exit:                  ; preds = %if.end3.i, %if.end.i.ip_tunnel_dst_cache_usable.exit_crit_edge, %entry.ip_tunnel_dst_cache_usable.exit_crit_edge
  %retval.0.i116 = phi i1 [ false, %entry.ip_tunnel_dst_cache_usable.exit_crit_edge ], [ true, %if.end.i.ip_tunnel_dst_cache_usable.exit_crit_edge ], [ %tobool4.not.i, %if.end3.i ]
  %tobool.not = icmp eq ptr %gs4, null
  br i1 %tobool.not, label %ip_tunnel_dst_cache_usable.exit.cleanup_crit_edge, label %if.end

ip_tunnel_dst_cache_usable.exit.cleanup_crit_edge: ; preds = %ip_tunnel_dst_cache_usable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %ip_tunnel_dst_cache_usable.exit
  %6 = call ptr @memset(ptr %fl4, i32 0, i32 56)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %9 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flowic_mark, align 8
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %10 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 17, ptr %flowic_proto, align 2
  %u = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 1
  %dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst, align 4
  %daddr = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %13 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %daddr, align 4
  %14 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %u, align 8
  %saddr = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %16 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %saddr, align 8
  %uli = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %17 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %dport, ptr %uli, align 8
  %sport8 = getelementptr inbounds %struct.anon.86, ptr %uli, i32 0, i32 1
  %18 = ptrtoint ptr %sport8 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %sport, ptr %sport8, align 2
  %tos10 = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 3
  %19 = ptrtoint ptr %tos10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tos10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp = icmp eq i8 %20, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %collect_md = getelementptr i8, ptr %dev, i32 2432
  %21 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %collect_md, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not = icmp eq i8 %22, 0
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %26 to i32
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %conv.i.i
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %27 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %protocol.i, align 8
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %28, label %if.then13.if.end16.thread_crit_edge [
    i16 2048, label %if.then.i
    i16 -31011, label %if.then6.i
  ]

if.then13.if.end16.thread_crit_edge:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.thread

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos.i, align 1
  br label %if.end16.thread

if.then6.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i.i, align 2
  %34 = lshr i16 %33, 4
  %conv1.i.i = trunc i16 %34 to i8
  br label %if.end16.thread

if.end16.thread:                                  ; preds = %if.then6.i, %if.then.i, %if.then13.if.end16.thread_crit_edge
  %tos.0.ph = phi i8 [ 0, %if.then13.if.end16.thread_crit_edge ], [ %conv1.i.i, %if.then6.i ], [ %31, %if.then.i ]
  %35 = and i8 %tos.0.ph, 30
  %flowic_tos120 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %36 = ptrtoint ptr %flowic_tos120 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %flowic_tos120, align 4
  %dst_cache20121 = getelementptr inbounds %struct.ip_tunnel_info, ptr %info, i32 0, i32 1
  br label %if.end28

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %37 = and i8 %20, 30
  %flowic_tos = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %38 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %flowic_tos, align 4
  %dst_cache20 = getelementptr inbounds %struct.ip_tunnel_info, ptr %info, i32 0, i32 1
  br i1 %retval.0.i116, label %if.then22, label %if.end16.if.end28_crit_edge

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then22:                                        ; preds = %if.end16
  %call24 = tail call ptr @dst_cache_get_ip4(ptr noundef %dst_cache20, ptr noundef %saddr) #18
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then22.if.end28_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.end16.if.end28_crit_edge, %if.end16.thread
  %dst_cache20123 = phi ptr [ %dst_cache20121, %if.end16.thread ], [ %dst_cache20, %if.then22.if.end28_crit_edge ], [ %dst_cache20, %if.end16.if.end28_crit_edge ]
  %use_cache.0.shrunk122 = phi i1 [ false, %if.end16.thread ], [ true, %if.then22.if.end28_crit_edge ], [ false, %if.end16.if.end28_crit_edge ]
  %net = getelementptr i8, ptr %dev, i32 2328
  %39 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net, align 8
  %call.i = tail call ptr @ip_route_output_flow(ptr noundef %40, ptr noundef %fl4, ptr noundef null) #18
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body32, label %if.end44

do.body32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geneve_get_v4_rt.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@geneve_get_v4_rt, %if.then38)) #18
          to label %cleanup [label %if.then38], !srcloc !184

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @geneve_get_v4_rt.__UNIQUE_ID_ddebug597, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %daddr) #18
  br label %cleanup

if.end44:                                         ; preds = %if.end28
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %cmp47 = icmp eq ptr %42, %dev
  br i1 %cmp47, label %do.body51, label %if.end71

do.body51:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geneve_get_v4_rt.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@geneve_get_v4_rt, %if.then63)) #18
          to label %do.end69 [label %if.then63], !srcloc !184

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @geneve_get_v4_rt.__UNIQUE_ID_ddebug598, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %daddr) #18
  br label %do.end69

do.end69:                                         ; preds = %if.then63, %do.body51
  tail call void @dst_release(ptr noundef %call.i) #18
  br label %cleanup

if.end71:                                         ; preds = %if.end44
  br i1 %use_cache.0.shrunk122, label %if.then73, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #20
  %43 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %saddr, align 8
  tail call void @dst_cache_set_ip4(ptr noundef %dst_cache20123, ptr noundef %call.i, i32 noundef %44) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end71.cleanup_crit_edge, %do.end69, %if.then38, %do.body32, %if.then22.cleanup_crit_edge, %ip_tunnel_dst_cache_usable.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -40 to ptr), %do.end69 ], [ %call24, %if.then22.cleanup_crit_edge ], [ %call.i, %if.then73 ], [ %call.i, %if.end71.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %ip_tunnel_dst_cache_usable.exit.cleanup_crit_edge ], [ inttoptr (i32 -101 to ptr), %do.body32 ], [ inttoptr (i32 -101 to ptr), %if.then38 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_xmit_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get_ip4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip4(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @geneve_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %drvinfo) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #18
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @geneve_nl2info(ptr nocapture noundef readonly %data, ptr noundef writeonly %extack, ptr noundef %cfg, i1 noundef zeroext %changelink) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %data, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end32_crit_edge, label %land.lhs.true

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %data, i32 7
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then9, label %do.body

do.body:                                          ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_nl2info.__msg) #18
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.body.cleanup254_crit_edge, label %if.then5

do.body.cleanup254_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup254

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @geneve_nl2info.__msg, ptr %extack, align 4
  br label %cleanup254

if.then9:                                         ; preds = %land.lhs.true
  br i1 %changelink, label %land.lhs.true11, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

land.lhs.true11:                                  ; preds = %if.then9
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %cfg, i32 0, i32 3
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode.i, align 1
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.not = icmp eq i8 %7, 0
  br i1 %tobool.not.i.not, label %land.lhs.true11.if.end14_crit_edge, label %land.lhs.true11.do.body243_crit_edge

land.lhs.true11.do.body243_crit_edge:             ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body243

land.lhs.true11.if.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true11.if.end14_crit_edge, %if.then9.if.end14_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dst, align 4
  %and.i = and i32 %9, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %do.body22, label %if.end14.if.end32_crit_edge

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

do.body22:                                        ; preds = %if.end14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_nl2info.__msg.34) #18
  %tobool24.not = icmp eq ptr %extack, null
  br i1 %tobool24.not, label %do.body22.cleanup254_crit_edge, label %if.then25

do.body22.cleanup254_crit_edge:                   ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup254

if.then25:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @geneve_nl2info.__msg.34, ptr %extack, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %14 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %15 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %policy, align 4
  br label %cleanup254

if.end32:                                         ; preds = %if.end14.if.end32_crit_edge, %entry.if.end32_crit_edge
  %arrayidx33 = getelementptr ptr, ptr %data, i32 7
  %16 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx33, align 4
  %tobool34.not = icmp eq ptr %17, null
  br i1 %tobool34.not, label %if.end32.if.end87_crit_edge, label %if.then35

if.end32.if.end87_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end87

if.then35:                                        ; preds = %if.end32
  br i1 %changelink, label %land.lhs.true38, label %if.then35.if.end44_crit_edge

if.then35.if.end44_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44

land.lhs.true38:                                  ; preds = %if.then35
  %mode.i2 = getelementptr inbounds %struct.ip_tunnel_info, ptr %cfg, i32 0, i32 3
  %18 = ptrtoint ptr %mode.i2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mode.i2, align 1
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i3 = icmp eq i8 %20, 0
  br i1 %tobool.not.i3, label %land.lhs.true38.do.body243_crit_edge, label %land.lhs.true38.if.end44_crit_edge

land.lhs.true38.if.end44_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44

land.lhs.true38.do.body243_crit_edge:             ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body243

if.end44:                                         ; preds = %land.lhs.true38.if.end44_crit_edge, %if.then35.if.end44_crit_edge
  %mode = getelementptr inbounds %struct.ip_tunnel_info, ptr %cfg, i32 0, i32 3
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %mode, align 1
  %dst47 = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #18
  %22 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx33, align 4
  %24 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp, ptr noundef %23, i32 noundef 16) #18
  %25 = call ptr @memcpy(ptr %dst47, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #18
  %call.i5 = call i32 @__ipv6_addr_type(ptr noundef %dst47) #18
  %and = and i32 %call.i5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %if.end66, label %do.body55

do.body55:                                        ; preds = %if.end44
  call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_nl2info.__msg.35) #18
  %tobool57.not = icmp eq ptr %extack, null
  br i1 %tobool57.not, label %do.body55.cleanup254_crit_edge, label %if.then58

do.body55.cleanup254_crit_edge:                   ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup254

if.then58:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @geneve_nl2info.__msg.35, ptr %extack, align 4
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx33, align 4
  %bad_attr61 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %29 = ptrtoint ptr %bad_attr61 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %bad_attr61, align 4
  %policy62 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %30 = ptrtoint ptr %policy62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %policy62, align 4
  br label %cleanup254

if.end66:                                         ; preds = %if.end44
  %31 = ptrtoint ptr %dst47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dst47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %32)
  %cmp.i7 = icmp ugt i32 %32, -16777217
  br i1 %cmp.i7, label %do.body72, label %if.end83

do.body72:                                        ; preds = %if.end66
  call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_nl2info.__msg.36) #18
  %tobool74.not = icmp eq ptr %extack, null
  br i1 %tobool74.not, label %do.body72.cleanup254_crit_edge, label %if.then75

do.body72.cleanup254_crit_edge:                   ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup254

if.then75:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #20
  %33 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @geneve_nl2info.__msg.36, ptr %extack, align 4
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx33, align 4
  %bad_attr78 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %36 = ptrtoint ptr %bad_attr78 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %bad_attr78, align 4
  %policy79 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %37 = ptrtoint ptr %policy79 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %policy79, align 4
  br label %cleanup254

if.end83:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #20
  %tun_flags = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 2
  %38 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tun_flags, align 8
  %40 = or i16 %39, 1
  store i16 %40, ptr %tun_flags, align 8
  %use_udp6_rx_checksums = getelementptr inbounds %struct.geneve_config, ptr %cfg, i32 0, i32 2
  %41 = ptrtoint ptr %use_udp6_rx_checksums to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %use_udp6_rx_checksums, align 1
  br label %if.end87

if.end87:                                         ; preds = %if.end83, %if.end32.if.end87_crit_edge
  %arrayidx88 = getelementptr ptr, ptr %data, i32 1
  %42 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx88, align 4
  %tobool89.not = icmp eq ptr %43, null
  br i1 %tobool89.not, label %if.end87.if.end116_crit_edge, label %if.then90

if.end87.if.end116_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end116

if.then90:                                        ; preds = %if.end87
  %add.ptr.i.i8 = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i8, align 4
  %or6.i = and i32 %45, 16777215
  %conv7.i = zext i32 %or6.i to i64
  br i1 %changelink, label %land.lhs.true106, label %if.then90.cleanup.thread_crit_edge

if.then90.cleanup.thread_crit_edge:               ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

land.lhs.true106:                                 ; preds = %if.then90
  %46 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %cfg, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %conv7.i)
  %cmp108.not = icmp eq i64 %47, %conv7.i
  br i1 %cmp108.not, label %land.lhs.true106.cleanup.thread_crit_edge, label %land.lhs.true106.do.body243_crit_edge

land.lhs.true106.do.body243_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body243

land.lhs.true106.cleanup.thread_crit_edge:        ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true106.cleanup.thread_crit_edge, %if.then90.cleanup.thread_crit_edge
  %48 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv7.i, ptr %cfg, align 8
  br label %if.end116

if.end116:                                        ; preds = %cleanup.thread, %if.end87.if.end116_crit_edge
  %arrayidx117 = getelementptr ptr, ptr %data, i32 12
  %49 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx117, align 4
  %tobool118.not = icmp eq ptr %50, null
  br i1 %tobool118.not, label %if.else126, label %if.then119

if.then119:                                       ; preds = %if.end116
  %add.ptr.i.i9 = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i9 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr.i.i9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool122.not = icmp eq i8 %52, 0
  %ttl_inherit124 = getelementptr inbounds %struct.geneve_config, ptr %cfg, i32 0, i32 3
  br i1 %tobool122.not, label %if.else, label %if.then123

if.then123:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #20
  %53 = ptrtoint ptr %ttl_inherit124 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %ttl_inherit124, align 2
  br label %if.end135

if.else:                                          ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #20
  %54 = ptrtoint ptr %ttl_inherit124 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %ttl_inherit124, align 2
  br label %if.end135

if.else126:                                       ; preds = %if.end116
  %arrayidx127 = getelementptr ptr, ptr %data, i32 3
  %55 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx127, align 4
  %tobool128.not = icmp eq ptr %56, null
  br i1 %tobool128.not, label %if.else126.if.end135_crit_edge, label %if.then129

if.else126.if.end135_crit_edge:                   ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end135

if.then129:                                       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i.i10 = getelementptr i8, ptr %56, i32 4
  %57 = ptrtoint ptr %add.ptr.i.i10 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr.i.i10, align 1
  %ttl = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 4
  %59 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %ttl, align 1
  %ttl_inherit133 = getelementptr inbounds %struct.geneve_config, ptr %cfg, i32 0, i32 3
  %60 = ptrtoint ptr %ttl_inherit133 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %ttl_inherit133, align 2
  br label %if.end135

if.end135:                                        ; preds = %if.then129, %if.else126.if.end135_crit_edge, %if.else, %if.then123
  %arrayidx136 = getelementptr ptr, ptr %data, i32 4
  %61 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx136, align 4
  %tobool137.not = icmp eq ptr %62, null
  br i1 %tobool137.not, label %if.end135.if.end142_crit_edge, label %if.then138

if.end135.if.end142_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end142

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i.i11 = getelementptr i8, ptr %62, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i11 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr.i.i11, align 1
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 3
  %65 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %tos, align 2
  br label %if.end142

if.end142:                                        ; preds = %if.then138, %if.end135.if.end142_crit_edge
  %arrayidx143 = getelementptr ptr, ptr %data, i32 13
  %66 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx143, align 4
  %tobool144.not = icmp eq ptr %67, null
  br i1 %tobool144.not, label %if.end142.if.end149_crit_edge, label %if.then145

if.end142.if.end149_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end149

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i.i12 = getelementptr i8, ptr %67, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i12 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %add.ptr.i.i12, align 1
  %conv148 = zext i8 %69 to i32
  %df = getelementptr inbounds %struct.geneve_config, ptr %cfg, i32 0, i32 4
  %70 = ptrtoint ptr %df to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv148, ptr %df, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then145, %if.end142.if.end149_crit_edge
  %arrayidx150 = getelementptr ptr, ptr %data, i32 11
  %71 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx150, align 4
  %tobool151.not = icmp eq ptr %72, null
  br i1 %tobool151.not, label %if.end149.if.end178_crit_edge, label %if.then152

if.end149.if.end178_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end178

if.then152:                                       ; preds = %if.end149
  %add.ptr.i.i13 = getelementptr i8, ptr %72, i32 4
  %73 = ptrtoint ptr %add.ptr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i.i13, align 4
  %and155 = and i32 %74, 1048575
  %label = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 5
  %75 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and155, ptr %label, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool159.not = icmp eq i32 %and155, 0
  br i1 %tobool159.not, label %if.then152.if.end178_crit_edge, label %land.lhs.true160

if.then152.if.end178_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end178

land.lhs.true160:                                 ; preds = %if.then152
  %mode161 = getelementptr inbounds %struct.ip_tunnel_info, ptr %cfg, i32 0, i32 3
  %76 = ptrtoint ptr %mode161 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %mode161, align 1
  %78 = and i8 %77, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool164.not = icmp eq i8 %78, 0
  br i1 %tobool164.not, label %do.body166, label %land.lhs.true160.if.end178_crit_edge

land.lhs.true160.if.end178_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end178

do.body166:                                       ; preds = %land.lhs.true160
  call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_nl2info.__msg.37) #18
  %tobool168.not = icmp eq ptr %extack, null
  br i1 %tobool168.not, label %do.body166.cleanup254_crit_edge, label %if.then169

do.body166.cleanup254_crit_edge:                  ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup254

if.then169:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #20
  %79 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @geneve_nl2info.__msg.37, ptr %extack, align 4
  %80 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx150, align 4
  %bad_attr172 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %82 = ptrtoint ptr %bad_attr172 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %bad_attr172, align 4
  %policy173 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %83 = ptrtoint ptr %policy173 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %policy173, align 4
  br label %cleanup254

if.end178:                                        ; preds = %land.lhs.true160.if.end178_crit_edge, %if.then152.if.end178_crit_edge, %if.end149.if.end178_crit_edge
  %arrayidx179 = getelementptr ptr, ptr %data, i32 5
  %84 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx179, align 4
  %tobool180.not = icmp eq ptr %85, null
  br i1 %tobool180.not, label %if.end188, label %if.then181

if.then181:                                       ; preds = %if.end178
  br i1 %changelink, label %if.then181.do.body243_crit_edge, label %if.end188.thread

if.then181.do.body243_crit_edge:                  ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body243

if.end188:                                        ; preds = %if.end178
  %arrayidx189 = getelementptr ptr, ptr %data, i32 6
  %86 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx189, align 4
  %tobool190.not = icmp eq ptr %87, null
  br i1 %tobool190.not, label %if.end188.if.end195_crit_edge, label %if.then191

if.end188.if.end195_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end195

if.end188.thread:                                 ; preds = %if.then181
  %add.ptr.i.i14 = getelementptr i8, ptr %85, i32 4
  %88 = ptrtoint ptr %add.ptr.i.i14 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %add.ptr.i.i14, align 2
  %tp_dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 7
  %90 = ptrtoint ptr %tp_dst to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %tp_dst, align 2
  %arrayidx18921 = getelementptr ptr, ptr %data, i32 6
  %91 = ptrtoint ptr %arrayidx18921 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx18921, align 4
  %tobool190.not22 = icmp eq ptr %92, null
  br i1 %tobool190.not22, label %if.end188.thread.if.end195_crit_edge, label %if.end188.thread.if.end194_crit_edge

if.end188.thread.if.end194_crit_edge:             ; preds = %if.end188.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end194

if.end188.thread.if.end195_crit_edge:             ; preds = %if.end188.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end195

if.then191:                                       ; preds = %if.end188
  br i1 %changelink, label %if.then191.do.body243_crit_edge, label %if.then191.if.end194_crit_edge

if.then191.if.end194_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end194

if.then191.do.body243_crit_edge:                  ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body243

if.end194:                                        ; preds = %if.then191.if.end194_crit_edge, %if.end188.thread.if.end194_crit_edge
  %collect_md = getelementptr inbounds %struct.geneve_config, ptr %cfg, i32 0, i32 1
  %93 = ptrtoint ptr %collect_md to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %collect_md, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %if.end188.thread.if.end195_crit_edge, %if.end188.if.end195_crit_edge
  %arrayidx196 = getelementptr ptr, ptr %data, i32 8
  %94 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx196, align 4
  %tobool197.not = icmp eq ptr %95, null
  br i1 %tobool197.not, label %if.end195.if.end212_crit_edge, label %if.then198

if.end195.if.end212_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end212

if.then198:                                       ; preds = %if.end195
  br i1 %changelink, label %if.then198.do.body243_crit_edge, label %if.end201

if.then198.do.body243_crit_edge:                  ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body243

if.end201:                                        ; preds = %if.then198
  %add.ptr.i.i15 = getelementptr i8, ptr %95, i32 4
  %96 = ptrtoint ptr %add.ptr.i.i15 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %add.ptr.i.i15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool204.not = icmp eq i8 %97, 0
  br i1 %tobool204.not, label %if.end201.if.end212_crit_edge, label %if.then205

if.end201.if.end212_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end212

if.then205:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #20
  %tun_flags207 = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 2
  %98 = ptrtoint ptr %tun_flags207 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %tun_flags207, align 8
  %100 = or i16 %99, 1
  store i16 %100, ptr %tun_flags207, align 8
  br label %if.end212

if.end212:                                        ; preds = %if.then205, %if.end201.if.end212_crit_edge, %if.end195.if.end212_crit_edge
  %arrayidx213 = getelementptr ptr, ptr %data, i32 9
  %101 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx213, align 4
  %tobool214.not = icmp eq ptr %102, null
  br i1 %tobool214.not, label %if.end212.if.end229_crit_edge, label %if.then215

if.end212.if.end229_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end229

if.then215:                                       ; preds = %if.end212
  br i1 %changelink, label %if.then215.do.body243_crit_edge, label %if.end218

if.then215.do.body243_crit_edge:                  ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body243

if.end218:                                        ; preds = %if.then215
  %add.ptr.i.i16 = getelementptr i8, ptr %102, i32 4
  %103 = ptrtoint ptr %add.ptr.i.i16 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %add.ptr.i.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool221.not = icmp eq i8 %104, 0
  br i1 %tobool221.not, label %if.end218.if.end229_crit_edge, label %if.then222

if.end218.if.end229_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end229

if.then222:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #20
  %tun_flags224 = getelementptr inbounds %struct.ip_tunnel_key, ptr %cfg, i32 0, i32 2
  %105 = ptrtoint ptr %tun_flags224 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %tun_flags224, align 8
  %107 = and i16 %106, -2
  store i16 %107, ptr %tun_flags224, align 8
  br label %if.end229

if.end229:                                        ; preds = %if.then222, %if.end218.if.end229_crit_edge, %if.end212.if.end229_crit_edge
  %arrayidx230 = getelementptr ptr, ptr %data, i32 10
  %108 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx230, align 4
  %tobool231.not = icmp eq ptr %109, null
  br i1 %tobool231.not, label %if.end229.cleanup254_crit_edge, label %if.then232

if.end229.cleanup254_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup254

if.then232:                                       ; preds = %if.end229
  br i1 %changelink, label %if.then232.do.body243_crit_edge, label %if.end235

if.then232.do.body243_crit_edge:                  ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body243

if.end235:                                        ; preds = %if.then232
  %add.ptr.i.i17 = getelementptr i8, ptr %109, i32 4
  %110 = ptrtoint ptr %add.ptr.i.i17 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %add.ptr.i.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool238.not = icmp eq i8 %111, 0
  br i1 %tobool238.not, label %if.end235.cleanup254_crit_edge, label %if.then239

if.end235.cleanup254_crit_edge:                   ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup254

if.then239:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #20
  %use_udp6_rx_checksums240 = getelementptr inbounds %struct.geneve_config, ptr %cfg, i32 0, i32 2
  %112 = ptrtoint ptr %use_udp6_rx_checksums240 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %use_udp6_rx_checksums240, align 1
  br label %cleanup254

do.body243:                                       ; preds = %if.then232.do.body243_crit_edge, %if.then215.do.body243_crit_edge, %if.then198.do.body243_crit_edge, %if.then191.do.body243_crit_edge, %if.then181.do.body243_crit_edge, %land.lhs.true106.do.body243_crit_edge, %land.lhs.true38.do.body243_crit_edge, %land.lhs.true11.do.body243_crit_edge
  %attrtype.1 = phi i32 [ 2, %land.lhs.true11.do.body243_crit_edge ], [ 7, %land.lhs.true38.do.body243_crit_edge ], [ 5, %if.then181.do.body243_crit_edge ], [ 6, %if.then191.do.body243_crit_edge ], [ 8, %if.then198.do.body243_crit_edge ], [ 9, %if.then215.do.body243_crit_edge ], [ 10, %if.then232.do.body243_crit_edge ], [ 1, %land.lhs.true106.do.body243_crit_edge ]
  call void @do_trace_netlink_extack(ptr noundef nonnull @geneve_nl2info.__msg.38) #18
  %tobool245.not = icmp eq ptr %extack, null
  br i1 %tobool245.not, label %do.body243.cleanup254_crit_edge, label %if.then246

do.body243.cleanup254_crit_edge:                  ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup254

if.then246:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #20
  %113 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @geneve_nl2info.__msg.38, ptr %extack, align 4
  %arrayidx248 = getelementptr ptr, ptr %data, i32 %attrtype.1
  %114 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx248, align 4
  %bad_attr249 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %116 = ptrtoint ptr %bad_attr249 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %bad_attr249, align 4
  %policy250 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %117 = ptrtoint ptr %policy250 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %policy250, align 4
  br label %cleanup254

cleanup254:                                       ; preds = %if.then246, %do.body243.cleanup254_crit_edge, %if.then239, %if.end235.cleanup254_crit_edge, %if.end229.cleanup254_crit_edge, %if.then169, %do.body166.cleanup254_crit_edge, %if.then75, %do.body72.cleanup254_crit_edge, %if.then58, %do.body55.cleanup254_crit_edge, %if.then25, %do.body22.cleanup254_crit_edge, %if.then5, %do.body.cleanup254_crit_edge
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -22, %do.body.cleanup254_crit_edge ], [ -22, %if.then25 ], [ -22, %do.body22.cleanup254_crit_edge ], [ -22, %if.then58 ], [ -22, %do.body55.cleanup254_crit_edge ], [ -22, %if.then75 ], [ -22, %do.body72.cleanup254_crit_edge ], [ -22, %if.then169 ], [ -22, %do.body166.cleanup254_crit_edge ], [ 0, %if.end235.cleanup254_crit_edge ], [ 0, %if.then239 ], [ 0, %if.end229.cleanup254_crit_edge ], [ -95, %if.then246 ], [ -95, %do.body243.cleanup254_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @geneve_link_config(ptr noundef %dev, ptr noundef %info, ptr nocapture noundef readonly %tb) unnamed_addr #0 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %4 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_mtu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.i = icmp ult i32 %5, %3
  br i1 %cmp.i, label %if.then.cleanup42.sink.split_crit_edge, label %if.else.i

if.then.cleanup42.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42.sink.split

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %6 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_mtu.i, align 8
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 %3) #18
  br label %cleanup42.sink.split

if.end:                                           ; preds = %entry
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode.i, align 1
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %sw.bb, label %sw.bb14

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #18
  %12 = call ptr @memset(ptr %fl4, i32 0, i32 56)
  %daddr = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst, align 4
  %15 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %daddr, align 4
  %net = getelementptr i8, ptr %dev, i32 2328
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 8
  %call.i = call ptr @ip_route_output_flow(ptr noundef %17, ptr noundef nonnull %fl4, ptr noundef null) #18
  %cmp.i61 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %sw.bb.if.end13_crit_edge, label %land.lhs.true

sw.bb.if.end13_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

land.lhs.true:                                    ; preds = %sw.bb
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %land.lhs.true.if.end13_crit_edge, label %if.then10

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %mtu = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mtu, align 4
  %sub = add i32 %21, -50
  call void @dst_release(ptr noundef %call.i) #18
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true.if.end13_crit_edge, %sw.bb.if.end13_crit_edge
  %ldev_mtu.0 = phi i32 [ 0, %sw.bb.if.end13_crit_edge ], [ %sub, %if.then10 ], [ 0, %land.lhs.true.if.end13_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #18
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 80
  %22 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i62 = tail call zeroext i1 @lockdep_rtnl_is_held() #18
  br i1 %call.i62, label %sw.bb14.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

sw.bb14.__in6_dev_get.exit_crit_edge:             ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #20
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %sw.bb14
  %call2.i = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i63 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 313, ptr noundef nonnull @.str.5) #18
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %sw.bb14.__in6_dev_get.exit_crit_edge
  %tobool17.not = icmp eq ptr %23, null
  br i1 %tobool17.not, label %__in6_dev_get.exit.cleanup42_crit_edge, label %if.end19

__in6_dev_get.exit.cleanup42_crit_edge:           ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

if.end19:                                         ; preds = %__in6_dev_get.exit
  %net20 = getelementptr i8, ptr %dev, i32 2328
  %24 = ptrtoint ptr %net20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net20, align 8
  %dst23 = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 1, i32 0, i32 1
  %call24 = tail call ptr @rt6_lookup(ptr noundef %25, ptr noundef %dst23, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end19.if.end35_crit_edge, label %land.lhs.true26

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

land.lhs.true26:                                  ; preds = %if.end19
  %26 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call24, align 4
  %tobool29.not = icmp eq ptr %27, null
  br i1 %tobool29.not, label %land.lhs.true26.if.end35_crit_edge, label %if.then30

land.lhs.true26.if.end35_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

if.then30:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #20
  %mtu33 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %mtu33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mtu33, align 4
  %sub34 = add i32 %29, -70
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %land.lhs.true26.if.end35_crit_edge, %if.end19.if.end35_crit_edge
  %ldev_mtu.1 = phi i32 [ %sub34, %if.then30 ], [ 0, %land.lhs.true26.if.end35_crit_edge ], [ 0, %if.end19.if.end35_crit_edge ]
  tail call void @dst_release(ptr noundef %call24) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end35, %if.end13
  %ldev_mtu.3 = phi i32 [ %ldev_mtu.0, %if.end13 ], [ %ldev_mtu.1, %if.end35 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ldev_mtu.3)
  %cmp = icmp slt i32 %ldev_mtu.3, 1
  br i1 %cmp, label %sw.epilog.cleanup42_crit_edge, label %if.end38

sw.epilog.cleanup42_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42

if.end38:                                         ; preds = %sw.epilog
  %options_len = getelementptr inbounds %struct.ip_tunnel_info, ptr %info, i32 0, i32 2
  %30 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %options_len, align 8
  %conv39 = zext i8 %31 to i32
  %sub40 = sub nsw i32 %ldev_mtu.3, %conv39
  %max_mtu.i64 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %32 = ptrtoint ptr %max_mtu.i64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_mtu.i64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %sub40)
  %cmp.i65 = icmp ult i32 %33, %sub40
  br i1 %cmp.i65, label %if.end38.cleanup42.sink.split_crit_edge, label %if.else.i67

if.end38.cleanup42.sink.split_crit_edge:          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup42.sink.split

if.else.i67:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  %min_mtu.i66 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %34 = ptrtoint ptr %min_mtu.i66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %min_mtu.i66, align 8
  %36 = call i32 @llvm.umax.i32(i32 %35, i32 %sub40) #18
  br label %cleanup42.sink.split

cleanup42.sink.split:                             ; preds = %if.else.i67, %if.end38.cleanup42.sink.split_crit_edge, %if.else.i, %if.then.cleanup42.sink.split_crit_edge
  %new_mtu.addr.0.i68.sink = phi i32 [ %5, %if.then.cleanup42.sink.split_crit_edge ], [ %8, %if.else.i ], [ %33, %if.end38.cleanup42.sink.split_crit_edge ], [ %36, %if.else.i67 ]
  %mtu.i69 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %37 = ptrtoint ptr %mtu.i69 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %new_mtu.addr.0.i68.sink, ptr %mtu.i69, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %cleanup42.sink.split, %sw.epilog.cleanup42_crit_edge, %__in6_dev_get.exit.cleanup42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_netdevice_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %event, label %entry.if.end3_crit_edge [
    i32 28, label %entry.if.end3.sink.split_crit_edge
    i32 29, label %if.then2
  ]

entry.if.end3.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.sink.split

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.then2, %entry.if.end3.sink.split_crit_edge
  %.sink = phi i1 [ false, %if.then2 ], [ true, %entry.if.end3.sink.split_crit_edge ]
  tail call fastcc void @geneve_offload_rx_ports(ptr noundef %1, i1 noundef zeroext %.sink)
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %entry.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @geneve_offload_rx_ports(ptr noundef %dev, i1 noundef zeroext %push) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %2 = load i32, ptr @geneve_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %3 = tail call i32 @llvm.read_register.i32(metadata !167) #18
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !185
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call2 = tail call i32 @rcu_read_lock_any_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @geneve_offload_rx_ports.__warned, align 1
  br i1 %.b31, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_offload_rx_ports.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1194, ptr noundef nonnull @.str.10) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %sock_list = getelementptr inbounds %struct.geneve_net, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %sock_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn41 = load volatile ptr, ptr %sock_list, align 4
  %cmp.not42 = icmp eq ptr %.pn41, %sock_list
  br i1 %cmp.not42, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn43 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn41, %do.end.for.body_crit_edge ]
  %sock = getelementptr i8, ptr %.pn43, i32 8
  %8 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sock, align 4
  br i1 %push, label %if.then13, label %if.else

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @udp_tunnel_push_rx_port(ptr noundef %dev, ptr noundef %9, i16 noundef zeroext 2) #18
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @udp_tunnel_drop_rx_port(ptr noundef %dev, ptr noundef %9, i16 noundef zeroext 2) #18
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then13
  %10 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load volatile ptr, ptr %.pn43, align 4
  %cmp.not = icmp eq ptr %.pn, %sock_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i32 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i32, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i35

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i35:                                ; preds = %for.end
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !186
  %11 = tail call i32 @llvm.read_register.i32(metadata !167) #18
  %and.i.i.i.i.i39 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i39 to ptr
  %preempt_count.i.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i40, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i40, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_push_rx_port(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_drop_rx_port(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geneve_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @geneve_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %prev.i, align 4
  %sock_list = getelementptr inbounds %struct.geneve_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %sock_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %sock_list, ptr %sock_list, align 4
  %prev.i2 = getelementptr inbounds %struct.geneve_net, ptr %call, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sock_list, ptr %prev.i2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @geneve_exit_batch_net(ptr noundef readonly %net_list) #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #18
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  call void @rtnl_lock() #18
  %3 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn74 = load ptr, ptr %net_list, align 4
  %cmp.not75 = icmp eq ptr %.pn74, %net_list
  br i1 %cmp.not75, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %geneve_destroy_tunnels.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn76 = phi ptr [ %.pn, %geneve_destroy_tunnels.exit.for.body_crit_edge ], [ %.pn74, %entry.for.body_crit_edge ]
  %net.0 = getelementptr i8, ptr %.pn76, i32 -116
  %4 = load i32, ptr @geneve_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %net.0, i32 noundef %4) #18
  %dev_base_head.i = getelementptr i8, ptr %.pn76, i32 168
  %5 = ptrtoint ptr %dev_base_head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_base_head.i, align 4
  %cmp.not60.i = icmp eq ptr %6, %dev_base_head.i
  br i1 %cmp.not60.i, label %for.body.for.end.i_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn.in61.i = phi ptr [ %.pn63.i, %for.inc.i.for.body.i_crit_edge ], [ %6, %for.body.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in61.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn63.i = load ptr, ptr %.pn.in61.i, align 8
  %rtnl_link_ops.i = getelementptr i8, ptr %.pn.in61.i, i32 2012
  %8 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtnl_link_ops.i, align 4
  %cmp8.i = icmp eq ptr %9, @geneve_link_ops
  br i1 %cmp8.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev.062.i = getelementptr i8, ptr %.pn.in61.i, i32 -40
  call void @unregister_netdevice_queue(ptr noundef %dev.062.i, ptr noundef nonnull %list) #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn63.i, %dev_base_head.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.for.end.i_crit_edge
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %cmp26.not65.i = icmp eq ptr %11, %call.i
  br i1 %cmp26.not65.i, label %for.end.i.geneve_destroy_tunnels.exit_crit_edge, label %for.end.i.for.body28.i_crit_edge

for.end.i.for.body28.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body28.i

for.end.i.geneve_destroy_tunnels.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve_destroy_tunnels.exit

for.body28.i:                                     ; preds = %for.inc35.i.for.body28.i_crit_edge, %for.end.i.for.body28.i_crit_edge
  %.pn55.in66.i = phi ptr [ %.pn5567.i, %for.inc35.i.for.body28.i_crit_edge ], [ %11, %for.end.i.for.body28.i_crit_edge ]
  %12 = ptrtoint ptr %.pn55.in66.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn5567.i = load ptr, ptr %.pn55.in66.i, align 8
  %dev29.i = getelementptr i8, ptr %.pn55.in66.i, i32 -12
  %13 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev29.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 127
  %15 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nd_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %net.0
  br i1 %cmp.i.not.i, label %for.body28.i.for.inc35.i_crit_edge, label %if.then32.i

for.body28.i.for.inc35.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc35.i

if.then32.i:                                      ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @unregister_netdevice_queue(ptr noundef %14, ptr noundef nonnull %list) #18
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %if.then32.i, %for.body28.i.for.inc35.i_crit_edge
  %cmp26.not.i = icmp eq ptr %.pn5567.i, %call.i
  br i1 %cmp26.not.i, label %for.inc35.i.geneve_destroy_tunnels.exit_crit_edge, label %for.inc35.i.for.body28.i_crit_edge

for.inc35.i.for.body28.i_crit_edge:               ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body28.i

for.inc35.i.geneve_destroy_tunnels.exit_crit_edge: ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %geneve_destroy_tunnels.exit

geneve_destroy_tunnels.exit:                      ; preds = %for.inc35.i.geneve_destroy_tunnels.exit_crit_edge, %for.end.i.geneve_destroy_tunnels.exit_crit_edge
  %17 = ptrtoint ptr %.pn76 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn76, align 4
  %cmp.not = icmp eq ptr %.pn, %net_list
  br i1 %cmp.not, label %geneve_destroy_tunnels.exit.for.end_crit_edge, label %geneve_destroy_tunnels.exit.for.body_crit_edge

geneve_destroy_tunnels.exit.for.body_crit_edge:   ; preds = %geneve_destroy_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

geneve_destroy_tunnels.exit.for.end_crit_edge:    ; preds = %geneve_destroy_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %geneve_destroy_tunnels.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #18
  call void @rtnl_unlock() #18
  %18 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn7277 = load ptr, ptr %net_list, align 4
  %cmp13.not78 = icmp eq ptr %.pn7277, %net_list
  br i1 %cmp13.not78, label %for.end.for.end61_crit_edge, label %for.end.for.body15_crit_edge

for.end.for.body15_crit_edge:                     ; preds = %for.end
  br label %for.body15

for.end.for.end61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end61

for.body15:                                       ; preds = %if.end47.for.body15_crit_edge, %for.end.for.body15_crit_edge
  %.pn7279 = phi ptr [ %.pn72, %if.end47.for.body15_crit_edge ], [ %.pn7277, %for.end.for.body15_crit_edge ]
  %net.1 = getelementptr i8, ptr %.pn7279, i32 -116
  %19 = load i32, ptr @geneve_net_id, align 4
  %call = call fastcc ptr @net_generic(ptr noundef %net.1, i32 noundef %19)
  %sock_list = getelementptr inbounds %struct.geneve_net, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %sock_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %sock_list, align 4
  %cmp.i.not = icmp eq ptr %21, %sock_list
  br i1 %cmp.i.not, label %for.body15.if.end47_crit_edge, label %land.rhs

for.body15.if.end47_crit_edge:                    ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

land.rhs:                                         ; preds = %for.body15
  %.b73 = load i1, ptr @geneve_exit_batch_net.__already_done, align 1
  br i1 %.b73, label %land.rhs.if.end47_crit_edge, label %if.then, !prof !179

land.rhs.if.end47_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @geneve_exit_batch_net.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1931, i32 noundef 9, ptr noundef null) #18
  br label %if.end47

if.end47:                                         ; preds = %if.then, %land.rhs.if.end47_crit_edge, %for.body15.if.end47_crit_edge
  %22 = ptrtoint ptr %.pn7279 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn72 = load ptr, ptr %.pn7279, align 4
  %cmp13.not = icmp eq ptr %.pn72, %net_list
  br i1 %cmp13.not, label %if.end47.for.end61_crit_edge, label %if.end47.for.body15_crit_edge

if.end47.for.body15_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body15

if.end47.for.end61_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end61

for.end61:                                        ; preds = %if.end47.for.end61_crit_edge, %for.end.for.end61_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { nobuiltin }
attributes #26 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !18, !19, !20, !22, !24, !26, !27, !29, !31, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !52, !54, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !74, !75, !77, !79, !80, !82, !84, !85, !86, !88, !90, !92, !93, !94, !96, !97, !99, !101, !102, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165}
!llvm.named.register.sp = !{!167}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @__param_log_ecn_error, !1, !"__param_log_ecn_error", i1 false, i1 false}
!1 = !{!"../drivers/net/geneve.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_log_ecn_errortype570, !1, !"__UNIQUE_ID_log_ecn_errortype570", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_log_ecn_error571, !4, !"__UNIQUE_ID_log_ecn_error571", i1 false, i1 false}
!4 = !{!"../drivers/net/geneve.c", i32 33, i32 1}
!5 = !{ptr @__ksymtab_geneve_dev_create_fb, !6, !"__ksymtab_geneve_dev_create_fb", i1 false, i1 false}
!6 = !{!"../drivers/net/geneve.c", i32 1866, i32 1}
!7 = !{ptr @__initcall__kmod_geneve__636_1966_geneve_init_module7, !8, !"__initcall__kmod_geneve__636_1966_geneve_init_module7", i1 false, i1 false}
!8 = !{!"../drivers/net/geneve.c", i32 1966, i32 1}
!9 = !{ptr @__exitcall_geneve_cleanup_module, !10, !"__exitcall_geneve_cleanup_module", i1 false, i1 false}
!10 = !{!"../drivers/net/geneve.c", i32 1974, i32 1}
!11 = !{ptr @__UNIQUE_ID_file637, !12, !"__UNIQUE_ID_file637", i1 false, i1 false}
!12 = !{!"../drivers/net/geneve.c", i32 1976, i32 1}
!13 = !{ptr @__UNIQUE_ID_license638, !12, !"__UNIQUE_ID_license638", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_version639, !15, !"__UNIQUE_ID_version639", i1 false, i1 false}
!15 = !{!"../drivers/net/geneve.c", i32 1977, i32 1}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__modver_attr, !15, !"__modver_attr", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_author640, !21, !"__UNIQUE_ID_author640", i1 false, i1 false}
!21 = !{!"../drivers/net/geneve.c", i32 1978, i32 1}
!22 = !{ptr @__UNIQUE_ID_description641, !23, !"__UNIQUE_ID_description641", i1 false, i1 false}
!23 = !{!"../drivers/net/geneve.c", i32 1979, i32 1}
!24 = !{ptr @__UNIQUE_ID_alias642, !25, !"__UNIQUE_ID_alias642", i1 false, i1 false}
!25 = !{!"../drivers/net/geneve.c", i32 1980, i32 1}
!26 = !{ptr @__param_str_log_ecn_error, !1, !"__param_str_log_ecn_error", i1 false, i1 false}
!27 = !{ptr @log_ecn_error, !28, !"log_ecn_error", i1 false, i1 false}
!28 = !{!"../drivers/net/geneve.c", i32 31, i32 13}
!29 = !{ptr @geneve_link_ops, !30, !"geneve_link_ops", i1 false, i1 false}
!30 = !{!"../drivers/net/geneve.c", i32 1808, i32 29}
!31 = !{ptr @geneve_netdev_ops, !32, !"geneve_netdev_ops", i1 false, i1 false}
!32 = !{!"../drivers/net/geneve.c", i32 1153, i32 36}
!33 = !{ptr @geneve_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/net/geneve.c", i32 314, i32 16}
!35 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!38 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!42 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!46 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @geneve_net_id, !48, !"geneve_net_id", i1 false, i1 false}
!48 = !{!"../drivers/net/geneve.c", i32 46, i32 21}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../drivers/net/geneve.c", i32 362, i32 7}
!51 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @geneve_lookup_skb.zero_vni, !53, !"zero_vni", i1 false, i1 false}
!53 = !{!"../drivers/net/geneve.c", i32 176, i32 12}
!54 = distinct !{null, !55, !"zero_addr6", i1 false, i1 false}
!55 = !{!"../drivers/net/geneve.c", i32 196, i32 26}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../drivers/net/geneve.c", i32 140, i32 2}
!58 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../drivers/net/geneve.c", i32 159, i32 2}
!61 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/geneve.c", i32 280, i32 5}
!63 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @geneve_rx._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @geneve_rx._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/geneve.c", i32 286, i32 5}
!68 = !{ptr @geneve_rx._entry.13, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @geneve_rx._entry_ptr.15, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!74 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../drivers/net/geneve.c", i32 405, i32 7}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../drivers/net/geneve.c", i32 612, i32 28}
!79 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../drivers/net/geneve.c", i32 614, i32 28}
!82 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/geneve.c", i32 1062, i32 4}
!84 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @geneve_xmit.__UNIQUE_ID_ddebug605, !83, !"__UNIQUE_ID_ddebug605", i1 false, i1 false}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../drivers/net/geneve.c", i32 979, i32 28}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/geneve.c", i32 861, i32 3}
!92 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @geneve_get_v6_dst.__UNIQUE_ID_ddebug599, !91, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/geneve.c", i32 865, i32 3}
!96 = !{ptr @geneve_get_v6_dst.__UNIQUE_ID_ddebug600, !95, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../drivers/net/geneve.c", i32 881, i32 28}
!99 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/geneve.c", i32 806, i32 3}
!101 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @geneve_get_v4_rt.__UNIQUE_ID_ddebug597, !100, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!103 = !{ptr @.str.28, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/geneve.c", i32 810, i32 3}
!105 = !{ptr @geneve_get_v4_rt.__UNIQUE_ID_ddebug598, !104, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../drivers/net/geneve.c", i32 1116, i32 29}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../drivers/net/geneve.c", i32 1132, i32 29}
!110 = !{ptr @geneve_ethtool_ops, !111, !"geneve_ethtool_ops", i1 false, i1 false}
!111 = !{!"../drivers/net/geneve.c", i32 1173, i32 33}
!112 = !{ptr @geneve_type, !113, !"geneve_type", i1 false, i1 false}
!113 = !{!"../drivers/net/geneve.c", i32 1179, i32 27}
!114 = !{ptr @geneve_policy, !115, !"geneve_policy", i1 false, i1 false}
!115 = !{!"../drivers/net/geneve.c", i32 1240, i32 32}
!116 = !{ptr @geneve_validate.__msg, !117, !"__msg", i1 false, i1 false}
!117 = !{!"../drivers/net/geneve.c", i32 1261, i32 4}
!118 = !{ptr @geneve_validate.__msg.30, !119, !"__msg", i1 false, i1 false}
!119 = !{!"../drivers/net/geneve.c", i32 1267, i32 4}
!120 = !{ptr @geneve_validate.__msg.31, !121, !"__msg", i1 false, i1 false}
!121 = !{!"../drivers/net/geneve.c", i32 1274, i32 3}
!122 = !{ptr @geneve_validate.__msg.32, !123, !"__msg", i1 false, i1 false}
!123 = !{!"../drivers/net/geneve.c", i32 1283, i32 4}
!124 = !{ptr @geneve_validate.__msg.33, !125, !"__msg", i1 false, i1 false}
!125 = !{!"../drivers/net/geneve.c", i32 1293, i32 4}
!126 = !{ptr @geneve_nl2info.__msg, !127, !"__msg", i1 false, i1 false}
!127 = !{!"../drivers/net/geneve.c", i32 1413, i32 3}
!128 = !{ptr @geneve_nl2info.__msg.34, !129, !"__msg", i1 false, i1 false}
!129 = !{!"../drivers/net/geneve.c", i32 1428, i32 4}
!130 = !{ptr @geneve_nl2info.__msg.35, !131, !"__msg", i1 false, i1 false}
!131 = !{!"../drivers/net/geneve.c", i32 1447, i32 4}
!132 = !{ptr @geneve_nl2info.__msg.36, !133, !"__msg", i1 false, i1 false}
!133 = !{!"../drivers/net/geneve.c", i32 1452, i32 4}
!134 = !{ptr @geneve_nl2info.__msg.37, !135, !"__msg", i1 false, i1 false}
!135 = !{!"../drivers/net/geneve.c", i32 1503, i32 4}
!136 = !{ptr @geneve_nl2info.__msg.38, !137, !"__msg", i1 false, i1 false}
!137 = !{!"../drivers/net/geneve.c", i32 1566, i32 2}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!140 = !{ptr @.str.39, !139, !"<string literal>", i1 false, i1 false}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../drivers/net/geneve.c", i32 1658, i32 9}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../drivers/net/geneve.c", i32 1661, i32 3}
!145 = distinct !{null, !146, !"__warned", i1 false, i1 false}
!146 = !{!"../drivers/net/geneve.c", i32 1663, i32 9}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../drivers/net/geneve.c", i32 1666, i32 3}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../drivers/net/geneve.c", i32 1679, i32 3}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../drivers/net/geneve.c", i32 1683, i32 3}
!153 = !{ptr @geneve_configure.__msg, !154, !"__msg", i1 false, i1 false}
!154 = !{!"../drivers/net/geneve.c", i32 1351, i32 3}
!155 = !{ptr @geneve_configure.__msg.43, !156, !"__msg", i1 false, i1 false}
!156 = !{!"../drivers/net/geneve.c", i32 1376, i32 4}
!157 = !{ptr @geneve_configure.__msg.44, !158, !"__msg", i1 false, i1 false}
!158 = !{!"../drivers/net/geneve.c", i32 1382, i32 4}
!159 = !{ptr @geneve_notifier_block, !160, !"geneve_notifier_block", i1 false, i1 false}
!160 = !{!"../drivers/net/geneve.c", i32 1881, i32 30}
!161 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!162 = !{!"../drivers/net/geneve.c", i32 1194, i32 2}
!163 = !{ptr @geneve_net_ops, !164, !"geneve_net_ops", i1 false, i1 false}
!164 = !{!"../drivers/net/geneve.c", i32 1935, i32 33}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../drivers/net/geneve.c", i32 1931, i32 3}
!167 = !{!"sp"}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{i8 0, i8 2}
!178 = !{i64 2158456194}
!179 = !{!"branch_weights", i32 2000, i32 1}
!180 = !{i64 2158467682}
!181 = !{i64 2158477092}
!182 = !{i64 2158488580}
!183 = !{!"branch_weights", i32 1, i32 2000}
!184 = !{i64 2149074821, i64 2149074826, i64 2149074839, i64 2149074883, i64 2149074917, i64 2149074938}
!185 = !{i64 2149486775}
!186 = !{i64 2149487041}
!187 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!188 = !{!"auto-init"}
!189 = !{i64 2150453141}
!190 = !{i64 2150003578}
!191 = !{i64 2150008510}
!192 = !{i64 2150030222}
!193 = !{i64 2150035114}
!194 = !{i64 2150111571}
!195 = !{i64 2150111896}
