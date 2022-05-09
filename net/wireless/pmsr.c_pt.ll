; ModuleID = '/llk/IR_all_yes/net/wireless/pmsr.c_pt.bc'
source_filename = "../net/wireless/pmsr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cfg80211_pmsr_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_cfg80211_pmsr_complete\09\09\09\09"
module asm "\09.long\09__crc_cfg80211_pmsr_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_pmsr_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_pmsr_complete\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_pmsr_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cfg80211_pmsr_report\22, \22a\22\09"
module asm "\09.weak\09__crc_cfg80211_pmsr_report\09\09\09\09"
module asm "\09.long\09__crc_cfg80211_pmsr_report\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_pmsr_report:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_pmsr_report\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_pmsr_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.87 }
%struct.atomic_t = type { i32 }
%union.anon.87 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.105, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.anon.105 = type { i64, i64, i8 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.cfg80211_pmsr_request = type { i64, ptr, i32, i32, i32, [6 x i8], [6 x i8], %struct.list_head, [0 x %struct.cfg80211_pmsr_request_peer] }
%struct.cfg80211_pmsr_request_peer = type { [6 x i8], %struct.cfg80211_chan_def, i8, %struct.cfg80211_pmsr_ftm_request_peer }
%struct.cfg80211_pmsr_ftm_request_peer = type { i32, i16, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_pmsr_capabilities = type { i32, i8, %struct.anon.104 }
%struct.anon.104 = type { i32, i32, i8, i8, i8 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.106, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.106 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.107 }
%union.anon.107 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.108 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.109 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.47, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.52, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.52 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
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
%struct.cfg80211_pmsr_result = type { i64, i64, i32, [6 x i8], i8, i32, %union.anon.132 }
%union.anon.132 = type { %struct.cfg80211_pmsr_ftm_result }
%struct.cfg80211_pmsr_ftm_result = type { ptr, ptr, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, i32, %struct.rate_info, %struct.rate_info, i64, i64, i64, i64, i64, i64, i16 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }

@nl80211_pmsr_start.__msg = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Too many peers used\00", [44 x i8] zeroinitializer }, align 32
@nl80211_pmsr_start.__msg.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"device cannot randomize MAC address\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_cfg80211_pmsr_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_pmsr_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_pmsr_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_pmsr_complete to i32), ptr @__kstrtab_cfg80211_pmsr_complete, ptr @__kstrtabns_cfg80211_pmsr_complete }, section "___ksymtab_gpl+cfg80211_pmsr_complete", align 4
@cfg80211_pmsr_report._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.cfg80211_pmsr_report = private unnamed_addr constant [21 x i8] c"cfg80211_pmsr_report\00", align 1
@cfg80211_pmsr_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.cfg80211_pmsr_report, ptr @.str.3, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013peer measurement result: message didn't fit!\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/wireless/pmsr.c\00", [44 x i8] zeroinitializer }, align 32
@cfg80211_pmsr_report._entry_ptr = internal global ptr @cfg80211_pmsr_report._entry, section ".printk_index", align 4
@__kstrtab_cfg80211_pmsr_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_pmsr_report = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_pmsr_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_pmsr_report to i32), ptr @__kstrtab_cfg80211_pmsr_report, ptr @__kstrtabns_cfg80211_pmsr_report }, section "___ksymtab_gpl+cfg80211_pmsr_report", align 4
@pmsr_parse_peer.__msg = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"insufficient peer data\00", [41 x i8] zeroinitializer }, align 32
@pmsr_parse_peer.__msg.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"missing request type/data\00", [38 x i8] zeroinitializer }, align 32
@pmsr_parse_peer.__msg.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reporting AP TSF is not supported\00", [62 x i8] zeroinitializer }, align 32
@pmsr_parse_peer.__msg.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported measurement type\00", [35 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FTM: unsupported bandwidth\00", [37 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FTM: must specify preamble\00", [37 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FTM: invalid preamble\00", [42 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FTM: ASAP mode not supported\00", [35 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FTM: non-ASAP mode not supported\00", [63 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"FTM: max NUM_BURSTS_EXP must be set lower than the device limit\00", [32 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.12 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"FTM: FTMs per burst must be set lower than the device limit but non-zero\00", [55 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FTM: LCI request not supported\00", [33 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"FTM: civic location request not supported\00", [54 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"FTM: trigger based ranging is not supported\00", [52 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"FTM: trigger based ranging is not supported\00", [52 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"FTM: can't set both trigger based and non trigger based\00", [40 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"FTM: non EDCA based ranging must use HE preamble\00", [47 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FTM: LMR feedback set for EDCA based ranging\00", [51 x i8] zeroinitializer }, align 32
@pmsr_parse_ftm.__msg.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"FTM: BSS color set for EDCA based ranging\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/wireless/core.h\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_rdev_start_pmsr = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/wireless/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_rdev_start_pmsr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@trace_rdev_return_int.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cfg80211_pmsr_complete = external dso_local global %struct.tracepoint, align 4
@trace_cfg80211_pmsr_complete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cfg80211_pmsr_report = external dso_local global %struct.tracepoint, align 4
@trace_cfg80211_pmsr_report.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__tracepoint_rdev_abort_pmsr = external dso_local global %struct.tracepoint, align 4
@trace_rdev_abort_pmsr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rdev_return_void = external dso_local global %struct.tracepoint, align 4
@trace_rdev_return_void.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 287, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 302, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 588, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 203, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 228, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 238, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 250, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 23, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 43, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 50, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 65, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 72, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 84, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 103, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 116, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 124, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 132, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 141, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 148, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 155, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 165, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.101 = private constant [23 x i8] c"../net/wireless/pmsr.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 173, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [23 x i8] c"../net/wireless/core.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 147, i32 6 }
@___asan_gen_.110 = private unnamed_addr constant [24 x i8] c"../net/wireless/trace.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 2620, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 108, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__ksymtab_cfg80211_pmsr_complete, ptr @__ksymtab_cfg80211_pmsr_report, ptr @cfg80211_pmsr_report._entry, ptr @cfg80211_pmsr_report._entry_ptr, ptr @nl80211_pmsr_start.__msg, ptr @nl80211_pmsr_start.__msg.1, ptr @cfg80211_pmsr_report._rs, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @pmsr_parse_peer.__msg, ptr @pmsr_parse_peer.__msg.4, ptr @pmsr_parse_peer.__msg.5, ptr @pmsr_parse_peer.__msg.6, ptr @pmsr_parse_ftm.__msg, ptr @pmsr_parse_ftm.__msg.7, ptr @pmsr_parse_ftm.__msg.8, ptr @pmsr_parse_ftm.__msg.9, ptr @pmsr_parse_ftm.__msg.10, ptr @pmsr_parse_ftm.__msg.11, ptr @pmsr_parse_ftm.__msg.12, ptr @pmsr_parse_ftm.__msg.13, ptr @pmsr_parse_ftm.__msg.14, ptr @pmsr_parse_ftm.__msg.15, ptr @pmsr_parse_ftm.__msg.16, ptr @pmsr_parse_ftm.__msg.17, ptr @pmsr_parse_ftm.__msg.18, ptr @pmsr_parse_ftm.__msg.19, ptr @pmsr_parse_ftm.__msg.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl80211_pmsr_start.__msg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl80211_pmsr_start.__msg.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg80211_pmsr_report._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg80211_pmsr_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_peer.__msg to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_peer.__msg.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_peer.__msg.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_peer.__msg.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.12 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsr_parse_ftm.__msg.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nl80211_pmsr_start(ptr nocapture noundef readnone %skb, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %tb.i.i = alloca [14 x ptr], align 4
  %tb.i = alloca [5 x ptr], align 4
  %req.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 273
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %4 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ptr, align 4
  %arrayidx3 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %pmsr_capa = getelementptr inbounds %struct.cfg80211_registered_device, ptr %5, i32 0, i32 48, i32 78
  %8 = ptrtoint ptr %pmsr_capa to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmsr_capa, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %3, align 2
  %conv.i = zext i16 %11 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %call8 = tail call ptr @nla_find(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 5) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %add.ptr.i162 = getelementptr i8, ptr %call8, i32 4
  %12 = ptrtoint ptr %call8 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %13)
  %cmp.i225 = icmp ugt i16 %13, 7
  br i1 %cmp.i225, label %land.lhs.true.i.preheader, label %if.end11.if.end8.i.i_crit_edge

if.end11.if.end8.i.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

land.lhs.true.i.preheader:                        ; preds = %if.end11
  %conv.i163 = zext i16 %13 to i32
  %sub.i164 = add nsw i32 %conv.i163, -4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %count.0228 = phi i32 [ %inc, %for.inc.land.lhs.true.i_crit_edge ], [ 0, %land.lhs.true.i.preheader ]
  %peer.0227 = phi ptr [ %add.ptr.i168, %for.inc.land.lhs.true.i_crit_edge ], [ %add.ptr.i162, %land.lhs.true.i.preheader ]
  %rem.0226 = phi i32 [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ], [ %sub.i164, %land.lhs.true.i.preheader ]
  %14 = ptrtoint ptr %peer.0227 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %peer.0227, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %15)
  %cmp1.i = icmp ult i16 %15, 4
  %conv.i165 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0226, i32 %conv.i165)
  %cmp5.i.not = icmp ult i32 %rem.0226, %conv.i165
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.if.end8.i.i_crit_edge, label %for.body

land.lhs.true.i.if.end8.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

for.body:                                         ; preds = %land.lhs.true.i
  %inc = add i32 %count.0228, 1
  %16 = ptrtoint ptr %pmsr_capa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pmsr_capa, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %19)
  %cmp = icmp ugt i32 %inc, %19
  br i1 %cmp, label %do.body, label %for.inc

do.body:                                          ; preds = %for.body
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nl80211_pmsr_start.__msg) #8
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %do.body.cleanup_crit_edge, label %if.then20

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @nl80211_pmsr_start.__msg, ptr %21, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %peer.0227, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %policy, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %25 = ptrtoint ptr %peer.0227 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %peer.0227, align 2
  %conv.i166 = zext i16 %26 to i32
  %sub.i167 = add nuw nsw i32 %conv.i166, 3
  %and.i = and i32 %sub.i167, 131068
  %sub1.i = sub nsw i32 %rem.0226, %and.i
  %add.ptr.i168 = getelementptr i8, ptr %peer.0227, i32 %and.i
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.if.end8.i.i_crit_edge

for.inc.if.end8.i.i_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end8.i.i:                                      ; preds = %for.inc.if.end8.i.i_crit_edge, %land.lhs.true.i.if.end8.i.i_crit_edge, %if.end11.if.end8.i.i_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end11.if.end8.i.i_crit_edge ], [ %inc, %for.inc.if.end8.i.i_crit_edge ], [ %count.0228, %land.lhs.true.i.if.end8.i.i_crit_edge ]
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count.0.lcssa, i32 52) #8
  %28 = extractvalue { i32, i1 } %27, 1
  %29 = extractvalue { i32, i1 } %27, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %29, i32 48) #8
  %retval.0.i = select i1 %28, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #11
  %tobool26.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool26.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end28

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end8.i.i
  %30 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %attrs, align 4
  %arrayidx30 = getelementptr ptr, ptr %31, i32 272
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %33, null
  br i1 %tobool31.not, label %if.end28.if.end36_crit_edge, label %if.then32

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i, align 4
  %timeout = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %timeout, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end28.if.end36_crit_edge
  %arrayidx38 = getelementptr ptr, ptr %31, i32 6
  %37 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %38, null
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end36
  %39 = ptrtoint ptr %pmsr_capa to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pmsr_capa, align 4
  %randomize_mac_addr = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %randomize_mac_addr to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %randomize_mac_addr, align 4
  %42 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool43.not = icmp eq i8 %42, 0
  br i1 %tobool43.not, label %do.body45, label %if.end58

do.body45:                                        ; preds = %if.then40
  %extack47 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %43 = ptrtoint ptr %extack47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %extack47, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nl80211_pmsr_start.__msg.1) #8
  %tobool48.not = icmp eq ptr %44, null
  br i1 %tobool48.not, label %do.body45.out_err_crit_edge, label %if.then49

do.body45.out_err_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.then49:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @nl80211_pmsr_start.__msg.1, ptr %44, align 4
  %46 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %attrs, align 4
  %arrayidx52 = getelementptr ptr, ptr %47, i32 6
  %48 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx52, align 4
  %bad_attr53 = getelementptr inbounds %struct.netlink_ext_ack, ptr %44, i32 0, i32 1
  %50 = ptrtoint ptr %bad_attr53 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %bad_attr53, align 4
  %policy54 = getelementptr inbounds %struct.netlink_ext_ack, ptr %44, i32 0, i32 2
  %51 = ptrtoint ptr %policy54 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %policy54, align 4
  br label %out_err

if.end58:                                         ; preds = %if.then40
  %mac_addr = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 5
  %mac_addr_mask = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 6
  %call61 = tail call i32 @nl80211_parse_random_mac(ptr noundef %31, ptr noundef %mac_addr, ptr noundef %mac_addr_mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end58.if.end70_crit_edge, label %if.end58.out_err_crit_edge

if.end58.out_err_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end58.if.end70_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.else:                                          ; preds = %if.end36
  %mac_addr65 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 5
  %netdev.i = getelementptr inbounds %struct.wireless_dev, ptr %7, i32 0, i32 3
  %52 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev.i, align 4
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 86
  %54 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_addr.i, align 64
  br label %wdev_address.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %address.i = getelementptr inbounds %struct.wireless_dev, ptr %7, i32 0, i32 12
  br label %wdev_address.exit

wdev_address.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i169 = phi ptr [ %55, %if.then.i ], [ %address.i, %if.end.i ]
  %56 = call ptr @memcpy(ptr %mac_addr65, ptr %retval.0.i169, i32 6)
  %mac_addr_mask68 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 6
  %57 = call ptr @memset(ptr %mac_addr_mask68, i32 255, i32 6)
  br label %if.end70

if.end70:                                         ; preds = %wdev_address.exit, %if.end58.if.end70_crit_edge
  %58 = ptrtoint ptr %call8 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %call8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %59)
  %cmp.i173240 = icmp ugt i16 %59, 7
  br i1 %cmp.i173240, label %land.lhs.true.i175.lr.ph, label %if.end70.for.end86_crit_edge

if.end70.for.end86_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86

land.lhs.true.i175.lr.ph:                         ; preds = %if.end70
  %conv.i171 = zext i16 %59 to i32
  %sub.i172 = add nsw i32 %conv.i171, -4
  %60 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 1
  %61 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 3
  %62 = getelementptr inbounds [3 x ptr], ptr %req.i, i32 0, i32 1
  %63 = getelementptr inbounds [3 x ptr], ptr %req.i, i32 0, i32 2
  %64 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 2
  %extack14.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %arrayidx.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 2
  %arrayidx45.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 4
  %arrayidx53.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 1
  %arrayidx111.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 3
  %arrayidx147.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 5
  %arrayidx157.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 6
  %arrayidx198.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 7
  %arrayidx207.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 8
  %arrayidx248.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 9
  %arrayidx289.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 10
  %arrayidx330657.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 11
  %arrayidx431.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 12
  %arrayidx479.i.i = getelementptr inbounds [14 x ptr], ptr %tb.i.i, i32 0, i32 13
  br label %land.lhs.true.i175

