; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/quantenna/qtnfmac/core.c_pt.bc'
source_filename = "../drivers/net/wireless/quantenna/qtnfmac/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qtnf_core_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_qtnf_core_attach\09\09\09\09"
module asm "\09.long\09__crc_qtnf_core_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtnf_core_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22qtnf_core_attach\22\09\09\09\09\09"
module asm "__kstrtabns_qtnf_core_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qtnf_core_detach\22, \22a\22\09"
module asm "\09.weak\09__crc_qtnf_core_detach\09\09\09\09"
module asm "\09.long\09__crc_qtnf_core_detach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtnf_core_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22qtnf_core_detach\22\09\09\09\09\09"
module asm "__kstrtabns_qtnf_core_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qtnf_classify_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_qtnf_classify_skb\09\09\09\09"
module asm "\09.long\09__crc_qtnf_classify_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtnf_classify_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22qtnf_classify_skb\22\09\09\09\09\09"
module asm "__kstrtabns_qtnf_classify_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qtnf_wake_all_queues\22, \22a\22\09"
module asm "\09.weak\09__crc_qtnf_wake_all_queues\09\09\09\09"
module asm "\09.long\09__crc_qtnf_wake_all_queues\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtnf_wake_all_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22qtnf_wake_all_queues\22\09\09\09\09\09"
module asm "__kstrtabns_qtnf_wake_all_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qtnf_get_debugfs_dir\22, \22a\22\09"
module asm "\09.weak\09__crc_qtnf_get_debugfs_dir\09\09\09\09"
module asm "\09.long\09__crc_qtnf_get_debugfs_dir\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtnf_get_debugfs_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22qtnf_get_debugfs_dir\22\09\09\09\09\09"
module asm "__kstrtabns_qtnf_get_debugfs_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.qtnf_bus = type { ptr, i32, i32, i32, ptr, [3 x ptr], %struct.qtnf_qlink_transport, %struct.qtnf_hw_info, %struct.napi_struct, [32 x i8], %struct.net_device, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.mutex, ptr, %struct.notifier_block, [6 x i8], [2 x i8], [0 x i8], [44 x i8] }
%struct.qtnf_qlink_transport = type { %struct.qtnf_cmd_ctl_node, %struct.sk_buff_head, i32 }
%struct.qtnf_cmd_ctl_node = type { %struct.completion, ptr, i16, i8, %struct.spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.qtnf_hw_info = type { i32, i8, i8, i32, i8, i8, [32 x i8], i32, [2 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.152 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.150, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.150 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.151 }
%union.anon.151 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.qtnf_vif = type { %struct.wireless_dev, [6 x i8], [6 x i8], i8, i8, i8, i16, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.qtnf_sta_list, i32, i32 }
%struct.qtnf_sta_list = type { %struct.list_head, %struct.atomic_t }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
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
%struct.qtnf_wmac = type { i8, i8, [6 x i8], ptr, %struct.qtnf_mac_info, [8 x %struct.qtnf_vif], ptr, %struct.mutex, %struct.delayed_work, ptr, ptr }
%struct.qtnf_mac_info = type <{ i8, i8, i8, i8, i16, [2 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [2 x i8], ptr, i32, ptr, ptr, i8, [3 x i8], ptr }>
%struct.qtnf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.149, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.149 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.netdev_nested_priv = type { i8, ptr }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_slave_radar = internal constant [20 x i8] c"qtnfmac.slave_radar\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@slave_radar = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_slave_radar = internal constant %struct.kernel_param { ptr @__param_str_slave_radar, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @slave_radar } }, section "__param", align 4
@__UNIQUE_ID_slave_radartype463 = internal constant [34 x i8] c"qtnfmac.parmtype=slave_radar:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_slave_radar464 = internal constant [72 x i8] c"qtnfmac.parm=slave_radar:set 0 to disable radar detection in slave mode\00", section ".modinfo", align 1
@__param_str_dfs_offload = internal constant [20 x i8] c"qtnfmac.dfs_offload\00", align 1
@dfs_offload = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dfs_offload = internal constant %struct.kernel_param { ptr @__param_str_dfs_offload, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @dfs_offload } }, section "__param", align 4
@__UNIQUE_ID_dfs_offloadtype465 = internal constant [34 x i8] c"qtnfmac.parmtype=dfs_offload:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dfs_offload466 = internal constant [65 x i8] c"qtnfmac.parm=dfs_offload:set 1 to enable DFS offload to firmware\00", section ".modinfo", align 1
@qtnf_core_get_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013qtnfmac: %s: invalid MAC index %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qtnf_core_get_mac\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/quantenna/qtnfmac/core.c\00", [50 x i8] zeroinitializer }, align 32
@qtnf_core_get_mac._entry_ptr = internal global ptr @qtnf_core_get_mac._entry, section ".printk_index", align 4
@qtnf_core_get_mac._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013qtnfmac: %s: MAC%u: not initialized\0A\00", [57 x i8] zeroinitializer }, align 32
@qtnf_core_get_mac._entry_ptr.5 = internal global ptr @qtnf_core_get_mac._entry.3, section ".printk_index", align 4
@qtnf_netdev_ops = dso_local constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @qtnf_netdev_alloc_pcpu_stats, ptr @qtnf_netdev_free_pcpu_stats, ptr @qtnf_netdev_open, ptr @qtnf_netdev_close, ptr @qtnf_netdev_hard_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @qtnf_netdev_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qtnf_netdev_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qtnf_netdev_port_parent_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@qtnf_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @cfg80211_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"QTNF_BUS\00", [23 x i8] zeroinitializer }, align 32
@qtnf_core_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013qtnfmac: %s: failed to alloc main workqueue\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qtnf_core_attach\00", [47 x i8] zeroinitializer }, align 32
@qtnf_core_attach._entry_ptr = internal global ptr @qtnf_core_attach._entry, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"QTNF_HPRI\00", [22 x i8] zeroinitializer }, align 32
@qtnf_core_attach._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013qtnfmac: %s: failed to alloc high prio workqueue\0A\00", [44 x i8] zeroinitializer }, align 32
@qtnf_core_attach._entry_ptr.12 = internal global ptr @qtnf_core_attach._entry.10, section ".printk_index", align 4
@qtnf_core_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&bus->event_work)\00", [60 x i8] zeroinitializer }, align 32
@qtnf_core_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013qtnfmac: %s: failed to init FW: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qtnf_core_attach._entry_ptr.16 = internal global ptr @qtnf_core_attach._entry.14, section ".printk_index", align 4
@qtnf_core_attach._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.2, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013qtnfmac: %s: qlink driver vs FW version mismatch: %u vs %u\0A\00", [34 x i8] zeroinitializer }, align 32
@qtnf_core_attach._entry_ptr.19 = internal global ptr @qtnf_core_attach._entry.17, section ".printk_index", align 4
@qtnf_core_attach._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.2, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013qtnfmac: %s: failed to get HW info: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@qtnf_core_attach._entry_ptr.22 = internal global ptr @qtnf_core_attach._entry.20, section ".printk_index", align 4
@qtnf_core_attach._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str.2, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013qtnfmac: %s: no support for number of MACs=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@qtnf_core_attach._entry_ptr.25 = internal global ptr @qtnf_core_attach._entry.23, section ".printk_index", align 4
@qtnf_core_attach._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.8, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013qtnfmac: %s: MAC%u: attach failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@qtnf_core_attach._entry_ptr.28 = internal global ptr @qtnf_core_attach._entry.26, section ".printk_index", align 4
@qtnf_core_attach._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.8, ptr @.str.2, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013qtnfmac: %s: failed to register netdev notifier: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@qtnf_core_attach._entry_ptr.31 = internal global ptr @qtnf_core_attach._entry.29, section ".printk_index", align 4
@__kstrtab_qtnf_core_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtnf_core_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_qtnf_core_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtnf_core_attach to i32), ptr @__kstrtab_qtnf_core_attach, ptr @__kstrtabns_qtnf_core_attach }, section "___ksymtab_gpl+qtnf_core_attach", align 4
@__kstrtab_qtnf_core_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtnf_core_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_qtnf_core_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtnf_core_detach to i32), ptr @__kstrtab_qtnf_core_detach, ptr @__kstrtabns_qtnf_core_detach }, section "___ksymtab_gpl+qtnf_core_detach", align 4
@qtnf_classify_skb._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.qtnf_classify_skb = private unnamed_addr constant [18 x i8] c"qtnf_classify_skb\00", align 1
@qtnf_classify_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.qtnf_classify_skb, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013qtnfmac: %s: invalid magic 0x%x:0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@qtnf_classify_skb._entry_ptr = internal global ptr @qtnf_classify_skb._entry, section ".printk_index", align 4
@qtnf_classify_skb._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qtnf_classify_skb._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.qtnf_classify_skb, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013qtnfmac: %s: invalid mac(%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@qtnf_classify_skb._entry_ptr.37 = internal global ptr @qtnf_classify_skb._entry.35, section ".printk_index", align 4
@qtnf_classify_skb._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qtnf_classify_skb._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.qtnf_classify_skb, ptr @.str.2, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013qtnfmac: %s: invalid vif(%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@qtnf_classify_skb._entry_ptr.41 = internal global ptr @qtnf_classify_skb._entry.39, section ".printk_index", align 4
@qtnf_classify_skb._rs.42 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qtnf_classify_skb._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.qtnf_classify_skb, ptr @.str.2, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013qtnfmac: %s: mac(%d) does not exist\0A\00", [57 x i8] zeroinitializer }, align 32
@qtnf_classify_skb._entry_ptr.45 = internal global ptr @qtnf_classify_skb._entry.43, section ".printk_index", align 4
@qtnf_classify_skb._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qtnf_classify_skb._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @__func__.qtnf_classify_skb, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013qtnfmac: %s: vif(%u) does not exists\0A\00", [56 x i8] zeroinitializer }, align 32
@qtnf_classify_skb._entry_ptr.49 = internal global ptr @qtnf_classify_skb._entry.47, section ".printk_index", align 4
@qtnf_classify_skb._rs.50 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qtnf_classify_skb._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @__func__.qtnf_classify_skb, ptr @.str.2, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013qtnfmac: %s: netdev for wlan%u.%u does not exists\0A\00", [43 x i8] zeroinitializer }, align 32
@qtnf_classify_skb._entry_ptr.53 = internal global ptr @qtnf_classify_skb._entry.51, section ".printk_index", align 4
@__kstrtab_qtnf_classify_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtnf_classify_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_qtnf_classify_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtnf_classify_skb to i32), ptr @__kstrtab_qtnf_classify_skb, ptr @__kstrtabns_qtnf_classify_skb }, section "___ksymtab_gpl+qtnf_classify_skb", align 4
@__kstrtab_qtnf_wake_all_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtnf_wake_all_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_qtnf_wake_all_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtnf_wake_all_queues to i32), ptr @__kstrtab_qtnf_wake_all_queues, ptr @__kstrtabns_qtnf_wake_all_queues }, section "___ksymtab_gpl+qtnf_wake_all_queues", align 4
@qtnf_debugfs_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_qtnf_get_debugfs_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtnf_get_debugfs_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_qtnf_get_debugfs_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtnf_get_debugfs_dir to i32), ptr @__kstrtab_qtnf_get_debugfs_dir, ptr @__kstrtabns_qtnf_get_debugfs_dir }, section "___ksymtab_gpl+qtnf_get_debugfs_dir", align 4
@__initcall__kmod_qtnfmac__471_941_qtnf_core_register6 = internal global ptr @qtnf_core_register, section ".initcall6.init", align 4
@__exitcall_qtnf_core_exit = internal global ptr @qtnf_core_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author472 = internal constant [40 x i8] c"qtnfmac.author=Quantenna Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_description473 = internal constant [66 x i8] c"qtnfmac.description=Quantenna 802.11 wireless LAN FullMAC driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_file474 = internal constant [60 x i8] c"qtnfmac.file=drivers/net/wireless/quantenna/qtnfmac/qtnfmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license475 = internal constant [20 x i8] c"qtnfmac.license=GPL\00", section ".modinfo", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@qtnf_netdev_alloc_pcpu_stats.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@qtnf_netdev_hard_start_xmit._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.qtnf_netdev_hard_start_xmit = private unnamed_addr constant [28 x i8] c"qtnf_netdev_hard_start_xmit\00", align 1
@qtnf_netdev_hard_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @__func__.qtnf_netdev_hard_start_xmit, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013qtnfmac: %s: invalid skb->dev\00", [32 x i8] zeroinitializer }, align 32
@qtnf_netdev_hard_start_xmit._entry_ptr = internal global ptr @qtnf_netdev_hard_start_xmit._entry, section ".printk_index", align 4
@qtnf_netdev_hard_start_xmit._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qtnf_netdev_hard_start_xmit._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.qtnf_netdev_hard_start_xmit, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013qtnfmac: %s: %s: VIF not initialized\0A\00", [56 x i8] zeroinitializer }, align 32
@qtnf_netdev_hard_start_xmit._entry_ptr.59 = internal global ptr @qtnf_netdev_hard_start_xmit._entry.57, section ".printk_index", align 4
@qtnf_netdev_hard_start_xmit._rs.60 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qtnf_netdev_hard_start_xmit._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @__func__.qtnf_netdev_hard_start_xmit, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013qtnfmac: %s: %s: NULL mac pointer\00", [60 x i8] zeroinitializer }, align 32
@qtnf_netdev_hard_start_xmit._entry_ptr.63 = internal global ptr @qtnf_netdev_hard_start_xmit._entry.61, section ".printk_index", align 4
@qtnf_netdev_hard_start_xmit._rs.64 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qtnf_netdev_hard_start_xmit._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.qtnf_netdev_hard_start_xmit, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013qtnfmac: %s: %s: invalid skb len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@qtnf_netdev_hard_start_xmit._entry_ptr.67 = internal global ptr @qtnf_netdev_hard_start_xmit._entry.65, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@qtnf_netdev_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014qtnfmac: %s: VIF%u.%u: Tx timeout- %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qtnf_netdev_tx_timeout\00", [41 x i8] zeroinitializer }, align 32
@qtnf_netdev_tx_timeout._entry_ptr = internal global ptr @qtnf_netdev_tx_timeout._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qtnf_netdev_tx_timeout._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013qtnfmac: %s: Tx timeout threshold exceeded !\0A\00", [48 x i8] zeroinitializer }, align 32
@qtnf_netdev_tx_timeout._entry_ptr.73 = internal global ptr @qtnf_netdev_tx_timeout._entry.71, section ".printk_index", align 4
@qtnf_netdev_tx_timeout._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013qtnfmac: %s: schedule interface %s reset !\0A\00", [50 x i8] zeroinitializer }, align 32
@qtnf_netdev_tx_timeout._entry_ptr.76 = internal global ptr @qtnf_netdev_tx_timeout._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@qtnf_core_mac_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016qtnfmac: %s: MAC%u is not active in FW\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qtnf_core_mac_attach\00", [43 x i8] zeroinitializer }, align 32
@qtnf_core_mac_attach._entry_ptr = internal global ptr @qtnf_core_mac_attach._entry, section ".printk_index", align 4
@qtnf_core_mac_attach._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013qtnfmac: %s: MAC%u allocation failed\0A\00", [56 x i8] zeroinitializer }, align 32
@qtnf_core_mac_attach._entry_ptr.82 = internal global ptr @qtnf_core_mac_attach._entry.80, section ".printk_index", align 4
@qtnf_core_mac_attach._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013qtnfmac: %s: MAC%u: primary VIF is not ready\0A\00", [48 x i8] zeroinitializer }, align 32
@qtnf_core_mac_attach._entry_ptr.85 = internal global ptr @qtnf_core_mac_attach._entry.83, section ".printk_index", align 4
@qtnf_core_mac_attach._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013qtnfmac: %s: MAC%u: failed to add VIF\0A\00", [55 x i8] zeroinitializer }, align 32
@qtnf_core_mac_attach._entry_ptr.88 = internal global ptr @qtnf_core_mac_attach._entry.86, section ".printk_index", align 4
@qtnf_core_mac_attach._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.79, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013qtnfmac: %s: MAC%u: failed to get MAC info\0A\00", [50 x i8] zeroinitializer }, align 32
@qtnf_core_mac_attach._entry_ptr.91 = internal global ptr @qtnf_core_mac_attach._entry.89, section ".printk_index", align 4
@qtnf_core_mac_attach._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.79, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013qtnfmac: %s: MAC%u: failed to init bands\0A\00", [52 x i8] zeroinitializer }, align 32
@qtnf_core_mac_attach._entry_ptr.94 = internal global ptr @qtnf_core_mac_attach._entry.92, section ".printk_index", align 4
@qtnf_core_mac_attach._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.79, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013qtnfmac: %s: MAC%u: wiphy registration failed\0A\00", [47 x i8] zeroinitializer }, align 32
@qtnf_core_mac_attach._entry_ptr.97 = internal global ptr @qtnf_core_mac_attach._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@qtnf_core_mac_attach._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.79, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013qtnfmac: %s: MAC%u: failed to attach netdev\0A\00", [49 x i8] zeroinitializer }, align 32
@qtnf_core_mac_attach._entry_ptr.101 = internal global ptr @qtnf_core_mac_attach._entry.99, section ".printk_index", align 4
@qtnf_core_mac_attach.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.102, ptr @.str.79, ptr @.str.2, ptr @.str.103, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qtnfmac\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAC%u initialized\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qtnfmac: %s: MAC%u initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@qtnf_core_mac_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mac->mac_lock\00", [17 x i8] zeroinitializer }, align 32
@qtnf_core_mac_alloc.__key.106 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&mac->scan_timeout)->work)\00", [49 x i8] zeroinitializer }, align 32
@qtnf_core_mac_alloc.__key.108 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&mac->scan_timeout)->timer\00", [35 x i8] zeroinitializer }, align 32
@qtnf_core_mac_alloc.__key.110 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.111 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&vif->high_pri_tx_work)\00", [54 x i8] zeroinitializer }, align 32
@qtnf_mac_scan_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014qtnfmac: %s: MAC%d: scan timed out\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qtnf_mac_scan_timeout\00", [42 x i8] zeroinitializer }, align 32
@qtnf_mac_scan_timeout._entry_ptr = internal global ptr @qtnf_mac_scan_timeout._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@qtnf_mac_init_primary_intf.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&vif->reset_work)\00", [60 x i8] zeroinitializer }, align 32
@qtnf_mac_init_single_band._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013qtnfmac: %s: MAC%u: band %u: failed to get chans info: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qtnf_mac_init_single_band\00", [38 x i8] zeroinitializer }, align 32
@qtnf_mac_init_single_band._entry_ptr = internal global ptr @qtnf_mac_init_single_band._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_net = external dso_local global %struct.net, align 128
@qtnf_core_netdevice_event.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.102, ptr @.str.118, ptr @.str.2, ptr @.str.119, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qtnf_core_netdevice_event\00", [38 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[VIF%u.%u] change bridge: %s %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"qtnfmac: %s: [VIF%u.%u] change bridge: %s %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"del\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"slave_radar\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 20, i32 13 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"dfs_offload\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 24, i32 13 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 45, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 53, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"qtnf_netdev_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 212, i32 29 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"qtnf_ethtool_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 458, i32 33 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 724, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 726, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 731, i32 41 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 733, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 738, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 742, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 748, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 758, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 767, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 777, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 785, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 847, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 853, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 858, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 865, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 872, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 879, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"qtnf_debugfs_dir\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 28, i32 23 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 201, i32 16 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 98, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 104, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 111, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 117, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 271, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 150, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 156, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 157, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 4963, i32 10 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 565, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 571, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 577, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 585, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 591, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 601, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 607, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 615, i32 39 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 620, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 630, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 437, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 438, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 448, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 387, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1984, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 356, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 238, i32 3 }
@___asan_gen_.476 = private constant [49 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/core.c\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 689, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 2789, i32 6 }
@llvm.compiler.used = appending global [170 x ptr] [ptr @__UNIQUE_ID_author472, ptr @__UNIQUE_ID_description473, ptr @__UNIQUE_ID_dfs_offload466, ptr @__UNIQUE_ID_dfs_offloadtype465, ptr @__UNIQUE_ID_file474, ptr @__UNIQUE_ID_license475, ptr @__UNIQUE_ID_slave_radar464, ptr @__UNIQUE_ID_slave_radartype463, ptr @__exitcall_qtnf_core_exit, ptr @__initcall__kmod_qtnfmac__471_941_qtnf_core_register6, ptr @__ksymtab_qtnf_classify_skb, ptr @__ksymtab_qtnf_core_attach, ptr @__ksymtab_qtnf_core_detach, ptr @__ksymtab_qtnf_get_debugfs_dir, ptr @__ksymtab_qtnf_wake_all_queues, ptr @__param_dfs_offload, ptr @__param_slave_radar, ptr @qtnf_classify_skb._entry, ptr @qtnf_classify_skb._entry.35, ptr @qtnf_classify_skb._entry.39, ptr @qtnf_classify_skb._entry.43, ptr @qtnf_classify_skb._entry.47, ptr @qtnf_classify_skb._entry.51, ptr @qtnf_classify_skb._entry_ptr, ptr @qtnf_classify_skb._entry_ptr.37, ptr @qtnf_classify_skb._entry_ptr.41, ptr @qtnf_classify_skb._entry_ptr.45, ptr @qtnf_classify_skb._entry_ptr.49, ptr @qtnf_classify_skb._entry_ptr.53, ptr @qtnf_core_attach._entry, ptr @qtnf_core_attach._entry.10, ptr @qtnf_core_attach._entry.14, ptr @qtnf_core_attach._entry.17, ptr @qtnf_core_attach._entry.20, ptr @qtnf_core_attach._entry.23, ptr @qtnf_core_attach._entry.26, ptr @qtnf_core_attach._entry.29, ptr @qtnf_core_attach._entry_ptr, ptr @qtnf_core_attach._entry_ptr.12, ptr @qtnf_core_attach._entry_ptr.16, ptr @qtnf_core_attach._entry_ptr.19, ptr @qtnf_core_attach._entry_ptr.22, ptr @qtnf_core_attach._entry_ptr.25, ptr @qtnf_core_attach._entry_ptr.28, ptr @qtnf_core_attach._entry_ptr.31, ptr @qtnf_core_exit, ptr @qtnf_core_get_mac._entry, ptr @qtnf_core_get_mac._entry.3, ptr @qtnf_core_get_mac._entry_ptr, ptr @qtnf_core_get_mac._entry_ptr.5, ptr @qtnf_core_mac_attach._entry, ptr @qtnf_core_mac_attach._entry.80, ptr @qtnf_core_mac_attach._entry.83, ptr @qtnf_core_mac_attach._entry.86, ptr @qtnf_core_mac_attach._entry.89, ptr @qtnf_core_mac_attach._entry.92, ptr @qtnf_core_mac_attach._entry.95, ptr @qtnf_core_mac_attach._entry.99, ptr @qtnf_core_mac_attach._entry_ptr, ptr @qtnf_core_mac_attach._entry_ptr.101, ptr @qtnf_core_mac_attach._entry_ptr.82, ptr @qtnf_core_mac_attach._entry_ptr.85, ptr @qtnf_core_mac_attach._entry_ptr.88, ptr @qtnf_core_mac_attach._entry_ptr.91, ptr @qtnf_core_mac_attach._entry_ptr.94, ptr @qtnf_core_mac_attach._entry_ptr.97, ptr @qtnf_mac_init_single_band._entry, ptr @qtnf_mac_init_single_band._entry_ptr, ptr @qtnf_mac_scan_timeout._entry, ptr @qtnf_mac_scan_timeout._entry_ptr, ptr @qtnf_netdev_hard_start_xmit._entry, ptr @qtnf_netdev_hard_start_xmit._entry.57, ptr @qtnf_netdev_hard_start_xmit._entry.61, ptr @qtnf_netdev_hard_start_xmit._entry.65, ptr @qtnf_netdev_hard_start_xmit._entry_ptr, ptr @qtnf_netdev_hard_start_xmit._entry_ptr.59, ptr @qtnf_netdev_hard_start_xmit._entry_ptr.63, ptr @qtnf_netdev_hard_start_xmit._entry_ptr.67, ptr @qtnf_netdev_tx_timeout._entry, ptr @qtnf_netdev_tx_timeout._entry.71, ptr @qtnf_netdev_tx_timeout._entry.74, ptr @qtnf_netdev_tx_timeout._entry_ptr, ptr @qtnf_netdev_tx_timeout._entry_ptr.73, ptr @qtnf_netdev_tx_timeout._entry_ptr.76, ptr @slave_radar, ptr @dfs_offload, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @qtnf_netdev_ops, ptr @qtnf_ethtool_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @qtnf_core_attach.__key, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @qtnf_classify_skb._rs, ptr @.str.32, ptr @.str.33, ptr @qtnf_classify_skb._rs.34, ptr @.str.36, ptr @qtnf_classify_skb._rs.38, ptr @.str.40, ptr @qtnf_classify_skb._rs.42, ptr @.str.44, ptr @qtnf_classify_skb._rs.46, ptr @.str.48, ptr @qtnf_classify_skb._rs.50, ptr @.str.52, ptr @qtnf_debugfs_dir, ptr @qtnf_netdev_alloc_pcpu_stats.__key, ptr @.str.54, ptr @qtnf_netdev_hard_start_xmit._rs, ptr @.str.55, ptr @qtnf_netdev_hard_start_xmit._rs.56, ptr @.str.58, ptr @qtnf_netdev_hard_start_xmit._rs.60, ptr @.str.62, ptr @qtnf_netdev_hard_start_xmit._rs.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @qtnf_core_mac_alloc.__key, ptr @.str.105, ptr @qtnf_core_mac_alloc.__key.106, ptr @.str.107, ptr @qtnf_core_mac_alloc.__key.108, ptr @.str.109, ptr @qtnf_core_mac_alloc.__key.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @skb_queue_head_init.__key, ptr @.str.114, ptr @qtnf_mac_init_primary_intf.__key, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123], section "llvm.metadata"
@0 = internal global [119 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slave_radar to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_offload to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_get_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_get_mac._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_attach._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_attach._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_attach._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_attach._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_attach._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_attach._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_classify_skb._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_classify_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_classify_skb._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_classify_skb._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_classify_skb._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_classify_skb._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_classify_skb._rs.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_classify_skb._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_classify_skb._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_classify_skb._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_classify_skb._rs.50 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_classify_skb._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_debugfs_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_alloc_pcpu_stats.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_hard_start_xmit._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_hard_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_hard_start_xmit._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_hard_start_xmit._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_hard_start_xmit._rs.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_hard_start_xmit._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_hard_start_xmit._rs.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_hard_start_xmit._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_tx_timeout._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_tx_timeout._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_mac_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_mac_attach._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_mac_attach._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_mac_attach._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_mac_attach._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_mac_attach._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_mac_attach._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_mac_attach._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_mac_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_mac_alloc.__key.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_mac_alloc.__key.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_core_mac_alloc.__key.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_mac_scan_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_mac_init_primary_intf.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_mac_init_single_band._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @qtnf_slave_radar_get() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @slave_radar, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @qtnf_dfs_offload_get() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @dfs_offload, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qtnf_core_get_mac(ptr nocapture noundef readonly %bus, i8 noundef zeroext %macid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %macid to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %macid)
  %cmp = icmp ugt i8 %macid, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 3) #16, !srcloc !254
  %1 = trunc i32 %0 to i8
  %conv13 = and i8 %1, %macid
  %idxprom = zext i8 %conv13 to i32
  %arrayidx = getelementptr %struct.qtnf_bus, ptr %bus, i32 0, i32 5, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end21, label %if.end.cleanup_crit_edge, !prof !255

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %idxprom) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end21 ], [ %3, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_netdev_alloc_pcpu_stats(ptr nocapture noundef writeonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %call113 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call113, i32 %0)
  %cmp14 = icmp ult i32 %call113, %0
  br i1 %cmp14, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %call to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call115 = phi i32 [ %call113, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call115
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, %1
  %4 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %4, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %4, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @qtnf_netdev_alloc_pcpu_stats.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %5 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %syncp, align 4
  %call1 = tail call i32 @cpumask_next(i32 noundef %call115, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %cond = phi i32 [ -12, %entry.if.end_crit_edge ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ 0, %for.body.if.end_crit_edge ]
  %7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %7, align 64
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_netdev_free_pcpu_stats(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 64
  tail call void @free_percpu(ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_netdev_open(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netif_carrier_off(ptr noundef %ndev) #16
  tail call void @qtnf_netdev_updown(ptr noundef %ndev, i1 noundef zeroext true) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_netdev_close(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netif_carrier_off(ptr noundef %ndev) #16
  tail call void @qtnf_virtual_intf_cleanup(ptr noundef %ndev) #16
  tail call void @qtnf_netdev_updown(ptr noundef %ndev, i1 noundef zeroext false) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_netdev_hard_start_xmit(ptr noundef %skb, ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %cmp.not = icmp eq ptr %4, %ndev
  br i1 %cmp.not, label %if.end6, label %if.then, !prof !256

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @qtnf_netdev_hard_start_xmit._rs, ptr noundef nonnull @__func__.qtnf_netdev_hard_start_xmit) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.qtnf_netdev_hard_start_xmit) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  br label %cleanup

if.end6:                                          ; preds = %entry
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %if.then14, label %if.end24, !prof !255

if.then14:                                        ; preds = %if.end6
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @qtnf_netdev_hard_start_xmit._rs.56, ptr noundef nonnull @__func__.qtnf_netdev_hard_start_xmit) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end23_crit_edge, label %do.end20

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.qtnf_netdev_hard_start_xmit, ptr noundef %ndev) #19
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %if.then14.if.end23_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  br label %cleanup

if.end24:                                         ; preds = %if.end6
  %mac25 = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %mac25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac25, align 4
  %tobool26.not = icmp eq ptr %8, null
  br i1 %tobool26.not, label %if.then35, label %if.end47, !prof !255

if.then35:                                        ; preds = %if.end24
  %call36 = tail call i32 @___ratelimit(ptr noundef nonnull @qtnf_netdev_hard_start_xmit._rs.60, ptr noundef nonnull @__func__.qtnf_netdev_hard_start_xmit) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.if.end46_crit_edge, label %do.end41

if.then35.if.end46_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

do.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.qtnf_netdev_hard_start_xmit, ptr noundef %ndev) #19
  br label %if.end46

if.end46:                                         ; preds = %do.end41, %if.then35.if.end46_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  br label %cleanup

if.end47:                                         ; preds = %if.end24
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = add i32 %10, -1515
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1514, i32 %11)
  %12 = icmp ult i32 %11, -1514
  br i1 %12, label %if.then51, label %if.end64

if.then51:                                        ; preds = %if.end47
  %call52 = tail call i32 @___ratelimit(ptr noundef nonnull @qtnf_netdev_hard_start_xmit._rs.64, ptr noundef nonnull @__func__.qtnf_netdev_hard_start_xmit) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then51.if.end63_crit_edge, label %do.end57

if.then51.if.end63_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

do.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.qtnf_netdev_hard_start_xmit, ptr noundef %ndev, i32 noundef %14) #19
  br label %if.end63

if.end63:                                         ; preds = %do.end57, %if.then51.if.end63_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %15 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end64:                                         ; preds = %if.end47
  %cons_tx_timeout_cnt = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %cons_tx_timeout_cnt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cons_tx_timeout_cnt, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %19)
  %cmp65 = icmp eq i16 %19, -30578
  br i1 %cmp65, label %if.then73, label %if.end75, !prof !255

