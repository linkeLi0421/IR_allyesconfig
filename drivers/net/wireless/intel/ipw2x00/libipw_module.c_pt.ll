; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/ipw2x00/libipw_module.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/ipw2x00/libipw_module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+libipw_networks_age\22, \22a\22\09"
module asm "\09.weak\09__crc_libipw_networks_age\09\09\09\09"
module asm "\09.long\09__crc_libipw_networks_age\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libipw_networks_age:\09\09\09\09\09"
module asm "\09.asciz \09\22libipw_networks_age\22\09\09\09\09\09"
module asm "__kstrtabns_libipw_networks_age:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+alloc_libipw\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_libipw\09\09\09\09"
module asm "\09.long\09__crc_alloc_libipw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_libipw:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_libipw\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_libipw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+free_libipw\22, \22a\22\09"
module asm "\09.weak\09__crc_free_libipw\09\09\09\09"
module asm "\09.long\09__crc_free_libipw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_libipw:\09\09\09\09\09"
module asm "\09.asciz \09\22free_libipw\22\09\09\09\09\09"
module asm "__kstrtabns_free_libipw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+libipw_debug_level\22, \22a\22\09"
module asm "\09.weak\09__crc_libipw_debug_level\09\09\09\09"
module asm "\09.long\09__crc_libipw_debug_level\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libipw_debug_level:\09\09\09\09\09"
module asm "\09.asciz \09\22libipw_debug_level\22\09\09\09\09\09"
module asm "__kstrtabns_libipw_debug_level:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.libipw_device = type { ptr, %struct.wireless_dev, %struct.libipw_security, %struct.libipw_stats, %struct.libipw_geo, %struct.ieee80211_supported_band, %struct.ieee80211_supported_band, %struct.list_head, %struct.list_head, [128 x ptr], i32, i32, i32, %struct.iw_spy_data, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.lib80211_crypt_info, i32, [4 x %struct.libipw_frag_entry], i32, i16, i16, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.147, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.147 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.148 }
%union.anon.148 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.libipw_security = type <{ i8, i8, [4 x i8], [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.libipw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.libipw_geo = type { [4 x i8], i8, i8, [14 x %struct.libipw_channel], [132 x %struct.libipw_channel] }
%struct.libipw_channel = type { i32, i8, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.libipw_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.153, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.153 = type { ptr }
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
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.146, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.146 = type { i64, i64, i8 }
%struct.libipw_network = type { [6 x i8], i8, [33 x i8], i8, %struct.libipw_qos_data, %struct.libipw_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, i32, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i32, [64 x i8], i32, %struct.libipw_tim_parameters, i8, %struct.libipw_tpc_report, %struct.libipw_csa, %struct.libipw_quiet, %struct.list_head }
%struct.libipw_qos_data = type { %struct.libipw_qos_parameters, i32, i32, i8, i8 }
%struct.libipw_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.libipw_rx_stats = type { i32, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32 }
%struct.libipw_tim_parameters = type { i8, i8 }
%struct.libipw_tpc_report = type { i8, i8 }
%struct.libipw_csa = type { i8, i8, i8 }
%struct.libipw_quiet = type { i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_version478 = internal constant [26 x i8] c"libipw.version=git-1.1.13\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"libipw\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"git-1.1.13\00", [21 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description479 = internal constant [56 x i8] c"libipw.description=802.11 data/management/control stack\00", section ".modinfo", align 1
@__UNIQUE_ID_author480 = internal constant [83 x i8] c"libipw.author=Copyright (C) 2004-2005 Intel Corporation <jketreno@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file481 = internal constant [54 x i8] c"libipw.file=drivers/net/wireless/intel/ipw2x00/libipw\00", section ".modinfo", align 1
@__UNIQUE_ID_license482 = internal constant [19 x i8] c"libipw.license=GPL\00", section ".modinfo", align 1
@__kstrtab_libipw_networks_age = external dso_local constant [0 x i8], align 1
@__kstrtabns_libipw_networks_age = external dso_local constant [0 x i8], align 1
@__ksymtab_libipw_networks_age = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libipw_networks_age to i32), ptr @__kstrtab_libipw_networks_age, ptr @__kstrtabns_libipw_networks_age }, section "___ksymtab+libipw_networks_age", align 4
@libipw_debug_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@alloc_libipw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017libipw: %s Initializing...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"alloc_libipw\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/intel/ipw2x00/libipw_module.c\00", [45 x i8] zeroinitializer }, align 32
@alloc_libipw._entry_ptr = internal global ptr @alloc_libipw._entry, section ".printk_index", align 4
@libipw_config_ops = internal global { %struct.cfg80211_ops, [108 x i8] } zeroinitializer, align 32
@alloc_libipw._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013libipw: Unable to allocate wiphy.\0A\00", [59 x i8] zeroinitializer }, align 32
@alloc_libipw._entry_ptr.8 = internal global ptr @alloc_libipw._entry.6, section ".printk_index", align 4
@libipw_wiphy_privid = internal global { ptr, [28 x i8] } { ptr @libipw_wiphy_privid, [28 x i8] zeroinitializer }, align 32
@alloc_libipw._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013libipw: Unable to allocate beacon storage: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@alloc_libipw._entry_ptr.11 = internal global ptr @alloc_libipw._entry.9, section ".printk_index", align 4
@alloc_libipw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ieee->lock\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_alloc_libipw = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_libipw = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_libipw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_libipw to i32), ptr @__kstrtab_alloc_libipw, ptr @__kstrtabns_alloc_libipw }, section "___ksymtab+alloc_libipw", align 4
@__kstrtab_free_libipw = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_libipw = external dso_local constant [0 x i8], align 1
@__ksymtab_free_libipw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_libipw to i32), ptr @__kstrtab_free_libipw, ptr @__kstrtabns_free_libipw }, section "___ksymtab+free_libipw", align 4
@__kstrtab_libipw_debug_level = external dso_local constant [0 x i8], align 1
@__kstrtabns_libipw_debug_level = external dso_local constant [0 x i8], align 1
@__ksymtab_libipw_debug_level = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libipw_debug_level to i32), ptr @__kstrtab_libipw_debug_level, ptr @__kstrtabns_libipw_debug_level }, section "___ksymtab_gpl+libipw_debug_level", align 4
@libipw_proc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"debug_level\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ieee80211\00", [22 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@__param_str_debug = internal constant [13 x i8] c"libipw.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype485 = internal constant [26 x i8] c"libipw.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug486 = internal constant [36 x i8] c"libipw.parm=debug:debug output mask\00", section ".modinfo", align 1
@__exitcall_libipw_exit = internal global ptr @libipw_exit, section ".exitcall.exit", align 4
@__initcall__kmod_libipw__487_297_libipw_init6 = internal global ptr @libipw_init, section ".initcall6.init", align 4
@libipw_networks_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013libipw: Out of memory allocating beacons\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"libipw_networks_allocate\00", [39 x i8] zeroinitializer }, align 32
@libipw_networks_allocate._entry_ptr = internal global ptr @libipw_networks_allocate._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@libipw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013libipw: Unable to create ieee80211 proc directory\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"libipw_init\00", [20 x i8] zeroinitializer }, align 32
@libipw_init._entry_ptr = internal global ptr @libipw_init._entry, section ".printk_index", align 4
@debug_level_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @debug_level_proc_open, ptr @seq_read, ptr null, ptr @debug_level_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@libipw_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.5, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016libipw: 802.11 data/management/control stack, git-1.1.13\0A\00", [36 x i8] zeroinitializer }, align 32
@libipw_init._entry_ptr.21 = internal global ptr @libipw_init._entry.19, section ".printk_index", align 4
@libipw_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.5, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016libipw: Copyright (C) 2004-2005 Intel Corporation <jketreno@linux.intel.com>\0A\00", [48 x i8] zeroinitializer }, align 32
@libipw_init._entry_ptr.24 = internal global ptr @libipw_init._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08X\0A\00", [24 x i8] zeroinitializer }, align 32
@__const.debug_level_proc_write.buf = private unnamed_addr constant [12 x i8] c"0x00000000\0A\00", align 1
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%li\00", [28 x i8] zeroinitializer }, align 32
@debug_level_proc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016libipw: %s is not in hex or decimal form.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"debug_level_proc_write\00", [41 x i8] zeroinitializer }, align 32
@debug_level_proc_write._entry_ptr = internal global ptr @debug_level_proc_write._entry, section ".printk_index", align 4
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 47, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"libipw_debug_level\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 209, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 113, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"libipw_config_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 52, i32 28 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 126, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"libipw_wiphy_privid\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 53, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 146, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 170, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"libipw_proc\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 211, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 283, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 284, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 208, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 63, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 260, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"debug_level_proc_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 243, i32 30 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 273, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 274, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 215, i32 16 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 234, i32 18 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private constant [54 x i8] c"../drivers/net/wireless/intel/ipw2x00/libipw_module.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 235, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 156, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author480, ptr @__UNIQUE_ID_debug486, ptr @__UNIQUE_ID_debugtype485, ptr @__UNIQUE_ID_description479, ptr @__UNIQUE_ID_file481, ptr @__UNIQUE_ID_license482, ptr @__UNIQUE_ID_version478, ptr @__exitcall_libipw_exit, ptr @__initcall__kmod_libipw__487_297_libipw_init6, ptr @__ksymtab_alloc_libipw, ptr @__ksymtab_free_libipw, ptr @__ksymtab_libipw_debug_level, ptr @__ksymtab_libipw_networks_age, ptr @__modver_attr, ptr @__param_debug, ptr @alloc_libipw._entry, ptr @alloc_libipw._entry.6, ptr @alloc_libipw._entry.9, ptr @alloc_libipw._entry_ptr, ptr @alloc_libipw._entry_ptr.11, ptr @alloc_libipw._entry_ptr.8, ptr @debug_level_proc_write._entry, ptr @debug_level_proc_write._entry_ptr, ptr @libipw_exit, ptr @libipw_init._entry, ptr @libipw_init._entry.19, ptr @libipw_init._entry.22, ptr @libipw_init._entry_ptr, ptr @libipw_init._entry_ptr.21, ptr @libipw_init._entry_ptr.24, ptr @libipw_networks_allocate._entry, ptr @libipw_networks_allocate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @libipw_debug_level, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @libipw_config_ops, ptr @.str.7, ptr @libipw_wiphy_privid, ptr @.str.10, ptr @alloc_libipw.__key, ptr @.str.12, ptr @libipw_proc, ptr @.str.13, ptr @.str.14, ptr @debug, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @debug_level_proc_ops, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_libipw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_config_ops to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_libipw._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_wiphy_privid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_libipw._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_libipw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_proc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_networks_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_level_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libipw_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_level_proc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @libipw_networks_age(ptr noundef %ieee, i32 noundef %age_secs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %age_secs, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #10
  %lock = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %network_list = getelementptr inbounds %struct.libipw_device, ptr %ieee, i32 0, i32 8
  %0 = ptrtoint ptr %network_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn21 = load ptr, ptr %network_list, align 4
  %cmp8.not22 = icmp eq ptr %.pn21, %network_list
  br i1 %cmp8.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn21, %entry.for.body_crit_edge ]
  %last_scanned = getelementptr i8, ptr %.pn23, i32 -180
  %1 = ptrtoint ptr %last_scanned to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_scanned, align 8
  %sub = sub i32 %2, %call2.i
  store i32 %sub, ptr %last_scanned, align 8
  %3 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn23, align 4
  %cmp8.not = icmp eq ptr %.pn, %network_list
  br i1 %cmp8.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_libipw(i32 noundef %sizeof_priv, i32 noundef %monitor) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @libipw_debug_level, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %add = add i32 %sizeof_priv, 3612
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef %add, i32 noundef 1, i32 noundef 1) #10
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end3.cleanup_crit_edge, label %if.end7

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %monitor)
  %tobool10.not = icmp eq i32 %monitor, 0
  br i1 %tobool10.not, label %if.then11, label %if.end7.for.body.i.preheader_crit_edge