land.lhs.true.i175:                               ; preds = %if.end82.land.lhs.true.i175_crit_edge, %land.lhs.true.i175.lr.ph
  %idx.0243 = phi i32 [ 0, %land.lhs.true.i175.lr.ph ], [ %inc83, %if.end82.land.lhs.true.i175_crit_edge ]
  %peer.1242 = phi ptr [ %add.ptr.i162, %land.lhs.true.i175.lr.ph ], [ %add.ptr.i191, %if.end82.land.lhs.true.i175_crit_edge ]
  %rem.1241 = phi i32 [ %sub.i172, %land.lhs.true.i175.lr.ph ], [ %sub1.i190, %if.end82.land.lhs.true.i175_crit_edge ]
  %65 = ptrtoint ptr %peer.1242 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %peer.1242, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %66)
  %cmp1.i174 = icmp ult i16 %66, 4
  %conv.i176 = zext i16 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.1241, i32 %conv.i176)
  %cmp5.i177.not = icmp ult i32 %rem.1241, %conv.i176
  %or.cond205 = select i1 %cmp1.i174, i1 true, i1 %cmp5.i177.not
  br i1 %or.cond205, label %land.lhs.true.i175.for.end86_crit_edge, label %for.body76

land.lhs.true.i175.for.end86_crit_edge:           ; preds = %land.lhs.true.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86

for.body76:                                       ; preds = %land.lhs.true.i175
  %arrayidx78 = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb.i) #8
  %67 = call ptr @memset(ptr %tb.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #8
  %68 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !89
  %69 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 -1 to ptr), ptr %62, align 4, !annotation !89
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 -1 to ptr), ptr %63, align 4, !annotation !89
  %add.ptr.i.i.i = getelementptr i8, ptr %peer.1242, i32 4
  %71 = ptrtoint ptr %peer.1242 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %peer.1242, align 2
  %conv.i.i.i = zext i16 %72 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 4, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  %73 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %60, align 4
  %tobool.not.i181 = icmp eq ptr %74, null
  br i1 %tobool.not.i181, label %for.body76.do.body.i_crit_edge, label %lor.lhs.false.i

for.body76.do.body.i_crit_edge:                   ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %for.body76
  %75 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %64, align 4
  %tobool2.not.i = icmp eq ptr %76, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.do.body.i_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %77 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %61, align 4
  %tobool5.not.i = icmp eq ptr %78, null
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.do.body.i_crit_edge, label %if.end8.i

lor.lhs.false3.i.do.body.i_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false3.i.do.body.i_crit_edge, %lor.lhs.false.i.do.body.i_crit_edge, %for.body76.do.body.i_crit_edge
  %79 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_peer.__msg) #8
  %tobool6.not.i = icmp eq ptr %80, null
  br i1 %tobool6.not.i, label %do.body.i.pmsr_parse_peer.exit.thread_crit_edge, label %if.then7.i

do.body.i.pmsr_parse_peer.exit.thread_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_peer.exit.thread

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @pmsr_parse_peer.__msg, ptr %80, align 4
  br label %cleanup.sink.split.i

if.end8.i:                                        ; preds = %lor.lhs.false3.i
  %add.ptr.i.i182 = getelementptr i8, ptr %74, i32 4
  %82 = call ptr @memcpy(ptr %arrayidx78, ptr %add.ptr.i.i182, i32 6)
  %83 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %attrs, align 4
  %85 = call ptr @memset(ptr %84, i32 0, i32 1240)
  %86 = load ptr, ptr %attrs, align 4
  %87 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %extack14.i, align 4
  %add.ptr.i.i134.i = getelementptr i8, ptr %76, i32 4
  %89 = ptrtoint ptr %76 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %76, align 2
  %conv.i.i135.i = zext i16 %90 to i32
  %sub.i.i136.i = add nsw i32 %conv.i.i135.i, -4
  %call2.i137.i = call i32 @__nla_parse(ptr noundef %86, i32 noundef 309, ptr noundef %add.ptr.i.i134.i, i32 noundef %sub.i.i136.i, ptr noundef null, i32 noundef 0, ptr noundef %88) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i137.i)
  %tobool16.not.i = icmp eq i32 %call2.i137.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end8.i.pmsr_parse_peer.exit.thread_crit_edge

if.end8.i.pmsr_parse_peer.exit.thread_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_peer.exit.thread

if.end18.i:                                       ; preds = %if.end8.i
  %chandef.i = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243, i32 1
  %call19.i = call i32 @nl80211_parse_chandef(ptr noundef %5, ptr noundef %info, ptr noundef %chandef.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.pmsr_parse_peer.exit.thread_crit_edge

if.end18.i.pmsr_parse_peer.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_peer.exit.thread

if.end22.i:                                       ; preds = %if.end18.i
  %91 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %61, align 4
  %add.ptr.i.i138.i = getelementptr i8, ptr %92, i32 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %92, align 2
  %conv.i.i139.i = zext i16 %94 to i32
  %sub.i.i140.i = add nsw i32 %conv.i.i139.i, -4
  %call2.i141.i = call i32 @__nla_parse(ptr noundef nonnull %req.i, i32 noundef 2, ptr noundef %add.ptr.i.i138.i, i32 noundef %sub.i.i140.i, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  %95 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %62, align 4
  %tobool27.not.i = icmp eq ptr %96, null
  br i1 %tobool27.not.i, label %do.body29.i, label %if.end41.i

do.body29.i:                                      ; preds = %if.end22.i
  %97 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_peer.__msg.4) #8
  %tobool32.not.i = icmp eq ptr %98, null
  br i1 %tobool32.not.i, label %do.body29.i.pmsr_parse_peer.exit.thread_crit_edge, label %if.then33.i

do.body29.i.pmsr_parse_peer.exit.thread_crit_edge: ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_peer.exit.thread

if.then33.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @pmsr_parse_peer.__msg.4, ptr %98, align 4
  %100 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %61, align 4
  br label %cleanup.sink.split.i

if.end41.i:                                       ; preds = %if.end22.i
  %102 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %63, align 4
  %tobool43.not.i = icmp eq ptr %103, null
  br i1 %tobool43.not.i, label %if.end41.i.if.end45.i_crit_edge, label %if.then44.i

if.end41.i.if.end45.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %report_ap_tsf.i = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243, i32 2
  %104 = ptrtoint ptr %report_ap_tsf.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load.i = load i8, ptr %report_ap_tsf.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %report_ap_tsf.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then44.i, %if.end41.i.if.end45.i_crit_edge
  %report_ap_tsf46.i = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243, i32 2
  %105 = ptrtoint ptr %report_ap_tsf46.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load47.i = load i8, ptr %report_ap_tsf46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load47.i)
  %tobool48.not.i = icmp sgt i8 %bf.load47.i, -1
  br i1 %tobool48.not.i, label %if.end45.i.if.end66.i_crit_edge, label %land.lhs.true.i183

if.end45.i.if.end66.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

land.lhs.true.i183:                               ; preds = %if.end45.i
  %106 = ptrtoint ptr %pmsr_capa to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pmsr_capa, align 4
  %report_ap_tsf49.i = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %report_ap_tsf49.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load50.i = load i8, ptr %report_ap_tsf49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load50.i)
  %tobool52.not.i = icmp sgt i8 %bf.load50.i, -1
  br i1 %tobool52.not.i, label %do.body54.i, label %land.lhs.true.i183.if.end66.i_crit_edge

land.lhs.true.i183.if.end66.i_crit_edge:          ; preds = %land.lhs.true.i183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

do.body54.i:                                      ; preds = %land.lhs.true.i183
  %109 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_peer.__msg.5) #8
  %tobool57.not.i = icmp eq ptr %110, null
  br i1 %tobool57.not.i, label %do.body54.i.pmsr_parse_peer.exit.thread_crit_edge, label %if.then58.i

do.body54.i.pmsr_parse_peer.exit.thread_crit_edge: ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_peer.exit.thread

if.then58.i:                                      ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @pmsr_parse_peer.__msg.5, ptr %110, align 4
  %112 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %63, align 4
  br label %cleanup.sink.split.i

if.end66.i:                                       ; preds = %land.lhs.true.i183.if.end66.i_crit_edge, %if.end45.i.if.end66.i_crit_edge
  %114 = ptrtoint ptr %96 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %96, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %115)
  %cmp.i154.i = icmp ugt i16 %115, 7
  br i1 %cmp.i154.i, label %land.lhs.true.i.lr.ph.i, label %pmsr_parse_peer.exit.thread202

pmsr_parse_peer.exit.thread202:                   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i) #8
  br label %if.end82

land.lhs.true.i.lr.ph.i:                          ; preds = %if.end66.i
  %conv.i.i = zext i16 %115 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %add.ptr.i142.i = getelementptr i8, ptr %96, i32 4
  %width.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243, i32 1, i32 1
  %ftm11.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243, i32 3
  %requested.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243, i32 3, i32 2
  %burst_period.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243, i32 3, i32 1
  %num_bursts_exp.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243, i32 3, i32 3
  %burst_duration.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243, i32 3, i32 4
  %ftms_per_burst.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243, i32 3, i32 5
  %ftmr_retries.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243, i32 3, i32 6
  %bss_color.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 8, i32 %idx.0243, i32 3, i32 7
  %116 = ptrtoint ptr %add.ptr.i142.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %add.ptr.i142.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %117)
  %cmp1.i.i230 = icmp ult i16 %117, 4
  %conv.i143.i231 = zext i16 %117 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i143.i231)
  %cmp5.i.not.i232 = icmp ult i32 %sub.i.i, %conv.i143.i231
  %or.cond.i233 = select i1 %cmp1.i.i230, i1 true, i1 %cmp5.i.not.i232
  br i1 %or.cond.i233, label %pmsr_parse_peer.exit.thread251, label %land.lhs.true.i.lr.ph.i.for.body.i_crit_edge

land.lhs.true.i.lr.ph.i.for.body.i_crit_edge:     ; preds = %land.lhs.true.i.lr.ph.i
  br label %for.body.i

pmsr_parse_peer.exit.thread251:                   ; preds = %land.lhs.true.i.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i) #8
  br label %if.end82

land.lhs.true.i.i:                                ; preds = %for.inc.i
  %add.ptr.i151.i = getelementptr i8, ptr %treq.0156.i234, i32 %and.i150.i
  %118 = ptrtoint ptr %add.ptr.i151.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %add.ptr.i151.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %119)
  %cmp1.i.i = icmp ult i16 %119, 4
  %conv.i143.i = zext i16 %119 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i, i32 %conv.i143.i)
  %cmp5.i.not.i = icmp ult i32 %sub1.i.i, %conv.i143.i
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.pmsr_parse_peer.exit_crit_edge, label %land.lhs.true.i.i.for.body.i_crit_edge

land.lhs.true.i.i.for.body.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

land.lhs.true.i.i.pmsr_parse_peer.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_peer.exit

for.body.i:                                       ; preds = %land.lhs.true.i.i.for.body.i_crit_edge, %land.lhs.true.i.lr.ph.i.for.body.i_crit_edge
  %rem.0155.i237 = phi i32 [ %sub1.i.i, %land.lhs.true.i.i.for.body.i_crit_edge ], [ %sub.i.i, %land.lhs.true.i.lr.ph.i.for.body.i_crit_edge ]
  %treq.0156.i234 = phi ptr [ %add.ptr.i151.i, %land.lhs.true.i.i.for.body.i_crit_edge ], [ %add.ptr.i142.i, %land.lhs.true.i.lr.ph.i.for.body.i_crit_edge ]
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %treq.0156.i234, i32 0, i32 1
  %120 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %nla_type.i.i, align 2
  %122 = and i16 %121, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %122)
  %cond.i = icmp eq i16 %122, 1
  br i1 %cond.i, label %sw.bb.i, label %do.body75.i

sw.bb.i:                                          ; preds = %for.body.i
  %123 = ptrtoint ptr %pmsr_capa to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pmsr_capa, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tb.i.i) #8
  %125 = call ptr @memset(ptr %tb.i.i, i32 255, i32 56)
  %bandwidths.i.i = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %124, i32 0, i32 2, i32 1
  %126 = ptrtoint ptr %bandwidths.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %bandwidths.i.i, align 4
  %128 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %width.i.i, align 4
  %shl.i.i = shl nuw i32 1, %129
  %and.i144.i = and i32 %shl.i.i, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144.i)
  %tobool.not.i.i = icmp eq i32 %and.i144.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.end5.i.i

do.body.i.i:                                      ; preds = %sw.bb.i
  %130 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg) #8
  %tobool3.not.i.i = icmp eq ptr %131, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then4.i.i

do.body.i.i.pmsr_parse_ftm.exit.i_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @pmsr_parse_ftm.__msg, ptr %131, align 4
  br label %pmsr_parse_ftm.exit.i

if.end5.i.i:                                      ; preds = %sw.bb.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %treq.0156.i234, i32 4
  %133 = ptrtoint ptr %treq.0156.i234 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %treq.0156.i234, align 2
  %conv.i.i.i.i = zext i16 %134 to i32
  %sub.i.i.i.i184 = add nsw i32 %conv.i.i.i.i, -4
  %call2.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i.i, i32 noundef 13, ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub.i.i.i.i184, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  %135 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %136, null
  br i1 %tobool6.not.i.i, label %if.end5.i.i.if.end10.i.i_crit_edge, label %if.then7.i.i

if.end5.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i641.i.i = getelementptr i8, ptr %136, i32 4
  %137 = ptrtoint ptr %add.ptr.i.i641.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %add.ptr.i.i641.i.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then7.i.i, %if.end5.i.i.if.end10.i.i_crit_edge
  %preamble.0.i.i = phi i32 [ %138, %if.then7.i.i ], [ 3, %if.end5.i.i.if.end10.i.i_crit_edge ]
  %139 = ptrtoint ptr %requested.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load.i.i = load i8, ptr %requested.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %requested.i.i, align 2
  %140 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %chandef.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %143)
  %cond.i.i = icmp eq i32 %143, 2
  %tobool6.not.not.i.i = xor i1 %tobool6.not.i.i, true
  %brmerge656.i.i = select i1 %cond.i.i, i1 true, i1 %tobool6.not.not.i.i
  br i1 %brmerge656.i.i, label %sw.epilog.i.i, label %do.body16.i.i

do.body16.i.i:                                    ; preds = %if.end10.i.i
  %144 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.7) #8
  %tobool19.not.i.i = icmp eq ptr %145, null
  br i1 %tobool19.not.i.i, label %do.body16.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then20.i.i

do.body16.i.i.pmsr_parse_ftm.exit.i_crit_edge:    ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then20.i.i:                                    ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @pmsr_parse_ftm.__msg.7, ptr %145, align 4
  br label %pmsr_parse_ftm.exit.i

sw.epilog.i.i:                                    ; preds = %if.end10.i.i
  %ftm26.i.i = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %124, i32 0, i32 2
  %147 = ptrtoint ptr %ftm26.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %ftm26.i.i, align 4
  %shl27.i.i = shl nuw i32 1, %preamble.0.i.i
  %and28.i.i = and i32 %148, %shl27.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %do.body31.i.i, label %if.end41.i.i

do.body31.i.i:                                    ; preds = %sw.epilog.i.i
  %149 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.8) #8
  %tobool34.not.i.i = icmp eq ptr %150, null
  br i1 %tobool34.not.i.i, label %do.body31.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then35.i.i

do.body31.i.i.pmsr_parse_ftm.exit.i_crit_edge:    ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then35.i.i:                                    ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @pmsr_parse_ftm.__msg.8, ptr %150, align 4
  %152 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i.i, align 4
  %bad_attr.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %150, i32 0, i32 1
  %154 = ptrtoint ptr %bad_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %153, ptr %bad_attr.i.i, align 4
  %policy.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %150, i32 0, i32 2
  %155 = ptrtoint ptr %policy.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %policy.i.i, align 4
  br label %pmsr_parse_ftm.exit.i

if.end41.i.i:                                     ; preds = %sw.epilog.i.i
  %156 = ptrtoint ptr %ftm11.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %preamble.0.i.i, ptr %ftm11.i.i, align 4
  %157 = ptrtoint ptr %burst_period.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 0, ptr %burst_period.i.i, align 4
  %158 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx45.i.i, align 4
  %tobool46.not.i.i = icmp eq ptr %159, null
  br i1 %tobool46.not.i.i, label %if.end41.i.i.if.end52.i.i_crit_edge, label %if.then47.i.i