if.then73:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @qtnf_packet_send_hi_pri(ptr noundef %skb)
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  tail call fastcc void @dev_sw_netstats_tx_add(ptr noundef %ndev, i32 noundef %21)
  br label %cleanup

if.end75:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %8, i32 0, i32 3
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %8, align 4
  %conv76 = zext i8 %25 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vifid, align 4
  %conv77 = zext i8 %27 to i32
  %bus_ops.i = getelementptr inbounds %struct.qtnf_bus, ptr %23, i32 0, i32 4
  %28 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus_ops.i, align 16
  %data_tx.i = getelementptr inbounds %struct.qtnf_bus_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %data_tx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data_tx.i, align 4
  %call.i = tail call i32 %31(ptr noundef %23, ptr noundef %skb, i32 noundef %conv76, i32 noundef %conv77) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then73, %if.end63, %if.end46, %if.end23, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.end23 ], [ 0, %if.end46 ], [ 0, %if.end63 ], [ 0, %if.then73 ], [ %call.i, %if.end75 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_netdev_set_mac_address(ptr noundef %ndev, ptr noundef %addr) #1 align 64 {
entry:
  %info.i.i = alloca %struct.cfg80211_scan_info, align 8
  %old_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %old_addr) #16
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %old_addr, ptr %sa_data, i32 6)
  %call2 = tail call i32 @eth_mac_addr(ptr noundef %ndev, ptr noundef %addr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mac, align 4
  %scan_timeout.i = getelementptr inbounds %struct.qtnf_wmac, ptr %4, i32 0, i32 8
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scan_timeout.i) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #16
  %5 = getelementptr inbounds i8, ptr %info.i.i, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -65025, ptr %5, align 8
  %7 = call ptr @memset(ptr %info.i.i, i32 0, i32 14)
  %mac_lock.i.i = getelementptr inbounds %struct.qtnf_wmac, ptr %4, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mac_lock.i.i, i32 noundef 0) #16
  %scan_req.i.i = getelementptr inbounds %struct.qtnf_wmac, ptr %4, i32 0, i32 6
  %8 = ptrtoint ptr %scan_req.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scan_req.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i.i, label %if.end.qtnf_scan_done.exit_crit_edge, label %if.then.i.i