if.end7.for.body.i.preheader_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.then11:                                        ; preds = %if.end7
  %call.i = tail call ptr @wiphy_new_nm(ptr noundef nonnull @libipw_config_ops, i32 noundef 0, ptr noundef null) #10
  %wdev = getelementptr i8, ptr %call4, i32 2308
  %2 = ptrtoint ptr %wdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %wdev, align 4
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %failed_free_netdev

if.end22:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 82
  %5 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wdev, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr i8, ptr %call4, i32 2312
  %6 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %iftype, align 4
  %7 = load ptr, ptr @libipw_wiphy_privid, align 4
  %8 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wdev, align 4
  %privid = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 52
  %10 = ptrtoint ptr %privid to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %privid, align 4
  %11 = load ptr, ptr %wdev, align 4
  %max_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %max_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %max_scan_ssids, align 32
  %13 = load ptr, ptr %wdev, align 4
  %max_scan_ie_len = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %max_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %max_scan_ie_len, align 4
  %15 = load ptr, ptr %wdev, align 4
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 6, ptr %interface_modes, align 4
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end22, %if.end7.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc9.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.023.i = phi i32 [ %inc10.i, %for.inc9.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 344) #14
  %arrayidx.i = getelementptr %struct.libipw_device, ptr %add.ptr.i, i32 0, i32 9, i32 %i.023.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %for.inc9.i