if.end41.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i.i

if.then47.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i642.i.i = getelementptr i8, ptr %159, i32 4
  %160 = ptrtoint ptr %add.ptr.i.i642.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %add.ptr.i.i642.i.i, align 4
  %conv.i145.i = trunc i32 %161 to i16
  %162 = ptrtoint ptr %burst_period.i.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv.i145.i, ptr %burst_period.i.i, align 4
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then47.i.i, %if.end41.i.i.if.end52.i.i_crit_edge
  %163 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx53.i.i, align 4
  %tobool54.not.i.i = icmp eq ptr %164, null
  %bf.shl.i.i = select i1 %tobool54.not.i.i, i8 0, i8 64
  %bf.clear59.i.i = and i8 %bf.set.i.i, -65
  %bf.set60.i.i = or i8 %bf.shl.i.i, %bf.clear59.i.i
  %165 = ptrtoint ptr %requested.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %bf.set60.i.i, ptr %requested.i.i, align 2
  %non_asap.i.i = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %124, i32 0, i32 2, i32 4
  %166 = ptrtoint ptr %non_asap.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load95.i.i = load i8, ptr %non_asap.i.i, align 2
  br i1 %tobool54.not.i.i, label %land.lhs.true93.i.i, label %land.lhs.true.i146.i

land.lhs.true.i146.i:                             ; preds = %if.end52.i.i
  %167 = and i8 %bf.load95.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool72.not.i.i = icmp eq i8 %167, 0
  br i1 %tobool72.not.i.i, label %do.body74.i.i, label %land.lhs.true.i146.i.if.end109.i.i_crit_edge

land.lhs.true.i146.i.if.end109.i.i_crit_edge:     ; preds = %land.lhs.true.i146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i.i

do.body74.i.i:                                    ; preds = %land.lhs.true.i146.i
  %168 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.9) #8
  %tobool77.not.i.i = icmp eq ptr %169, null
  br i1 %tobool77.not.i.i, label %do.body74.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then78.i.i

do.body74.i.i.pmsr_parse_ftm.exit.i_crit_edge:    ; preds = %do.body74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then78.i.i:                                    ; preds = %do.body74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @pmsr_parse_ftm.__msg.9, ptr %169, align 4
  %171 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx53.i.i, align 4
  %bad_attr81.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %169, i32 0, i32 1
  %173 = ptrtoint ptr %bad_attr81.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %172, ptr %bad_attr81.i.i, align 4
  %policy82.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %169, i32 0, i32 2
  %174 = ptrtoint ptr %policy82.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %policy82.i.i, align 4
  br label %pmsr_parse_ftm.exit.i

land.lhs.true93.i.i:                              ; preds = %if.end52.i.i
  %175 = and i8 %bf.load95.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool98.not.i.i = icmp eq i8 %175, 0
  br i1 %tobool98.not.i.i, label %do.body100.i.i, label %land.lhs.true93.i.i.if.end109.i.i_crit_edge

land.lhs.true93.i.i.if.end109.i.i_crit_edge:      ; preds = %land.lhs.true93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i.i

do.body100.i.i:                                   ; preds = %land.lhs.true93.i.i
  %176 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.10) #8
  %tobool103.not.i.i = icmp eq ptr %177, null
  br i1 %tobool103.not.i.i, label %do.body100.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then104.i.i

do.body100.i.i.pmsr_parse_ftm.exit.i_crit_edge:   ; preds = %do.body100.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then104.i.i:                                   ; preds = %do.body100.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @pmsr_parse_ftm.__msg.10, ptr %177, align 4
  br label %pmsr_parse_ftm.exit.i

if.end109.i.i:                                    ; preds = %land.lhs.true93.i.i.if.end109.i.i_crit_edge, %land.lhs.true.i146.i.if.end109.i.i_crit_edge
  %179 = ptrtoint ptr %num_bursts_exp.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %num_bursts_exp.i.i, align 1
  %180 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx111.i.i, align 4
  %tobool112.not.i.i = icmp eq ptr %181, null
  br i1 %tobool112.not.i.i, label %if.end109.i.i.if.end119.i.i_crit_edge, label %if.then113.i.i

if.end109.i.i.if.end119.i.i_crit_edge:            ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119.i.i

if.then113.i.i:                                   ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i643.i.i = getelementptr i8, ptr %181, i32 4
  %182 = ptrtoint ptr %add.ptr.i.i643.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %add.ptr.i.i643.i.i, align 4
  %conv116.i.i = trunc i32 %183 to i8
  %184 = ptrtoint ptr %num_bursts_exp.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv116.i.i, ptr %num_bursts_exp.i.i, align 1
  br label %if.end119.i.i

if.end119.i.i:                                    ; preds = %if.then113.i.i, %if.end109.i.i.if.end119.i.i_crit_edge
  %max_bursts_exponent.i.i = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %124, i32 0, i32 2, i32 2
  %185 = ptrtoint ptr %max_bursts_exponent.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %max_bursts_exponent.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %186)
  %cmp.i147.i = icmp sgt i8 %186, -1
  br i1 %cmp.i147.i, label %land.lhs.true123.i.i, label %if.end119.i.i.if.end145.i.i_crit_edge

if.end119.i.i.if.end145.i.i_crit_edge:            ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145.i.i

land.lhs.true123.i.i:                             ; preds = %if.end119.i.i
  %187 = ptrtoint ptr %num_bursts_exp.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %num_bursts_exp.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %188, i8 %186)
  %cmp130.i.i = icmp ugt i8 %188, %186
  br i1 %cmp130.i.i, label %do.body133.i.i, label %land.lhs.true123.i.i.if.end145.i.i_crit_edge

land.lhs.true123.i.i.if.end145.i.i_crit_edge:     ; preds = %land.lhs.true123.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145.i.i

do.body133.i.i:                                   ; preds = %land.lhs.true123.i.i
  %189 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.11) #8
  %tobool136.not.i.i = icmp eq ptr %190, null
  br i1 %tobool136.not.i.i, label %do.body133.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then137.i.i

do.body133.i.i.pmsr_parse_ftm.exit.i_crit_edge:   ; preds = %do.body133.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then137.i.i:                                   ; preds = %do.body133.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @pmsr_parse_ftm.__msg.11, ptr %190, align 4
  %192 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx111.i.i, align 4
  %bad_attr140.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %190, i32 0, i32 1
  %194 = ptrtoint ptr %bad_attr140.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %193, ptr %bad_attr140.i.i, align 4
  %policy141.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %190, i32 0, i32 2
  %195 = ptrtoint ptr %policy141.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr null, ptr %policy141.i.i, align 4
  br label %pmsr_parse_ftm.exit.i

if.end145.i.i:                                    ; preds = %land.lhs.true123.i.i.if.end145.i.i_crit_edge, %if.end119.i.i.if.end145.i.i_crit_edge
  %196 = ptrtoint ptr %burst_duration.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 15, ptr %burst_duration.i.i, align 4
  %197 = ptrtoint ptr %arrayidx147.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %arrayidx147.i.i, align 4
  %tobool148.not.i.i = icmp eq ptr %198, null
  br i1 %tobool148.not.i.i, label %if.end145.i.i.if.end155.i.i_crit_edge, label %if.then149.i.i

if.end145.i.i.if.end155.i.i_crit_edge:            ; preds = %if.end145.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155.i.i

if.then149.i.i:                                   ; preds = %if.end145.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i644.i.i = getelementptr i8, ptr %198, i32 4
  %199 = ptrtoint ptr %add.ptr.i.i644.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %add.ptr.i.i644.i.i, align 4
  %conv152.i.i = trunc i32 %200 to i8
  %201 = ptrtoint ptr %burst_duration.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv152.i.i, ptr %burst_duration.i.i, align 4
  br label %if.end155.i.i

if.end155.i.i:                                    ; preds = %if.then149.i.i, %if.end145.i.i.if.end155.i.i_crit_edge
  %202 = ptrtoint ptr %ftms_per_burst.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %ftms_per_burst.i.i, align 1
  %203 = ptrtoint ptr %arrayidx157.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx157.i.i, align 4
  %tobool158.not.i.i = icmp eq ptr %204, null
  br i1 %tobool158.not.i.i, label %if.end155.i.i.if.end165.i.i_crit_edge, label %if.then159.i.i

if.end155.i.i.if.end165.i.i_crit_edge:            ; preds = %if.end155.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165.i.i

if.then159.i.i:                                   ; preds = %if.end155.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i645.i.i = getelementptr i8, ptr %204, i32 4
  %205 = ptrtoint ptr %add.ptr.i.i645.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %add.ptr.i.i645.i.i, align 4
  %conv162.i.i = trunc i32 %206 to i8
  %207 = ptrtoint ptr %ftms_per_burst.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv162.i.i, ptr %ftms_per_burst.i.i, align 1
  br label %if.end165.i.i

if.end165.i.i:                                    ; preds = %if.then159.i.i, %if.end155.i.i.if.end165.i.i_crit_edge
  %max_ftms_per_burst.i.i = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %124, i32 0, i32 2, i32 3
  %208 = ptrtoint ptr %max_ftms_per_burst.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %max_ftms_per_burst.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool168.not.i.i = icmp eq i8 %209, 0
  br i1 %tobool168.not.i.i, label %if.end165.i.i.if.end196.i.i_crit_edge, label %land.lhs.true169.i.i

if.end165.i.i.if.end196.i.i_crit_edge:            ; preds = %if.end165.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196.i.i

land.lhs.true169.i.i:                             ; preds = %if.end165.i.i
  %210 = ptrtoint ptr %ftms_per_burst.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %ftms_per_burst.i.i, align 1
  %212 = add i8 %211, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %212, i8 %209)
  %.not.i.i = icmp ult i8 %212, %209
  br i1 %.not.i.i, label %land.lhs.true169.i.i.if.end196.i.i_crit_edge, label %do.body184.i.i

land.lhs.true169.i.i.if.end196.i.i_crit_edge:     ; preds = %land.lhs.true169.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196.i.i

do.body184.i.i:                                   ; preds = %land.lhs.true169.i.i
  %213 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.12) #8
  %tobool187.not.i.i = icmp eq ptr %214, null
  br i1 %tobool187.not.i.i, label %do.body184.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then188.i.i

do.body184.i.i.pmsr_parse_ftm.exit.i_crit_edge:   ; preds = %do.body184.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then188.i.i:                                   ; preds = %do.body184.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @pmsr_parse_ftm.__msg.12, ptr %214, align 4
  %216 = ptrtoint ptr %arrayidx157.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx157.i.i, align 4
  %bad_attr191.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %214, i32 0, i32 1
  %218 = ptrtoint ptr %bad_attr191.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %217, ptr %bad_attr191.i.i, align 4
  %policy192.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %214, i32 0, i32 2
  %219 = ptrtoint ptr %policy192.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr null, ptr %policy192.i.i, align 4
  br label %pmsr_parse_ftm.exit.i

if.end196.i.i:                                    ; preds = %land.lhs.true169.i.i.if.end196.i.i_crit_edge, %if.end165.i.i.if.end196.i.i_crit_edge
  %220 = ptrtoint ptr %ftmr_retries.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 3, ptr %ftmr_retries.i.i, align 2
  %221 = ptrtoint ptr %arrayidx198.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx198.i.i, align 4
  %tobool199.not.i.i = icmp eq ptr %222, null
  br i1 %tobool199.not.i.i, label %if.end196.i.i.if.end206.i.i_crit_edge, label %if.then200.i.i

if.end196.i.i.if.end206.i.i_crit_edge:            ; preds = %if.end196.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206.i.i

if.then200.i.i:                                   ; preds = %if.end196.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i646.i.i = getelementptr i8, ptr %222, i32 4
  %223 = ptrtoint ptr %add.ptr.i.i646.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %add.ptr.i.i646.i.i, align 4
  %conv203.i.i = trunc i32 %224 to i8
  %225 = ptrtoint ptr %ftmr_retries.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv203.i.i, ptr %ftmr_retries.i.i, align 2
  br label %if.end206.i.i

if.end206.i.i:                                    ; preds = %if.then200.i.i, %if.end196.i.i.if.end206.i.i_crit_edge
  %226 = ptrtoint ptr %arrayidx207.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx207.i.i, align 4
  %tobool208.not.i.i = icmp eq ptr %227, null
  %bf.shl217.i.i = select i1 %tobool208.not.i.i, i8 0, i8 32
  %bf.clear218.i.i = and i8 %bf.set60.i.i, -33
  %bf.set219.i.i = or i8 %bf.shl217.i.i, %bf.clear218.i.i
  %228 = ptrtoint ptr %requested.i.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %bf.set219.i.i, ptr %requested.i.i, align 2
  br i1 %tobool208.not.i.i, label %if.end206.i.i.if.end247.i.i_crit_edge, label %land.lhs.true227.i.i

if.end206.i.i.if.end247.i.i_crit_edge:            ; preds = %if.end206.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end247.i.i

land.lhs.true227.i.i:                             ; preds = %if.end206.i.i
  %229 = ptrtoint ptr %non_asap.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %bf.load230.i.i = load i8, ptr %non_asap.i.i, align 2
  %230 = and i8 %bf.load230.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool233.not.i.i = icmp eq i8 %230, 0
  br i1 %tobool233.not.i.i, label %do.body235.i.i, label %land.lhs.true227.i.i.if.end247.i.i_crit_edge

land.lhs.true227.i.i.if.end247.i.i_crit_edge:     ; preds = %land.lhs.true227.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end247.i.i

do.body235.i.i:                                   ; preds = %land.lhs.true227.i.i
  %231 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.13) #8
  %tobool238.not.i.i = icmp eq ptr %232, null
  br i1 %tobool238.not.i.i, label %do.body235.i.i.if.end247.i.i_crit_edge, label %if.then239.i.i

do.body235.i.i.if.end247.i.i_crit_edge:           ; preds = %do.body235.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end247.i.i

if.then239.i.i:                                   ; preds = %do.body235.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr @pmsr_parse_ftm.__msg.13, ptr %232, align 4
  %234 = ptrtoint ptr %arrayidx207.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx207.i.i, align 4
  %bad_attr242.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %232, i32 0, i32 1
  %236 = ptrtoint ptr %bad_attr242.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %235, ptr %bad_attr242.i.i, align 4
  %policy243.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %232, i32 0, i32 2
  %237 = ptrtoint ptr %policy243.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %policy243.i.i, align 4
  br label %if.end247.i.i

if.end247.i.i:                                    ; preds = %if.then239.i.i, %do.body235.i.i.if.end247.i.i_crit_edge, %land.lhs.true227.i.i.if.end247.i.i_crit_edge, %if.end206.i.i.if.end247.i.i_crit_edge
  %238 = ptrtoint ptr %arrayidx248.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx248.i.i, align 4
  %tobool249.not.i.i = icmp eq ptr %239, null
  %240 = ptrtoint ptr %requested.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %bf.load256.i.i = load i8, ptr %requested.i.i, align 2
  %bf.shl258.i.i = select i1 %tobool249.not.i.i, i8 0, i8 16
  %bf.clear259.i.i = and i8 %bf.load256.i.i, -17
  %bf.set260.i.i = or i8 %bf.clear259.i.i, %bf.shl258.i.i
  store i8 %bf.set260.i.i, ptr %requested.i.i, align 2
  br i1 %tobool249.not.i.i, label %if.end247.i.i.if.end288.i.i_crit_edge, label %land.lhs.true268.i.i

if.end247.i.i.if.end288.i.i_crit_edge:            ; preds = %if.end247.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end288.i.i

land.lhs.true268.i.i:                             ; preds = %if.end247.i.i
  %241 = ptrtoint ptr %non_asap.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %bf.load271.i.i = load i8, ptr %non_asap.i.i, align 2
  %242 = and i8 %bf.load271.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool274.not.i.i = icmp eq i8 %242, 0
  br i1 %tobool274.not.i.i, label %do.body276.i.i, label %land.lhs.true268.i.i.if.end288.i.i_crit_edge