if.end.qtnf_scan_done.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %qtnf_scan_done.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @cfg80211_scan_done(ptr noundef nonnull %9, ptr noundef nonnull %info.i.i) #16
  %10 = ptrtoint ptr %scan_req.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %scan_req.i.i, align 4
  br label %qtnf_scan_done.exit

qtnf_scan_done.exit:                              ; preds = %if.then.i.i, %if.end.qtnf_scan_done.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mac_lock.i.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iftype, align 4
  %use_4addr = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %use_4addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %use_4addr, align 4, !range !253
  %15 = zext i8 %14 to i32
  %call7 = call i32 @qtnf_cmd_send_change_intf_type(ptr noundef %1, i32 noundef %12, i32 noundef %15, ptr noundef %sa_data) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %qtnf_scan_done.exit.cleanup_crit_edge, label %if.then9

qtnf_scan_done.exit.cleanup_crit_edge:            ; preds = %qtnf_scan_done.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then9:                                         ; preds = %qtnf_scan_done.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef nonnull %old_addr, i32 noundef 6) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %qtnf_scan_done.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call7, %if.then9 ], [ 0, %qtnf_scan_done.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %old_addr) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_netdev_tx_timeout(ptr noundef %ndev, i32 noundef %txqueue) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false, !prof !255

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mac1 = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.rhs, !prof !255

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.rhs:                                          ; preds = %lor.lhs.false
  %bus4 = getelementptr inbounds %struct.qtnf_wmac, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bus4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !255

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 4
  %conv = zext i8 %7 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vifid, align 4
  %conv11 = zext i8 %9 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %conv, i32 noundef %conv11, i32 noundef %10) #19
  %bus_ops.i = getelementptr inbounds %struct.qtnf_bus, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus_ops.i, align 16
  %data_tx_timeout.i = getelementptr inbounds %struct.qtnf_bus_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %data_tx_timeout.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data_tx_timeout.i, align 4
  tail call void %14(ptr noundef nonnull %5, ptr noundef %ndev) #16
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %15 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %tx_errors, align 4
  %cons_tx_timeout_cnt = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %cons_tx_timeout_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cons_tx_timeout_cnt, align 4
  %inc13 = add i32 %18, 1
  store i32 %inc13, ptr %cons_tx_timeout_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc13)
  %cmp = icmp ugt i32 %inc13, 100
  br i1 %cmp, label %do.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end18:                                         ; preds = %if.end
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70) #19
  %19 = ptrtoint ptr %ndev to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ndev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %do.end18.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end18.netdev_name.exit_crit_edge:              ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %ndev, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %ndev, ptr @.str.77
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end18.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.77, %do.end18.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.70, ptr noundef %retval.0.i) #19
  %workqueue = getelementptr inbounds %struct.qtnf_bus, ptr %5, i32 0, i32 11
  %21 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %workqueue, align 128
  %reset_work = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 9
  %call.i43 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %reset_work) #16
  br label %cleanup

cleanup:                                          ; preds = %netdev_name.exit, %if.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qtnf_netdev_port_parent_id(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %ppid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 4
  %bus1 = getelementptr inbounds %struct.qtnf_wmac, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1, align 4
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %6 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %id_len, align 1
  %hw_id = getelementptr inbounds %struct.qtnf_bus, ptr %5, i32 0, i32 18
  %7 = call ptr @memcpy(ptr %ppid, ptr %hw_id, i32 6)
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qtnf_mac_get_free_vif(ptr noundef readonly %mac) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 0
  %iftype = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 1
  %iftype.1 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.1 = icmp eq i32 %3, 0
  br i1 %cmp1.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 2
  %iftype.2 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %iftype.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.2 = icmp eq i32 %5, 0
  br i1 %cmp1.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 3
  %iftype.3 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %iftype.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iftype.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.3 = icmp eq i32 %7, 0
  br i1 %cmp1.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 4
  %iftype.4 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %iftype.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iftype.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.4 = icmp eq i32 %9, 0
  br i1 %cmp1.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 5
  %iftype.5 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %iftype.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iftype.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.5 = icmp eq i32 %11, 0
  br i1 %cmp1.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 6
  %iftype.6 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 6, i32 0, i32 1
  %12 = ptrtoint ptr %iftype.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iftype.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.6 = icmp eq i32 %13, 0
  br i1 %cmp1.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.7 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 7
  %iftype.7 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 7, i32 0, i32 1
  %14 = ptrtoint ptr %iftype.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iftype.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.7 = icmp eq i32 %15, 0
  %spec.select = select i1 %cmp1.7, ptr %arrayidx.7, ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.cond.6, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %entry.cleanup_crit_edge ], [ %arrayidx.1, %for.cond.cleanup_crit_edge ], [ %arrayidx.2, %for.cond.1.cleanup_crit_edge ], [ %arrayidx.3, %for.cond.2.cleanup_crit_edge ], [ %arrayidx.4, %for.cond.3.cleanup_crit_edge ], [ %arrayidx.5, %for.cond.4.cleanup_crit_edge ], [ %arrayidx.6, %for.cond.5.cleanup_crit_edge ], [ %spec.select, %for.cond.6 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qtnf_mac_get_base_vif(ptr noundef readonly %mac) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %iftype = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 5, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %iflist = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 5
  %retval.0 = select i1 %cmp, ptr null, ptr %iflist
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_mac_iface_comb_free(ptr nocapture noundef %mac) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %if_comb = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 18
  %0 = ptrtoint ptr %if_comb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_comb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %n_if_comb = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 19
  %2 = ptrtoint ptr %n_if_comb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_if_comb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16.not = icmp eq i32 %3, 0
  br i1 %cmp16.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %if_comb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %if_comb, align 4
  %arrayidx = getelementptr %struct.ieee80211_iface_combination, ptr %5, i32 %i.017
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %7) #16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.017, 1
  %9 = ptrtoint ptr %n_if_comb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_if_comb, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %11 = ptrtoint ptr %if_comb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %if_comb, align 4
  tail call void @kfree(ptr noundef %12) #16
  %13 = ptrtoint ptr %if_comb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %if_comb, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_mac_ext_caps_free(ptr nocapture noundef %mac) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %extended_capabilities_len = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 22
  %0 = ptrtoint ptr %extended_capabilities_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %extended_capabilities_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %extended_capabilities = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 20
  %2 = ptrtoint ptr %extended_capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extended_capabilities, align 4
  tail call void @kfree(ptr noundef %3) #16
  %4 = ptrtoint ptr %extended_capabilities to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %extended_capabilities, align 4
  %extended_capabilities_mask = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 21
  %5 = ptrtoint ptr %extended_capabilities_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extended_capabilities_mask, align 4
  tail call void @kfree(ptr noundef %6) #16
  %7 = ptrtoint ptr %extended_capabilities_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %extended_capabilities_mask, align 4
  %8 = ptrtoint ptr %extended_capabilities_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %extended_capabilities_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_scan_done(ptr noundef %mac, i1 noundef zeroext %aborted) local_unnamed_addr #1 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_timeout = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 8
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scan_timeout) #16
  %frombool.i = zext i1 %aborted to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #16
  %0 = getelementptr inbounds i8, ptr %info.i, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %aborted1.i = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info.i, i32 0, i32 2
  %2 = call ptr @memset(ptr %info.i, i32 0, i32 14)
  %3 = ptrtoint ptr %aborted1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool.i, ptr %aborted1.i, align 2
  %mac_lock.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mac_lock.i, i32 noundef 0) #16
  %scan_req.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 6
  %4 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scan_req.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %entry.qtnf_mac_scan_finish.exit_crit_edge, label %if.then.i

entry.qtnf_mac_scan_finish.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %qtnf_mac_scan_finish.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @cfg80211_scan_done(ptr noundef nonnull %5, ptr noundef nonnull %info.i) #16
  %6 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %scan_req.i, align 4
  br label %qtnf_mac_scan_finish.exit

qtnf_mac_scan_finish.exit:                        ; preds = %if.then.i, %entry.qtnf_mac_scan_finish.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mac_lock.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_core_net_attach(ptr noundef readonly %mac, ptr noundef %vif, ptr noundef %name, i8 noundef zeroext %name_assign_type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %mac, null
  br i1 %tobool.not.i, label %do.body4.i, label %priv_to_wiphy.exit, !prof !255

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #16, !srcloc !257
  unreachable

priv_to_wiphy.exit:                               ; preds = %entry
  %call1 = tail call ptr @alloc_netdev_mqs(i32 noundef 4, ptr noundef %name, i8 noundef zeroext %name_assign_type, ptr noundef nonnull @ether_setup, i32 noundef 1, i32 noundef 1) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %priv_to_wiphy.exit.cleanup_crit_edge, label %if.end

priv_to_wiphy.exit.cleanup_crit_edge:             ; preds = %priv_to_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %priv_to_wiphy.exit
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 7
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %netdev, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @qtnf_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 124
  %2 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %needs_free_netdev, align 8
  %_net.i = getelementptr i8, ptr %mac, i32 -120
  %3 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_net.i, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %nd_net.i, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 82
  %6 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vif, ptr %ieee80211_ptr, align 16
  %mac_addr = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 2
  tail call void @dev_addr_mod(ptr noundef nonnull %call1, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #16
  %flags = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %or = or i32 %8, 4098
  store i32 %or, ptr %flags, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 115
  %9 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %watchdog_timeo, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 107
  %10 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 100, ptr %tx_queue_len, align 16
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 44
  %11 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @qtnf_ethtool_ops, ptr %ethtool_ops, align 16
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 3
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %hw_capab.i = getelementptr inbounds %struct.qtnf_bus, ptr %13, i32 0, i32 7, i32 8
  %call.i = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i, i32 noundef 8, i32 noundef 2) #16
  br i1 %call.i, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 22
  %14 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4, ptr %needed_tailroom, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %add.ptr.i39 = getelementptr i8, ptr %call1, i32 2304
  %15 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vif, ptr %add.ptr.i39, align 4
  %parent.i = getelementptr i8, ptr %mac, i32 -936
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %parent, align 8
  %call9 = tail call i32 @cfg80211_register_netdevice(ptr noundef nonnull %call1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end5.cleanup_crit_edge, label %if.then11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @free_netdev(ptr noundef nonnull %call1) #16
  %19 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %netdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end5.cleanup_crit_edge, %priv_to_wiphy.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %priv_to_wiphy.exit.cleanup_crit_edge ], [ %call9, %if.then11 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @qtnf_netdev_is_qtn(ptr nocapture noundef readonly %ndev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %1, @qtnf_netdev_ops
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_core_attach(ptr noundef %bus) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qtnf_trans_init(ptr noundef %bus) #16
  %bus_ops.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 4
  %0 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_ops.i, align 16
  %data_rx_start.i = getelementptr inbounds %struct.qtnf_bus_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %data_rx_start.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_rx_start.i, align 4
  tail call void %3(ptr noundef %bus) #16
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.6, i32 noundef 655362, i32 noundef 1) #16
  %workqueue = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 11
  %4 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %workqueue, align 128
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #19
  br label %error

if.end:                                           ; preds = %entry
  %call3 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.9, i32 noundef 16, i32 noundef 0) #16
  %hprio_workqueue = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 12
  %5 = ptrtoint ptr %hprio_workqueue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %hprio_workqueue, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end9, label %do.body13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #19
  br label %error

do.body13:                                        ; preds = %if.end
  %event_work = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 14
  tail call void @__init_work(ptr noundef %event_work, i32 noundef 0) #16
  %6 = ptrtoint ptr %event_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %event_work, align 4
  %lockdep_map = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @qtnf_core_attach.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry17 = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 14, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 14, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @qtnf_event_work_handler, ptr %func, align 4
  %call21 = tail call i32 @qtnf_cmd_send_init_fw(ptr noundef %bus) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef %call21) #19
  br label %error

if.end29:                                         ; preds = %do.body13
  %hw_info = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7
  %10 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_info, align 8
  %shr = lshr i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %shr)
  %cmp.not = icmp eq i32 %shr, 18
  br i1 %cmp.not, label %if.end40, label %do.end33