do.end.i:                                         ; preds = %for.body.i
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.023.i)
  %cmp524.not.i = icmp eq i32 %i.023.i, 0
  br i1 %cmp524.not.i, label %do.end.i.do.end40_crit_edge, label %do.end.i.for.body6.i_crit_edge

do.end.i.for.body6.i_crit_edge:                   ; preds = %do.end.i
  br label %for.body6.i

do.end.i.do.end40_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %do.end.i.for.body6.i_crit_edge
  %j.025.i = phi i32 [ %inc.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %do.end.i.for.body6.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.libipw_device, ptr %add.ptr.i, i32 0, i32 9, i32 %j.025.i
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx8.i, align 4
  tail call void @kfree(ptr noundef %20) #10
  %inc.i = add nuw nsw i32 %j.025.i, 1
  %exitcond28.not.i = icmp eq i32 %inc.i, %i.023.i
  br i1 %exitcond28.not.i, label %for.body6.i.do.end40_crit_edge, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6.i

for.body6.i.do.end40_crit_edge:                   ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

for.inc9.i:                                       ; preds = %for.body.i
  %inc10.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc10.i, 128
  br i1 %exitcond.not.i, label %if.end43, label %for.inc9.i.for.body.i_crit_edge

for.inc9.i.for.body.i_crit_edge:                  ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end40:                                         ; preds = %for.body6.i.do.end40_crit_edge, %do.end.i.do.end40_crit_edge
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef -12) #13
  br i1 %tobool10.not, label %if.then51, label %do.end40.failed_free_netdev_crit_edge