land.lhs.true268.i.i.if.end288.i.i_crit_edge:     ; preds = %land.lhs.true268.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end288.i.i

do.body276.i.i:                                   ; preds = %land.lhs.true268.i.i
  %243 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.14) #8
  %tobool279.not.i.i = icmp eq ptr %244, null
  br i1 %tobool279.not.i.i, label %do.body276.i.i.if.end288.i.i_crit_edge, label %if.then280.i.i

do.body276.i.i.if.end288.i.i_crit_edge:           ; preds = %do.body276.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end288.i.i

if.then280.i.i:                                   ; preds = %do.body276.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @pmsr_parse_ftm.__msg.14, ptr %244, align 4
  %246 = ptrtoint ptr %arrayidx248.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx248.i.i, align 4
  %bad_attr283.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %244, i32 0, i32 1
  %248 = ptrtoint ptr %bad_attr283.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %247, ptr %bad_attr283.i.i, align 4
  %policy284.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %244, i32 0, i32 2
  %249 = ptrtoint ptr %policy284.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr null, ptr %policy284.i.i, align 4
  br label %if.end288.i.i

if.end288.i.i:                                    ; preds = %if.then280.i.i, %do.body276.i.i.if.end288.i.i_crit_edge, %land.lhs.true268.i.i.if.end288.i.i_crit_edge, %if.end247.i.i.if.end288.i.i_crit_edge
  %250 = ptrtoint ptr %arrayidx289.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %arrayidx289.i.i, align 4
  %tobool290.not.i.i = icmp eq ptr %251, null
  %252 = ptrtoint ptr %requested.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %bf.load297.i.i = load i8, ptr %requested.i.i, align 2
  %bf.shl299.i.i = select i1 %tobool290.not.i.i, i8 0, i8 8
  %bf.clear300.i.i = and i8 %bf.load297.i.i, -9
  %bf.set301.i.i = or i8 %bf.clear300.i.i, %bf.shl299.i.i
  store i8 %bf.set301.i.i, ptr %requested.i.i, align 2
  br i1 %tobool290.not.i.i, label %if.end329.i.i, label %land.lhs.true309.i.i

land.lhs.true309.i.i:                             ; preds = %if.end288.i.i
  %253 = ptrtoint ptr %non_asap.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %bf.load312.i.i = load i8, ptr %non_asap.i.i, align 2
  %254 = and i8 %bf.load312.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool315.not.i.i = icmp eq i8 %254, 0
  br i1 %tobool315.not.i.i, label %do.body317.i.i, label %if.end329.thread.i.i

do.body317.i.i:                                   ; preds = %land.lhs.true309.i.i
  %255 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.15) #8
  %tobool320.not.i.i = icmp eq ptr %256, null
  br i1 %tobool320.not.i.i, label %do.body317.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then321.i.i

do.body317.i.i.pmsr_parse_ftm.exit.i_crit_edge:   ; preds = %do.body317.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then321.i.i:                                   ; preds = %do.body317.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr @pmsr_parse_ftm.__msg.15, ptr %256, align 4
  %258 = ptrtoint ptr %arrayidx289.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %arrayidx289.i.i, align 4
  %bad_attr324.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %256, i32 0, i32 1
  %260 = ptrtoint ptr %bad_attr324.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %259, ptr %bad_attr324.i.i, align 4
  %policy325.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %256, i32 0, i32 2
  %261 = ptrtoint ptr %policy325.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr null, ptr %policy325.i.i, align 4
  br label %pmsr_parse_ftm.exit.i

if.end329.i.i:                                    ; preds = %if.end288.i.i
  %262 = ptrtoint ptr %arrayidx330657.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx330657.i.i, align 4
  %tobool331.not.i.i = icmp eq ptr %263, null
  %bf.shl340.i.i = select i1 %tobool331.not.i.i, i8 0, i8 4
  %bf.clear341.i.i = and i8 %bf.set301.i.i, -5
  %bf.set342.i.i = or i8 %bf.shl340.i.i, %bf.clear341.i.i
  %264 = ptrtoint ptr %requested.i.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %bf.set342.i.i, ptr %requested.i.i, align 2
  br i1 %tobool331.not.i.i, label %if.end329.i.i.if.end430.i.i_crit_edge, label %land.lhs.true350.i.i

if.end329.i.i.if.end430.i.i_crit_edge:            ; preds = %if.end329.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end430.i.i

if.end329.thread.i.i:                             ; preds = %land.lhs.true309.i.i
  %265 = ptrtoint ptr %arrayidx330657.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %arrayidx330657.i.i, align 4
  %tobool331.not658.i.i = icmp eq ptr %266, null
  %bf.shl340659.i.i = select i1 %tobool331.not658.i.i, i8 0, i8 4
  %bf.clear341660.i.i = and i8 %bf.set301.i.i, -5
  %bf.set342661.i.i = or i8 %bf.shl340659.i.i, %bf.clear341660.i.i
  %267 = ptrtoint ptr %requested.i.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %bf.set342661.i.i, ptr %requested.i.i, align 2
  br i1 %tobool331.not658.i.i, label %if.end329.thread.i.i.land.lhs.true412.i.i_crit_edge, label %land.lhs.true350.thread.i.i

if.end329.thread.i.i.land.lhs.true412.i.i_crit_edge: ; preds = %if.end329.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true412.i.i

land.lhs.true350.i.i:                             ; preds = %if.end329.i.i
  %268 = ptrtoint ptr %non_asap.i.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %bf.load353.i.i = load i8, ptr %non_asap.i.i, align 2
  %269 = and i8 %bf.load353.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool356.not.i.i = icmp eq i8 %269, 0
  br i1 %tobool356.not.i.i, label %land.lhs.true350.i.i.do.body358.i.i_crit_edge, label %land.lhs.true350.i.i.land.lhs.true412.i.i_crit_edge

land.lhs.true350.i.i.land.lhs.true412.i.i_crit_edge: ; preds = %land.lhs.true350.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true412.i.i

land.lhs.true350.i.i.do.body358.i.i_crit_edge:    ; preds = %land.lhs.true350.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body358.i.i

land.lhs.true350.thread.i.i:                      ; preds = %if.end329.thread.i.i
  %270 = ptrtoint ptr %non_asap.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %bf.load353677.i.i = load i8, ptr %non_asap.i.i, align 2
  %271 = and i8 %bf.load353677.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool356.not678.i.i = icmp eq i8 %271, 0
  br i1 %tobool356.not678.i.i, label %land.lhs.true350.thread.i.i.do.body358.i.i_crit_edge, label %do.body387.i.i

land.lhs.true350.thread.i.i.do.body358.i.i_crit_edge: ; preds = %land.lhs.true350.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body358.i.i

do.body358.i.i:                                   ; preds = %land.lhs.true350.thread.i.i.do.body358.i.i_crit_edge, %land.lhs.true350.i.i.do.body358.i.i_crit_edge
  %272 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.16) #8
  %tobool361.not.i.i = icmp eq ptr %273, null
  br i1 %tobool361.not.i.i, label %do.body358.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then362.i.i

do.body358.i.i.pmsr_parse_ftm.exit.i_crit_edge:   ; preds = %do.body358.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then362.i.i:                                   ; preds = %do.body358.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr @pmsr_parse_ftm.__msg.16, ptr %273, align 4
  %275 = ptrtoint ptr %arrayidx330657.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %arrayidx330657.i.i, align 4
  %bad_attr365.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %273, i32 0, i32 1
  %277 = ptrtoint ptr %bad_attr365.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %276, ptr %bad_attr365.i.i, align 4
  %policy366.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %273, i32 0, i32 2
  %278 = ptrtoint ptr %policy366.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr null, ptr %policy366.i.i, align 4
  br label %pmsr_parse_ftm.exit.i

do.body387.i.i:                                   ; preds = %land.lhs.true350.thread.i.i
  %279 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.17) #8
  %tobool390.not.i.i = icmp eq ptr %280, null
  br i1 %tobool390.not.i.i, label %do.body387.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then391.i.i

do.body387.i.i.pmsr_parse_ftm.exit.i_crit_edge:   ; preds = %do.body387.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then391.i.i:                                   ; preds = %do.body387.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr @pmsr_parse_ftm.__msg.17, ptr %280, align 4
  br label %pmsr_parse_ftm.exit.i

land.lhs.true412.i.i:                             ; preds = %land.lhs.true350.i.i.land.lhs.true412.i.i_crit_edge, %if.end329.thread.i.i.land.lhs.true412.i.i_crit_edge
  %bf.set342668.i.i = phi i8 [ %bf.set342661.i.i, %if.end329.thread.i.i.land.lhs.true412.i.i_crit_edge ], [ %bf.set342.i.i, %land.lhs.true350.i.i.land.lhs.true412.i.i_crit_edge ]
  %282 = xor i1 %tobool290.not.i.i, true
  %283 = ptrtoint ptr %ftm11.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %ftm11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %284)
  %cmp415.not.i.i = icmp eq i32 %284, 4
  br i1 %cmp415.not.i.i, label %land.lhs.true412.i.i.if.end430.i.i_crit_edge, label %do.body418.i.i

land.lhs.true412.i.i.if.end430.i.i_crit_edge:     ; preds = %land.lhs.true412.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end430.i.i

do.body418.i.i:                                   ; preds = %land.lhs.true412.i.i
  %285 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.18) #8
  %tobool421.not.i.i = icmp eq ptr %286, null
  br i1 %tobool421.not.i.i, label %do.body418.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then422.i.i

do.body418.i.i.pmsr_parse_ftm.exit.i_crit_edge:   ; preds = %do.body418.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then422.i.i:                                   ; preds = %do.body418.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr @pmsr_parse_ftm.__msg.18, ptr %286, align 4
  %288 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %arrayidx.i.i, align 4
  %bad_attr425.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %286, i32 0, i32 1
  %290 = ptrtoint ptr %bad_attr425.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %289, ptr %bad_attr425.i.i, align 4
  %policy426.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %286, i32 0, i32 2
  %291 = ptrtoint ptr %policy426.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr null, ptr %policy426.i.i, align 4
  br label %pmsr_parse_ftm.exit.i

if.end430.i.i:                                    ; preds = %land.lhs.true412.i.i.if.end430.i.i_crit_edge, %if.end329.i.i.if.end430.i.i_crit_edge
  %bf.set342667.i.i = phi i8 [ %bf.set342668.i.i, %land.lhs.true412.i.i.if.end430.i.i_crit_edge ], [ %bf.set342.i.i, %if.end329.i.i.if.end430.i.i_crit_edge ]
  %tobool331.not663.i.i = phi i1 [ %282, %land.lhs.true412.i.i.if.end430.i.i_crit_edge ], [ true, %if.end329.i.i.if.end430.i.i_crit_edge ]
  %or.cond638654.i.i = phi i1 [ true, %land.lhs.true412.i.i.if.end430.i.i_crit_edge ], [ false, %if.end329.i.i.if.end430.i.i_crit_edge ]
  %292 = ptrtoint ptr %arrayidx431.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx431.i.i, align 4
  %tobool432.not.i.i = icmp eq ptr %293, null
  %bf.shl441.i.i = select i1 %tobool432.not.i.i, i8 0, i8 2
  %bf.clear442.i.i = and i8 %bf.set342667.i.i, -3
  %bf.set443.i.i = or i8 %bf.shl441.i.i, %bf.clear442.i.i
  %294 = ptrtoint ptr %requested.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %bf.set443.i.i, ptr %requested.i.i, align 2
  %brmerge.i.i = select i1 %or.cond638654.i.i, i1 true, i1 %tobool432.not.i.i
  br i1 %brmerge.i.i, label %if.end478.i.i, label %do.body466.i.i

do.body466.i.i:                                   ; preds = %if.end430.i.i
  %295 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.19) #8
  %tobool469.not.i.i = icmp eq ptr %296, null
  br i1 %tobool469.not.i.i, label %do.body466.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then470.i.i

do.body466.i.i.pmsr_parse_ftm.exit.i_crit_edge:   ; preds = %do.body466.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then470.i.i:                                   ; preds = %do.body466.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr @pmsr_parse_ftm.__msg.19, ptr %296, align 4
  %298 = ptrtoint ptr %arrayidx431.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %arrayidx431.i.i, align 4
  %bad_attr473.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %296, i32 0, i32 1
  %300 = ptrtoint ptr %bad_attr473.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %299, ptr %bad_attr473.i.i, align 4
  %policy474.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %296, i32 0, i32 2
  %301 = ptrtoint ptr %policy474.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr null, ptr %policy474.i.i, align 4
  br label %pmsr_parse_ftm.exit.i

if.end478.i.i:                                    ; preds = %if.end430.i.i
  %302 = ptrtoint ptr %arrayidx479.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx479.i.i, align 4
  %tobool480.not.i.i = icmp eq ptr %303, null
  br i1 %tobool480.not.i.i, label %if.end478.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then481.i.i

if.end478.i.i.pmsr_parse_ftm.exit.i_crit_edge:    ; preds = %if.end478.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then481.i.i:                                   ; preds = %if.end478.i.i
  %or.cond640.i.i = and i1 %tobool290.not.i.i, %tobool331.not663.i.i
  br i1 %or.cond640.i.i, label %do.body496.i.i, label %if.end508.i.i

do.body496.i.i:                                   ; preds = %if.then481.i.i
  %304 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_ftm.__msg.20) #8
  %tobool499.not.i.i = icmp eq ptr %305, null
  br i1 %tobool499.not.i.i, label %do.body496.i.i.pmsr_parse_ftm.exit.i_crit_edge, label %if.then500.i.i

do.body496.i.i.pmsr_parse_ftm.exit.i_crit_edge:   ; preds = %do.body496.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_ftm.exit.i

if.then500.i.i:                                   ; preds = %do.body496.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr @pmsr_parse_ftm.__msg.20, ptr %305, align 4
  %307 = ptrtoint ptr %arrayidx479.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %arrayidx479.i.i, align 4
  %bad_attr503.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %305, i32 0, i32 1
  %309 = ptrtoint ptr %bad_attr503.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %308, ptr %bad_attr503.i.i, align 4
  %policy504.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %305, i32 0, i32 2
  %310 = ptrtoint ptr %policy504.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr null, ptr %policy504.i.i, align 4
  br label %pmsr_parse_ftm.exit.i

if.end508.i.i:                                    ; preds = %if.then481.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i647.i.i = getelementptr i8, ptr %303, i32 4
  %311 = ptrtoint ptr %add.ptr.i.i647.i.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %add.ptr.i.i647.i.i, align 1
  %313 = ptrtoint ptr %bss_color.i.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %312, ptr %bss_color.i.i, align 1
  br label %pmsr_parse_ftm.exit.i

pmsr_parse_ftm.exit.i:                            ; preds = %if.end508.i.i, %if.then500.i.i, %do.body496.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.end478.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.then470.i.i, %do.body466.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.then422.i.i, %do.body418.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.then391.i.i, %do.body387.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.then362.i.i, %do.body358.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.then321.i.i, %do.body317.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.then188.i.i, %do.body184.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.then137.i.i, %do.body133.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.then104.i.i, %do.body100.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.then78.i.i, %do.body74.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.then35.i.i, %do.body31.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.then20.i.i, %do.body16.i.i.pmsr_parse_ftm.exit.i_crit_edge, %if.then4.i.i, %do.body.i.i.pmsr_parse_ftm.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %if.then4.i.i ], [ -22, %do.body.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ -22, %if.then20.i.i ], [ -22, %do.body16.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ -22, %if.then35.i.i ], [ -22, %do.body31.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ -22, %if.then78.i.i ], [ -22, %do.body74.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ -22, %if.then104.i.i ], [ -22, %do.body100.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ -22, %if.then137.i.i ], [ -22, %do.body133.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ -22, %if.then188.i.i ], [ -22, %do.body184.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ -22, %if.then321.i.i ], [ -22, %do.body317.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ -22, %if.then362.i.i ], [ -22, %do.body358.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ -22, %if.then391.i.i ], [ -22, %do.body387.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ -22, %if.then422.i.i ], [ -22, %do.body418.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ -22, %if.then470.i.i ], [ -22, %do.body466.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ -22, %if.then500.i.i ], [ -22, %do.body496.i.i.pmsr_parse_ftm.exit.i_crit_edge ], [ 0, %if.end508.i.i ], [ 0, %if.end478.i.i.pmsr_parse_ftm.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tb.i.i) #8
  br label %for.inc.i