do.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 18, i32 noundef %shr) #19
  br label %error

if.end40:                                         ; preds = %if.end29
  %fw_state = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 1
  %12 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %fw_state, align 4
  %call41 = tail call i32 @qtnf_cmd_get_hw_info(ptr noundef %bus) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end49, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef %call41) #19
  br label %error

if.end49:                                         ; preds = %if.end40
  %hw_capab.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 8
  %call.i = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i, i32 noundef 8, i32 noundef 2) #16
  br i1 %call.i, label %land.lhs.true, label %if.end49.if.end56_crit_edge

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end49
  %13 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus_ops.i, align 16
  %data_tx_use_meta_set = getelementptr inbounds %struct.qtnf_bus_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %data_tx_use_meta_set to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data_tx_use_meta_set, align 4
  %tobool52.not = icmp eq ptr %16, null
  br i1 %tobool52.not, label %land.lhs.true.if.end56_crit_edge, label %if.then53

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %16(ptr noundef %bus, i1 noundef zeroext true) #16
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %land.lhs.true.if.end56_crit_edge, %if.end49.if.end56_crit_edge
  %num_mac = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %num_mac to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_mac, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp58 = icmp ugt i8 %18, 3
  br i1 %cmp58, label %do.end63, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end56
  %19 = ptrtoint ptr %num_mac to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_mac, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp73136.not = icmp eq i8 %20, 0
  br i1 %cmp73136.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %18 to i32
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.8, i32 noundef %conv) #19
  br label %error

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0137 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call75 = tail call fastcc i32 @qtnf_core_mac_attach(ptr noundef %bus, i32 noundef %i.0137)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %for.inc, label %do.end80

do.end80:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.8, i32 noundef %i.0137, i32 noundef %call75) #19
  br label %error

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0137, 1
  %21 = ptrtoint ptr %num_mac to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_mac, align 4
  %conv72 = zext i8 %22 to i32
  %cmp73 = icmp ult i32 %inc, %conv72
  br i1 %cmp73, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %netdev_nb = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 17
  %23 = ptrtoint ptr %netdev_nb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @qtnf_core_netdevice_event, ptr %netdev_nb, align 64
  %call85 = tail call i32 @register_netdevice_notifier(ptr noundef %netdev_nb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end93, label %do.end90

do.end90:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.8, i32 noundef %call85) #19
  br label %error

if.end93:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %fw_state, align 4
  br label %cleanup

error:                                            ; preds = %do.end90, %do.end80, %do.end63, %do.end46, %do.end33, %do.end26, %do.end9, %do.end
  %ret.0 = phi i32 [ %call21, %do.end26 ], [ -93, %do.end33 ], [ %call41, %do.end46 ], [ -34, %do.end63 ], [ %call75, %do.end80 ], [ %call85, %do.end90 ], [ -12, %do.end9 ], [ -12, %do.end ]
  tail call void @qtnf_core_detach(ptr noundef %bus)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end93
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end93 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_trans_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_event_work_handler(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_init_fw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_get_hw_info(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_core_mac_attach(ptr noundef %bus, i32 noundef %macid) unnamed_addr #1 align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7
  %mac_bitmap = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %mac_bitmap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_bitmap, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %macid
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %macid) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_mac.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %num_mac.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_mac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp ugt i8 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.end7.thread.i

if.then.i:                                        ; preds = %if.end
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 128
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #16
  %10 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 255, i32 48)
  %12 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %10, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i.i, ptr %name2.i.i.i, align 4
  %id3.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %id3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %macid, ptr %id3.i.i.i, align 8
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %17 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %properties.i.i.i, align 8
  %19 = call ptr @memset(ptr %res4.i.i.i, i32 0, i32 16)
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #16
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dev_name.exit.i.do.end6_crit_edge, label %if.end7.i

dev_name.exit.i.do.end6_crit_edge:                ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end6

if.end7.i:                                        ; preds = %dev_name.exit.i
  %call8.i = call ptr @qtnf_wiphy_allocate(ptr noundef %bus, ptr noundef %call.i.i.i) #16
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.then9.i, label %if.end7.i.wiphy_priv.exit.i_crit_edge

if.end7.i.wiphy_priv.exit.i_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %wiphy_priv.exit.i

if.end7.thread.i:                                 ; preds = %if.end
  %call8105.i = tail call ptr @qtnf_wiphy_allocate(ptr noundef %bus, ptr noundef null) #16
  %tobool.not106.i = icmp eq ptr %call8105.i, null
  br i1 %tobool.not106.i, label %if.end7.thread.i.do.end6_crit_edge, label %if.end7.thread.i.wiphy_priv.exit.i_crit_edge

if.end7.thread.i.wiphy_priv.exit.i_crit_edge:     ; preds = %if.end7.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %wiphy_priv.exit.i

if.end7.thread.i.do.end6_crit_edge:               ; preds = %if.end7.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end6

if.then9.i:                                       ; preds = %if.end7.i
  %tobool10.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool10.not.i, label %if.then9.i.do.end6_crit_edge, label %if.then11.i

if.then9.i.do.end6_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end6

if.then11.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @platform_device_unregister(ptr noundef nonnull %call.i.i.i) #16
  br label %do.end6

wiphy_priv.exit.i:                                ; preds = %if.end7.thread.i.wiphy_priv.exit.i_crit_edge, %if.end7.i.wiphy_priv.exit.i_crit_edge
  %call8109.i = phi ptr [ %call8105.i, %if.end7.thread.i.wiphy_priv.exit.i_crit_edge ], [ %call8.i, %if.end7.i.wiphy_priv.exit.i_crit_edge ]
  %pdev.0107.i = phi ptr [ null, %if.end7.thread.i.wiphy_priv.exit.i_crit_edge ], [ %call.i.i.i, %if.end7.i.wiphy_priv.exit.i_crit_edge ]
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 0, i32 86
  %conv16.i = trunc i32 %macid to i8
  %20 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv16.i, ptr %priv.i.i, align 4
  %pdev18.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 7, i32 56, i32 16
  %21 = ptrtoint ptr %pdev18.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pdev.0107.i, ptr %pdev18.i, align 4
  %bus19.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 1, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %bus19.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %bus, ptr %bus19.i, align 4
  %mac_lock.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 7, i32 56, i32 12, i32 10
  call void @__mutex_init(ptr noundef %mac_lock.i, ptr noundef nonnull @.str.105, ptr noundef nonnull @qtnf_core_mac_alloc.__key) #16
  %scan_timeout.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 7, i32 56, i32 12, i32 11, i32 1, i32 1
  call void @__init_work(ptr noundef %scan_timeout.i, i32 noundef 0) #16
  %23 = ptrtoint ptr %scan_timeout.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %scan_timeout.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 7, i32 56, i32 12, i32 15
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @qtnf_core_mac_alloc.__key.106, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry28.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 7, i32 56, i32 12, i32 12
  %24 = ptrtoint ptr %entry28.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry28.i, ptr %entry28.i, align 4
  %prev.i.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 7, i32 56, i32 12, i32 13
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry28.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 7, i32 56, i32 12, i32 14
  %26 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @qtnf_mac_scan_timeout, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 7, i32 56, i32 12, i32 22
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.109, ptr noundef nonnull @qtnf_core_mac_alloc.__key.108) #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %wiphy_priv.exit.i
  %i.0112.i = phi i32 [ 0, %wiphy_priv.exit.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 %i.0112.i
  %mac41.i = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 %i.0112.i, i32 8
  %27 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 1156)
  %28 = ptrtoint ptr %mac41.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %priv.i.i, ptr %mac41.i, align 4
  %conv42.i = trunc i32 %i.0112.i to i8
  %vifid.i = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 %i.0112.i, i32 3
  %29 = ptrtoint ptr %vifid.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv42.i, ptr %vifid.i, align 4
  %sta_list.i = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 %i.0112.i, i32 12
  call void @qtnf_sta_list_init(ptr noundef %sta_list.i) #16
  %high_pri_tx_work.i = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 %i.0112.i, i32 10
  call void @__init_work(ptr noundef %high_pri_tx_work.i, i32 noundef 0) #16
  %30 = ptrtoint ptr %high_pri_tx_work.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %high_pri_tx_work.i, align 4
  %lockdep_map49.i = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 %i.0112.i, i32 10, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map49.i, ptr noundef nonnull @.str.111, ptr noundef nonnull @qtnf_core_mac_alloc.__key.110, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry51.i = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 %i.0112.i, i32 10, i32 1
  %31 = ptrtoint ptr %entry51.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry51.i, ptr %entry51.i, align 4
  %prev.i102.i = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 %i.0112.i, i32 10, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i102.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry51.i, ptr %prev.i102.i, align 4
  %func53.i = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 %i.0112.i, i32 10, i32 2
  %33 = ptrtoint ptr %func53.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @qtnf_vif_send_data_high_pri, ptr %func53.i, align 4
  %high_pri_tx_queue.i = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 %i.0112.i, i32 11
  %lock.i.i = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 %i.0112.i, i32 11, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %34 = ptrtoint ptr %high_pri_tx_queue.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %high_pri_tx_queue.i, ptr %high_pri_tx_queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.79, ptr %high_pri_tx_queue.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %high_pri_tx_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 %i.0112.i, i32 11, i32 1
  %36 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %qlen.i.i.i, align 4
  %inc.i = add nuw nsw i32 %i.0112.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %qtnf_core_mac_alloc.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

qtnf_core_mac_alloc.exit:                         ; preds = %for.body.i
  %iftype.i.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 1, i32 3
  %37 = ptrtoint ptr %iftype.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %iftype.i.i, align 4
  %bss_priority.i.i = getelementptr inbounds %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 5, i32 0, i32 4
  %38 = ptrtoint ptr %bss_priority.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %bss_priority.i.i, align 1
  %iflist.i.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 1, i32 2, i32 2
  %39 = ptrtoint ptr %iflist.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call8109.i, ptr %iflist.i.i, align 4
  %reset_work.i.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 1, i32 56, i32 14
  call void @__init_work(ptr noundef %reset_work.i.i, i32 noundef 0) #16
  %40 = ptrtoint ptr %reset_work.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %reset_work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 1, i32 56, i32 17
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.115, ptr noundef nonnull @qtnf_mac_init_primary_intf.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry5.i.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 1, i32 56, i32 15
  %41 = ptrtoint ptr %entry5.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry5.i.i, ptr %entry5.i.i, align 4
  %prev.i.i103.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 1, i32 56, i32 16
  %42 = ptrtoint ptr %prev.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry5.i.i, ptr %prev.i.i103.i, align 4
  %func.i.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 1, i32 56, i32 16, i32 1
  %43 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @qtnf_vif_reset_handler, ptr %func.i.i, align 4
  %cons_tx_timeout_cnt.i.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 1, i32 56, i32 36
  %44 = ptrtoint ptr %cons_tx_timeout_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cons_tx_timeout_cnt.i.i, align 4
  %arrayidx57.i = getelementptr %struct.qtnf_bus, ptr %bus, i32 0, i32 5, i32 %macid
  %45 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %priv.i.i, ptr %arrayidx57.i, align 4
  %cmp.i146 = icmp ugt ptr %priv.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %qtnf_core_mac_alloc.exit.do.end6_crit_edge, label %if.end10

qtnf_core_mac_alloc.exit.do.end6_crit_edge:       ; preds = %qtnf_core_mac_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end6

do.end6:                                          ; preds = %qtnf_core_mac_alloc.exit.do.end6_crit_edge, %if.then11.i, %if.then9.i.do.end6_crit_edge, %if.end7.thread.i.do.end6_crit_edge, %dev_name.exit.i.do.end6_crit_edge
  %retval.0.i145163 = phi ptr [ %priv.i.i, %qtnf_core_mac_alloc.exit.do.end6_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.thread.i.do.end6_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then9.i.do.end6_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then11.i ], [ inttoptr (i32 -22 to ptr), %dev_name.exit.i.do.end6_crit_edge ]
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef %macid) #19
  %46 = ptrtoint ptr %retval.0.i145163 to i32
  br label %cleanup

if.end10:                                         ; preds = %qtnf_core_mac_alloc.exit
  %47 = ptrtoint ptr %iftype.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iftype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i147 = icmp eq i32 %48, 0
  %tobool12.not168 = icmp eq ptr %iflist.i.i, null
  %tobool12.not = or i1 %cmp.i147, %tobool12.not168
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.79, i32 noundef %macid) #19
  br label %error

if.end19:                                         ; preds = %if.end10
  %49 = ptrtoint ptr %iftype.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iftype.i.i, align 4
  %use_4addr = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 1, i32 38, i32 11
  %51 = ptrtoint ptr %use_4addr to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %use_4addr, align 4, !range !253
  %53 = zext i8 %52 to i32
  %mac_addr = getelementptr inbounds %struct.qtnf_vif, ptr %iflist.i.i, i32 0, i32 2
  %call23 = call i32 @qtnf_cmd_send_add_intf(ptr noundef nonnull %iflist.i.i, i32 noundef %50, i32 noundef %53, ptr noundef %mac_addr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.79, i32 noundef %macid) #19
  br label %error

if.end31:                                         ; preds = %if.end19
  %call32 = call i32 @qtnf_cmd_get_mac_info(ptr noundef %priv.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end40, label %if.end31.error_del_vif_crit_edge

if.end31.error_del_vif_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_del_vif

if.end40:                                         ; preds = %if.end31
  %54 = ptrtoint ptr %bus19.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus19.i, align 4
  %hw_id = getelementptr inbounds %struct.qtnf_bus, ptr %55, i32 0, i32 18
  %56 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_id, align 4
  %add.ptr.i = getelementptr %struct.qtnf_bus, ptr %55, i32 0, i32 18, i32 4
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %59 to i32
  %or.i = or i32 %57, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i149 = icmp eq i32 %or.i, 0
  br i1 %cmp.i149, label %if.then44, label %if.end40.if.end49_crit_edge

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %macaddr = getelementptr inbounds %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %macaddr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %macaddr, align 4
  %62 = ptrtoint ptr %hw_id to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %hw_id, align 4
  %add.ptr.i150 = getelementptr %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 2, i32 4
  %63 = ptrtoint ptr %add.ptr.i150 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %add.ptr.i150, align 2
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %add.ptr.i, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.end40.if.end49_crit_edge
  %tobool.not.i.i151 = icmp eq ptr %priv.i.i, null
  br i1 %tobool.not.i.i151, label %do.body4.i.i, label %priv_to_wiphy.exit.i, !prof !255

do.body4.i.i:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #16, !srcloc !257
  unreachable

priv_to_wiphy.exit.i:                             ; preds = %if.end49
  %macinfo.i = getelementptr inbounds %struct.wiphy, ptr %call8109.i, i32 1, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %macinfo.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %macinfo.i, align 4
  %68 = and i8 %67, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i152 = icmp eq i8 %68, 0
  br i1 %tobool.not.i152, label %priv_to_wiphy.exit.i.if.end4.i_crit_edge, label %if.then.i153

priv_to_wiphy.exit.i.if.end4.i_crit_edge:         ; preds = %priv_to_wiphy.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then.i153:                                     ; preds = %priv_to_wiphy.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 92) #22
  %arrayidx.i.i = getelementptr %struct.wiphy, ptr %call8109.i, i32 0, i32 53
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i.i.i, ptr %arrayidx.i.i, align 4
  %tobool.not.i34.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i34.i, label %if.then.i153.error_del_vif_crit_edge, label %if.end.i.i154