do.end40.failed_free_netdev_crit_edge:            ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_free_netdev

if.end43:                                         ; preds = %for.inc9.i
  %network_free_list.i = getelementptr i8, ptr %call4, i32 4860
  %21 = ptrtoint ptr %network_free_list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %network_free_list.i, ptr %network_free_list.i, align 4
  %prev.i.i = getelementptr i8, ptr %call4, i32 4864
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %network_free_list.i, ptr %prev.i.i, align 4
  %network_list.i = getelementptr i8, ptr %call4, i32 4868
  %23 = ptrtoint ptr %network_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %network_list.i, ptr %network_list.i, align 4
  %prev.i7.i = getelementptr i8, ptr %call4, i32 4872
  %24 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %network_list.i, ptr %prev.i7.i, align 4
  br label %for.body.i92

for.body.i92:                                     ; preds = %list_add_tail.exit.i.for.body.i92_crit_edge, %if.end43
  %i.09.i = phi i32 [ 0, %if.end43 ], [ %inc.i93, %list_add_tail.exit.i.for.body.i92_crit_edge ]
  %arrayidx.i91 = getelementptr %struct.libipw_device, ptr %add.ptr.i, i32 0, i32 9, i32 %i.09.i
  %25 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i91, align 4
  %list.i = getelementptr inbounds %struct.libipw_network, ptr %26, i32 0, i32 29
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %28, ptr noundef %network_free_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i92.list_add_tail.exit.i_crit_edge

for.body.i92.list_add_tail.exit.i_crit_edge:      ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list.i, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %network_free_list.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.libipw_network, ptr %26, i32 0, i32 29, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list.i, ptr %28, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i92.list_add_tail.exit.i_crit_edge
  %inc.i93 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i94 = icmp eq i32 %inc.i93, 128
  br i1 %exitcond.not.i94, label %libipw_networks_initialize.exit, label %list_add_tail.exit.i.for.body.i92_crit_edge

list_add_tail.exit.i.for.body.i92_crit_edge:      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i92