do.body75.i:                                      ; preds = %for.body.i
  %314 = ptrtoint ptr %extack14.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %extack14.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @pmsr_parse_peer.__msg.6) #8
  %tobool78.not.i = icmp eq ptr %315, null
  br i1 %tobool78.not.i, label %do.body75.i.for.inc.i_crit_edge, label %if.then79.i

do.body75.i.for.inc.i_crit_edge:                  ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then79.i:                                      ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #10
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr @pmsr_parse_peer.__msg.6, ptr %315, align 4
  %bad_attr81.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %315, i32 0, i32 1
  %317 = ptrtoint ptr %bad_attr81.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %treq.0156.i234, ptr %bad_attr81.i, align 4
  %policy82.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %315, i32 0, i32 2
  %318 = ptrtoint ptr %policy82.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr null, ptr %policy82.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then79.i, %do.body75.i.for.inc.i_crit_edge, %pmsr_parse_ftm.exit.i
  %err.1.i = phi i32 [ %retval.0.i.i, %pmsr_parse_ftm.exit.i ], [ -22, %if.then79.i ], [ -22, %do.body75.i.for.inc.i_crit_edge ]
  %319 = ptrtoint ptr %treq.0156.i234 to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %treq.0156.i234, align 2
  %conv.i148.i = zext i16 %320 to i32
  %sub.i149.i = add nuw nsw i32 %conv.i148.i, 3
  %and.i150.i = and i32 %sub.i149.i, 131068
  %sub1.i.i = sub nsw i32 %rem.0155.i237, %and.i150.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i.i)
  %cmp.i.i185 = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i.i185, label %land.lhs.true.i.i, label %for.inc.i.pmsr_parse_peer.exit_crit_edge

for.inc.i.pmsr_parse_peer.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmsr_parse_peer.exit

cleanup.sink.split.i:                             ; preds = %if.then58.i, %if.then33.i, %if.then7.i
  %.sink160.i = phi ptr [ %110, %if.then58.i ], [ %98, %if.then33.i ], [ %80, %if.then7.i ]
  %.sink159.i = phi ptr [ %113, %if.then58.i ], [ %101, %if.then33.i ], [ %peer.1242, %if.then7.i ]
  %bad_attr61.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %.sink160.i, i32 0, i32 1
  %321 = ptrtoint ptr %bad_attr61.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %.sink159.i, ptr %bad_attr61.i, align 4
  %policy62.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %.sink160.i, i32 0, i32 2
  %322 = ptrtoint ptr %policy62.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr null, ptr %policy62.i, align 4
  br label %pmsr_parse_peer.exit.thread

pmsr_parse_peer.exit.thread:                      ; preds = %cleanup.sink.split.i, %do.body54.i.pmsr_parse_peer.exit.thread_crit_edge, %do.body29.i.pmsr_parse_peer.exit.thread_crit_edge, %if.end18.i.pmsr_parse_peer.exit.thread_crit_edge, %if.end8.i.pmsr_parse_peer.exit.thread_crit_edge, %do.body.i.pmsr_parse_peer.exit.thread_crit_edge
  %retval.0.i186.ph = phi i32 [ -22, %cleanup.sink.split.i ], [ -22, %do.body54.i.pmsr_parse_peer.exit.thread_crit_edge ], [ -22, %do.body29.i.pmsr_parse_peer.exit.thread_crit_edge ], [ -22, %do.body.i.pmsr_parse_peer.exit.thread_crit_edge ], [ %call2.i137.i, %if.end8.i.pmsr_parse_peer.exit.thread_crit_edge ], [ %call19.i, %if.end18.i.pmsr_parse_peer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i) #8
  br label %out_err

pmsr_parse_peer.exit:                             ; preds = %for.inc.i.pmsr_parse_peer.exit_crit_edge, %land.lhs.true.i.i.pmsr_parse_peer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool80.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool80.not, label %pmsr_parse_peer.exit.if.end82_crit_edge, label %pmsr_parse_peer.exit.out_err_crit_edge

pmsr_parse_peer.exit.out_err_crit_edge:           ; preds = %pmsr_parse_peer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

pmsr_parse_peer.exit.if.end82_crit_edge:          ; preds = %pmsr_parse_peer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.end82:                                         ; preds = %pmsr_parse_peer.exit.if.end82_crit_edge, %pmsr_parse_peer.exit.thread251, %pmsr_parse_peer.exit.thread202
  %inc83 = add i32 %idx.0243, 1
  %323 = ptrtoint ptr %peer.1242 to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %peer.1242, align 2
  %conv.i187 = zext i16 %324 to i32
  %sub.i188 = add nuw nsw i32 %conv.i187, 3
  %and.i189 = and i32 %sub.i188, 131068
  %sub1.i190 = sub i32 %rem.1241, %and.i189
  %add.ptr.i191 = getelementptr i8, ptr %peer.1242, i32 %and.i189
  %cmp.i173 = icmp sgt i32 %sub1.i190, 3
  br i1 %cmp.i173, label %if.end82.land.lhs.true.i175_crit_edge, label %if.end82.for.end86_crit_edge

if.end82.for.end86_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86

if.end82.land.lhs.true.i175_crit_edge:            ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i175

for.end86:                                        ; preds = %if.end82.for.end86_crit_edge, %land.lhs.true.i175.for.end86_crit_edge, %if.end70.for.end86_crit_edge
  %n_peers = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 2
  %325 = ptrtoint ptr %n_peers to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %count.0.lcssa, ptr %n_peers, align 4
  %call87 = call fastcc i64 @cfg80211_assign_cookie(ptr noundef %5)
  %326 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store8_noabort(i32 %326)
  store i64 %call87, ptr %call9.i.i, align 128
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %327 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %snd_portid, align 4
  %nl_portid = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 3
  %329 = ptrtoint ptr %nl_portid to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %328, ptr %nl_portid, align 16
  %call88 = call fastcc i32 @rdev_start_pmsr(ptr noundef %5, ptr noundef %7, ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %for.end86.out_err_crit_edge

for.end86.out_err_crit_edge:                      ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end91:                                         ; preds = %for.end86
  %list = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 7
  %pmsr_list = getelementptr inbounds %struct.wireless_dev, ptr %7, i32 0, i32 41
  %prev.i = getelementptr inbounds %struct.wireless_dev, ptr %7, i32 0, i32 41, i32 1
  %330 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %331, ptr noundef %pmsr_list) #8
  br i1 %call.i.i, label %if.end.i.i192, label %if.end91.list_add_tail.exit_crit_edge

if.end91.list_add_tail.exit_crit_edge:            ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i192:                                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %332 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %list, ptr %prev.i, align 4
  %333 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %pmsr_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %call9.i.i, i32 0, i32 7, i32 1
  %334 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %331, ptr %prev3.i.i, align 8
  %335 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %335)
  store volatile ptr %list, ptr %331, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i192, %if.end91.list_add_tail.exit_crit_edge
  %extack92 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %336 = ptrtoint ptr %extack92 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %extack92, align 4
  %tobool.not.i193 = icmp eq ptr %337, null
  br i1 %tobool.not.i193, label %list_add_tail.exit.cleanup_crit_edge, label %if.end.i194

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i194:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %338 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load8_noabort(i32 %338)
  %339 = load i64, ptr %call9.i.i, align 128
  %cookie1.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %337, i32 0, i32 3
  %340 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_storeN_noabort(i32 %340, i32 8)
  store i64 %339, ptr %cookie1.i, align 4
  %cookie_len.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %337, i32 0, i32 4
  %341 = ptrtoint ptr %cookie_len.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 8, ptr %cookie_len.i, align 4
  br label %cleanup

out_err:                                          ; preds = %for.end86.out_err_crit_edge, %pmsr_parse_peer.exit.out_err_crit_edge, %pmsr_parse_peer.exit.thread, %if.end58.out_err_crit_edge, %if.then49, %do.body45.out_err_crit_edge
  %err.0 = phi i32 [ %call61, %if.end58.out_err_crit_edge ], [ %call88, %for.end86.out_err_crit_edge ], [ -22, %if.then49 ], [ -22, %do.body45.out_err_crit_edge ], [ %retval.0.i186.ph, %pmsr_parse_peer.exit.thread ], [ %err.1.i, %pmsr_parse_peer.exit.out_err_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end.i194, %list_add_tail.exit.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.then20, %do.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_err ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.then20 ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ 0, %if.end.i194 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nl80211_parse_random_mac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @cfg80211_assign_cookie(ptr nocapture noundef %rdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %cookie_counter = getelementptr inbounds %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 16
  %0 = ptrtoint ptr %cookie_counter to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cookie_counter, align 16
  %inc = add i64 %1, 1
  store i64 %inc, ptr %cookie_counter, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc)
  %cmp = icmp eq i64 %inc, 0
  br i1 %cmp, label %do.end, label %entry.if.end23_crit_edge, !prof !90

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 147, i32 noundef 9, ptr noundef null) #8
  %2 = ptrtoint ptr %cookie_counter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cookie_counter, align 16
  %inc22 = add i64 %3, 1
  store i64 %inc22, ptr %cookie_counter, align 16
  br label %if.end23

if.end23:                                         ; preds = %do.end, %entry.if.end23_crit_edge
  %r.0 = phi i64 [ %inc22, %do.end ], [ %inc, %entry.if.end23_crit_edge ]
  ret i64 %r.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rdev_start_pmsr(ptr noundef %rdev, ptr noundef %wdev, ptr noundef %request) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy = getelementptr inbounds %struct.cfg80211_registered_device, ptr %rdev, i32 0, i32 48
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %request, align 8
  tail call fastcc void @trace_rdev_start_pmsr(ptr noundef %wiphy, ptr noundef %wdev, i64 noundef %1)
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 32
  %start_pmsr = getelementptr inbounds %struct.cfg80211_ops, ptr %3, i32 0, i32 107
  %4 = ptrtoint ptr %start_pmsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start_pmsr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %5(ptr noundef %wiphy, ptr noundef %wdev, ptr noundef %request) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -95, %entry.if.end_crit_edge ]
  tail call fastcc void @trace_rdev_return_int(ptr noundef %wiphy, i32 noundef %ret.0)
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_pmsr_complete(ptr noundef %wdev, ptr noundef %req, i32 noundef %gfp) #0 align 64 {
entry:
  %tmp.i66 = alloca i64, align 8
  %tmp.i64 = alloca i64, align 8
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !90

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #8, !srcloc !91
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %req, align 8
  tail call fastcc void @trace_cfg80211_pmsr_complete(ptr noundef nonnull %1, ptr noundef %wdev, i64 noundef %3)
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %wiphy_to_rdev.exit.free_request_crit_edge, label %if.end

wiphy_to_rdev.exit.free_request_crit_edge:        ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_request

if.end:                                           ; preds = %wiphy_to_rdev.exit
  %call3 = tail call ptr @nl80211hdr_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext -123) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.free_msg_crit_edge, label %if.end6

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end6:                                          ; preds = %if.end
  %wiphy_idx = getelementptr i8, ptr %1, i32 -1040
  %4 = ptrtoint ptr %wiphy_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wiphy_idx, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end6.free_msg_crit_edge

if.end6.free_msg_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

lor.lhs.false:                                    ; preds = %if.end6
  %7 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wdev, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wdev_id.exit, !prof !90

do.body4.i.i:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #8, !srcloc !91
  unreachable

wdev_id.exit:                                     ; preds = %lor.lhs.false
  %identifier.i = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 4
  %9 = ptrtoint ptr %identifier.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %identifier.i, align 4
  %conv.i = zext i32 %10 to i64
  %wiphy_idx.i = getelementptr i8, ptr %8, i32 -1040
  %11 = ptrtoint ptr %wiphy_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wiphy_idx.i, align 16
  %conv13.i = zext i32 %12 to i64
  %shl.i = shl nuw i64 %conv13.i, 32
  %or.i = or i64 %shl.i, %conv.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i64) #8
  %13 = ptrtoint ptr %tmp.i64 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or.i, ptr %tmp.i64, align 8
  %call.i65 = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i, i32 noundef 153, i32 noundef 8, ptr noundef nonnull %tmp.i64, i32 noundef 229) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool11.not = icmp eq i32 %call.i65, 0
  br i1 %tobool11.not, label %if.end13, label %wdev_id.exit.free_msg_crit_edge

wdev_id.exit.free_msg_crit_edge:                  ; preds = %wdev_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end13:                                         ; preds = %wdev_id.exit
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %req, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i66) #8
  %16 = ptrtoint ptr %tmp.i66 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tmp.i66, align 8
  %call.i67 = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i, i32 noundef 88, i32 noundef 8, ptr noundef nonnull %tmp.i66, i32 noundef 229) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool16.not = icmp eq i32 %call.i67, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.free_msg_crit_edge

if.end13.free_msg_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i = getelementptr i8, ptr %call3, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %19 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %20 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wdev, align 4
  %_net.i = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 62
  %22 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_net.i, align 4
  %nl_portid = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 3
  %24 = ptrtoint ptr %nl_portid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nl_portid, align 8
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 21
  %26 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %genl_sock.i, align 4
  %call.i.i68 = call i32 @netlink_unicast(ptr noundef %27, ptr noundef nonnull %call.i.i, i32 noundef %25, i32 noundef 64) #8
  br label %free_request

free_msg:                                         ; preds = %if.end13.free_msg_crit_edge, %wdev_id.exit.free_msg_crit_edge, %if.end6.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %free_request

free_request:                                     ; preds = %free_msg, %if.end18, %wiphy_to_rdev.exit.free_request_crit_edge
  %pmsr_lock = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 42
  call void @_raw_spin_lock_bh(ptr noundef %pmsr_lock) #8
  %pmsr_list = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 41
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %free_request
  %.pn.in.in = phi ptr [ %pmsr_list, %free_request ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %28 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %pmsr_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %tmp.0 = getelementptr i8, ptr %.pn.in, i32 -36
  %cmp29 = icmp eq ptr %tmp.0, %req
  br i1 %cmp29, label %if.then30, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then30:                                        ; preds = %for.body
  %list31 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 7
  %call.i.i69 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list31) #8
  br i1 %call.i.i69, label %if.end.i.i, label %if.then30.list_del.exit_crit_edge

if.then30.list_del.exit_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %list31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %list31, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then30.list_del.exit_crit_edge
  %35 = ptrtoint ptr %list31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %list31, align 4
  %prev.i = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %to_free.0 = phi ptr [ %req, %list_del.exit ], [ null, %for.cond.for.end_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %pmsr_lock) #8
  call void @kfree(ptr noundef %to_free.0) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cfg80211_pmsr_complete(ptr noundef %wiphy, ptr noundef %wdev, i64 noundef %cookie) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_pmsr_complete, i32 0, i32 1), ptr blockaddress(@trace_cfg80211_pmsr_complete, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !94
  %call42 = tail call i32 @__traceiter_cfg80211_pmsr_complete(ptr noundef null, ptr noundef %wiphy, ptr noundef %wdev, i64 noundef %cookie) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_pmsr_complete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_pmsr_complete, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cfg80211_pmsr_complete.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_cfg80211_pmsr_complete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 3521, ptr noundef nonnull @.str.23) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