if.then.i153.error_del_vif_crit_edge:             ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_del_vif

if.end.i.i154:                                    ; preds = %if.then.i153
  %band5.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call7.i.i.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %band5.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %band5.i.i, align 8
  %call8.i.i = call i32 @qtnf_cmd_band_info_get(ptr noundef nonnull %priv.i.i, ptr noundef nonnull %call7.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %qtnf_mac_init_single_band.exit.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i154
  call void @__sanitizer_cov_trace_pc() #18
  %72 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %priv.i.i, align 4
  %conv.i.i = zext i8 %73 to i32
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef %conv.i.i, i32 noundef 0, i32 noundef %call8.i.i) #19
  br label %error_del_vif

qtnf_mac_init_single_band.exit.i:                 ; preds = %if.end.i.i154
  call void @__sanitizer_cov_trace_pc() #18
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i, align 4
  call void @qtnf_band_init_rates(ptr noundef %75) #16
  br label %if.end4.i

if.end4.i:                                        ; preds = %qtnf_mac_init_single_band.exit.i, %priv_to_wiphy.exit.i.if.end4.i_crit_edge
  %76 = ptrtoint ptr %macinfo.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %macinfo.i, align 4
  %78 = and i8 %77, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool9.not.i = icmp eq i8 %78, 0
  br i1 %tobool9.not.i, label %if.end4.i.if.end15.i_crit_edge, label %if.then10.i

if.end4.i.if.end15.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i35.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 92) #22
  %arrayidx.i36.i = getelementptr %struct.wiphy, ptr %call8109.i, i32 0, i32 53, i32 1
  %80 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i.i35.i, ptr %arrayidx.i36.i, align 4
  %tobool.not.i37.i = icmp eq ptr %call7.i.i.i35.i, null
  br i1 %tobool.not.i37.i, label %if.then10.i.error_del_vif_crit_edge, label %if.end.i41.i

if.then10.i.error_del_vif_crit_edge:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_del_vif

if.end.i41.i:                                     ; preds = %if.then10.i
  %band5.i38.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call7.i.i.i35.i, i32 0, i32 2
  %81 = ptrtoint ptr %band5.i38.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %band5.i38.i, align 8
  %call8.i39.i = call i32 @qtnf_cmd_band_info_get(ptr noundef nonnull %priv.i.i, ptr noundef nonnull %call7.i.i.i35.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i39.i)
  %tobool9.not.i40.i = icmp eq i32 %call8.i39.i, 0
  br i1 %tobool9.not.i40.i, label %qtnf_mac_init_single_band.exit47.i, label %do.end.i44.i

do.end.i44.i:                                     ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #18
  %82 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %priv.i.i, align 4
  %conv.i42.i = zext i8 %83 to i32
  %call11.i43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef %conv.i42.i, i32 noundef 1, i32 noundef %call8.i39.i) #19
  br label %error_del_vif

qtnf_mac_init_single_band.exit47.i:               ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #18
  %84 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i36.i, align 4
  call void @qtnf_band_init_rates(ptr noundef %85) #16
  br label %if.end15.i

if.end15.i:                                       ; preds = %qtnf_mac_init_single_band.exit47.i, %if.end4.i.if.end15.i_crit_edge
  %86 = ptrtoint ptr %macinfo.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %macinfo.i, align 4
  %88 = and i8 %87, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool20.not.i = icmp eq i8 %88, 0
  br i1 %tobool20.not.i, label %if.end15.i.if.end58_crit_edge, label %if.then21.i

if.end15.i.if.end58_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then21.i:                                      ; preds = %if.end15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i48.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3520, i32 noundef 92) #22
  %arrayidx.i49.i = getelementptr %struct.wiphy, ptr %call8109.i, i32 0, i32 53, i32 2
  %90 = ptrtoint ptr %arrayidx.i49.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i.i48.i, ptr %arrayidx.i49.i, align 4
  %tobool.not.i50.i = icmp eq ptr %call7.i.i.i48.i, null
  br i1 %tobool.not.i50.i, label %if.then21.i.error_del_vif_crit_edge, label %if.end.i54.i

if.then21.i.error_del_vif_crit_edge:              ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_del_vif

if.end.i54.i:                                     ; preds = %if.then21.i
  %band5.i51.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call7.i.i.i48.i, i32 0, i32 2
  %91 = ptrtoint ptr %band5.i51.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %band5.i51.i, align 8
  %call8.i52.i = call i32 @qtnf_cmd_band_info_get(ptr noundef nonnull %priv.i.i, ptr noundef nonnull %call7.i.i.i48.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i52.i)
  %tobool9.not.i53.i = icmp eq i32 %call8.i52.i, 0
  br i1 %tobool9.not.i53.i, label %if.end12.i58.i, label %do.end.i57.i

do.end.i57.i:                                     ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #18
  %92 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %priv.i.i, align 4
  %conv.i55.i = zext i8 %93 to i32
  %call11.i56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef %conv.i55.i, i32 noundef 2, i32 noundef %call8.i52.i) #19
  br label %error_del_vif

if.end12.i58.i:                                   ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #18
  %94 = ptrtoint ptr %arrayidx.i49.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i49.i, align 4
  call void @qtnf_band_init_rates(ptr noundef %95) #16
  br label %if.end58

if.end58:                                         ; preds = %if.end12.i58.i, %if.end15.i.if.end58_crit_edge
  %call60 = call i32 @qtnf_wiphy_register(ptr noundef %hw_info, ptr noundef nonnull %priv.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %priv_to_wiphy.exit160, label %if.end58.error_del_vif_crit_edge

if.end58.error_del_vif_crit_edge:                 ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_del_vif

priv_to_wiphy.exit160:                            ; preds = %if.end58
  %wiphy_registered = getelementptr inbounds %struct.qtnf_wmac, ptr %priv.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %wiphy_registered to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %wiphy_registered, align 1
  call void @rtnl_lock() #16
  call void @mutex_lock_nested(ptr noundef %call8109.i, i32 noundef 0) #16
  %call70 = call i32 @qtnf_core_net_attach(ptr noundef nonnull %priv.i.i, ptr noundef nonnull %iflist.i.i, ptr noundef nonnull @.str.98, i8 noundef zeroext 1)
  call void @mutex_unlock(ptr noundef %call8109.i) #16
  call void @rtnl_unlock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool72.not = icmp eq i32 %call70, 0
  br i1 %tobool72.not, label %if.end79, label %priv_to_wiphy.exit160.error_del_vif_crit_edge

priv_to_wiphy.exit160.error_del_vif_crit_edge:    ; preds = %priv_to_wiphy.exit160
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_del_vif

if.end79:                                         ; preds = %priv_to_wiphy.exit160
  %hw_capab.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 8
  %call.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i, i32 noundef 8, i32 noundef 2) #16
  br i1 %call.i, label %if.then82, label %if.end79.do.body88_crit_edge

if.end79.do.body88_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body88

if.then82:                                        ; preds = %if.end79
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %iflist.i.i, i32 0, i32 7
  %97 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %netdev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 17
  %99 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ifindex, align 4
  %call83 = call i32 @qtnf_cmd_netdev_changeupper(ptr noundef nonnull %iflist.i.i, i32 noundef %100) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then82.do.body88_crit_edge, label %if.then82.error_crit_edge

if.then82.error_crit_edge:                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.then82.do.body88_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body88

do.body88:                                        ; preds = %if.then82.do.body88_crit_edge, %if.end79.do.body88_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_core_mac_attach.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_core_mac_attach, %if.then94)) #16
          to label %cleanup [label %if.then94], !srcloc !258

if.then94:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_core_mac_attach.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.79, i32 noundef %macid) #16
  br label %cleanup

error_del_vif:                                    ; preds = %priv_to_wiphy.exit160.error_del_vif_crit_edge, %if.end58.error_del_vif_crit_edge, %do.end.i57.i, %if.then21.i.error_del_vif_crit_edge, %do.end.i44.i, %if.then10.i.error_del_vif_crit_edge, %do.end.i.i, %if.then.i153.error_del_vif_crit_edge, %if.end31.error_del_vif_crit_edge
  %.str.100.sink = phi ptr [ @.str.90, %if.end31.error_del_vif_crit_edge ], [ @.str.93, %do.end.i57.i ], [ @.str.93, %if.then21.i.error_del_vif_crit_edge ], [ @.str.93, %if.then.i153.error_del_vif_crit_edge ], [ @.str.93, %do.end.i.i ], [ @.str.93, %if.then10.i.error_del_vif_crit_edge ], [ @.str.93, %do.end.i44.i ], [ @.str.96, %if.end58.error_del_vif_crit_edge ], [ @.str.100, %priv_to_wiphy.exit160.error_del_vif_crit_edge ]
  %ret.0 = phi i32 [ %call32, %if.end31.error_del_vif_crit_edge ], [ %call8.i52.i, %do.end.i57.i ], [ -12, %if.then21.i.error_del_vif_crit_edge ], [ -12, %if.then.i153.error_del_vif_crit_edge ], [ %call8.i.i, %do.end.i.i ], [ -12, %if.then10.i.error_del_vif_crit_edge ], [ %call8.i39.i, %do.end.i44.i ], [ %call60, %if.end58.error_del_vif_crit_edge ], [ %call70, %priv_to_wiphy.exit160.error_del_vif_crit_edge ]
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.100.sink, ptr noundef nonnull @.str.79, i32 noundef %macid) #19
  %call98 = call i32 @qtnf_cmd_send_del_intf(ptr noundef nonnull %iflist.i.i) #16
  %101 = ptrtoint ptr %iftype.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %iftype.i.i, align 4
  br label %error

error:                                            ; preds = %error_del_vif, %if.then82.error_crit_edge, %do.end28, %do.end16
  %ret.1 = phi i32 [ %call23, %do.end28 ], [ %ret.0, %error_del_vif ], [ %call83, %if.then82.error_crit_edge ], [ -14, %do.end16 ]
  call fastcc void @qtnf_core_mac_detach(ptr noundef %bus, i32 noundef %macid)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then94, %do.body88, %do.end6, %do.end
  %retval.0 = phi i32 [ %46, %do.end6 ], [ %ret.1, %error ], [ 0, %do.end ], [ 0, %if.then94 ], [ 0, %do.body88 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_core_netdevice_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  %priv = alloca %struct.netdev_nested_priv, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv) #16
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 72057594037927935, ptr %priv, align 8, !annotation !259
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %data, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %5, @qtnf_netdev_ops
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i, align 4
  %cmp.i56.not = icmp eq ptr %7, @init_net
  br i1 %cmp.i56.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 4
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac, align 4
  %bus7 = getelementptr inbounds %struct.qtnf_wmac, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %bus7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %event)
  %cond42 = icmp eq i32 %event, 21
  br i1 %cond42, label %sw.bb, label %if.end5.sw.epilog.thread_crit_edge

if.end5.sw.epilog.thread_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %if.end5
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %14 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %upper_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %17, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %sw.bb.sw.epilog.thread_crit_edge, label %do.body

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.thread

do.body:                                          ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_core_netdevice_event.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_core_netdevice_event, %if.then15)) #16
          to label %do.end [label %if.then15], !srcloc !258

if.then15:                                        ; preds = %do.body
  %18 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mac, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 4
  %conv = zext i8 %21 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %9, i32 0, i32 3
  %22 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vifid, align 4
  %conv17 = zext i8 %23 to i32
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %15, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.then15.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.then15.netdev_name.exit_crit_edge:             ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %15, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %15, ptr @.str.77
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.then15.netdev_name.exit_crit_edge
  %retval.0.i57 = phi ptr [ @.str.77, %if.then15.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %linking = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %26 = ptrtoint ptr %linking to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %linking, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool19.not = icmp eq i8 %27, 0
  %cond = select i1 %tobool19.not, ptr @.str.122, ptr @.str.121
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_core_netdevice_event.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.118, i32 noundef %conv, i32 noundef %conv17, ptr noundef %retval.0.i57, ptr noundef nonnull %cond) #16
  br label %do.end

do.end:                                           ; preds = %netdev_name.exit, %do.body
  %hw_capab.i = getelementptr inbounds %struct.qtnf_bus, ptr %13, i32 0, i32 7, i32 8
  %call.i58 = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i, i32 noundef 8, i32 noundef 2) #16
  br i1 %call.i58, label %if.then24, label %if.else31

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %linking25 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %28 = ptrtoint ptr %linking25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %linking25, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool26.not = icmp eq i8 %29, 0
  %call. = select i1 %tobool26.not, ptr %1, ptr %15
  %br_domain.0.in = getelementptr inbounds %struct.net_device, ptr %call., i32 0, i32 17
  %30 = ptrtoint ptr %br_domain.0.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %br_domain.0 = load i32, ptr %br_domain.0.in, align 4
  %call30 = tail call i32 @qtnf_cmd_netdev_changeupper(ptr noundef %9, i32 noundef %br_domain.0) #16
  br label %sw.epilog

if.else31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call32 = call i32 @netdev_walk_all_lower_dev(ptr noundef %15, ptr noundef nonnull @qtnf_check_br_ports, ptr noundef nonnull %priv) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else31, %if.then24
  %ret.0 = phi i32 [ %call30, %if.then24 ], [ %call32, %if.else31 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not.i59 = icmp eq i32 %ret.0, 0
  %sub.i = sub i32 1, %ret.0
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i59, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge, %if.end5.sw.epilog.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.thread, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %sw.epilog.thread ], [ %or.i, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_core_detach(ptr noundef %bus) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_nb = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 17
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef %netdev_nb) #16
  %bus_ops.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 4
  %0 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_ops.i, align 16
  %data_rx_stop.i = getelementptr inbounds %struct.qtnf_bus_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data_rx_stop.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_rx_stop.i, align 4
  tail call void %3(ptr noundef %bus) #16
  tail call fastcc void @qtnf_core_mac_detach(ptr noundef %bus, i32 noundef 0)
  tail call fastcc void @qtnf_core_mac_detach(ptr noundef %bus, i32 noundef 1)
  tail call fastcc void @qtnf_core_mac_detach(ptr noundef %bus, i32 noundef 2)
  %fw_state.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 1
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @qtnf_cmd_send_deinit_fw(ptr noundef %bus) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fw_state.i, align 4
  %workqueue = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 11
  %9 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workqueue, align 128
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @destroy_workqueue(ptr noundef nonnull %10) #16
  %11 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %workqueue, align 128
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %hprio_workqueue = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 12
  %12 = ptrtoint ptr %hprio_workqueue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hprio_workqueue, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @destroy_workqueue(ptr noundef nonnull %13) #16
  %14 = ptrtoint ptr %hprio_workqueue to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %hprio_workqueue, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  tail call void @qtnf_trans_free(ptr noundef %bus) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qtnf_core_mac_detach(ptr nocapture noundef %bus, i32 noundef %macid) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.qtnf_bus, ptr %bus, i32 0, i32 5, i32 %macid
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %priv_to_wiphy.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