libipw_networks_initialize.exit:                  ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %fts = getelementptr i8, ptr %call4, i32 5812
  %33 = ptrtoint ptr %fts to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 2346, ptr %fts, align 4
  %rts = getelementptr i8, ptr %call4, i32 5814
  %34 = ptrtoint ptr %rts to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2346, ptr %rts, align 2
  %scan_age = getelementptr i8, ptr %call4, i32 5392
  %35 = ptrtoint ptr %scan_age to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1500, ptr %scan_age, align 4
  %open_wep = getelementptr i8, ptr %call4, i32 5552
  %36 = ptrtoint ptr %open_wep to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %open_wep, align 4
  %host_encrypt = getelementptr i8, ptr %call4, i32 5556
  %37 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %host_encrypt, align 4
  %host_decrypt = getelementptr i8, ptr %call4, i32 5564
  %38 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %host_decrypt, align 4
  %host_mc_decrypt = getelementptr i8, ptr %call4, i32 5568
  %39 = ptrtoint ptr %host_mc_decrypt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %host_mc_decrypt, align 4
  %host_open_frag = getelementptr i8, ptr %call4, i32 5576
  %40 = ptrtoint ptr %host_open_frag to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %host_open_frag, align 4
  %ieee802_1x = getelementptr i8, ptr %call4, i32 5580
  %41 = ptrtoint ptr %ieee802_1x to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %ieee802_1x, align 4
  %lock = getelementptr i8, ptr %call4, i32 5500
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @alloc_libipw.__key, i16 noundef signext 3) #10
  %crypt_info = getelementptr i8, ptr %call4, i32 5604
  %call49 = tail call i32 @lib80211_crypt_info_init(ptr noundef %crypt_info, ptr noundef nonnull %call4, ptr noundef %lock) #10
  %wpa_enabled = getelementptr i8, ptr %call4, i32 5584
  %42 = ptrtoint ptr %wpa_enabled to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %wpa_enabled, align 4
  %drop_unencrypted = getelementptr i8, ptr %call4, i32 5588
  %43 = ptrtoint ptr %drop_unencrypted to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %drop_unencrypted, align 4
  %privacy_invoked = getelementptr i8, ptr %call4, i32 5592
  %44 = ptrtoint ptr %privacy_invoked to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %privacy_invoked, align 4
  br label %cleanup

if.then51:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  %wdev52 = getelementptr i8, ptr %call4, i32 2308
  %45 = ptrtoint ptr %wdev52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wdev52, align 4
  tail call void @wiphy_free(ptr noundef %46) #10
  br label %failed_free_netdev

failed_free_netdev:                               ; preds = %if.then51, %do.end40.failed_free_netdev_crit_edge, %do.end19
  tail call void @free_netdev(ptr noundef nonnull %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %failed_free_netdev, %libipw_networks_initialize.exit, %do.end3.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %libipw_networks_initialize.exit ], [ null, %do.end3.cleanup_crit_edge ], [ null, %failed_free_netdev ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lib80211_crypt_info_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_libipw(ptr noundef %dev, i32 noundef %monitor) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %crypt_info = getelementptr i8, ptr %dev, i32 5604
  tail call void @lib80211_crypt_info_free(ptr noundef %crypt_info) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.libipw_device, ptr %add.ptr.i, i32 0, i32 9, i32 %i.03.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %libipw_networks_free.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

libipw_networks_free.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %monitor)
  %tobool.not = icmp eq i32 %monitor, 0
  br i1 %tobool.not, label %if.then, label %libipw_networks_free.exit.if.end_crit_edge