declare dso_local ptr @nl80211hdr_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_pmsr_report(ptr noundef %wdev, ptr nocapture noundef readonly %req, ptr noundef %result, i32 noundef %gfp) #0 align 64 {
entry:
  %tmp.i124.i = alloca i64, align 8
  %tmp.i122.i = alloca i64, align 8
  %tmp.i.i = alloca i32, align 4
  %tmp.i52 = alloca i64, align 8
  %tmp.i50 = alloca i64, align 8
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !90

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #8, !srcloc !91
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %req, align 8
  %addr = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 3
  tail call fastcc void @trace_cfg80211_pmsr_report(ptr noundef nonnull %1, ptr noundef %wdev, i64 noundef %3, ptr noundef %addr)
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %wiphy_to_rdev.exit.cleanup_crit_edge, label %if.end

wiphy_to_rdev.exit.cleanup_crit_edge:             ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %wiphy_to_rdev.exit
  %call3 = tail call ptr @nl80211hdr_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext -124) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.free_crit_edge, label %if.end6

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end6:                                          ; preds = %if.end
  %wiphy_idx = getelementptr i8, ptr %1, i32 -1040
  %4 = ptrtoint ptr %wiphy_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wiphy_idx, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end6.free_crit_edge

if.end6.free_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

lor.lhs.false:                                    ; preds = %if.end6
  %7 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wdev, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wdev_id.exit, !prof !90

do.body4.i.i:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #8, !srcloc !91
  unreachable

wdev_id.exit:                                     ; preds = %lor.lhs.false
  %identifier.i = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 4
  %9 = ptrtoint ptr %identifier.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %identifier.i, align 4
  %conv.i = zext i32 %10 to i64
  %wiphy_idx.i = getelementptr i8, ptr %8, i32 -1040
  %11 = ptrtoint ptr %wiphy_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wiphy_idx.i, align 16
  %conv13.i = zext i32 %12 to i64
  %shl.i = shl nuw i64 %conv13.i, 32
  %or.i = or i64 %shl.i, %conv.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i50) #8
  %13 = ptrtoint ptr %tmp.i50 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or.i, ptr %tmp.i50, align 8
  %call.i51 = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i, i32 noundef 153, i32 noundef 8, ptr noundef nonnull %tmp.i50, i32 noundef 229) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool11.not = icmp eq i32 %call.i51, 0
  br i1 %tobool11.not, label %if.end13, label %wdev_id.exit.free_crit_edge

wdev_id.exit.free_crit_edge:                      ; preds = %wdev_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end13:                                         ; preds = %wdev_id.exit
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %req, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i52) #8
  %16 = ptrtoint ptr %tmp.i52 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tmp.i52, align 8
  %call.i53 = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i, i32 noundef 88, i32 noundef 8, ptr noundef nonnull %tmp.i52, i32 noundef 229) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool16.not = icmp eq i32 %call.i53, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.free_crit_edge

if.end13.free_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end18:                                         ; preds = %if.end13
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 273, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not161.i = icmp eq ptr %18, null
  %tobool.not.i54 = select i1 %cmp.i.i, i1 true, i1 %tobool.not161.i
  br i1 %tobool.not.i54, label %if.end18.if.then21_crit_edge, label %if.end.i

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end.i:                                         ; preds = %if.end18
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i111.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 5, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111.i)
  %cmp.i112.i = icmp slt i32 %call1.i111.i, 0
  %tobool2.not162.i = icmp eq ptr %20, null
  %tobool2.not.i = select i1 %cmp.i112.i, i1 true, i1 %tobool2.not162.i
  br i1 %tobool2.not.i, label %if.end.i.if.then21_crit_edge, label %if.end4.i

if.end.i.if.then21_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end4.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i115.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115.i)
  %cmp.i116.i = icmp slt i32 %call1.i115.i, 0
  %tobool6.not163.i = icmp eq ptr %22, null
  %tobool6.not.i = select i1 %cmp.i116.i, i1 true, i1 %tobool6.not163.i
  br i1 %tobool6.not.i, label %if.end4.i.if.then21_crit_edge, label %if.end8.i

if.end4.i.if.then21_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 6, ptr noundef %addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.if.then21_crit_edge

if.end8.i.if.then21_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end12.i:                                       ; preds = %if.end8.i
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i119.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119.i)
  %cmp.i120.i = icmp slt i32 %call1.i119.i, 0
  %tobool14.not164.i = icmp eq ptr %24, null
  %tobool14.not.i = select i1 %cmp.i120.i, i1 true, i1 %tobool14.not164.i
  br i1 %tobool14.not.i, label %if.end12.i.if.then21_crit_edge, label %if.end16.i

if.end12.i.if.then21_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end16.i:                                       ; preds = %if.end12.i
  %status.i = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 2
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %27 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tmp.i.i, align 4
  %call.i.i55 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55)
  %tobool18.not.i = icmp eq i32 %call.i.i55, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i, label %if.end16.i.if.then21_crit_edge

if.end16.i.if.then21_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %28 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %result, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i122.i) #8
  %30 = ptrtoint ptr %tmp.i122.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %tmp.i122.i, align 8
  %call.i123.i = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i122.i, i32 noundef 6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i122.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123.i)
  %tobool20.not.i = icmp eq i32 %call.i123.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %lor.lhs.false.i.if.then21_crit_edge

lor.lhs.false.i.if.then21_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end22.i:                                       ; preds = %lor.lhs.false.i
  %ap_tsf_valid.i = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 4
  %31 = ptrtoint ptr %ap_tsf_valid.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %ap_tsf_valid.i, align 2
  %32 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool23.not.i = icmp eq i8 %32, 0
  br i1 %tobool23.not.i, label %if.end22.i.if.end27.i_crit_edge, label %land.lhs.true.i

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

land.lhs.true.i:                                  ; preds = %if.end22.i
  %ap_tsf.i = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 1
  %33 = ptrtoint ptr %ap_tsf.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ap_tsf.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i124.i) #8
  %35 = ptrtoint ptr %tmp.i124.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %tmp.i124.i, align 8
  %call.i125.i = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i124.i, i32 noundef 6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i124.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125.i)
  %tobool25.not.i = icmp eq i32 %call.i125.i, 0
  br i1 %tobool25.not.i, label %if.end27thread-pre-split.i, label %land.lhs.true.i.if.then21_crit_edge

land.lhs.true.i.if.then21_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end27thread-pre-split.i:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %ap_tsf_valid.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load28.pr.i = load i8, ptr %ap_tsf_valid.i, align 2
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end27thread-pre-split.i, %if.end22.i.if.end27.i_crit_edge
  %bf.load28.i = phi i8 [ %bf.load28.pr.i, %if.end27thread-pre-split.i ], [ %bf.load.i, %if.end22.i.if.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load28.i)
  %tobool31.not.i = icmp sgt i8 %bf.load28.i, -1
  br i1 %tobool31.not.i, label %if.end27.i.if.end36.i_crit_edge, label %land.lhs.true32.i

if.end27.i.if.end36.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

land.lhs.true32.i:                                ; preds = %if.end27.i
  %call.i126.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 5, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126.i)
  %tobool34.not.i = icmp eq i32 %call.i126.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true32.i.if.end36.i_crit_edge, label %land.lhs.true32.i.if.then21_crit_edge

land.lhs.true32.i.if.then21_crit_edge:            ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

land.lhs.true32.i.if.end36.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.end36.i:                                       ; preds = %land.lhs.true32.i.if.end36.i_crit_edge, %if.end27.i.if.end36.i_crit_edge
  %37 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i128.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i128.i)
  %cmp.i129.i = icmp slt i32 %call1.i128.i, 0
  %tobool38.not165.i = icmp eq ptr %38, null
  %tobool38.not.i = select i1 %cmp.i129.i, i1 true, i1 %tobool38.not165.i
  br i1 %tobool38.not.i, label %if.end36.i.if.then21_crit_edge, label %if.end40.i

if.end36.i.if.then21_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end40.i:                                       ; preds = %if.end36.i
  %type.i = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 5
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type.i, align 4
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i132.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef %40, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132.i)
  %cmp.i133.i = icmp slt i32 %call1.i132.i, 0
  %tobool42.not166.i = icmp eq ptr %42, null
  %tobool42.not.i = select i1 %cmp.i133.i, i1 true, i1 %tobool42.not166.i
  br i1 %tobool42.not.i, label %if.end40.i.if.then21_crit_edge, label %if.end44.i

if.end40.i.if.then21_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end44.i:                                       ; preds = %if.end40.i
  %43 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cond.i = icmp eq i32 %44, 1
  br i1 %cond.i, label %sw.bb.i, label %do.end.i

sw.bb.i:                                          ; preds = %if.end44.i
  %call46.i = call fastcc i32 @nl80211_pmsr_send_ftm_res(ptr noundef nonnull %call.i.i, ptr noundef %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %sw.bb.i.if.end27_crit_edge, label %sw.bb.i.if.then21_crit_edge

sw.bb.i.if.then21_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

sw.bb.i.if.end27_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end.i:                                         ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 536, i32 noundef 9, ptr noundef null) #8
  br label %if.end27

if.then21:                                        ; preds = %sw.bb.i.if.then21_crit_edge, %if.end40.i.if.then21_crit_edge, %if.end36.i.if.then21_crit_edge, %land.lhs.true32.i.if.then21_crit_edge, %land.lhs.true.i.if.then21_crit_edge, %lor.lhs.false.i.if.then21_crit_edge, %if.end16.i.if.then21_crit_edge, %if.end12.i.if.then21_crit_edge, %if.end8.i.if.then21_crit_edge, %if.end4.i.if.then21_crit_edge, %if.end.i.if.then21_crit_edge, %if.end18.if.then21_crit_edge
  %call22 = call i32 @___ratelimit(ptr noundef nonnull @cfg80211_pmsr_report._rs, ptr noundef nonnull @__func__.cfg80211_pmsr_report) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.free_crit_edge, label %do.end

if.then21.free_crit_edge:                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %free

if.end27:                                         ; preds = %do.end.i, %sw.bb.i.if.end27_crit_edge
  %45 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i.i, ptr %42, align 2
  %48 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i137.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i138.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i139.i = sub i32 %sub.ptr.lhs.cast.i137.i, %sub.ptr.rhs.cast.i138.i
  %conv.i140.i = trunc i32 %sub.ptr.sub.i139.i to i16
  %49 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i140.i, ptr %38, align 2
  %50 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i142.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i143.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i144.i = sub i32 %sub.ptr.lhs.cast.i142.i, %sub.ptr.rhs.cast.i143.i
  %conv.i145.i = trunc i32 %sub.ptr.sub.i144.i to i16
  %51 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i145.i, ptr %24, align 2
  %52 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i147.i = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i148.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i149.i = sub i32 %sub.ptr.lhs.cast.i147.i, %sub.ptr.rhs.cast.i148.i
  %conv.i150.i = trunc i32 %sub.ptr.sub.i149.i to i16
  %53 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i150.i, ptr %22, align 2
  %54 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i152.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i153.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i154.i = sub i32 %sub.ptr.lhs.cast.i152.i, %sub.ptr.rhs.cast.i153.i
  %conv.i155.i = trunc i32 %sub.ptr.sub.i154.i to i16
  %55 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i155.i, ptr %20, align 2
  %56 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i157.i = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i158.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i159.i = sub i32 %sub.ptr.lhs.cast.i157.i, %sub.ptr.rhs.cast.i158.i
  %conv.i160.i = trunc i32 %sub.ptr.sub.i159.i to i16
  %57 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i160.i, ptr %18, align 2
  %add.ptr1.i = getelementptr i8, ptr %call3, i32 -20
  %58 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i57 = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i.i58 = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i59 = sub i32 %sub.ptr.lhs.cast.i.i57, %sub.ptr.rhs.cast.i.i58
  %59 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub.ptr.sub.i.i59, ptr %add.ptr1.i, align 4
  %60 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wdev, align 4
  %_net.i = getelementptr inbounds %struct.wiphy, ptr %61, i32 0, i32 62
  %62 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %_net.i, align 4
  %nl_portid = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 3
  %64 = ptrtoint ptr %nl_portid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nl_portid, align 8
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %63, i32 0, i32 21
  %66 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %genl_sock.i, align 4
  %call.i.i60 = call i32 @netlink_unicast(ptr noundef %67, ptr noundef nonnull %call.i.i, i32 noundef %65, i32 noundef 64) #8
  br label %cleanup

free:                                             ; preds = %do.end, %if.then21.free_crit_edge, %if.end13.free_crit_edge, %wdev_id.exit.free_crit_edge, %if.end6.free_crit_edge, %if.end.free_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end27, %wiphy_to_rdev.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cfg80211_pmsr_report(ptr noundef %wiphy, ptr noundef %wdev, i64 noundef %cookie, ptr noundef %addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_pmsr_report, i32 0, i32 1), ptr blockaddress(@trace_cfg80211_pmsr_report, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !98
  %call42 = tail call i32 @__traceiter_cfg80211_pmsr_report(ptr noundef null, ptr noundef %wiphy, ptr noundef %wdev, i64 noundef %cookie, ptr noundef %addr) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_pmsr_report, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_pmsr_report, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cfg80211_pmsr_report.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_cfg80211_pmsr_report.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 3503, ptr noundef nonnull @.str.23) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_pmsr_free_wk(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -916
  %mtx.i = getelementptr i8, ptr %work, i32 -880
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #8
  tail call fastcc void @cfg80211_pmsr_process_abort(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cfg80211_pmsr_process_abort(ptr noundef %wdev) unnamed_addr #0 align 64 {
entry:
  %free_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_to_rdev.exit, !prof !90

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #8, !srcloc !91
  unreachable

wiphy_to_rdev.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %free_list) #8
  %2 = getelementptr inbounds %struct.list_head, ptr %free_list, i32 0, i32 1
  %3 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %free_list, ptr %free_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free_list, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %wiphy_to_rdev.exit.if.end_crit_edge, label %land.rhs

wiphy_to_rdev.exit.if.end_crit_edge:              ; preds = %wiphy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %wiphy_to_rdev.exit
  %dep_map = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 7, i32 5
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !90

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 606, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %wiphy_to_rdev.exit.if.end_crit_edge
  %pmsr_lock = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 42
  call void @_raw_spin_lock_bh(ptr noundef %pmsr_lock) #8
  %pmsr_list = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 41
  %6 = ptrtoint ptr %pmsr_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmsr_list, align 4
  %cmp34.not91 = icmp eq ptr %7, %pmsr_list
  br i1 %cmp34.not91, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in92 = phi ptr [ %.pn94, %for.inc.for.body_crit_edge ], [ %7, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %.pn.in92 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn94 = load ptr, ptr %.pn.in92, align 4
  %nl_portid = getelementptr i8, ptr %.pn.in92, i32 -20
  %9 = ptrtoint ptr %nl_portid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nl_portid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool37.not = icmp eq i32 %10, 0
  br i1 %tobool37.not, label %if.end39, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end39:                                         ; preds = %for.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in92) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end39.__list_del_entry.exit.i_crit_edge

if.end39.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in92, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn.in92 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in92, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end39.__list_del_entry.exit.i_crit_edge
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in92, ptr noundef %18, ptr noundef nonnull %free_list) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.pn.in92, ptr %2, align 4
  %20 = ptrtoint ptr %.pn.in92 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %free_list, ptr %.pn.in92, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in92, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %.pn.in92, ptr %18, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp34.not = icmp eq ptr %.pn94, %pmsr_list
  br i1 %cmp34.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %pmsr_lock) #8
  %23 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %free_list, align 4
  %cmp58.not95 = icmp eq ptr %24, %free_list
  br i1 %cmp58.not95, label %for.end.for.end68_crit_edge, label %for.end.for.body61_crit_edge

for.end.for.body61_crit_edge:                     ; preds = %for.end
  br label %for.body61