priv_to_wiphy.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1408
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %priv_to_wiphy.exit
  %i.080 = phi i32 [ 0, %priv_to_wiphy.exit ], [ %inc, %if.end9.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.qtnf_wmac, ptr %1, i32 0, i32 5, i32 %i.080
  tail call void @rtnl_lock() #16
  %netdev = getelementptr %struct.qtnf_wmac, ptr %1, i32 0, i32 5, i32 %i.080, i32 7
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %for.body.if.end9_crit_edge, label %land.lhs.true

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

land.lhs.true:                                    ; preds = %for.body
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %arrayidx2, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %land.lhs.true.if.end9_crit_edge, label %if.then5

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @qtnf_virtual_intf_cleanup(ptr noundef nonnull %3) #16
  %call8 = tail call i32 @qtnf_del_virtual_intf(ptr noundef %add.ptr.i, ptr noundef %arrayidx2) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %land.lhs.true.if.end9_crit_edge, %for.body.if.end9_crit_edge
  tail call void @rtnl_unlock() #16
  %sta_list = getelementptr %struct.qtnf_wmac, ptr %1, i32 0, i32 5, i32 %i.080, i32 12
  tail call void @qtnf_sta_list_free(ptr noundef %sta_list) #16
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end9
  %wiphy_registered = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy_registered to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wiphy_registered, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %for.end.if.end12_crit_edge, label %if.then11

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @wiphy_unregister(ptr noundef %add.ptr.i) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.end.if.end12_crit_edge
  %arrayidx16 = getelementptr i8, ptr %1, i32 -1104
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %9, null
  br i1 %tobool17.not, label %if.end12.for.inc32_crit_edge, label %if.end19

if.end12.for.inc32_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc32

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %iftype_data = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %iftype_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iftype_data, align 4
  tail call void @kfree(ptr noundef %11) #16
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx16, align 4
  %n_iftype_data = getelementptr inbounds %struct.ieee80211_supported_band, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %n_iftype_data to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %n_iftype_data, align 4
  %15 = load ptr, ptr %arrayidx16, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %17) #16
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx16, align 4
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %n_channels, align 4
  %21 = load ptr, ptr %arrayidx16, align 4
  tail call void @kfree(ptr noundef %21) #16
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx16, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %if.end19, %if.end12.for.inc32_crit_edge
  %arrayidx16.1 = getelementptr i8, ptr %1, i32 -1100
  %23 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx16.1, align 4
  %tobool17.not.1 = icmp eq ptr %24, null
  br i1 %tobool17.not.1, label %for.inc32.for.inc32.1_crit_edge, label %if.end19.1

for.inc32.for.inc32.1_crit_edge:                  ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc32.1

if.end19.1:                                       ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #18
  %iftype_data.1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %iftype_data.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iftype_data.1, align 4
  tail call void @kfree(ptr noundef %26) #16
  %27 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx16.1, align 4
  %n_iftype_data.1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %n_iftype_data.1 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %n_iftype_data.1, align 4
  %30 = load ptr, ptr %arrayidx16.1, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %32) #16
  %33 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx16.1, align 4
  %n_channels.1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %n_channels.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %n_channels.1, align 4
  %36 = load ptr, ptr %arrayidx16.1, align 4
  tail call void @kfree(ptr noundef %36) #16
  %37 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx16.1, align 4
  br label %for.inc32.1

for.inc32.1:                                      ; preds = %if.end19.1, %for.inc32.for.inc32.1_crit_edge
  %arrayidx16.2 = getelementptr i8, ptr %1, i32 -1096
  %38 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx16.2, align 4
  %tobool17.not.2 = icmp eq ptr %39, null
  br i1 %tobool17.not.2, label %for.inc32.1.for.inc32.2_crit_edge, label %if.end19.2

for.inc32.1.for.inc32.2_crit_edge:                ; preds = %for.inc32.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc32.2

if.end19.2:                                       ; preds = %for.inc32.1
  call void @__sanitizer_cov_trace_pc() #18
  %iftype_data.2 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %iftype_data.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iftype_data.2, align 4
  tail call void @kfree(ptr noundef %41) #16
  %42 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx16.2, align 4
  %n_iftype_data.2 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %n_iftype_data.2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %n_iftype_data.2, align 4
  %45 = load ptr, ptr %arrayidx16.2, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  tail call void @kfree(ptr noundef %47) #16
  %48 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx16.2, align 4
  %n_channels.2 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %n_channels.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %n_channels.2, align 4
  %51 = load ptr, ptr %arrayidx16.2, align 4
  tail call void @kfree(ptr noundef %51) #16
  %52 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx16.2, align 4
  br label %for.inc32.2

for.inc32.2:                                      ; preds = %if.end19.2, %for.inc32.1.for.inc32.2_crit_edge
  %arrayidx16.3 = getelementptr i8, ptr %1, i32 -1092
  %53 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx16.3, align 4
  %tobool17.not.3 = icmp eq ptr %54, null
  br i1 %tobool17.not.3, label %for.inc32.2.for.inc32.3_crit_edge, label %if.end19.3

for.inc32.2.for.inc32.3_crit_edge:                ; preds = %for.inc32.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc32.3

if.end19.3:                                       ; preds = %for.inc32.2
  call void @__sanitizer_cov_trace_pc() #18
  %iftype_data.3 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %iftype_data.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iftype_data.3, align 4
  tail call void @kfree(ptr noundef %56) #16
  %57 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx16.3, align 4
  %n_iftype_data.3 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %n_iftype_data.3 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %n_iftype_data.3, align 4
  %60 = load ptr, ptr %arrayidx16.3, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  tail call void @kfree(ptr noundef %62) #16
  %63 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx16.3, align 4
  %n_channels.3 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %n_channels.3 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %n_channels.3, align 4
  %66 = load ptr, ptr %arrayidx16.3, align 4
  tail call void @kfree(ptr noundef %66) #16
  %67 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %arrayidx16.3, align 4
  br label %for.inc32.3

for.inc32.3:                                      ; preds = %if.end19.3, %for.inc32.2.for.inc32.3_crit_edge
  %arrayidx16.4 = getelementptr i8, ptr %1, i32 -1088
  %68 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx16.4, align 4
  %tobool17.not.4 = icmp eq ptr %69, null
  br i1 %tobool17.not.4, label %for.inc32.3.for.inc32.4_crit_edge, label %if.end19.4

for.inc32.3.for.inc32.4_crit_edge:                ; preds = %for.inc32.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc32.4

if.end19.4:                                       ; preds = %for.inc32.3
  call void @__sanitizer_cov_trace_pc() #18
  %iftype_data.4 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %iftype_data.4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iftype_data.4, align 4
  tail call void @kfree(ptr noundef %71) #16
  %72 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx16.4, align 4
  %n_iftype_data.4 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %73, i32 0, i32 9
  %74 = ptrtoint ptr %n_iftype_data.4 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %n_iftype_data.4, align 4
  %75 = load ptr, ptr %arrayidx16.4, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  tail call void @kfree(ptr noundef %77) #16
  %78 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx16.4, align 4
  %n_channels.4 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %n_channels.4 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %n_channels.4, align 4
  %81 = load ptr, ptr %arrayidx16.4, align 4
  tail call void @kfree(ptr noundef %81) #16
  %82 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %arrayidx16.4, align 4
  br label %for.inc32.4

for.inc32.4:                                      ; preds = %if.end19.4, %for.inc32.3.for.inc32.4_crit_edge
  %arrayidx16.5 = getelementptr i8, ptr %1, i32 -1084
  %83 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx16.5, align 4
  %tobool17.not.5 = icmp eq ptr %84, null
  br i1 %tobool17.not.5, label %for.inc32.4.for.inc32.5_crit_edge, label %if.end19.5

for.inc32.4.for.inc32.5_crit_edge:                ; preds = %for.inc32.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc32.5

if.end19.5:                                       ; preds = %for.inc32.4
  call void @__sanitizer_cov_trace_pc() #18
  %iftype_data.5 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %84, i32 0, i32 10
  %85 = ptrtoint ptr %iftype_data.5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %iftype_data.5, align 4
  tail call void @kfree(ptr noundef %86) #16
  %87 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx16.5, align 4
  %n_iftype_data.5 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %n_iftype_data.5 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %n_iftype_data.5, align 4
  %90 = load ptr, ptr %arrayidx16.5, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  tail call void @kfree(ptr noundef %92) #16
  %93 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx16.5, align 4
  %n_channels.5 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %n_channels.5 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %n_channels.5, align 4
  %96 = load ptr, ptr %arrayidx16.5, align 4
  tail call void @kfree(ptr noundef %96) #16
  %97 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %arrayidx16.5, align 4
  br label %for.inc32.5

for.inc32.5:                                      ; preds = %if.end19.5, %for.inc32.4.for.inc32.5_crit_edge
  %pdev = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 10
  %98 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %99) #16
  %if_comb.i = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 4, i32 18
  %100 = ptrtoint ptr %if_comb.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %if_comb.i, align 4
  %tobool.not.i78 = icmp eq ptr %101, null
  br i1 %tobool.not.i78, label %for.inc32.5.qtnf_mac_iface_comb_free.exit_crit_edge, label %for.cond.preheader.i

for.inc32.5.qtnf_mac_iface_comb_free.exit_crit_edge: ; preds = %for.inc32.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %qtnf_mac_iface_comb_free.exit

for.cond.preheader.i:                             ; preds = %for.inc32.5
  %n_if_comb.i = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 4, i32 19
  %102 = ptrtoint ptr %n_if_comb.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %n_if_comb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp16.not.i = icmp eq i32 %103, 0
  br i1 %cmp16.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %104 = ptrtoint ptr %if_comb.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %if_comb.i, align 4
  %arrayidx.i = getelementptr %struct.ieee80211_iface_combination, ptr %105, i32 %i.017.i
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %107) #16
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.017.i, 1
  %109 = ptrtoint ptr %n_if_comb.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %n_if_comb.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %110
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %111 = ptrtoint ptr %if_comb.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %if_comb.i, align 4
  tail call void @kfree(ptr noundef %112) #16
  %113 = ptrtoint ptr %if_comb.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %if_comb.i, align 4
  br label %qtnf_mac_iface_comb_free.exit

qtnf_mac_iface_comb_free.exit:                    ; preds = %for.end.i, %for.inc32.5.qtnf_mac_iface_comb_free.exit_crit_edge
  %extended_capabilities_len.i = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 4, i32 22
  %114 = ptrtoint ptr %extended_capabilities_len.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %extended_capabilities_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i79 = icmp eq i8 %115, 0
  br i1 %tobool.not.i79, label %qtnf_mac_iface_comb_free.exit.qtnf_mac_ext_caps_free.exit_crit_edge, label %if.then.i

qtnf_mac_iface_comb_free.exit.qtnf_mac_ext_caps_free.exit_crit_edge: ; preds = %qtnf_mac_iface_comb_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %qtnf_mac_ext_caps_free.exit

if.then.i:                                        ; preds = %qtnf_mac_iface_comb_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  %extended_capabilities.i = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 4, i32 20
  %116 = ptrtoint ptr %extended_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %extended_capabilities.i, align 4
  tail call void @kfree(ptr noundef %117) #16
  %118 = ptrtoint ptr %extended_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %extended_capabilities.i, align 4
  %extended_capabilities_mask.i = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 4, i32 21
  %119 = ptrtoint ptr %extended_capabilities_mask.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %extended_capabilities_mask.i, align 4
  tail call void @kfree(ptr noundef %120) #16
  %121 = ptrtoint ptr %extended_capabilities_mask.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %extended_capabilities_mask.i, align 4
  %122 = ptrtoint ptr %extended_capabilities_len.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %extended_capabilities_len.i, align 4
  br label %qtnf_mac_ext_caps_free.exit

qtnf_mac_ext_caps_free.exit:                      ; preds = %if.then.i, %qtnf_mac_iface_comb_free.exit.qtnf_mac_ext_caps_free.exit_crit_edge
  %wowlan = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 4, i32 24
  %123 = ptrtoint ptr %wowlan to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wowlan, align 4
  tail call void @kfree(ptr noundef %124) #16
  %rd = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 9
  %125 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rd, align 4
  tail call void @kfree(ptr noundef %126) #16
  %127 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %rd, align 4
  tail call void @wiphy_free(ptr noundef %add.ptr.i) #16
  %128 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %qtnf_mac_ext_caps_free.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_cmd_send_deinit_fw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_trans_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qtnf_classify_skb(ptr nocapture noundef readonly %bus, ptr nocapture noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !256

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -85, i8 %5)
  %cmp.i = icmp eq i8 %5, -85
  br i1 %cmp.i, label %qtnf_is_frame_meta_magic_valid.exit, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

qtnf_is_frame_meta_magic_valid.exit:              ; preds = %if.end
  %magic_e.i = getelementptr i8, ptr %3, i32 -1
  %6 = ptrtoint ptr %magic_e.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %magic_e.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -70, i8 %7)
  %cmp3.i.not = icmp eq i8 %7, -70
  br i1 %cmp3.i.not, label %if.end19, label %qtnf_is_frame_meta_magic_valid.exit.if.then12_crit_edge, !prof !256

qtnf_is_frame_meta_magic_valid.exit.if.then12_crit_edge: ; preds = %qtnf_is_frame_meta_magic_valid.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

if.then12:                                        ; preds = %qtnf_is_frame_meta_magic_valid.exit.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @qtnf_classify_skb._rs, ptr noundef nonnull @__func__.qtnf_classify_skb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %do.end

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %9 to i32
  %magic_e = getelementptr i8, ptr %3, i32 -1
  %10 = ptrtoint ptr %magic_e to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %magic_e, align 1
  %conv16 = zext i8 %11 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.qtnf_classify_skb, i32 noundef %conv, i32 noundef %conv16) #19
  br label %cleanup

if.end19:                                         ; preds = %qtnf_is_frame_meta_magic_valid.exit
  %macid = getelementptr i8, ptr %3, i32 -2
  %12 = ptrtoint ptr %macid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %macid, align 1
  %conv20 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp21 = icmp ugt i8 %13, 2
  br i1 %cmp21, label %if.then29, label %if.end41, !prof !255

if.then29:                                        ; preds = %if.end19
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @qtnf_classify_skb._rs.34, ptr noundef nonnull @__func__.qtnf_classify_skb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.cleanup_crit_edge, label %do.end35

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end35:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %macid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %macid, align 1
  %conv38 = zext i8 %15 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.qtnf_classify_skb, i32 noundef %conv38) #19
  br label %cleanup

if.end41:                                         ; preds = %if.end19
  %ifidx = getelementptr i8, ptr %3, i32 -3
  %16 = ptrtoint ptr %ifidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ifidx, align 1
  %conv42 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %17)
  %cmp43 = icmp ugt i8 %17, 7
  br i1 %cmp43, label %if.then51, label %if.end63, !prof !255

if.then51:                                        ; preds = %if.end41
  %call52 = tail call i32 @___ratelimit(ptr noundef nonnull @qtnf_classify_skb._rs.38, ptr noundef nonnull @__func__.qtnf_classify_skb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then51.cleanup_crit_edge, label %do.end57

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %ifidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ifidx, align 1
  %conv60 = zext i8 %19 to i32
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.qtnf_classify_skb, i32 noundef %conv60) #19
  br label %cleanup

if.end63:                                         ; preds = %if.end41
  %arrayidx = getelementptr %struct.qtnf_bus, ptr %bus, i32 0, i32 5, i32 %conv20
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool66.not = icmp eq ptr %21, null
  br i1 %tobool66.not, label %if.then75, label %if.end87, !prof !255