libipw_networks_free.exit.if.end_crit_edge:       ; preds = %libipw_networks_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %libipw_networks_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  %wdev = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdev, align 4
  tail call void @wiphy_free(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %libipw_networks_free.exit.if.end_crit_edge
  tail call void @free_netdev(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lib80211_crypt_info_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @libipw_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @libipw_proc, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.13, ptr noundef nonnull %0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.14, ptr noundef %1) #10
  store ptr null, ptr @libipw_proc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @libipw_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  store i32 %0, ptr @libipw_debug_level, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.14, ptr noundef %1) #10
  store ptr %call, ptr @libipw_proc, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @proc_create(ptr noundef nonnull @.str.13, i16 noundef zeroext 420, ptr noundef nonnull %call, ptr noundef nonnull @debug_level_proc_ops) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then3, label %do.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.14, ptr noundef %2) #10
  store ptr null, ptr @libipw_proc, align 4
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.then3, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %do.end7 ], [ -5, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_level_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @debug_level_proc_show, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_level_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #1 align 64 {
entry:
  %buf = alloca [12 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #10
  %0 = call ptr @memcpy(ptr %buf, ptr @__const.debug_level_proc_write.buf, i32 12)
  %1 = tail call i32 @llvm.umin.i32(i32 %count, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !108
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %1, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %1, i32 -1226833920) #15, !srcloc !109
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !110

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %1) #10
  %4 = call i32 @llvm.read_register.i32(metadata !98) #10
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !111
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %buffer, i32 noundef %1) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #10, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %1, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %1, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !110

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %1, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [12 x i8], ptr %buf, i32 0, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.26, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 1
  br i1 %cmp3.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %buf) #13
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  store i32 %10, ptr @libipw_debug_level, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %do.end
  %call10 = call i32 @strnlen(ptr noundef nonnull %buf, i32 noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then11.i.i
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ %count, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_level_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @libipw_debug_level, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %0) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !89, !90, !91, !93, !94, !96}
!llvm.named.register.sp = !{!98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__UNIQUE_ID_version478, !1, !"__UNIQUE_ID_version478", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 47, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__modver_attr, !1, !"__modver_attr", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description479, !7, !"__UNIQUE_ID_description479", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 48, i32 1}
!8 = !{ptr @__UNIQUE_ID_author480, !9, !"__UNIQUE_ID_author480", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 49, i32 1}
!10 = !{ptr @__UNIQUE_ID_file481, !11, !"__UNIQUE_ID_file481", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 50, i32 1}
!12 = !{ptr @__UNIQUE_ID_license482, !11, !"__UNIQUE_ID_license482", i1 false, i1 false}
!13 = !{ptr @__ksymtab_libipw_networks_age, !14, !"__ksymtab_libipw_networks_age", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 94, i32 1}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 113, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @alloc_libipw._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @alloc_libipw._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 126, i32 4}
!23 = !{ptr @alloc_libipw._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @alloc_libipw._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 146, i32 3}
!27 = !{ptr @alloc_libipw._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @alloc_libipw._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @alloc_libipw.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 170, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__ksymtab_alloc_libipw, !33, !"__ksymtab_alloc_libipw", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 188, i32 1}
!34 = !{ptr @__ksymtab_free_libipw, !35, !"__ksymtab_free_libipw", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 204, i32 1}
!36 = !{ptr @libipw_debug_level, !37, !"libipw_debug_level", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 209, i32 5}
!38 = !{ptr @__ksymtab_libipw_debug_level, !39, !"__ksymtab_libipw_debug_level", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 210, i32 1}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 283, i32 21}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 284, i32 21}
!44 = !{ptr @__param_debug, !45, !"__param_debug", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 292, i32 1}
!46 = !{ptr @__UNIQUE_ID_debugtype485, !45, !"__UNIQUE_ID_debugtype485", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_debug486, !48, !"__UNIQUE_ID_debug486", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 293, i32 1}
!49 = !{ptr @__exitcall_libipw_exit, !50, !"__exitcall_libipw_exit", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 296, i32 1}
!51 = !{ptr @__initcall__kmod_libipw__487_297_libipw_init6, !52, !"__initcall__kmod_libipw__487_297_libipw_init6", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 297, i32 1}
!53 = !{ptr @libipw_config_ops, !54, !"libipw_config_ops", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 52, i32 28}
!55 = !{ptr @libipw_wiphy_privid, !56, !"libipw_wiphy_privid", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 53, i32 14}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 63, i32 4}
!59 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @libipw_networks_allocate._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @libipw_networks_allocate._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @libipw_proc, !63, !"libipw_proc", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 211, i32 31}
!64 = !{ptr @__param_str_debug, !45, !"__param_str_debug", i1 false, i1 false}
!65 = !{ptr @debug, !66, !"debug", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 208, i32 12}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 260, i32 3}
!69 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @libipw_init._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @libipw_init._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 273, i32 2}
!74 = !{ptr @libipw_init._entry.19, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @libipw_init._entry_ptr.21, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 274, i32 2}
!78 = !{ptr @libipw_init._entry.22, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @libipw_init._entry_ptr.24, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @debug_level_proc_ops, !81, !"debug_level_proc_ops", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 243, i32 30}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 215, i32 16}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 234, i32 18}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/ipw2x00/libipw_module.c", i32 235, i32 3}
!88 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @debug_level_proc_write._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @debug_level_proc_write._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!93 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!98 = !{!"sp"}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"auto-init"}
!109 = !{i64 2152329261, i64 2152329286}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 4824816}
!112 = !{i64 4825013}
!113 = !{i64 2152310246}