for.end.for.end68_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end68

for.body61:                                       ; preds = %rdev_abort_pmsr.exit.for.body61_crit_edge, %for.end.for.body61_crit_edge
  %.pn86.in96 = phi ptr [ %.pn86, %rdev_abort_pmsr.exit.for.body61_crit_edge ], [ %24, %for.end.for.body61_crit_edge ]
  %req.1 = getelementptr i8, ptr %.pn86.in96, i32 -36
  %25 = ptrtoint ptr %.pn86.in96 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn86 = load ptr, ptr %.pn86.in96, align 4
  %26 = ptrtoint ptr %req.1 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %req.1, align 8
  call fastcc void @trace_rdev_abort_pmsr(ptr noundef nonnull %1, ptr noundef %wdev, i64 noundef %27) #8
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 32
  %abort_pmsr.i = getelementptr inbounds %struct.cfg80211_ops, ptr %29, i32 0, i32 108
  %30 = ptrtoint ptr %abort_pmsr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %abort_pmsr.i, align 4
  %tobool.not.i89 = icmp eq ptr %31, null
  br i1 %tobool.not.i89, label %for.body61.rdev_abort_pmsr.exit_crit_edge, label %if.then.i

for.body61.rdev_abort_pmsr.exit_crit_edge:        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %rdev_abort_pmsr.exit

if.then.i:                                        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  call void %31(ptr noundef nonnull %1, ptr noundef %wdev, ptr noundef %req.1) #8
  br label %rdev_abort_pmsr.exit

rdev_abort_pmsr.exit:                             ; preds = %if.then.i, %for.body61.rdev_abort_pmsr.exit_crit_edge
  call fastcc void @trace_rdev_return_void(ptr noundef nonnull %1) #8
  call void @kfree(ptr noundef %req.1) #8
  %cmp58.not = icmp eq ptr %.pn86, %free_list
  br i1 %cmp58.not, label %rdev_abort_pmsr.exit.for.end68_crit_edge, label %rdev_abort_pmsr.exit.for.body61_crit_edge

rdev_abort_pmsr.exit.for.body61_crit_edge:        ; preds = %rdev_abort_pmsr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body61

rdev_abort_pmsr.exit.for.end68_crit_edge:         ; preds = %rdev_abort_pmsr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end68

for.end68:                                        ; preds = %rdev_abort_pmsr.exit.for.end68_crit_edge, %for.end.for.end68_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %free_list) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_pmsr_wdev_down(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmsr_lock = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 42
  tail call void @_raw_spin_lock_bh(ptr noundef %pmsr_lock) #8
  %pmsr_list = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 41
  %0 = ptrtoint ptr %pmsr_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn42 = load ptr, ptr %pmsr_list, align 4
  %cmp.not43 = icmp eq ptr %.pn42, %pmsr_list
  br i1 %cmp.not43, label %if.end.critedge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn44 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn42, %entry.for.body_crit_edge ]
  %nl_portid = getelementptr i8, ptr %.pn44, i32 -20
  %1 = ptrtoint ptr %nl_portid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nl_portid, align 8
  %2 = ptrtoint ptr %.pn44 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn44, align 4
  %cmp.not = icmp eq ptr %.pn, %pmsr_list
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %pmsr_lock) #8
  tail call fastcc void @cfg80211_pmsr_process_abort(ptr noundef %wdev)
  br label %if.end

if.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %pmsr_lock) #8
  br label %if.end

if.end:                                           ; preds = %if.end.critedge, %for.end
  %3 = ptrtoint ptr %pmsr_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pmsr_list, align 4
  %cmp.i.not = icmp eq ptr %4, %pmsr_list
  br i1 %cmp.i.not, label %if.end.if.end26_crit_edge, label %do.end, !prof !93

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 648, i32 noundef 9, ptr noundef null) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.end.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg80211_release_pmsr(ptr noundef %wdev, i32 noundef %portid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmsr_lock = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 42
  tail call void @_raw_spin_lock_bh(ptr noundef %pmsr_lock) #8
  %pmsr_list = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 41
  %0 = ptrtoint ptr %pmsr_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn17 = load ptr, ptr %pmsr_list, align 4
  %cmp.not18 = icmp eq ptr %.pn17, %pmsr_list
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pmsr_free_wk = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 43
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn19 = phi ptr [ %.pn17, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %nl_portid = getelementptr i8, ptr %.pn19, i32 -20
  %1 = ptrtoint ptr %nl_portid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nl_portid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %portid)
  %cmp2 = icmp eq i32 %2, %portid
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %nl_portid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nl_portid, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %pmsr_free_wk) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn19, align 4
  %cmp.not = icmp eq ptr %.pn, %pmsr_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %pmsr_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nl80211_parse_chandef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_start_pmsr(ptr noundef %wiphy, ptr noundef %wdev, i64 noundef %cookie) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_start_pmsr, i32 0, i32 1), ptr blockaddress(@trace_rdev_start_pmsr, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  %call42 = tail call i32 @__traceiter_rdev_start_pmsr(ptr noundef null, ptr noundef %wiphy, ptr noundef %wdev, i64 noundef %cookie) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_start_pmsr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_start_pmsr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_start_pmsr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rdev_start_pmsr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 2623, ptr noundef nonnull @.str.23) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_return_int(ptr noundef %wiphy, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), ptr blockaddress(@trace_rdev_return_int, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !102
  %call42 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %wiphy, i32 noundef %ret) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_return_int.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rdev_return_int.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 293, ptr noundef nonnull @.str.23) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
declare dso_local i32 @__traceiter_rdev_start_pmsr(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_pmsr_complete(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_pmsr_report(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nl80211_pmsr_send_ftm_res(ptr noundef %msg, ptr noundef %res) unnamed_addr #0 align 64 {
entry:
  %tmp.i307 = alloca i64, align 8
  %tmp.i305 = alloca i64, align 8
  %tmp.i303 = alloca i64, align 8
  %tmp.i301 = alloca i64, align 8
  %tmp.i299 = alloca i64, align 8
  %tmp.i297 = alloca i64, align 8
  %tmp.i295 = alloca i32, align 4
  %tmp.i293 = alloca i32, align 4
  %tmp.i291 = alloca i8, align 1
  %tmp.i289 = alloca i8, align 1
  %tmp.i287 = alloca i8, align 1
  %tmp.i285 = alloca i32, align 4
  %tmp.i283 = alloca i32, align 4
  %tmp.i281 = alloca i32, align 4
  %tmp.i279 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 2
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %failure_reason = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 4
  %2 = ptrtoint ptr %failure_reason to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %failure_reason, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then.error_crit_edge

if.then.error_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %failure_reason to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %failure_reason, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp3 = icmp eq i32 %6, 6
  br i1 %cmp3, label %land.lhs.true, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true:                                    ; preds = %if.end
  %busy_retry_time = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 8
  %7 = ptrtoint ptr %busy_retry_time to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %busy_retry_time, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true5

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true5:                                   ; preds = %land.lhs.true
  %conv = zext i8 %8 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i279) #8
  %9 = ptrtoint ptr %tmp.i279 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %tmp.i279, align 4
  %call.i280 = call i32 @nla_put(ptr noundef %msg, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i279) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i279) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280)
  %tobool9.not = icmp eq i32 %call.i280, 0
  br i1 %tobool9.not, label %land.lhs.true5.return_crit_edge, label %land.lhs.true5.error_crit_edge

land.lhs.true5.error_crit_edge:                   ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

land.lhs.true5.return_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end12:                                         ; preds = %entry
  %10 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6
  %burst_index = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 7
  %11 = ptrtoint ptr %burst_index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %burst_index, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp14 = icmp sgt i16 %12, -1
  br i1 %cmp14, label %do.body, label %if.end12.do.body24_crit_edge

if.end12.do.body24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

do.body:                                          ; preds = %if.end12
  %conv13309 = zext i16 %12 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i281) #8
  %13 = ptrtoint ptr %tmp.i281 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv13309, ptr %tmp.i281, align 4
  %call.i282 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i281) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i281) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %tobool20.not = icmp eq i32 %call.i282, 0
  br i1 %tobool20.not, label %do.body.do.body24_crit_edge, label %do.body.error_crit_edge

do.body.error_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body.do.body24_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

do.body24:                                        ; preds = %do.body.do.body24_crit_edge, %if.end12.do.body24_crit_edge
  %num_ftmr_attempts_valid = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 22
  %14 = ptrtoint ptr %num_ftmr_attempts_valid to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %num_ftmr_attempts_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool25.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool25.not, label %do.body24.do.body35_crit_edge, label %do.body27

do.body24.do.body35_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

do.body27:                                        ; preds = %do.body24
  %num_ftmr_attempts = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 5
  %15 = ptrtoint ptr %num_ftmr_attempts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ftmr_attempts, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i283) #8
  %17 = ptrtoint ptr %tmp.i283 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i283, align 4
  %call.i284 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i283) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i283) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %tobool29.not = icmp eq i32 %call.i284, 0
  br i1 %tobool29.not, label %do.body27.do.body35_crit_edge, label %do.body27.error_crit_edge

do.body27.error_crit_edge:                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body27.do.body35_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

do.body35:                                        ; preds = %do.body27.do.body35_crit_edge, %do.body24.do.body35_crit_edge
  %18 = ptrtoint ptr %num_ftmr_attempts_valid to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load36 = load i16, ptr %num_ftmr_attempts_valid, align 8
  %19 = and i16 %bf.load36, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool38.not = icmp eq i16 %19, 0
  br i1 %tobool38.not, label %do.body35.do.body48_crit_edge, label %do.body40

do.body35.do.body48_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

do.body40:                                        ; preds = %do.body35
  %num_ftmr_successes = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 6
  %20 = ptrtoint ptr %num_ftmr_successes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_ftmr_successes, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i285) #8
  %22 = ptrtoint ptr %tmp.i285 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i285, align 4
  %call.i286 = call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i285) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i285) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %tobool42.not = icmp eq i32 %call.i286, 0
  br i1 %tobool42.not, label %do.body40.do.body48_crit_edge, label %do.body40.error_crit_edge

do.body40.error_crit_edge:                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body40.do.body48_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

do.body48:                                        ; preds = %do.body40.do.body48_crit_edge, %do.body35.do.body48_crit_edge
  %num_bursts_exp = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 9
  %23 = ptrtoint ptr %num_bursts_exp to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_bursts_exp, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i287) #8
  %25 = ptrtoint ptr %tmp.i287 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %tmp.i287, align 1
  %call.i288 = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i287) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i287) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %tobool50.not = icmp eq i32 %call.i288, 0
  br i1 %tobool50.not, label %do.body54, label %do.body48.error_crit_edge

do.body48.error_crit_edge:                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body54:                                        ; preds = %do.body48
  %burst_duration = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 10
  %26 = ptrtoint ptr %burst_duration to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %burst_duration, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i289) #8
  %28 = ptrtoint ptr %tmp.i289 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %tmp.i289, align 1
  %call.i290 = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i289) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i289) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290)
  %tobool56.not = icmp eq i32 %call.i290, 0
  br i1 %tobool56.not, label %do.body60, label %do.body54.error_crit_edge

do.body54.error_crit_edge:                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body60:                                        ; preds = %do.body54
  %ftms_per_burst = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 11
  %29 = ptrtoint ptr %ftms_per_burst to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ftms_per_burst, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i291) #8
  %31 = ptrtoint ptr %tmp.i291 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %tmp.i291, align 1
  %call.i292 = call i32 @nla_put(ptr noundef %msg, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i291) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i291) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292)
  %tobool62.not = icmp eq i32 %call.i292, 0
  br i1 %tobool62.not, label %do.body66, label %do.body60.error_crit_edge

do.body60.error_crit_edge:                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body66:                                        ; preds = %do.body60
  %32 = ptrtoint ptr %num_ftmr_attempts_valid to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load67 = load i16, ptr %num_ftmr_attempts_valid, align 8
  %33 = and i16 %bf.load67, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool70.not = icmp eq i16 %33, 0
  br i1 %tobool70.not, label %do.body66.do.body80_crit_edge, label %do.body72

do.body66.do.body80_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80

do.body72:                                        ; preds = %do.body66
  %rssi_avg = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 12
  %34 = ptrtoint ptr %rssi_avg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rssi_avg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i293) #8
  %36 = ptrtoint ptr %tmp.i293 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tmp.i293, align 4
  %call.i294 = call i32 @nla_put(ptr noundef %msg, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i293) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i293) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i294)
  %tobool74.not = icmp eq i32 %call.i294, 0
  br i1 %tobool74.not, label %do.body72.do.body80_crit_edge, label %do.body72.error_crit_edge

do.body72.error_crit_edge:                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body72.do.body80_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80

do.body80:                                        ; preds = %do.body72.do.body80_crit_edge, %do.body66.do.body80_crit_edge
  %37 = ptrtoint ptr %num_ftmr_attempts_valid to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load81 = load i16, ptr %num_ftmr_attempts_valid, align 8
  %38 = and i16 %bf.load81, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool84.not = icmp eq i16 %38, 0
  br i1 %tobool84.not, label %do.body80.do.end93_crit_edge, label %do.body86

do.body80.do.end93_crit_edge:                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

do.body86:                                        ; preds = %do.body80
  %rssi_spread = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 13
  %39 = ptrtoint ptr %rssi_spread to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rssi_spread, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i295) #8
  %41 = ptrtoint ptr %tmp.i295 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tmp.i295, align 4
  %call.i296 = call i32 @nla_put(ptr noundef %msg, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i295) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i296)
  %tobool88.not = icmp eq i32 %call.i296, 0
  br i1 %tobool88.not, label %do.body86.do.end93_crit_edge, label %do.body86.error_crit_edge

do.body86.error_crit_edge:                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body86.do.end93_crit_edge:                     ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

do.end93:                                         ; preds = %do.body86.do.end93_crit_edge, %do.body80.do.end93_crit_edge
  %42 = ptrtoint ptr %num_ftmr_attempts_valid to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load94 = load i16, ptr %num_ftmr_attempts_valid, align 8
  %43 = and i16 %bf.load94, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool98.not = icmp eq i16 %43, 0
  br i1 %tobool98.not, label %do.end93.if.end102_crit_edge, label %land.lhs.true99

do.end93.if.end102_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

land.lhs.true99:                                  ; preds = %do.end93
  %tx_rate = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 14
  %call100 = call zeroext i1 @nl80211_put_sta_rate(ptr noundef %msg, ptr noundef %tx_rate, i32 noundef 11) #8
  br i1 %call100, label %land.lhs.true99.if.end102_crit_edge, label %land.lhs.true99.error_crit_edge

land.lhs.true99.error_crit_edge:                  ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

land.lhs.true99.if.end102_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.end102:                                        ; preds = %land.lhs.true99.if.end102_crit_edge, %do.end93.if.end102_crit_edge
  %44 = ptrtoint ptr %num_ftmr_attempts_valid to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load103 = load i16, ptr %num_ftmr_attempts_valid, align 8
  %45 = and i16 %bf.load103, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool107.not = icmp eq i16 %45, 0
  br i1 %tobool107.not, label %if.end102.do.body112_crit_edge, label %land.lhs.true108

if.end102.do.body112_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body112

land.lhs.true108:                                 ; preds = %if.end102
  %rx_rate = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 15
  %call109 = call zeroext i1 @nl80211_put_sta_rate(ptr noundef %msg, ptr noundef %rx_rate, i32 noundef 12) #8
  br i1 %call109, label %land.lhs.true108.do.body112_crit_edge, label %land.lhs.true108.error_crit_edge

land.lhs.true108.error_crit_edge:                 ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

land.lhs.true108.do.body112_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body112