if.then75:                                        ; preds = %if.end63
  %call76 = tail call i32 @___ratelimit(ptr noundef nonnull @qtnf_classify_skb._rs.42, ptr noundef nonnull @__func__.qtnf_classify_skb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then75.cleanup_crit_edge, label %do.end81

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end81:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %macid to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %macid, align 1
  %conv84 = zext i8 %23 to i32
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.qtnf_classify_skb, i32 noundef %conv84) #19
  br label %cleanup

if.end87:                                         ; preds = %if.end63
  %iftype = getelementptr %struct.qtnf_wmac, ptr %21, i32 0, i32 5, i32 %conv42, i32 0, i32 1
  %24 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp91 = icmp eq i32 %25, 0
  br i1 %cmp91, label %if.then99, label %if.end111, !prof !255

if.then99:                                        ; preds = %if.end87
  %call100 = tail call i32 @___ratelimit(ptr noundef nonnull @qtnf_classify_skb._rs.46, ptr noundef nonnull @__func__.qtnf_classify_skb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then99.cleanup_crit_edge, label %do.end105

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end105:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %ifidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ifidx, align 1
  %conv108 = zext i8 %27 to i32
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.qtnf_classify_skb, i32 noundef %conv108) #19
  br label %cleanup

if.end111:                                        ; preds = %if.end87
  %netdev = getelementptr %struct.qtnf_wmac, ptr %21, i32 0, i32 5, i32 %conv42, i32 7
  %28 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev, align 4
  %tobool112.not = icmp eq ptr %29, null
  br i1 %tobool112.not, label %if.then121, label %if.end135, !prof !255

if.then121:                                       ; preds = %if.end111
  %call122 = tail call i32 @___ratelimit(ptr noundef nonnull @qtnf_classify_skb._rs.50, ptr noundef nonnull @__func__.qtnf_classify_skb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then121.cleanup_crit_edge, label %do.end127

if.then121.cleanup_crit_edge:                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end127:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %macid to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %macid, align 1
  %conv130 = zext i8 %31 to i32
  %32 = ptrtoint ptr %ifidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ifidx, align 1
  %conv132 = zext i8 %33 to i32
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.qtnf_classify_skb, i32 noundef %conv130, i32 noundef %conv132) #19
  br label %cleanup

if.end135:                                        ; preds = %if.end111
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i.i, label %if.end21.critedge.i.i, label %do.end.i.i, !prof !256

do.end.i.i:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.123, i32 noundef 2789, i32 noundef 9, ptr noundef null) #16
  br label %__skb_trim.exit

if.end21.critedge.i.i:                            ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #18
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %sub = add i32 %37, -4
  store i32 %sub, ptr %len, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 %sub
  %40 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i.i.i, ptr %tail.i, align 8
  br label %__skb_trim.exit

__skb_trim.exit:                                  ; preds = %if.end21.critedge.i.i, %do.end.i.i
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %41 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %bf.load.i = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.set.i = or i32 %bf.load.i, 1048576
  store i32 %bf.set.i, ptr %offload_fwd_mark.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %__skb_trim.exit, %do.end127, %if.then121.cleanup_crit_edge, %do.end105, %if.then99.cleanup_crit_edge, %do.end81, %if.then75.cleanup_crit_edge, %do.end57, %if.then51.cleanup_crit_edge, %do.end35, %if.then29.cleanup_crit_edge, %do.end, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %do.end ], [ null, %if.then12.cleanup_crit_edge ], [ null, %do.end35 ], [ null, %if.then29.cleanup_crit_edge ], [ null, %do.end57 ], [ null, %if.then51.cleanup_crit_edge ], [ null, %do.end81 ], [ null, %if.then75.cleanup_crit_edge ], [ null, %do.end105 ], [ null, %if.then99.cleanup_crit_edge ], [ null, %do.end127 ], [ null, %if.then121.cleanup_crit_edge ], [ %29, %__skb_trim.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_wake_all_queues(ptr nocapture noundef readonly %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false, !prof !255

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mac1 = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.rhs, !prof !255

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.rhs:                                          ; preds = %lor.lhs.false
  %bus4 = getelementptr inbounds %struct.qtnf_wmac, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bus4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.rhs.cleanup_crit_edge, label %for.cond.preheader, !prof !255

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.rhs
  %mac_bitmap = getelementptr inbounds %struct.qtnf_bus, ptr %5, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %mac_bitmap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_bitmap, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %for.cond.preheader.for.inc27_crit_edge, label %if.end13

for.cond.preheader.for.inc27_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc27

if.end13:                                         ; preds = %for.cond.preheader
  %arrayidx = getelementptr %struct.qtnf_bus, ptr %5, i32 0, i32 5, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  br label %for.body18

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %if.end13
  %i.049 = phi i32 [ 0, %if.end13 ], [ %inc, %for.inc.for.body18_crit_edge ]
  %netdev = getelementptr %struct.qtnf_wmac, ptr %10, i32 0, i32 5, i32 %i.049, i32 7
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  %tobool20.not = icmp eq ptr %12, null
  br i1 %tobool20.not, label %for.body18.for.inc_crit_edge, label %land.lhs.true

for.body18.for.inc_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body18
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %land.lhs.true.for.inc_crit_edge, label %if.then24

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then24:                                        ; preds = %land.lhs.true
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 104
  %17 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.not.i = icmp eq i32 %18, 0
  br i1 %cmp4.not.i, label %if.then24.for.inc_crit_edge, label %if.then24.for.body.i_crit_edge

if.then24.for.body.i_crit_edge:                   ; preds = %if.then24
  br label %for.body.i

if.then24.for.inc_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then24.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then24.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %20, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #16
  %inc.i = add nuw i32 %i.05.i, 1
  %21 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %22
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.inc_crit_edge

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc:                                          ; preds = %for.body.i.for.inc_crit_edge, %if.then24.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body18.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.for.inc27_crit_edge, label %for.inc.for.body18_crit_edge

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body18

for.inc.for.inc27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc.for.inc27_crit_edge, %for.cond.preheader.for.inc27_crit_edge
  %23 = ptrtoint ptr %mac_bitmap to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mac_bitmap, align 1
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool11.not.1 = icmp eq i8 %25, 0
  br i1 %tobool11.not.1, label %for.inc27.for.inc27.1_crit_edge, label %if.end13.1

for.inc27.for.inc27.1_crit_edge:                  ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc27.1

if.end13.1:                                       ; preds = %for.inc27
  %arrayidx.1 = getelementptr %struct.qtnf_bus, ptr %5, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.1, align 4
  br label %for.body18.1

for.body18.1:                                     ; preds = %for.inc.1.for.body18.1_crit_edge, %if.end13.1
  %i.049.1 = phi i32 [ 0, %if.end13.1 ], [ %inc.1, %for.inc.1.for.body18.1_crit_edge ]
  %netdev.1 = getelementptr %struct.qtnf_wmac, ptr %27, i32 0, i32 5, i32 %i.049.1, i32 7
  %28 = ptrtoint ptr %netdev.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev.1, align 4
  %tobool20.not.1 = icmp eq ptr %29, null
  br i1 %tobool20.not.1, label %for.body18.1.for.inc.1_crit_edge, label %land.lhs.true.1

for.body18.1.for.inc.1_crit_edge:                 ; preds = %for.body18.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body18.1
  %_tx.i.i.1 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i.1, align 128
  %state.i.i.1 = getelementptr inbounds %struct.netdev_queue, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %state.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i.i.1, align 4
  %and1.i.i.i.1 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.1)
  %tobool.i.i.not.1 = icmp eq i32 %and1.i.i.i.1, 0
  br i1 %tobool.i.i.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then24.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then24.1:                                      ; preds = %land.lhs.true.1
  %num_tx_queues.i.1 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 104
  %34 = ptrtoint ptr %num_tx_queues.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_tx_queues.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp4.not.i.1 = icmp eq i32 %35, 0
  br i1 %cmp4.not.i.1, label %if.then24.1.for.inc.1_crit_edge, label %if.then24.1.for.body.i.1_crit_edge

if.then24.1.for.body.i.1_crit_edge:               ; preds = %if.then24.1
  br label %for.body.i.1

if.then24.1.for.inc.1_crit_edge:                  ; preds = %if.then24.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %if.then24.1.for.body.i.1_crit_edge
  %i.05.i.1 = phi i32 [ %inc.i.1, %for.body.i.1.for.body.i.1_crit_edge ], [ 0, %if.then24.1.for.body.i.1_crit_edge ]
  %36 = ptrtoint ptr %_tx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i.1, align 128
  %arrayidx.i.i.1 = getelementptr %struct.netdev_queue, ptr %37, i32 %i.05.i.1
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.1) #16
  %inc.i.1 = add nuw i32 %i.05.i.1, 1
  %38 = ptrtoint ptr %num_tx_queues.i.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_tx_queues.i.1, align 4
  %cmp.i.1 = icmp ult i32 %inc.i.1, %39
  br i1 %cmp.i.1, label %for.body.i.1.for.body.i.1_crit_edge, label %for.body.i.1.for.inc.1_crit_edge

for.body.i.1.for.inc.1_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.1

for.inc.1:                                        ; preds = %for.body.i.1.for.inc.1_crit_edge, %if.then24.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.body18.1.for.inc.1_crit_edge
  %inc.1 = add nuw nsw i32 %i.049.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 8
  br i1 %exitcond.1.not, label %for.inc.1.for.inc27.1_crit_edge, label %for.inc.1.for.body18.1_crit_edge

for.inc.1.for.body18.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body18.1

for.inc.1.for.inc27.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc27.1

for.inc27.1:                                      ; preds = %for.inc.1.for.inc27.1_crit_edge, %for.inc27.for.inc27.1_crit_edge
  %40 = ptrtoint ptr %mac_bitmap to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mac_bitmap, align 1
  %42 = and i8 %41, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool11.not.2 = icmp eq i8 %42, 0
  br i1 %tobool11.not.2, label %for.inc27.1.cleanup_crit_edge, label %if.end13.2

for.inc27.1.cleanup_crit_edge:                    ; preds = %for.inc27.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13.2:                                       ; preds = %for.inc27.1
  %arrayidx.2 = getelementptr %struct.qtnf_bus, ptr %5, i32 0, i32 5, i32 2
  %43 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.2, align 4
  br label %for.body18.2

for.body18.2:                                     ; preds = %for.inc.2.for.body18.2_crit_edge, %if.end13.2
  %i.049.2 = phi i32 [ 0, %if.end13.2 ], [ %inc.2, %for.inc.2.for.body18.2_crit_edge ]
  %netdev.2 = getelementptr %struct.qtnf_wmac, ptr %44, i32 0, i32 5, i32 %i.049.2, i32 7
  %45 = ptrtoint ptr %netdev.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev.2, align 4
  %tobool20.not.2 = icmp eq ptr %46, null
  br i1 %tobool20.not.2, label %for.body18.2.for.inc.2_crit_edge, label %land.lhs.true.2

for.body18.2.for.inc.2_crit_edge:                 ; preds = %for.body18.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body18.2
  %_tx.i.i.2 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 103
  %47 = ptrtoint ptr %_tx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_tx.i.i.2, align 128
  %state.i.i.2 = getelementptr inbounds %struct.netdev_queue, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %state.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %state.i.i.2, align 4
  %and1.i.i.i.2 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.2)
  %tobool.i.i.not.2 = icmp eq i32 %and1.i.i.i.2, 0
  br i1 %tobool.i.i.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.then24.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then24.2:                                      ; preds = %land.lhs.true.2
  %num_tx_queues.i.2 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 104
  %51 = ptrtoint ptr %num_tx_queues.i.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_tx_queues.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp4.not.i.2 = icmp eq i32 %52, 0
  br i1 %cmp4.not.i.2, label %if.then24.2.for.inc.2_crit_edge, label %if.then24.2.for.body.i.2_crit_edge

if.then24.2.for.body.i.2_crit_edge:               ; preds = %if.then24.2
  br label %for.body.i.2

if.then24.2.for.inc.2_crit_edge:                  ; preds = %if.then24.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

for.body.i.2:                                     ; preds = %for.body.i.2.for.body.i.2_crit_edge, %if.then24.2.for.body.i.2_crit_edge
  %i.05.i.2 = phi i32 [ %inc.i.2, %for.body.i.2.for.body.i.2_crit_edge ], [ 0, %if.then24.2.for.body.i.2_crit_edge ]
  %53 = ptrtoint ptr %_tx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_tx.i.i.2, align 128
  %arrayidx.i.i.2 = getelementptr %struct.netdev_queue, ptr %54, i32 %i.05.i.2
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.2) #16
  %inc.i.2 = add nuw i32 %i.05.i.2, 1
  %55 = ptrtoint ptr %num_tx_queues.i.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_tx_queues.i.2, align 4
  %cmp.i.2 = icmp ult i32 %inc.i.2, %56
  br i1 %cmp.i.2, label %for.body.i.2.for.body.i.2_crit_edge, label %for.body.i.2.for.inc.2_crit_edge

for.body.i.2.for.inc.2_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

for.body.i.2.for.body.i.2_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.2

for.inc.2:                                        ; preds = %for.body.i.2.for.inc.2_crit_edge, %if.then24.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.body18.2.for.inc.2_crit_edge
  %inc.2 = add nuw nsw i32 %i.049.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 8
  br i1 %exitcond.2.not, label %for.inc.2.cleanup_crit_edge, label %for.inc.2.for.body18.2_crit_edge

for.inc.2.for.body18.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body18.2

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2.cleanup_crit_edge, %for.inc27.1.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qtnf_get_debugfs_dir() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @qtnf_debugfs_dir, align 4
  ret ptr %0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_core_exit() #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = load ptr, ptr @qtnf_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_core_register() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.102, ptr noundef null) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i, ptr null, ptr %call
  store ptr %spec.store.select, ptr @qtnf_debugfs_dir, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_netdev_updown(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_virtual_intf_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qtnf_packet_send_hi_pri(ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 2304
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 4
  %high_pri_tx_queue = getelementptr inbounds %struct.qtnf_vif, ptr %4, i32 0, i32 11
  tail call void @skb_queue_tail(ptr noundef %high_pri_tx_queue, ptr noundef %skb) #16
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  %hprio_workqueue = getelementptr inbounds %struct.qtnf_bus, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %hprio_workqueue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hprio_workqueue, align 4
  %high_pri_tx_work = getelementptr inbounds %struct.qtnf_vif, ptr %4, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %high_pri_tx_work) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_sw_netstats_tx_add(ptr nocapture noundef readonly %dev, i32 noundef %len) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 64
  %3 = tail call i32 @llvm.read_register.i32(metadata !243) #16
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %entry.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

entry.u64_stats_update_begin.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %entry
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !260
  %12 = tail call i32 @llvm.read_register.i32(metadata !243) #16
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, ptrtoint (ptr @lockdep_recursion to i32)
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !261
  %21 = tail call i32 @llvm.read_register.i32(metadata !243) #16
  %and.i.i.i7.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %25 = tail call i32 @llvm.read_register.i32(metadata !243) #16
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %29 = tail call i32 @llvm.read_register.i32(metadata !243) #16
  %and.i.i.i9.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %32, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !262
  %33 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %36, ptrtoint (ptr @hardirqs_enabled to i32)
  %37 = inttoptr i32 %add47.i.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !263
  %40 = tail call i32 @llvm.read_register.i32(metadata !243) #16
  %and.i.i.i12.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %43, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool54.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !256

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %entry.u64_stats_update_begin.exit_crit_edge
  %44 = ptrtoint ptr %2 to i32
  %add = add i32 %8, %44
  %45 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %47, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !264
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %45, i32 0, i32 4, i32 0, i32 1
  %48 = tail call ptr @llvm.returnaddress(i32 0) #16
  %49 = ptrtoint ptr %48 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %49) #16
  %conv = zext i32 %len to i64
  %tx_bytes = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %45, i32 0, i32 3
  %50 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %tx_bytes, align 8
  %add2 = add i64 %51, %conv
  store i64 %add2, ptr %tx_bytes, align 8
  %tx_packets = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %45, i32 0, i32 2
  %52 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tx_packets, align 16
  %add4 = add i64 %53, 1
  store i64 %add4, ptr %tx_packets, align 16
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %49) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !265
  %54 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %55, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_change_intf_type(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_get_drvinfo(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qtnf_utils_is_bit_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_add_intf(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_get_mac_info(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_wiphy_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_netdev_changeupper(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_del_intf(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_wiphy_allocate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_mac_scan_timeout(ptr noundef %work) #1 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -9444
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef %conv) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #16
  %2 = getelementptr inbounds i8, ptr %info.i, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -65025, ptr %2, align 8
  %4 = call ptr @memset(ptr %info.i, i32 0, i32 14)
  %mac_lock.i = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mac_lock.i, i32 noundef 0) #16
  %scan_req.i = getelementptr i8, ptr %work, i32 -96
  %5 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scan_req.i, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %entry.qtnf_mac_scan_finish.exit_crit_edge, label %if.then.i

entry.qtnf_mac_scan_finish.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %qtnf_mac_scan_finish.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @cfg80211_scan_done(ptr noundef nonnull %6, ptr noundef nonnull %info.i) #16
  %7 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %scan_req.i, align 4
  br label %qtnf_mac_scan_finish.exit

qtnf_mac_scan_finish.exit:                        ; preds = %if.then.i, %entry.qtnf_mac_scan_finish.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mac_lock.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_sta_list_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_vif_send_data_high_pri(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1036
  %netdev = getelementptr i8, ptr %work, i32 -52
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %iftype = getelementptr i8, ptr %work, i32 -1032
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %high_pri_tx_queue = getelementptr i8, ptr %work, i32 44
  %call9 = tail call ptr @skb_dequeue(ptr noundef %high_pri_tx_queue) #16
  %tobool1.not10 = icmp eq ptr %call9, null
  br i1 %tobool1.not10, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call11 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call9, %while.cond.preheader.while.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %call2 = tail call i32 @qtnf_cmd_send_frame(ptr noundef %add.ptr, i32 noundef 0, i16 noundef zeroext 8, i16 noundef zeroext 0, ptr noundef %5, i32 noundef %7) #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call11, i32 noundef 1) #16
  %call = tail call ptr @skb_dequeue(ptr noundef %high_pri_tx_queue) #16
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_frame(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_vif_reset_handler(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -992
  tail call void @rtnl_lock() #16
  %iftype = getelementptr i8, ptr %work, i32 -988
  %0 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void @netif_tx_stop_all_queues(ptr noundef %3) #16
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netif_carrier_off(ptr noundef %5) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @qtnf_cfg80211_vif_reset(ptr noundef %add.ptr) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_cfg80211_vif_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_band_info_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_band_init_rates(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_walk_all_lower_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_check_br_ports(ptr noundef %dev, ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cmp.not = icmp eq ptr %1, %dev
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @netdev_port_same_parent_id(ptr noundef %dev, ptr noundef %1) #16
  br i1 %call, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -524, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netdev_port_same_parent_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_del_virtual_intf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_sta_list_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !27, !28, !29, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !69, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !117, !119, !120, !122, !123, !125, !126, !128, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !200, !201, !202, !204, !205, !206, !207, !209, !210, !212, !213, !214, !215, !217, !218, !220, !221, !222, !223, !225, !226, !228, !229, !231, !232, !233, !234, !236, !237, !238, !239, !240, !241}
!llvm.named.register.sp = !{!243}
!llvm.module.flags = !{!244, !245, !246, !247, !248, !249, !250, !251}
!llvm.ident = !{!252}

!0 = !{ptr @__param_slave_radar, !1, !"__param_slave_radar", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_slave_radartype463, !1, !"__UNIQUE_ID_slave_radartype463", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_slave_radar464, !4, !"__UNIQUE_ID_slave_radar464", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 22, i32 1}
!5 = !{ptr @__param_dfs_offload, !6, !"__param_dfs_offload", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 25, i32 1}
!7 = !{ptr @__UNIQUE_ID_dfs_offloadtype465, !6, !"__UNIQUE_ID_dfs_offloadtype465", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_dfs_offload466, !9, !"__UNIQUE_ID_dfs_offload466", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 26, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 45, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @qtnf_core_get_mac._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @qtnf_core_get_mac._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 53, i32 3}
!18 = !{ptr @qtnf_core_get_mac._entry.3, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @qtnf_core_get_mac._entry_ptr.5, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @qtnf_netdev_ops, !21, !"qtnf_netdev_ops", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 212, i32 29}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 724, i32 19}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 726, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @qtnf_core_attach._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @qtnf_core_attach._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 731, i32 41}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 733, i32 3}
!33 = !{ptr @qtnf_core_attach._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @qtnf_core_attach._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @qtnf_core_attach.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 738, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 742, i32 3}
!40 = !{ptr @qtnf_core_attach._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @qtnf_core_attach._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 748, i32 3}
!44 = !{ptr @qtnf_core_attach._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @qtnf_core_attach._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 758, i32 3}
!48 = !{ptr @qtnf_core_attach._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @qtnf_core_attach._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 767, i32 3}
!52 = !{ptr @qtnf_core_attach._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @qtnf_core_attach._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 777, i32 4}
!56 = !{ptr @qtnf_core_attach._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @qtnf_core_attach._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 785, i32 3}
!60 = !{ptr @qtnf_core_attach._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qtnf_core_attach._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @__ksymtab_qtnf_core_attach, !63, !"__ksymtab_qtnf_core_attach", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 796, i32 1}
!64 = !{ptr @__ksymtab_qtnf_core_detach, !65, !"__ksymtab_qtnf_core_detach", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 825, i32 1}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 847, i32 3}
!68 = !{ptr @qtnf_classify_skb._rs, !67, !"_rs", i1 false, i1 false}
!69 = !{ptr @__func__.qtnf_classify_skb, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @qtnf_classify_skb._entry, !67, !"_entry", i1 false, i1 false}
!72 = !{ptr @qtnf_classify_skb._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @qtnf_classify_skb._rs.34, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 853, i32 3}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @qtnf_classify_skb._entry.35, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @qtnf_classify_skb._entry_ptr.37, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @qtnf_classify_skb._rs.38, !79, !"_rs", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 858, i32 3}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @qtnf_classify_skb._entry.39, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @qtnf_classify_skb._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @qtnf_classify_skb._rs.42, !84, !"_rs", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 865, i32 3}
!85 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @qtnf_classify_skb._entry.43, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @qtnf_classify_skb._entry_ptr.45, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @qtnf_classify_skb._rs.46, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 872, i32 3}
!90 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @qtnf_classify_skb._entry.47, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @qtnf_classify_skb._entry_ptr.49, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @qtnf_classify_skb._rs.50, !94, !"_rs", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 879, i32 3}
!95 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @qtnf_classify_skb._entry.51, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @qtnf_classify_skb._entry_ptr.53, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @__ksymtab_qtnf_classify_skb, !99, !"__ksymtab_qtnf_classify_skb", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 891, i32 1}
!100 = !{ptr @__ksymtab_qtnf_wake_all_queues, !101, !"__ksymtab_qtnf_wake_all_queues", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 918, i32 1}
!102 = !{ptr @__ksymtab_qtnf_get_debugfs_dir, !103, !"__ksymtab_qtnf_get_debugfs_dir", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 924, i32 1}
!104 = !{ptr @__initcall__kmod_qtnfmac__471_941_qtnf_core_register6, !105, !"__initcall__kmod_qtnfmac__471_941_qtnf_core_register6", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 941, i32 1}
!106 = !{ptr @__exitcall_qtnf_core_exit, !107, !"__exitcall_qtnf_core_exit", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 942, i32 1}
!108 = !{ptr @__UNIQUE_ID_author472, !109, !"__UNIQUE_ID_author472", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 944, i32 1}
!110 = !{ptr @__UNIQUE_ID_description473, !111, !"__UNIQUE_ID_description473", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 945, i32 1}
!112 = !{ptr @__UNIQUE_ID_file474, !113, !"__UNIQUE_ID_file474", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 946, i32 1}
!114 = !{ptr @__UNIQUE_ID_license475, !113, !"__UNIQUE_ID_license475", i1 false, i1 false}
!115 = !{ptr @dfs_offload, !116, !"dfs_offload", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 24, i32 13}
!117 = !{ptr @qtnf_debugfs_dir, !118, !"qtnf_debugfs_dir", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 28, i32 23}
!119 = !{ptr @__param_str_slave_radar, !1, !"__param_str_slave_radar", i1 false, i1 false}
!120 = !{ptr @slave_radar, !121, !"slave_radar", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 20, i32 13}
!122 = !{ptr @__param_str_dfs_offload, !6, !"__param_str_dfs_offload", i1 false, i1 false}
!123 = !{ptr @qtnf_netdev_alloc_pcpu_stats.__key, !124, !"__key", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 201, i32 16}
!125 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @qtnf_netdev_hard_start_xmit._rs, !127, !"_rs", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 98, i32 3}
!128 = !{ptr @__func__.qtnf_netdev_hard_start_xmit, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @qtnf_netdev_hard_start_xmit._entry, !127, !"_entry", i1 false, i1 false}
!131 = !{ptr @qtnf_netdev_hard_start_xmit._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @qtnf_netdev_hard_start_xmit._rs.56, !133, !"_rs", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 104, i32 3}
!134 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @qtnf_netdev_hard_start_xmit._entry.57, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @qtnf_netdev_hard_start_xmit._entry_ptr.59, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @qtnf_netdev_hard_start_xmit._rs.60, !138, !"_rs", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 111, i32 3}
!139 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @qtnf_netdev_hard_start_xmit._entry.61, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @qtnf_netdev_hard_start_xmit._entry_ptr.63, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @qtnf_netdev_hard_start_xmit._rs.64, !143, !"_rs", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 117, i32 3}
!144 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @qtnf_netdev_hard_start_xmit._entry.65, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @qtnf_netdev_hard_start_xmit._entry_ptr.67, !143, !"_entry_ptr", i1 false, i1 false}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!149 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 150, i32 2}
!152 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @qtnf_netdev_tx_timeout._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @qtnf_netdev_tx_timeout._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 156, i32 3}
!157 = !{ptr @qtnf_netdev_tx_timeout._entry.71, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @qtnf_netdev_tx_timeout._entry_ptr.73, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 157, i32 3}
!161 = !{ptr @qtnf_netdev_tx_timeout._entry.74, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @qtnf_netdev_tx_timeout._entry_ptr.76, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!165 = !{ptr @qtnf_ethtool_ops, !166, !"qtnf_ethtool_ops", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 458, i32 33}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 565, i32 3}
!169 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @qtnf_core_mac_attach._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @qtnf_core_mac_attach._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 571, i32 3}
!174 = !{ptr @qtnf_core_mac_attach._entry.80, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @qtnf_core_mac_attach._entry_ptr.82, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 577, i32 3}
!178 = !{ptr @qtnf_core_mac_attach._entry.83, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @qtnf_core_mac_attach._entry_ptr.85, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 585, i32 3}
!182 = !{ptr @qtnf_core_mac_attach._entry.86, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @qtnf_core_mac_attach._entry_ptr.88, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 591, i32 3}
!186 = !{ptr @qtnf_core_mac_attach._entry.89, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @qtnf_core_mac_attach._entry_ptr.91, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 601, i32 3}
!190 = !{ptr @qtnf_core_mac_attach._entry.92, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @qtnf_core_mac_attach._entry_ptr.94, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 607, i32 3}
!194 = !{ptr @qtnf_core_mac_attach._entry.95, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @qtnf_core_mac_attach._entry_ptr.97, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 615, i32 39}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 620, i32 3}
!200 = !{ptr @qtnf_core_mac_attach._entry.99, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @qtnf_core_mac_attach._entry_ptr.101, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 630, i32 2}
!204 = !{ptr @.str.103, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @qtnf_core_mac_attach.__UNIQUE_ID_ddebug469, !203, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!206 = !{ptr @.str.104, !203, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @qtnf_core_mac_alloc.__key, !208, !"__key", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 437, i32 2}
!209 = !{ptr @.str.105, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @qtnf_core_mac_alloc.__key.106, !211, !"__key", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 438, i32 2}
!212 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @qtnf_core_mac_alloc.__key.108, !211, !"__key", i1 false, i1 false}
!214 = !{ptr @.str.109, !211, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @qtnf_core_mac_alloc.__key.110, !216, !"__key", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 448, i32 3}
!217 = !{ptr @.str.111, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 387, i32 2}
!220 = !{ptr @.str.113, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @qtnf_mac_scan_timeout._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @qtnf_mac_scan_timeout._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @skb_queue_head_init.__key, !224, !"__key", i1 false, i1 false}
!224 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!225 = !{ptr @.str.114, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @qtnf_mac_init_primary_intf.__key, !227, !"__key", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 356, i32 2}
!228 = !{ptr @.str.115, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 238, i32 3}
!231 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @qtnf_mac_init_single_band._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @qtnf_mac_init_single_band._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.118, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/quantenna/qtnfmac/core.c", i32 689, i32 3}
!236 = !{ptr @.str.119, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @qtnf_core_netdevice_event.__UNIQUE_ID_ddebug470, !235, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!238 = !{ptr @.str.120, !235, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.121, !235, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.122, !235, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.123, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!243 = !{!"sp"}
!244 = !{i32 1, !"wchar_size", i32 2}
!245 = !{i32 1, !"min_enum_size", i32 4}
!246 = !{i32 8, !"branch-target-enforcement", i32 0}
!247 = !{i32 8, !"sign-return-address", i32 0}
!248 = !{i32 8, !"sign-return-address-all", i32 0}
!249 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!250 = !{i32 7, !"uwtable", i32 1}
!251 = !{i32 7, !"frame-pointer", i32 2}
!252 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!253 = !{i8 0, i8 2}
!254 = !{i64 677408, i64 677425}
!255 = !{!"branch_weights", i32 1, i32 2000}
!256 = !{!"branch_weights", i32 2000, i32 1}
!257 = !{i64 2157939423, i64 2157939911, i64 2157939460, i64 2157939516, i64 2157939550, i64 2157939574, i64 2157939615, i64 2157939636, i64 2157939664, i64 2157939698}
!258 = !{i64 2148711218, i64 2148711223, i64 2148711236, i64 2148711280, i64 2148711314, i64 2148711335}
!259 = !{!"auto-init"}
!260 = !{i64 2149883871}
!261 = !{i64 2149888803}
!262 = !{i64 2149910515}
!263 = !{i64 2149915407}
!264 = !{i64 2149991864}
!265 = !{i64 2149992189}