do.body112:                                       ; preds = %land.lhs.true108.do.body112_crit_edge, %if.end102.do.body112_crit_edge
  %46 = ptrtoint ptr %num_ftmr_attempts_valid to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load113 = load i16, ptr %num_ftmr_attempts_valid, align 8
  %47 = and i16 %bf.load113, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool116.not = icmp eq i16 %47, 0
  br i1 %tobool116.not, label %do.body112.do.body126_crit_edge, label %do.body118

do.body112.do.body126_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body126

do.body118:                                       ; preds = %do.body112
  %rtt_avg = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 16
  %48 = ptrtoint ptr %rtt_avg to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %rtt_avg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i297) #8
  %50 = ptrtoint ptr %tmp.i297 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %tmp.i297, align 8
  %call.i298 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 13, i32 noundef 8, ptr noundef nonnull %tmp.i297, i32 noundef 21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i297) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i298)
  %tobool120.not = icmp eq i32 %call.i298, 0
  br i1 %tobool120.not, label %do.body118.do.body126_crit_edge, label %do.body118.error_crit_edge

do.body118.error_crit_edge:                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body118.do.body126_crit_edge:                  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body126

do.body126:                                       ; preds = %do.body118.do.body126_crit_edge, %do.body112.do.body126_crit_edge
  %51 = ptrtoint ptr %num_ftmr_attempts_valid to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load127 = load i16, ptr %num_ftmr_attempts_valid, align 8
  %52 = and i16 %bf.load127, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool130.not = icmp eq i16 %52, 0
  br i1 %tobool130.not, label %do.body126.do.body140_crit_edge, label %do.body132

do.body126.do.body140_crit_edge:                  ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body140

do.body132:                                       ; preds = %do.body126
  %rtt_variance = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 17
  %53 = ptrtoint ptr %rtt_variance to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %rtt_variance, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i299) #8
  %55 = ptrtoint ptr %tmp.i299 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %tmp.i299, align 8
  %call.i300 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 14, i32 noundef 8, ptr noundef nonnull %tmp.i299, i32 noundef 21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i299) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300)
  %tobool134.not = icmp eq i32 %call.i300, 0
  br i1 %tobool134.not, label %do.body132.do.body140_crit_edge, label %do.body132.error_crit_edge

do.body132.error_crit_edge:                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body132.do.body140_crit_edge:                  ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body140

do.body140:                                       ; preds = %do.body132.do.body140_crit_edge, %do.body126.do.body140_crit_edge
  %56 = ptrtoint ptr %num_ftmr_attempts_valid to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load141 = load i16, ptr %num_ftmr_attempts_valid, align 8
  %57 = and i16 %bf.load141, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool144.not = icmp eq i16 %57, 0
  br i1 %tobool144.not, label %do.body140.do.body154_crit_edge, label %do.body146

do.body140.do.body154_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body154

do.body146:                                       ; preds = %do.body140
  %rtt_spread = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 18
  %58 = ptrtoint ptr %rtt_spread to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %rtt_spread, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i301) #8
  %60 = ptrtoint ptr %tmp.i301 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %tmp.i301, align 8
  %call.i302 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 15, i32 noundef 8, ptr noundef nonnull %tmp.i301, i32 noundef 21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i301) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302)
  %tobool148.not = icmp eq i32 %call.i302, 0
  br i1 %tobool148.not, label %do.body146.do.body154_crit_edge, label %do.body146.error_crit_edge

do.body146.error_crit_edge:                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body146.do.body154_crit_edge:                  ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body154

do.body154:                                       ; preds = %do.body146.do.body154_crit_edge, %do.body140.do.body154_crit_edge
  %61 = ptrtoint ptr %num_ftmr_attempts_valid to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load155 = load i16, ptr %num_ftmr_attempts_valid, align 8
  %62 = and i16 %bf.load155, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool158.not = icmp eq i16 %62, 0
  br i1 %tobool158.not, label %do.body154.do.body168_crit_edge, label %do.body160

do.body154.do.body168_crit_edge:                  ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body168

do.body160:                                       ; preds = %do.body154
  %dist_avg = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 19
  %63 = ptrtoint ptr %dist_avg to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %dist_avg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i303) #8
  %65 = ptrtoint ptr %tmp.i303 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %tmp.i303, align 8
  %call.i304 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 16, i32 noundef 8, ptr noundef nonnull %tmp.i303, i32 noundef 21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i303) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %tobool162.not = icmp eq i32 %call.i304, 0
  br i1 %tobool162.not, label %do.body160.do.body168_crit_edge, label %do.body160.error_crit_edge

do.body160.error_crit_edge:                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body160.do.body168_crit_edge:                  ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body168

do.body168:                                       ; preds = %do.body160.do.body168_crit_edge, %do.body154.do.body168_crit_edge
  %66 = ptrtoint ptr %num_ftmr_attempts_valid to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load169 = load i16, ptr %num_ftmr_attempts_valid, align 8
  %67 = and i16 %bf.load169, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool172.not = icmp eq i16 %67, 0
  br i1 %tobool172.not, label %do.body168.do.body182_crit_edge, label %do.body174

do.body168.do.body182_crit_edge:                  ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body182

do.body174:                                       ; preds = %do.body168
  %dist_variance = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 20
  %68 = ptrtoint ptr %dist_variance to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %dist_variance, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i305) #8
  %70 = ptrtoint ptr %tmp.i305 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %tmp.i305, align 8
  %call.i306 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 17, i32 noundef 8, ptr noundef nonnull %tmp.i305, i32 noundef 21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i305) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i306)
  %tobool176.not = icmp eq i32 %call.i306, 0
  br i1 %tobool176.not, label %do.body174.do.body182_crit_edge, label %do.body174.error_crit_edge

do.body174.error_crit_edge:                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body174.do.body182_crit_edge:                  ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body182

do.body182:                                       ; preds = %do.body174.do.body182_crit_edge, %do.body168.do.body182_crit_edge
  %71 = ptrtoint ptr %num_ftmr_attempts_valid to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load183 = load i16, ptr %num_ftmr_attempts_valid, align 8
  %72 = and i16 %bf.load183, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool186.not = icmp eq i16 %72, 0
  br i1 %tobool186.not, label %do.body182.do.end195_crit_edge, label %do.body188

do.body182.do.end195_crit_edge:                   ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end195

do.body188:                                       ; preds = %do.body182
  %dist_spread = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 21
  %73 = ptrtoint ptr %dist_spread to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %dist_spread, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i307) #8
  %75 = ptrtoint ptr %tmp.i307 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %tmp.i307, align 8
  %call.i308 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 18, i32 noundef 8, ptr noundef nonnull %tmp.i307, i32 noundef 21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i307) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308)
  %tobool190.not = icmp eq i32 %call.i308, 0
  br i1 %tobool190.not, label %do.body188.do.end195_crit_edge, label %do.body188.error_crit_edge

do.body188.error_crit_edge:                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body188.do.end195_crit_edge:                   ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end195

do.end195:                                        ; preds = %do.body188.do.end195_crit_edge, %do.body182.do.end195_crit_edge
  %76 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %10, align 8
  %tobool196.not = icmp eq ptr %77, null
  br i1 %tobool196.not, label %do.end195.if.end205_crit_edge, label %land.lhs.true197

do.end195.if.end205_crit_edge:                    ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

land.lhs.true197:                                 ; preds = %do.end195
  %lci_len = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 2
  %78 = ptrtoint ptr %lci_len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lci_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool198.not = icmp eq i32 %79, 0
  br i1 %tobool198.not, label %land.lhs.true197.if.end205_crit_edge, label %land.lhs.true199

land.lhs.true197.if.end205_crit_edge:             ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

land.lhs.true199:                                 ; preds = %land.lhs.true197
  %call202 = call i32 @nla_put(ptr noundef %msg, i32 noundef 19, i32 noundef %79, ptr noundef nonnull %77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %land.lhs.true199.if.end205_crit_edge, label %land.lhs.true199.error_crit_edge

land.lhs.true199.error_crit_edge:                 ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

land.lhs.true199.if.end205_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.end205:                                        ; preds = %land.lhs.true199.if.end205_crit_edge, %land.lhs.true197.if.end205_crit_edge, %do.end195.if.end205_crit_edge
  %civicloc = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 1
  %80 = ptrtoint ptr %civicloc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %civicloc, align 4
  %tobool206.not = icmp eq ptr %81, null
  br i1 %tobool206.not, label %if.end205.return_crit_edge, label %land.lhs.true207

if.end205.return_crit_edge:                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true207:                                 ; preds = %if.end205
  %civicloc_len = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %res, i32 0, i32 6, i32 0, i32 3
  %82 = ptrtoint ptr %civicloc_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %civicloc_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool208.not = icmp eq i32 %83, 0
  br i1 %tobool208.not, label %land.lhs.true207.return_crit_edge, label %land.lhs.true209

land.lhs.true207.return_crit_edge:                ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true209:                                 ; preds = %land.lhs.true207
  %call212 = call i32 @nla_put(ptr noundef %msg, i32 noundef 20, i32 noundef %83, ptr noundef nonnull %81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %land.lhs.true209.return_crit_edge, label %land.lhs.true209.error_crit_edge

land.lhs.true209.error_crit_edge:                 ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

land.lhs.true209.return_crit_edge:                ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

error:                                            ; preds = %land.lhs.true209.error_crit_edge, %land.lhs.true199.error_crit_edge, %do.body188.error_crit_edge, %do.body174.error_crit_edge, %do.body160.error_crit_edge, %do.body146.error_crit_edge, %do.body132.error_crit_edge, %do.body118.error_crit_edge, %land.lhs.true108.error_crit_edge, %land.lhs.true99.error_crit_edge, %do.body86.error_crit_edge, %do.body72.error_crit_edge, %do.body60.error_crit_edge, %do.body54.error_crit_edge, %do.body48.error_crit_edge, %do.body40.error_crit_edge, %do.body27.error_crit_edge, %do.body.error_crit_edge, %land.lhs.true5.error_crit_edge, %if.then.error_crit_edge
  br label %return

return:                                           ; preds = %error, %land.lhs.true209.return_crit_edge, %land.lhs.true207.return_crit_edge, %if.end205.return_crit_edge, %land.lhs.true5.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i32 [ -28, %error ], [ 0, %land.lhs.true5.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %land.lhs.true209.return_crit_edge ], [ 0, %land.lhs.true207.return_crit_edge ], [ 0, %if.end205.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nl80211_put_sta_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_abort_pmsr(ptr noundef %wiphy, ptr noundef %wdev, i64 noundef %cookie) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_abort_pmsr, i32 0, i32 1), ptr blockaddress(@trace_rdev_abort_pmsr, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !104
  %call42 = tail call i32 @__traceiter_rdev_abort_pmsr(ptr noundef null, ptr noundef %wiphy, ptr noundef %wdev, i64 noundef %cookie) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !105
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_abort_pmsr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_abort_pmsr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_abort_pmsr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rdev_abort_pmsr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 2628, ptr noundef nonnull @.str.23) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rdev_return_void(ptr noundef %wiphy) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 1), ptr blockaddress(@trace_rdev_return_void, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !106
  %call42 = tail call i32 @__traceiter_rdev_return_void(ptr noundef null, ptr noundef %wiphy) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !107
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rdev_return_void.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rdev_return_void.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 327, ptr noundef nonnull @.str.23) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #8
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
declare dso_local i32 @__traceiter_rdev_abort_pmsr(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @nl80211_pmsr_start.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../net/wireless/pmsr.c", i32 287, i32 4}
!2 = !{ptr @nl80211_pmsr_start.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../net/wireless/pmsr.c", i32 302, i32 4}
!4 = !{ptr @__ksymtab_cfg80211_pmsr_complete, !5, !"__ksymtab_cfg80211_pmsr_complete", i1 false, i1 false}
!5 = !{!"../net/wireless/pmsr.c", i32 395, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/wireless/pmsr.c", i32 588, i32 3}
!8 = !{ptr @cfg80211_pmsr_report._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @__func__.cfg80211_pmsr_report, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cfg80211_pmsr_report._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @cfg80211_pmsr_report._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_cfg80211_pmsr_report, !15, !"__ksymtab_cfg80211_pmsr_report", i1 false, i1 false}
!15 = !{!"../net/wireless/pmsr.c", i32 598, i32 1}
!16 = !{ptr @pmsr_parse_peer.__msg, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../net/wireless/pmsr.c", i32 203, i32 3}
!18 = !{ptr @pmsr_parse_peer.__msg.4, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../net/wireless/pmsr.c", i32 228, i32 3}
!20 = !{ptr @pmsr_parse_peer.__msg.5, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../net/wireless/pmsr.c", i32 238, i32 3}
!22 = !{ptr @pmsr_parse_peer.__msg.6, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../net/wireless/pmsr.c", i32 250, i32 4}
!24 = !{ptr @pmsr_parse_ftm.__msg, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../net/wireless/pmsr.c", i32 23, i32 3}
!26 = !{ptr @pmsr_parse_ftm.__msg.7, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../net/wireless/pmsr.c", i32 43, i32 4}
!28 = !{ptr @pmsr_parse_ftm.__msg.8, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../net/wireless/pmsr.c", i32 50, i32 3}
!30 = !{ptr @pmsr_parse_ftm.__msg.9, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../net/wireless/pmsr.c", i32 65, i32 3}
!32 = !{ptr @pmsr_parse_ftm.__msg.10, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../net/wireless/pmsr.c", i32 72, i32 3}
!34 = !{ptr @pmsr_parse_ftm.__msg.11, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../net/wireless/pmsr.c", i32 84, i32 3}
!36 = !{ptr @pmsr_parse_ftm.__msg.12, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../net/wireless/pmsr.c", i32 103, i32 3}
!38 = !{ptr @pmsr_parse_ftm.__msg.13, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../net/wireless/pmsr.c", i32 116, i32 3}
!40 = !{ptr @pmsr_parse_ftm.__msg.14, !41, !"__msg", i1 false, i1 false}
!41 = !{!"../net/wireless/pmsr.c", i32 124, i32 3}
!42 = !{ptr @pmsr_parse_ftm.__msg.15, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../net/wireless/pmsr.c", i32 132, i32 3}
!44 = !{ptr @pmsr_parse_ftm.__msg.16, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../net/wireless/pmsr.c", i32 141, i32 3}
!46 = !{ptr @pmsr_parse_ftm.__msg.17, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../net/wireless/pmsr.c", i32 148, i32 3}
!48 = !{ptr @pmsr_parse_ftm.__msg.18, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../net/wireless/pmsr.c", i32 155, i32 3}
!50 = !{ptr @pmsr_parse_ftm.__msg.19, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../net/wireless/pmsr.c", i32 165, i32 3}
!52 = !{ptr @pmsr_parse_ftm.__msg.20, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../net/wireless/pmsr.c", i32 173, i32 4}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/wireless/core.h", i32 147, i32 6}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../net/wireless/trace.h", i32 2620, i32 1}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!60 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../net/wireless/trace.h", i32 281, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../net/wireless/trace.h", i32 3505, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../net/wireless/trace.h", i32 3483, i32 1}
!72 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../net/wireless/trace.h", i32 2625, i32 1}
!75 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../net/wireless/trace.h", i32 324, i32 1}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"auto-init"}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{i64 2157171987, i64 2157172471, i64 2157172024, i64 2157172080, i64 2157172114, i64 2157172138, i64 2157172179, i64 2157172200, i64 2157172228, i64 2157172262}
!92 = !{i64 2149343866, i64 2149343871, i64 2149343884, i64 2149343928, i64 2149343962, i64 2149343983}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2160547641}
!95 = !{i64 2160547886}
!96 = !{i64 2149764379}
!97 = !{i64 2149765415}
!98 = !{i64 2160530157}
!99 = !{i64 2160530410}
!100 = !{i64 2159605901}
!101 = !{i64 2159606132}
!102 = !{i64 2157427662}
!103 = !{i64 2157427875}
!104 = !{i64 2159622763}
!105 = !{i64 2159622994}
!106 = !{i64 2157475606}
!107 = !{i64 2157475811}
