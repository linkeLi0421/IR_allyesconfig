; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/cfg80211.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/cfg80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath6kl_cfg80211_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_ath6kl_cfg80211_suspend\09\09\09\09"
module asm "\09.long\09__crc_ath6kl_cfg80211_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath6kl_cfg80211_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22ath6kl_cfg80211_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_ath6kl_cfg80211_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath6kl_cfg80211_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_ath6kl_cfg80211_resume\09\09\09\09"
module asm "\09.long\09__crc_ath6kl_cfg80211_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath6kl_cfg80211_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ath6kl_cfg80211_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ath6kl_cfg80211_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_txrx_stypes = type { i16, i16 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.cfg80211_roam_info = type { ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params }
%struct.ath6kl_vif = type { %struct.list_head, %struct.wireless_dev, ptr, ptr, %struct.spinlock, i8, i32, i32, [32 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], i16, i16, [4 x %struct.ath6kl_wep_key], [4 x %struct.ath6kl_key], ptr, [6 x %struct.ath6kl_htcap], %struct.timer_list, %struct.timer_list, ptr, i32, i32, i32, i32, i32, i8, i16, i16, i16, i32, i16, i8, %struct.target_stats, %struct.wmi_connect_cmd, i16, %struct.list_head }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.126, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.126 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.127 }
%union.anon.127 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ath6kl_wep_key = type { i8, i8, [64 x i8] }
%struct.ath6kl_key = type { [32 x i8], i8, [8 x i8], i8, i32 }
%struct.ath6kl_htcap = type { i8, i8, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.target_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32 }
%struct.wmi_connect_cmd = type <{ i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8], i16, [6 x i8], i32, i8 }>
%struct.list_head = type { ptr, ptr }
%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.131, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.132 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.131 = type { ptr, i32 }
%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.128, ptr, ptr, ptr }
%union.anon.128 = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.anon.132 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.133, ptr, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.133 = type { i32 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.cfg80211_pkt_pattern = type { ptr, ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.122, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.122 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.wmi = type { [4 x i16], i8, ptr, i8, %struct.spinlock, i32, [2 x %struct.sq_threshold_params], i8, i8, i8, ptr, i32, i8 }
%struct.sq_threshold_params = type { [6 x i16], [6 x i16], i32, i32, i32, i8, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.125, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.125 = type { i64, i64, i8 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ath6kl_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.cfg80211_ap_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, i32, i32, ptr, i32, i32, %struct.cfg80211_crypto_settings, i8, i32, i32, i32, i8, i8, ptr, i8, %struct.cfg80211_bitrate_mask, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.cfg80211_fils_discovery, %struct.cfg80211_unsol_bcast_probe_resp, %struct.cfg80211_mbssid_config }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.135] }
%struct.anon.135 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.cfg80211_fils_discovery = type { i32, i32, i32, ptr }
%struct.cfg80211_unsol_bcast_probe_resp = type { i32, i32, ptr }
%struct.cfg80211_mbssid_config = type { ptr, i8, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.136 }
%union.anon.136 = type { %struct.anon.142, [16 x i8] }
%struct.anon.142 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.station_parameters = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, i8, i8, i32, i16, ptr, i8, ptr, i8, ptr, i8, i8, i8, i32, ptr, i8, i16, %struct.sta_txpwr, ptr }
%struct.sta_txpwr = type { i16, i32 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.80 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cfg80211_pmksa = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.cfg80211_mgmt_tx_params = type { ptr, i8, i32, ptr, i32, i8, i8, i32, ptr }
%struct.ath6kl_mgmt_buff = type { %struct.list_head, i32, i32, i32, i8, i32, [0 x i8] }
%struct.mgmt_frame_regs = type { i32, i32, i32, i32 }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.ath6kl_cfg80211_match_probe_ssid = type { %struct.cfg80211_ssid, i8 }
%struct.cfg80211_match_set = type { %struct.cfg80211_ssid, [6 x i8], i32, [6 x i32] }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: ath6k not in ibss mode\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_connect_event = private unnamed_addr constant [30 x i8] c"ath6kl_cfg80211_connect_event\00", align 1
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: ath6k not in station mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not add cfg80211 bss entry\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ad-hoc %s selected\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"creator\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"joiner\00", [25 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_disconnect_event = private unnamed_addr constant [33 x i8] c"ath6kl_cfg80211_disconnect_event\00", align 1
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: status%s\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_scan_complete_event = private unnamed_addr constant [36 x i8] c"ath6kl_cfg80211_scan_complete_event\00", align 1
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" aborted\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"channel switch notify nw_type %d freq %d mode %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ath6kl_band_2ghz = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @ath6kl_2ghz_channels, ptr @ath6kl_rates, i32 0, i32 14, i32 12, %struct.ieee80211_sta_ht_cap <{ i16 32, i8 1, i8 0, i8 0, %struct.ieee80211_mcs_info zeroinitializer, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: keyid %d, ismcast %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_tkip_micerr_event = private unnamed_addr constant [34 x i8] c"ath6kl_cfg80211_tkip_micerr_event\00", align 1
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wow mode suspend\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"deep sleep suspend\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"deepsleep suspend failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"suspend hw off, no action for cutpower\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"suspend cutting power\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to stop hw during suspend: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_ath6kl_cfg80211_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath6kl_cfg80211_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_ath6kl_cfg80211_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath6kl_cfg80211_suspend to i32), ptr @__kstrtab_ath6kl_cfg80211_suspend, ptr @__kstrtabns_ath6kl_cfg80211_suspend }, section "___ksymtab+ath6kl_cfg80211_suspend", align 4
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wow mode resume\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wow mode resume failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"deep sleep resume\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"deep sleep resume failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"resume restoring power\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to boot hw in resume: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_ath6kl_cfg80211_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath6kl_cfg80211_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ath6kl_cfg80211_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath6kl_cfg80211_resume to i32), ptr @__kstrtab_ath6kl_cfg80211_resume, ptr @__kstrtabns_ath6kl_cfg80211_resume }, section "___ksymtab+ath6kl_cfg80211_resume", align 4
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to disable scan during stop\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ath6kl_deep_sleep_enable: wmi_powermode_cmd failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ath6kl_cfg80211_vif_stop.bcast_mac = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@__const.ath6kl_cfg80211_vif_stop.info = private unnamed_addr constant { i64, [6 x i8], i8, [1 x i8] } { i64 0, [6 x i8] zeroinitializer, i8 1, [1 x i8] zeroinitializer }, align 8
@ath6kl_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @cfg80211_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath6kl_get_strings, ptr null, ptr @ath6kl_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @ath6kl_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ath6kl_mgmt_stypes = internal constant { [13 x %struct.ieee80211_txrx_stypes], [44 x i8] } { [13 x %struct.ieee80211_txrx_stypes] [%struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid phy capability!\0A\00", [39 x i8] zeroinitializer }, align 32
@ath6kl_band_5ghz = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @ath6kl_5ghz_a_channels, ptr getelementptr (i8, ptr @ath6kl_rates, i64 48), i32 0, i32 33, i32 8, %struct.ieee80211_sta_ht_cap <{ i16 98, i8 1, i8 0, i8 0, %struct.ieee80211_mcs_info zeroinitializer, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Firmware lacks RSN-CAP-OVERRIDE, so HT (802.11n) is disabled.\00", [34 x i8] zeroinitializer }, align 32
@cipher_suites = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1027073, i32 1027077, i32 1027074, i32 1027076, i32 4232959, i32 1339905], [40 x i8] zeroinitializer }, align 32
@ath6kl_wowlan_support = internal constant { %struct.wiphy_wowlan_support, [36 x i8] } { %struct.wiphy_wowlan_support { i32 126, i32 4, i32 64, i32 1, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't register wiphy device\0A\00", [32 x i8] zeroinitializer }, align 32
@ath6kl_cfg80211_ops = internal global { %struct.cfg80211_ops, [108 x i8] } { %struct.cfg80211_ops { ptr @__ath6kl_cfg80211_suspend, ptr @__ath6kl_cfg80211_resume, ptr null, ptr @ath6kl_cfg80211_add_iface, ptr @ath6kl_cfg80211_del_iface, ptr @ath6kl_cfg80211_change_iface, ptr @ath6kl_cfg80211_add_key, ptr @ath6kl_cfg80211_get_key, ptr @ath6kl_cfg80211_del_key, ptr @ath6kl_cfg80211_set_default_key, ptr null, ptr null, ptr @ath6kl_start_ap, ptr @ath6kl_change_beacon, ptr @ath6kl_stop_ap, ptr null, ptr @ath6kl_del_station, ptr @ath6kl_change_station, ptr @ath6kl_get_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath6kl_cfg80211_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath6kl_cfg80211_connect, ptr null, ptr @ath6kl_cfg80211_disconnect, ptr @ath6kl_cfg80211_join_ibss, ptr @ath6kl_cfg80211_leave_ibss, ptr null, ptr @ath6kl_cfg80211_set_wiphy_params, ptr @ath6kl_cfg80211_set_txpower, ptr @ath6kl_cfg80211_get_txpower, ptr null, ptr @ath6kl_tm_cmd, ptr null, ptr @ath6kl_cfg80211_set_bitrate, ptr null, ptr @ath6kl_set_pmksa, ptr @ath6kl_del_pmksa, ptr @ath6kl_flush_pmksa, ptr @ath6kl_remain_on_channel, ptr @ath6kl_cancel_remain_on_channel, ptr @ath6kl_mgmt_tx, ptr null, ptr @ath6kl_cfg80211_set_power_mgmt, ptr null, ptr null, ptr @ath6kl_cfg80211_set_txe_config, ptr @ath6kl_update_mgmt_frame_registrations, ptr null, ptr @ath6kl_get_antenna, ptr @ath6kl_cfg80211_sscan_start, ptr @ath6kl_cfg80211_sscan_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [108 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't allocate wiphy device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"added bss %pM to cfg80211\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cfg80211 already has a bss\0A\00", [36 x i8] zeroinitializer }, align 32
@ath6kl_2ghz_channels = internal global { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@ath6kl_rates = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 1, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 16, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 32, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 64, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 128, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 256, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 512, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 1024, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 2048, i16 0 }], [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/ath/ath6kl/cfg80211.c\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wmi is not ready\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wlan disabled\0A\00", [17 x i8] zeroinitializer }, align 32
@ath6kl_wow_suspend_vif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ath6kl_wow_suspend_vif.__warned.35 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"total IP addr count is exceeding fw limit\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fail to setup ip for arp agent\0A\00", [32 x i8] zeroinitializer }, align 32
@ath6kl_wow_ap.unicst_pattern = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08", [43 x i8] zeroinitializer }, align 32
@ath6kl_wow_ap.unicst_mask = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\7F", [43 x i8] zeroinitializer }, align 32
@ath6kl_wow_ap.arp_pattern = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\08\06", [30 x i8] zeroinitializer }, align 32
@ath6kl_wow_ap.arp_mask = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\FF", [30 x i8] zeroinitializer }, align 32
@ath6kl_wow_ap.discvr_pattern = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\E0\00\00\F8", [28 x i8] zeroinitializer }, align 32
@ath6kl_wow_ap.discvr_mask = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\F0\00\00\F8", [28 x i8] zeroinitializer }, align 32
@ath6kl_wow_ap.dhcp_pattern = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00C", [50 x i8] zeroinitializer }, align 32
@ath6kl_wow_ap.dhcp_mask = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to add WOW unicast IP pattern\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to add WOW ARP pattern\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to add WOW mDNS/SSDP/LLMNR pattern\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to add WOW DHCP broadcast pattern\0A\00", [54 x i8] zeroinitializer }, align 32
@ath6kl_wow_sta.discvr_pattern = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\E0\00\00\F8", [28 x i8] zeroinitializer }, align 32
@ath6kl_wow_sta.discvr_mask = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\F0\00\00\F8", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to add WOW unicast pattern\0A\00", [61 x i8] zeroinitializer }, align 32
@__in_dev_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"timeout, didn't get host sleep cmd processed event\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"error while waiting for host sleep cmd processed event %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clear wmi ctrl data timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"clear wmi ctrl data failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"deepsleep failed as wmi is not ready\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Failed to configure host sleep mode for wow resume: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s fw bmiss enhance\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to %s enhanced bmiss detection: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize aggr\0A\00", [37 x i8] zeroinitializer }, align 32
@ath6kl_cfg80211_vif_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&vif->disconnect_timer)\00", [39 x i8] zeroinitializer }, align 32
@ath6kl_cfg80211_vif_init.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&vif->sched_scan_timer)\00", [39 x i8] zeroinitializer }, align 32
@ath6kl_cfg80211_vif_init.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vif->if_lock\00", [18 x i8] zeroinitializer }, align 32
@ath6kl_gstrings_sta_stats = internal constant { [37 x [32 x i8]], [288 x i8] } { [37 x [32 x i8]] [[32 x i8] c"tx_pkts_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pkts_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ucast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_bcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ucast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_bcast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_rts_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_retry\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_multi_retry\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_rts_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_tkip_counter_measures\00\00\00\00\00\00", [32 x i8] c"d_rx_ucast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_ucast_rate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_bcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_ucast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_bcast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_frag_pkt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_crc_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_keycache_miss\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_decrypt_crc_err\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_duplicate_frames\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_mic_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_tkip_format_err\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_ccmp_format_err\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_ccmp_replay_err\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_beacon_miss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_num_connects\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_num_disconnects\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_beacon_avg_rssi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_arp_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_arp_matched\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_arp_replied\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [288 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"cfg reg_notify %c%c%s%s initiator %d hint_type %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" intersect\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" processed\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set regdomain: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to start scan for a regdomain change: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ath6kl_5ghz_a_channels = internal global { [33 x %struct.ieee80211_channel], [456 x i8] } { [33 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 1, i32 5180, i16 0, i16 36, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5200, i16 0, i16 40, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5220, i16 0, i16 44, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5240, i16 0, i16 48, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5260, i16 0, i16 52, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5280, i16 0, i16 56, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5300, i16 0, i16 60, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5320, i16 0, i16 64, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5500, i16 0, i16 100, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5520, i16 0, i16 104, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5540, i16 0, i16 108, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5560, i16 0, i16 112, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5580, i16 0, i16 116, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5600, i16 0, i16 120, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5620, i16 0, i16 124, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5640, i16 0, i16 128, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5660, i16 0, i16 132, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5680, i16 0, i16 136, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5700, i16 0, i16 140, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5745, i16 0, i16 149, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5765, i16 0, i16 153, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5785, i16 0, i16 157, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5805, i16 0, i16 161, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5825, i16 0, i16 165, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5920, i16 0, i16 184, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5940, i16 0, i16 188, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5960, i16 0, i16 192, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5980, i16 0, i16 196, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 6000, i16 0, i16 200, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 6020, i16 0, i16 204, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 6040, i16 0, i16 208, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 6060, i16 0, i16 212, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 6080, i16 0, i16 216, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [456 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hif suspend\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hif resume\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Reached maximum number of supported vif\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Not a supported interface type\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid interface type %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: type %u\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_change_iface = private unnamed_addr constant [29 x i8] c"ath6kl_cfg80211_change_iface\00", align 1
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid interface to bring up P2P\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: key index %d out of bounds\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_add_key = private unnamed_addr constant [24 x i8] c"ath6kl_cfg80211_add_key\00", align 1
@.str.74 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: index %d, key_len %d, key_type 0x%x, key_usage 0x%x, seq_len %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Delay initial group key configuration until AP mode has been started\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Delay WEP key configuration until AP mode has been started\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: index %d\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_get_key = private unnamed_addr constant [24 x i8] c"ath6kl_cfg80211_get_key\00", align 1
@__func__.ath6kl_cfg80211_del_key = private unnamed_addr constant [24 x i8] c"ath6kl_cfg80211_del_key\00", align 1
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: index %d is empty\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_set_default_key = private unnamed_addr constant [32 x i8] c"ath6kl_cfg80211_set_default_key\00", align 1
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid key index %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@__func__.ath6kl_start_ap = private unnamed_addr constant [16 x i8] c"ath6kl_start_ap\00", align 1
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set beacon interval: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to set dtim_period in beacon: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: 0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.ath6kl_set_auth_type = private unnamed_addr constant [21 x i8] c"ath6kl_set_auth_type\00", align 1
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: 0x%x not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: cipher 0x%x, ucast %u\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.ath6kl_set_cipher = private unnamed_addr constant [18 x i8] c"ath6kl_set_cipher\00", align 1
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cipher 0x%x not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@bcast_addr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid rate from stats: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't set bss filtering\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to set Probe Request appie for scan\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to set scan channels, scan all channels\00", [49 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to start scan: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"destroy in progress\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SkipScan: channel or bssid invalid\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"busy, couldn't get access\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"busy, destroy in progress\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cmd queue drain timeout\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wmi_reconnect_cmd failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"key index %d out of bounds\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"%s: connect called with authmode %d dot11 auth %d PW crypto %d PW crypto len %d GRP crypto %d GRP crypto len %d channel hint %u\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_connect = private unnamed_addr constant [24 x i8] c"ath6kl_cfg80211_connect\00", align 1
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"couldn't set listen intervel\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid request\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ath6kl_wmi_connect_cmd failed\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %u\0A\00", [24 x i8] zeroinitializer }, align 32
@__func__.ath6kl_set_wpa_version = private unnamed_addr constant [23 x i8] c"ath6kl_set_wpa_version\00", align 1
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %u not supported\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.ath6kl_set_key_mgmt = private unnamed_addr constant [20 x i8] c"ath6kl_set_key_mgmt\00", align 1
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: reason=%u\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_disconnect = private unnamed_addr constant [27 x i8] c"ath6kl_cfg80211_disconnect\00", align 1
@__func__.ath6kl_cfg80211_join_ibss = private unnamed_addr constant [26 x i8] c"ath6kl_cfg80211_join_ibss\00", align 1
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: changed 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_set_wiphy_params = private unnamed_addr constant [33 x i8] c"ath6kl_cfg80211_set_wiphy_params\00", align 1
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ath6kl_wmi_set_rts_cmd failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: type 0x%x, dbm %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_set_txpower = private unnamed_addr constant [28 x i8] c"ath6kl_cfg80211_set_txpower\00", align 1
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: type 0x%x not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ath6kl_wmi_get_tx_pwr_cmd failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"target did not respond\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: pmgmt %d, timeout %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.ath6kl_cfg80211_set_power_mgmt = private unnamed_addr constant [31 x i8] c"ath6kl_cfg80211_set_power_mgmt\00", align 1
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: rec power\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: max perf\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wmi_powermode_cmd failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to set RSSI threshold for scan\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to set probe request IE for scheduled scan: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@switch.table.ath6kl_cfg80211_add_iface = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02\01\10\01\01\01\01\01\10", [23 x i8] zeroinitializer }, align 32
@switch.table.ath6kl_cfg80211_change_iface = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02\01\10\01\01\01\01\01\10", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.125 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.127 = internal global [7 x i64] [i64 5, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1339905]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027074]
@__sancov_gen_cov_switch_values.130 = internal global [7 x i64] [i64 5, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1339905]
@__sancov_gen_cov_switch_values.131 = internal global [7 x i64] [i64 5, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1339905]
@__sancov_gen_cov_switch_values.132 = internal global [14 x i64] [i64 12, i64 32, i64 1000, i64 2000, i64 5500, i64 6000, i64 9000, i64 11000, i64 12000, i64 18000, i64 24000, i64 36000, i64 48000, i64 54000]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.138 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 8]
@__sancov_gen_cov_switch_values.139 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1339905]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.141 = internal global [11 x i64] [i64 9, i64 32, i64 6500, i64 13000, i64 19500, i64 26000, i64 39000, i64 52000, i64 58500, i64 65000, i64 72200]
@__sancov_gen_cov_switch_values.142 = internal global [11 x i64] [i64 9, i64 32, i64 13500, i64 27000, i64 40500, i64 54000, i64 81000, i64 108000, i64 121500, i64 135000, i64 150000]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 32, i64 1027073, i64 1027074, i64 4232704]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 769, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 778, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 788, i32 14 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 793, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 794, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 794, i32 45 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1084, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1085, i32 16 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1085, i32 29 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1112, i32 6 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"ath6kl_band_2ghz\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 124, i32 40 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1371, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2430, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2448, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2452, i32 15 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2466, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2470, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2474, i32 16 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2499, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2503, i32 16 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2510, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2514, i32 16 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2520, i32 34 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2524, i32 16 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3508, i32 15 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3523, i32 16 }
@___asan_gen_.224 = private unnamed_addr constant [10 x i8] c"bcast_mac\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3601, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant [19 x i8] c"ath6kl_ethtool_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3769, i32 33 }
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c"ath6kl_mgmt_stypes\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3403, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3919, i32 14 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"ath6kl_band_5ghz\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 133, i32 40 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3937, i32 15 }
@___asan_gen_.242 = private unnamed_addr constant [14 x i8] c"cipher_suites\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1704, i32 18 }
@___asan_gen_.245 = private unnamed_addr constant [22 x i8] c"ath6kl_wowlan_support\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3849, i32 42 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3993, i32 14 }
@___asan_gen_.251 = private unnamed_addr constant [20 x i8] c"ath6kl_cfg80211_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3430, i32 28 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 4018, i32 14 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 726, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 729, i32 35 }
@___asan_gen_.263 = private unnamed_addr constant [21 x i8] c"ath6kl_2ghz_channels\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 87, i32 33 }
@___asan_gen_.266 = private unnamed_addr constant [13 x i8] c"ath6kl_rates\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 62, i32 30 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2230, i32 6 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 289, i32 14 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 294, i32 35 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2197, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2208, i32 14 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2214, i32 14 }
@___asan_gen_.287 = private unnamed_addr constant [15 x i8] c"unicst_pattern\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1962, i32 18 }
@___asan_gen_.290 = private unnamed_addr constant [12 x i8] c"unicst_mask\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1966, i32 18 }
@___asan_gen_.293 = private unnamed_addr constant [12 x i8] c"arp_pattern\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1971, i32 18 }
@___asan_gen_.296 = private unnamed_addr constant [9 x i8] c"arp_mask\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1972, i32 18 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1974, i32 18 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1975, i32 18 }
@___asan_gen_.305 = private unnamed_addr constant [13 x i8] c"dhcp_pattern\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1977, i32 18 }
@___asan_gen_.308 = private unnamed_addr constant [10 x i8] c"dhcp_mask\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1983, i32 18 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1998, i32 14 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2008, i32 14 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2021, i32 14 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2031, i32 14 }
@___asan_gen_.323 = private unnamed_addr constant [15 x i8] c"discvr_pattern\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2041, i32 18 }
@___asan_gen_.326 = private unnamed_addr constant [12 x i8] c"discvr_mask\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2042, i32 18 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2054, i32 14 }
@___asan_gen_.333 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 249, i32 9 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2102, i32 15 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2105, i32 15 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2115, i32 16 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2118, i32 16 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2356, i32 14 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2319, i32 15 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 444, i32 34 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 445, i32 15 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 445, i32 26 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 450, i32 14 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3584, i32 14 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3588, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3589, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3592, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [26 x i8] c"ath6kl_gstrings_sta_stats\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3656, i32 19 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3544, i32 6 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3546, i32 27 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3547, i32 27 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3555, i32 14 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3574, i32 14 }
@___asan_gen_.404 = private unnamed_addr constant [23 x i8] c"ath6kl_5ghz_a_channels\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 104, i32 33 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 90, i32 29 }
@___asan_gen_.411 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ath/ath6kl/hif-ops.h\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 127, i32 29 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1519, i32 14 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1524, i32 14 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 382, i32 14 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1564, i32 34 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1588, i32 15 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1150, i32 7 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1206, i32 6 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1220, i32 8 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1237, i32 7 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1291, i32 34 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1272, i32 7 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1340, i32 35 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2775, i32 34 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2791, i32 15 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2798, i32 15 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 197, i32 34 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 215, i32 14 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 228, i32 34 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 258, i32 14 }
@___asan_gen_.471 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 778, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant [11 x i8] c"bcast_addr\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2988, i32 17 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1855, i32 7 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1014, i32 15 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1029, i32 14 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1046, i32 16 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1067, i32 14 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 471, i32 14 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 478, i32 14 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 483, i32 14 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 488, i32 14 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 501, i32 15 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 526, i32 15 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 570, i32 15 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 610, i32 6 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 627, i32 15 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 658, i32 14 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 661, i32 14 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 178, i32 34 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 187, i32 14 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 827, i32 34 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1385, i32 34 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1398, i32 15 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1415, i32 34 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1432, i32 35 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1460, i32 15 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1468, i32 15 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1485, i32 34 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1492, i32 35 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1495, i32 35 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1501, i32 14 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3324, i32 15 }
@___asan_gen_.566 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.567 = private constant [46 x i8] c"../drivers/net/wireless/ath/ath6kl/cfg80211.c\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 3341, i32 15 }
@___asan_gen_.569 = private unnamed_addr constant [39 x i8] c"switch.table.ath6kl_cfg80211_add_iface\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [42 x i8] c"switch.table.ath6kl_cfg80211_change_iface\00", align 1
@llvm.compiler.used = appending global [145 x ptr] [ptr @__ksymtab_ath6kl_cfg80211_resume, ptr @__ksymtab_ath6kl_cfg80211_suspend, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ath6kl_band_2ghz, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ath6kl_cfg80211_vif_stop.bcast_mac, ptr @ath6kl_ethtool_ops, ptr @ath6kl_mgmt_stypes, ptr @.str.25, ptr @ath6kl_band_5ghz, ptr @.str.26, ptr @cipher_suites, ptr @ath6kl_wowlan_support, ptr @.str.27, ptr @ath6kl_cfg80211_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @ath6kl_2ghz_channels, ptr @ath6kl_rates, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @ath6kl_wow_ap.unicst_pattern, ptr @ath6kl_wow_ap.unicst_mask, ptr @ath6kl_wow_ap.arp_pattern, ptr @ath6kl_wow_ap.arp_mask, ptr @ath6kl_wow_ap.discvr_pattern, ptr @ath6kl_wow_ap.discvr_mask, ptr @ath6kl_wow_ap.dhcp_pattern, ptr @ath6kl_wow_ap.dhcp_mask, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @ath6kl_wow_sta.discvr_pattern, ptr @ath6kl_wow_sta.discvr_mask, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @ath6kl_cfg80211_vif_init.__key, ptr @.str.55, ptr @ath6kl_cfg80211_vif_init.__key.56, ptr @.str.57, ptr @ath6kl_cfg80211_vif_init.__key.58, ptr @.str.59, ptr @ath6kl_gstrings_sta_stats, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @ath6kl_5ghz_a_channels, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @bcast_addr, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @switch.table.ath6kl_cfg80211_add_iface, ptr @switch.table.ath6kl_cfg80211_change_iface], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_band_2ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_cfg80211_vif_stop.bcast_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_mgmt_stypes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_band_5ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipher_suites to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_wowlan_support to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_cfg80211_ops to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_2ghz_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_wow_ap.unicst_pattern to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_wow_ap.unicst_mask to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_wow_ap.arp_pattern to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_wow_ap.arp_mask to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_wow_ap.discvr_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_wow_ap.discvr_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_wow_ap.dhcp_pattern to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_wow_ap.dhcp_mask to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_wow_sta.discvr_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_wow_sta.discvr_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_cfg80211_vif_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_cfg80211_vif_init.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_cfg80211_vif_init.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_gstrings_sta_stats to i32), i32 1184, i32 1472, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_5ghz_a_channels to i32), i32 1848, i32 2304, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcast_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath6kl_cfg80211_add_iface to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath6kl_cfg80211_change_iface to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cfg80211_connect_event(ptr noundef %vif, i16 noundef zeroext %channel, ptr noundef %bssid, i16 noundef zeroext %listen_intvl, i16 noundef zeroext %beacon_intvl, i32 noundef %nw_type, i8 noundef zeroext %beacon_ie_len, i8 noundef zeroext %assoc_req_len, i8 noundef zeroext %assoc_resp_len, ptr noundef %assoc_info) local_unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  %data.i.i = alloca %struct.cfg80211_inform_bss, align 8
  %roam_info = alloca %struct.cfg80211_roam_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  %conv = zext i8 %beacon_ie_len to i32
  %add.ptr = getelementptr i8, ptr %assoc_info, i32 %conv
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 4
  %conv6 = zext i8 %assoc_req_len to i32
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %conv6
  %add.ptr9 = getelementptr i8, ptr %add.ptr7, i32 6
  %sub = add i8 %assoc_req_len, -4
  %sub15 = add i8 %assoc_resp_len, -6
  %assoc_bss_beacon_int = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 35
  %2 = ptrtoint ptr %assoc_bss_beacon_int to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %beacon_intvl, ptr %assoc_bss_beacon_int, align 2
  %flags = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #12
  %and = and i32 %nw_type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then:                                          ; preds = %entry
  %iftype = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.then.if.end19_crit_edge, label %if.then18

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ath6kl_cfg80211_connect_event) #12
  br label %cleanup

if.end19:                                         ; preds = %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %and20 = and i32 %nw_type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end33_crit_edge, label %if.then22

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then22:                                        ; preds = %if.end19
  %iftype24 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %iftype24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iftype24, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.then31 [
    i32 2, label %if.then22.if.end33_crit_edge
    i32 8, label %if.then22.if.end33_crit_edge120
  ]

if.then22.if.end33_crit_edge120:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then22.if.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then31:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ath6kl_cfg80211_connect_event) #12
  br label %cleanup

if.end33:                                         ; preds = %if.then22.if.end33_crit_edge, %if.then22.if.end33_crit_edge120, %if.end19.if.end33_crit_edge
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy, align 4
  %conv34 = zext i16 %channel to i32
  %mul.i = mul nuw nsw i32 %conv34, 1000
  %call.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %9, i32 noundef %mul.i) #12
  %10 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar1, align 8
  %..i = select i1 %tobool.not, i16 1, i16 2
  %wiphy.i = getelementptr inbounds %struct.ath6kl, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy.i, align 4
  %ssid.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 8
  %ssid_len.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 7
  %14 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssid_len.i, align 8
  %call.i111 = tail call ptr @cfg80211_get_bss(ptr noundef %13, ptr noundef %call.i, ptr noundef %bssid, ptr noundef %ssid.i, i32 noundef %15, i32 noundef %and, i32 noundef 2) #12
  %cmp.i = icmp eq ptr %call.i111, null
  br i1 %cmp.i, label %if.then2.i, label %ath6kl_add_bss_if_needed.exit.thread114

if.then2.i:                                       ; preds = %if.end33
  %add.i = add nuw nsw i32 %conv, 2
  %16 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ssid_len.i, align 8
  %add4.i = add i32 %17, %add.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add4.i, i32 noundef 3264) #15
  %cmp6.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp6.i, label %if.then2.i.if.then38_crit_edge, label %if.end8.i

if.then2.i.if.then38_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

if.end8.i:                                        ; preds = %if.then2.i
  %18 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %call9.i.i, align 128
  %19 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ssid_len.i, align 8
  %conv.i = trunc i32 %20 to i8
  %arrayidx10.i = getelementptr i8, ptr %call9.i.i, i32 1
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %arrayidx10.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 2
  %22 = call ptr @memcpy(ptr %add.ptr.i, ptr %ssid.i, i32 %20)
  %add.ptr16.i = getelementptr i8, ptr %add.ptr.i, i32 %20
  %23 = call ptr @memcpy(ptr %add.ptr16.i, ptr %assoc_info, i32 %conv)
  %24 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wiphy.i, align 4
  %26 = load i32, ptr %ssid_len.i, align 8
  %add20.i = add i32 %26, %add.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i.i) #12
  %27 = getelementptr inbounds i8, ptr %data.i.i, i32 8
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %data.i.i, align 8
  %scan_width.i.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %scan_width.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %scan_width.i.i, align 4
  %call.i.i = call ptr @cfg80211_inform_bss_data(ptr noundef %25, ptr noundef nonnull %data.i.i, i32 noundef 0, ptr noundef %bssid, i64 noundef 0, i16 noundef zeroext %..i, i16 noundef zeroext 100, ptr noundef nonnull %call9.i.i, i32 noundef %add20.i, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i.i) #12
  %tobool22.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool22.not.i, label %ath6kl_add_bss_if_needed.exit.thread118, label %ath6kl_add_bss_if_needed.exit

ath6kl_add_bss_if_needed.exit.thread118:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.then38

ath6kl_add_bss_if_needed.exit.thread114:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.30) #12
  br label %if.end39

ath6kl_add_bss_if_needed.exit:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.29, ptr noundef %bssid) #12
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.end39

if.then38:                                        ; preds = %ath6kl_add_bss_if_needed.exit.thread118, %if.then2.i.if.then38_crit_edge
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end39:                                         ; preds = %ath6kl_add_bss_if_needed.exit, %ath6kl_add_bss_if_needed.exit.thread114
  %retval.0.i117 = phi ptr [ %call.i111, %ath6kl_add_bss_if_needed.exit.thread114 ], [ %call.i.i, %ath6kl_add_bss_if_needed.exit ]
  br i1 %tobool.not, label %if.end46, label %if.then42

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %and43 = and i32 %nw_type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %cond = select i1 %tobool44.not, ptr @.str.5, ptr @.str.4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond) #12
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %31 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ndev, align 4
  call void @cfg80211_ibss_joined(ptr noundef %32, ptr noundef %bssid, ptr noundef %call.i, i32 noundef 3264) #12
  %33 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wiphy, align 4
  call void @cfg80211_put_bss(ptr noundef %34, ptr noundef nonnull %retval.0.i117) #12
  br label %cleanup

if.end46:                                         ; preds = %if.end39
  %sme_state = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 29
  %35 = ptrtoint ptr %sme_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sme_state, align 8
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %36, label %if.end46.cleanup_crit_edge [
    i32 1, label %if.then49
    i32 2, label %if.then58
  ]

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %sme_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %sme_state, align 8
  %ndev51 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %39 = ptrtoint ptr %ndev51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev51, align 4
  %conv52 = zext i8 %sub to i32
  %conv53 = zext i8 %sub15 to i32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i) #12
  %41 = getelementptr inbounds i8, ptr %params.i.i, i32 28
  %42 = call ptr @memset(ptr %41, i32 0, i32 24)
  %43 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %params.i.i, align 4
  %bssid2.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %bssid2.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %bssid, ptr %bssid2.i.i, align 4
  %bss3.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %bss3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %bss3.i.i, align 4
  %req_ie4.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %req_ie4.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr3, ptr %req_ie4.i.i, align 4
  %req_ie_len5.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %req_ie_len5.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv52, ptr %req_ie_len5.i.i, align 4
  %resp_ie6.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %resp_ie6.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr9, ptr %resp_ie6.i.i, align 4
  %resp_ie_len7.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %resp_ie_len7.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv53, ptr %resp_ie_len7.i.i, align 4
  %timeout_reason8.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %timeout_reason8.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %timeout_reason8.i.i, align 4
  call void @cfg80211_connect_done(ptr noundef %40, ptr noundef nonnull %params.i.i, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i) #12
  %51 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wiphy, align 4
  call void @cfg80211_put_bss(ptr noundef %52, ptr noundef nonnull %retval.0.i117) #12
  br label %cleanup

if.then58:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %roam_info) #12
  %53 = ptrtoint ptr %roam_info to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %roam_info, align 4
  %bss60 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 1
  %54 = ptrtoint ptr %bss60 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %retval.0.i117, ptr %bss60, align 4
  %bssid61 = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 2
  %55 = ptrtoint ptr %bssid61 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %bssid61, align 4
  %req_ie = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 3
  %56 = ptrtoint ptr %req_ie to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr3, ptr %req_ie, align 4
  %req_ie_len = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 4
  %conv62 = zext i8 %sub to i32
  %57 = ptrtoint ptr %req_ie_len to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv62, ptr %req_ie_len, align 4
  %resp_ie = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 5
  %58 = ptrtoint ptr %resp_ie to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr9, ptr %resp_ie, align 4
  %resp_ie_len = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 6
  %conv63 = zext i8 %sub15 to i32
  %59 = ptrtoint ptr %resp_ie_len to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv63, ptr %resp_ie_len, align 4
  %fils = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 7
  %60 = call ptr @memset(ptr %fils, i32 0, i32 24)
  %ndev64 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %61 = ptrtoint ptr %ndev64 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ndev64, align 4
  call void @cfg80211_roamed(ptr noundef %62, ptr noundef nonnull %roam_info, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %roam_info) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.then49, %if.end46.cleanup_crit_edge, %if.then42, %if.then38, %if.then31, %if.then18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ibss_joined(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_roamed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cfg80211_disconnect_event(ptr noundef %vif, i8 noundef zeroext %reason, ptr noundef %bssid, i8 noundef zeroext %assoc_resp_len, ptr nocapture noundef readnone %assoc_info, i16 noundef zeroext %proto_reason) local_unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  %scan_req = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 28
  %2 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scan_req, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #12
  %4 = call ptr @memcpy(ptr %info, ptr @__const.ath6kl_cfg80211_vif_stop.info, i32 16)
  call void @cfg80211_scan_done(ptr noundef nonnull %3, ptr noundef nonnull %info) #12
  %5 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %scan_req, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 17
  %6 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nw_type, align 4
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  %iftype = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.then5.cleanup_crit_edge, label %if.then7

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ath6kl_cfg80211_disconnect_event) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %and12 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end9.if.end25_crit_edge, label %if.then14

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then14:                                        ; preds = %if.end9
  %iftype16 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %iftype16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iftype16, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %11, label %if.then23 [
    i32 2, label %if.then14.if.end25_crit_edge
    i32 8, label %if.then14.if.end25_crit_edge58
  ]

if.then14.if.end25_crit_edge58:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then23:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ath6kl_cfg80211_disconnect_event) #12
  br label %cleanup

if.end25:                                         ; preds = %if.then14.if.end25_crit_edge, %if.then14.if.end25_crit_edge58, %if.end9.if.end25_crit_edge
  %flags = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #12
  %sme_state = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 29
  %13 = ptrtoint ptr %sme_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sme_state, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %14, label %if.end25.if.end35_crit_edge [
    i32 1, label %if.then28
    i32 2, label %if.then32
  ]

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i) #12
  %18 = getelementptr inbounds i8, ptr %params.i.i, i32 28
  %19 = call ptr @memset(ptr %18, i32 0, i32 24)
  %20 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %params.i.i, align 4
  %bssid2.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %bssid2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %bssid, ptr %bssid2.i.i, align 4
  %bss3.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 2
  %timeout_reason8.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %timeout_reason8.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %timeout_reason8.i.i, align 4
  %23 = call ptr @memset(ptr %bss3.i.i, i32 0, i32 20)
  call void @cfg80211_connect_done(ptr noundef %17, ptr noundef nonnull %params.i.i, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i) #12
  br label %if.end35

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %ndev33 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %24 = ptrtoint ptr %ndev33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev33, align 4
  call void @cfg80211_disconnected(ptr noundef %25, i16 noundef zeroext %proto_reason, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i32 noundef 3264) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then28, %if.end25.if.end35_crit_edge
  %26 = ptrtoint ptr %sme_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %sme_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %reason)
  %cmp38.not = icmp eq i8 %reason, 3
  br i1 %cmp38.not, label %if.end35.cleanup_crit_edge, label %if.then40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %29 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fw_vif_idx, align 8
  %call = call i32 @ath6kl_wmi_disconnect_cmd(ptr noundef %28, i8 noundef zeroext %30) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end35.cleanup_crit_edge, %if.then23, %if.then7, %if.then5.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_disconnect_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cfg80211_scan_complete_event(ptr nocapture noundef %vif, i1 noundef zeroext %aborted) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %aborted to i8
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #12
  %2 = getelementptr inbounds i8, ptr %info, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %aborted2 = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %4 = call ptr @memset(ptr %info, i32 0, i32 14)
  %5 = ptrtoint ptr %aborted2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %aborted2, align 2
  %cond = select i1 %aborted, ptr @.str.7, ptr @.str.8
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ath6kl_cfg80211_scan_complete_event, ptr noundef nonnull %cond) #12
  %scan_req = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 28
  %6 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scan_req, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %aborted, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8:                                          ; preds = %if.end
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.end8.out_crit_edge, label %land.lhs.true

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true:                                    ; preds = %if.end8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ssid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %land.lhs.true.out_crit_edge, label %for.cond.preheader

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond.preheader:                               ; preds = %land.lhs.true
  %14 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scan_req, align 4
  %n_ssids1534 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %n_ssids1534 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_ssids1534, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp35 = icmp sgt i32 %17, 0
  br i1 %cmp35, label %for.body.lr.ph, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wmi, align 4
  %20 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fw_vif_idx, align 8
  %conv17 = trunc i32 %i.036 to i8
  %call = tail call i32 @ath6kl_wmi_probedssid_cmd(ptr noundef %19, i8 noundef zeroext %21, i8 noundef zeroext %conv17, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #12
  %inc = add nuw nsw i32 %i.036, 1
  %22 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scan_req, align 4
  %n_ssids15 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %n_ssids15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_ssids15, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

out:                                              ; preds = %for.body.out_crit_edge, %for.cond.preheader.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end8.out_crit_edge, %if.end.out_crit_edge
  %26 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %scan_req, align 4
  call void @cfg80211_scan_done(ptr noundef %27, ptr noundef nonnull %info) #12
  %28 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %scan_req, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_probedssid_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cfg80211_ch_switch_notify(ptr noundef %vif, i32 noundef %freq, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %chandef = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef) #12
  %0 = call ptr @memset(ptr %chandef, i32 255, i32 28)
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 17
  %1 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nw_type, align 4
  %conv = zext i8 %2 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %freq, i32 noundef %mode) #12
  %ar = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %3 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar, align 8
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 4
  %mul.i = mul i32 %freq, 1000
  %call.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %6, i32 noundef %mul.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %mode)
  %cmp = icmp eq i32 %mode, 6
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = load i8, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_2ghz, i32 0, i32 5, i32 1), align 2, !range !347
  %tobool = zext i8 %7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef, ptr noundef %call.i, i32 noundef %8) #12
  %mtx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 1, i32 7
  call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #12
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  call void @cfg80211_ch_switch_notify(ptr noundef %10, ptr noundef nonnull %chandef) #12
  call void @mutex_unlock(ptr noundef %mtx) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ch_switch_notify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cfg80211_tkip_micerr_event(ptr noundef %vif, i8 noundef zeroext %keyid, i1 noundef zeroext %ismcast) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %keyid to i32
  %conv1 = zext i1 %ismcast to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.ath6kl_cfg80211_tkip_micerr_event, i32 noundef %conv, i32 noundef %conv1) #12
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %bssid = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 18
  %not.ismcast = xor i1 %ismcast, true
  %cond = zext i1 %not.ismcast to i32
  tail call void @cfg80211_michael_mic_failure(ptr noundef %1, ptr noundef %bssid, i32 noundef %cond, i32 noundef %conv, ptr noundef null, i32 noundef 3264) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_michael_mic_failure(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_cfg80211_suspend(ptr noundef %ar, i32 noundef %mode, ptr noundef readonly %wow) #0 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
  %mac_mask.i.i.i = alloca [6 x i8], align 1
  %mask.i.i.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb3
    i32 1, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1048576, ptr noundef nonnull @.str.11) #12
  tail call void @ath6kl_tx_data_cleanup(ptr noundef %ar) #12
  %state = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %call.i = tail call ptr @ath6kl_vif_first(ptr noundef %ar) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %lor.lhs.false.critedge.i, !prof !348

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 2230, i32 noundef 9, ptr noundef null) #12
  br label %if.then

lor.lhs.false.critedge.i:                         ; preds = %sw.bb
  %ar1.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %ar1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar1.i.i, align 8
  %flag.i.i = getelementptr inbounds %struct.ath6kl, ptr %4, i32 0, i32 75
  %5 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag.i.i, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %if.then

if.end.i.i:                                       ; preds = %lor.lhs.false.critedge.i
  %flags.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end24.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %if.then

if.end24.i:                                       ; preds = %if.end.i.i
  %tobool25.not.i = icmp eq ptr %wow, null
  br i1 %tobool25.not.i, label %if.end24.i.if.end27.i_crit_edge, label %land.lhs.true.i

if.end24.i.if.end27.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %n_patterns.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wow, i32 0, i32 9
  %11 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_patterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp.i = icmp sgt i32 %12, 4
  br i1 %cmp.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.if.end27.i_crit_edge

land.lhs.true.i.if.end27.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end27.i:                                       ; preds = %land.lhs.true.i.if.end27.i_crit_edge, %if.end24.i.if.end27.i_crit_edge
  %list_lock.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i) #12
  %vif_list.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 13
  %13 = ptrtoint ptr %vif_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %vif.0133.i = load ptr, ptr %vif_list.i, align 4
  %cmp30.not134.i = icmp eq ptr %vif.0133.i, %vif_list.i
  br i1 %cmp30.not134.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i) #12
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %if.end27.i
  %n_patterns.i.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wow, i32 0, i32 9
  %patterns.i.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wow, i32 0, i32 7
  %disconnect.i.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wow, i32 0, i32 1
  %magic_pkt.i.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wow, i32 0, i32 2
  %gtk_rekey_failure.i.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wow, i32 0, i32 3
  %eap_identity_req.i.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wow, i32 0, i32 4
  %four_way_handshake.i.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wow, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %vif.0138.i = phi ptr [ %vif.0133.i, %for.body.lr.ph.i ], [ %vif.0.i, %for.inc.i.for.body.i_crit_edge ]
  %connected.0.off0137.i = phi i1 [ false, %for.body.lr.ph.i ], [ %connected.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %filter.0135.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %filter.9.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0138.i, i32 0, i32 6
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool34.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool34.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false35.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false35.i:                                ; preds = %for.body.i
  %ar1.i88.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0138.i, i32 0, i32 3
  %16 = ptrtoint ptr %ar1.i88.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ar1.i88.i, align 8
  %flag.i89.i = getelementptr inbounds %struct.ath6kl, ptr %17, i32 0, i32 75
  %18 = ptrtoint ptr %flag.i89.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flag.i89.i, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i90.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i90.i, label %if.then.i91.i, label %if.end.i94.i

if.then.i91.i:                                    ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %for.inc.i

if.end.i94.i:                                     ; preds = %lor.lhs.false35.i
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %23 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i93.i = icmp eq i32 %23, 0
  br i1 %tobool3.not.i93.i, label %if.then4.i95.i, label %if.end38.i

if.then4.i95.i:                                   ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %for.inc.i

if.end38.i:                                       ; preds = %if.end.i94.i
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i, align 4
  %26 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i100.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i100.i, label %land.lhs.true.i.i, label %if.end38.i.if.end8.i.i_crit_edge

if.end38.i.if.end8.i.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end38.i
  %fw_capabilities.i.i = getelementptr inbounds %struct.ath6kl, ptr %17, i32 0, i32 87
  %27 = ptrtoint ptr %fw_capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %fw_capabilities.i.i, align 4
  %29 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool3.not.i101.i = icmp eq i32 %29, 0
  br i1 %tobool3.not.i101.i, label %land.lhs.true.i.i.if.end8.i.i_crit_edge, label %if.then.i102.i

land.lhs.true.i.i.if.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then.i102.i:                                   ; preds = %land.lhs.true.i.i
  %wmi.i.i = getelementptr inbounds %struct.ath6kl, ptr %17, i32 0, i32 7
  %30 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wmi.i.i, align 4
  %fw_vif_idx.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0138.i, i32 0, i32 5
  %32 = ptrtoint ptr %fw_vif_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fw_vif_idx.i.i, align 8
  %call5.i.i = call i32 @ath6kl_wmi_mcast_filter_cmd(ptr noundef %31, i8 noundef zeroext %33, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then.i102.i.if.end8.i.i_crit_edge, label %if.then.i102.i.if.else.i_crit_edge

if.then.i102.i.if.else.i_crit_edge:               ; preds = %if.then.i102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i102.i.if.end8.i.i_crit_edge:             ; preds = %if.then.i102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then.i102.i.if.end8.i.i_crit_edge, %land.lhs.true.i.i.if.end8.i.i_crit_edge, %if.end38.i.if.end8.i.i_crit_edge
  %wmi10.i.i = getelementptr inbounds %struct.ath6kl, ptr %17, i32 0, i32 7
  %fw_vif_idx11.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0138.i, i32 0, i32 5
  %34 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wmi10.i.i, align 4
  %36 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call12.i.i = call i32 @ath6kl_wmi_del_wow_pattern_cmd(ptr noundef %35, i8 noundef zeroext %37, i16 noundef zeroext 0, i16 noundef zeroext 0) #12
  %38 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wmi10.i.i, align 4
  %40 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call12.1.i.i = call i32 @ath6kl_wmi_del_wow_pattern_cmd(ptr noundef %39, i8 noundef zeroext %41, i16 noundef zeroext 0, i16 noundef zeroext 1) #12
  %42 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wmi10.i.i, align 4
  %44 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call12.2.i.i = call i32 @ath6kl_wmi_del_wow_pattern_cmd(ptr noundef %43, i8 noundef zeroext %45, i16 noundef zeroext 0, i16 noundef zeroext 2) #12
  %46 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wmi10.i.i, align 4
  %48 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call12.3.i.i = call i32 @ath6kl_wmi_del_wow_pattern_cmd(ptr noundef %47, i8 noundef zeroext %49, i16 noundef zeroext 0, i16 noundef zeroext 3) #12
  br i1 %tobool25.not.i, label %if.else.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end8.i.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mask.i.i.i) #12
  %50 = ptrtoint ptr %n_patterns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n_patterns.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp79.i.i.i = icmp sgt i32 %51, 0
  br i1 %cmp79.i.i.i, label %if.then14.i.i.for.body.i.i.i_crit_edge, label %if.then14.i.i.for.end26.i.i.i_crit_edge

if.then14.i.i.for.end26.i.i.i_crit_edge:          ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end26.i.i.i

if.then14.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.then14.i.i
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.end.i.i.i
  %inc25.i.i.i = add i16 %i.080.i.i.i, 1
  %conv.i.i.i = zext i16 %inc25.i.i.i to i32
  %52 = ptrtoint ptr %n_patterns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n_patterns.i.i.i, align 4
  %cmp.i.i.i = icmp sgt i32 %53, %conv.i.i.i
  br i1 %cmp.i.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge, label %for.cond.i.i.i.for.end26.i.i.i_crit_edge

for.cond.i.i.i.for.end26.i.i.i_crit_edge:         ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end26.i.i.i

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.then14.i.i.for.body.i.i.i_crit_edge
  %conv81.i.i.i = phi i32 [ %conv.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then14.i.i.for.body.i.i.i_crit_edge ]
  %i.080.i.i.i = phi i16 [ %inc25.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then14.i.i.for.body.i.i.i_crit_edge ]
  %54 = call ptr @memset(ptr %mask.i.i.i, i32 0, i32 64)
  %55 = ptrtoint ptr %patterns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %patterns.i.i.i, align 4
  %pattern_len.i.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %56, i32 %conv81.i.i.i, i32 2
  %57 = ptrtoint ptr %pattern_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pattern_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp375.i.i.i = icmp sgt i32 %58, 0
  br i1 %cmp375.i.i.i, label %for.body5.lr.ph.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body5.lr.ph.i.i.i:                            ; preds = %for.body.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %56, i32 %conv81.i.i.i
  br label %for.body5.i.i.i

for.body5.i.i.i:                                  ; preds = %for.inc.i.i.i.for.body5.i.i.i_crit_edge, %for.body5.lr.ph.i.i.i
  %pos.076.i.i.i = phi i32 [ 0, %for.body5.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body5.i.i.i_crit_edge ]
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i.i, align 4
  %div73.i.i.i = lshr i32 %pos.076.i.i.i, 3
  %arrayidx10.i.i.i = getelementptr i8, ptr %60, i32 %div73.i.i.i
  %61 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx10.i.i.i, align 1
  %conv11.i.i.i = zext i8 %62 to i32
  %rem72.i.i.i = and i32 %pos.076.i.i.i, 7
  %shl.i.i.i = shl nuw nsw i32 1, %rem72.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %conv11.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body5.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body5.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %for.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx12.i.i.i = getelementptr [64 x i8], ptr %mask.i.i.i, i32 0, i32 %pos.076.i.i.i
  %63 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %arrayidx12.i.i.i, align 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body5.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %pos.076.i.i.i, 1
  %64 = ptrtoint ptr %pattern_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pattern_len.i.i.i, align 4
  %cmp3.i.i.i = icmp slt i32 %inc.i.i.i, %65
  br i1 %cmp3.i.i.i, label %for.inc.i.i.i.for.body5.i.i.i_crit_edge, label %for.inc.i.i.i.for.end.i.i.i_crit_edge

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.inc.i.i.i.for.body5.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %for.body.i.i.i.for.end.i.i.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ %58, %for.body.i.i.i.for.end.i.i.i_crit_edge ], [ %65, %for.inc.i.i.i.for.end.i.i.i_crit_edge ]
  %66 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wmi10.i.i, align 4
  %68 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %conv17.i.i.i = trunc i32 %.lcssa.i.i.i to i8
  %pattern.i.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %56, i32 %conv81.i.i.i, i32 1
  %70 = ptrtoint ptr %pattern.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pattern.i.i.i, align 4
  %call.i.i.i = call i32 @ath6kl_wmi_add_wow_pattern_cmd(ptr noundef %67, i8 noundef zeroext %69, i8 noundef zeroext 0, i8 noundef zeroext %conv17.i.i.i, i8 noundef zeroext 0, ptr noundef %71, ptr noundef nonnull %mask.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %for.cond.i.i.i, label %for.end.i.i.i.ath6kl_wow_usr.exit.i.i_crit_edge

for.end.i.i.i.ath6kl_wow_usr.exit.i.i_crit_edge:  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_wow_usr.exit.i.i

for.end26.i.i.i:                                  ; preds = %for.cond.i.i.i.for.end26.i.i.i_crit_edge, %if.then14.i.i.for.end26.i.i.i_crit_edge
  %72 = ptrtoint ptr %disconnect.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %disconnect.i.i.i, align 1, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool27.not.i.i.i = icmp eq i8 %73, 0
  %or.i.i.i = or i32 %filter.0135.i, 1024
  %spec.select.i = select i1 %tobool27.not.i.i.i, i32 %filter.0135.i, i32 %or.i.i.i
  %74 = ptrtoint ptr %magic_pkt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %magic_pkt.i.i.i, align 2, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool30.not.i.i.i = icmp eq i8 %75, 0
  %or32.i.i.i = or i32 %spec.select.i, 4
  %filter.2.i = select i1 %tobool30.not.i.i.i, i32 %spec.select.i, i32 %or32.i.i.i
  %76 = ptrtoint ptr %gtk_rekey_failure.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %gtk_rekey_failure.i.i.i, align 1, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool34.not.i.i.i = icmp eq i8 %77, 0
  %or36.i.i.i = or i32 %filter.2.i, 2048
  %filter.3.i = select i1 %tobool34.not.i.i.i, i32 %filter.2.i, i32 %or36.i.i.i
  %78 = ptrtoint ptr %eap_identity_req.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %eap_identity_req.i.i.i, align 4, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool38.not.i.i.i = icmp eq i8 %79, 0
  %or40.i.i.i = or i32 %filter.3.i, 8
  %filter.4.i = select i1 %tobool38.not.i.i.i, i32 %filter.3.i, i32 %or40.i.i.i
  %80 = ptrtoint ptr %four_way_handshake.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %four_way_handshake.i.i.i, align 1, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool42.not.i.i.i = icmp eq i8 %81, 0
  %or44.i.i.i = or i32 %filter.4.i, 256
  %spec.select123.i = select i1 %tobool42.not.i.i.i, i32 %filter.4.i, i32 %or44.i.i.i
  br label %ath6kl_wow_usr.exit.i.i

ath6kl_wow_usr.exit.i.i:                          ; preds = %for.end26.i.i.i, %for.end.i.i.i.ath6kl_wow_usr.exit.i.i_crit_edge
  %filter.5.i = phi i32 [ %spec.select123.i, %for.end26.i.i.i ], [ %filter.0135.i, %for.end.i.i.i.ath6kl_wow_usr.exit.i.i_crit_edge ]
  %retval.0.i.i.i = phi i32 [ 0, %for.end26.i.i.i ], [ %call.i.i.i, %for.end.i.i.i.ath6kl_wow_usr.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mask.i.i.i) #12
  br label %if.end24.i.i

if.else.i.i:                                      ; preds = %if.end8.i.i
  %nw_type.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0138.i, i32 0, i32 17
  %82 = ptrtoint ptr %nw_type.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %nw_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %83)
  %cmp17.i.i = icmp eq i8 %83, 16
  br i1 %cmp17.i.i, label %if.then19.i.i, label %if.else21.i.i

if.then19.i.i:                                    ; preds = %if.else.i.i
  %84 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wmi10.i.i, align 4
  %86 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call.i157.i.i = call i32 @ath6kl_wmi_add_wow_pattern_cmd(ptr noundef %85, i8 noundef zeroext %87, i8 noundef zeroext 0, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @ath6kl_wow_ap.unicst_pattern, ptr noundef nonnull @ath6kl_wow_ap.unicst_mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157.i.i)
  %tobool.not.i158.i.i = icmp eq i32 %call.i157.i.i, 0
  br i1 %tobool.not.i158.i.i, label %if.end.i.i.i, label %if.then19.i.i.if.else.sink.split.i_crit_edge

if.then19.i.i.if.else.sink.split.i_crit_edge:     ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.sink.split.i

if.end.i.i.i:                                     ; preds = %if.then19.i.i
  %88 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wmi10.i.i, align 4
  %90 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call3.i.i.i = call i32 @ath6kl_wmi_add_wow_pattern_cmd(ptr noundef %89, i8 noundef zeroext %91, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 20, ptr noundef nonnull @ath6kl_wow_ap.arp_pattern, ptr noundef nonnull @ath6kl_wow_ap.arp_mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.if.else.sink.split.i_crit_edge

if.end.i.i.i.if.else.sink.split.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.sink.split.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %92 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wmi10.i.i, align 4
  %94 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call9.i.i.i = call i32 @ath6kl_wmi_add_wow_pattern_cmd(ptr noundef %93, i8 noundef zeroext %95, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 38, ptr noundef nonnull @ath6kl_wow_ap.discvr_pattern, ptr noundef nonnull @ath6kl_wow_ap.discvr_mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end12.i.i.i, label %if.end6.i.i.i.if.else.sink.split.i_crit_edge

if.end6.i.i.i.if.else.sink.split.i_crit_edge:     ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.sink.split.i

if.end12.i.i.i:                                   ; preds = %if.end6.i.i.i
  %96 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wmi10.i.i, align 4
  %98 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call15.i.i.i = call i32 @ath6kl_wmi_add_wow_pattern_cmd(ptr noundef %97, i8 noundef zeroext %99, i8 noundef zeroext 0, i8 noundef zeroext 46, i8 noundef zeroext 0, ptr noundef nonnull @ath6kl_wow_ap.dhcp_pattern, ptr noundef nonnull @ath6kl_wow_ap.dhcp_mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end12.i.i.i.if.end27.i.i_crit_edge, label %if.end12.i.i.i.if.else.sink.split.i_crit_edge

if.end12.i.i.i.if.else.sink.split.i_crit_edge:    ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.sink.split.i

if.end12.i.i.i.if.end27.i.i_crit_edge:            ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

if.else21.i.i:                                    ; preds = %if.else.i.i
  %ndev1.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0138.i, i32 0, i32 2
  %100 = ptrtoint ptr %ndev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ndev1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_mask.i.i.i) #12
  %102 = call ptr @memset(ptr %mac_mask.i.i.i, i32 255, i32 6)
  %103 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %wmi10.i.i, align 4
  %105 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %dev_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 86
  %107 = ptrtoint ptr %dev_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev_addr.i.i.i, align 64
  %call.i162.i.i = call i32 @ath6kl_wmi_add_wow_pattern_cmd(ptr noundef %104, i8 noundef zeroext %106, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef %108, ptr noundef nonnull %mac_mask.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162.i.i)
  %tobool.not.i163.i.i = icmp eq i32 %call.i162.i.i, 0
  br i1 %tobool.not.i163.i.i, label %if.end.i165.i.i, label %if.else21.i.i.cleanup.sink.split.i168.i.i_crit_edge

if.else21.i.i.cleanup.sink.split.i168.i.i_crit_edge: ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i168.i.i

if.end.i165.i.i:                                  ; preds = %if.else21.i.i
  %flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 14
  %109 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags.i.i.i, align 8
  %and.i164.i.i = and i32 %110, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and.i164.i.i, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.i165.i.i.if.then7.i.i.i_crit_edge

if.end.i165.i.i.if.then7.i.i.i_crit_edge:         ; preds = %if.end.i165.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i165.i.i
  %and5.i.i.i = and i32 %110, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %lor.lhs.false.i.i.i.ath6kl_wow_sta.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

lor.lhs.false.i.i.i.ath6kl_wow_sta.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_wow_sta.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %count.i.i.i = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 66, i32 1
  %111 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.i166.i.i = icmp sgt i32 %112, 0
  br i1 %cmp.i166.i.i, label %land.lhs.true.i.i.i.if.then7.i.i.i_crit_edge, label %land.lhs.true.i.i.i.ath6kl_wow_sta.exit.i.i_crit_edge

land.lhs.true.i.i.i.ath6kl_wow_sta.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_wow_sta.exit.i.i

land.lhs.true.i.i.i.if.then7.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.then7.i.i.i_crit_edge, %if.end.i165.i.i.if.then7.i.i.i_crit_edge
  %113 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wmi10.i.i, align 4
  %115 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call10.i.i.i = call i32 @ath6kl_wmi_add_wow_pattern_cmd(ptr noundef %114, i8 noundef zeroext %116, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 38, ptr noundef nonnull @ath6kl_wow_sta.discvr_pattern, ptr noundef nonnull @ath6kl_wow_sta.discvr_mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.then7.i.i.i.ath6kl_wow_sta.exit.i.i_crit_edge, label %if.then7.i.i.i.cleanup.sink.split.i168.i.i_crit_edge

if.then7.i.i.i.cleanup.sink.split.i168.i.i_crit_edge: ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i168.i.i

if.then7.i.i.i.ath6kl_wow_sta.exit.i.i_crit_edge: ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_wow_sta.exit.i.i

cleanup.sink.split.i168.i.i:                      ; preds = %if.then7.i.i.i.cleanup.sink.split.i168.i.i_crit_edge, %if.else21.i.i.cleanup.sink.split.i168.i.i_crit_edge
  %.str.40.sink.i.i.i = phi ptr [ @.str.42, %if.else21.i.i.cleanup.sink.split.i168.i.i_crit_edge ], [ @.str.40, %if.then7.i.i.i.cleanup.sink.split.i168.i.i_crit_edge ]
  %retval.0.ph.i167.i.i = phi i32 [ %call.i162.i.i, %if.else21.i.i.cleanup.sink.split.i168.i.i_crit_edge ], [ %call10.i.i.i, %if.then7.i.i.i.cleanup.sink.split.i168.i.i_crit_edge ]
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull %.str.40.sink.i.i.i) #12
  br label %ath6kl_wow_sta.exit.i.i

ath6kl_wow_sta.exit.i.i:                          ; preds = %cleanup.sink.split.i168.i.i, %if.then7.i.i.i.ath6kl_wow_sta.exit.i.i_crit_edge, %land.lhs.true.i.i.i.ath6kl_wow_sta.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.ath6kl_wow_sta.exit.i.i_crit_edge
  %retval.0.i169.i.i = phi i32 [ 0, %if.then7.i.i.i.ath6kl_wow_sta.exit.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.i.ath6kl_wow_sta.exit.i.i_crit_edge ], [ 0, %lor.lhs.false.i.i.i.ath6kl_wow_sta.exit.i.i_crit_edge ], [ %retval.0.ph.i167.i.i, %cleanup.sink.split.i168.i.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_mask.i.i.i) #12
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %ath6kl_wow_sta.exit.i.i, %ath6kl_wow_usr.exit.i.i
  %filter.6.i = phi i32 [ %filter.0135.i, %ath6kl_wow_sta.exit.i.i ], [ %filter.5.i, %ath6kl_wow_usr.exit.i.i ]
  %ret.0.i.i = phi i32 [ %retval.0.i169.i.i, %ath6kl_wow_sta.exit.i.i ], [ %retval.0.i.i.i, %ath6kl_wow_usr.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool25.not.i.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end24.i.i.if.end27.i.i_crit_edge, label %if.end24.i.i.if.else.i_crit_edge

if.end24.i.i.if.else.i_crit_edge:                 ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.end24.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.end24.i.i.if.end27.i.i_crit_edge, %if.end12.i.i.i.if.end27.i.i_crit_edge
  %filter.7.i = phi i32 [ %filter.0135.i, %if.end12.i.i.i.if.end27.i.i_crit_edge ], [ %filter.6.i, %if.end24.i.i.if.end27.i.i_crit_edge ]
  %ndev.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0138.i, i32 0, i32 2
  %117 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ndev.i.i, align 4
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 103
  %119 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %_tx.i.i.i.i, align 128
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %120, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i.i) #12
  %nw_type28.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0138.i, i32 0, i32 17
  %121 = ptrtoint ptr %nw_type28.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %nw_type28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %122)
  %cmp30.not.i.i = icmp eq i8 %122, 16
  br i1 %cmp30.not.i.i, label %if.end27.i.i.if.end56.i.i_crit_edge, label %if.then32.i.i

if.end27.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i.i

if.then32.i.i:                                    ; preds = %if.end27.i.i
  %123 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wmi10.i.i, align 4
  %125 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call35.i.i = call i32 @ath6kl_wmi_listeninterval_cmd(ptr noundef %124, i8 noundef zeroext %126, i16 noundef zeroext 300, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %tobool36.not.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end38.i.i, label %if.then32.i.i.if.else.i_crit_edge

if.then32.i.i.if.else.i_crit_edge:                ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.end38.i.i:                                     ; preds = %if.then32.i.i
  %127 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %wmi10.i.i, align 4
  %129 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call46.i.i = call i32 @ath6kl_wmi_bmisstime_cmd(ptr noundef %128, i8 noundef zeroext %130, i16 noundef zeroext 4500, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool47.not.i.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.end49.i.i, label %if.end38.i.i.if.else.i_crit_edge

if.end38.i.i.if.else.i_crit_edge:                 ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.end49.i.i:                                     ; preds = %if.end38.i.i
  %131 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %wmi10.i.i, align 4
  %133 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call52.i.i = call i32 @ath6kl_wmi_scanparams_cmd(ptr noundef %132, i8 noundef zeroext %134, i16 noundef zeroext -1, i16 noundef zeroext 0, i16 noundef zeroext -1, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i)
  %tobool53.not.i.i = icmp eq i32 %call52.i.i, 0
  br i1 %tobool53.not.i.i, label %if.end49.i.i.if.end56.i.i_crit_edge, label %if.end49.i.i.if.else.i_crit_edge

if.end49.i.i.if.else.i_crit_edge:                 ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.end49.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.end49.i.i.if.end56.i.i_crit_edge, %if.end27.i.i.if.end56.i.i_crit_edge
  %135 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ndev.i.i, align 4
  %call.i170.i.i = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i170.i.i, label %if.end56.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge, label %land.lhs.true.i172.i.i

if.end56.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge: ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit.i.i

land.lhs.true.i172.i.i:                           ; preds = %if.end56.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i171.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i171.i.i, label %land.lhs.true.i172.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i172.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge: ; preds = %land.lhs.true.i172.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i172.i.i
  %.b4.i.i.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge, label %if.then.i173.i.i

land.lhs.true2.i.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit.i.i

if.then.i173.i.i:                                 ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 249, ptr noundef nonnull @.str.34) #12
  br label %__in_dev_get_rtnl.exit.i.i

__in_dev_get_rtnl.exit.i.i:                       ; preds = %if.then.i173.i.i, %land.lhs.true2.i.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge, %land.lhs.true.i172.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge, %if.end56.i.i.__in_dev_get_rtnl.exit.i.i_crit_edge
  %ip_ptr.i.i.i = getelementptr inbounds %struct.net_device, ptr %136, i32 0, i32 78
  %137 = ptrtoint ptr %ip_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ip_ptr.i.i.i, align 32
  %tobool59.not.i.i = icmp eq ptr %138, null
  br i1 %tobool59.not.i.i, label %__in_dev_get_rtnl.exit.i.i.for.inc.i_crit_edge, label %do.body.i.i

__in_dev_get_rtnl.exit.i.i.for.inc.i_crit_edge:   ; preds = %__in_dev_get_rtnl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.body.i.i:                                      ; preds = %__in_dev_get_rtnl.exit.i.i
  %call62.i.i = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call62.i.i, label %do.body.i.i.do.end.i.i_crit_edge, label %land.lhs.true63.i.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

land.lhs.true63.i.i:                              ; preds = %do.body.i.i
  %call64.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i.i)
  %tobool65.not.i.i = icmp eq i32 %call64.i.i, 0
  br i1 %tobool65.not.i.i, label %land.lhs.true63.i.i.do.end.i.i_crit_edge, label %land.lhs.true66.i.i

land.lhs.true63.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true63.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

land.lhs.true66.i.i:                              ; preds = %land.lhs.true63.i.i
  %.b152.i.i = load i1, ptr @ath6kl_wow_suspend_vif.__warned, align 1
  br i1 %.b152.i.i, label %land.lhs.true66.i.i.do.end.i.i_crit_edge, label %if.then68.i.i

land.lhs.true66.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true66.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then68.i.i:                                    ; preds = %land.lhs.true66.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ath6kl_wow_suspend_vif.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 2197, ptr noundef nonnull @.str.34) #12
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then68.i.i, %land.lhs.true66.i.i.do.end.i.i_crit_edge, %land.lhs.true63.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %ifa_list.i.i = getelementptr inbounds %struct.in_device, ptr %138, i32 0, i32 4
  %139 = ptrtoint ptr %ifa_list.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ifa_list.i.i, align 4
  %tobool73.not181.i.i = icmp eq ptr %140, null
  br i1 %tobool73.not181.i.i, label %do.end.i.i.if.end89.i.i_crit_edge, label %while.body.i.preheader.i

do.end.i.i.if.end89.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i.i

while.body.i.preheader.i:                         ; preds = %do.end.i.i
  %ifa_local.i.peel.i = getelementptr inbounds %struct.in_ifaddr, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %ifa_local.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ifa_local.i.peel.i, align 4
  %call75.i.peel.i = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call75.i.peel.i, label %while.body.i.preheader.i.do.end84.i.peel.i_crit_edge, label %land.lhs.true76.i.peel.i

while.body.i.preheader.i.do.end84.i.peel.i_crit_edge: ; preds = %while.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end84.i.peel.i

land.lhs.true76.i.peel.i:                         ; preds = %while.body.i.preheader.i
  %call77.i.peel.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i.peel.i)
  %tobool78.not.i.peel.i = icmp eq i32 %call77.i.peel.i, 0
  br i1 %tobool78.not.i.peel.i, label %land.lhs.true76.i.peel.i.do.end84.i.peel.i_crit_edge, label %land.lhs.true79.i.peel.i

land.lhs.true76.i.peel.i.do.end84.i.peel.i_crit_edge: ; preds = %land.lhs.true76.i.peel.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end84.i.peel.i

land.lhs.true79.i.peel.i:                         ; preds = %land.lhs.true76.i.peel.i
  %.b150151.i.peel.i = load i1, ptr @ath6kl_wow_suspend_vif.__warned.35, align 1
  br i1 %.b150151.i.peel.i, label %land.lhs.true79.i.peel.i.do.end84.i.peel.i_crit_edge, label %if.then81.i.peel.i

land.lhs.true79.i.peel.i.do.end84.i.peel.i_crit_edge: ; preds = %land.lhs.true79.i.peel.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end84.i.peel.i

if.then81.i.peel.i:                               ; preds = %land.lhs.true79.i.peel.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ath6kl_wow_suspend_vif.__warned.35, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 2203, ptr noundef nonnull @.str.34) #12
  br label %do.end84.i.peel.i

do.end84.i.peel.i:                                ; preds = %if.then81.i.peel.i, %land.lhs.true79.i.peel.i.do.end84.i.peel.i_crit_edge, %land.lhs.true76.i.peel.i.do.end84.i.peel.i_crit_edge, %while.body.i.preheader.i.do.end84.i.peel.i_crit_edge
  %ifa_next.i.peel.i = getelementptr inbounds %struct.in_ifaddr, ptr %140, i32 0, i32 1
  %143 = ptrtoint ptr %ifa_next.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ifa_next.i.peel.i, align 4
  %tobool73.not.i.peel.i = icmp eq ptr %144, null
  br i1 %tobool73.not.i.peel.i, label %do.end84.i.peel.i.if.end89.i.i_crit_edge, label %while.body.i.i

do.end84.i.peel.i.if.end89.i.i_crit_edge:         ; preds = %do.end84.i.peel.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i.i

while.body.i.i:                                   ; preds = %do.end84.i.peel.i
  %ifa_local.i.i = getelementptr inbounds %struct.in_ifaddr, ptr %144, i32 0, i32 4
  %145 = ptrtoint ptr %ifa_local.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ifa_local.i.i, align 4
  %call75.i.i = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call75.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %land.lhs.true76.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

land.lhs.true76.i.i:                              ; preds = %while.body.i.i
  %call77.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i.i)
  %tobool78.not.i.i = icmp eq i32 %call77.i.i, 0
  br i1 %tobool78.not.i.i, label %land.lhs.true76.i.i.while.end.i.i_crit_edge, label %land.lhs.true79.i.i

land.lhs.true76.i.i.while.end.i.i_crit_edge:      ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

land.lhs.true79.i.i:                              ; preds = %land.lhs.true76.i.i
  %.b150151.i.i = load i1, ptr @ath6kl_wow_suspend_vif.__warned.35, align 1
  br i1 %.b150151.i.i, label %land.lhs.true79.i.i.while.end.i.i_crit_edge, label %if.then81.i.i

land.lhs.true79.i.i.while.end.i.i_crit_edge:      ; preds = %land.lhs.true79.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

if.then81.i.i:                                    ; preds = %land.lhs.true79.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ath6kl_wow_suspend_vif.__warned.35, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 2203, ptr noundef nonnull @.str.34) #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.then81.i.i, %land.lhs.true79.i.i.while.end.i.i_crit_edge, %land.lhs.true76.i.i.while.end.i.i_crit_edge, %while.body.i.i.while.end.i.i_crit_edge
  %ifa_next.i.i = getelementptr inbounds %struct.in_ifaddr, ptr %144, i32 0, i32 1
  %147 = ptrtoint ptr %ifa_next.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ifa_next.i.i, align 4
  %tobool73.not.i.i = icmp eq ptr %148, null
  br i1 %tobool73.not.i.i, label %while.end.i.i.if.end89.i.i_crit_edge, label %while.end.i.i.if.else.sink.split.i_crit_edge

while.end.i.i.if.else.sink.split.i_crit_edge:     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.sink.split.i

while.end.i.i.if.end89.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89.i.i

if.end89.i.i:                                     ; preds = %while.end.i.i.if.end89.i.i_crit_edge, %do.end84.i.peel.i.if.end89.i.i_crit_edge, %do.end.i.i.if.end89.i.i_crit_edge
  %ips.i.sroa.7.1.i = phi i32 [ 0, %do.end.i.i.if.end89.i.i_crit_edge ], [ %146, %while.end.i.i.if.end89.i.i_crit_edge ], [ 0, %do.end84.i.peel.i.if.end89.i.i_crit_edge ]
  %ips.i.sroa.0.0.i = phi i32 [ 0, %do.end.i.i.if.end89.i.i_crit_edge ], [ %142, %while.end.i.i.if.end89.i.i_crit_edge ], [ %142, %do.end84.i.peel.i.if.end89.i.i_crit_edge ]
  %149 = ptrtoint ptr %wmi10.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %wmi10.i.i, align 4
  %151 = ptrtoint ptr %fw_vif_idx11.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %fw_vif_idx11.i.i, align 8
  %call94.i.i = call i32 @ath6kl_wmi_set_ip_cmd(ptr noundef %150, i8 noundef zeroext %152, i32 noundef %ips.i.sroa.0.0.i, i32 noundef %ips.i.sroa.7.1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i.i)
  %tobool95.not.i.i = icmp eq i32 %call94.i.i, 0
  br i1 %tobool95.not.i.i, label %if.end89.i.i.for.inc.i_crit_edge, label %if.end89.i.i.if.else.sink.split.i_crit_edge

if.end89.i.i.if.else.sink.split.i_crit_edge:      ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.sink.split.i

if.end89.i.i.for.inc.i_crit_edge:                 ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end89.i.i.for.inc.i_crit_edge, %__in_dev_get_rtnl.exit.i.i.for.inc.i_crit_edge, %if.then4.i95.i, %if.then.i91.i, %for.body.i.for.inc.i_crit_edge
  %filter.9.i = phi i32 [ %filter.0135.i, %for.body.i.for.inc.i_crit_edge ], [ %filter.0135.i, %if.then4.i95.i ], [ %filter.0135.i, %if.then.i91.i ], [ %filter.7.i, %__in_dev_get_rtnl.exit.i.i.for.inc.i_crit_edge ], [ %filter.7.i, %if.end89.i.i.for.inc.i_crit_edge ]
  %connected.1.off0.i = phi i1 [ %connected.0.off0137.i, %for.body.i.for.inc.i_crit_edge ], [ %connected.0.off0137.i, %if.then4.i95.i ], [ %connected.0.off0137.i, %if.then.i91.i ], [ true, %__in_dev_get_rtnl.exit.i.i.for.inc.i_crit_edge ], [ true, %if.end89.i.i.for.inc.i_crit_edge ]
  %153 = ptrtoint ptr %vif.0138.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %vif.0.i = load ptr, ptr %vif.0138.i, align 4
  %cmp30.not.i = icmp eq ptr %vif.0.i, %vif_list.i
  br i1 %cmp30.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i) #12
  br i1 %connected.1.off0.i, label %if.end54.i, label %for.end.i.if.then_crit_edge

for.end.i.if.then_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.else.sink.split.i:                             ; preds = %if.end89.i.i.if.else.sink.split.i_crit_edge, %while.end.i.i.if.else.sink.split.i_crit_edge, %if.end12.i.i.i.if.else.sink.split.i_crit_edge, %if.end6.i.i.i.if.else.sink.split.i_crit_edge, %if.end.i.i.i.if.else.sink.split.i_crit_edge, %if.then19.i.i.if.else.sink.split.i_crit_edge
  %.str.36.sink.i = phi ptr [ @.str.38, %if.then19.i.i.if.else.sink.split.i_crit_edge ], [ @.str.39, %if.end.i.i.i.if.else.sink.split.i_crit_edge ], [ @.str.40, %if.end6.i.i.i.if.else.sink.split.i_crit_edge ], [ @.str.41, %if.end12.i.i.i.if.else.sink.split.i_crit_edge ], [ @.str.36, %while.end.i.i.if.else.sink.split.i_crit_edge ], [ @.str.37, %if.end89.i.i.if.else.sink.split.i_crit_edge ]
  %retval.0.i103.ph.ph.i = phi i32 [ %call.i157.i.i, %if.then19.i.i.if.else.sink.split.i_crit_edge ], [ %call3.i.i.i, %if.end.i.i.i.if.else.sink.split.i_crit_edge ], [ %call9.i.i.i, %if.end6.i.i.i.if.else.sink.split.i_crit_edge ], [ %call15.i.i.i, %if.end12.i.i.i.if.else.sink.split.i_crit_edge ], [ -22, %while.end.i.i.if.else.sink.split.i_crit_edge ], [ %call94.i.i, %if.end89.i.i.if.else.sink.split.i_crit_edge ]
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull %.str.36.sink.i) #12
  br label %if.else.i

if.else.i:                                        ; preds = %if.else.sink.split.i, %if.end49.i.i.if.else.i_crit_edge, %if.end38.i.i.if.else.i_crit_edge, %if.then32.i.i.if.else.i_crit_edge, %if.end24.i.i.if.else.i_crit_edge, %if.then.i102.i.if.else.i_crit_edge
  %retval.0.i103.ph.i = phi i32 [ %retval.0.i103.ph.ph.i, %if.else.sink.split.i ], [ %call52.i.i, %if.end49.i.i.if.else.i_crit_edge ], [ %call46.i.i, %if.end38.i.i.if.else.i_crit_edge ], [ %call35.i.i, %if.then32.i.i.if.else.i_crit_edge ], [ %ret.0.i.i, %if.end24.i.i.if.else.i_crit_edge ], [ %call5.i.i, %if.then.i102.i.if.else.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i) #12
  br label %if.then

if.end54.i:                                       ; preds = %for.end.i
  %154 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 2, ptr %state, align 4
  %wmi.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %155 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %wmi.i, align 4
  %fw_vif_idx.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call.i, i32 0, i32 5
  %157 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %fw_vif_idx.i, align 8
  %call55.i = call i32 @ath6kl_wmi_set_wow_mode_cmd(ptr noundef %156, i8 noundef zeroext %158, i32 noundef 1, i32 noundef %filter.9.i, i16 noundef zeroext 500) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %ath6kl_wow_suspend.exit, label %if.end54.i.if.then_crit_edge

if.end54.i.if.then_crit_edge:                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

ath6kl_wow_suspend.exit:                          ; preds = %if.end54.i
  %call59.i = call fastcc i32 @ath6kl_cfg80211_host_sleep(ptr noundef %ar, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool.not = icmp eq i32 %call59.i, 0
  br i1 %tobool.not, label %if.end, label %ath6kl_wow_suspend.exit.if.then_crit_edge

ath6kl_wow_suspend.exit.if.then_crit_edge:        ; preds = %ath6kl_wow_suspend.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %ath6kl_wow_suspend.exit.if.then_crit_edge, %if.end54.i.if.then_crit_edge, %if.else.i, %for.end.i.if.then_crit_edge, %for.end.thread.i, %land.lhs.true.i.if.then_crit_edge, %if.then4.i.i, %if.then.i.i, %do.end.i
  %retval.0.i69 = phi i32 [ %call59.i, %ath6kl_wow_suspend.exit.if.then_crit_edge ], [ -107, %for.end.thread.i ], [ -5, %if.then.i.i ], [ -5, %if.then4.i.i ], [ %call55.i, %if.end54.i.if.then_crit_edge ], [ %retval.0.i103.ph.i, %if.else.i ], [ -107, %for.end.i.if.then_crit_edge ], [ -22, %land.lhs.true.i.if.then_crit_edge ], [ -5, %do.end.i ]
  %159 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %2, ptr %state, align 4
  br label %cleanup

if.end:                                           ; preds = %ath6kl_wow_suspend.exit
  call void @__sanitizer_cov_trace_pc() #14
  %160 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 6, ptr %state, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1048576, ptr noundef nonnull @.str.12) #12
  %call.i47 = tail call ptr @ath6kl_vif_first(ptr noundef %ar) #12
  %tobool.not.i48 = icmp eq ptr %call.i47, null
  br i1 %tobool.not.i48, label %sw.bb3.if.then6_crit_edge, label %if.end.i

sw.bb3.if.then6_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.end.i:                                         ; preds = %sw.bb3
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 75
  %161 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %flag.i, align 4
  %163 = and i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool2.not.i = icmp eq i32 %163, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.48) #12
  br label %if.then6

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i = tail call ptr @ath6kl_vif_first(ptr noundef %ar) #12
  %tobool.not.i.i49 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i49, label %land.lhs.true.i.i50, label %if.end4.i.if.end6.i.i_crit_edge

if.end4.i.if.end6.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

land.lhs.true.i.i50:                              ; preds = %if.end4.i
  %state.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %164 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %165)
  %cmp.not.i.i = icmp eq i32 %165, 7
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i50.if.end6.i.i_crit_edge, label %if.then.i.i52

land.lhs.true.i.i50.if.end6.i.i_crit_edge:        ; preds = %land.lhs.true.i.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

if.then.i.i52:                                    ; preds = %land.lhs.true.i.i50
  %wmi.i.i51 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %166 = ptrtoint ptr %wmi.i.i51 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wmi.i.i51, align 4
  %pwr_mode.i.i = getelementptr inbounds %struct.wmi, ptr %167, i32 0, i32 3
  %168 = ptrtoint ptr %pwr_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %pwr_mode.i.i, align 4
  %saved_pwr_mode.i.i = getelementptr inbounds %struct.wmi, ptr %167, i32 0, i32 12
  %170 = ptrtoint ptr %saved_pwr_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %saved_pwr_mode.i.i, align 4
  %171 = load ptr, ptr %wmi.i.i51, align 4
  %call3.i.i = tail call i32 @ath6kl_wmi_powermode_cmd(ptr noundef %171, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp4.not.i.i, label %if.then.i.i52.ath6kl_cfg80211_stop_all.exit.i_crit_edge, label %if.then5.i.i

if.then.i.i52.ath6kl_cfg80211_stop_all.exit.i_crit_edge: ; preds = %if.then.i.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_stop_all.exit.i

if.then5.i.i:                                     ; preds = %if.then.i.i52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.24) #12
  br label %ath6kl_cfg80211_stop_all.exit.i

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i50.if.end6.i.i_crit_edge, %if.end4.i.if.end6.i.i_crit_edge
  %vif_list.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 13
  %172 = ptrtoint ptr %vif_list.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %vif.023.i.i = load ptr, ptr %vif_list.i.i, align 4
  %cmp8.not24.i.i = icmp eq ptr %vif.023.i.i, %vif_list.i.i
  br i1 %cmp8.not24.i.i, label %if.end6.i.i.ath6kl_cfg80211_stop_all.exit.i_crit_edge, label %if.end6.i.i.for.body.i.i_crit_edge

if.end6.i.i.for.body.i.i_crit_edge:               ; preds = %if.end6.i.i
  br label %for.body.i.i

if.end6.i.i.ath6kl_cfg80211_stop_all.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_stop_all.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end6.i.i.for.body.i.i_crit_edge
  %vif.025.i.i = phi ptr [ %vif.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %vif.023.i.i, %if.end6.i.i.for.body.i.i_crit_edge ]
  tail call void @ath6kl_cfg80211_stop(ptr noundef %vif.025.i.i) #12
  %173 = ptrtoint ptr %vif.025.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %vif.0.i.i = load ptr, ptr %vif.025.i.i, align 4
  %cmp8.not.i.i = icmp eq ptr %vif.0.i.i, %vif_list.i.i
  br i1 %cmp8.not.i.i, label %for.body.i.i.ath6kl_cfg80211_stop_all.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.ath6kl_cfg80211_stop_all.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_stop_all.exit.i

ath6kl_cfg80211_stop_all.exit.i:                  ; preds = %for.body.i.i.ath6kl_cfg80211_stop_all.exit.i_crit_edge, %if.end6.i.i.ath6kl_cfg80211_stop_all.exit.i_crit_edge, %if.then5.i.i, %if.then.i.i52.ath6kl_cfg80211_stop_all.exit.i_crit_edge
  %wmi.i53 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %174 = ptrtoint ptr %wmi.i53 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %wmi.i53, align 4
  %pwr_mode.i = getelementptr inbounds %struct.wmi, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %pwr_mode.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %pwr_mode.i, align 4
  %saved_pwr_mode.i = getelementptr inbounds %struct.wmi, ptr %175, i32 0, i32 12
  %178 = ptrtoint ptr %saved_pwr_mode.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %saved_pwr_mode.i, align 4
  %179 = load ptr, ptr %wmi.i53, align 4
  %call7.i = tail call i32 @ath6kl_wmi_powermode_cmd(ptr noundef %179, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %ath6kl_cfg80211_stop_all.exit.i.if.then6_crit_edge

ath6kl_cfg80211_stop_all.exit.i.if.then6_crit_edge: ; preds = %ath6kl_cfg80211_stop_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.end10.i:                                       ; preds = %ath6kl_cfg80211_stop_all.exit.i
  %180 = ptrtoint ptr %wmi.i53 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %wmi.i53, align 4
  %fw_vif_idx.i54 = getelementptr inbounds %struct.ath6kl_vif, ptr %call.i47, i32 0, i32 5
  %182 = ptrtoint ptr %fw_vif_idx.i54 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %fw_vif_idx.i54, align 8
  %call12.i = tail call i32 @ath6kl_wmi_set_wow_mode_cmd(ptr noundef %181, i8 noundef zeroext %183, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %ath6kl_cfg80211_deepsleep_suspend.exit, label %if.end10.i.if.then6_crit_edge

if.end10.i.if.then6_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

ath6kl_cfg80211_deepsleep_suspend.exit:           ; preds = %if.end10.i
  tail call void @ath6kl_tx_data_cleanup(ptr noundef %ar) #12
  %call16.i = tail call fastcc i32 @ath6kl_cfg80211_host_sleep(ptr noundef %ar, ptr noundef nonnull %call.i47) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool5.not = icmp eq i32 %call16.i, 0
  br i1 %tobool5.not, label %if.end7, label %ath6kl_cfg80211_deepsleep_suspend.exit.if.then6_crit_edge

ath6kl_cfg80211_deepsleep_suspend.exit.if.then6_crit_edge: ; preds = %ath6kl_cfg80211_deepsleep_suspend.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.then6:                                         ; preds = %ath6kl_cfg80211_deepsleep_suspend.exit.if.then6_crit_edge, %if.end10.i.if.then6_crit_edge, %ath6kl_cfg80211_stop_all.exit.i.if.then6_crit_edge, %if.then3.i, %sw.bb3.if.then6_crit_edge
  %retval.0.i5572 = phi i32 [ %call16.i, %ath6kl_cfg80211_deepsleep_suspend.exit.if.then6_crit_edge ], [ %call12.i, %if.end10.i.if.then6_crit_edge ], [ %call7.i, %ath6kl_cfg80211_stop_all.exit.i.if.then6_crit_edge ], [ -5, %sw.bb3.if.then6_crit_edge ], [ -5, %if.then3.i ]
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.13, i32 noundef %retval.0.i5572) #12
  br label %cleanup

if.end7:                                          ; preds = %ath6kl_cfg80211_deepsleep_suspend.exit
  call void @__sanitizer_cov_trace_pc() #14
  %state8 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %184 = ptrtoint ptr %state8 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 4, ptr %state8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %call.i56 = tail call ptr @ath6kl_vif_first(ptr noundef %ar) #12
  %tobool.not.i57 = icmp eq ptr %call.i56, null
  br i1 %tobool.not.i57, label %land.lhs.true.i59, label %sw.bb9.if.end6.i_crit_edge

sw.bb9.if.end6.i_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

land.lhs.true.i59:                                ; preds = %sw.bb9
  %state.i58 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %185 = ptrtoint ptr %state.i58 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %state.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %186)
  %cmp.not.i = icmp eq i32 %186, 7
  br i1 %cmp.not.i, label %land.lhs.true.i59.if.end6.i_crit_edge, label %if.then.i

land.lhs.true.i59.if.end6.i_crit_edge:            ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then.i:                                        ; preds = %land.lhs.true.i59
  %wmi.i60 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %187 = ptrtoint ptr %wmi.i60 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %wmi.i60, align 4
  %pwr_mode.i61 = getelementptr inbounds %struct.wmi, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %pwr_mode.i61 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %pwr_mode.i61, align 4
  %saved_pwr_mode.i62 = getelementptr inbounds %struct.wmi, ptr %188, i32 0, i32 12
  %191 = ptrtoint ptr %saved_pwr_mode.i62 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %saved_pwr_mode.i62, align 4
  %192 = load ptr, ptr %wmi.i60, align 4
  %call3.i = tail call i32 @ath6kl_wmi_powermode_cmd(ptr noundef %192, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.not.i, label %if.then.i.ath6kl_cfg80211_stop_all.exit_crit_edge, label %if.then5.i

if.then.i.ath6kl_cfg80211_stop_all.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_stop_all.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.24) #12
  br label %ath6kl_cfg80211_stop_all.exit

if.end6.i:                                        ; preds = %land.lhs.true.i59.if.end6.i_crit_edge, %sw.bb9.if.end6.i_crit_edge
  %vif_list.i63 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 13
  %193 = ptrtoint ptr %vif_list.i63 to i32
  call void @__asan_load4_noabort(i32 %193)
  %vif.023.i = load ptr, ptr %vif_list.i63, align 4
  %cmp8.not24.i = icmp eq ptr %vif.023.i, %vif_list.i63
  br i1 %cmp8.not24.i, label %if.end6.i.ath6kl_cfg80211_stop_all.exit_crit_edge, label %if.end6.i.for.body.i65_crit_edge

if.end6.i.for.body.i65_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i65

if.end6.i.ath6kl_cfg80211_stop_all.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_stop_all.exit

for.body.i65:                                     ; preds = %for.body.i65.for.body.i65_crit_edge, %if.end6.i.for.body.i65_crit_edge
  %vif.025.i = phi ptr [ %vif.0.i64, %for.body.i65.for.body.i65_crit_edge ], [ %vif.023.i, %if.end6.i.for.body.i65_crit_edge ]
  tail call void @ath6kl_cfg80211_stop(ptr noundef %vif.025.i) #12
  %194 = ptrtoint ptr %vif.025.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %vif.0.i64 = load ptr, ptr %vif.025.i, align 4
  %cmp8.not.i = icmp eq ptr %vif.0.i64, %vif_list.i63
  br i1 %cmp8.not.i, label %for.body.i65.ath6kl_cfg80211_stop_all.exit_crit_edge, label %for.body.i65.for.body.i65_crit_edge

for.body.i65.for.body.i65_crit_edge:              ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i65

for.body.i65.ath6kl_cfg80211_stop_all.exit_crit_edge: ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_stop_all.exit

ath6kl_cfg80211_stop_all.exit:                    ; preds = %for.body.i65.ath6kl_cfg80211_stop_all.exit_crit_edge, %if.end6.i.ath6kl_cfg80211_stop_all.exit_crit_edge, %if.then5.i, %if.then.i.ath6kl_cfg80211_stop_all.exit_crit_edge
  %state10 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %195 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %state10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp = icmp eq i32 %196, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %ath6kl_cfg80211_stop_all.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1048576, ptr noundef nonnull @.str.14) #12
  br label %sw.epilog

if.end12:                                         ; preds = %ath6kl_cfg80211_stop_all.exit
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1048576, ptr noundef nonnull @.str.15) #12
  %call13 = tail call i32 @ath6kl_init_hw_stop(ptr noundef %ar) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.16, i32 noundef %call13) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %197 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 5, ptr %state10, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end16, %if.then11, %if.end7, %if.end, %entry.sw.epilog_crit_edge
  %vif_list = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 13
  %198 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %198)
  %vif.074 = load ptr, ptr %vif_list, align 4
  %cmp19.not75 = icmp eq ptr %vif.074, %vif_list
  br i1 %cmp19.not75, label %sw.epilog.cleanup_crit_edge, label %for.body.lr.ph

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %sw.epilog
  %199 = getelementptr inbounds i8, ptr %info.i, i32 8
  br label %for.body

for.body:                                         ; preds = %ath6kl_cfg80211_scan_complete_event.exit.for.body_crit_edge, %for.body.lr.ph
  %vif.076 = phi ptr [ %vif.074, %for.body.lr.ph ], [ %vif.0, %ath6kl_cfg80211_scan_complete_event.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #12
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 -65025, ptr %199, align 8
  %201 = call ptr @memset(ptr %info.i, i32 0, i32 14)
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ath6kl_cfg80211_scan_complete_event, ptr noundef nonnull @.str.7) #12
  %scan_req.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.076, i32 0, i32 28
  %202 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %scan_req.i, align 4
  %tobool5.not.i = icmp eq ptr %203, null
  br i1 %tobool5.not.i, label %for.body.ath6kl_cfg80211_scan_complete_event.exit_crit_edge, label %if.end.i66

for.body.ath6kl_cfg80211_scan_complete_event.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_scan_complete_event.exit

if.end.i66:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @cfg80211_scan_done(ptr noundef nonnull %203, ptr noundef nonnull %info.i) #12
  %204 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr null, ptr %scan_req.i, align 4
  br label %ath6kl_cfg80211_scan_complete_event.exit

ath6kl_cfg80211_scan_complete_event.exit:         ; preds = %if.end.i66, %for.body.ath6kl_cfg80211_scan_complete_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #12
  %205 = ptrtoint ptr %vif.076 to i32
  call void @__asan_load4_noabort(i32 %205)
  %vif.0 = load ptr, ptr %vif.076, align 4
  %cmp19.not = icmp eq ptr %vif.0, %vif_list
  br i1 %cmp19.not, label %ath6kl_cfg80211_scan_complete_event.exit.cleanup_crit_edge, label %ath6kl_cfg80211_scan_complete_event.exit.for.body_crit_edge

ath6kl_cfg80211_scan_complete_event.exit.for.body_crit_edge: ; preds = %ath6kl_cfg80211_scan_complete_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

ath6kl_cfg80211_scan_complete_event.exit.cleanup_crit_edge: ; preds = %ath6kl_cfg80211_scan_complete_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %ath6kl_cfg80211_scan_complete_event.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ %retval.0.i5572, %if.then6 ], [ %retval.0.i69, %if.then ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %ath6kl_cfg80211_scan_complete_event.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_tx_data_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cfg80211_stop_all(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ath6kl_vif_first(ptr noundef %ar) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp.not = icmp eq i32 %1, 7
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %2 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi, align 4
  %pwr_mode = getelementptr inbounds %struct.wmi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwr_mode, align 4
  %saved_pwr_mode = getelementptr inbounds %struct.wmi, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %saved_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %saved_pwr_mode, align 4
  %7 = load ptr, ptr %wmi, align 4
  %call3 = tail call i32 @ath6kl_wmi_powermode_cmd(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.then.cleanup_crit_edge, label %if.then5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %vif_list = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 13
  %8 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %vif.023 = load ptr, ptr %vif_list, align 4
  %cmp8.not24 = icmp eq ptr %vif.023, %vif_list
  br i1 %cmp8.not24, label %if.end6.cleanup_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %vif.025 = phi ptr [ %vif.0, %for.body.for.body_crit_edge ], [ %vif.023, %if.end6.for.body_crit_edge ]
  tail call void @ath6kl_cfg80211_stop(ptr noundef %vif.025)
  %9 = ptrtoint ptr %vif.025 to i32
  call void @__asan_load4_noabort(i32 %9)
  %vif.0 = load ptr, ptr %vif.025, align 4
  %cmp8.not = icmp eq ptr %vif.0, %vif_list
  br i1 %cmp8.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then5, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_init_hw_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_cfg80211_resume(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 6, label %sw.bb
    i32 4, label %sw.bb1
    i32 5, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1048576, ptr noundef nonnull @.str.17) #12
  %call.i = tail call ptr @ath6kl_vif_first(ptr noundef %ar) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %lor.lhs.false.critedge.i, !prof !348

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 2310, i32 noundef 9, ptr noundef null) #12
  br label %if.then

lor.lhs.false.critedge.i:                         ; preds = %sw.bb
  %ar1.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %ar1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar1.i.i, align 8
  %flag.i.i = getelementptr inbounds %struct.ath6kl, ptr %4, i32 0, i32 75
  %5 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag.i.i, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %if.then

if.end.i.i:                                       ; preds = %lor.lhs.false.critedge.i
  %flags.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end24.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %if.then

if.end24.i:                                       ; preds = %if.end.i.i
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %state, align 4
  %wmi.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %12 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wmi.i, align 4
  %fw_vif_idx.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fw_vif_idx.i, align 8
  %call25.i = tail call i32 @ath6kl_wmi_set_host_sleep_mode_cmd(ptr noundef %13, i8 noundef zeroext %15, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.49, i32 noundef %call25.i) #12
  br label %cleanup.i

if.end28.i:                                       ; preds = %if.end24.i
  %list_lock.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i) #12
  %vif_list.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 13
  %16 = ptrtoint ptr %vif_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %vif.098.i = load ptr, ptr %vif_list.i, align 4
  %cmp.not99.i = icmp eq ptr %vif.098.i, %vif_list.i
  br i1 %cmp.not99.i, label %if.end28.i.ath6kl_wow_resume.exit_crit_edge, label %if.end28.i.for.body.i_crit_edge

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  br label %for.body.i

if.end28.i.ath6kl_wow_resume.exit_crit_edge:      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_wow_resume.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end28.i.for.body.i_crit_edge
  %vif.0100.i = phi ptr [ %vif.0.i, %for.inc.i.for.body.i_crit_edge ], [ %vif.098.i, %if.end28.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0100.i, i32 0, i32 6
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool34.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool34.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false35.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false35.i:                                ; preds = %for.body.i
  %ar1.i76.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0100.i, i32 0, i32 3
  %19 = ptrtoint ptr %ar1.i76.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ar1.i76.i, align 8
  %flag.i77.i = getelementptr inbounds %struct.ath6kl, ptr %20, i32 0, i32 75
  %21 = ptrtoint ptr %flag.i77.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flag.i77.i, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i78.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i78.i, label %if.then.i79.i, label %if.end.i82.i

if.then.i79.i:                                    ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %for.inc.i

if.end.i82.i:                                     ; preds = %lor.lhs.false35.i
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i, align 4
  %26 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool3.not.i81.i = icmp eq i32 %26, 0
  br i1 %tobool3.not.i81.i, label %if.then4.i83.i, label %if.end38.i

if.then4.i83.i:                                   ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %for.inc.i

if.end38.i:                                       ; preds = %if.end.i82.i
  %nw_type.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0100.i, i32 0, i32 17
  %27 = ptrtoint ptr %nw_type.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nw_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %28)
  %cmp.not.i.i = icmp eq i8 %28, 16
  br i1 %cmp.not.i.i, label %if.end38.i.if.end16.i.i_crit_edge, label %if.then.i88.i

if.end38.i.if.end16.i.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i

if.then.i88.i:                                    ; preds = %if.end38.i
  %wmi.i.i = getelementptr inbounds %struct.ath6kl, ptr %20, i32 0, i32 7
  %29 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wmi.i.i, align 4
  %fw_vif_idx.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0100.i, i32 0, i32 5
  %31 = ptrtoint ptr %fw_vif_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fw_vif_idx.i.i, align 8
  %call.i.i = tail call i32 @ath6kl_wmi_scanparams_cmd(ptr noundef %30, i8 noundef zeroext %32, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i87.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i87.i, label %if.end.i89.i, label %if.then.i88.i.for.end.i_crit_edge

if.then.i88.i.for.end.i_crit_edge:                ; preds = %if.then.i88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i89.i:                                     ; preds = %if.then.i88.i
  %33 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wmi.i.i, align 4
  %35 = ptrtoint ptr %fw_vif_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fw_vif_idx.i.i, align 8
  %listen_intvl_t.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0100.i, i32 0, i32 36
  %37 = ptrtoint ptr %listen_intvl_t.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %listen_intvl_t.i.i, align 8
  %call6.i.i = tail call i32 @ath6kl_wmi_listeninterval_cmd(ptr noundef %34, i8 noundef zeroext %36, i16 noundef zeroext %38, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end.i89.i.for.end.i_crit_edge

if.end.i89.i.for.end.i_crit_edge:                 ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end9.i.i:                                      ; preds = %if.end.i89.i
  %39 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wmi.i.i, align 4
  %41 = ptrtoint ptr %fw_vif_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fw_vif_idx.i.i, align 8
  %bmiss_time_t.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0100.i, i32 0, i32 37
  %43 = ptrtoint ptr %bmiss_time_t.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %bmiss_time_t.i.i, align 2
  %call12.i.i = tail call i32 @ath6kl_wmi_bmisstime_cmd(ptr noundef %40, i8 noundef zeroext %42, i16 noundef zeroext %44, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end9.i.i.if.end16.i.i_crit_edge, label %if.end9.i.i.for.end.i_crit_edge

if.end9.i.i.for.end.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end9.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.end9.i.i.if.end16.i.i_crit_edge, %if.end38.i.if.end16.i.i_crit_edge
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i, align 4
  %47 = and i32 %46, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool18.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool18.not.i.i, label %land.lhs.true.i.i, label %if.end16.i.i.ath6kl_wow_resume_vif.exit.i_crit_edge

if.end16.i.i.ath6kl_wow_resume_vif.exit.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_wow_resume_vif.exit.i

land.lhs.true.i.i:                                ; preds = %if.end16.i.i
  %fw_capabilities.i.i = getelementptr inbounds %struct.ath6kl, ptr %20, i32 0, i32 87
  %48 = ptrtoint ptr %fw_capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %fw_capabilities.i.i, align 4
  %50 = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool20.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool20.not.i.i, label %land.lhs.true.i.i.ath6kl_wow_resume_vif.exit.i_crit_edge, label %if.then21.i.i

land.lhs.true.i.i.ath6kl_wow_resume_vif.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_wow_resume_vif.exit.i

if.then21.i.i:                                    ; preds = %land.lhs.true.i.i
  %51 = ptrtoint ptr %ar1.i76.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ar1.i76.i, align 8
  %wmi23.i.i = getelementptr inbounds %struct.ath6kl, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %wmi23.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wmi23.i.i, align 4
  %fw_vif_idx24.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0100.i, i32 0, i32 5
  %55 = ptrtoint ptr %fw_vif_idx24.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %fw_vif_idx24.i.i, align 8
  %call25.i.i = tail call i32 @ath6kl_wmi_mcast_filter_cmd(ptr noundef %54, i8 noundef zeroext %56, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.then21.i.i.ath6kl_wow_resume_vif.exit.i_crit_edge, label %if.then21.i.i.for.end.i_crit_edge

if.then21.i.i.for.end.i_crit_edge:                ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.then21.i.i.ath6kl_wow_resume_vif.exit.i_crit_edge: ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_wow_resume_vif.exit.i

ath6kl_wow_resume_vif.exit.i:                     ; preds = %if.then21.i.i.ath6kl_wow_resume_vif.exit.i_crit_edge, %land.lhs.true.i.i.ath6kl_wow_resume_vif.exit.i_crit_edge, %if.end16.i.i.ath6kl_wow_resume_vif.exit.i_crit_edge
  %ndev.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0100.i, i32 0, i32 2
  %57 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ndev.i.i, align 4
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 103
  %59 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %_tx.i.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %60) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %ath6kl_wow_resume_vif.exit.i, %if.then4.i83.i, %if.then.i79.i, %for.body.i.for.inc.i_crit_edge
  %61 = ptrtoint ptr %vif.0100.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %vif.0.i = load ptr, ptr %vif.0100.i, align 4
  %cmp.not.i = icmp eq ptr %vif.0.i, %vif_list.i
  br i1 %cmp.not.i, label %for.inc.i.ath6kl_wow_resume.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.ath6kl_wow_resume.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_wow_resume.exit

for.end.i:                                        ; preds = %if.then21.i.i.for.end.i_crit_edge, %if.end9.i.i.for.end.i_crit_edge, %if.end.i89.i.for.end.i_crit_edge, %if.then.i88.i.for.end.i_crit_edge
  %retval.0.i91.ph.i = phi i32 [ %call25.i.i, %if.then21.i.i.for.end.i_crit_edge ], [ %call12.i.i, %if.end9.i.i.for.end.i_crit_edge ], [ %call6.i.i, %if.end.i89.i.for.end.i_crit_edge ], [ %call.i.i, %if.then.i88.i.for.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.end.i, %if.then27.i
  %ret.3.i = phi i32 [ %call25.i, %if.then27.i ], [ %retval.0.i91.ph.i, %for.end.i ]
  %62 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 6, ptr %state, align 4
  br label %if.then

ath6kl_wow_resume.exit:                           ; preds = %for.inc.i.ath6kl_wow_resume.exit_crit_edge, %if.end28.i.ath6kl_wow_resume.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i) #12
  %63 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %state, align 4
  br label %cleanup

if.then:                                          ; preds = %cleanup.i, %if.then4.i.i, %if.then.i.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -5, %if.then.i.i ], [ -5, %if.then4.i.i ], [ -5, %do.end.i ], [ %ret.3.i, %cleanup.i ]
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.18, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1048576, ptr noundef nonnull @.str.19) #12
  %call.i22 = tail call ptr @ath6kl_vif_first(ptr noundef %ar) #12
  %tobool.not.i23 = icmp eq ptr %call.i22, null
  br i1 %tobool.not.i23, label %sw.bb1.if.then4_crit_edge, label %if.end.i

sw.bb1.if.then4_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.end.i:                                         ; preds = %sw.bb1
  %wmi.i24 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %64 = ptrtoint ptr %wmi.i24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wmi.i24, align 4
  %pwr_mode.i = getelementptr inbounds %struct.wmi, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %pwr_mode.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pwr_mode.i, align 4
  %saved_pwr_mode.i = getelementptr inbounds %struct.wmi, ptr %65, i32 0, i32 12
  %68 = ptrtoint ptr %saved_pwr_mode.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %saved_pwr_mode.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp.not.i25 = icmp eq i8 %67, %69
  br i1 %cmp.not.i25, label %if.end.i.if.end12.i_crit_edge, label %if.then4.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then4.i:                                       ; preds = %if.end.i
  %call8.i = tail call i32 @ath6kl_wmi_powermode_cmd(ptr noundef %65, i8 noundef zeroext 0, i8 noundef zeroext %69) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then4.i.if.end12.i_crit_edge, label %if.then4.i.if.then4_crit_edge

if.then4.i.if.then4_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4.i.if.end12.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then4.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %70 = ptrtoint ptr %wmi.i24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wmi.i24, align 4
  %fw_vif_idx.i26 = getelementptr inbounds %struct.ath6kl_vif, ptr %call.i22, i32 0, i32 5
  %72 = ptrtoint ptr %fw_vif_idx.i26 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %fw_vif_idx.i26, align 8
  %call14.i = tail call i32 @ath6kl_wmi_set_host_sleep_mode_cmd(ptr noundef %71, i8 noundef zeroext %73, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %ath6kl_cfg80211_deepsleep_resume.exit, label %if.end12.i.if.then4_crit_edge

if.end12.i.if.then4_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

ath6kl_cfg80211_deepsleep_resume.exit:            ; preds = %if.end12.i
  %74 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %state, align 4
  %75 = ptrtoint ptr %wmi.i24 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %wmi.i24, align 4
  %77 = ptrtoint ptr %fw_vif_idx.i26 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %fw_vif_idx.i26, align 8
  %call20.i = tail call i32 @ath6kl_wmi_scanparams_cmd(ptr noundef %76, i8 noundef zeroext %78, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool3.not = icmp eq i32 %call20.i, 0
  br i1 %tobool3.not, label %ath6kl_cfg80211_deepsleep_resume.exit.cleanup_crit_edge, label %ath6kl_cfg80211_deepsleep_resume.exit.if.then4_crit_edge

ath6kl_cfg80211_deepsleep_resume.exit.if.then4_crit_edge: ; preds = %ath6kl_cfg80211_deepsleep_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

ath6kl_cfg80211_deepsleep_resume.exit.cleanup_crit_edge: ; preds = %ath6kl_cfg80211_deepsleep_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %ath6kl_cfg80211_deepsleep_resume.exit.if.then4_crit_edge, %if.end12.i.if.then4_crit_edge, %if.then4.i.if.then4_crit_edge, %sw.bb1.if.then4_crit_edge
  %retval.0.i2835 = phi i32 [ %call20.i, %ath6kl_cfg80211_deepsleep_resume.exit.if.then4_crit_edge ], [ %call14.i, %if.end12.i.if.then4_crit_edge ], [ %call8.i, %if.then4.i.if.then4_crit_edge ], [ -5, %sw.bb1.if.then4_crit_edge ]
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.20, i32 noundef %retval.0.i2835) #12
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1048576, ptr noundef nonnull @.str.21) #12
  %call7 = tail call i32 @ath6kl_init_hw_start(ptr noundef %ar) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %sw.bb6.cleanup_crit_edge, label %if.then9

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.22, i32 noundef %call7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %sw.bb6.cleanup_crit_edge, %if.then4, %ath6kl_cfg80211_deepsleep_resume.exit.cleanup_crit_edge, %if.then, %ath6kl_wow_resume.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ %retval.0.i2835, %if.then4 ], [ %retval.0.i.ph, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb6.cleanup_crit_edge ], [ 0, %ath6kl_cfg80211_deepsleep_resume.exit.cleanup_crit_edge ], [ 0, %ath6kl_wow_resume.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_init_hw_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_check_wow_status(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cond = icmp eq i32 %1, 6
  br i1 %cond, label %if.then3, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @ath6kl_cfg80211_resume(ptr noundef %ar)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cfg80211_stop(ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
  %params.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1.i, align 8
  %flags.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %flags.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.ath6kl_cfg80211_sscan_disable.exit_crit_edge, label %if.end.i.i

entry.ath6kl_cfg80211_sscan_disable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_sscan_disable.exit

if.end.i.i:                                       ; preds = %entry
  %sched_scan_timer.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 27
  %call2.i.i = tail call i32 @del_timer_sync(ptr noundef %sched_scan_timer.i.i) #12
  %state.i.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 7
  br i1 %cmp.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end4.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %wmi.i.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wmi.i.i, align 4
  %fw_vif_idx.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %6 = ptrtoint ptr %fw_vif_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_vif_idx.i.i, align 8
  %call5.i.i = tail call i32 @ath6kl_wmi_enable_sched_scan_cmd(ptr noundef %5, i8 noundef zeroext %7, i1 noundef zeroext false) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.end4.i.i, %if.end.i.i.if.end.i_crit_edge
  %wiphy.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy.i, align 4
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %9, i64 noundef 0) #12
  br label %ath6kl_cfg80211_sscan_disable.exit

ath6kl_cfg80211_sscan_disable.exit:               ; preds = %if.end.i, %entry.ath6kl_cfg80211_sscan_disable.exit_crit_edge
  %sme_state = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 29
  %10 = ptrtoint ptr %sme_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sme_state, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %11, label %ath6kl_cfg80211_sscan_disable.exit.sw.epilog_crit_edge [
    i32 2, label %sw.bb1
    i32 1, label %sw.bb
  ]

ath6kl_cfg80211_sscan_disable.exit.sw.epilog_crit_edge: ; preds = %ath6kl_cfg80211_sscan_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %ath6kl_cfg80211_sscan_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 4
  %bssid = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i) #12
  %15 = getelementptr inbounds i8, ptr %params.i.i, i32 28
  %16 = call ptr @memset(ptr %15, i32 0, i32 24)
  %17 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %params.i.i, align 4
  %bssid2.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %bssid2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bssid, ptr %bssid2.i.i, align 4
  %bss3.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 2
  %timeout_reason8.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %timeout_reason8.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %timeout_reason8.i.i, align 4
  %20 = call ptr @memset(ptr %bss3.i.i, i32 0, i32 20)
  call void @cfg80211_connect_done(ptr noundef %14, ptr noundef nonnull %params.i.i, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %ath6kl_cfg80211_sscan_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ndev2 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %21 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev2, align 4
  tail call void @cfg80211_disconnected(ptr noundef %22, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef 3264) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %ath6kl_cfg80211_sscan_disable.exit.sw.epilog_crit_edge
  %23 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ar1.i, align 8
  %state = getelementptr inbounds %struct.ath6kl, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp.not = icmp eq i32 %26, 7
  br i1 %cmp.not, label %sw.epilog.if.end_crit_edge, label %land.lhs.true

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i.i, align 4
  %31 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool5.not = icmp eq i32 %31, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %24, i32 0, i32 7
  %32 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %34 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fw_vif_idx, align 8
  %call7 = call i32 @ath6kl_wmi_disconnect_cmd(ptr noundef %33, i8 noundef zeroext %35) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %36 = ptrtoint ptr %sme_state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %sme_state, align 8
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i.i) #12
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i.i) #12
  %ndev11 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %37 = ptrtoint ptr %ndev11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev11, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 103
  %39 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i43 = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i43) #12
  %41 = ptrtoint ptr %ndev11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ndev11, align 4
  call void @netif_carrier_off(ptr noundef %42) #12
  %43 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ar1.i, align 8
  %state14 = getelementptr inbounds %struct.ath6kl, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %46)
  %cmp15.not = icmp eq i32 %46, 7
  br i1 %cmp15.not, label %if.end.if.end23_crit_edge, label %land.lhs.true16

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true16:                                  ; preds = %if.end
  %wmi18 = getelementptr inbounds %struct.ath6kl, ptr %44, i32 0, i32 7
  %47 = ptrtoint ptr %wmi18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wmi18, align 4
  %fw_vif_idx19 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %49 = ptrtoint ptr %fw_vif_idx19 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %fw_vif_idx19, align 8
  %call20 = call i32 @ath6kl_wmi_scanparams_cmd(ptr noundef %48, i8 noundef zeroext %50, i16 noundef zeroext -1, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %land.lhs.true16.if.end23_crit_edge, label %if.then22

land.lhs.true16.if.end23_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.23) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true16.if.end23_crit_edge, %if.end.if.end23_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #12
  %51 = getelementptr inbounds i8, ptr %info.i, i32 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 -65025, ptr %51, align 8
  %53 = call ptr @memset(ptr %info.i, i32 0, i32 14)
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ath6kl_cfg80211_scan_complete_event, ptr noundef nonnull @.str.7) #12
  %scan_req.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 28
  %54 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %scan_req.i, align 4
  %tobool5.not.i = icmp eq ptr %55, null
  br i1 %tobool5.not.i, label %if.end23.ath6kl_cfg80211_scan_complete_event.exit_crit_edge, label %if.end.i45

if.end23.ath6kl_cfg80211_scan_complete_event.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_scan_complete_event.exit

if.end.i45:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  call void @cfg80211_scan_done(ptr noundef nonnull %55, ptr noundef nonnull %info.i) #12
  %56 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %scan_req.i, align 4
  br label %ath6kl_cfg80211_scan_complete_event.exit

ath6kl_cfg80211_scan_complete_event.exit:         ; preds = %if.end.i45, %if.end23.ath6kl_cfg80211_scan_complete_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_scanparams_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_vif_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_powermode_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cfg80211_vif_stop(ptr noundef %vif, i1 noundef zeroext %wmi_ready) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %flags = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags) #12
  br i1 %wmi_ready, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %lor.rhs, label %if.then9.critedge

lor.rhs:                                          ; preds = %if.then
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  tail call void @ath6kl_disconnect(ptr noundef %vif) #12
  %disconnect_timer = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 26
  %call7 = tail call i32 @del_timer(ptr noundef %disconnect_timer) #12
  br i1 %tobool5.not, label %lor.rhs.if.end11_crit_edge, label %lor.rhs.if.then9_crit_edge

lor.rhs.if.then9_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.rhs.if.end11_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9.critedge:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ath6kl_disconnect(ptr noundef %vif) #12
  %disconnect_timer.c = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 26
  %call7.c = tail call i32 @del_timer(ptr noundef %disconnect_timer.c) #12
  br label %if.then9

if.then9:                                         ; preds = %if.then9.critedge, %lor.rhs.if.then9_crit_edge
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 17
  %9 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nw_type, align 4
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  %bssid = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 18
  %spec.select = select i1 %tobool10.not, ptr %bssid, ptr @ath6kl_cfg80211_vif_stop.bcast_mac
  tail call void @ath6kl_disconnect_event(ptr noundef %vif, i8 noundef zeroext 3, ptr noundef %spec.select, i8 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %lor.rhs.if.end11_crit_edge, %entry.if.end11_crit_edge
  %scan_req = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 28
  %12 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scan_req, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #12
  %14 = call ptr @memcpy(ptr %info, ptr @__const.ath6kl_cfg80211_vif_stop.info, i32 16)
  call void @cfg80211_scan_done(ptr noundef nonnull %13, ptr noundef nonnull %info) #12
  %15 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %scan_req, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  call fastcc void @ath6kl_cfg80211_sta_bmiss_enhance(ptr noundef %vif, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_disconnect_event(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_cfg80211_sta_bmiss_enhance(ptr nocapture noundef readonly %vif, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %flag = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !348

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 434, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %entry
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 17
  %5 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %if.end26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 87
  %7 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %fw_capabilities, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool29.not = icmp eq i32 %9, 0
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %cond = select i1 %enable, ptr @.str.51, ptr @.str.52
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.50, ptr noundef nonnull %cond) #12
  %10 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar, align 8
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %14 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fw_vif_idx, align 8
  %call36 = tail call i32 @ath6kl_wmi_sta_bmiss_enhance_cmd(ptr noundef %13, i8 noundef zeroext %15, i1 noundef zeroext %enable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end31.cleanup_crit_edge, label %if.then38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.53, ptr noundef nonnull %cond, i32 noundef %call36) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cfg80211_vif_cleanup(ptr noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  %aggr_cntxt = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 24
  %2 = ptrtoint ptr %aggr_cntxt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aggr_cntxt, align 8
  tail call void @aggr_module_destroy(ptr noundef %3) #12
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %4 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_vif_idx, align 8
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %avail_idx_map = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %avail_idx_map to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %avail_idx_map, align 1
  %8 = trunc i32 %shl to i8
  %conv3 = or i8 %7, %8
  store i8 %conv3, ptr %avail_idx_map, align 1
  %nw_type = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 17
  %9 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp = icmp eq i8 %10, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ibss_if_active = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 30
  %11 = ptrtoint ptr %ibss_if_active to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ibss_if_active, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mc_filter6 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 44
  %12 = ptrtoint ptr %mc_filter6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc_filter6, align 8
  %cmp14.not34 = icmp eq ptr %13, %mc_filter6
  br i1 %cmp14.not34, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %mc_filter.035 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %13, %if.end.for.body_crit_edge ]
  %14 = ptrtoint ptr %mc_filter.035 to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp.0 = load ptr, ptr %mc_filter.035, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mc_filter.035) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mc_filter.035, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %mc_filter.035 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mc_filter.035, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %21 = ptrtoint ptr %mc_filter.035 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %mc_filter.035, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mc_filter.035, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %mc_filter.035) #12
  %cmp14.not = icmp eq ptr %tmp.0, %mc_filter6
  br i1 %cmp14.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %ndev = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 2
  %23 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev, align 4
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 82
  %25 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ieee80211_ptr.i, align 16
  tail call void @cfg80211_unregister_wdev(ptr noundef %26) #12
  %num_vif = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 15
  %27 = ptrtoint ptr %num_vif to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_vif, align 4
  %dec = add i8 %28, -1
  store i8 %dec, ptr %num_vif, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aggr_module_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath6kl_interface_add(ptr noundef %ar, ptr noundef %name, i8 noundef zeroext %name_assign_type, i32 noundef %type, i8 noundef zeroext %fw_vif_idx, i8 noundef zeroext %nw_type) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 2176, ptr noundef %name, i8 noundef zeroext %name_assign_type, ptr noundef nonnull @ether_setup, i32 noundef 1, i32 noundef 1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %wdev = getelementptr i8, ptr %call, i32 2312
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 82
  %1 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wdev, ptr %ieee80211_ptr, align 16
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 4
  %4 = ptrtoint ptr %wdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %wdev, align 8
  %ar4 = getelementptr i8, ptr %call, i32 3280
  %5 = ptrtoint ptr %ar4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ar, ptr %ar4, align 8
  %ndev5 = getelementptr i8, ptr %call, i32 3276
  %6 = ptrtoint ptr %ndev5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %ndev5, align 4
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 56, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %parent, align 8
  %netdev = getelementptr i8, ptr %call, i32 2328
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %netdev, align 8
  %iftype = getelementptr i8, ptr %call, i32 2316
  %11 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %type, ptr %iftype, align 4
  %fw_vif_idx11 = getelementptr i8, ptr %call, i32 3328
  %12 = ptrtoint ptr %fw_vif_idx11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %fw_vif_idx, ptr %fw_vif_idx11, align 8
  %nw_type12 = getelementptr i8, ptr %call, i32 3380
  %13 = ptrtoint ptr %nw_type12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %nw_type, ptr %nw_type12, align 4
  %next_mode = getelementptr i8, ptr %call, i32 3379
  %14 = ptrtoint ptr %next_mode to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %nw_type, ptr %next_mode, align 1
  %listen_intvl_t = getelementptr i8, ptr %call, i32 4008
  %15 = ptrtoint ptr %listen_intvl_t to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 100, ptr %listen_intvl_t, align 8
  %bmiss_time_t = getelementptr i8, ptr %call, i32 4010
  %16 = ptrtoint ptr %bmiss_time_t to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1500, ptr %bmiss_time_t, align 2
  %bg_scan_period = getelementptr i8, ptr %call, i32 4016
  %17 = ptrtoint ptr %bg_scan_period to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %bg_scan_period, align 8
  %htcap = getelementptr i8, ptr %call, i32 3860
  %18 = ptrtoint ptr %htcap to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %htcap, align 4
  %arrayidx14 = getelementptr i8, ptr %call, i32 3864
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %arrayidx14, align 4
  %mac_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 64
  %20 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac_addr, align 4
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %addr, align 4
  %add.ptr.i100 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 64, i32 4
  %23 = ptrtoint ptr %add.ptr.i100 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i100, align 2
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %0, align 4
  %conv = zext i8 %fw_vif_idx to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fw_vif_idx)
  %cmp.not = icmp eq i8 %fw_vif_idx, 0
  br i1 %cmp.not, label %if.end.if.end33_crit_edge, label %if.then18

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then18:                                        ; preds = %if.end
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr, align 4
  %shl = shl nuw i32 1, %conv
  %28 = trunc i32 %shl to i8
  %29 = xor i8 %27, %28
  %conv22 = or i8 %29, 2
  store i8 %conv22, ptr %addr, align 4
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 87
  %30 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %fw_capabilities, align 4
  %32 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool26.not = icmp eq i32 %32, 0
  br i1 %tobool26.not, label %if.then18.if.end33_crit_edge, label %if.then27

if.then18.if.end33_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then27:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %0, align 4
  %35 = xor i8 %34, -128
  store i8 %35, ptr %0, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.then18.if.end33_crit_edge, %if.end.if.end33_crit_edge
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  call void @init_netdev(ptr noundef nonnull %call) #12
  call void @ath6kl_init_control_info(ptr noundef %add.ptr.i) #12
  %call.i = call ptr @aggr_init(ptr noundef %add.ptr.i) #12
  %aggr_cntxt.i = getelementptr i8, ptr %call, i32 3856
  %36 = ptrtoint ptr %aggr_cntxt.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %aggr_cntxt.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %ath6kl_cfg80211_vif_init.exit, label %if.end38

ath6kl_cfg80211_vif_init.exit:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.54) #12
  br label %err

if.end38:                                         ; preds = %if.end33
  %disconnect_timer.i = getelementptr i8, ptr %call, i32 3884
  call void @init_timer_key(ptr noundef %disconnect_timer.i, ptr noundef nonnull @disconnect_timer_handler, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef nonnull @ath6kl_cfg80211_vif_init.__key) #12
  %sched_scan_timer.i = getelementptr i8, ptr %call, i32 3932
  call void @init_timer_key(ptr noundef %sched_scan_timer.i, ptr noundef nonnull @ath6kl_wmi_sscan_timer, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @ath6kl_cfg80211_vif_init.__key.56) #12
  %flags.i = getelementptr i8, ptr %call, i32 3332
  call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #12
  %if_lock.i = getelementptr i8, ptr %call, i32 3284
  call void @__raw_spin_lock_init(ptr noundef %if_lock.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @ath6kl_cfg80211_vif_init.__key.58, i16 noundef signext 3) #12
  %mc_filter.i = getelementptr i8, ptr %call, i32 4472
  %37 = ptrtoint ptr %mc_filter.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %mc_filter.i, ptr %mc_filter.i, align 4
  %prev.i.i = getelementptr i8, ptr %call, i32 4476
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %mc_filter.i, ptr %prev.i.i, align 4
  call void @netdev_set_default_ethtool_ops(ptr noundef nonnull %call, ptr noundef nonnull @ath6kl_ethtool_ops) #12
  %call39 = call i32 @cfg80211_register_netdevice(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.err_crit_edge

if.end38.err_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end42:                                         ; preds = %if.end38
  %shl44 = shl nuw i32 1, %conv
  %avail_idx_map = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 19
  %39 = ptrtoint ptr %avail_idx_map to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %avail_idx_map, align 1
  %41 = trunc i32 %shl44 to i8
  %42 = xor i8 %41, -1
  %conv46 = and i8 %40, %42
  store i8 %conv46, ptr %avail_idx_map, align 1
  %sme_state = getelementptr i8, ptr %call, i32 3984
  %43 = ptrtoint ptr %sme_state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %sme_state, align 8
  call void @_set_bit(i32 noundef 7, ptr noundef %flags.i) #12
  %wlan_pwr_state = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 63
  %44 = ptrtoint ptr %wlan_pwr_state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %wlan_pwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp47 = icmp eq i32 %type, 1
  br i1 %cmp47, label %if.then49, label %if.end42.if.end50_crit_edge

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %ibss_if_active = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 30
  %45 = ptrtoint ptr %ibss_if_active to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %ibss_if_active, align 2
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end42.if.end50_crit_edge
  %list_lock = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 14
  call void @_raw_spin_lock_bh(ptr noundef %list_lock) #12
  %vif_list = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 13, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %47, ptr noundef %vif_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end50.list_add_tail.exit_crit_edge

if.end50.list_add_tail.exit_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i, ptr %prev.i, align 4
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %vif_list, ptr %add.ptr.i, align 4
  %prev3.i.i = getelementptr i8, ptr %call, i32 2308
  %50 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %add.ptr.i, ptr %47, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end50.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #12
  br label %cleanup

err:                                              ; preds = %if.end38.err_crit_edge, %ath6kl_cfg80211_vif_init.exit
  %52 = ptrtoint ptr %aggr_cntxt.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %aggr_cntxt.i, align 8
  call void @aggr_module_destroy(ptr noundef %53) #12
  call void @free_netdev(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err ], [ %wdev, %list_add_tail.exit ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_init_control_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_set_default_ethtool_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_cfg80211_init(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy1 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy1, align 4
  %mgmt_stypes = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mgmt_stypes to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ath6kl_mgmt_stypes, ptr %mgmt_stypes, align 4
  %max_remain_on_channel_duration = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 42
  %3 = ptrtoint ptr %max_remain_on_channel_duration to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 5000, ptr %max_remain_on_channel_duration, align 8
  %4 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar, align 4
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 56, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %parent.i, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 14, ptr %interface_modes, align 4
  %p2p = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 90
  %8 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %p2p, align 4, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %spec.store.select = select i1 %tobool.not, i16 14, i16 782
  %10 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %spec.store.select, ptr %interface_modes, align 4
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 87
  %11 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %fw_capabilities, align 4
  %13 = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %entry.if.end8_crit_edge, label %if.then5

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %reg_notifier = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 54
  %14 = ptrtoint ptr %reg_notifier to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ath6kl_cfg80211_reg_notify, ptr %reg_notifier, align 8
  %15 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy1, align 4
  %features = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %features, align 8
  %or7 = or i32 %18, 8
  store i32 %or7, ptr %features, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %entry.if.end8_crit_edge
  %max_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %max_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 16, ptr %max_scan_ssids, align 32
  %20 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %fw_capabilities, align 4
  %22 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.not = icmp eq i32 %22, 0
  br i1 %tobool12.not, label %if.end8.if.end14_crit_edge, label %if.then13

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %max_match_sets = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 21
  %23 = ptrtoint ptr %max_match_sets to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 16, ptr %max_match_sets, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end8.if.end14_crit_edge
  %max_scan_ie_len = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 22
  %24 = ptrtoint ptr %max_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1000, ptr %max_scan_ie_len, align 4
  %cap = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 14
  %25 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cap, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %26, label %sw.default [
    i32 4, label %if.end14.land.lhs.true_crit_edge
    i32 1, label %sw.epilog.thread144
    i32 5, label %sw.epilog.thread150
    i32 2, label %if.end14.if.end30.critedge_crit_edge
    i32 6, label %sw.bb19.thread
    i32 3, label %sw.bb19
  ]

if.end14.if.end30.critedge_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.critedge

if.end14.land.lhs.true_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

sw.epilog.thread144:                              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.critedge

sw.epilog.thread150:                              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

sw.bb19.thread:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

sw.bb19:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.critedge

sw.default:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.25) #12
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb19.thread, %sw.epilog.thread150, %if.end14.land.lhs.true_crit_edge
  %band_5gig.0.off0143 = phi i1 [ false, %sw.epilog.thread150 ], [ true, %if.end14.land.lhs.true_crit_edge ], [ true, %sw.bb19.thread ]
  %band_2gig.0.off0141 = phi i1 [ true, %sw.epilog.thread150 ], [ false, %if.end14.land.lhs.true_crit_edge ], [ true, %sw.bb19.thread ]
  %28 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %fw_capabilities, align 4
  %30 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool25.not = icmp eq i32 %30, 0
  br i1 %tobool25.not, label %if.then28.critedge, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  store i16 0, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_2ghz, i32 0, i32 5), align 4
  store i8 0, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_2ghz, i32 0, i32 5, i32 1), align 2
  store i16 0, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_5ghz, i32 0, i32 5), align 4
  store i8 0, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_5ghz, i32 0, i32 5, i32 1), align 2
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.26) #12
  br label %if.end30

if.end30.critedge:                                ; preds = %sw.bb19, %sw.epilog.thread144, %if.end14.if.end30.critedge_crit_edge
  %band_5gig.0.off0149 = phi i1 [ true, %sw.epilog.thread144 ], [ true, %sw.bb19 ], [ false, %if.end14.if.end30.critedge_crit_edge ]
  %band_2gig.0.off0148 = phi i1 [ false, %sw.epilog.thread144 ], [ true, %sw.bb19 ], [ true, %if.end14.if.end30.critedge_crit_edge ]
  store i16 0, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_2ghz, i32 0, i32 5), align 4
  store i8 0, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_2ghz, i32 0, i32 5, i32 1), align 2
  store i16 0, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_5ghz, i32 0, i32 5), align 4
  store i8 0, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_5ghz, i32 0, i32 5, i32 1), align 2
  br label %if.end30

if.end30:                                         ; preds = %if.end30.critedge, %if.then28.critedge, %land.lhs.true.if.end30_crit_edge
  %band_5gig.0.off0142 = phi i1 [ %band_5gig.0.off0149, %if.end30.critedge ], [ %band_5gig.0.off0143, %if.then28.critedge ], [ %band_5gig.0.off0143, %land.lhs.true.if.end30_crit_edge ]
  %band_2gig.0.off0140 = phi i1 [ %band_2gig.0.off0148, %if.end30.critedge ], [ %band_2gig.0.off0141, %if.then28.critedge ], [ %band_2gig.0.off0141, %land.lhs.true.if.end30_crit_edge ]
  %31 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %fw_capabilities, align 4
  %33 = and i32 %32, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool34.not = icmp eq i32 %33, 0
  store i8 -1, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_2ghz, i32 0, i32 5, i32 4), align 1
  store i8 -1, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_5ghz, i32 0, i32 5, i32 4), align 1
  br i1 %tobool34.not, label %if.end30.if.end42_crit_edge, label %if.then35

if.end30.if.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  store i8 -1, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_2ghz, i32 0, i32 5, i32 4, i32 0, i32 1), align 2
  store i8 -1, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @ath6kl_band_5ghz, i32 0, i32 5, i32 4, i32 0, i32 1), align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then35, %if.end30.if.end42_crit_edge
  %.sink153 = phi i8 [ 3, %if.then35 ], [ 1, %if.end30.if.end42_crit_edge ]
  %34 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 12
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink153, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 13
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.sink153, ptr %36, align 1
  %conv45 = zext i8 %.sink153 to i32
  %available_antennas_tx = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 44
  %38 = ptrtoint ptr %available_antennas_tx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv45, ptr %available_antennas_tx, align 4
  %39 = load i8, ptr %36, align 1
  %conv48 = zext i8 %39 to i32
  %available_antennas_rx = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 45
  %40 = ptrtoint ptr %available_antennas_rx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv48, ptr %available_antennas_rx, align 16
  br i1 %band_2gig.0.off0140, label %if.then50, label %if.end42.if.end51_crit_edge

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %bands = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 53
  %41 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ath6kl_band_2ghz, ptr %bands, align 16
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end42.if.end51_crit_edge
  br i1 %band_5gig.0.off0142, label %if.then53, label %if.end51.if.end56_crit_edge

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx55 = getelementptr %struct.wiphy, ptr %1, i32 0, i32 53, i32 1
  %42 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @ath6kl_band_5ghz, ptr %arrayidx55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end51.if.end56_crit_edge
  %signal_type = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 16
  %43 = ptrtoint ptr %signal_type to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %signal_type, align 8
  %cipher_suites = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 28
  %44 = ptrtoint ptr %cipher_suites to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @cipher_suites, ptr %cipher_suites, align 8
  %n_cipher_suites = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 27
  %45 = ptrtoint ptr %n_cipher_suites to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 6, ptr %n_cipher_suites, align 4
  %wowlan = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 40
  %46 = ptrtoint ptr %wowlan to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @ath6kl_wowlan_support, ptr %wowlan, align 32
  %max_sched_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 20
  %47 = ptrtoint ptr %max_sched_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 16, ptr %max_sched_scan_ssids, align 2
  %48 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wiphy1, align 4
  %flags = getelementptr inbounds %struct.wiphy, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 32
  %or58 = or i32 %51, 2760704
  store i32 %or58, ptr %flags, align 32
  %52 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %fw_capabilities, align 4
  %54 = and i32 %53, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool62.not = icmp eq i32 %54, 0
  br i1 %tobool62.not, label %if.end56.if.end65_crit_edge, label %if.then63

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then63:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wiphy1, align 4
  %max_sched_scan_reqs = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 19
  %57 = ptrtoint ptr %max_sched_scan_reqs to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %max_sched_scan_reqs, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end56.if.end65_crit_edge
  %58 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %fw_capabilities, align 4
  %60 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool69.not = icmp eq i32 %60, 0
  br i1 %tobool69.not, label %if.end65.if.end74_crit_edge, label %if.then70

if.end65.if.end74_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wiphy1, align 4
  %features72 = getelementptr inbounds %struct.wiphy, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %features72 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %features72, align 8
  %or73 = or i32 %64, 4
  store i32 %or73, ptr %features72, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end65.if.end74_crit_edge
  %65 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wiphy1, align 4
  %probe_resp_offload = getelementptr inbounds %struct.wiphy, ptr %66, i32 0, i32 46
  %67 = ptrtoint ptr %probe_resp_offload to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 7, ptr %probe_resp_offload, align 4
  %call76 = tail call i32 @wiphy_register(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp = icmp slt i32 %call76, 0
  br i1 %cmp, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.27) #12
  br label %cleanup

if.end79:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy_registered = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 91
  %68 = ptrtoint ptr %wiphy_registered to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %wiphy_registered, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then78, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call76, %if.then78 ], [ 0, %if.end79 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_cfg80211_reg_notify(ptr noundef readonly %wiphy, ptr noundef %request) #0 align 64 {
entry:
  %rates = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !348

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !349
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rates) #12
  %0 = getelementptr inbounds [6 x i32], ptr %rates, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i32], ptr %rates, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i32], ptr %rates, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i32], ptr %rates, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i32], ptr %rates, i32 0, i32 5
  %alpha2 = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 4
  %5 = call ptr @memset(ptr %rates, i32 255, i32 24)
  %6 = ptrtoint ptr %alpha2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %alpha2, align 4
  %conv = zext i8 %7 to i32
  %arrayidx2 = getelementptr %struct.regulatory_request, ptr %request, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  %intersect = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 6
  %10 = ptrtoint ptr %intersect to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %intersect, align 4, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool.not, ptr @.str.8, ptr @.str.62
  %processed = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 7
  %12 = ptrtoint ptr %processed to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %processed, align 1, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  %cond7 = select i1 %tobool5.not, ptr @.str.8, ptr @.str.63
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %14 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %initiator, align 4
  %user_reg_hint_type = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 3
  %16 = ptrtoint ptr %user_reg_hint_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %user_reg_hint_type, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.61, i32 noundef %conv, i32 noundef %conv3, ptr noundef nonnull %cond, ptr noundef nonnull %cond7, i32 noundef %15, i32 noundef %17) #12
  %18 = ptrtoint ptr %user_reg_hint_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %user_reg_hint_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.not = icmp eq i32 %19, 1
  br i1 %cmp.not, label %if.end, label %wiphy_priv.exit.cleanup_crit_edge

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %wmi = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 7
  %20 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wmi, align 4
  %call11 = tail call i32 @ath6kl_wmi_set_regdomain_cmd(ptr noundef %21, ptr noundef %alpha2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.body.preheader, label %if.then13

for.body.preheader:                               ; preds = %if.end
  %arrayidx17 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 0
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %for.body.preheader.for.inc_crit_edge, label %if.then19

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.64, i32 noundef %call11) #12
  br label %cleanup

if.then19:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_bitrates, align 4
  %notmask = shl nsw i32 -1, %25
  %sub = xor i32 %notmask, -1
  %26 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %rates, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %for.body.preheader.for.inc_crit_edge
  %arrayidx17.1 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %27 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx17.1, align 4
  %tobool18.not.1 = icmp eq ptr %28, null
  br i1 %tobool18.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then19.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then19.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %n_bitrates.1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %n_bitrates.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_bitrates.1, align 4
  %notmask.1 = shl nsw i32 -1, %30
  %sub.1 = xor i32 %notmask.1, -1
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.1, ptr %0, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then19.1, %for.inc.for.inc.1_crit_edge
  %arrayidx17.2 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 2
  %32 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx17.2, align 4
  %tobool18.not.2 = icmp eq ptr %33, null
  br i1 %tobool18.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then19.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then19.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %n_bitrates.2 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %n_bitrates.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_bitrates.2, align 4
  %notmask.2 = shl nsw i32 -1, %35
  %sub.2 = xor i32 %notmask.2, -1
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.2, ptr %1, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then19.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx17.3 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 3
  %37 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx17.3, align 4
  %tobool18.not.3 = icmp eq ptr %38, null
  br i1 %tobool18.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then19.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then19.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %n_bitrates.3 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %n_bitrates.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_bitrates.3, align 4
  %notmask.3 = shl nsw i32 -1, %40
  %sub.3 = xor i32 %notmask.3, -1
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.3, ptr %2, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then19.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx17.4 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 4
  %42 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx17.4, align 4
  %tobool18.not.4 = icmp eq ptr %43, null
  br i1 %tobool18.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then19.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then19.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %n_bitrates.4 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %n_bitrates.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_bitrates.4, align 4
  %notmask.4 = shl nsw i32 -1, %45
  %sub.4 = xor i32 %notmask.4, -1
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.4, ptr %3, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then19.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx17.5 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 5
  %47 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx17.5, align 4
  %tobool18.not.5 = icmp eq ptr %48, null
  br i1 %tobool18.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then19.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then19.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  %n_bitrates.5 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %n_bitrates.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_bitrates.5, align 4
  %notmask.5 = shl nsw i32 -1, %50
  %sub.5 = xor i32 %notmask.5, -1
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.5, ptr %4, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then19.5, %for.inc.4.for.inc.5_crit_edge
  %52 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wmi, align 4
  %call26 = call i32 @ath6kl_wmi_beginscan_cmd(ptr noundef %53, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 50, i8 noundef signext 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %rates) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.inc.5.cleanup_crit_edge, label %if.then28

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then28:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.65, i32 noundef %call26) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %for.inc.5.cleanup_crit_edge, %if.then13, %wiphy_priv.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rates) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cfg80211_cleanup(ptr nocapture noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 4
  tail call void @wiphy_unregister(ptr noundef %1) #12
  %wiphy_registered = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 91
  %2 = ptrtoint ptr %wiphy_registered to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wiphy_registered, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath6kl_cfg80211_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @wiphy_new_nm(ptr noundef nonnull @ath6kl_cfg80211_ops, i32 noundef 21068, ptr noundef null) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %wiphy_priv.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.28) #12
  br label %cleanup

wiphy_priv.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 86
  %wiphy2 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %wiphy2, align 4
  br label %cleanup

cleanup:                                          ; preds = %wiphy_priv.exit, %if.then
  %retval.0 = phi ptr [ %priv.i, %wiphy_priv.exit ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_cfg80211_destroy(ptr nocapture noundef readonly %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %aggr_conn = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 0, i32 13
  %0 = ptrtoint ptr %aggr_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aggr_conn, align 4
  tail call void @kfree(ptr noundef %1) #12
  %aggr_conn.1 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 1, i32 13
  %2 = ptrtoint ptr %aggr_conn.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aggr_conn.1, align 4
  tail call void @kfree(ptr noundef %3) #12
  %aggr_conn.2 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 2, i32 13
  %4 = ptrtoint ptr %aggr_conn.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aggr_conn.2, align 4
  tail call void @kfree(ptr noundef %5) #12
  %aggr_conn.3 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 3, i32 13
  %6 = ptrtoint ptr %aggr_conn.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aggr_conn.3, align 4
  tail call void @kfree(ptr noundef %7) #12
  %aggr_conn.4 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 4, i32 13
  %8 = ptrtoint ptr %aggr_conn.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aggr_conn.4, align 4
  tail call void @kfree(ptr noundef %9) #12
  %aggr_conn.5 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 5, i32 13
  %10 = ptrtoint ptr %aggr_conn.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aggr_conn.5, align 4
  tail call void @kfree(ptr noundef %11) #12
  %aggr_conn.6 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 6, i32 13
  %12 = ptrtoint ptr %aggr_conn.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aggr_conn.6, align 4
  tail call void @kfree(ptr noundef %13) #12
  %aggr_conn.7 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 7, i32 13
  %14 = ptrtoint ptr %aggr_conn.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aggr_conn.7, align 4
  tail call void @kfree(ptr noundef %15) #12
  %aggr_conn.8 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 8, i32 13
  %16 = ptrtoint ptr %aggr_conn.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aggr_conn.8, align 4
  tail call void @kfree(ptr noundef %17) #12
  %aggr_conn.9 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 9, i32 13
  %18 = ptrtoint ptr %aggr_conn.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aggr_conn.9, align 4
  tail call void @kfree(ptr noundef %19) #12
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy, align 4
  tail call void @wiphy_free(ptr noundef %21) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_connect_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_wow_mode_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_cfg80211_host_sleep(ptr noundef %ar, ptr noundef %vif) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry74 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %flags) #12
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %0 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %2 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_vif_idx, align 8
  %call = tail call i32 @ath6kl_wmi_set_host_sleep_mode_cmd(ptr noundef %1, i8 noundef zeroext %3, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup119_crit_edge

entry.cleanup119_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup119

if.end:                                           ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 2100) #12
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.then13, label %if.end.if.end47_crit_edge

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then13:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %event_wq = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 72
  %call15203 = call i32 @prepare_to_wait_event(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool18.not204.not = icmp eq i32 %10, 0
  br i1 %tobool18.not204.not, label %if.then13.if.end34_crit_edge, label %if.else.thread

if.then13.if.end34_crit_edge:                     ; preds = %if.then13
  br label %if.end34

if.else.thread:                                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end47

if.end34:                                         ; preds = %cleanup.if.end34_crit_edge, %if.then13.if.end34_crit_edge
  %__ret14.1207 = phi i32 [ %__ret14.1, %cleanup.if.end34_crit_edge ], [ 200, %if.then13.if.end34_crit_edge ]
  %call15206 = phi i32 [ %call15, %cleanup.if.end34_crit_edge ], [ %call15203, %if.then13.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15206)
  %tobool35.not = icmp eq i32 %call15206, 0
  br i1 %tobool35.not, label %cleanup, label %if.end41.thread177

if.end41.thread177:                               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.else

cleanup:                                          ; preds = %if.end34
  %call38 = call i32 @schedule_timeout(i32 noundef %__ret14.1207) #12
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool22.not = icmp eq i32 %call38, 0
  %spec.store.select121 = select i1 %tobool22.not, i32 1, i32 %call38
  %__ret14.1 = select i1 %tobool18.not, i32 %call38, i32 %spec.store.select121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool28.not = icmp eq i32 %__ret14.1, 0
  %not.tobool18.not = xor i1 %tobool18.not, true
  %14 = select i1 %not.tobool18.not, i1 true, i1 %tobool28.not
  br i1 %14, label %if.end41, label %cleanup.if.end34_crit_edge

cleanup.if.end34_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.end41:                                         ; preds = %cleanup
  call void @finish_wait(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %cmp = icmp eq i32 %__ret14.1, 0
  br i1 %cmp, label %if.then43, label %if.end41.if.else_crit_edge

if.end41.if.else_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.44) #12
  br label %if.end47

if.else:                                          ; preds = %if.end41.if.else_crit_edge, %if.end41.thread177
  %__ret.1176 = phi i32 [ %__ret14.1, %if.end41.if.else_crit_edge ], [ %call15206, %if.end41.thread177 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1176)
  %cmp44 = icmp slt i32 %__ret.1176, 0
  br i1 %cmp44, label %if.then45, label %if.else.if.end47_crit_edge

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.45, i32 noundef %__ret.1176) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.else.if.end47_crit_edge, %if.then43, %if.else.thread, %if.end.if.end47_crit_edge
  %ret.0 = phi i32 [ -110, %if.then43 ], [ %__ret.1176, %if.then45 ], [ 0, %if.else.if.end47_crit_edge ], [ 0, %if.end.if.end47_crit_edge ], [ 0, %if.else.thread ]
  %ctrl_ep = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 42
  %15 = ptrtoint ptr %ctrl_ep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl_ep, align 4
  %arrayidx = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 8, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool48.not = icmp eq i32 %18, 0
  br i1 %tobool48.not, label %if.end47.cleanup119_crit_edge, label %if.then49

if.end47.cleanup119_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup119

if.then49:                                        ; preds = %if.end47
  call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 2113) #12
  %19 = ptrtoint ptr %ctrl_ep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl_ep, align 4
  %arrayidx.i = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 8, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.then49.cleanup119_crit_edge, label %if.then73

if.then49.cleanup119_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup119

if.then73:                                        ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry74) #12
  %23 = call ptr @memset(ptr %__wq_entry74, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry74, i32 noundef 0) #12
  %event_wq78 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 72
  %call79209 = call i32 @prepare_to_wait_event(ptr noundef %event_wq78, ptr noundef nonnull %__wq_entry74, i32 noundef 1) #12
  %24 = ptrtoint ptr %ctrl_ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctrl_ep, align 4
  %arrayidx.i165210 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 8, i32 %25
  %26 = ptrtoint ptr %arrayidx.i165210 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i165210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i166211 = icmp eq i32 %27, 0
  br i1 %tobool.not.i166211, label %if.else113.thread, label %if.then73.if.end97_crit_edge

if.then73.if.end97_crit_edge:                     ; preds = %if.then73
  br label %if.end97

if.else113.thread:                                ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %event_wq78, ptr noundef nonnull %__wq_entry74) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry74) #12
  br label %cleanup119

if.end97:                                         ; preds = %cleanup102.if.end97_crit_edge, %if.then73.if.end97_crit_edge
  %__ret75.1213 = phi i32 [ %__ret75.1, %cleanup102.if.end97_crit_edge ], [ 200, %if.then73.if.end97_crit_edge ]
  %call79212 = phi i32 [ %call79, %cleanup102.if.end97_crit_edge ], [ %call79209, %if.then73.if.end97_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79212)
  %tobool98.not = icmp eq i32 %call79212, 0
  br i1 %tobool98.not, label %cleanup102, label %if.end109.thread192

if.end109.thread192:                              ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry74) #12
  br label %if.else113

cleanup102:                                       ; preds = %if.end97
  %call101 = call i32 @schedule_timeout(i32 noundef %__ret75.1213) #12
  %call79 = call i32 @prepare_to_wait_event(ptr noundef %event_wq78, ptr noundef nonnull %__wq_entry74, i32 noundef 1) #12
  %28 = ptrtoint ptr %ctrl_ep to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctrl_ep, align 4
  %arrayidx.i165 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 8, i32 %29
  %30 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i166 = icmp eq i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool85.not = icmp eq i32 %call101, 0
  %32 = select i1 %tobool.not.i166, i1 %tobool85.not, i1 false
  %__ret75.1 = select i1 %32, i32 1, i32 %call101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret75.1)
  %tobool91.not = icmp eq i32 %__ret75.1, 0
  %33 = select i1 %tobool.not.i166, i1 true, i1 %tobool91.not
  br i1 %33, label %if.end109, label %cleanup102.if.end97_crit_edge

cleanup102.if.end97_crit_edge:                    ; preds = %cleanup102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.end109:                                        ; preds = %cleanup102
  call void @finish_wait(ptr noundef %event_wq78, ptr noundef nonnull %__wq_entry74) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry74) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret75.1)
  %cmp111 = icmp eq i32 %__ret75.1, 0
  br i1 %cmp111, label %if.then112, label %if.end109.if.else113_crit_edge

if.end109.if.else113_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else113

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.46) #12
  br label %cleanup119

if.else113:                                       ; preds = %if.end109.if.else113_crit_edge, %if.end109.thread192
  %__ret50.1191 = phi i32 [ %__ret75.1, %if.end109.if.else113_crit_edge ], [ %call79212, %if.end109.thread192 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret50.1191)
  %cmp114 = icmp slt i32 %__ret50.1191, 0
  br i1 %cmp114, label %if.then115, label %if.else113.cleanup119_crit_edge

if.else113.cleanup119_crit_edge:                  ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup119

if.then115:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.47, i32 noundef %__ret50.1191) #12
  br label %cleanup119

cleanup119:                                       ; preds = %if.then115, %if.else113.cleanup119_crit_edge, %if.then112, %if.else113.thread, %if.then49.cleanup119_crit_edge, %if.end47.cleanup119_crit_edge, %entry.cleanup119_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup119_crit_edge ], [ -110, %if.then112 ], [ %__ret50.1191, %if.then115 ], [ %ret.0, %if.else113.cleanup119_crit_edge ], [ %ret.0, %if.end47.cleanup119_crit_edge ], [ %ret.0, %if.then49.cleanup119_crit_edge ], [ %ret.0, %if.else113.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_mcast_filter_cmd(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_del_wow_pattern_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_listeninterval_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_bmisstime_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_ip_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_add_wow_pattern_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_host_sleep_mode_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_stopped(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_enable_sched_scan_cmd(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_sta_bmiss_enhance_cmd(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aggr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disconnect_timer_handler(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_wmi_sscan_timer(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_get_drvinfo(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath6kl_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %sset, ptr nocapture noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp = icmp eq i32 %sset, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memcpy(ptr %data, ptr @ath6kl_gstrings_sta_stats, i32 1184)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_get_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ar1 = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  %2 = call ptr @memset(ptr %data, i32 0, i32 296)
  %call2 = tail call i32 @ath6kl_read_tgt_stats(ptr noundef %1, ptr noundef %add.ptr.i) #12
  %tx_ucast_pkt = getelementptr i8, ptr %dev, i32 4040
  %3 = ptrtoint ptr %tx_ucast_pkt to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tx_ucast_pkt, align 8
  %tx_bcast_pkt = getelementptr i8, ptr %dev, i32 4072
  %5 = ptrtoint ptr %tx_bcast_pkt to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tx_bcast_pkt, align 8
  %add = add i64 %6, %4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add, ptr %data, align 8
  %tx_ucast_byte = getelementptr i8, ptr %dev, i32 4048
  %8 = ptrtoint ptr %tx_ucast_byte to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_ucast_byte, align 8
  %tx_bcast_byte = getelementptr i8, ptr %dev, i32 4080
  %10 = ptrtoint ptr %tx_bcast_byte to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_bcast_byte, align 8
  %add3 = add i64 %11, %9
  %arrayidx5 = getelementptr i64, ptr %data, i32 1
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add3, ptr %arrayidx5, align 8
  %rx_ucast_pkt = getelementptr i8, ptr %dev, i32 4184
  %13 = ptrtoint ptr %rx_ucast_pkt to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rx_ucast_pkt, align 8
  %rx_bcast_pkt = getelementptr i8, ptr %dev, i32 4216
  %15 = ptrtoint ptr %rx_bcast_pkt to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_bcast_pkt, align 8
  %add6 = add i64 %16, %14
  %arrayidx8 = getelementptr i64, ptr %data, i32 2
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add6, ptr %arrayidx8, align 8
  %rx_ucast_byte = getelementptr i8, ptr %dev, i32 4192
  %18 = ptrtoint ptr %rx_ucast_byte to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_ucast_byte, align 8
  %rx_bcast_byte = getelementptr i8, ptr %dev, i32 4224
  %20 = ptrtoint ptr %rx_bcast_byte to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_bcast_byte, align 8
  %add9 = add i64 %21, %19
  %arrayidx11 = getelementptr i64, ptr %data, i32 3
  %22 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add9, ptr %arrayidx11, align 8
  %23 = load i64, ptr %tx_ucast_pkt, align 8
  %arrayidx14 = getelementptr i64, ptr %data, i32 4
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx14, align 8
  %25 = load i64, ptr %tx_bcast_pkt, align 8
  %arrayidx17 = getelementptr i64, ptr %data, i32 5
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx17, align 8
  %27 = load i64, ptr %tx_ucast_byte, align 8
  %arrayidx20 = getelementptr i64, ptr %data, i32 6
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx20, align 8
  %29 = load i64, ptr %tx_bcast_byte, align 8
  %arrayidx23 = getelementptr i64, ptr %data, i32 7
  %30 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx23, align 8
  %tx_rts_success_cnt = getelementptr i8, ptr %dev, i32 4088
  %31 = ptrtoint ptr %tx_rts_success_cnt to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tx_rts_success_cnt, align 8
  %arrayidx25 = getelementptr i64, ptr %data, i32 8
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx25, align 8
  %tx_err = getelementptr i8, ptr %dev, i32 4128
  %34 = ptrtoint ptr %tx_err to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tx_err, align 8
  %arrayidx27 = getelementptr i64, ptr %data, i32 9
  %36 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx27, align 8
  %tx_fail_cnt = getelementptr i8, ptr %dev, i32 4136
  %37 = ptrtoint ptr %tx_fail_cnt to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_fail_cnt, align 8
  %arrayidx29 = getelementptr i64, ptr %data, i32 10
  %39 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx29, align 8
  %tx_retry_cnt = getelementptr i8, ptr %dev, i32 4144
  %40 = ptrtoint ptr %tx_retry_cnt to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %tx_retry_cnt, align 8
  %arrayidx31 = getelementptr i64, ptr %data, i32 11
  %42 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx31, align 8
  %tx_mult_retry_cnt = getelementptr i8, ptr %dev, i32 4152
  %43 = ptrtoint ptr %tx_mult_retry_cnt to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tx_mult_retry_cnt, align 8
  %arrayidx33 = getelementptr i64, ptr %data, i32 12
  %45 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %arrayidx33, align 8
  %tx_rts_fail_cnt = getelementptr i8, ptr %dev, i32 4160
  %46 = ptrtoint ptr %tx_rts_fail_cnt to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %tx_rts_fail_cnt, align 8
  %arrayidx35 = getelementptr i64, ptr %data, i32 13
  %48 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx35, align 8
  %tkip_cnter_measures_invoked = getelementptr i8, ptr %dev, i32 4288
  %49 = ptrtoint ptr %tkip_cnter_measures_invoked to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %tkip_cnter_measures_invoked, align 8
  %arrayidx37 = getelementptr i64, ptr %data, i32 14
  %51 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx37, align 8
  %52 = load i64, ptr %rx_ucast_pkt, align 8
  %arrayidx40 = getelementptr i64, ptr %data, i32 15
  %53 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx40, align 8
  %rx_ucast_rate = getelementptr i8, ptr %dev, i32 4372
  %54 = ptrtoint ptr %rx_ucast_rate to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_ucast_rate, align 4
  %conv = sext i32 %55 to i64
  %arrayidx42 = getelementptr i64, ptr %data, i32 16
  %56 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv, ptr %arrayidx42, align 8
  %57 = load i64, ptr %rx_bcast_pkt, align 8
  %arrayidx45 = getelementptr i64, ptr %data, i32 17
  %58 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %arrayidx45, align 8
  %59 = load i64, ptr %rx_ucast_byte, align 8
  %arrayidx48 = getelementptr i64, ptr %data, i32 18
  %60 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %arrayidx48, align 8
  %61 = load i64, ptr %rx_bcast_byte, align 8
  %arrayidx51 = getelementptr i64, ptr %data, i32 19
  %62 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %arrayidx51, align 8
  %rx_frgment_pkt = getelementptr i8, ptr %dev, i32 4232
  %63 = ptrtoint ptr %rx_frgment_pkt to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %rx_frgment_pkt, align 8
  %arrayidx53 = getelementptr i64, ptr %data, i32 20
  %65 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %arrayidx53, align 8
  %rx_err = getelementptr i8, ptr %dev, i32 4240
  %66 = ptrtoint ptr %rx_err to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %rx_err, align 8
  %arrayidx55 = getelementptr i64, ptr %data, i32 21
  %68 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx55, align 8
  %rx_crc_err = getelementptr i8, ptr %dev, i32 4248
  %69 = ptrtoint ptr %rx_crc_err to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %rx_crc_err, align 8
  %arrayidx57 = getelementptr i64, ptr %data, i32 22
  %71 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %arrayidx57, align 8
  %rx_key_cache_miss = getelementptr i8, ptr %dev, i32 4256
  %72 = ptrtoint ptr %rx_key_cache_miss to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %rx_key_cache_miss, align 8
  %arrayidx59 = getelementptr i64, ptr %data, i32 23
  %74 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %arrayidx59, align 8
  %rx_decrypt_err = getelementptr i8, ptr %dev, i32 4264
  %75 = ptrtoint ptr %rx_decrypt_err to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %rx_decrypt_err, align 8
  %arrayidx61 = getelementptr i64, ptr %data, i32 24
  %77 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %arrayidx61, align 8
  %rx_dupl_frame = getelementptr i8, ptr %dev, i32 4272
  %78 = ptrtoint ptr %rx_dupl_frame to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %rx_dupl_frame, align 8
  %arrayidx63 = getelementptr i64, ptr %data, i32 25
  %80 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %arrayidx63, align 8
  %tkip_local_mic_fail = getelementptr i8, ptr %dev, i32 4280
  %81 = ptrtoint ptr %tkip_local_mic_fail to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %tkip_local_mic_fail, align 8
  %arrayidx65 = getelementptr i64, ptr %data, i32 26
  %83 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %arrayidx65, align 8
  %tkip_fmt_err = getelementptr i8, ptr %dev, i32 4304
  %84 = ptrtoint ptr %tkip_fmt_err to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %tkip_fmt_err, align 8
  %arrayidx67 = getelementptr i64, ptr %data, i32 27
  %86 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %arrayidx67, align 8
  %ccmp_fmt_err = getelementptr i8, ptr %dev, i32 4312
  %87 = ptrtoint ptr %ccmp_fmt_err to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %ccmp_fmt_err, align 8
  %arrayidx69 = getelementptr i64, ptr %data, i32 28
  %89 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %arrayidx69, align 8
  %ccmp_replays = getelementptr i8, ptr %dev, i32 4320
  %90 = ptrtoint ptr %ccmp_replays to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %ccmp_replays, align 8
  %arrayidx71 = getelementptr i64, ptr %data, i32 29
  %92 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %arrayidx71, align 8
  %cs_bmiss_cnt = getelementptr i8, ptr %dev, i32 4336
  %93 = ptrtoint ptr %cs_bmiss_cnt to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %cs_bmiss_cnt, align 8
  %arrayidx73 = getelementptr i64, ptr %data, i32 30
  %95 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %arrayidx73, align 8
  %cs_connect_cnt = getelementptr i8, ptr %dev, i32 4352
  %96 = ptrtoint ptr %cs_connect_cnt to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %cs_connect_cnt, align 8
  %arrayidx75 = getelementptr i64, ptr %data, i32 31
  %98 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %arrayidx75, align 8
  %cs_discon_cnt = getelementptr i8, ptr %dev, i32 4360
  %99 = ptrtoint ptr %cs_discon_cnt to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %cs_discon_cnt, align 8
  %arrayidx77 = getelementptr i64, ptr %data, i32 32
  %101 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %arrayidx77, align 8
  %cs_ave_beacon_rssi = getelementptr i8, ptr %dev, i32 4390
  %102 = ptrtoint ptr %cs_ave_beacon_rssi to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %cs_ave_beacon_rssi, align 2
  %conv78 = sext i16 %103 to i64
  %arrayidx80 = getelementptr i64, ptr %data, i32 33
  %104 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %conv78, ptr %arrayidx80, align 8
  %arp_received = getelementptr i8, ptr %dev, i32 4400
  %105 = ptrtoint ptr %arp_received to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arp_received, align 8
  %conv81 = zext i32 %106 to i64
  %arrayidx83 = getelementptr i64, ptr %data, i32 34
  %107 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv81, ptr %arrayidx83, align 8
  %arp_matched = getelementptr i8, ptr %dev, i32 4404
  %108 = ptrtoint ptr %arp_matched to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arp_matched, align 4
  %conv84 = zext i32 %109 to i64
  %arrayidx86 = getelementptr i64, ptr %data, i32 35
  %110 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %conv84, ptr %arrayidx86, align 8
  %arp_replied = getelementptr i8, ptr %dev, i32 4408
  %111 = ptrtoint ptr %arp_replied to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arp_replied, align 8
  %conv87 = zext i32 %112 to i64
  %arrayidx89 = getelementptr i64, ptr %data, i32 36
  %113 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv87, ptr %arrayidx89, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath6kl_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp = icmp eq i32 %sset, 1
  %retval.0 = select i1 %cmp, i32 37, i32 -95
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_read_tgt_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_regdomain_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_beginscan_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef signext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ath6kl_cfg80211_suspend(ptr noundef %wiphy, ptr noundef %wow) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !348

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !349
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  tail call void @ath6kl_recovery_suspend(ptr noundef %priv.i) #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.66) #12
  %hif_ops.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 3
  %0 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_ops.i, align 4
  %suspend.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend.i, align 4
  %call.i = tail call i32 %3(ptr noundef %priv.i, ptr noundef %wow) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ath6kl_cfg80211_resume(ptr noundef %wiphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !348

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !349
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.67) #12
  %hif_ops.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 3
  %0 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_ops.i, align 4
  %resume.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume.i, align 4
  %call.i = tail call i32 %3(ptr noundef %priv.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %wiphy_priv.exit.cleanup_crit_edge

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ath6kl_recovery_resume(ptr noundef %priv.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %wiphy_priv.exit.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ath6kl_cfg80211_add_iface(ptr noundef %wiphy, ptr noundef %name, i8 noundef zeroext %name_assign_type, i32 noundef %type, ptr nocapture noundef readnone %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !348

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !349
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %num_vif = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 16
  %0 = ptrtoint ptr %num_vif to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_vif, align 4
  %conv = zext i8 %1 to i32
  %vif_max = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 17
  %2 = ptrtoint ptr %vif_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp eq i32 %3, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.68) #12
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 9
  br i1 %4, label %switch.hole_check, label %if.end.ath6kl_nliftype_to_drv_iftype.exit.i_crit_edge

if.end.ath6kl_nliftype_to_drv_iftype.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_nliftype_to_drv_iftype.exit.i

ath6kl_nliftype_to_drv_iftype.exit.i:             ; preds = %switch.hole_check.ath6kl_nliftype_to_drv_iftype.exit.i_crit_edge, %if.end.ath6kl_nliftype_to_drv_iftype.exit.i_crit_edge
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.70, i32 noundef %type) #12
  br label %if.then4

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 391, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.ath6kl_nliftype_to_drv_iftype.exit.i_crit_edge, label %switch.lookup

switch.hole_check.ath6kl_nliftype_to_drv_iftype.exit.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_nliftype_to_drv_iftype.exit.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.ath6kl_cfg80211_add_iface, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %6)
  %switch.load = load i8, ptr %switch.gep, align 1
  %ibss_if_active.i = getelementptr inbounds %struct.ath6kl, ptr %priv.i, i32 0, i32 30
  %7 = ptrtoint ptr %ibss_if_active.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ibss_if_active.i, align 2, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %switch.lookup.if.then4_crit_edge

switch.lookup.if.then4_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

lor.lhs.false.i:                                  ; preds = %switch.lookup
  %9 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %type, label %lor.lhs.false.i.if.end21.i_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 3, label %lor.lhs.false.i.for.cond.preheader.i_crit_edge
    i32 2, label %lor.lhs.false.i.for.cond.preheader.i_crit_edge41
  ]

lor.lhs.false.i.for.cond.preheader.i_crit_edge41: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

lor.lhs.false.i.for.cond.preheader.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

lor.lhs.false.i.if.end21.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not.i = icmp eq i8 %1, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.cond.preheader.i_crit_edge, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

land.lhs.true.i.for.cond.preheader.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %land.lhs.true.i.for.cond.preheader.i_crit_edge, %lor.lhs.false.i.for.cond.preheader.i_crit_edge, %lor.lhs.false.i.for.cond.preheader.i_crit_edge41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1472.not.i = icmp eq i32 %3, 0
  br i1 %cmp1472.not.i, label %for.cond.preheader.i.if.end21.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end21.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %avail_idx_map.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 19
  %10 = ptrtoint ptr %avail_idx_map.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %avail_idx_map.i, align 1
  %conv16.i = zext i8 %11 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.073.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.073.i
  %and.i = and i32 %shl.i, %conv16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %for.inc.i, label %for.body.i.if.end6_crit_edge

for.body.i.if.end6_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.073.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.if.end21.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end21.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.end21.i:                                       ; preds = %for.inc.i.if.end21.i_crit_edge, %for.cond.preheader.i.if.end21.i_crit_edge, %lor.lhs.false.i.if.end21.i_crit_edge
  %12 = and i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %switch67.i = icmp eq i32 %12, 8
  br i1 %switch67.i, label %if.then27.i, label %if.end21.i.if.then4_crit_edge

if.end21.i.if.then4_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then27.i:                                      ; preds = %if.end21.i
  %max_norm_iface.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 18
  %13 = ptrtoint ptr %max_norm_iface.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_norm_iface.i, align 4
  %conv28.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv28.i)
  %cmp3174.i = icmp ugt i32 %3, %conv28.i
  br i1 %cmp3174.i, label %for.body33.lr.ph.i, label %if.then27.i.if.then4_crit_edge

if.then27.i.if.then4_crit_edge:                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

for.body33.lr.ph.i:                               ; preds = %if.then27.i
  %avail_idx_map34.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 19
  %15 = ptrtoint ptr %avail_idx_map34.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %avail_idx_map34.i, align 1
  %conv35.i = zext i8 %16 to i32
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.inc42.i.for.body33.i_crit_edge, %for.body33.lr.ph.i
  %i.175.i = phi i32 [ %conv28.i, %for.body33.lr.ph.i ], [ %inc43.i, %for.inc42.i.for.body33.i_crit_edge ]
  %shl36.i = shl nuw i32 1, %i.175.i
  %and37.i = and i32 %shl36.i, %conv35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %for.inc42.i, label %for.body33.i.if.end6_crit_edge

for.body33.i.if.end6_crit_edge:                   ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.inc42.i:                                      ; preds = %for.body33.i
  %inc43.i = add i32 %i.175.i, 1
  %exitcond78.not.i = icmp eq i32 %inc43.i, %3
  br i1 %exitcond78.not.i, label %for.inc42.i.if.then4_crit_edge, label %for.inc42.i.for.body33.i_crit_edge

for.inc42.i.for.body33.i_crit_edge:               ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33.i

for.inc42.i.if.then4_crit_edge:                   ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %for.inc42.i.if.then4_crit_edge, %if.then27.i.if.then4_crit_edge, %if.end21.i.if.then4_crit_edge, %land.lhs.true.i.if.then4_crit_edge, %switch.lookup.if.then4_crit_edge, %ath6kl_nliftype_to_drv_iftype.exit.i
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.69) #12
  br label %cleanup

if.end6:                                          ; preds = %for.body33.i.if.end6_crit_edge, %for.body.i.if.end6_crit_edge
  %if_idx.0.in = phi i32 [ %i.175.i, %for.body33.i.if.end6_crit_edge ], [ %i.073.i, %for.body.i.if.end6_crit_edge ]
  %if_idx.0 = trunc i32 %if_idx.0.in to i8
  %call7 = tail call ptr @ath6kl_interface_add(ptr noundef %priv.i, ptr noundef %name, i8 noundef zeroext %name_assign_type, i32 noundef %type, i8 noundef zeroext %if_idx.0, i8 noundef zeroext %switch.load)
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %num_vif to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_vif, align 4
  %inc = add i8 %18, 1
  store i8 %inc, ptr %num_vif, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ %call7, %if.end10 ], [ inttoptr (i32 -22 to ptr), %if.then4 ], [ inttoptr (i32 -12 to ptr), %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_del_iface(ptr noundef %wiphy, ptr nocapture noundef readonly %wdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !348

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !349
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %list_lock = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %wiphy_priv.exit.list_del.exit_crit_edge

wiphy_priv.exit.list_del.exit_crit_edge:          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr i8, ptr %1, i32 2308
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %wiphy_priv.exit.list_del.exit_crit_edge
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr.i, align 4
  %prev.i = getelementptr i8, ptr %1, i32 2308
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #12
  %flag = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 15, i32 56, i32 12, i32 21
  %10 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flag, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool = icmp ne i32 %12, 0
  tail call void @ath6kl_cfg80211_vif_stop(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool)
  tail call void @rtnl_lock() #12
  tail call void @ath6kl_cfg80211_vif_cleanup(ptr noundef %add.ptr.i)
  tail call void @rtnl_unlock() #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_change_iface(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef %ndev, i32 noundef %type, ptr nocapture noundef readnone %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.ath6kl_cfg80211_change_iface, i32 noundef %type) #12
  %ar = getelementptr i8, ptr %ndev, i32 3280
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fw_capabilities, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = and i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %switch = icmp eq i32 %5, 8
  %or.cond = and i1 %switch, %tobool.not
  br i1 %or.cond, label %if.then, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then:                                          ; preds = %entry
  %vif_max = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %vif_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %fw_vif_idx = getelementptr i8, ptr %ndev, i32 3328
  %8 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw_vif_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6.not = icmp eq i8 %9, 0
  br i1 %cmp6.not, label %if.then5.set_iface_type_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.set_iface_type_crit_edge:                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_iface_type

if.end:                                           ; preds = %if.then
  %max_norm_iface = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %max_norm_iface to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_norm_iface, align 4
  %conv10 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv10)
  %cmp1352 = icmp ugt i32 %7, %conv10
  br i1 %cmp1352, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %fw_vif_idx15 = getelementptr i8, ptr %ndev, i32 3328
  %12 = ptrtoint ptr %fw_vif_idx15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_vif_idx15, align 8
  %conv16 = zext i8 %13 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ %conv10, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.053, i32 %conv16)
  %cmp17 = icmp eq i32 %i.053, %conv16
  br i1 %cmp17, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.if.then25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.then25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %conv10, %if.end.for.end_crit_edge ], [ %conv16, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %7)
  %cmp23 = icmp eq i32 %i.0.lcssa, %7
  br i1 %cmp23, label %for.end.if.then25_crit_edge, label %for.end.if.end27_crit_edge

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

for.end.if.then25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.then25:                                        ; preds = %for.end.if.then25_crit_edge, %for.inc.if.then25_crit_edge
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.72) #12
  br label %cleanup

if.end27:                                         ; preds = %for.end.if.end27_crit_edge, %entry.if.end27_crit_edge
  tail call fastcc void @ath6kl_cfg80211_sta_bmiss_enhance(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  br label %set_iface_type

set_iface_type:                                   ; preds = %if.end27, %if.then5.set_iface_type_crit_edge
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 9
  br i1 %14, label %switch.hole_check, label %set_iface_type.sw.default_crit_edge

set_iface_type.sw.default_crit_edge:              ; preds = %set_iface_type
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %set_iface_type.sw.default_crit_edge
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.70, i32 noundef %type) #12
  br label %cleanup

switch.hole_check:                                ; preds = %set_iface_type
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 391, %switch.maskindex
  %15 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %switch.lobit.not = icmp eq i16 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.ath6kl_cfg80211_change_iface, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %16)
  %switch.load = load i8, ptr %switch.gep, align 1
  %next_mode31 = getelementptr i8, ptr %ndev, i32 3379
  %17 = ptrtoint ptr %next_mode31 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %switch.load, ptr %next_mode31, align 1
  %iftype = getelementptr i8, ptr %ndev, i32 2316
  %18 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %type, ptr %iftype, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %sw.default, %if.then25, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ 0, %switch.lookup ], [ -22, %if.then25 ], [ -22, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_add_key(ptr nocapture noundef readnone %wiphy, ptr noundef %ndev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %ndev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr i8, ptr %ndev, i32 3332
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %cipher = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %8 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cipher, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4232959, i32 %9)
  %cmp = icmp eq i32 %9, 4232959
  br i1 %cmp, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  %key_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %10 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp4.not = icmp eq i32 %11, 16
  br i1 %cmp4.not, label %if.end6, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %ndev, i32 3328
  %14 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fw_vif_idx, align 8
  %16 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %params, align 4
  %call8 = tail call i32 @ath6kl_wmi_add_krk_cmd(ptr noundef %13, i8 noundef zeroext %15, ptr noundef %17) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %conv = zext i8 %key_index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %key_index)
  %cmp10 = icmp ugt i8 %key_index, 3
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.ath6kl_cfg80211_add_key, i32 noundef %conv) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %arrayidx = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv
  %18 = call ptr @memset(ptr %arrayidx, i32 0, i32 48)
  %not.pairwise = xor i1 %pairwise, true
  %. = zext i1 %not.pairwise to i8
  %seq_len17 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %19 = ptrtoint ptr %seq_len17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq_len17, align 4
  %21 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cipher, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1339905, i32 %22)
  %cmp19 = icmp eq i32 %22, 1339905
  %23 = tail call i32 @llvm.smin.i32(i32 %20, i32 8)
  %seq_len.0 = select i1 %cmp19, i32 %23, i32 %20
  %key_len25 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %24 = ptrtoint ptr %key_len25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key_len25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %25)
  %cmp26 = icmp sgt i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %seq_len.0)
  %cmp28 = icmp ugt i32 %seq_len.0, 8
  %or.cond = select i1 %cmp26, i1 true, i1 %cmp28
  br i1 %or.cond, label %if.end14.cleanup_crit_edge, label %if.end31

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end14
  %conv33 = trunc i32 %25 to i8
  %key_len34 = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv, i32 1
  %26 = ptrtoint ptr %key_len34 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv33, ptr %key_len34, align 4
  %27 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %params, align 4
  %conv38 = and i32 %25, 255
  %29 = call ptr @memcpy(ptr %arrayidx, ptr %28, i32 %conv38)
  %conv39 = trunc i32 %seq_len.0 to i8
  %seq_len40 = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv, i32 3
  %30 = ptrtoint ptr %seq_len40 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv39, ptr %seq_len40, align 1
  %seq = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv, i32 2
  %seq42 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 1
  %31 = ptrtoint ptr %seq42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %seq42, align 4
  %33 = call ptr @memcpy(ptr %seq, ptr %32, i32 %seq_len.0)
  %34 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cipher, align 4
  %cipher46 = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv, i32 4
  %36 = ptrtoint ptr %cipher46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cipher46, align 4
  %37 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %35, label %if.end31.cleanup_crit_edge [
    i32 1027073, label %if.end31.sw.epilog_crit_edge
    i32 1027077, label %if.end31.sw.epilog_crit_edge224
    i32 1027074, label %sw.bb48
    i32 1027076, label %sw.bb49
    i32 1339905, label %sw.bb50
  ]

if.end31.sw.epilog_crit_edge224:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb48:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb50, %sw.bb49, %sw.bb48, %if.end31.sw.epilog_crit_edge, %if.end31.sw.epilog_crit_edge224
  %cmp115 = phi i1 [ true, %sw.bb50 ], [ true, %sw.bb49 ], [ true, %sw.bb48 ], [ false, %if.end31.sw.epilog_crit_edge ], [ false, %if.end31.sw.epilog_crit_edge224 ]
  %cmp79 = phi i1 [ false, %sw.bb50 ], [ false, %sw.bb49 ], [ true, %sw.bb48 ], [ false, %if.end31.sw.epilog_crit_edge ], [ false, %if.end31.sw.epilog_crit_edge224 ]
  %cmp83 = phi i1 [ false, %sw.bb50 ], [ true, %sw.bb49 ], [ false, %sw.bb48 ], [ false, %if.end31.sw.epilog_crit_edge ], [ false, %if.end31.sw.epilog_crit_edge224 ]
  %cmp87 = phi i1 [ true, %sw.bb50 ], [ false, %sw.bb49 ], [ false, %sw.bb48 ], [ false, %if.end31.sw.epilog_crit_edge ], [ false, %if.end31.sw.epilog_crit_edge224 ]
  %key_type.0 = phi i32 [ 16, %sw.bb50 ], [ 8, %sw.bb49 ], [ 4, %sw.bb48 ], [ 2, %if.end31.sw.epilog_crit_edge ], [ 2, %if.end31.sw.epilog_crit_edge224 ]
  %auth_mode = getelementptr i8, ptr %ndev, i32 3373
  %38 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %auth_mode, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %39, label %sw.epilog.if.end64_crit_edge [
    i8 8, label %sw.epilog.land.lhs.true59_crit_edge
    i8 16, label %sw.epilog.land.lhs.true59_crit_edge225
  ]

sw.epilog.land.lhs.true59_crit_edge225:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true59

sw.epilog.land.lhs.true59_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true59

sw.epilog.if.end64_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

land.lhs.true59:                                  ; preds = %sw.epilog.land.lhs.true59_crit_edge, %sw.epilog.land.lhs.true59_crit_edge225
  br i1 %pairwise, label %land.lhs.true59.if.end64_crit_edge, label %if.then62

land.lhs.true59.if.end64_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then62:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  %disconnect_timer = getelementptr i8, ptr %ndev, i32 3884
  %call63 = tail call i32 @del_timer(ptr noundef %disconnect_timer) #12
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %land.lhs.true59.if.end64_crit_edge, %sw.epilog.if.end64_crit_edge
  %41 = ptrtoint ptr %key_len34 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %key_len34, align 4
  %conv67 = zext i8 %42 to i32
  %conv69 = zext i1 %not.pairwise to i32
  %43 = ptrtoint ptr %seq_len40 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %seq_len40, align 1
  %conv71 = zext i8 %44 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.ath6kl_cfg80211_add_key, i32 noundef %conv, i32 noundef %conv67, i32 noundef %key_type.0, i32 noundef %conv69, i32 noundef %conv71) #12
  %nw_type = getelementptr i8, ptr %ndev, i32 3380
  %45 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %46)
  %cmp73 = icmp ne i8 %46, 16
  %brmerge = or i1 %cmp73, %pairwise
  %brmerge.not = xor i1 %brmerge, true
  %brmerge218 = or i1 %cmp79, %cmp83
  %brmerge219 = or i1 %brmerge218, %cmp87
  %or.cond221 = and i1 %brmerge219, %brmerge.not
  br i1 %or.cond221, label %if.then89, label %if.end64.if.end109_crit_edge

if.end64.if.end109_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.then89:                                        ; preds = %if.end64
  %ap_mode_bkey = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 51
  %47 = ptrtoint ptr %ap_mode_bkey to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %ap_mode_bkey, align 4
  %key_index91 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 51, i32 1
  %48 = ptrtoint ptr %key_index91 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %key_index, ptr %key_index91, align 1
  %key_type94 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 51, i32 2
  %49 = ptrtoint ptr %key_type94 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %key_type.0, ptr %key_type94, align 4
  %50 = ptrtoint ptr %key_len34 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %key_len34, align 4
  %key_len97 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 51, i32 4
  %52 = ptrtoint ptr %key_len97 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %key_len97, align 4
  %key99 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 51, i32 3
  %53 = load i8, ptr %key_len34, align 4
  %conv104 = zext i8 %53 to i32
  %54 = call ptr @memcpy(ptr %key99, ptr %arrayidx, i32 %conv104)
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags.i, align 4
  %and1.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool106.not = icmp eq i32 %and1.i, 0
  br i1 %tobool106.not, label %if.then107, label %if.then89.if.end109_crit_edge

if.then89.if.end109_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.then107:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.75) #12
  br label %cleanup

if.end109:                                        ; preds = %if.then89.if.end109_crit_edge, %if.end64.if.end109_crit_edge
  %next_mode = getelementptr i8, ptr %ndev, i32 3379
  %57 = ptrtoint ptr %next_mode to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %next_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %58)
  %cmp111 = icmp ne i8 %58, 16
  %brmerge220 = or i1 %cmp115, %cmp111
  br i1 %brmerge220, label %if.end109.if.end135_crit_edge, label %land.lhs.true117

if.end109.if.end135_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

land.lhs.true117:                                 ; preds = %if.end109
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags.i, align 4
  %and1.i222 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i222)
  %tobool120.not = icmp eq i32 %and1.i222, 0
  br i1 %tobool120.not, label %if.then121, label %land.lhs.true117.if.end135_crit_edge

land.lhs.true117.if.end135_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then121:                                       ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.76) #12
  %61 = ptrtoint ptr %key_len34 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %key_len34, align 4
  %key_len125 = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 22, i32 %conv, i32 1
  %63 = ptrtoint ptr %key_len125 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %key_len125, align 1
  %key129 = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 22, i32 %conv, i32 2
  %conv134 = zext i8 %62 to i32
  %64 = call ptr @memcpy(ptr %key129, ptr %arrayidx, i32 %conv134)
  br label %cleanup

if.end135:                                        ; preds = %land.lhs.true117.if.end135_crit_edge, %if.end109.if.end135_crit_edge
  %wmi136 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %65 = ptrtoint ptr %wmi136 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wmi136, align 4
  %fw_vif_idx137 = getelementptr i8, ptr %ndev, i32 3328
  %67 = ptrtoint ptr %fw_vif_idx137 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fw_vif_idx137, align 8
  %69 = ptrtoint ptr %key_len34 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %key_len34, align 4
  %71 = ptrtoint ptr %seq_len40 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %seq_len40, align 1
  %conv143 = zext i8 %72 to i32
  %call146 = tail call i32 @ath6kl_wmi_addkey_cmd(ptr noundef %66, i8 noundef zeroext %68, i8 noundef zeroext %key_index, i32 noundef %key_type.0, i8 noundef zeroext %., i8 noundef zeroext %70, ptr noundef %seq, i32 noundef %conv143, ptr noundef %arrayidx, i8 noundef zeroext 3, ptr noundef %mac_addr, i32 noundef 3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %if.then121, %if.then107, %if.end31.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then12, %if.end6, %if.then3.cleanup_crit_edge, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ -2, %if.then12 ], [ %call146, %if.end135 ], [ 0, %if.then121 ], [ 0, %if.then107 ], [ -22, %if.then3.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -524, %if.end31.cleanup_crit_edge ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_get_key(ptr nocapture noundef readnone %wiphy, ptr noundef %ndev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr nocapture noundef readnone %mac_addr, ptr noundef %cookie, ptr nocapture noundef readonly %callback) #0 align 64 {
entry:
  %params = alloca %struct.key_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %params) #12
  %conv = zext i8 %key_index to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.ath6kl_cfg80211_get_key, i32 noundef %conv) #12
  %ar1.i = getelementptr i8, ptr %ndev, i32 3280
  %0 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr i8, ptr %ndev, i32 3332
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %key_index)
  %cmp = icmp ugt i8 %key_index, 3
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.ath6kl_cfg80211_get_key, i32 noundef %conv) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv
  %8 = getelementptr inbounds i8, ptr %params, i32 16
  %9 = call ptr @memset(ptr %8, i32 0, i32 12)
  %cipher = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv, i32 4
  %10 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cipher, align 4
  %cipher7 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %12 = ptrtoint ptr %cipher7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cipher7, align 4
  %key_len = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv, i32 1
  %13 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %key_len, align 4
  %conv8 = zext i8 %14 to i32
  %key_len9 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %15 = ptrtoint ptr %key_len9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv8, ptr %key_len9, align 4
  %seq_len = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv, i32 3
  %16 = ptrtoint ptr %seq_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %seq_len, align 1
  %conv10 = zext i8 %17 to i32
  %seq_len11 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %18 = ptrtoint ptr %seq_len11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv10, ptr %seq_len11, align 4
  %seq = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv, i32 2
  %seq12 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 1
  %19 = ptrtoint ptr %seq12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %seq, ptr %seq12, align 4
  %20 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx, ptr %params, align 4
  call void %callback(ptr noundef %cookie, ptr noundef nonnull %params) #12
  %21 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  %cond = select i1 %tobool.not, i32 -2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ -2, %if.then4 ], [ %cond, %if.end6 ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %params) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_del_key(ptr nocapture noundef readnone %wiphy, ptr noundef %ndev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr nocapture noundef readnone %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %ndev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %conv = zext i8 %key_index to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.ath6kl_cfg80211_del_key, i32 noundef %conv) #12
  %2 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 75
  %4 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr i8, ptr %ndev, i32 3332
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %key_index)
  %cmp = icmp ugt i8 %key_index, 3
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.ath6kl_cfg80211_del_key, i32 noundef %conv) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %key_len = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv, i32 1
  %10 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %key_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.ath6kl_cfg80211_del_key, i32 noundef %conv) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %key_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %key_len, align 8
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %ndev, i32 3328
  %15 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fw_vif_idx, align 8
  %call15 = tail call i32 @ath6kl_wmi_deletekey_cmd(ptr noundef %14, i8 noundef zeroext %16, i8 noundef zeroext %key_index) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then5, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ -2, %if.then5 ], [ %call15, %if.end10 ], [ 0, %if.then8 ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_set_default_key(ptr nocapture noundef readnone %wiphy, ptr noundef %ndev, i8 noundef zeroext %key_index, i1 noundef zeroext %unicast, i1 noundef zeroext %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %ndev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %conv = zext i8 %key_index to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.ath6kl_cfg80211_set_default_key, i32 noundef %conv) #12
  %2 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 75
  %4 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr i8, ptr %ndev, i32 3332
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %key_index)
  %cmp = icmp ugt i8 %key_index, 3
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.ath6kl_cfg80211_set_default_key, i32 noundef %conv) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv
  %key_len = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv, i32 1
  %10 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %key_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.ath6kl_cfg80211_set_default_key, i32 noundef %conv) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %def_txkey_index = getelementptr i8, ptr %ndev, i32 3378
  %12 = ptrtoint ptr %def_txkey_index to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %key_index, ptr %def_txkey_index, align 2
  %prwise_crypto = getelementptr i8, ptr %ndev, i32 3374
  %13 = ptrtoint ptr %prwise_crypto to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %prwise_crypto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp17 = icmp eq i8 %14, 2
  %spec.select = select i1 %cmp17, i8 3, i8 1
  %conv26 = zext i8 %14 to i32
  %spec.select71 = select i1 %unicast, i32 %conv26, i32 1
  br i1 %multicast, label %if.then29, label %if.end11.if.end31_crit_edge

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then29:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %grp_crypto = getelementptr i8, ptr %ndev, i32 3376
  %15 = ptrtoint ptr %grp_crypto to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %grp_crypto, align 8
  %conv30 = zext i8 %16 to i32
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end11.if.end31_crit_edge
  %key_type.1 = phi i32 [ %conv30, %if.then29 ], [ %spec.select71, %if.end11.if.end31_crit_edge ]
  %next_mode = getelementptr i8, ptr %ndev, i32 3379
  %17 = ptrtoint ptr %next_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %next_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %18)
  %cmp33 = icmp eq i8 %18, 16
  br i1 %cmp33, label %land.lhs.true, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end31
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %and1.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool36.not = icmp eq i32 %and1.i, 0
  br i1 %tobool36.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %if.end31.if.end38_crit_edge
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %ndev, i32 3328
  %23 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fw_vif_idx, align 8
  %25 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %key_len, align 4
  %seq = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv, i32 2
  %seq_len = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv, i32 3
  %27 = ptrtoint ptr %seq_len to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %seq_len, align 1
  %conv41 = zext i8 %28 to i32
  %call44 = tail call i32 @ath6kl_wmi_addkey_cmd(ptr noundef %22, i8 noundef zeroext %24, i8 noundef zeroext %key_index, i32 noundef %key_type.1, i8 noundef zeroext %spec.select, i8 noundef zeroext %26, ptr noundef %seq, i32 noundef %conv41, ptr noundef %arrayidx, i8 noundef zeroext 3, ptr noundef null, i32 noundef 3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %land.lhs.true.cleanup_crit_edge, %if.then9, %if.then6, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ -2, %if.then6 ], [ %call44, %if.end38 ], [ -22, %if.then9 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_start_ap(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %p = alloca %struct.wmi_connect_cmd, align 1
  %rsn_capab = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %p) #12
  %2 = call ptr @memset(ptr %p, i32 255, i32 53)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rsn_capab) #12
  %3 = ptrtoint ptr %rsn_capab to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %rsn_capab, align 2
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.ath6kl_start_ap) #12
  %4 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %5, i32 0, i32 75
  %6 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flag.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr i8, ptr %dev, i32 3332
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %11 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i = icmp eq i32 %11, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %next_mode = getelementptr i8, ptr %dev, i32 3379
  %12 = ptrtoint ptr %next_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %next_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %13)
  %cmp.not = icmp eq i8 %13, 16
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %beacon = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 1
  %call6 = tail call fastcc i32 @ath6kl_set_ies(ptr noundef %add.ptr.i, ptr noundef %beacon)
  %ap_mode_bkey = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 51
  %14 = ptrtoint ptr %ap_mode_bkey to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ap_mode_bkey, align 4
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %dev, i32 3328
  %17 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fw_vif_idx, align 8
  %beacon_interval = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %beacon_interval, align 4
  %call7 = tail call i32 @ath6kl_wmi_ap_set_beacon_intvl_cmd(ptr noundef %16, i8 noundef zeroext %18, i32 noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.81, i32 noundef %call7) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %21 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wmi, align 4
  %23 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fw_vif_idx, align 8
  %dtim_period = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 3
  %25 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dtim_period, align 4
  %call12 = tail call i32 @ath6kl_wmi_ap_set_dtim_cmd(ptr noundef %22, i8 noundef zeroext %24, i32 noundef %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end9.if.end15_crit_edge, label %if.then14

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.82, i32 noundef %call12) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end9.if.end15_crit_edge
  %27 = ptrtoint ptr %beacon to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %beacon, align 4
  %cmp17 = icmp eq ptr %28, null
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %28, i32 0, i32 6, i32 1, i32 2
  %head_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 1, i32 10
  %29 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %head_len, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 %30
  %cmp26 = icmp ugt ptr %variable, %add.ptr
  br i1 %cmp26, label %if.end20.cleanup_crit_edge, label %if.end29

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %ssid = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 4
  %31 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ssid, align 4
  %cmp30 = icmp eq ptr %32, null
  br i1 %cmp30, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %ssid34 = getelementptr i8, ptr %dev, i32 3340
  %ssid_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 5
  %33 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ssid_len, align 4
  %35 = call ptr @memcpy(ptr %ssid34, ptr %32, i32 %34)
  %36 = load i32, ptr %ssid_len, align 4
  %ssid_len38 = getelementptr i8, ptr %dev, i32 3336
  %37 = ptrtoint ptr %ssid_len38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ssid_len38, align 8
  %hidden_ssid = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 6
  %38 = ptrtoint ptr %hidden_ssid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hidden_ssid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp39.not = icmp ne i32 %39, 0
  %40 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wmi, align 4
  %42 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %fw_vif_idx, align 8
  %call46 = tail call i32 @ath6kl_wmi_ap_hidden_ssid(ptr noundef %41, i8 noundef zeroext %43, i1 noundef zeroext %cmp39.not) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end49:                                         ; preds = %if.end33
  %auth_type = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 9
  %44 = ptrtoint ptr %auth_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %auth_type, align 4
  %call50 = tail call fastcc i32 @ath6kl_set_auth_type(ptr noundef %add.ptr.i, i32 noundef %45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %46 = call ptr @memset(ptr %p, i32 0, i32 53)
  %crypto = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 7
  %n_akm_suites = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 7, i32 4
  %47 = ptrtoint ptr %n_akm_suites to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_akm_suites, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp54342 = icmp sgt i32 %48, 0
  br i1 %cmp54342, label %for.body.lr.ph, label %if.end53.for.end_crit_edge

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end53
  %auth_mode79 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 2
  %49 = ptrtoint ptr %auth_mode79 to i32
  call void @__asan_load1_noabort(i32 %49)
  %auth_mode79.promoted = load i8, ptr %auth_mode79, align 1
  %auth_mode79.promoted354 = load i8, ptr %auth_mode79, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.ph348.sink355 = phi i8 [ %auth_mode79.promoted354, %for.body.lr.ph ], [ %.ph348.sink356, %for.inc.for.body_crit_edge ]
  %50 = phi i8 [ %auth_mode79.promoted, %for.body.lr.ph ], [ %76, %for.inc.for.body_crit_edge ]
  %i.0343 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 7, i32 5, i32 %i.0343
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %52, label %for.body.for.inc_crit_edge [
    i32 1027073, label %sw.bb
    i32 1027074, label %sw.bb73
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %54 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %crypto, align 4
  %56 = trunc i32 %55 to i8
  %57 = shl i8 %56, 1
  %58 = and i8 %57, 2
  %59 = or i8 %58, %50
  %60 = trunc i32 %55 to i8
  %61 = shl i8 %60, 1
  %62 = and i8 %61, 4
  %63 = or i8 %62, %59
  %64 = and i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %.not353 = icmp eq i32 %64, 0
  br i1 %.not353, label %sw.bb.for.inc_crit_edge, label %sw.bb.for.inc.sink.split_crit_edge

sw.bb.for.inc.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

sw.bb73:                                          ; preds = %for.body
  %65 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %crypto, align 4
  %67 = trunc i32 %66 to i8
  %68 = shl i8 %67, 3
  %69 = and i8 %68, 8
  %70 = or i8 %69, %50
  %71 = trunc i32 %66 to i8
  %72 = shl i8 %71, 3
  %73 = and i8 %72, 16
  %74 = or i8 %73, %70
  %75 = and i32 %66, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %.not = icmp eq i32 %75, 0
  br i1 %.not, label %sw.bb73.for.inc_crit_edge, label %sw.bb73.for.inc.sink.split_crit_edge

sw.bb73.for.inc.sink.split_crit_edge:             ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

sw.bb73.for.inc_crit_edge:                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc.sink.split:                               ; preds = %sw.bb73.for.inc.sink.split_crit_edge, %sw.bb.for.inc.sink.split_crit_edge
  %.ph348.sink = phi i8 [ %63, %sw.bb.for.inc.sink.split_crit_edge ], [ %74, %sw.bb73.for.inc.sink.split_crit_edge ]
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %sw.bb73.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %.ph348.sink356 = phi i8 [ %.ph348.sink355, %for.body.for.inc_crit_edge ], [ %.ph348.sink355, %sw.bb.for.inc_crit_edge ], [ %.ph348.sink355, %sw.bb73.for.inc_crit_edge ], [ %.ph348.sink, %for.inc.sink.split ]
  %76 = phi i8 [ %50, %for.body.for.inc_crit_edge ], [ %63, %sw.bb.for.inc_crit_edge ], [ %74, %sw.bb73.for.inc_crit_edge ], [ %.ph348.sink, %for.inc.sink.split ]
  %inc = add nuw nsw i32 %i.0343, 1
  %exitcond.not = icmp eq i32 %inc, %48
  br i1 %exitcond.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %auth_mode79 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %.ph348.sink356, ptr %auth_mode79, align 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end53.for.end_crit_edge
  %auth_mode94 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 2
  %78 = ptrtoint ptr %auth_mode94 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %auth_mode94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp96 = icmp eq i8 %79, 0
  br i1 %cmp96, label %if.then98, label %for.end.if.end100_crit_edge

for.end.if.end100_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then98:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %auth_mode94 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %auth_mode94, align 1
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %for.end.if.end100_crit_edge
  %81 = ptrtoint ptr %auth_mode94 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %auth_mode94, align 1
  %auth_mode102 = getelementptr i8, ptr %dev, i32 3373
  %83 = ptrtoint ptr %auth_mode102 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %auth_mode102, align 1
  %n_ciphers_pairwise = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 7, i32 2
  %84 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %n_ciphers_pairwise, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp105344 = icmp sgt i32 %85, 0
  br i1 %cmp105344, label %for.body107.lr.ph, label %if.end100.for.end132_crit_edge

if.end100.for.end132_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end132

for.body107.lr.ph:                                ; preds = %if.end100
  %prwise_crypto_type125 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 3
  %86 = ptrtoint ptr %prwise_crypto_type125 to i32
  call void @__asan_load1_noabort(i32 %86)
  %prwise_crypto_type125.promoted = load i8, ptr %prwise_crypto_type125, align 1
  %prwise_crypto_type125.promoted357 = load i8, ptr %prwise_crypto_type125, align 1
  br label %for.body107

for.body107:                                      ; preds = %for.inc130.for.body107_crit_edge, %for.body107.lr.ph
  %87 = phi i8 [ %prwise_crypto_type125.promoted357, %for.body107.lr.ph ], [ %93, %for.inc130.for.body107_crit_edge ]
  %88 = phi i8 [ %prwise_crypto_type125.promoted, %for.body107.lr.ph ], [ %94, %for.inc130.for.body107_crit_edge ]
  %i.1345 = phi i32 [ 0, %for.body107.lr.ph ], [ %inc131, %for.inc130.for.body107_crit_edge ]
  %arrayidx109 = getelementptr %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 7, i32 3, i32 %i.1345
  %89 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx109, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %90, label %for.body107.for.inc130_crit_edge [
    i32 1027073, label %for.body107.for.inc130.sink.split_crit_edge
    i32 1027077, label %for.body107.for.inc130.sink.split_crit_edge358
    i32 1027074, label %sw.bb114
    i32 1027076, label %sw.bb119
    i32 1339905, label %sw.bb124
  ]

for.body107.for.inc130.sink.split_crit_edge358:   ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc130.sink.split

for.body107.for.inc130.sink.split_crit_edge:      ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc130.sink.split

for.body107.for.inc130_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc130

sw.bb114:                                         ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc130.sink.split

sw.bb119:                                         ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc130.sink.split

sw.bb124:                                         ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc130.sink.split

for.inc130.sink.split:                            ; preds = %sw.bb124, %sw.bb119, %sw.bb114, %for.body107.for.inc130.sink.split_crit_edge, %for.body107.for.inc130.sink.split_crit_edge358
  %.sink = phi i8 [ 16, %sw.bb124 ], [ 8, %sw.bb119 ], [ 4, %sw.bb114 ], [ 2, %for.body107.for.inc130.sink.split_crit_edge ], [ 2, %for.body107.for.inc130.sink.split_crit_edge358 ]
  %92 = or i8 %88, %.sink
  br label %for.inc130

for.inc130:                                       ; preds = %for.inc130.sink.split, %for.body107.for.inc130_crit_edge
  %93 = phi i8 [ %87, %for.body107.for.inc130_crit_edge ], [ %92, %for.inc130.sink.split ]
  %94 = phi i8 [ %88, %for.body107.for.inc130_crit_edge ], [ %92, %for.inc130.sink.split ]
  %inc131 = add nuw nsw i32 %i.1345, 1
  %exitcond346.not = icmp eq i32 %inc131, %85
  br i1 %exitcond346.not, label %for.end132.loopexit, label %for.inc130.for.body107_crit_edge

for.inc130.for.body107_crit_edge:                 ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body107

for.end132.loopexit:                              ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %prwise_crypto_type125 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %93, ptr %prwise_crypto_type125, align 1
  br label %for.end132

for.end132:                                       ; preds = %for.end132.loopexit, %if.end100.for.end132_crit_edge
  %prwise_crypto_type133 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 3
  %96 = ptrtoint ptr %prwise_crypto_type133 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %prwise_crypto_type133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp135 = icmp eq i8 %97, 0
  br i1 %cmp135, label %if.then137, label %if.else

if.then137:                                       ; preds = %for.end132
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %prwise_crypto_type133 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %prwise_crypto_type133, align 1
  %prwise_crypto.i = getelementptr i8, ptr %dev, i32 3374
  %prwise_crypto_len.i = getelementptr i8, ptr %dev, i32 3375
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.ath6kl_set_cipher, i32 noundef 0, i32 noundef 1) #12
  %99 = ptrtoint ptr %prwise_crypto.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %prwise_crypto.i, align 1
  %100 = ptrtoint ptr %prwise_crypto_len.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %prwise_crypto_len.i, align 1
  br label %if.end150

if.else:                                          ; preds = %for.end132
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp142 = icmp eq i32 %85, 1
  br i1 %cmp142, label %if.then144, label %if.else.if.end150_crit_edge

if.else.if.end150_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

if.then144:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %ciphers_pairwise146 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 7, i32 3
  %101 = ptrtoint ptr %ciphers_pairwise146 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ciphers_pairwise146, align 4
  tail call fastcc void @ath6kl_set_cipher(ptr noundef %add.ptr.i, i32 noundef %102, i1 noundef zeroext true)
  br label %if.end150

if.end150:                                        ; preds = %if.then144, %if.else.if.end150_crit_edge, %if.then137
  %cipher_group = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 7, i32 1
  %103 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cipher_group, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %104, label %sw.default [
    i32 1027073, label %if.end150.sw.epilog160_crit_edge
    i32 1027077, label %if.end150.sw.epilog160_crit_edge359
    i32 1027074, label %sw.bb153
    i32 1027076, label %sw.bb155
    i32 1339905, label %sw.bb157
  ]

if.end150.sw.epilog160_crit_edge359:              ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog160

if.end150.sw.epilog160_crit_edge:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog160

sw.bb153:                                         ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog160

sw.bb155:                                         ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog160

sw.bb157:                                         ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog160

sw.default:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog160

sw.epilog160:                                     ; preds = %sw.default, %sw.bb157, %sw.bb155, %sw.bb153, %if.end150.sw.epilog160_crit_edge, %if.end150.sw.epilog160_crit_edge359
  %.sink352 = phi i8 [ 1, %sw.default ], [ 16, %sw.bb157 ], [ 8, %sw.bb155 ], [ 4, %sw.bb153 ], [ 2, %if.end150.sw.epilog160_crit_edge ], [ 2, %if.end150.sw.epilog160_crit_edge359 ]
  %grp_crypto_type159 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 5
  %106 = ptrtoint ptr %grp_crypto_type159 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %.sink352, ptr %grp_crypto_type159, align 1
  tail call fastcc void @ath6kl_set_cipher(ptr noundef %add.ptr.i, i32 noundef %104, i1 noundef zeroext false)
  %107 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 16, ptr %p, align 1
  %108 = ptrtoint ptr %next_mode to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %next_mode, align 1
  %nw_type165 = getelementptr i8, ptr %dev, i32 3380
  %110 = ptrtoint ptr %nw_type165 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %nw_type165, align 4
  %111 = ptrtoint ptr %ssid_len38 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ssid_len38, align 8
  %conv167 = trunc i32 %112 to i8
  %ssid_len168 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 7
  %113 = ptrtoint ptr %ssid_len168 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv167, ptr %ssid_len168, align 1
  %ssid169 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 8
  %114 = call ptr @memcpy(ptr %ssid169, ptr %ssid34, i32 %112)
  %dot11_auth_mode = getelementptr i8, ptr %dev, i32 3372
  %115 = ptrtoint ptr %dot11_auth_mode to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %dot11_auth_mode, align 4
  %dot11_auth_mode174 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 1
  %117 = ptrtoint ptr %dot11_auth_mode174 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %dot11_auth_mode174, align 1
  %118 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %info, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %center_freq, align 4
  %conv175 = trunc i32 %121 to i16
  %122 = tail call i16 @llvm.bswap.i16(i16 %conv175)
  %ch = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 9
  %123 = ptrtoint ptr %ch to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 %122, ptr %ch, align 1
  %124 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wmi, align 4
  %126 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %fw_vif_idx, align 8
  %call178 = tail call i32 @ath6kl_wmi_ap_set_apsd(ptr noundef %125, i8 noundef zeroext %127, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %sw.epilog160.cleanup_crit_edge, label %if.end182

sw.epilog160.cleanup_crit_edge:                   ; preds = %sw.epilog160
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end182:                                        ; preds = %sw.epilog160
  %iftype = getelementptr i8, ptr %dev, i32 2316
  %128 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %129)
  %cmp183 = icmp eq i32 %129, 9
  %spec.select = select i1 %cmp183, i8 4, i8 0
  %130 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 12
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %spec.select, ptr %130, align 1
  %inactivity_timeout189 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 11
  %132 = ptrtoint ptr %inactivity_timeout189 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %inactivity_timeout189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool190.not = icmp eq i32 %133, 0
  br i1 %tobool190.not, label %if.end182.if.end205_crit_edge, label %if.then191

if.end182.if.end205_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

if.then191:                                       ; preds = %if.end182
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 87
  %134 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %fw_capabilities, align 4
  %136 = and i32 %135, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool195.not = icmp eq i32 %136, 0
  %sub = add i32 %133, 59
  %div = sdiv i32 %sub, 60
  %inactivity_timeout.0 = select i1 %tobool195.not, i32 %133, i32 %div
  %137 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wmi, align 4
  %139 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %fw_vif_idx, align 8
  %call200 = tail call i32 @ath6kl_wmi_set_inact_period(ptr noundef %138, i8 noundef zeroext %140, i32 noundef %inactivity_timeout.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %cmp201 = icmp slt i32 %call200, 0
  br i1 %cmp201, label %if.then191.cleanup_crit_edge, label %if.then191.if.end205_crit_edge

if.then191.if.end205_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

if.then191.cleanup_crit_edge:                     ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end205:                                        ; preds = %if.then191.if.end205_crit_edge, %if.end182.if.end205_crit_edge
  %141 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %info, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 4
  %call209 = tail call fastcc i32 @cfg80211_get_chandef_type(ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %cmp210 = icmp ne i32 %call209, 0
  %call212 = tail call fastcc i32 @ath6kl_set_htcap(ptr noundef %add.ptr.i, i32 noundef %144, i1 noundef zeroext %cmp210)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %if.end215, label %if.end205.cleanup_crit_edge

if.end205.cleanup_crit_edge:                      ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end215:                                        ; preds = %if.end205
  %call217 = call fastcc i32 @ath6kl_get_rsn_capab(ptr noundef %beacon, ptr noundef nonnull %rsn_capab)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %land.lhs.true, label %if.end215.if.end232_crit_edge

if.end215.if.end232_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232

land.lhs.true:                                    ; preds = %if.end215
  %fw_capabilities219 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 87
  %145 = ptrtoint ptr %fw_capabilities219 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %fw_capabilities219, align 4
  %147 = and i32 %146, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool222.not = icmp eq i32 %147, 0
  br i1 %tobool222.not, label %land.lhs.true.if.end232_crit_edge, label %if.then223

land.lhs.true.if.end232_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232

if.then223:                                       ; preds = %land.lhs.true
  %148 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %wmi, align 4
  %150 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %fw_vif_idx, align 8
  %call226 = call i32 @ath6kl_wmi_set_ie_cmd(ptr noundef %149, i8 noundef zeroext %151, i8 noundef zeroext 48, i8 noundef zeroext 1, ptr noundef nonnull %rsn_capab, i8 noundef zeroext 2) #12
  %152 = ptrtoint ptr %rsn_capab to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %rsn_capab, align 2
  %rsn_capab227 = getelementptr i8, ptr %dev, i32 4470
  %154 = ptrtoint ptr %rsn_capab227 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %rsn_capab227, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %cmp228 = icmp slt i32 %call226, 0
  br i1 %cmp228, label %if.then223.cleanup_crit_edge, label %if.then223.if.end232_crit_edge

if.then223.if.end232_crit_edge:                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232

if.then223.cleanup_crit_edge:                     ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end232:                                        ; preds = %if.then223.if.end232_crit_edge, %land.lhs.true.if.end232_crit_edge, %if.end215.if.end232_crit_edge
  %profile = getelementptr i8, ptr %dev, i32 4416
  %155 = call ptr @memcpy(ptr %profile, ptr %p, i32 53)
  %156 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %wmi, align 4
  %158 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %fw_vif_idx, align 8
  %call235 = call i32 @ath6kl_wmi_ap_profile_commit(ptr noundef %157, i8 noundef zeroext %159, ptr noundef nonnull %p) #12
  %160 = call i32 @llvm.smin.i32(i32 %call235, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end232, %if.then223.cleanup_crit_edge, %if.end205.cleanup_crit_edge, %if.then191.cleanup_crit_edge, %sw.epilog160.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ], [ %call46, %if.end33.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ %call178, %sw.epilog160.cleanup_crit_edge ], [ %call200, %if.then191.cleanup_crit_edge ], [ -5, %if.end205.cleanup_crit_edge ], [ %call226, %if.then223.cleanup_crit_edge ], [ %160, %if.end232 ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rsn_capab) #12
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %p) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_change_beacon(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr nocapture noundef readonly %beacon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ar1.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr i8, ptr %dev, i32 3332
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %next_mode = getelementptr i8, ptr %dev, i32 3379
  %8 = ptrtoint ptr %next_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %next_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %9)
  %cmp.not = icmp eq i8 %9, 16
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call fastcc i32 @ath6kl_set_ies(ptr noundef %add.ptr.i, ptr noundef %beacon)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -95, %if.end.cleanup_crit_edge ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_stop_ap(ptr nocapture noundef readnone %wiphy, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %nw_type = getelementptr i8, ptr %dev, i32 3380
  %2 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp.not = icmp eq i8 %3, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %dev, i32 3332
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %dev, i32 3328
  %8 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw_vif_idx, align 8
  %call6 = tail call i32 @ath6kl_wmi_disconnect_cmd(ptr noundef %7, i8 noundef zeroext %9) #12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #12
  %ndev = getelementptr i8, ptr %dev, i32 3276
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 4
  tail call void @netif_carrier_off(ptr noundef %11) #12
  %12 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ar.i, align 8
  %wiphy1.i = getelementptr inbounds %struct.ath6kl, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5
  %band.020.i = phi i32 [ 0, %if.end5 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.wiphy, ptr %15, i32 0, i32 53, i32 %band.020.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %17, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ht_supported.i, align 2, !range !347
  %arrayidx.i.i = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 25, i32 %band.020.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i, align 2, !range !347
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %19)
  %cmp.i.i = icmp eq i8 %21, %19
  br i1 %cmp.i.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not.i = icmp eq i8 %19, 0
  br i1 %tobool4.not.i, label %if.else.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band.020.i)
  %cmp9.i.i = icmp eq i32 %band.020.i, 0
  %conv11.i.i = select i1 %cmp9.i.i, i16 32, i16 98
  %cap_info.i.i = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 25, i32 %band.020.i, i32 2
  %23 = ptrtoint ptr %cap_info.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv11.i.i, ptr %cap_info.i.i, align 2
  %ampdu_factor.i.i = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 25, i32 %band.020.i, i32 1
  %24 = ptrtoint ptr %ampdu_factor.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %ampdu_factor.i.i, align 1
  br label %ath6kl_set_htcap.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %arrayidx.i.i, align 2
  br label %ath6kl_set_htcap.exit.i

ath6kl_set_htcap.exit.i:                          ; preds = %if.else.i.i, %if.then7.i.i
  %26 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ar.i, align 8
  %wmi.i.i = getelementptr inbounds %struct.ath6kl, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wmi.i.i, align 4
  %30 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fw_vif_idx, align 8
  %call.i.i = tail call i32 @ath6kl_wmi_set_htcap_cmd(ptr noundef %29, i8 noundef zeroext %31, i32 noundef %band.020.i, ptr noundef %arrayidx.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %ath6kl_set_htcap.exit.i.for.inc.i_crit_edge, label %ath6kl_set_htcap.exit.i.cleanup_crit_edge

ath6kl_set_htcap.exit.i.cleanup_crit_edge:        ; preds = %ath6kl_set_htcap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ath6kl_set_htcap.exit.i.for.inc.i_crit_edge:      ; preds = %ath6kl_set_htcap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %ath6kl_set_htcap.exit.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %band.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %ath6kl_set_htcap.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -107, %if.end.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ], [ %call.i.i, %ath6kl_set_htcap.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_del_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, ptr @bcast_addr, ptr %3
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %dev, i32 3328
  %6 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_vif_idx, align 8
  %call3 = tail call i32 @ath6kl_wmi_ap_set_mlme(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext 3, ptr noundef nonnull %spec.select, i16 noundef zeroext 2) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_change_station(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %mac, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %nw_type = getelementptr i8, ptr %dev, i32 3380
  %2 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp.not = icmp eq i8 %3, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @cfg80211_check_station_change(ptr noundef %wiphy, ptr noundef %params, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sta_flags_set = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %sta_flags_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sta_flags_set, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %wmi10 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %wmi10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wmi10, align 4
  %fw_vif_idx11 = getelementptr i8, ptr %dev, i32 3328
  %8 = ptrtoint ptr %fw_vif_idx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw_vif_idx11, align 8
  %. = select i1 %tobool6.not, i8 5, i8 4
  %call12 = tail call i32 @ath6kl_wmi_ap_set_mlme(ptr noundef %7, i8 noundef zeroext %9, i8 noundef zeroext %., ptr noundef %mac, i16 noundef zeroext 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call12, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_get_station(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr nocapture noundef readonly %mac, ptr noundef %sinfo) #0 align 64 {
entry:
  %sgi = alloca i8, align 1
  %mcs = alloca i8, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sgi) #12
  %2 = ptrtoint ptr %sgi to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %sgi, align 1, !annotation !350
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mcs) #12
  %3 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %mcs, align 1, !annotation !350
  %bssid = getelementptr i8, ptr %dev, i32 3381
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac, ptr noundef dereferenceable(6) %bssid, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup166_crit_edge

entry.cleanup166_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup166

if.end:                                           ; preds = %entry
  %sem = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 22
  %call3 = tail call i32 @down_interruptible(ptr noundef %sem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup166_crit_edge

if.end.cleanup166_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup166

if.end5:                                          ; preds = %if.end
  %flags = getelementptr i8, ptr %dev, i32 3332
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #12
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %dev, i32 3328
  %6 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_vif_idx, align 8
  %call6 = tail call i32 @ath6kl_wmi_get_stats_cmd(ptr noundef %5, i8 noundef zeroext %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up(ptr noundef %sem) #12
  br label %cleanup166

if.end10:                                         ; preds = %if.end5
  tail call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 1803) #12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not = icmp eq i32 %10, 0
  br i1 %tobool16.not, label %if.else.thread, label %if.then25

if.else.thread:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up(ptr noundef %sem) #12
  br label %if.end63

if.then25:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %event_wq = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 72
  %call27264 = call i32 @prepare_to_wait_event(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool31.not265 = icmp eq i32 %14, 0
  br i1 %tobool31.not265, label %if.then25.if.end55_crit_edge, label %if.then25.if.end48_crit_edge

if.then25.if.end48_crit_edge:                     ; preds = %if.then25
  br label %if.end48

if.then25.if.end55_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end48:                                         ; preds = %cleanup.if.end48_crit_edge, %if.then25.if.end48_crit_edge
  %__ret26.1267 = phi i32 [ %__ret26.1, %cleanup.if.end48_crit_edge ], [ 200, %if.then25.if.end48_crit_edge ]
  %call27266 = phi i32 [ %call27, %cleanup.if.end48_crit_edge ], [ %call27264, %if.then25.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27266)
  %tobool49.not = icmp eq i32 %call27266, 0
  br i1 %tobool49.not, label %cleanup, label %if.end55.thread253

if.end55.thread253:                               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  call void @up(ptr noundef %sem) #12
  br label %if.else

cleanup:                                          ; preds = %if.end48
  %call52 = call i32 @schedule_timeout(i32 noundef %__ret26.1267) #12
  %call27 = call i32 @prepare_to_wait_event(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool31.not = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool36.not = icmp eq i32 %call52, 0
  %18 = select i1 %tobool31.not, i1 %tobool36.not, i1 false
  %__ret26.1 = select i1 %18, i32 1, i32 %call52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret26.1)
  %tobool42.not = icmp eq i32 %__ret26.1, 0
  %19 = select i1 %tobool31.not, i1 true, i1 %tobool42.not
  br i1 %19, label %cleanup.if.end55_crit_edge, label %cleanup.if.end48_crit_edge

cleanup.if.end48_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

cleanup.if.end55_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end55:                                         ; preds = %cleanup.if.end55_crit_edge, %if.then25.if.end55_crit_edge
  %__ret26.1.lcssa = phi i32 [ 200, %if.then25.if.end55_crit_edge ], [ %__ret26.1, %cleanup.if.end55_crit_edge ]
  call void @finish_wait(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  call void @up(ptr noundef %sem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret26.1.lcssa)
  %cmp58 = icmp eq i32 %__ret26.1.lcssa, 0
  br i1 %cmp58, label %if.end55.cleanup166_crit_edge, label %if.end55.if.else_crit_edge

if.end55.if.else_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end55.cleanup166_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup166

if.else:                                          ; preds = %if.end55.if.else_crit_edge, %if.end55.thread253
  %__ret.1252 = phi i32 [ %__ret26.1.lcssa, %if.end55.if.else_crit_edge ], [ %call27266, %if.end55.thread253 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1252)
  %cmp60 = icmp slt i32 %__ret.1252, 0
  br i1 %cmp60, label %if.else.cleanup166_crit_edge, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.else.cleanup166_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup166

if.end63:                                         ; preds = %if.else.if.end63_crit_edge, %if.else.thread
  %target_stats = getelementptr i8, ptr %dev, i32 4024
  %rx_byte = getelementptr i8, ptr %dev, i32 4176
  %20 = ptrtoint ptr %rx_byte to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_byte, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool64.not = icmp eq i64 %21, 0
  br i1 %tobool64.not, label %if.end63.if.end71_crit_edge, label %if.then65

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %rx_bytes = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 4
  %22 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %rx_bytes, align 8
  %23 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sinfo, align 8
  %or = or i64 %24, 8388608
  store i64 %or, ptr %sinfo, align 8
  %rx_pkt = getelementptr i8, ptr %dev, i32 4168
  %25 = ptrtoint ptr %rx_pkt to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %rx_pkt, align 8
  %conv = trunc i64 %26 to i32
  %rx_packets = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 16
  %27 = ptrtoint ptr %rx_packets to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %rx_packets, align 4
  %or70 = or i64 %24, 8389120
  store i64 %or70, ptr %sinfo, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %if.end63.if.end71_crit_edge
  %tx_byte = getelementptr i8, ptr %dev, i32 4032
  %28 = ptrtoint ptr %tx_byte to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tx_byte, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool73.not = icmp eq i64 %29, 0
  br i1 %tobool73.not, label %if.end71.if.end83_crit_edge, label %if.then74

if.end71.if.end83_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %tx_bytes = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 5
  %30 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %tx_bytes, align 8
  %31 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %sinfo, align 8
  %or78 = or i64 %32, 16777216
  store i64 %or78, ptr %sinfo, align 8
  %33 = ptrtoint ptr %target_stats to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %target_stats, align 8
  %conv80 = trunc i64 %34 to i32
  %tx_packets = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 17
  %35 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv80, ptr %tx_packets, align 8
  %or82 = or i64 %32, 16778240
  store i64 %or82, ptr %sinfo, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then74, %if.end71.if.end83_crit_edge
  %cs_rssi = getelementptr i8, ptr %dev, i32 4388
  %36 = ptrtoint ptr %cs_rssi to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %cs_rssi, align 4
  %conv85 = trunc i16 %37 to i8
  %signal = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %38 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv85, ptr %signal, align 1
  %39 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %sinfo, align 8
  %or87 = or i64 %40, 128
  store i64 %or87, ptr %sinfo, align 8
  %tx_ucast_rate = getelementptr i8, ptr %dev, i32 4368
  %41 = ptrtoint ptr %tx_ucast_rate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_ucast_rate, align 8
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %42, label %if.else92 [
    i32 1000, label %if.end83.if.then90_crit_edge
    i32 2000, label %if.end83.if.then90_crit_edge279
    i32 5500, label %if.end83.if.then90_crit_edge280
    i32 11000, label %if.end83.if.then90_crit_edge281
    i32 6000, label %if.end83.if.then90_crit_edge282
    i32 9000, label %if.end83.if.then90_crit_edge283
    i32 12000, label %if.end83.if.then90_crit_edge284
    i32 18000, label %if.end83.if.then90_crit_edge285
    i32 24000, label %if.end83.if.then90_crit_edge286
    i32 36000, label %if.end83.if.then90_crit_edge287
    i32 48000, label %if.end83.if.then90_crit_edge288
    i32 54000, label %if.end83.if.then90_crit_edge289
  ]

if.end83.if.then90_crit_edge289:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.end83.if.then90_crit_edge288:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.end83.if.then90_crit_edge287:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.end83.if.then90_crit_edge286:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.end83.if.then90_crit_edge285:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.end83.if.then90_crit_edge284:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.end83.if.then90_crit_edge283:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.end83.if.then90_crit_edge282:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.end83.if.then90_crit_edge281:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.end83.if.then90_crit_edge280:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.end83.if.then90_crit_edge279:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.end83.if.then90_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.then90:                                        ; preds = %if.end83.if.then90_crit_edge, %if.end83.if.then90_crit_edge279, %if.end83.if.then90_crit_edge280, %if.end83.if.then90_crit_edge281, %if.end83.if.then90_crit_edge282, %if.end83.if.then90_crit_edge283, %if.end83.if.then90_crit_edge284, %if.end83.if.then90_crit_edge285, %if.end83.if.then90_crit_edge286, %if.end83.if.then90_crit_edge287, %if.end83.if.then90_crit_edge288, %if.end83.if.then90_crit_edge289
  %div259.lhs.trunc = trunc i32 %42 to i16
  %div259260 = udiv i16 %div259.lhs.trunc, 100
  %legacy = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %44 = ptrtoint ptr %legacy to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %div259260, ptr %legacy, align 2
  br label %if.end145

if.else92:                                        ; preds = %if.end83
  %call93 = call fastcc zeroext i1 @is_rate_ht20(i32 noundef %42, ptr noundef nonnull %mcs, ptr noundef nonnull %sgi)
  br i1 %call93, label %if.then94, label %if.else116

if.then94:                                        ; preds = %if.else92
  %45 = ptrtoint ptr %sgi to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sgi, align 1, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool95.not = icmp eq i8 %46, 0
  br i1 %tobool95.not, label %if.else106, label %if.then96

if.then96:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  %txrate97 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  %47 = ptrtoint ptr %txrate97 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %txrate97, align 8
  %49 = or i8 %48, 4
  store i8 %49, ptr %txrate97, align 8
  %50 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mcs, align 1
  %sub = add i8 %51, -1
  br label %if.end109

if.else106:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %mcs, align 1
  br label %if.end109

if.end109:                                        ; preds = %if.else106, %if.then96
  %sub.sink = phi i8 [ %53, %if.else106 ], [ %sub, %if.then96 ]
  %54 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %sub.sink, ptr %54, align 1
  %txrate110 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  %56 = ptrtoint ptr %txrate110 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %txrate110, align 8
  %58 = or i8 %57, 1
  store i8 %58, ptr %txrate110, align 8
  %bw = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 4
  %59 = ptrtoint ptr %bw to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %bw, align 1
  br label %if.end145

if.else116:                                       ; preds = %if.else92
  %call117 = call fastcc zeroext i1 @is_rate_ht40(i32 noundef %42, ptr noundef nonnull %mcs, ptr noundef nonnull %sgi)
  br i1 %call117, label %if.then118, label %if.else142

if.then118:                                       ; preds = %if.else116
  %60 = ptrtoint ptr %sgi to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %sgi, align 1, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool119.not = icmp eq i8 %61, 0
  br i1 %tobool119.not, label %if.else131, label %if.then120

if.then120:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  %txrate121 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  %62 = ptrtoint ptr %txrate121 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %txrate121, align 8
  %64 = or i8 %63, 4
  store i8 %64, ptr %txrate121, align 8
  %65 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %mcs, align 1
  %sub127 = add i8 %66, -1
  br label %if.end134

if.else131:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %mcs, align 1
  br label %if.end134

if.end134:                                        ; preds = %if.else131, %if.then120
  %sub127.sink = phi i8 [ %68, %if.else131 ], [ %sub127, %if.then120 ]
  %69 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %sub127.sink, ptr %69, align 1
  %txrate135 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  %bw136 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 4
  %71 = ptrtoint ptr %bw136 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 3, ptr %bw136, align 1
  %72 = ptrtoint ptr %txrate135 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %txrate135, align 8
  %74 = or i8 %73, 1
  store i8 %74, ptr %txrate135, align 8
  br label %if.end145

if.else142:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.88, i32 noundef %42) #12
  call void @ath6kl_debug_war(ptr noundef %1, i32 noundef 0) #12
  br label %cleanup166

if.end145:                                        ; preds = %if.end134, %if.end109, %if.then90
  %or147 = or i64 %40, 384
  %75 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %or147, ptr %sinfo, align 8
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags, align 4
  %and1.i240 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i240)
  %tobool150.not = icmp eq i32 %and1.i240, 0
  br i1 %tobool150.not, label %if.end145.cleanup166_crit_edge, label %land.lhs.true151

if.end145.cleanup166_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup166

land.lhs.true151:                                 ; preds = %if.end145
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags, align 4
  %80 = and i32 %79, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool154.not = icmp eq i32 %80, 0
  br i1 %tobool154.not, label %land.lhs.true151.cleanup166_crit_edge, label %land.lhs.true155

land.lhs.true151.cleanup166_crit_edge:            ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup166

land.lhs.true155:                                 ; preds = %land.lhs.true151
  %nw_type = getelementptr i8, ptr %dev, i32 3380
  %81 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %cmp157 = icmp eq i8 %82, 1
  br i1 %cmp157, label %if.then159, label %land.lhs.true155.cleanup166_crit_edge

land.lhs.true155.cleanup166_crit_edge:            ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup166

if.then159:                                       ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #14
  %or161 = or i64 %40, 33152
  %83 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %or161, ptr %sinfo, align 8
  %bss_param = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 21
  %84 = ptrtoint ptr %bss_param to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %bss_param, align 8
  %assoc_bss_dtim_period = getelementptr i8, ptr %dev, i32 4018
  %85 = ptrtoint ptr %assoc_bss_dtim_period to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %assoc_bss_dtim_period, align 2
  %dtim_period = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 21, i32 1
  %87 = ptrtoint ptr %dtim_period to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %dtim_period, align 1
  %assoc_bss_beacon_int = getelementptr i8, ptr %dev, i32 4006
  %88 = ptrtoint ptr %assoc_bss_beacon_int to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %assoc_bss_beacon_int, align 2
  %beacon_interval = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 21, i32 2
  %90 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %beacon_interval, align 2
  br label %cleanup166

cleanup166:                                       ; preds = %if.then159, %land.lhs.true155.cleanup166_crit_edge, %land.lhs.true151.cleanup166_crit_edge, %if.end145.cleanup166_crit_edge, %if.else142, %if.else.cleanup166_crit_edge, %if.end55.cleanup166_crit_edge, %if.then8, %if.end.cleanup166_crit_edge, %entry.cleanup166_crit_edge
  %retval.0 = phi i32 [ -5, %if.then8 ], [ 0, %if.else142 ], [ -2, %entry.cleanup166_crit_edge ], [ -16, %if.end.cleanup166_crit_edge ], [ -110, %if.end55.cleanup166_crit_edge ], [ %__ret.1252, %if.else.cleanup166_crit_edge ], [ 0, %if.then159 ], [ 0, %land.lhs.true155.cleanup166_crit_edge ], [ 0, %land.lhs.true151.cleanup166_crit_edge ], [ 0, %if.end145.cleanup166_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mcs) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sgi) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_scan(ptr nocapture noundef readnone %wiphy, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wdev = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 10
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %ndev = getelementptr i8, ptr %1, i32 964
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %ar.i = getelementptr i8, ptr %3, i32 3280
  %4 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar.i, align 8
  %ar1.i = getelementptr i8, ptr %1, i32 968
  %6 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ar1.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %7, i32 0, i32 75
  %8 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flag.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr i8, ptr %1, i32 1020
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i, align 4
  %13 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i = icmp eq i32 %13, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %14 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ar1.i, align 8
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.ath6kl_cfg80211_sscan_disable.exit_crit_edge, label %if.end.i.i

if.end.ath6kl_cfg80211_sscan_disable.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_sscan_disable.exit

if.end.i.i:                                       ; preds = %if.end
  %sched_scan_timer.i.i = getelementptr i8, ptr %1, i32 1620
  %call2.i.i = tail call i32 @del_timer_sync(ptr noundef %sched_scan_timer.i.i) #12
  %state.i.i = getelementptr inbounds %struct.ath6kl, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 7
  br i1 %cmp.i.i, label %if.end.i.i.if.end.i103_crit_edge, label %if.end4.i.i

if.end.i.i.if.end.i103_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i103

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %wmi.i.i = getelementptr inbounds %struct.ath6kl, ptr %15, i32 0, i32 7
  %18 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wmi.i.i, align 4
  %fw_vif_idx.i.i = getelementptr i8, ptr %1, i32 1016
  %20 = ptrtoint ptr %fw_vif_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fw_vif_idx.i.i, align 8
  %call5.i.i = tail call i32 @ath6kl_wmi_enable_sched_scan_cmd(ptr noundef %19, i8 noundef zeroext %21, i1 noundef zeroext false) #12
  br label %if.end.i103

if.end.i103:                                      ; preds = %if.end4.i.i, %if.end.i.i.if.end.i103_crit_edge
  %wiphy.i = getelementptr inbounds %struct.ath6kl, ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy.i, align 4
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %23, i64 noundef 0) #12
  br label %ath6kl_cfg80211_sscan_disable.exit

ath6kl_cfg80211_sscan_disable.exit:               ; preds = %if.end.i103, %if.end.ath6kl_cfg80211_sscan_disable.exit_crit_edge
  %usr_bss_filter = getelementptr inbounds %struct.ath6kl, ptr %5, i32 0, i32 46
  %24 = ptrtoint ptr %usr_bss_filter to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %usr_bss_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.then3, label %ath6kl_cfg80211_sscan_disable.exit.if.end8_crit_edge

ath6kl_cfg80211_sscan_disable.exit.if.end8_crit_edge: ; preds = %ath6kl_cfg80211_sscan_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then3:                                         ; preds = %ath6kl_cfg80211_sscan_disable.exit
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i) #12
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %1, i32 1016
  %28 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fw_vif_idx, align 8
  %call4 = tail call i32 @ath6kl_wmi_bssfilter_cmd(ptr noundef %27, i8 noundef zeroext %29, i8 noundef zeroext 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then6

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.89) #12
  br label %cleanup

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %ath6kl_cfg80211_sscan_disable.exit.if.end8_crit_edge
  %30 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %request, align 8
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 1
  %32 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_ssids, align 4
  %call9 = tail call fastcc i32 @ath6kl_set_probed_ssids(ptr noundef %5, ptr noundef %add.ptr.i, ptr noundef %31, i32 noundef %33, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %wmi12 = getelementptr inbounds %struct.ath6kl, ptr %5, i32 0, i32 7
  %34 = ptrtoint ptr %wmi12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wmi12, align 4
  %fw_vif_idx13 = getelementptr i8, ptr %1, i32 1016
  %36 = ptrtoint ptr %fw_vif_idx13 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fw_vif_idx13, align 8
  %ie = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 4
  %38 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ie, align 8
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 5
  %40 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ie_len, align 4
  %conv = trunc i32 %41 to i8
  %call14 = tail call i32 @ath6kl_wmi_set_appie_cmd(ptr noundef %35, i8 noundef zeroext %37, i8 noundef zeroext 1, ptr noundef %39, i8 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.90) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %n_channels18 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 2
  %42 = ptrtoint ptr %n_channels18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_channels18, align 8
  %44 = add i32 %43, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %44)
  %45 = icmp ult i32 %44, 32
  br i1 %45, label %if.then24, label %if.end17.if.end41_crit_edge

if.end17.if.end41_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then24:                                        ; preds = %if.end17
  %conv26 = trunc i32 %43 to i8
  %46 = shl nuw nsw i32 %43, 1
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #15
  %cmp29 = icmp eq ptr %call8.i.i, null
  br i1 %cmp29, label %if.end32.thread, label %for.body.preheader

if.end32.thread:                                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.91) #12
  br label %if.end41

for.body.preheader:                               ; preds = %if.then24
  %wide.trip.count = and i32 %43, 255
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 22, i32 %indvars.iv
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %center_freq, align 4
  %conv38 = trunc i32 %50 to i16
  %arrayidx40 = getelementptr i16, ptr %call8.i.i, i32 %indvars.iv
  %51 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv38, ptr %arrayidx40, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.if.end41_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.end41:                                         ; preds = %for.body.if.end41_crit_edge, %if.end32.thread, %if.end17.if.end41_crit_edge
  %n_channels.1 = phi i8 [ 0, %if.end17.if.end41_crit_edge ], [ 0, %if.end32.thread ], [ %conv26, %for.body.if.end41_crit_edge ]
  %channels.0 = phi ptr [ null, %if.end17.if.end41_crit_edge ], [ null, %if.end32.thread ], [ %call8.i.i, %for.body.if.end41_crit_edge ]
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i, align 4
  %and1.i = and i32 %53, 1
  %scan_req = getelementptr i8, ptr %1, i32 1668
  %54 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %request, ptr %scan_req, align 4
  %55 = ptrtoint ptr %wmi12 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wmi12, align 4
  %57 = ptrtoint ptr %fw_vif_idx13 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %fw_vif_idx13, align 8
  %no_cck = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 18
  %59 = ptrtoint ptr %no_cck to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %no_cck, align 1, !range !347
  %61 = zext i8 %60 to i32
  %rates = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 9
  %call51 = tail call i32 @ath6kl_wmi_beginscan_cmd(ptr noundef %56, i8 noundef zeroext %58, i32 noundef 0, i32 noundef %and1.i, i32 noundef 0, i32 noundef 0, i32 noundef 50, i8 noundef signext %n_channels.1, ptr noundef %channels.0, i32 noundef %61, ptr noundef %rates) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end41.if.end55_crit_edge, label %if.then53

if.end41.if.end55_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then53:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.92, i32 noundef %call51) #12
  %62 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %scan_req, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end41.if.end55_crit_edge
  tail call void @kfree(ptr noundef %channels.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then16, %if.end8.cleanup_crit_edge, %if.then6, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ %call14, %if.then16 ], [ %call51, %if.end55 ], [ %call4, %if.then6 ], [ %call9, %if.end8.cleanup_crit_edge ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_connect(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr noundef %sme) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %p2p = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 90
  %2 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p2p, align 4, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %conv = select i1 %tobool.not, i8 0, i8 2
  %flags.i.i = getelementptr i8, ptr %dev, i32 3332
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %flags.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.ath6kl_cfg80211_sscan_disable.exit_crit_edge, label %if.end.i.i

entry.ath6kl_cfg80211_sscan_disable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_sscan_disable.exit

if.end.i.i:                                       ; preds = %entry
  %sched_scan_timer.i.i = getelementptr i8, ptr %dev, i32 3932
  %call2.i.i = tail call i32 @del_timer_sync(ptr noundef %sched_scan_timer.i.i) #12
  %state.i.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 7
  br i1 %cmp.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end4.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %wmi.i.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wmi.i.i, align 4
  %fw_vif_idx.i.i = getelementptr i8, ptr %dev, i32 3328
  %8 = ptrtoint ptr %fw_vif_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw_vif_idx.i.i, align 8
  %call5.i.i = tail call i32 @ath6kl_wmi_enable_sched_scan_cmd(ptr noundef %7, i8 noundef zeroext %9, i1 noundef zeroext false) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.end4.i.i, %if.end.i.i.if.end.i_crit_edge
  %wiphy.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy.i, align 4
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %11, i64 noundef 0) #12
  br label %ath6kl_cfg80211_sscan_disable.exit

ath6kl_cfg80211_sscan_disable.exit:               ; preds = %if.end.i, %entry.ath6kl_cfg80211_sscan_disable.exit_crit_edge
  %sme_state = getelementptr i8, ptr %dev, i32 3984
  %12 = ptrtoint ptr %sme_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %sme_state, align 8
  %13 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ar.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %14, i32 0, i32 75
  %15 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flag.i, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i532

if.then.i:                                        ; preds = %ath6kl_cfg80211_sscan_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup348

if.end.i532:                                      ; preds = %ath6kl_cfg80211_sscan_disable.exit
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i.i, align 4
  %20 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not.i = icmp eq i32 %20, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i532
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup348

if.end:                                           ; preds = %if.end.i532
  %flag = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %21 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flag, align 4
  %23 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not = icmp eq i32 %23, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.93) #12
  br label %cleanup348

if.end6:                                          ; preds = %if.end
  %24 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flag, align 4
  %26 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not = icmp eq i32 %26, 0
  br i1 %tobool9.not, label %if.end6.if.end20_crit_edge, label %land.lhs.true

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end6
  %27 = ptrtoint ptr %sme to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sme, align 4
  %tobool10.not = icmp eq ptr %28, null
  br i1 %tobool10.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true11

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true11:                                  ; preds = %land.lhs.true
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %center_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %land.lhs.true11.if.then19_crit_edge, label %land.lhs.true11.lor.lhs.false_crit_edge

land.lhs.true11.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true11.if.then19_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

lor.lhs.false:                                    ; preds = %land.lhs.true11.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge
  %bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 2
  %31 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bssid, align 4
  %tobool14.not = icmp eq ptr %32, null
  br i1 %tobool14.not, label %lor.lhs.false.if.end20_crit_edge, label %land.lhs.true15

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true15:                                  ; preds = %lor.lhs.false
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add.ptr.i533 = getelementptr i8, ptr %32, i32 4
  %35 = ptrtoint ptr %add.ptr.i533 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i533, align 2
  %conv.i = zext i16 %36 to i32
  %or.i = or i32 %34, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true15.if.then19_crit_edge, label %land.lhs.true15.if.end20_crit_edge

land.lhs.true15.if.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true15.if.then19_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true15.if.then19_crit_edge, %land.lhs.true11.if.then19_crit_edge
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.94) #12
  br label %cleanup348

if.end20:                                         ; preds = %land.lhs.true15.if.end20_crit_edge, %lor.lhs.false.if.end20_crit_edge, %if.end6.if.end20_crit_edge
  %sem = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 22
  %call21 = tail call i32 @down_interruptible(ptr noundef %sem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.95) #12
  br label %cleanup348

if.end24:                                         ; preds = %if.end20
  %37 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flag, align 4
  %39 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool27.not = icmp eq i32 %39, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.96) #12
  tail call void @up(ptr noundef %sem) #12
  br label %cleanup348

if.end30:                                         ; preds = %if.end24
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %40 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wmi, align 4
  %call31 = tail call i32 @ath6kl_wmi_get_control_ep(ptr noundef %41) #12
  %arrayidx = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 8, i32 %call31
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool32.not = icmp eq i32 %43, 0
  br i1 %tobool32.not, label %if.end30.if.end85_crit_edge, label %if.then33

if.end30.if.end85_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then33:                                        ; preds = %if.end30
  tail call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 499) #12
  %44 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wmi, align 4
  %call.i = tail call i32 @ath6kl_wmi_get_control_ep(ptr noundef %45) #12
  %arrayidx.i = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 8, i32 %call.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i534 = icmp eq i32 %47, 0
  br i1 %cmp.i534, label %if.then33.if.end77_crit_edge, label %if.then48

if.then33.if.end77_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then48:                                        ; preds = %if.then33
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %48 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %event_wq = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 72
  %call50567 = call i32 @prepare_to_wait_event(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %49 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wmi, align 4
  %call.i536568 = call i32 @ath6kl_wmi_get_control_ep(ptr noundef %50) #12
  %arrayidx.i537569 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 8, i32 %call.i536568
  %51 = ptrtoint ptr %arrayidx.i537569 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i537569, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i538570 = icmp eq i32 %52, 0
  br i1 %cmp.i538570, label %if.then48.for.end_crit_edge, label %if.then48.if.end70_crit_edge

if.then48.if.end70_crit_edge:                     ; preds = %if.then48
  br label %if.end70

if.then48.for.end_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end70:                                         ; preds = %cleanup.if.end70_crit_edge, %if.then48.if.end70_crit_edge
  %__ret49.1572 = phi i32 [ %__ret49.1, %cleanup.if.end70_crit_edge ], [ 200, %if.then48.if.end70_crit_edge ]
  %call50571 = phi i32 [ %call50, %cleanup.if.end70_crit_edge ], [ %call50567, %if.then48.if.end70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50571)
  %tobool71.not = icmp eq i32 %call50571, 0
  br i1 %tobool71.not, label %cleanup, label %if.end70.__out_crit_edge

if.end70.__out_crit_edge:                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end70
  %call74 = call i32 @schedule_timeout(i32 noundef %__ret49.1572) #12
  %call50 = call i32 @prepare_to_wait_event(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %53 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wmi, align 4
  %call.i536 = call i32 @ath6kl_wmi_get_control_ep(ptr noundef %54) #12
  %arrayidx.i537 = getelementptr %struct.ath6kl, ptr %1, i32 0, i32 8, i32 %call.i536
  %55 = ptrtoint ptr %arrayidx.i537 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i537, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i538 = icmp eq i32 %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool57.not = icmp eq i32 %call74, 0
  %57 = select i1 %cmp.i538, i1 %tobool57.not, i1 false
  %__ret49.1 = select i1 %57, i32 1, i32 %call74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret49.1)
  %tobool64.not = icmp eq i32 %__ret49.1, 0
  %58 = select i1 %cmp.i538, i1 true, i1 %tobool64.not
  br i1 %58, label %cleanup.for.end_crit_edge, label %cleanup.if.end70_crit_edge

cleanup.if.end70_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then48.for.end_crit_edge
  call void @finish_wait(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end70.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end77

if.end77:                                         ; preds = %__out, %if.then33.if.end77_crit_edge
  %59 = call i32 @llvm.read_register.i32(metadata !337) #12
  %and.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %stack.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %67 = and i32 %66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i539 = icmp eq i32 %67, 0
  br i1 %tobool.not.i539, label %signal_pending.exit, label %if.end77.if.then82_crit_edge, !prof !351

if.end77.if.then82_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then82

signal_pending.exit:                              ; preds = %if.end77
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %64, align 4
  %and1.i.i.i.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool81.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool81.not, label %signal_pending.exit.if.end85_crit_edge, label %signal_pending.exit.if.then82_crit_edge

signal_pending.exit.if.then82_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then82

signal_pending.exit.if.end85_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then82:                                        ; preds = %signal_pending.exit.if.then82_crit_edge, %if.end77.if.then82_crit_edge
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.97) #12
  call void @up(ptr noundef %sem) #12
  br label %cleanup348

if.end85:                                         ; preds = %signal_pending.exit.if.end85_crit_edge, %if.end30.if.end85_crit_edge
  %ie = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 7
  %70 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ie, align 4
  %ie_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 8
  %72 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ie_len, align 4
  %74 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ar.i, align 8
  %connect_ctrl_flags.i = getelementptr inbounds %struct.ath6kl, ptr %75, i32 0, i32 44
  %76 = ptrtoint ptr %connect_ctrl_flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %connect_ctrl_flags.i, align 4
  %and.i543 = and i32 %77, -257
  store i32 %and.i543, ptr %connect_ctrl_flags.i, align 4
  %tobool.not.i544 = icmp eq ptr %71, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool2.not.i = icmp eq i32 %73, 0
  %or.cond.i = or i1 %tobool.not.i544, %tobool2.not.i
  br i1 %or.cond.i, label %if.end85.ath6kl_set_assoc_req_ies.exit_crit_edge, label %if.end8.i.i

if.end85.ath6kl_set_assoc_req_ies.exit_crit_edge: ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_set_assoc_req_ies.exit

if.end8.i.i:                                      ; preds = %if.end85
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %73, i32 noundef 3264) #15
  %cmp.i548 = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i548, label %if.end8.i.i.if.then88_crit_edge, label %while.cond.preheader.i

if.end8.i.i.if.then88_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then88

while.cond.preheader.i:                           ; preds = %if.end8.i.i
  %add.ptr4.i = getelementptr i8, ptr %71, i32 %73
  %add.ptr91.i = getelementptr i8, ptr %71, i32 1
  %cmp592.i = icmp ult ptr %add.ptr91.i, %add.ptr4.i
  br i1 %cmp592.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.ath6kl_set_assoc_req_ies.exit_crit_edge

while.cond.preheader.i.ath6kl_set_assoc_req_ies.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_set_assoc_req_ies.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end29.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %add.ptr97.i = phi ptr [ %add.ptr.i551, %if.end29.i.while.body.i_crit_edge ], [ %add.ptr91.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %len.095.i = phi i32 [ %len.18890.i, %if.end29.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %pos.093.i = phi ptr [ %add.ptr33.i, %if.end29.i.while.body.i_crit_edge ], [ %71, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add.ptr6.i = getelementptr i8, ptr %pos.093.i, i32 2
  %78 = ptrtoint ptr %add.ptr97.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr97.i, align 1
  %conv.i549 = zext i8 %79 to i32
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i, i32 %conv.i549
  %cmp9.i = icmp ugt ptr %add.ptr7.i, %add.ptr4.i
  br i1 %cmp9.i, label %while.body.i.ath6kl_set_assoc_req_ies.exit_crit_edge, label %if.end12.i

while.body.i.ath6kl_set_assoc_req_ies.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_set_assoc_req_ies.exit

if.end12.i:                                       ; preds = %while.body.i
  %80 = ptrtoint ptr %pos.093.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pos.093.i, align 1
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %81, label %if.end12.i.if.then17.i_crit_edge [
    i8 -35, label %land.lhs.true.i.i
    i8 48, label %if.end12.i.if.end29.i_crit_edge
  ]

if.end12.i.if.end29.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.end12.i.if.then17.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

land.lhs.true.i.i:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %79)
  %cmp4.i.i = icmp ugt i8 %79, 3
  br i1 %cmp4.i.i, label %land.lhs.true6.i.i, label %land.lhs.true.i.i.if.then17.i_crit_edge

land.lhs.true.i.i.if.then17.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %83 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %add.ptr6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp9.i.i = icmp eq i8 %84, 0
  br i1 %cmp9.i.i, label %land.lhs.true11.i.i, label %land.lhs.true6.i.i.if.then17.i_crit_edge

land.lhs.true6.i.i.if.then17.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true6.i.i
  %arrayidx12.i.i = getelementptr i8, ptr %pos.093.i, i32 3
  %85 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %86)
  %cmp14.i.i = icmp eq i8 %86, 80
  br i1 %cmp14.i.i, label %land.lhs.true16.i.i, label %land.lhs.true11.i.i.if.then17.i_crit_edge

land.lhs.true11.i.i.if.then17.i_crit_edge:        ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

land.lhs.true16.i.i:                              ; preds = %land.lhs.true11.i.i
  %arrayidx17.i.i = getelementptr i8, ptr %pos.093.i, i32 4
  %87 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx17.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %88)
  %cmp19.i.i = icmp eq i8 %88, -14
  br i1 %cmp19.i.i, label %ath6kl_is_wpa_ie.exit.i, label %land.lhs.true16.i.i.if.then17.i_crit_edge

land.lhs.true16.i.i.if.then17.i_crit_edge:        ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

ath6kl_is_wpa_ie.exit.i:                          ; preds = %land.lhs.true16.i.i
  %arrayidx21.i.i = getelementptr i8, ptr %pos.093.i, i32 5
  %89 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx21.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %90)
  %cmp23.i.i = icmp eq i8 %90, 1
  br i1 %cmp23.i.i, label %ath6kl_is_wpa_ie.exit.i.if.end25.i_crit_edge, label %ath6kl_is_wpa_ie.exit.i.if.then17.i_crit_edge

ath6kl_is_wpa_ie.exit.i.if.then17.i_crit_edge:    ; preds = %ath6kl_is_wpa_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17.i

ath6kl_is_wpa_ie.exit.i.if.end25.i_crit_edge:     ; preds = %ath6kl_is_wpa_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then17.i:                                      ; preds = %ath6kl_is_wpa_ie.exit.i.if.then17.i_crit_edge, %land.lhs.true16.i.i.if.then17.i_crit_edge, %land.lhs.true11.i.i.if.then17.i_crit_edge, %land.lhs.true6.i.i.if.then17.i_crit_edge, %land.lhs.true.i.i.if.then17.i_crit_edge, %if.end12.i.if.then17.i_crit_edge
  %add.ptr18.i = getelementptr i8, ptr %call9.i.i, i32 %len.095.i
  %add.i = add nuw nsw i32 %conv.i549, 2
  %91 = call ptr @memcpy(ptr %add.ptr18.i, ptr %pos.093.i, i32 %add.i)
  %add24.i = add i32 %add.i, %len.095.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then17.i, %ath6kl_is_wpa_ie.exit.i.if.end25.i_crit_edge
  %len.1.ph.i = phi i32 [ %add24.i, %if.then17.i ], [ %len.095.i, %ath6kl_is_wpa_ie.exit.i.if.end25.i_crit_edge ]
  %92 = ptrtoint ptr %pos.093.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %.pr.i = load i8, ptr %pos.093.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %.pr.i)
  %cmp.i67.i = icmp eq i8 %.pr.i, -35
  br i1 %cmp.i67.i, label %land.lhs.true.i70.i, label %if.end25.i.if.end29.i_crit_edge

if.end25.i.if.end29.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

land.lhs.true.i70.i:                              ; preds = %if.end25.i
  %93 = ptrtoint ptr %add.ptr97.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %add.ptr97.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %94)
  %cmp4.i69.i = icmp ugt i8 %94, 3
  br i1 %cmp4.i69.i, label %land.lhs.true6.i73.i, label %land.lhs.true.i70.i.if.end29.i_crit_edge

land.lhs.true.i70.i.if.end29.i_crit_edge:         ; preds = %land.lhs.true.i70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

land.lhs.true6.i73.i:                             ; preds = %land.lhs.true.i70.i
  %95 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %add.ptr6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp9.i72.i = icmp eq i8 %96, 0
  br i1 %cmp9.i72.i, label %land.lhs.true11.i76.i, label %land.lhs.true6.i73.i.if.end29.i_crit_edge

land.lhs.true6.i73.i.if.end29.i_crit_edge:        ; preds = %land.lhs.true6.i73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

land.lhs.true11.i76.i:                            ; preds = %land.lhs.true6.i73.i
  %arrayidx12.i74.i = getelementptr i8, ptr %pos.093.i, i32 3
  %97 = ptrtoint ptr %arrayidx12.i74.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx12.i74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %98)
  %cmp14.i75.i = icmp eq i8 %98, 80
  br i1 %cmp14.i75.i, label %land.lhs.true16.i79.i, label %land.lhs.true11.i76.i.if.end29.i_crit_edge

land.lhs.true11.i76.i.if.end29.i_crit_edge:       ; preds = %land.lhs.true11.i76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

land.lhs.true16.i79.i:                            ; preds = %land.lhs.true11.i76.i
  %arrayidx17.i77.i = getelementptr i8, ptr %pos.093.i, i32 4
  %99 = ptrtoint ptr %arrayidx17.i77.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx17.i77.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %100)
  %cmp19.i78.i = icmp eq i8 %100, -14
  br i1 %cmp19.i78.i, label %ath6kl_is_wps_ie.exit.i, label %land.lhs.true16.i79.i.if.end29.i_crit_edge

land.lhs.true16.i79.i.if.end29.i_crit_edge:       ; preds = %land.lhs.true16.i79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

ath6kl_is_wps_ie.exit.i:                          ; preds = %land.lhs.true16.i79.i
  %arrayidx21.i80.i = getelementptr i8, ptr %pos.093.i, i32 5
  %101 = ptrtoint ptr %arrayidx21.i80.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx21.i80.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %102)
  %cmp23.i81.i = icmp eq i8 %102, 4
  br i1 %cmp23.i81.i, label %if.then27.i, label %ath6kl_is_wps_ie.exit.i.if.end29.i_crit_edge

ath6kl_is_wps_ie.exit.i.if.end29.i_crit_edge:     ; preds = %ath6kl_is_wps_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then27.i:                                      ; preds = %ath6kl_is_wps_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %connect_ctrl_flags.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %connect_ctrl_flags.i, align 4
  %or.i550 = or i32 %104, 256
  store i32 %or.i550, ptr %connect_ctrl_flags.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %ath6kl_is_wps_ie.exit.i.if.end29.i_crit_edge, %land.lhs.true16.i79.i.if.end29.i_crit_edge, %land.lhs.true11.i76.i.if.end29.i_crit_edge, %land.lhs.true6.i73.i.if.end29.i_crit_edge, %land.lhs.true.i70.i.if.end29.i_crit_edge, %if.end25.i.if.end29.i_crit_edge, %if.end12.i.if.end29.i_crit_edge
  %len.18890.i = phi i32 [ %len.1.ph.i, %if.then27.i ], [ %len.1.ph.i, %ath6kl_is_wps_ie.exit.i.if.end29.i_crit_edge ], [ %len.1.ph.i, %if.end25.i.if.end29.i_crit_edge ], [ %len.1.ph.i, %land.lhs.true.i70.i.if.end29.i_crit_edge ], [ %len.1.ph.i, %land.lhs.true6.i73.i.if.end29.i_crit_edge ], [ %len.1.ph.i, %land.lhs.true11.i76.i.if.end29.i_crit_edge ], [ %len.1.ph.i, %land.lhs.true16.i79.i.if.end29.i_crit_edge ], [ %len.095.i, %if.end12.i.if.end29.i_crit_edge ]
  %105 = ptrtoint ptr %add.ptr97.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %add.ptr97.i, align 1
  %conv31.i = zext i8 %106 to i32
  %add32.i = add nuw nsw i32 %conv31.i, 2
  %add.ptr33.i = getelementptr i8, ptr %pos.093.i, i32 %add32.i
  %add.ptr.i551 = getelementptr i8, ptr %add.ptr33.i, i32 1
  %cmp5.i = icmp ult ptr %add.ptr.i551, %add.ptr4.i
  br i1 %cmp5.i, label %if.end29.i.while.body.i_crit_edge, label %if.end29.i.ath6kl_set_assoc_req_ies.exit_crit_edge

if.end29.i.ath6kl_set_assoc_req_ies.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_set_assoc_req_ies.exit

if.end29.i.while.body.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

ath6kl_set_assoc_req_ies.exit:                    ; preds = %if.end29.i.ath6kl_set_assoc_req_ies.exit_crit_edge, %while.body.i.ath6kl_set_assoc_req_ies.exit_crit_edge, %while.cond.preheader.i.ath6kl_set_assoc_req_ies.exit_crit_edge, %if.end85.ath6kl_set_assoc_req_ies.exit_crit_edge
  %buf.0.i = phi ptr [ null, %if.end85.ath6kl_set_assoc_req_ies.exit_crit_edge ], [ %call9.i.i, %while.cond.preheader.i.ath6kl_set_assoc_req_ies.exit_crit_edge ], [ %call9.i.i, %if.end29.i.ath6kl_set_assoc_req_ies.exit_crit_edge ], [ %call9.i.i, %while.body.i.ath6kl_set_assoc_req_ies.exit_crit_edge ]
  %len.2.i = phi i32 [ 0, %if.end85.ath6kl_set_assoc_req_ies.exit_crit_edge ], [ 0, %while.cond.preheader.i.ath6kl_set_assoc_req_ies.exit_crit_edge ], [ %len.095.i, %while.body.i.ath6kl_set_assoc_req_ies.exit_crit_edge ], [ %len.18890.i, %if.end29.i.ath6kl_set_assoc_req_ies.exit_crit_edge ]
  %wmi.i552 = getelementptr inbounds %struct.ath6kl, ptr %75, i32 0, i32 7
  %107 = ptrtoint ptr %wmi.i552 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wmi.i552, align 4
  %fw_vif_idx.i = getelementptr i8, ptr %dev, i32 3328
  %109 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %fw_vif_idx.i, align 8
  %conv35.i = trunc i32 %len.2.i to i8
  %call36.i = call i32 @ath6kl_wmi_set_appie_cmd(ptr noundef %108, i8 noundef zeroext %110, i8 noundef zeroext 3, ptr noundef %buf.0.i, i8 noundef zeroext %conv35.i) #12
  call void @kfree(ptr noundef %buf.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool87.not = icmp eq i32 %call36.i, 0
  br i1 %tobool87.not, label %if.end90, label %ath6kl_set_assoc_req_ies.exit.if.then88_crit_edge

ath6kl_set_assoc_req_ies.exit.if.then88_crit_edge: ; preds = %ath6kl_set_assoc_req_ies.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then88

if.then88:                                        ; preds = %ath6kl_set_assoc_req_ies.exit.if.then88_crit_edge, %if.end8.i.i.if.then88_crit_edge
  %retval.0.i553565 = phi i32 [ %call36.i, %ath6kl_set_assoc_req_ies.exit.if.then88_crit_edge ], [ -12, %if.end8.i.i.if.then88_crit_edge ]
  call void @up(ptr noundef %sem) #12
  br label %cleanup348

if.end90:                                         ; preds = %ath6kl_set_assoc_req_ies.exit
  %111 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ie, align 4
  %cmp92 = icmp eq ptr %112, null
  br i1 %cmp92, label %if.end90.if.then98_crit_edge, label %lor.lhs.false94

if.end90.if.then98_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then98

lor.lhs.false94:                                  ; preds = %if.end90
  %113 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp96 = icmp eq i32 %114, 0
  br i1 %cmp96, label %lor.lhs.false94.if.then98_crit_edge, label %lor.lhs.false94.if.end99_crit_edge

lor.lhs.false94.if.end99_crit_edge:               ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

lor.lhs.false94.if.then98_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then98

if.then98:                                        ; preds = %lor.lhs.false94.if.then98_crit_edge, %if.end90.if.then98_crit_edge
  %connect_ctrl_flags = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 44
  %115 = ptrtoint ptr %connect_ctrl_flags to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %connect_ctrl_flags, align 4
  %and = and i32 %116, -257
  store i32 %and, ptr %connect_ctrl_flags, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %lor.lhs.false94.if.end99_crit_edge
  %117 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i530 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i530)
  %tobool101.not = icmp eq i32 %and1.i530, 0
  br i1 %tobool101.not, label %if.end99.if.else_crit_edge, label %land.lhs.true102

if.end99.if.else_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true102:                                 ; preds = %if.end99
  %ssid_len = getelementptr i8, ptr %dev, i32 3336
  %119 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ssid_len, align 8
  %ssid_len103 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 5
  %121 = ptrtoint ptr %ssid_len103 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ssid_len103, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %122)
  %cmp104 = icmp eq i32 %120, %122
  br i1 %cmp104, label %land.lhs.true106, label %land.lhs.true102.if.else_crit_edge

land.lhs.true102.if.else_crit_edge:               ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true106:                                 ; preds = %land.lhs.true102
  %ssid = getelementptr i8, ptr %dev, i32 3340
  %ssid107 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %123 = ptrtoint ptr %ssid107 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ssid107, align 4
  %bcmp525 = call i32 @bcmp(ptr %ssid, ptr %124, i32 %120) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp525)
  %tobool110.not = icmp eq i32 %bcmp525, 0
  br i1 %tobool110.not, label %if.then111, label %land.lhs.true106.if.else_crit_edge

land.lhs.true106.if.else_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then111:                                       ; preds = %land.lhs.true106
  %reconnect_flag = getelementptr i8, ptr %dev, i32 3988
  %125 = ptrtoint ptr %reconnect_flag to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %reconnect_flag, align 4
  %126 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wmi, align 4
  %128 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %fw_vif_idx.i, align 8
  %req_bssid = getelementptr i8, ptr %dev, i32 3387
  %ch_hint = getelementptr i8, ptr %dev, i32 3394
  %130 = ptrtoint ptr %ch_hint to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %ch_hint, align 2
  %call114 = call i32 @ath6kl_wmi_reconnect_cmd(ptr noundef %127, i8 noundef zeroext %129, ptr noundef %req_bssid, i16 noundef zeroext %131) #12
  call void @up(ptr noundef %sem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool116.not = icmp eq i32 %call114, 0
  br i1 %tobool116.not, label %if.then111.cleanup348_crit_edge, label %if.then117

if.then111.cleanup348_crit_edge:                  ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup348

if.then117:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.98) #12
  br label %cleanup348

if.else:                                          ; preds = %land.lhs.true106.if.else_crit_edge, %land.lhs.true102.if.else_crit_edge, %if.end99.if.else_crit_edge
  %ssid_len119 = getelementptr i8, ptr %dev, i32 3336
  %132 = ptrtoint ptr %ssid_len119 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ssid_len119, align 8
  %ssid_len120 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 5
  %134 = ptrtoint ptr %ssid_len120 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ssid_len120, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %135)
  %cmp121 = icmp eq i32 %133, %135
  br i1 %cmp121, label %land.lhs.true123, label %if.else.if.end132_crit_edge

if.else.if.end132_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

land.lhs.true123:                                 ; preds = %if.else
  %ssid124 = getelementptr i8, ptr %dev, i32 3340
  %ssid126 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %136 = ptrtoint ptr %ssid126 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ssid126, align 4
  %bcmp = call i32 @bcmp(ptr %ssid124, ptr %137, i32 %133) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool129.not = icmp eq i32 %bcmp, 0
  br i1 %tobool129.not, label %if.then130, label %land.lhs.true123.if.end132_crit_edge

land.lhs.true123.if.end132_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.then130:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #14
  call void @ath6kl_disconnect(ptr noundef %add.ptr.i) #12
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %land.lhs.true123.if.end132_crit_edge, %if.else.if.end132_crit_edge
  %ssid133 = getelementptr i8, ptr %dev, i32 3340
  %138 = call ptr @memset(ptr %ssid133, i32 0, i32 32)
  %139 = ptrtoint ptr %ssid_len120 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ssid_len120, align 4
  %141 = ptrtoint ptr %ssid_len119 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %ssid_len119, align 8
  %ssid139 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %142 = ptrtoint ptr %ssid139 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ssid139, align 4
  %144 = load i32, ptr %ssid_len120, align 4
  %145 = call ptr @memcpy(ptr %ssid133, ptr %143, i32 %144)
  %146 = ptrtoint ptr %sme to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sme, align 4
  %tobool142.not = icmp eq ptr %147, null
  br i1 %tobool142.not, label %if.end132.if.end148_crit_edge, label %if.then143

if.end132.if.end148_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.then143:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  %center_freq145 = getelementptr inbounds %struct.ieee80211_channel, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %center_freq145 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %center_freq145, align 4
  %conv146 = trunc i32 %149 to i16
  %ch_hint147 = getelementptr i8, ptr %dev, i32 3394
  %150 = ptrtoint ptr %ch_hint147 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv146, ptr %ch_hint147, align 2
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %if.end132.if.end148_crit_edge
  %req_bssid149 = getelementptr i8, ptr %dev, i32 3387
  %151 = call ptr @memset(ptr %req_bssid149, i32 0, i32 6)
  %bssid151 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 2
  %152 = ptrtoint ptr %bssid151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bssid151, align 4
  %tobool152.not = icmp eq ptr %153, null
  br i1 %tobool152.not, label %if.end148.if.end160_crit_edge, label %land.lhs.true153

if.end148.if.end160_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

land.lhs.true153:                                 ; preds = %if.end148
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %153, align 2
  %add.ptr1.i = getelementptr i8, ptr %153, i32 2
  %156 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %157, %155
  %add.ptr3.i = getelementptr i8, ptr %153, i32 4
  %158 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %159
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i554 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i554, label %land.lhs.true153.if.end160_crit_edge, label %if.then156

land.lhs.true153.if.end160_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

if.then156:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #14
  %160 = call ptr @memcpy(ptr %req_bssid149, ptr %153, i32 6)
  br label %if.end160

if.end160:                                        ; preds = %if.then156, %land.lhs.true153.if.end160_crit_edge, %if.end148.if.end160_crit_edge
  %crypto = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11
  %161 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %crypto, align 4
  call fastcc void @ath6kl_set_wpa_version(ptr noundef %add.ptr.i, i32 noundef %162)
  %auth_type = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 6
  %163 = ptrtoint ptr %auth_type to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %auth_type, align 4
  %call162 = call fastcc i32 @ath6kl_set_auth_type(ptr noundef %add.ptr.i, i32 noundef %164)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end166, label %if.then164

if.then164:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  call void @up(ptr noundef %sem) #12
  br label %cleanup348

if.end166:                                        ; preds = %if.end160
  %n_ciphers_pairwise = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 2
  %165 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %n_ciphers_pairwise, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool168.not = icmp eq i32 %166, 0
  br i1 %tobool168.not, label %if.else173, label %if.then169

if.then169:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  %ciphers_pairwise = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 3
  %167 = ptrtoint ptr %ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ciphers_pairwise, align 4
  call fastcc void @ath6kl_set_cipher(ptr noundef %add.ptr.i, i32 noundef %168, i1 noundef zeroext true)
  br label %if.end175

if.else173:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  %prwise_crypto.i = getelementptr i8, ptr %dev, i32 3374
  %prwise_crypto_len.i = getelementptr i8, ptr %dev, i32 3375
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.ath6kl_set_cipher, i32 noundef 0, i32 noundef 1) #12
  %169 = ptrtoint ptr %prwise_crypto.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %prwise_crypto.i, align 1
  %170 = ptrtoint ptr %prwise_crypto_len.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %prwise_crypto_len.i, align 1
  br label %if.end175

if.end175:                                        ; preds = %if.else173, %if.then169
  %cipher_group = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 1
  %171 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %cipher_group, align 4
  call fastcc void @ath6kl_set_cipher(ptr noundef %add.ptr.i, i32 noundef %172, i1 noundef zeroext false)
  %n_akm_suites = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 4
  %173 = ptrtoint ptr %n_akm_suites to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %n_akm_suites, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool179.not = icmp eq i32 %174, 0
  br i1 %tobool179.not, label %if.end175.if.end183_crit_edge, label %if.then180

if.end175.if.end183_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

if.then180:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #14
  %akm_suites = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 5
  %175 = ptrtoint ptr %akm_suites to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %akm_suites, align 4
  call fastcc void @ath6kl_set_key_mgmt(ptr noundef %add.ptr.i, i32 noundef %176)
  br label %if.end183

if.end183:                                        ; preds = %if.then180, %if.end175.if.end183_crit_edge
  %key_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 13
  %177 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %key_len, align 4
  %conv184 = zext i8 %178 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool185.not = icmp eq i8 %178, 0
  br i1 %tobool185.not, label %if.end183.if.end227_crit_edge, label %land.lhs.true186

if.end183.if.end227_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

land.lhs.true186:                                 ; preds = %if.end183
  %auth_mode = getelementptr i8, ptr %dev, i32 3373
  %179 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %auth_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %180)
  %cmp188 = icmp eq i8 %180, 1
  br i1 %cmp188, label %land.lhs.true190, label %land.lhs.true186.if.end227_crit_edge

land.lhs.true186.if.end227_crit_edge:             ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

land.lhs.true190:                                 ; preds = %land.lhs.true186
  %prwise_crypto = getelementptr i8, ptr %dev, i32 3374
  %181 = ptrtoint ptr %prwise_crypto to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %prwise_crypto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %182)
  %cmp192 = icmp eq i8 %182, 2
  br i1 %cmp192, label %if.then194, label %land.lhs.true190.if.end227_crit_edge

land.lhs.true190.if.end227_crit_edge:             ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

if.then194:                                       ; preds = %land.lhs.true190
  %key_idx = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 14
  %183 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %key_idx, align 1
  %conv195 = zext i8 %184 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %184)
  %cmp196 = icmp ugt i8 %184, 3
  br i1 %cmp196, label %if.then198, label %if.end202

if.then198:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.99, i32 noundef %conv195) #12
  call void @up(ptr noundef %sem) #12
  br label %cleanup348

if.end202:                                        ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx204 = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv195
  %key_len206 = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv195, i32 1
  %185 = ptrtoint ptr %key_len206 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %178, ptr %key_len206, align 4
  %key209 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 12
  %186 = ptrtoint ptr %key209 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %key209, align 4
  %188 = call ptr @memcpy(ptr %arrayidx204, ptr %187, i32 %conv184)
  %189 = ptrtoint ptr %prwise_crypto to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %prwise_crypto, align 2
  %conv213 = zext i8 %190 to i32
  %cipher = getelementptr %struct.ath6kl_vif, ptr %add.ptr.i, i32 0, i32 23, i32 %conv195, i32 4
  %191 = ptrtoint ptr %cipher to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv213, ptr %cipher, align 4
  %192 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %key_idx, align 1
  %def_txkey_index = getelementptr i8, ptr %dev, i32 3378
  %194 = ptrtoint ptr %def_txkey_index to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %def_txkey_index, align 2
  %195 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %wmi, align 4
  %197 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %fw_vif_idx.i, align 8
  %199 = load i8, ptr %key_idx, align 1
  %200 = load i8, ptr %key_len206, align 4
  %call223 = call i32 @ath6kl_wmi_addkey_cmd(ptr noundef %196, i8 noundef zeroext %198, i8 noundef zeroext %199, i32 noundef %conv213, i8 noundef zeroext 3, i8 noundef zeroext %200, ptr noundef null, i32 noundef 0, ptr noundef %arrayidx204, i8 noundef zeroext 3, ptr noundef null, i32 noundef 0) #12
  br label %if.end227

if.end227:                                        ; preds = %if.end202, %land.lhs.true190.if.end227_crit_edge, %land.lhs.true186.if.end227_crit_edge, %if.end183.if.end227_crit_edge
  %usr_bss_filter = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 46
  %201 = ptrtoint ptr %usr_bss_filter to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %usr_bss_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool228.not = icmp eq i8 %202, 0
  br i1 %tobool228.not, label %if.then229, label %if.end227.if.end239_crit_edge

if.end227.if.end239_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end239

if.then229:                                       ; preds = %if.end227
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i.i) #12
  %203 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %wmi, align 4
  %205 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %fw_vif_idx.i, align 8
  %call233 = call i32 @ath6kl_wmi_bssfilter_cmd(ptr noundef %204, i8 noundef zeroext %206, i8 noundef zeroext 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp234.not = icmp eq i32 %call233, 0
  br i1 %cmp234.not, label %if.then229.if.end239_crit_edge, label %if.then236

if.then229.if.end239_crit_edge:                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end239

if.then236:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.89) #12
  call void @up(ptr noundef %sem) #12
  br label %cleanup348

if.end239:                                        ; preds = %if.then229.if.end239_crit_edge, %if.end227.if.end239_crit_edge
  %next_mode = getelementptr i8, ptr %dev, i32 3379
  %207 = ptrtoint ptr %next_mode to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %next_mode, align 1
  %nw_type = getelementptr i8, ptr %dev, i32 3380
  %209 = ptrtoint ptr %nw_type to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %nw_type, align 4
  call fastcc void @ath6kl_cfg80211_sta_bmiss_enhance(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  %iftype = getelementptr i8, ptr %dev, i32 2316
  %210 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %211)
  %cmp240 = icmp eq i32 %211, 8
  %spec.select = select i1 %cmp240, i8 3, i8 %conv
  %auth_mode244 = getelementptr i8, ptr %dev, i32 3373
  %212 = ptrtoint ptr %auth_mode244 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %auth_mode244, align 1
  %conv245 = zext i8 %213 to i32
  %dot11_auth_mode = getelementptr i8, ptr %dev, i32 3372
  %214 = ptrtoint ptr %dot11_auth_mode to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %dot11_auth_mode, align 4
  %conv246 = zext i8 %215 to i32
  %prwise_crypto247 = getelementptr i8, ptr %dev, i32 3374
  %216 = ptrtoint ptr %prwise_crypto247 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %prwise_crypto247, align 2
  %conv248 = zext i8 %217 to i32
  %prwise_crypto_len = getelementptr i8, ptr %dev, i32 3375
  %218 = ptrtoint ptr %prwise_crypto_len to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %prwise_crypto_len, align 1
  %conv249 = zext i8 %219 to i32
  %grp_crypto = getelementptr i8, ptr %dev, i32 3376
  %220 = ptrtoint ptr %grp_crypto to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %grp_crypto, align 8
  %conv250 = zext i8 %221 to i32
  %grp_crypto_len = getelementptr i8, ptr %dev, i32 3377
  %222 = ptrtoint ptr %grp_crypto_len to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %grp_crypto_len, align 1
  %conv251 = zext i8 %223 to i32
  %ch_hint252 = getelementptr i8, ptr %dev, i32 3394
  %224 = ptrtoint ptr %ch_hint252 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %ch_hint252, align 2
  %conv253 = zext i16 %225 to i32
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.ath6kl_cfg80211_connect, i32 noundef %conv245, i32 noundef %conv246, i32 noundef %conv248, i32 noundef %conv249, i32 noundef %conv250, i32 noundef %conv251, i32 noundef %conv253) #12
  %reconnect_flag254 = getelementptr i8, ptr %dev, i32 3988
  %226 = ptrtoint ptr %reconnect_flag254 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 0, ptr %reconnect_flag254, align 4
  %227 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %228)
  %cmp257 = icmp eq i8 %228, 1
  br i1 %cmp257, label %if.then259, label %if.end239.if.end276_crit_edge

if.end239.if.end276_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end276

if.then259:                                       ; preds = %if.end239
  %listen_intvl_t = getelementptr i8, ptr %dev, i32 4008
  %229 = ptrtoint ptr %listen_intvl_t to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %listen_intvl_t, align 8
  %231 = call i16 @llvm.umax.i16(i16 %230, i16 300)
  %232 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %wmi, align 4
  %234 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %fw_vif_idx.i, align 8
  %call271 = call i32 @ath6kl_wmi_listeninterval_cmd(ptr noundef %233, i8 noundef zeroext %235, i16 noundef zeroext %231, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %if.then259.if.end276_crit_edge, label %if.then273

if.then259.if.end276_crit_edge:                   ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end276

if.then273:                                       ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.101) #12
  call void @up(ptr noundef %sem) #12
  br label %cleanup348

if.end276:                                        ; preds = %if.then259.if.end276_crit_edge, %if.end239.if.end276_crit_edge
  %236 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %wmi, align 4
  %238 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %fw_vif_idx.i, align 8
  %240 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %nw_type, align 4
  %conv280 = zext i8 %241 to i32
  %242 = ptrtoint ptr %dot11_auth_mode to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %dot11_auth_mode, align 4
  %conv282 = zext i8 %243 to i32
  %244 = ptrtoint ptr %auth_mode244 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %auth_mode244, align 1
  %conv284 = zext i8 %245 to i32
  %246 = ptrtoint ptr %prwise_crypto247 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %prwise_crypto247, align 2
  %conv286 = zext i8 %247 to i32
  %248 = ptrtoint ptr %prwise_crypto_len to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %prwise_crypto_len, align 1
  %250 = ptrtoint ptr %grp_crypto to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %grp_crypto, align 8
  %conv289 = zext i8 %251 to i32
  %252 = ptrtoint ptr %grp_crypto_len to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %grp_crypto_len, align 1
  %254 = ptrtoint ptr %ssid_len119 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %ssid_len119, align 8
  %256 = ptrtoint ptr %ch_hint252 to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %ch_hint252, align 2
  %connect_ctrl_flags297 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 44
  %258 = ptrtoint ptr %connect_ctrl_flags297 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %connect_ctrl_flags297, align 4
  %call298 = call i32 @ath6kl_wmi_connect_cmd(ptr noundef %237, i8 noundef zeroext %239, i32 noundef %conv280, i32 noundef %conv282, i32 noundef %conv284, i32 noundef %conv286, i8 noundef zeroext %249, i32 noundef %conv289, i8 noundef zeroext %253, i32 noundef %255, ptr noundef %ssid133, ptr noundef %req_bssid149, i16 noundef zeroext %257, i32 noundef %259, i8 noundef zeroext %spec.select) #12
  %bg_scan_period = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 16
  %260 = ptrtoint ptr %bg_scan_period to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %bg_scan_period, align 4
  %262 = zext i32 %261 to i64
  call void @__sanitizer_cov_trace_switch(i64 %262, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %261, label %if.end276.if.end310_crit_edge [
    i32 0, label %if.end276.if.end310.sink.split_crit_edge
    i32 -1, label %if.then307
  ]

if.end276.if.end310.sink.split_crit_edge:         ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end310.sink.split

if.end276.if.end310_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end310

if.then307:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end310.sink.split

if.end310.sink.split:                             ; preds = %if.then307, %if.end276.if.end310.sink.split_crit_edge
  %.sink = phi i32 [ 60, %if.then307 ], [ 65535, %if.end276.if.end310.sink.split_crit_edge ]
  %263 = ptrtoint ptr %bg_scan_period to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %.sink, ptr %bg_scan_period, align 4
  br label %if.end310

if.end310:                                        ; preds = %if.end310.sink.split, %if.end276.if.end310_crit_edge
  %264 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %wmi, align 4
  %266 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %fw_vif_idx.i, align 8
  %268 = ptrtoint ptr %bg_scan_period to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %bg_scan_period, align 4
  %conv314 = trunc i32 %269 to i16
  %call315 = call i32 @ath6kl_wmi_scanparams_cmd(ptr noundef %265, i8 noundef zeroext %267, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext %conv314, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, i16 noundef zeroext 0) #12
  call void @up(ptr noundef %sem) #12
  %270 = zext i32 %call298 to i64
  call void @__sanitizer_cov_trace_switch(i64 %270, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %call298, label %if.then325 [
    i32 -22, label %if.then319
    i32 0, label %if.end327
  ]

if.then319:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #14
  %271 = call ptr @memset(ptr %ssid_len119, i32 0, i32 36)
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.102) #12
  br label %cleanup348

if.then325:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.103) #12
  br label %cleanup348

if.end327:                                        ; preds = %if.end310
  %272 = ptrtoint ptr %connect_ctrl_flags297 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %connect_ctrl_flags297, align 4
  %and329 = and i32 %273, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329)
  %tobool330.not = icmp eq i32 %and329, 0
  br i1 %tobool330.not, label %land.lhs.true331, label %if.end327.if.end344_crit_edge

if.end327.if.end344_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end344

land.lhs.true331:                                 ; preds = %if.end327
  %274 = ptrtoint ptr %auth_mode244 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %auth_mode244, align 1
  %276 = zext i8 %275 to i64
  call void @__sanitizer_cov_trace_switch(i64 %276, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %275, label %land.lhs.true331.if.end344_crit_edge [
    i8 8, label %land.lhs.true331.if.then341_crit_edge
    i8 16, label %land.lhs.true331.if.then341_crit_edge573
  ]

land.lhs.true331.if.then341_crit_edge573:         ; preds = %land.lhs.true331
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then341

land.lhs.true331.if.then341_crit_edge:            ; preds = %land.lhs.true331
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then341

land.lhs.true331.if.end344_crit_edge:             ; preds = %land.lhs.true331
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end344

if.then341:                                       ; preds = %land.lhs.true331.if.then341_crit_edge, %land.lhs.true331.if.then341_crit_edge573
  %disconnect_timer = getelementptr i8, ptr %dev, i32 3884
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %277 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %277, 1000
  %call343 = call i32 @mod_timer(ptr noundef %disconnect_timer, i32 noundef %add) #12
  br label %if.end344

if.end344:                                        ; preds = %if.then341, %land.lhs.true331.if.end344_crit_edge, %if.end327.if.end344_crit_edge
  %278 = ptrtoint ptr %connect_ctrl_flags297 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %connect_ctrl_flags297, align 4
  %and346 = and i32 %279, -65
  store i32 %and346, ptr %connect_ctrl_flags297, align 4
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #12
  br label %cleanup348

cleanup348:                                       ; preds = %if.end344, %if.then325, %if.then319, %if.then273, %if.then236, %if.then198, %if.then164, %if.then117, %if.then111.cleanup348_crit_edge, %if.then88, %if.then82, %if.then28, %if.then23, %if.then19, %if.then5, %if.then4.i, %if.then.i
  %retval.1 = phi i32 [ -16, %if.then5 ], [ -22, %if.then19 ], [ -512, %if.then23 ], [ -16, %if.then28 ], [ -4, %if.then82 ], [ %retval.0.i553565, %if.then88 ], [ %call162, %if.then164 ], [ %call271, %if.then273 ], [ -2, %if.then319 ], [ -5, %if.then325 ], [ 0, %if.end344 ], [ -5, %if.then236 ], [ -5, %if.then117 ], [ 0, %if.then111.cleanup348_crit_edge ], [ -2, %if.then198 ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_disconnect(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, i16 noundef zeroext %reason_code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %conv = zext i16 %reason_code to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.106, ptr noundef nonnull @__func__.ath6kl_cfg80211_disconnect, i32 noundef %conv) #12
  %2 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar.i, align 8
  %flags.i.i = getelementptr i8, ptr %dev, i32 3332
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %flags.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.ath6kl_cfg80211_sscan_disable.exit_crit_edge, label %if.end.i.i

entry.ath6kl_cfg80211_sscan_disable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_sscan_disable.exit

if.end.i.i:                                       ; preds = %entry
  %sched_scan_timer.i.i = getelementptr i8, ptr %dev, i32 3932
  %call2.i.i = tail call i32 @del_timer_sync(ptr noundef %sched_scan_timer.i.i) #12
  %state.i.i = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 7
  br i1 %cmp.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end4.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %wmi.i.i = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wmi.i.i, align 4
  %fw_vif_idx.i.i = getelementptr i8, ptr %dev, i32 3328
  %8 = ptrtoint ptr %fw_vif_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw_vif_idx.i.i, align 8
  %call5.i.i = tail call i32 @ath6kl_wmi_enable_sched_scan_cmd(ptr noundef %7, i8 noundef zeroext %9, i1 noundef zeroext false) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.end4.i.i, %if.end.i.i.if.end.i_crit_edge
  %wiphy.i = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy.i, align 4
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %11, i64 noundef 0) #12
  br label %ath6kl_cfg80211_sscan_disable.exit

ath6kl_cfg80211_sscan_disable.exit:               ; preds = %if.end.i, %entry.ath6kl_cfg80211_sscan_disable.exit_crit_edge
  %12 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ar.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %13, i32 0, i32 75
  %14 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flag.i, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i31

if.then.i:                                        ; preds = %ath6kl_cfg80211_sscan_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i31:                                       ; preds = %ath6kl_cfg80211_sscan_disable.exit
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i.i, align 4
  %19 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i = icmp eq i32 %19, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i31
  %flag = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %20 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flag, align 4
  %22 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.96) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sem = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 22
  %call6 = tail call i32 @down_interruptible(ptr noundef %sem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.95) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %reconnect_flag = getelementptr i8, ptr %dev, i32 3988
  %23 = ptrtoint ptr %reconnect_flag to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %reconnect_flag, align 4
  tail call void @ath6kl_disconnect(ptr noundef %add.ptr.i) #12
  %ssid_len = getelementptr i8, ptr %dev, i32 3336
  %24 = call ptr @memset(ptr %ssid_len, i32 0, i32 36)
  %25 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flag, align 4
  %27 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.not = icmp eq i32 %27, 0
  br i1 %tobool12.not, label %if.then13, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %req_bssid = getelementptr i8, ptr %dev, i32 3387
  %28 = call ptr @memset(ptr %req_bssid, i32 0, i32 6)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  tail call void @up(ptr noundef %sem) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then8, %if.then4, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ -16, %if.then4 ], [ -512, %if.then8 ], [ 0, %if.end15 ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_join_ibss(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr nocapture noundef readonly %ibss_param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr i8, ptr %dev, i32 3332
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %ssid_len = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %ibss_param, i32 0, i32 4
  %8 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ssid_len, align 4
  %conv = zext i8 %9 to i32
  %ssid_len3 = getelementptr i8, ptr %dev, i32 3336
  %10 = ptrtoint ptr %ssid_len3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %ssid_len3, align 8
  %ssid = getelementptr i8, ptr %dev, i32 3340
  %11 = ptrtoint ptr %ibss_param to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ibss_param, align 4
  %13 = call ptr @memcpy(ptr %ssid, ptr %12, i32 %conv)
  %chandef = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %ibss_param, i32 0, i32 2
  %14 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chandef, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %center_freq, align 4
  %conv9 = trunc i32 %17 to i16
  %ch_hint = getelementptr i8, ptr %dev, i32 3394
  %18 = ptrtoint ptr %ch_hint to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv9, ptr %ch_hint, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %channel_fixed = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %ibss_param, i32 0, i32 8
  %19 = ptrtoint ptr %channel_fixed to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %channel_fixed, align 4, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool11.not = icmp eq i8 %20, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %req_bssid = getelementptr i8, ptr %dev, i32 3387
  %21 = call ptr @memset(ptr %req_bssid, i32 0, i32 6)
  %bssid = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %ibss_param, i32 0, i32 1
  %22 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bssid, align 4
  %tobool15.not = icmp eq ptr %23, null
  br i1 %tobool15.not, label %if.end13.if.end27_crit_edge, label %land.lhs.true

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 2
  %add.ptr1.i = getelementptr i8, ptr %23, i32 2
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %27, %25
  %add.ptr3.i = getelementptr i8, ptr %23, i32 4
  %28 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %29
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %land.lhs.true.if.end27_crit_edge, label %if.then18

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %30 = call ptr @memcpy(ptr %req_bssid, ptr %23, i32 6)
  br label %if.end27

if.end27:                                         ; preds = %if.then18, %land.lhs.true.if.end27_crit_edge, %if.end13.if.end27_crit_edge
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.ath6kl_set_wpa_version, i32 noundef 0) #12
  %auth_mode.i = getelementptr i8, ptr %dev, i32 3373
  %31 = ptrtoint ptr %auth_mode.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %auth_mode.i, align 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.ath6kl_set_auth_type, i32 noundef 0) #12
  %dot11_auth_mode.i = getelementptr i8, ptr %dev, i32 3372
  %32 = ptrtoint ptr %dot11_auth_mode.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %dot11_auth_mode.i, align 4
  %privacy = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %ibss_param, i32 0, i32 9
  %33 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %privacy, align 1, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool28.not = icmp eq i8 %34, 0
  %prwise_crypto.i116 = getelementptr i8, ptr %dev, i32 3374
  %prwise_crypto_len.i118 = getelementptr i8, ptr %dev, i32 3375
  %. = select i1 %tobool28.not, i32 0, i32 1027073
  %.130 = select i1 %tobool28.not, i8 1, i8 2
  %.131 = select i1 %tobool28.not, i8 0, i8 5
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.ath6kl_set_cipher, i32 noundef %., i32 noundef 1) #12
  %35 = ptrtoint ptr %prwise_crypto.i116 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.130, ptr %prwise_crypto.i116, align 1
  %36 = ptrtoint ptr %prwise_crypto_len.i118 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.131, ptr %prwise_crypto_len.i118, align 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.ath6kl_set_cipher, i32 noundef %., i32 noundef 0) #12
  %37 = getelementptr i8, ptr %dev, i32 3376
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.130, ptr %37, align 1
  %39 = getelementptr i8, ptr %dev, i32 3377
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.131, ptr %39, align 1
  %next_mode = getelementptr i8, ptr %dev, i32 3379
  %41 = ptrtoint ptr %next_mode to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %next_mode, align 1
  %nw_type = getelementptr i8, ptr %dev, i32 3380
  %43 = ptrtoint ptr %nw_type to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %nw_type, align 4
  %44 = ptrtoint ptr %auth_mode.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %auth_mode.i, align 1
  %conv35 = zext i8 %45 to i32
  %46 = ptrtoint ptr %dot11_auth_mode.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dot11_auth_mode.i, align 4
  %conv36 = zext i8 %47 to i32
  %prwise_crypto = getelementptr i8, ptr %dev, i32 3374
  %48 = ptrtoint ptr %prwise_crypto to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %prwise_crypto, align 2
  %conv37 = zext i8 %49 to i32
  %prwise_crypto_len = getelementptr i8, ptr %dev, i32 3375
  %50 = ptrtoint ptr %prwise_crypto_len to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %prwise_crypto_len, align 1
  %conv38 = zext i8 %51 to i32
  %conv39 = zext i8 %.130 to i32
  %conv40 = zext i8 %.131 to i32
  %ch_hint41 = getelementptr i8, ptr %dev, i32 3394
  %52 = ptrtoint ptr %ch_hint41 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ch_hint41, align 2
  %conv42 = zext i16 %53 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.ath6kl_cfg80211_join_ibss, i32 noundef %conv35, i32 noundef %conv36, i32 noundef %conv37, i32 noundef %conv38, i32 noundef %conv39, i32 noundef %conv40, i32 noundef %conv42) #12
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %dev, i32 3328
  %56 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fw_vif_idx, align 8
  %58 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nw_type, align 4
  %conv44 = zext i8 %59 to i32
  %60 = ptrtoint ptr %dot11_auth_mode.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dot11_auth_mode.i, align 4
  %conv46 = zext i8 %61 to i32
  %62 = ptrtoint ptr %auth_mode.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %auth_mode.i, align 1
  %conv48 = zext i8 %63 to i32
  %64 = ptrtoint ptr %prwise_crypto to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %prwise_crypto, align 2
  %conv50 = zext i8 %65 to i32
  %66 = ptrtoint ptr %prwise_crypto_len to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %prwise_crypto_len, align 1
  %68 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %37, align 8
  %conv53 = zext i8 %69 to i32
  %70 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %39, align 1
  %72 = ptrtoint ptr %ssid_len3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ssid_len3, align 8
  %74 = ptrtoint ptr %ch_hint41 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %ch_hint41, align 2
  %connect_ctrl_flags = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 44
  %76 = ptrtoint ptr %connect_ctrl_flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %connect_ctrl_flags, align 4
  %call61 = tail call i32 @ath6kl_wmi_connect_cmd(ptr noundef %55, i8 noundef zeroext %57, i32 noundef %conv44, i32 noundef %conv46, i32 noundef %conv48, i32 noundef %conv50, i8 noundef zeroext %67, i32 noundef %conv53, i8 noundef zeroext %71, i32 noundef %73, ptr noundef %ssid, ptr noundef %req_bssid, i16 noundef zeroext %75, i32 noundef %77, i8 noundef zeroext 0) #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end10.cleanup_crit_edge, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -95, %if.end10.cleanup_crit_edge ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_leave_ibss(ptr nocapture noundef readnone %wiphy, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ar1.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr i8, ptr %dev, i32 3332
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ath6kl_disconnect(ptr noundef %add.ptr.i) #12
  %ssid_len = getelementptr i8, ptr %dev, i32 3336
  %8 = call ptr @memset(ptr %ssid_len, i32 0, i32 36)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_set_wiphy_params(ptr noundef %wiphy, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !348

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !349
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.107, ptr noundef nonnull @__func__.ath6kl_cfg80211_set_wiphy_params, i32 noundef %changed) #12
  %call1 = tail call ptr @ath6kl_vif_first(ptr noundef %priv.i) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %ar1.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i18 = icmp eq i32 %4, 0
  br i1 %tobool.not.i18, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call1, i32 0, i32 6
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end4

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  %and = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %wmi = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 7
  %8 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wmi, align 4
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 36
  %10 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rts_threshold, align 4
  %conv = trunc i32 %11 to i16
  %call7 = tail call i32 @ath6kl_wmi_set_rts_cmd(ptr noundef %9, i16 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.then6.cleanup_crit_edge, label %if.then9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.108) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then4.i, %if.then.i, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then9 ], [ -5, %wiphy_priv.exit.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_set_txpower(ptr noundef %wiphy, ptr nocapture noundef readnone %wdev, i32 noundef %type, i32 noundef %mbm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !348

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !349
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %div = sdiv i32 %mbm, 100
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.ath6kl_cfg80211_set_txpower, i32 noundef %type, i32 noundef %div) #12
  %call1 = tail call ptr @ath6kl_vif_first(ptr noundef %priv.i) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %ar1.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i18 = icmp eq i32 %4, 0
  br i1 %tobool.not.i18, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call1, i32 0, i32 6
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end4

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %type, label %sw.default [
    i32 0, label %if.end4.cleanup_crit_edge
    i32 1, label %sw.bb5
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb5:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i32 %div to i8
  %tx_pwr = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 48
  %9 = ptrtoint ptr %tx_pwr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %tx_pwr, align 4
  %wmi = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 7
  %10 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %call1, i32 0, i32 5
  %12 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_vif_idx, align 8
  %call7 = tail call i32 @ath6kl_wmi_set_tx_pwr_cmd(ptr noundef %11, i8 noundef zeroext %13, i8 noundef zeroext %conv) #12
  br label %cleanup

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__.ath6kl_cfg80211_set_txpower, i32 noundef %type) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb5, %if.end4.cleanup_crit_edge, %if.then4.i, %if.then.i, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ 0, %sw.bb5 ], [ -5, %wiphy_priv.exit.cleanup_crit_edge ], [ %type, %if.end4.cleanup_crit_edge ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_get_txpower(ptr noundef %wiphy, ptr nocapture noundef readnone %wdev, ptr nocapture noundef writeonly %dbm) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !348

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !349
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %call1 = tail call ptr @ath6kl_vif_first(ptr noundef %priv.i) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup68_crit_edge, label %if.end

wiphy_priv.exit.cleanup68_crit_edge:              ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

if.end:                                           ; preds = %wiphy_priv.exit
  %ar1.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i89 = icmp eq i32 %4, 0
  br i1 %tobool.not.i89, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup68

if.end.i:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.ath6kl_vif, ptr %call1, i32 0, i32 6
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end4

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup68

if.end4:                                          ; preds = %if.end.i
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  br i1 %tobool6.not, label %if.end4.if.end65_crit_edge, label %if.then7

if.end4.if.end65_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then7:                                         ; preds = %if.end4
  %tx_pwr = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 48
  %10 = ptrtoint ptr %tx_pwr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %tx_pwr, align 4
  %wmi = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 7
  %11 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %call1, i32 0, i32 5
  %13 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fw_vif_idx, align 8
  %call8 = tail call i32 @ath6kl_wmi_get_tx_pwr_cmd(ptr noundef %12, i8 noundef zeroext %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.111) #12
  br label %cleanup68

if.end10:                                         ; preds = %if.then7
  tail call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 1465) #12
  %15 = ptrtoint ptr %tx_pwr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_pwr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp15.not = icmp eq i8 %16, -1
  br i1 %cmp15.not, label %if.then26, label %if.end10.if.end58_crit_edge

if.end10.if.end58_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then26:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %17 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %event_wq = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 4, i32 85, i32 10
  %call28102 = call i32 @prepare_to_wait_event(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %18 = ptrtoint ptr %tx_pwr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_pwr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp32.not103.not = icmp eq i8 %19, -1
  br i1 %cmp32.not103.not, label %if.then26.if.end51_crit_edge, label %if.then26.for.end_crit_edge

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then26.if.end51_crit_edge:                     ; preds = %if.then26
  br label %if.end51

if.end51:                                         ; preds = %cleanup.if.end51_crit_edge, %if.then26.if.end51_crit_edge
  %__ret27.1106 = phi i32 [ %__ret27.1, %cleanup.if.end51_crit_edge ], [ 500, %if.then26.if.end51_crit_edge ]
  %call28105 = phi i32 [ %call28, %cleanup.if.end51_crit_edge ], [ %call28102, %if.then26.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28105)
  %tobool52.not = icmp eq i32 %call28105, 0
  br i1 %tobool52.not, label %cleanup, label %if.end51.__out_crit_edge

if.end51.__out_crit_edge:                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end51
  %call55 = call i32 @schedule_timeout(i32 noundef %__ret27.1106) #12
  %call28 = call i32 @prepare_to_wait_event(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %20 = ptrtoint ptr %tx_pwr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tx_pwr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp32.not = icmp eq i8 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool38.not = icmp eq i32 %call55, 0
  %spec.store.select70 = select i1 %tobool38.not, i32 1, i32 %call55
  %__ret27.1 = select i1 %cmp32.not, i32 %call55, i32 %spec.store.select70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret27.1)
  %tobool45.not = icmp eq i32 %__ret27.1, 0
  %not.cmp32.not = xor i1 %cmp32.not, true
  %22 = select i1 %not.cmp32.not, i1 true, i1 %tobool45.not
  br i1 %22, label %cleanup.for.end_crit_edge, label %cleanup.if.end51_crit_edge

cleanup.if.end51_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then26.for.end_crit_edge
  call void @finish_wait(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end51.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end58

if.end58:                                         ; preds = %__out, %if.end10.if.end58_crit_edge
  %23 = call i32 @llvm.read_register.i32(metadata !337) #12
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stack.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %31 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i90 = icmp eq i32 %31, 0
  br i1 %tobool.not.i90, label %signal_pending.exit, label %if.end58.if.then63_crit_edge, !prof !351

if.end58.if.then63_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

signal_pending.exit:                              ; preds = %if.end58
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %28, align 4
  %and1.i.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool62.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool62.not, label %signal_pending.exit.if.end65_crit_edge, label %signal_pending.exit.if.then63_crit_edge

signal_pending.exit.if.then63_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

signal_pending.exit.if.end65_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then63:                                        ; preds = %signal_pending.exit.if.then63_crit_edge, %if.end58.if.then63_crit_edge
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.112) #12
  br label %cleanup68

if.end65:                                         ; preds = %signal_pending.exit.if.end65_crit_edge, %if.end4.if.end65_crit_edge
  %tx_pwr66 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 48
  %34 = ptrtoint ptr %tx_pwr66 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tx_pwr66, align 4
  %conv67 = zext i8 %35 to i32
  %36 = ptrtoint ptr %dbm to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv67, ptr %dbm, align 4
  br label %cleanup68

cleanup68:                                        ; preds = %if.end65, %if.then63, %if.then9, %if.then4.i, %if.then.i, %wiphy_priv.exit.cleanup68_crit_edge
  %retval.0 = phi i32 [ -5, %if.then9 ], [ -4, %if.then63 ], [ 0, %if.end65 ], [ -5, %wiphy_priv.exit.cleanup68_crit_edge ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_tm_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_set_bitrate(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %addr, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %dev, i32 3328
  %4 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_vif_idx, align 8
  %call2 = tail call i32 @ath6kl_wmi_set_bitrate_mask(ptr noundef %3, i8 noundef zeroext %5, ptr noundef %mask) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_set_pmksa(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %pmksa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %netdev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %netdev, i32 3328
  %4 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_vif_idx, align 8
  %6 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmksa, align 4
  %pmkid = getelementptr inbounds %struct.cfg80211_pmksa, ptr %pmksa, i32 0, i32 1
  %8 = ptrtoint ptr %pmkid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmkid, align 4
  %call2 = tail call i32 @ath6kl_wmi_setpmkid_cmd(ptr noundef %3, i8 noundef zeroext %5, ptr noundef %7, ptr noundef %9, i1 noundef zeroext true) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_del_pmksa(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %pmksa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %netdev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %netdev, i32 3328
  %4 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_vif_idx, align 8
  %6 = ptrtoint ptr %pmksa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmksa, align 4
  %pmkid = getelementptr inbounds %struct.cfg80211_pmksa, ptr %pmksa, i32 0, i32 1
  %8 = ptrtoint ptr %pmkid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmkid, align 4
  %call2 = tail call i32 @ath6kl_wmi_setpmkid_cmd(ptr noundef %3, i8 noundef zeroext %5, ptr noundef %7, ptr noundef %9, i1 noundef zeroext false) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_flush_pmksa(ptr nocapture noundef readnone %wiphy, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %netdev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %flags = getelementptr i8, ptr %netdev, i32 3332
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %netdev, i32 3328
  %6 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_vif_idx, align 8
  %bssid = getelementptr i8, ptr %netdev, i32 3381
  %call3 = tail call i32 @ath6kl_wmi_setpmkid_cmd(ptr noundef %5, i8 noundef zeroext %7, ptr noundef %bssid, ptr noundef null, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_remain_on_channel(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef %wdev, ptr nocapture noundef readonly %chan, i32 noundef %duration, ptr nocapture noundef writeonly %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr i8, ptr %wdev, i32 964
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %ar.i = getelementptr i8, ptr %1, i32 3280
  %2 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar.i, align 8
  %last_roc_id = getelementptr i8, ptr %wdev, i32 1680
  %4 = ptrtoint ptr %last_roc_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_roc_id, align 8
  %inc = add i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp = icmp eq i32 %inc, 0
  %spec.select = select i1 %cmp, i32 1, i32 %inc
  %6 = ptrtoint ptr %last_roc_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %last_roc_id, align 8
  %conv = zext i32 %spec.select to i64
  %7 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %cookie, align 8
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %wdev, i32 1016
  %10 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_vif_idx, align 8
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %center_freq, align 4
  %call4 = tail call i32 @ath6kl_wmi_remain_on_chnl_cmd(ptr noundef %9, i8 noundef zeroext %11, i32 noundef %13, i32 noundef %duration) #12
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cancel_remain_on_channel(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef %wdev, i64 noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %last_roc_id = getelementptr i8, ptr %wdev, i32 1680
  %0 = ptrtoint ptr %last_roc_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_roc_id, align 8
  %conv = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %cookie)
  %cmp.not = icmp eq i64 %conv, %cookie
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ndev = getelementptr i8, ptr %wdev, i32 964
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %ar.i = getelementptr i8, ptr %3, i32 3280
  %4 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar.i, align 8
  %conv3 = trunc i64 %cookie to i32
  %last_cancel_roc_id = getelementptr i8, ptr %wdev, i32 1684
  %6 = ptrtoint ptr %last_cancel_roc_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv3, ptr %last_cancel_roc_id, align 4
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %5, i32 0, i32 7
  %7 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %wdev, i32 1016
  %9 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_vif_idx, align 8
  %call4 = tail call i32 @ath6kl_wmi_cancel_remain_on_chnl_cmd(ptr noundef %8, i8 noundef zeroext %10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_mgmt_tx(ptr nocapture noundef readnone %wiphy, ptr noundef %wdev, ptr nocapture noundef readonly %params, ptr nocapture noundef writeonly %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %wdev, i32 -8
  %ndev = getelementptr i8, ptr %wdev, i32 964
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %ar.i = getelementptr i8, ptr %1, i32 3280
  %2 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar.i, align 8
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params, align 4
  %buf3 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 3
  %6 = ptrtoint ptr %buf3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf3, align 4
  %len4 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 4
  %8 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len4, align 4
  %wait5 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 2
  %10 = ptrtoint ptr %wait5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wait5, align 4
  %no_cck6 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 5
  %12 = ptrtoint ptr %no_cck6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %no_cck6, align 4, !range !347
  %ch_hint = getelementptr i8, ptr %wdev, i32 1082
  %14 = ptrtoint ptr %ch_hint to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ch_hint, align 2
  %conv = zext i16 %15 to i32
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %center_freq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %freq.0 = phi i32 [ %17, %if.then ], [ %conv, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq.0)
  %cmp = icmp eq i32 %freq.0, 0
  br i1 %cmp, label %do.end, label %if.end32, !prof !348

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 3205, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %nw_type = getelementptr i8, ptr %wdev, i32 1068
  %18 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %19)
  %cmp34 = icmp eq i8 %19, 16
  br i1 %cmp34, label %land.lhs.true, label %if.end32.if.end46_crit_edge

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end32
  %flags = getelementptr i8, ptr %wdev, i32 1020
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool37.not = icmp eq i32 %and1.i, 0
  br i1 %tobool37.not, label %land.lhs.true.if.end46_crit_edge, label %land.lhs.true38

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true38:                                  ; preds = %land.lhs.true
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %7, align 2
  %24 = and i16 %23, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %24)
  %cmp.i = icmp eq i16 %24, 20480
  br i1 %cmp.i, label %land.lhs.true41, label %land.lhs.true38.if.end46_crit_edge

land.lhs.true38.if.end46_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %add.ptr.i114 = getelementptr i8, ptr %7, i32 %9
  %arrayidx.i = getelementptr %struct.ieee80211_mgmt, ptr %7, i32 0, i32 6, i32 1, i32 3
  %cmp.not.i = icmp ult ptr %add.ptr.i114, %arrayidx.i
  br i1 %cmp.not.i, label %land.lhs.true41.if.end46_crit_edge, label %land.lhs.true.i

land.lhs.true41.if.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true.i:                                  ; preds = %land.lhs.true41
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %26)
  %cmp4.i = icmp ugt i8 %26, 7
  br i1 %cmp4.i, label %if.then44, label %land.lhs.true.i.if.end46_crit_edge

land.lhs.true.i.if.end46_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true.i
  %27 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %cookie, align 8
  %ar1.i = getelementptr i8, ptr %wdev, i32 968
  %28 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ar1.i, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #15
  %cmp.i115 = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i115, label %if.then44.cleanup_crit_edge, label %if.end.i116

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i116:                                      ; preds = %if.then44
  %cmp358.i = icmp ult ptr %arrayidx.i, %add.ptr.i114
  br i1 %cmp358.i, label %while.body.preheader.i, label %if.end.i116.while.end.i_crit_edge

if.end.i116.while.end.i_crit_edge:                ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.end.i116
  %variable.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %7, i32 0, i32 6, i32 1, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end20.i.while.body.i_crit_edge, %while.body.preheader.i
  %add.ptr62.i = phi ptr [ %add.ptr.i117, %if.end20.i.while.body.i_crit_edge ], [ %arrayidx.i, %while.body.preheader.i ]
  %p2p_len.061.i = phi i32 [ %p2p_len.1.i, %if.end20.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %pos.059.i = phi ptr [ %add.ptr24.i, %if.end20.i.while.body.i_crit_edge ], [ %variable.i, %while.body.preheader.i ]
  %add.ptr4.i = getelementptr i8, ptr %pos.059.i, i32 2
  %30 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr62.i, align 1
  %conv.i = zext i8 %31 to i32
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %conv.i
  %cmp7.i = icmp ugt ptr %add.ptr5.i, %add.ptr.i114
  br i1 %cmp7.i, label %while.body.i.while.end.i_crit_edge, label %if.end10.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end10.i:                                       ; preds = %while.body.i
  %32 = ptrtoint ptr %pos.059.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pos.059.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %33)
  %cmp.i52.i = icmp eq i8 %33, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp4.i.i = icmp ugt i8 %31, 3
  %or.cond.i = select i1 %cmp.i52.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true6.i.i, label %if.end10.i.if.end20.i_crit_edge

if.end10.i.if.end20.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

land.lhs.true6.i.i:                               ; preds = %if.end10.i
  %34 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %35)
  %cmp9.i.i = icmp eq i8 %35, 80
  br i1 %cmp9.i.i, label %land.lhs.true11.i.i, label %land.lhs.true6.i.i.if.end20.i_crit_edge

land.lhs.true6.i.i.if.end20.i_crit_edge:          ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true6.i.i
  %arrayidx12.i.i = getelementptr i8, ptr %pos.059.i, i32 3
  %36 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %37)
  %cmp14.i.i = icmp eq i8 %37, 111
  br i1 %cmp14.i.i, label %land.lhs.true16.i.i, label %land.lhs.true11.i.i.if.end20.i_crit_edge

land.lhs.true11.i.i.if.end20.i_crit_edge:         ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

land.lhs.true16.i.i:                              ; preds = %land.lhs.true11.i.i
  %arrayidx17.i.i = getelementptr i8, ptr %pos.059.i, i32 4
  %38 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx17.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -102, i8 %39)
  %cmp19.i.i = icmp eq i8 %39, -102
  br i1 %cmp19.i.i, label %ath6kl_is_p2p_ie.exit.i, label %land.lhs.true16.i.i.if.end20.i_crit_edge

land.lhs.true16.i.i.if.end20.i_crit_edge:         ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

ath6kl_is_p2p_ie.exit.i:                          ; preds = %land.lhs.true16.i.i
  %arrayidx21.i.i = getelementptr i8, ptr %pos.059.i, i32 5
  %40 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx21.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %41)
  %cmp23.i.i = icmp eq i8 %41, 9
  br i1 %cmp23.i.i, label %if.then12.i, label %ath6kl_is_p2p_ie.exit.i.if.end20.i_crit_edge

ath6kl_is_p2p_ie.exit.i.if.end20.i_crit_edge:     ; preds = %ath6kl_is_p2p_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then12.i:                                      ; preds = %ath6kl_is_p2p_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr13.i = getelementptr i8, ptr %call9.i.i, i32 %p2p_len.061.i
  %add.i = add nuw nsw i32 %conv.i, 2
  %42 = call ptr @memcpy(ptr %add.ptr13.i, ptr %pos.059.i, i32 %add.i)
  %add19.i = add i32 %add.i, %p2p_len.061.i
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then12.i, %ath6kl_is_p2p_ie.exit.i.if.end20.i_crit_edge, %land.lhs.true16.i.i.if.end20.i_crit_edge, %land.lhs.true11.i.i.if.end20.i_crit_edge, %land.lhs.true6.i.i.if.end20.i_crit_edge, %if.end10.i.if.end20.i_crit_edge
  %p2p_len.1.i = phi i32 [ %add19.i, %if.then12.i ], [ %p2p_len.061.i, %ath6kl_is_p2p_ie.exit.i.if.end20.i_crit_edge ], [ %p2p_len.061.i, %land.lhs.true16.i.i.if.end20.i_crit_edge ], [ %p2p_len.061.i, %land.lhs.true11.i.i.if.end20.i_crit_edge ], [ %p2p_len.061.i, %land.lhs.true6.i.i.if.end20.i_crit_edge ], [ %p2p_len.061.i, %if.end10.i.if.end20.i_crit_edge ]
  %43 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr62.i, align 1
  %conv22.i = zext i8 %44 to i32
  %add23.i = add nuw nsw i32 %conv22.i, 2
  %add.ptr24.i = getelementptr i8, ptr %pos.059.i, i32 %add23.i
  %add.ptr.i117 = getelementptr i8, ptr %add.ptr24.i, i32 1
  %cmp3.i = icmp ult ptr %add.ptr.i117, %add.ptr.i114
  br i1 %cmp3.i, label %if.end20.i.while.body.i_crit_edge, label %if.end20.i.while.end.i_crit_edge

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end20.i.while.body.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %if.end20.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %if.end.i116.while.end.i_crit_edge
  %p2p_len.0.lcssa.i = phi i32 [ 0, %if.end.i116.while.end.i_crit_edge ], [ %p2p_len.1.i, %if.end20.i.while.end.i_crit_edge ], [ %p2p_len.061.i, %while.body.i.while.end.i_crit_edge ]
  %wmi.i = getelementptr inbounds %struct.ath6kl, ptr %29, i32 0, i32 7
  %45 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wmi.i, align 4
  %fw_vif_idx.i = getelementptr i8, ptr %wdev, i32 1016
  %47 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %fw_vif_idx.i, align 8
  %da.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %7, i32 0, i32 2
  %conv26.i = trunc i32 %p2p_len.0.lcssa.i to i16
  %call27.i = tail call i32 @ath6kl_wmi_send_probe_response_cmd(ptr noundef %46, i8 noundef zeroext %48, i32 noundef %freq.0, ptr noundef %da.i, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv26.i) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true.i.if.end46_crit_edge, %land.lhs.true41.if.end46_crit_edge, %land.lhs.true38.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end32.if.end46_crit_edge
  %send_action_id = getelementptr i8, ptr %wdev, i32 1688
  %49 = ptrtoint ptr %send_action_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %send_action_id, align 8
  %inc = add i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp47 = icmp eq i32 %50, 0
  %spec.select = select i1 %cmp47, i32 2, i32 %inc
  %spec.select113 = select i1 %cmp47, i32 1, i32 %50
  %51 = ptrtoint ptr %send_action_id to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select, ptr %send_action_id, align 8
  %conv53 = zext i32 %spec.select113 to i64
  %52 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv53, ptr %cookie, align 8
  %53 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %54)
  %cmp56 = icmp eq i8 %54, 16
  br i1 %cmp56, label %if.then58, label %if.end46.if.end65_crit_edge

if.end46.if.end65_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then58:                                        ; preds = %if.end46
  %ar1.i119 = getelementptr i8, ptr %wdev, i32 968
  %55 = ptrtoint ptr %ar1.i119 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ar1.i119, align 8
  %da.i120 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %7, i32 0, i32 2
  %57 = ptrtoint ptr %da.i120 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %da.i120, align 4
  %59 = and i32 %58, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i.not.i = icmp eq i32 %59, 0
  br i1 %tobool.i.not.i, label %if.end.i121, label %if.then58.if.end65_crit_edge

if.then58.if.end65_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.end.i121:                                      ; preds = %if.then58
  %call4.i = tail call ptr @ath6kl_find_sta(ptr noundef %add.ptr.i, ptr noundef %da.i120) #12
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end.i121.if.end65_crit_edge, label %if.end6.i

if.end.i121.if.end65_crit_edge:                   ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.end6.i:                                        ; preds = %if.end.i121
  %60 = ptrtoint ptr %call4.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %call4.i, align 4
  %conv.i122 = zext i16 %61 to i32
  %and.i = and i32 %conv.i122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end65_crit_edge, label %if.then8.i

if.end6.i.if.end65_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then8.i:                                       ; preds = %if.end6.i
  %and11.i = and i32 %conv.i122, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end8.i.i150, label %if.end39.i

if.end8.i.i150:                                   ; preds = %if.then8.i
  %add.i123 = add i32 %9, 28
  %call9.i.i149 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i123, i32 noundef 3264) #15
  %tobool15.not.i = icmp eq ptr %call9.i.i149, null
  br i1 %tobool15.not.i, label %if.end8.i.i150.if.end65_crit_edge, label %if.end17.i

if.end8.i.i150.if.end65_crit_edge:                ; preds = %if.end8.i.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.end17.i:                                       ; preds = %if.end8.i.i150
  %62 = ptrtoint ptr %call9.i.i149 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %call9.i.i149, ptr %call9.i.i149, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i149, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call9.i.i149, ptr %prev.i.i, align 4
  %id18.i = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %call9.i.i149, i32 0, i32 3
  %64 = ptrtoint ptr %id18.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %spec.select113, ptr %id18.i, align 16
  %freq19.i = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %call9.i.i149, i32 0, i32 1
  %65 = ptrtoint ptr %freq19.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %freq.0, ptr %freq19.i, align 8
  %wait20.i = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %call9.i.i149, i32 0, i32 2
  %66 = ptrtoint ptr %wait20.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %11, ptr %wait20.i, align 4
  %len21.i = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %call9.i.i149, i32 0, i32 5
  %67 = ptrtoint ptr %len21.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %9, ptr %len21.i, align 8
  %no_cck23.i = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %call9.i.i149, i32 0, i32 4
  %68 = ptrtoint ptr %no_cck23.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %13, ptr %no_cck23.i, align 4
  %buf25.i = getelementptr inbounds %struct.ath6kl_mgmt_buff, ptr %call9.i.i149, i32 0, i32 6
  %69 = call ptr @memcpy(ptr %buf25.i, ptr %7, i32 %9)
  %psq_lock.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call4.i, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock.i) #12
  %psq.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call4.i, i32 0, i32 7
  %70 = ptrtoint ptr %psq.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %psq.i, align 4
  %cmp.i83.not.i = icmp eq ptr %71, %psq.i
  br i1 %cmp.i83.not.i, label %land.rhs.i, label %if.end38.critedge.i

land.rhs.i:                                       ; preds = %if.end17.i
  %mgmt_psq_len.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call4.i, i32 0, i32 10
  %72 = ptrtoint ptr %mgmt_psq_len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mgmt_psq_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i153 = icmp eq i32 %73, 0
  %mgmt_psq.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call4.i, i32 0, i32 9
  %prev.i84.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call4.i, i32 0, i32 9, i32 1
  %74 = ptrtoint ptr %prev.i84.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i84.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i149, ptr noundef %75, ptr noundef %mgmt_psq.i) #12
  br i1 %call.i.i.i, label %if.end.i.i85.i, label %land.rhs.i.list_add_tail.exit.i_crit_edge

land.rhs.i.list_add_tail.exit.i_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i85.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %prev.i84.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call9.i.i149, ptr %prev.i84.i, align 4
  %77 = ptrtoint ptr %call9.i.i149 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %mgmt_psq.i, ptr %call9.i.i149, align 128
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %call9.i.i149, ptr %75, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i85.i, %land.rhs.i.list_add_tail.exit.i_crit_edge
  %80 = ptrtoint ptr %mgmt_psq_len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mgmt_psq_len.i, align 4
  %inc.i = add i32 %81, 1
  store i32 %inc.i, ptr %mgmt_psq_len.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock.i) #12
  br i1 %cmp.i153, label %if.then35.i, label %list_add_tail.exit.i.cleanup_crit_edge

list_add_tail.exit.i.cleanup_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %wmi.i154 = getelementptr inbounds %struct.ath6kl, ptr %56, i32 0, i32 7
  %82 = ptrtoint ptr %wmi.i154 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wmi.i154, align 4
  %fw_vif_idx.i155 = getelementptr i8, ptr %wdev, i32 1016
  %84 = ptrtoint ptr %fw_vif_idx.i155 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %fw_vif_idx.i155, align 8
  %aid.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call4.i, i32 0, i32 2
  %86 = ptrtoint ptr %aid.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %aid.i, align 4
  %conv36.i = zext i8 %87 to i16
  %call37.i = tail call i32 @ath6kl_wmi_set_pvb_cmd(ptr noundef %83, i8 noundef zeroext %85, i16 noundef zeroext %conv36.i, i1 noundef zeroext true) #12
  br label %cleanup

if.end38.critedge.i:                              ; preds = %if.end17.i
  %mgmt_psq.c.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call4.i, i32 0, i32 9
  %prev.i86.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call4.i, i32 0, i32 9, i32 1
  %88 = ptrtoint ptr %prev.i86.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i86.i, align 4
  %call.i.i87.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i149, ptr noundef %89, ptr noundef %mgmt_psq.c.i) #12
  br i1 %call.i.i87.i, label %if.end.i.i89.i, label %if.end38.critedge.i.list_add_tail.exit90.i_crit_edge

if.end38.critedge.i.list_add_tail.exit90.i_crit_edge: ; preds = %if.end38.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit90.i

if.end.i.i89.i:                                   ; preds = %if.end38.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %prev.i86.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call9.i.i149, ptr %prev.i86.i, align 4
  %91 = ptrtoint ptr %call9.i.i149 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %mgmt_psq.c.i, ptr %call9.i.i149, align 128
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev.i.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %call9.i.i149, ptr %89, align 4
  br label %list_add_tail.exit90.i

list_add_tail.exit90.i:                           ; preds = %if.end.i.i89.i, %if.end38.critedge.i.list_add_tail.exit90.i_crit_edge
  %mgmt_psq_len32.c.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call4.i, i32 0, i32 10
  %94 = ptrtoint ptr %mgmt_psq_len32.c.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mgmt_psq_len32.c.i, align 4
  %inc.c.i = add i32 %95, 1
  store i32 %inc.c.i, ptr %mgmt_psq_len32.c.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock.i) #12
  br label %cleanup

if.end39.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %psq_lock40.i = getelementptr inbounds %struct.ath6kl_sta, ptr %call4.i, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %psq_lock40.i) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %psq_lock40.i) #12
  br label %if.end65

if.end65:                                         ; preds = %if.end39.i, %if.end8.i.i150.if.end65_crit_edge, %if.end6.i.if.end65_crit_edge, %if.end.i121.if.end65_crit_edge, %if.then58.if.end65_crit_edge, %if.end46.if.end65_crit_edge
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 7
  %96 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %wdev, i32 1016
  %98 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %fw_vif_idx, align 8
  %conv66 = trunc i32 %9 to i16
  %100 = zext i8 %13 to i32
  %call69 = tail call i32 @ath6kl_wmi_send_mgmt_cmd(ptr noundef %97, i8 noundef zeroext %99, i32 noundef %spec.select113, i32 noundef %freq.0, i32 noundef %11, ptr noundef %7, i16 noundef zeroext %conv66, i32 noundef %100) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %list_add_tail.exit90.i, %if.then35.i, %list_add_tail.exit.i.cleanup_crit_edge, %while.end.i, %if.then44.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call69, %if.end65 ], [ %call27.i, %while.end.i ], [ -12, %if.then44.cleanup_crit_edge ], [ 0, %list_add_tail.exit.i.cleanup_crit_edge ], [ 0, %if.then35.i ], [ 0, %list_add_tail.exit90.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_set_power_mgmt(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, i1 noundef zeroext %pmgmt, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %conv = zext i1 %pmgmt to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.113, ptr noundef nonnull @__func__.ath6kl_cfg80211_set_power_mgmt, i32 noundef %conv, i32 noundef %timeout) #12
  %2 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar.i, align 8
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 75
  %4 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr i8, ptr %dev, i32 3332
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %.str.114..str.115 = select i1 %pmgmt, ptr @.str.114, ptr @.str.115
  %. = select i1 %pmgmt, i8 1, i8 2
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull %.str.114..str.115, ptr noundef nonnull @__func__.ath6kl_cfg80211_set_power_mgmt) #12
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %dev, i32 3328
  %12 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_vif_idx, align 8
  %call8 = tail call i32 @ath6kl_wmi_powermode_cmd(ptr noundef %11, i8 noundef zeroext %13, i8 noundef zeroext %.) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.116) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ -5, %if.then10 ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %if.then4.i ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_set_txe_config(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef %dev, i32 noundef %rate, i32 noundef %pkts, i32 noundef %intvl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %nw_type = getelementptr i8, ptr %dev, i32 3380
  %2 = ptrtoint ptr %nw_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 87
  %4 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %fw_capabilities, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sme_state = getelementptr i8, ptr %dev, i32 3984
  %7 = ptrtoint ptr %sme_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sme_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp4.not = icmp eq i32 %8, 2
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %txe_intvl = getelementptr i8, ptr %dev, i32 4012
  %9 = ptrtoint ptr %txe_intvl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %intvl, ptr %txe_intvl, align 4
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %dev, i32 3328
  %12 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_vif_idx, align 8
  %call8 = tail call i32 @ath6kl_wmi_set_txe_notify(ptr noundef %11, i8 noundef zeroext %13, i32 noundef %rate, i32 noundef %pkts, i32 noundef %intvl) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -107, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath6kl_update_mgmt_frame_registrations(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef writeonly %wdev, ptr nocapture noundef readonly %upd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %interface_stypes = getelementptr inbounds %struct.mgmt_frame_regs, ptr %upd, i32 0, i32 1
  %0 = ptrtoint ptr %interface_stypes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface_stypes, align 4
  %probe_req_report = getelementptr i8, ptr %wdev, i32 1692
  %2 = trunc i32 %1 to i8
  %3 = lshr i8 %2, 4
  %4 = and i8 %3, 1
  %5 = ptrtoint ptr %probe_req_report to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %probe_req_report, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_get_antenna(ptr noundef readonly %wiphy, ptr nocapture noundef writeonly %tx_ant, ptr nocapture noundef writeonly %rx_ant) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !348

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !349
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %tx_ant1 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 4, i32 77
  %0 = ptrtoint ptr %tx_ant1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_ant1, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %tx_ant to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %tx_ant, align 4
  %rx_ant3 = getelementptr inbounds %struct.ath6kl, ptr %priv.i, i32 0, i32 67, i32 13
  %3 = ptrtoint ptr %rx_ant3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rx_ant3, align 1
  %conv4 = zext i8 %4 to i32
  %5 = ptrtoint ptr %rx_ant to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv4, ptr %rx_ant, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_sscan_start(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr nocapture noundef readonly %request) #0 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar.i, align 8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %n_match_sets2 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 9
  %2 = ptrtoint ptr %n_match_sets2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_match_sets2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %match_sets = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 8
  %4 = ptrtoint ptr %match_sets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %match_sets, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp ne i8 %7, 0
  %spec.select = zext i1 %tobool.not to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %n_match_sets.0 = phi i32 [ %3, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %state = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp3.not = icmp eq i32 %9, 1
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sme_state = getelementptr i8, ptr %dev, i32 3984
  %10 = ptrtoint ptr %sme_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sme_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6.not = icmp eq i32 %11, 0
  br i1 %cmp6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #12
  %12 = getelementptr inbounds i8, ptr %info.i, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -65025, ptr %12, align 8
  %14 = call ptr @memset(ptr %info.i, i32 0, i32 14)
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ath6kl_cfg80211_scan_complete_event, ptr noundef nonnull @.str.7) #12
  %scan_req.i = getelementptr i8, ptr %dev, i32 3980
  %15 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scan_req.i, align 4
  %tobool5.not.i = icmp eq ptr %16, null
  br i1 %tobool5.not.i, label %if.end8.ath6kl_cfg80211_scan_complete_event.exit_crit_edge, label %if.end.i

if.end8.ath6kl_cfg80211_scan_complete_event.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_cfg80211_scan_complete_event.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @cfg80211_scan_done(ptr noundef nonnull %16, ptr noundef nonnull %info.i) #12
  %17 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %scan_req.i, align 4
  br label %ath6kl_cfg80211_scan_complete_event.exit

ath6kl_cfg80211_scan_complete_event.exit:         ; preds = %if.end.i, %if.end8.ath6kl_cfg80211_scan_complete_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #12
  %ssids = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 1
  %18 = ptrtoint ptr %ssids to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ssids, align 8
  %n_ssids = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 2
  %20 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_ssids, align 4
  %match_sets9 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 8
  %22 = ptrtoint ptr %match_sets9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %match_sets9, align 4
  %call10 = call fastcc i32 @ath6kl_set_probed_ssids(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %19, i32 noundef %21, ptr noundef %23, i32 noundef %n_match_sets.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %ath6kl_cfg80211_scan_complete_event.exit.cleanup_crit_edge, label %if.end13

ath6kl_cfg80211_scan_complete_event.exit.cleanup_crit_edge: ; preds = %ath6kl_cfg80211_scan_complete_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %ath6kl_cfg80211_scan_complete_event.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_match_sets.0)
  %tobool14.not = icmp eq i32 %n_match_sets.0, 0
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr i8, ptr %dev, i32 3328
  %26 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fw_vif_idx, align 8
  br i1 %tobool14.not, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  %call16 = call i32 @ath6kl_wmi_bssfilter_cmd(ptr noundef %25, i8 noundef zeroext %27, i8 noundef zeroext 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then15.cleanup_crit_edge, label %if.then15.if.end26_crit_edge

if.then15.if.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end13
  %call22 = call i32 @ath6kl_wmi_bssfilter_cmd(ptr noundef %25, i8 noundef zeroext %27, i8 noundef zeroext 7, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.else.cleanup_crit_edge, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %if.then15.if.end26_crit_edge
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 87
  %28 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %fw_capabilities, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool28.not = icmp eq i32 %30, 0
  br i1 %tobool28.not, label %if.end26.if.end46_crit_edge, label %if.then29

if.end26.if.end46_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then29:                                        ; preds = %if.end26
  %min_rssi_thold = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 10
  %31 = ptrtoint ptr %min_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %min_rssi_thold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -299, i32 %32)
  %cmp30 = icmp slt i32 %32, -299
  %33 = call i32 @llvm.smax.i32(i32 %32, i32 -127)
  %34 = trunc i32 %33 to i8
  %rssi_thold.0 = select i1 %cmp30, i8 0, i8 %34
  %wmi40 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %wmi40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wmi40, align 4
  %fw_vif_idx41 = getelementptr i8, ptr %dev, i32 3328
  %37 = ptrtoint ptr %fw_vif_idx41 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fw_vif_idx41, align 8
  %call42 = call i32 @ath6kl_wmi_set_rssi_filter_cmd(ptr noundef %36, i8 noundef zeroext %38, i8 noundef signext %rssi_thold.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then29.if.end46_crit_edge, label %if.then44

if.then29.if.end46_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then44:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.117) #12
  br label %cleanup

if.end46:                                         ; preds = %if.then29.if.end46_crit_edge, %if.end26.if.end46_crit_edge
  %scan_plans = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 12
  %39 = ptrtoint ptr %scan_plans to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %scan_plans, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %conv51 = and i32 %42, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv51)
  %cmp52 = icmp eq i32 %conv51, 0
  %phi.cast = trunc i32 %42 to i16
  %cond = select i1 %cmp52, i16 1, i16 %phi.cast
  %wmi57 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %wmi57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wmi57, align 4
  %fw_vif_idx58 = getelementptr i8, ptr %dev, i32 3328
  %45 = ptrtoint ptr %fw_vif_idx58 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %fw_vif_idx58, align 8
  %bg_scan_period = getelementptr i8, ptr %dev, i32 4016
  %47 = ptrtoint ptr %bg_scan_period to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %bg_scan_period, align 8
  %call59 = call i32 @ath6kl_wmi_scanparams_cmd(ptr noundef %44, i8 noundef zeroext %46, i16 noundef zeroext %cond, i16 noundef zeroext %cond, i16 noundef zeroext %48, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, i16 noundef zeroext 0) #12
  %49 = ptrtoint ptr %wmi57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wmi57, align 4
  %51 = ptrtoint ptr %fw_vif_idx58 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %fw_vif_idx58, align 8
  %ie = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 5
  %53 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ie, align 8
  %ie_len = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 6
  %55 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ie_len, align 4
  %conv62 = trunc i32 %56 to i8
  %call63 = call i32 @ath6kl_wmi_set_appie_cmd(ptr noundef %50, i8 noundef zeroext %52, i8 noundef zeroext 1, ptr noundef %54, i8 noundef zeroext %conv62) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.118, i32 noundef %call63) #12
  br label %cleanup

if.end66:                                         ; preds = %if.end46
  %57 = ptrtoint ptr %wmi57 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wmi57, align 4
  %59 = ptrtoint ptr %fw_vif_idx58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fw_vif_idx58, align 8
  %call69 = call i32 @ath6kl_wmi_enable_sched_scan_cmd(ptr noundef %58, i8 noundef zeroext %60, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr i8, ptr %dev, i32 3332
  call void @_set_bit(i32 noundef 12, ptr noundef %flags) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end66.cleanup_crit_edge, %if.then65, %if.then44, %if.else.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %ath6kl_cfg80211_scan_complete_event.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.then44 ], [ %call63, %if.then65 ], [ 0, %if.end72 ], [ -5, %if.end.cleanup_crit_edge ], [ -16, %if.end5.cleanup_crit_edge ], [ %call10, %ath6kl_cfg80211_scan_complete_event.exit.cleanup_crit_edge ], [ %call16, %if.then15.cleanup_crit_edge ], [ %call22, %if.else.cleanup_crit_edge ], [ %call69, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_cfg80211_sscan_stop(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, i64 noundef %reqid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1.i = getelementptr i8, ptr %dev, i32 3280
  %0 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1.i, align 8
  %flags.i = getelementptr i8, ptr %dev, i32 3332
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.__ath6kl_cfg80211_sscan_stop.exit_crit_edge, label %if.end.i

entry.__ath6kl_cfg80211_sscan_stop.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ath6kl_cfg80211_sscan_stop.exit

if.end.i:                                         ; preds = %entry
  %sched_scan_timer.i = getelementptr i8, ptr %dev, i32 3932
  %call2.i = tail call i32 @del_timer_sync(ptr noundef %sched_scan_timer.i) #12
  %state.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp.i = icmp eq i32 %3, 7
  br i1 %cmp.i, label %if.end.i.__ath6kl_cfg80211_sscan_stop.exit_crit_edge, label %if.end4.i

if.end.i.__ath6kl_cfg80211_sscan_stop.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ath6kl_cfg80211_sscan_stop.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %wmi.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wmi.i, align 4
  %fw_vif_idx.i = getelementptr i8, ptr %dev, i32 3328
  %6 = ptrtoint ptr %fw_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_vif_idx.i, align 8
  %call5.i = tail call i32 @ath6kl_wmi_enable_sched_scan_cmd(ptr noundef %5, i8 noundef zeroext %7, i1 noundef zeroext false) #12
  br label %__ath6kl_cfg80211_sscan_stop.exit

__ath6kl_cfg80211_sscan_stop.exit:                ; preds = %if.end4.i, %if.end.i.__ath6kl_cfg80211_sscan_stop.exit_crit_edge, %entry.__ath6kl_cfg80211_sscan_stop.exit_crit_edge
  %. = phi i32 [ -5, %entry.__ath6kl_cfg80211_sscan_stop.exit_crit_edge ], [ 0, %if.end.i.__ath6kl_cfg80211_sscan_stop.exit_crit_edge ], [ 0, %if.end4.i ]
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_recovery_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_recovery_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_add_krk_cmd(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_addkey_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_deletekey_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_set_ies(ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 8
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %4 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_vif_idx, align 8
  %beacon_ies = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %beacon_ies to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %beacon_ies, align 4
  %beacon_ies_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 12
  %8 = ptrtoint ptr %beacon_ies_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %beacon_ies_len, align 4
  %conv = trunc i32 %9 to i8
  %call = tail call i32 @ath6kl_wmi_set_appie_cmd(ptr noundef %3, i8 noundef zeroext %5, i8 noundef zeroext 0, ptr noundef %7, i8 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %proberesp_ies = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 3
  %10 = ptrtoint ptr %proberesp_ies to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proberesp_ies, align 4
  %proberesp_ies_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 13
  %12 = ptrtoint ptr %proberesp_ies_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %proberesp_ies_len, align 4
  %14 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ar1, align 8
  %tobool.not.i = icmp eq ptr %11, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i = icmp eq i32 %13, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %if.end.ath6kl_set_ap_probe_resp_ies.exit_crit_edge, label %if.end8.i.i

if.end.ath6kl_set_ap_probe_resp_ies.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_set_ap_probe_resp_ies.exit

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #15
  %cmp.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i, label %if.end8.i.i.cleanup_crit_edge, label %while.cond.preheader.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader.i:                           ; preds = %if.end8.i.i
  %add.ptr4.i = getelementptr i8, ptr %11, i32 %13
  %add.ptr56.i = getelementptr i8, ptr %11, i32 1
  %cmp557.i = icmp ult ptr %add.ptr56.i, %add.ptr4.i
  br i1 %cmp557.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge

while.cond.preheader.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_set_ap_probe_resp_ies.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end22.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %add.ptr62.i = phi ptr [ %add.ptr.i, %if.end22.i.while.body.i_crit_edge ], [ %add.ptr56.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %len.061.i = phi i32 [ %len.1.i, %if.end22.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %pos.058.i = phi ptr [ %add.ptr26.i, %if.end22.i.while.body.i_crit_edge ], [ %11, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add.ptr6.i = getelementptr i8, ptr %pos.058.i, i32 2
  %16 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr62.i, align 1
  %conv.i = zext i8 %17 to i32
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i, i32 %conv.i
  %cmp9.i = icmp ugt ptr %add.ptr7.i, %add.ptr4.i
  br i1 %cmp9.i, label %while.body.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge, label %if.end12.i

while.body.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_set_ap_probe_resp_ies.exit

if.end12.i:                                       ; preds = %while.body.i
  %18 = ptrtoint ptr %pos.058.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pos.058.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %19)
  %cmp.i54.i = icmp eq i8 %19, -35
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp4.i.i = icmp ugt i8 %17, 3
  %or.cond55.i = select i1 %cmp.i54.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond55.i, label %land.lhs.true6.i.i, label %if.end12.i.if.then14.i_crit_edge

if.end12.i.if.then14.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

land.lhs.true6.i.i:                               ; preds = %if.end12.i
  %20 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %21)
  %cmp9.i.i = icmp eq i8 %21, 80
  br i1 %cmp9.i.i, label %land.lhs.true11.i.i, label %land.lhs.true6.i.i.if.then14.i_crit_edge

land.lhs.true6.i.i.if.then14.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true6.i.i
  %arrayidx12.i.i = getelementptr i8, ptr %pos.058.i, i32 3
  %22 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %23)
  %cmp14.i.i = icmp eq i8 %23, 111
  br i1 %cmp14.i.i, label %land.lhs.true16.i.i, label %land.lhs.true11.i.i.if.then14.i_crit_edge

land.lhs.true11.i.i.if.then14.i_crit_edge:        ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

land.lhs.true16.i.i:                              ; preds = %land.lhs.true11.i.i
  %arrayidx17.i.i = getelementptr i8, ptr %pos.058.i, i32 4
  %24 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx17.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -102, i8 %25)
  %cmp19.i.i = icmp eq i8 %25, -102
  br i1 %cmp19.i.i, label %ath6kl_is_p2p_ie.exit.i, label %land.lhs.true16.i.i.if.then14.i_crit_edge

land.lhs.true16.i.i.if.then14.i_crit_edge:        ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

ath6kl_is_p2p_ie.exit.i:                          ; preds = %land.lhs.true16.i.i
  %arrayidx21.i.i = getelementptr i8, ptr %pos.058.i, i32 5
  %26 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx21.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %27)
  %cmp23.i.i = icmp eq i8 %27, 9
  br i1 %cmp23.i.i, label %ath6kl_is_p2p_ie.exit.i.if.end22.i_crit_edge, label %ath6kl_is_p2p_ie.exit.i.if.then14.i_crit_edge

ath6kl_is_p2p_ie.exit.i.if.then14.i_crit_edge:    ; preds = %ath6kl_is_p2p_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

ath6kl_is_p2p_ie.exit.i.if.end22.i_crit_edge:     ; preds = %ath6kl_is_p2p_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then14.i:                                      ; preds = %ath6kl_is_p2p_ie.exit.i.if.then14.i_crit_edge, %land.lhs.true16.i.i.if.then14.i_crit_edge, %land.lhs.true11.i.i.if.then14.i_crit_edge, %land.lhs.true6.i.i.if.then14.i_crit_edge, %if.end12.i.if.then14.i_crit_edge
  %add.ptr15.i = getelementptr i8, ptr %call9.i.i, i32 %len.061.i
  %add.i = add nuw nsw i32 %conv.i, 2
  %28 = call ptr @memcpy(ptr %add.ptr15.i, ptr %pos.058.i, i32 %add.i)
  %add21.i = add i32 %add.i, %len.061.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then14.i, %ath6kl_is_p2p_ie.exit.i.if.end22.i_crit_edge
  %len.1.i = phi i32 [ %len.061.i, %ath6kl_is_p2p_ie.exit.i.if.end22.i_crit_edge ], [ %add21.i, %if.then14.i ]
  %29 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr62.i, align 1
  %conv24.i = zext i8 %30 to i32
  %add25.i = add nuw nsw i32 %conv24.i, 2
  %add.ptr26.i = getelementptr i8, ptr %pos.058.i, i32 %add25.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr26.i, i32 1
  %cmp5.i = icmp ult ptr %add.ptr.i, %add.ptr4.i
  br i1 %cmp5.i, label %if.end22.i.while.body.i_crit_edge, label %if.end22.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge

if.end22.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath6kl_set_ap_probe_resp_ies.exit

if.end22.i.while.body.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

ath6kl_set_ap_probe_resp_ies.exit:                ; preds = %if.end22.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge, %while.body.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge, %while.cond.preheader.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge, %if.end.ath6kl_set_ap_probe_resp_ies.exit_crit_edge
  %buf.0.i = phi ptr [ null, %if.end.ath6kl_set_ap_probe_resp_ies.exit_crit_edge ], [ %call9.i.i, %while.cond.preheader.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge ], [ %call9.i.i, %if.end22.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge ], [ %call9.i.i, %while.body.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge ]
  %len.2.i = phi i32 [ 0, %if.end.ath6kl_set_ap_probe_resp_ies.exit_crit_edge ], [ 0, %while.cond.preheader.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge ], [ %len.061.i, %while.body.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge ], [ %len.1.i, %if.end22.i.ath6kl_set_ap_probe_resp_ies.exit_crit_edge ]
  %wmi.i = getelementptr inbounds %struct.ath6kl, ptr %15, i32 0, i32 7
  %31 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wmi.i, align 4
  %33 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fw_vif_idx, align 8
  %conv28.i = trunc i32 %len.2.i to i8
  %call29.i = tail call i32 @ath6kl_wmi_set_appie_cmd(ptr noundef %32, i8 noundef zeroext %34, i8 noundef zeroext 2, ptr noundef %buf.0.i, i8 noundef zeroext %conv28.i) #12
  tail call void @kfree(ptr noundef %buf.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool3.not = icmp eq i32 %call29.i, 0
  br i1 %tobool3.not, label %if.end5, label %ath6kl_set_ap_probe_resp_ies.exit.cleanup_crit_edge

ath6kl_set_ap_probe_resp_ies.exit.cleanup_crit_edge: ; preds = %ath6kl_set_ap_probe_resp_ies.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %ath6kl_set_ap_probe_resp_ies.exit
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wmi, align 4
  %37 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fw_vif_idx, align 8
  %assocresp_ies = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 4
  %39 = ptrtoint ptr %assocresp_ies to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %assocresp_ies, align 4
  %assocresp_ies_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 14
  %41 = ptrtoint ptr %assocresp_ies_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %assocresp_ies_len, align 4
  %conv8 = trunc i32 %42 to i8
  %call9 = tail call i32 @ath6kl_wmi_set_appie_cmd(ptr noundef %36, i8 noundef zeroext %38, i8 noundef zeroext 4, ptr noundef %40, i8 noundef zeroext %conv8) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %ath6kl_set_ap_probe_resp_ies.exit.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call29.i, %ath6kl_set_ap_probe_resp_ies.exit.cleanup_crit_edge ], [ %call9, %if.end5 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_ap_set_beacon_intvl_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_ap_set_dtim_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_ap_hidden_ssid(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_set_auth_type(ptr nocapture noundef writeonly %vif, i32 noundef %auth_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.ath6kl_set_auth_type, i32 noundef %auth_type) #12
  %0 = zext i32 %auth_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %auth_type, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb3
    i32 8, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dot11_auth_mode = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 9
  %1 = ptrtoint ptr %dot11_auth_mode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %dot11_auth_mode, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dot11_auth_mode2 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 9
  %2 = ptrtoint ptr %dot11_auth_mode2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %dot11_auth_mode2, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dot11_auth_mode4 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 9
  %3 = ptrtoint ptr %dot11_auth_mode4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %dot11_auth_mode4, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dot11_auth_mode6 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 9
  %4 = ptrtoint ptr %dot11_auth_mode6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %dot11_auth_mode6, align 4
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.ath6kl_set_auth_type, i32 noundef %auth_type) #12
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -524, %sw.default ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_set_cipher(ptr nocapture noundef writeonly %vif, i32 noundef %cipher, i1 noundef zeroext %ucast) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prwise_crypto = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 11
  %grp_crypto = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 13
  %cond = select i1 %ucast, ptr %prwise_crypto, ptr %grp_crypto
  %prwise_crypto_len = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 12
  %grp_crypto_len = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 14
  %cond5 = select i1 %ucast, ptr %prwise_crypto_len, ptr %grp_crypto_len
  %conv = zext i1 %ucast to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.ath6kl_set_cipher, i32 noundef %cipher, i32 noundef %conv) #12
  %0 = zext i32 %cipher to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %cipher, label %sw.default [
    i32 0, label %sw.bb
    i32 1027073, label %sw.bb7
    i32 1027077, label %sw.bb8
    i32 1027074, label %sw.bb9
    i32 1027076, label %sw.bb10
    i32 1339905, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %cond to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %cond, align 1
  %2 = ptrtoint ptr %cond5 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %cond5, align 1
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %cond to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %cond, align 1
  %4 = ptrtoint ptr %cond5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %cond5, align 1
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %cond to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %cond, align 1
  %6 = ptrtoint ptr %cond5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 13, ptr %cond5, align 1
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %cond to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %cond, align 1
  %8 = ptrtoint ptr %cond5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %cond5, align 1
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %cond to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %cond, align 1
  %10 = ptrtoint ptr %cond5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cond5, align 1
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %cond to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %cond, align 1
  %12 = ptrtoint ptr %cond5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %cond5, align 1
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.86, i32 noundef %cipher) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_ap_set_apsd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_inact_period(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_set_htcap(ptr noundef %vif, i32 noundef %band, i1 noundef zeroext %ht_enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 25, i32 %band
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2, !range !347
  %2 = zext i1 %ht_enable to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %ht_enable, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %cmp9 = icmp eq i32 %band, 0
  %conv11 = select i1 %cmp9, i16 32, i16 98
  %cap_info = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 25, i32 %band, i32 2
  %4 = ptrtoint ptr %cap_info to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv11, ptr %cap_info, align 2
  %ampdu_factor = getelementptr %struct.ath6kl_vif, ptr %vif, i32 0, i32 25, i32 %band, i32 1
  %5 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %ampdu_factor, align 1
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %arrayidx, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %ar = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 3
  %7 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ar, align 8
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wmi, align 4
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %11 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fw_vif_idx, align 8
  %call = tail call i32 @ath6kl_wmi_set_htcap_cmd(ptr noundef %10, i8 noundef zeroext %12, i32 noundef %band, ptr noundef %arrayidx) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end12 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfg80211_get_chandef_type(ptr nocapture noundef readonly %chandef) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %1, label %do.end [
    i32 0, label %entry.return_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %3 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %center_freq1, align 4
  %5 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %center_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp = icmp ugt i32 %4, %8
  %. = select i1 %cmp, i32 3, i32 2
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 778, i32 noundef 9, ptr noundef null) #12
  br label %return

return:                                           ; preds = %do.end, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %sw.bb1 ], [ %1, %entry.return_crit_edge ], [ %., %sw.bb2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_get_rsn_capab(ptr nocapture noundef readonly %beacon, ptr nocapture noundef writeonly %rsn_capab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tail = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %beacon, i32 0, i32 1
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %beacon, i32 0, i32 11
  %2 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail_len, align 4
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 48, ptr noundef nonnull %1, i32 noundef %3, ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  %tobool2.not = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ult i8 %5, 2
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp10 = icmp ult i32 %sub, 4
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %sub15 = add nsw i32 %conv, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub15)
  %cmp16 = icmp ult i32 %sub15, 2
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %add.ptr14 = getelementptr i8, ptr %call.i.i, i32 8
  %6 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %add.ptr14, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #12
  %conv21 = zext i16 %8 to i32
  %mul = shl nuw nsw i32 %conv21, 2
  %add = or i32 %mul, 2
  %sub26 = sub nsw i32 %sub15, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub26)
  %cmp27 = icmp ult i32 %sub26, 2
  br i1 %cmp27, label %if.end19.cleanup_crit_edge, label %if.end30

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  %add.ptr22 = getelementptr i8, ptr %add.ptr14, i32 %add
  %9 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr22, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #12
  %conv32 = zext i16 %11 to i32
  %mul33 = shl nuw nsw i32 %conv32, 2
  %add34 = or i32 %mul33, 2
  %sub39 = sub nsw i32 %sub26, %add34
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub39)
  %cmp40 = icmp ult i32 %sub39, 2
  br i1 %cmp40, label %if.end30.cleanup_crit_edge, label %if.end43

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr35 = getelementptr i8, ptr %add.ptr22, i32 %add34
  %12 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr35, align 1
  %14 = ptrtoint ptr %rsn_capab to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %rsn_capab, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end30.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_ie_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_ap_profile_commit(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_appie_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_htcap_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_ap_set_mlme(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_check_station_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_get_stats_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc zeroext i1 @is_rate_ht20(i32 noundef %rate, ptr nocapture noundef writeonly %mcs, ptr nocapture noundef writeonly %sgi) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %rate, label %entry.cleanup_crit_edge [
    i32 6500, label %entry.if.then_crit_edge
    i32 13000, label %if.then.fold.split
    i32 19500, label %if.then.fold.split21
    i32 26000, label %if.then.fold.split22
    i32 39000, label %if.then.fold.split23
    i32 52000, label %if.then.fold.split24
    i32 58500, label %if.then.fold.split25
    i32 65000, label %if.then.fold.split26
    i32 72200, label %if.then.fold.split27
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split27, %if.then.fold.split26, %if.then.fold.split25, %if.then.fold.split24, %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split, %entry.if.then_crit_edge
  %cmp5 = phi i1 [ false, %entry.if.then_crit_edge ], [ false, %if.then.fold.split ], [ false, %if.then.fold.split21 ], [ false, %if.then.fold.split22 ], [ false, %if.then.fold.split23 ], [ false, %if.then.fold.split24 ], [ false, %if.then.fold.split25 ], [ false, %if.then.fold.split26 ], [ true, %if.then.fold.split27 ]
  %i.017.lcssa.wide = phi i8 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split21 ], [ 3, %if.then.fold.split22 ], [ 4, %if.then.fold.split23 ], [ 5, %if.then.fold.split24 ], [ 6, %if.then.fold.split25 ], [ 7, %if.then.fold.split26 ], [ 8, %if.then.fold.split27 ]
  %. = zext i1 %cmp5 to i8
  %1 = ptrtoint ptr %sgi to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %., ptr %sgi, align 1
  %2 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %i.017.lcssa.wide, ptr %mcs, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %cmp15 = phi i1 [ true, %if.then ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %cmp15
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc zeroext i1 @is_rate_ht40(i32 noundef %rate, ptr nocapture noundef writeonly %mcs, ptr nocapture noundef writeonly %sgi) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %rate, label %entry.cleanup_crit_edge [
    i32 13500, label %entry.if.then_crit_edge
    i32 27000, label %if.then.fold.split
    i32 40500, label %if.then.fold.split21
    i32 54000, label %if.then.fold.split22
    i32 81000, label %if.then.fold.split23
    i32 108000, label %if.then.fold.split24
    i32 121500, label %if.then.fold.split25
    i32 135000, label %if.then.fold.split26
    i32 150000, label %if.then.fold.split27
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split27, %if.then.fold.split26, %if.then.fold.split25, %if.then.fold.split24, %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split, %entry.if.then_crit_edge
  %cmp5 = phi i1 [ false, %entry.if.then_crit_edge ], [ false, %if.then.fold.split ], [ false, %if.then.fold.split21 ], [ false, %if.then.fold.split22 ], [ false, %if.then.fold.split23 ], [ false, %if.then.fold.split24 ], [ false, %if.then.fold.split25 ], [ false, %if.then.fold.split26 ], [ true, %if.then.fold.split27 ]
  %i.017.lcssa.wide = phi i8 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split21 ], [ 3, %if.then.fold.split22 ], [ 4, %if.then.fold.split23 ], [ 5, %if.then.fold.split24 ], [ 6, %if.then.fold.split25 ], [ 7, %if.then.fold.split26 ], [ 8, %if.then.fold.split27 ]
  %. = zext i1 %cmp5 to i8
  %1 = ptrtoint ptr %sgi to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %., ptr %sgi, align 1
  %2 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %i.017.lcssa.wide, ptr %mcs, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %cmp15 = phi i1 [ true, %if.then ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %cmp15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_debug_war(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_bssfilter_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_set_probed_ssids(ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %ssids, i32 noundef %n_ssids, ptr nocapture noundef readonly %match_set, i32 noundef %n_match_ssid) unnamed_addr #0 align 64 {
entry:
  %ssid_list = alloca [16 x %struct.ath6kl_cfg80211_match_probe_ssid], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 544, ptr nonnull %ssid_list) #12
  %0 = call ptr @memset(ptr %ssid_list, i32 0, i32 544)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %n_ssids)
  %cmp = icmp sgt i32 %n_ssids, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %n_match_ssid)
  %cmp1 = icmp sgt i32 %n_match_ssid, 16
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_ssids)
  %cmp2225 = icmp sgt i32 %n_ssids, 0
  br i1 %cmp2225, label %for.body.lr.ph, label %for.cond.preheader.for.cond42.preheader_crit_edge

for.cond.preheader.for.cond42.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond42.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 1
  %1 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wiphy, align 4
  %max_match_sets = getelementptr inbounds %struct.wiphy, ptr %2, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_match_ssid)
  %cmp33 = icmp eq i32 %n_match_ssid, 0
  br label %for.body

for.cond42.preheader.loopexit:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %3 = trunc i32 %n_ssids to i8
  br label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %for.cond42.preheader.loopexit, %for.cond.preheader.for.cond42.preheader_crit_edge
  %i.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.cond42.preheader_crit_edge ], [ %3, %for.cond42.preheader.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_match_ssid)
  %cmp44232 = icmp sgt i32 %n_match_ssid, 0
  br i1 %cmp44232, label %for.cond42.preheader.for.cond47.preheader_crit_edge, label %for.cond42.preheader.for.cond133.preheader_crit_edge

for.cond42.preheader.for.cond133.preheader_crit_edge: ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond133.preheader

for.cond42.preheader.for.cond47.preheader_crit_edge: ; preds = %for.cond42.preheader
  br label %for.cond47.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.ath6kl_cfg80211_match_probe_ssid], ptr %ssid_list, i32 0, i32 %indvars.iv
  %arrayidx7 = getelementptr %struct.cfg80211_ssid, ptr %ssids, i32 %indvars.iv
  %ssid_len = getelementptr %struct.cfg80211_ssid, ptr %ssids, i32 %indvars.iv, i32 1
  %4 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssid_len, align 1
  %conv12 = zext i8 %5 to i32
  %6 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx7, i32 %conv12)
  %ssid_len19 = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx, i32 0, i32 1
  %7 = ptrtoint ptr %ssid_len19 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %ssid_len19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not, i8 2, i8 1
  %8 = getelementptr [16 x %struct.ath6kl_cfg80211_match_probe_ssid], ptr %ssid_list, i32 0, i32 %indvars.iv, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select, ptr %8, align 1
  %10 = ptrtoint ptr %max_match_sets to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_match_sets, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp31.not = icmp ne i8 %11, 0
  %or.cond223 = and i1 %cmp33, %cmp31.not
  br i1 %or.cond223, label %if.then35, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %8, align 1
  %14 = or i8 %13, 8
  store i8 %14, ptr %8, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %n_ssids
  br i1 %exitcond.not, label %for.cond42.preheader.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond47.preheader:                             ; preds = %for.inc130.for.cond47.preheader_crit_edge, %for.cond42.preheader.for.cond47.preheader_crit_edge
  %conv43236 = phi i32 [ %conv43, %for.inc130.for.cond47.preheader_crit_edge ], [ 0, %for.cond42.preheader.for.cond47.preheader_crit_edge ]
  %index_to_add.0234 = phi i8 [ %index_to_add.1, %for.inc130.for.cond47.preheader_crit_edge ], [ %i.0.lcssa, %for.cond42.preheader.for.cond47.preheader_crit_edge ]
  %i.1233 = phi i8 [ %inc131, %for.inc130.for.cond47.preheader_crit_edge ], [ 0, %for.cond42.preheader.for.cond47.preheader_crit_edge ]
  br i1 %cmp2225, label %for.body51.lr.ph, label %for.cond47.preheader.if.end94.critedge_crit_edge

for.cond47.preheader.if.end94.critedge_crit_edge: ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.critedge

for.body51.lr.ph:                                 ; preds = %for.cond47.preheader
  %arrayidx53 = getelementptr %struct.cfg80211_match_set, ptr %match_set, i32 %conv43236
  %ssid_len55 = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx53, i32 0, i32 1
  %15 = ptrtoint ptr %ssid_len55 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ssid_len55, align 4
  %conv56 = zext i8 %16 to i32
  br label %for.body51

for.cond133.preheader:                            ; preds = %for.inc130.for.cond133.preheader_crit_edge, %for.cond42.preheader.for.cond133.preheader_crit_edge
  %index_to_add.0.lcssa = phi i8 [ %i.0.lcssa, %for.cond42.preheader.for.cond133.preheader_crit_edge ], [ %index_to_add.1, %for.inc130.for.cond133.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index_to_add.0.lcssa)
  %cmp136239.not = icmp eq i8 %index_to_add.0.lcssa, 0
  br i1 %cmp136239.not, label %for.cond133.preheader.for.body159.lr.ph_crit_edge, label %for.body138.lr.ph

for.cond133.preheader.for.body159.lr.ph_crit_edge: ; preds = %for.cond133.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body159.lr.ph

for.body138.lr.ph:                                ; preds = %for.cond133.preheader
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  %wide.trip.count = zext i8 %index_to_add.0.lcssa to i32
  br label %for.body138

for.body51:                                       ; preds = %for.inc89.for.body51_crit_edge, %for.body51.lr.ph
  %conv48231 = phi i32 [ 0, %for.body51.lr.ph ], [ %conv48, %for.inc89.for.body51_crit_edge ]
  %j.0230 = phi i8 [ 0, %for.body51.lr.ph ], [ %inc90, %for.inc89.for.body51_crit_edge ]
  %arrayidx58 = getelementptr [16 x %struct.ath6kl_cfg80211_match_probe_ssid], ptr %ssid_list, i32 0, i32 %conv48231
  %ssid_len60 = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx58, i32 0, i32 1
  %17 = ptrtoint ptr %ssid_len60 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ssid_len60, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp62 = icmp eq i8 %16, %18
  br i1 %cmp62, label %land.lhs.true64, label %for.body51.for.inc89_crit_edge

for.body51.for.inc89_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc89

land.lhs.true64:                                  ; preds = %for.body51
  %bcmp = call i32 @bcmp(ptr %arrayidx58, ptr %arrayidx53, i32 %conv56) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool80.not = icmp eq i32 %bcmp, 0
  br i1 %tobool80.not, label %if.then81, label %land.lhs.true64.for.inc89_crit_edge

land.lhs.true64.for.inc89_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc89

if.then81:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  %flag84 = getelementptr [16 x %struct.ath6kl_cfg80211_match_probe_ssid], ptr %ssid_list, i32 0, i32 %conv48231, i32 1
  %19 = ptrtoint ptr %flag84 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flag84, align 1
  %21 = or i8 %20, 8
  store i8 %21, ptr %flag84, align 1
  br label %for.inc130

for.inc89:                                        ; preds = %land.lhs.true64.for.inc89_crit_edge, %for.body51.for.inc89_crit_edge
  %inc90 = add i8 %j.0230, 1
  %conv48 = zext i8 %inc90 to i32
  %cmp49 = icmp slt i32 %conv48, %n_ssids
  br i1 %cmp49, label %for.inc89.for.body51_crit_edge, label %for.inc89.if.end94.critedge_crit_edge

for.inc89.if.end94.critedge_crit_edge:            ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.critedge

for.inc89.for.body51_crit_edge:                   ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body51

if.end94.critedge:                                ; preds = %for.inc89.if.end94.critedge_crit_edge, %for.cond47.preheader.if.end94.critedge_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %index_to_add.0234)
  %cmp96 = icmp ugt i8 %index_to_add.0234, 15
  br i1 %cmp96, label %if.end94.critedge.for.inc130_crit_edge, label %if.end99

if.end94.critedge.for.inc130_crit_edge:           ; preds = %if.end94.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc130

if.end99:                                         ; preds = %if.end94.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %conv95 = zext i8 %index_to_add.0234 to i32
  %arrayidx101 = getelementptr %struct.cfg80211_match_set, ptr %match_set, i32 %conv43236
  %ssid_len103 = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx101, i32 0, i32 1
  %22 = ptrtoint ptr %ssid_len103 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ssid_len103, align 4
  %arrayidx105 = getelementptr [16 x %struct.ath6kl_cfg80211_match_probe_ssid], ptr %ssid_list, i32 0, i32 %conv95
  %ssid_len107 = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx105, i32 0, i32 1
  %24 = ptrtoint ptr %ssid_len107 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %ssid_len107, align 1
  %conv122 = zext i8 %23 to i32
  %25 = call ptr @memcpy(ptr %arrayidx105, ptr %arrayidx101, i32 %conv122)
  %flag125 = getelementptr [16 x %struct.ath6kl_cfg80211_match_probe_ssid], ptr %ssid_list, i32 0, i32 %conv95, i32 1
  %26 = ptrtoint ptr %flag125 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flag125, align 1
  %28 = or i8 %27, 8
  store i8 %28, ptr %flag125, align 1
  %inc129 = add nuw nsw i8 %index_to_add.0234, 1
  br label %for.inc130

for.inc130:                                       ; preds = %if.end99, %if.end94.critedge.for.inc130_crit_edge, %if.then81
  %index_to_add.1 = phi i8 [ %index_to_add.0234, %if.end94.critedge.for.inc130_crit_edge ], [ %inc129, %if.end99 ], [ %index_to_add.0234, %if.then81 ]
  %inc131 = add i8 %i.1233, 1
  %conv43 = zext i8 %inc131 to i32
  %cmp44 = icmp slt i32 %conv43, %n_match_ssid
  br i1 %cmp44, label %for.inc130.for.cond47.preheader_crit_edge, label %for.inc130.for.cond133.preheader_crit_edge

for.inc130.for.cond133.preheader_crit_edge:       ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond133.preheader

for.inc130.for.cond47.preheader_crit_edge:        ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond47.preheader

for.cond155.preheader:                            ; preds = %for.body138
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %index_to_add.0.lcssa)
  %cmp157241 = icmp ult i8 %index_to_add.0.lcssa, 16
  br i1 %cmp157241, label %for.cond155.preheader.for.body159.lr.ph_crit_edge, label %for.cond155.preheader.cleanup_crit_edge

for.cond155.preheader.cleanup_crit_edge:          ; preds = %for.cond155.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond155.preheader.for.body159.lr.ph_crit_edge: ; preds = %for.cond155.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body159.lr.ph

for.body159.lr.ph:                                ; preds = %for.cond155.preheader.for.body159.lr.ph_crit_edge, %for.cond133.preheader.for.body159.lr.ph_crit_edge
  %wmi160 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %fw_vif_idx161 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 5
  br label %for.body159

for.body138:                                      ; preds = %for.body138.for.body138_crit_edge, %for.body138.lr.ph
  %indvars.iv244 = phi i32 [ 0, %for.body138.lr.ph ], [ %indvars.iv.next245, %for.body138.for.body138_crit_edge ]
  %29 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wmi, align 4
  %31 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fw_vif_idx, align 8
  %arrayidx140 = getelementptr [16 x %struct.ath6kl_cfg80211_match_probe_ssid], ptr %ssid_list, i32 0, i32 %indvars.iv244
  %flag141 = getelementptr [16 x %struct.ath6kl_cfg80211_match_probe_ssid], ptr %ssid_list, i32 0, i32 %indvars.iv244, i32 1
  %33 = ptrtoint ptr %flag141 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flag141, align 1
  %ssid_len145 = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx140, i32 0, i32 1
  %35 = ptrtoint ptr %ssid_len145 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ssid_len145, align 1
  %37 = trunc i32 %indvars.iv244 to i8
  %call151 = call i32 @ath6kl_wmi_probedssid_cmd(ptr noundef %30, i8 noundef zeroext %32, i8 noundef zeroext %37, i8 noundef zeroext %34, i8 noundef zeroext %36, ptr noundef %arrayidx140) #12
  %indvars.iv.next245 = add nuw nsw i32 %indvars.iv244, 1
  %exitcond246.not = icmp eq i32 %indvars.iv.next245, %wide.trip.count
  br i1 %exitcond246.not, label %for.cond155.preheader, label %for.body138.for.body138_crit_edge

for.body138.for.body138_crit_edge:                ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body138

for.body159:                                      ; preds = %for.body159.for.body159_crit_edge, %for.body159.lr.ph
  %i.3242 = phi i8 [ %index_to_add.0.lcssa, %for.body159.lr.ph ], [ %inc164, %for.body159.for.body159_crit_edge ]
  %38 = ptrtoint ptr %wmi160 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wmi160, align 4
  %40 = ptrtoint ptr %fw_vif_idx161 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fw_vif_idx161, align 8
  %call162 = call i32 @ath6kl_wmi_probedssid_cmd(ptr noundef %39, i8 noundef zeroext %41, i8 noundef zeroext %i.3242, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #12
  %inc164 = add nuw nsw i8 %i.3242, 1
  %cmp157 = icmp ult i8 %i.3242, 15
  br i1 %cmp157, label %for.body159.for.body159_crit_edge, label %for.body159.cleanup_crit_edge

for.body159.cleanup_crit_edge:                    ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body159.for.body159_crit_edge:                ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body159

cleanup:                                          ; preds = %for.body159.cleanup_crit_edge, %for.cond155.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond155.preheader.cleanup_crit_edge ], [ 0, %for.body159.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 544, ptr nonnull %ssid_list) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_get_control_ep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_reconnect_cmd(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_set_wpa_version(ptr nocapture noundef writeonly %vif, i32 noundef %wpa_version) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.ath6kl_set_wpa_version, i32 noundef %wpa_version) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wpa_version)
  %tobool.not = icmp eq i32 %wpa_version, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %auth_mode = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 10
  %0 = ptrtoint ptr %auth_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %auth_mode, align 1
  br label %return

if.else:                                          ; preds = %entry
  %and = and i32 %wpa_version, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else4, label %if.then2

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %auth_mode3 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 10
  %1 = ptrtoint ptr %auth_mode3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %auth_mode3, align 1
  br label %return

if.else4:                                         ; preds = %if.else
  %and5 = and i32 %wpa_version, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #14
  %auth_mode8 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 10
  %2 = ptrtoint ptr %auth_mode8 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %auth_mode8, align 1
  br label %return

if.else9:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__.ath6kl_set_wpa_version, i32 noundef %wpa_version) #12
  br label %return

return:                                           ; preds = %if.else9, %if.then7, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_set_key_mgmt(ptr nocapture noundef %vif, i32 noundef %key_mgmt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8192, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.ath6kl_set_key_mgmt, i32 noundef %key_mgmt) #12
  %0 = zext i32 %key_mgmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %key_mgmt, label %if.then34 [
    i32 1027074, label %if.then
    i32 4232704, label %if.then15
    i32 1027073, label %entry.if.end38_crit_edge
  ]

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then:                                          ; preds = %entry
  %auth_mode = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 10
  %1 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %auth_mode, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %2, label %if.then.if.end38_crit_edge [
    i8 2, label %if.then3
    i8 4, label %if.then9
  ]

if.then.if.end38_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %auth_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %auth_mode, align 1
  br label %if.end38

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %auth_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %auth_mode, align 1
  br label %if.end38

if.then15:                                        ; preds = %entry
  %auth_mode16 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 10
  %6 = ptrtoint ptr %auth_mode16 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %auth_mode16, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %7, label %if.then15.if.end38_crit_edge [
    i8 2, label %if.then20
    i8 4, label %if.then27
  ]

if.then15.if.end38_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %auth_mode16 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %auth_mode16, align 1
  br label %if.end38

if.then27:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %auth_mode16 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %auth_mode16, align 1
  br label %if.end38

if.then34:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %auth_mode35 = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 10
  %11 = ptrtoint ptr %auth_mode35 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %auth_mode35, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.then27, %if.then20, %if.then15.if.end38_crit_edge, %if.then9, %if.then3, %if.then.if.end38_crit_edge, %entry.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_connect_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_rts_cmd(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_tx_pwr_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_get_tx_pwr_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_bitrate_mask(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_setpmkid_cmd(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_remain_on_chnl_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_cancel_remain_on_chnl_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_send_mgmt_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_send_probe_response_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_pvb_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_txe_notify(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_rssi_filter_cmd(ptr noundef, i8 noundef zeroext, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !155, !157, !158, !160, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335}
!llvm.named.register.sp = !{!337}
!llvm.module.flags = !{!338, !339, !340, !341, !342, !343, !344, !345}
!llvm.ident = !{!346}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 769, i32 8}
!2 = !{ptr @__func__.ath6kl_cfg80211_connect_event, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 769, i32 40}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 778, i32 8}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 788, i32 14}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 793, i32 35}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 794, i32 33}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 794, i32 45}
!14 = !{ptr @__func__.ath6kl_cfg80211_disconnect_event, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 876, i32 40}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1084, i32 34}
!18 = !{ptr @__func__.ath6kl_cfg80211_scan_complete_event, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1084, i32 52}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1085, i32 16}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1085, i32 29}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1112, i32 6}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1371, i32 6}
!28 = !{ptr @__func__.ath6kl_cfg80211_tkip_micerr_event, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1371, i32 36}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2430, i32 34}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2448, i32 34}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2452, i32 15}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2466, i32 8}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2470, i32 34}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2474, i32 16}
!42 = !{ptr @__ksymtab_ath6kl_cfg80211_suspend, !43, !"__ksymtab_ath6kl_cfg80211_suspend", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2491, i32 1}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2499, i32 34}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2503, i32 16}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2510, i32 34}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2514, i32 16}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2520, i32 34}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2524, i32 16}
!56 = !{ptr @__ksymtab_ath6kl_cfg80211_resume, !57, !"__ksymtab_ath6kl_cfg80211_resume", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2535, i32 1}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3508, i32 15}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3523, i32 16}
!62 = !{ptr @ath6kl_cfg80211_vif_stop.bcast_mac, !63, !"bcast_mac", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3601, i32 12}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3919, i32 14}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3937, i32 15}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3993, i32 14}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 4018, i32 14}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 726, i32 8}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 729, i32 35}
!76 = !{ptr @ath6kl_band_2ghz, !77, !"ath6kl_band_2ghz", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 124, i32 40}
!78 = !{ptr @ath6kl_2ghz_channels, !79, !"ath6kl_2ghz_channels", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 87, i32 33}
!80 = !{ptr @ath6kl_rates, !81, !"ath6kl_rates", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 62, i32 30}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2230, i32 6}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 289, i32 14}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 294, i32 35}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2197, i32 8}
!90 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2203, i32 9}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2208, i32 14}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2214, i32 14}
!97 = !{ptr @ath6kl_wow_ap.unicst_pattern, !98, !"unicst_pattern", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1962, i32 18}
!99 = !{ptr @ath6kl_wow_ap.unicst_mask, !100, !"unicst_mask", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1966, i32 18}
!101 = !{ptr @ath6kl_wow_ap.arp_pattern, !102, !"arp_pattern", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1971, i32 18}
!103 = !{ptr @ath6kl_wow_ap.arp_mask, !104, !"arp_mask", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1972, i32 18}
!105 = !{ptr @ath6kl_wow_ap.discvr_pattern, !106, !"discvr_pattern", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1974, i32 18}
!107 = !{ptr @ath6kl_wow_ap.discvr_mask, !108, !"discvr_mask", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1975, i32 18}
!109 = !{ptr @ath6kl_wow_ap.dhcp_pattern, !110, !"dhcp_pattern", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1977, i32 18}
!111 = !{ptr @ath6kl_wow_ap.dhcp_mask, !112, !"dhcp_mask", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1983, i32 18}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1998, i32 14}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2008, i32 14}
!117 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2021, i32 14}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2031, i32 14}
!121 = !{ptr @ath6kl_wow_sta.discvr_pattern, !122, !"discvr_pattern", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2041, i32 18}
!123 = !{ptr @ath6kl_wow_sta.discvr_mask, !124, !"discvr_mask", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2042, i32 18}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2054, i32 14}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../include/linux/inetdevice.h", i32 249, i32 9}
!129 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.44, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2102, i32 15}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2105, i32 15}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2115, i32 16}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2118, i32 16}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2356, i32 14}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2319, i32 15}
!142 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 444, i32 34}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 445, i32 15}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 445, i32 26}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 450, i32 14}
!150 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3584, i32 14}
!152 = !{ptr @ath6kl_cfg80211_vif_init.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3588, i32 2}
!154 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @ath6kl_cfg80211_vif_init.__key.56, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3589, i32 2}
!157 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @ath6kl_cfg80211_vif_init.__key.58, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3592, i32 2}
!160 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ath6kl_ethtool_ops, !162, !"ath6kl_ethtool_ops", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3769, i32 33}
!163 = !{ptr @ath6kl_gstrings_sta_stats, !164, !"ath6kl_gstrings_sta_stats", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3656, i32 19}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3752, i32 3}
!167 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3753, i32 14}
!169 = !{ptr @ath6kl_mgmt_stypes, !170, !"ath6kl_mgmt_stypes", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3403, i32 1}
!171 = !{ptr @.str.61, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3544, i32 6}
!173 = !{ptr @.str.62, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3546, i32 27}
!175 = !{ptr @.str.63, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3547, i32 27}
!177 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3555, i32 14}
!179 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3574, i32 14}
!181 = !{ptr @ath6kl_band_5ghz, !182, !"ath6kl_band_5ghz", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 133, i32 40}
!183 = !{ptr @ath6kl_5ghz_a_channels, !184, !"ath6kl_5ghz_a_channels", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 104, i32 33}
!185 = !{ptr @cipher_suites, !186, !"cipher_suites", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1704, i32 18}
!187 = !{ptr @ath6kl_wowlan_support, !188, !"ath6kl_wowlan_support", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3849, i32 42}
!189 = !{ptr @ath6kl_cfg80211_ops, !190, !"ath6kl_cfg80211_ops", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3430, i32 28}
!191 = !{ptr @.str.66, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 90, i32 29}
!193 = !{ptr @.str.67, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 127, i32 29}
!195 = !{ptr @.str.68, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1519, i32 14}
!197 = !{ptr @.str.69, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1524, i32 14}
!199 = !{ptr @.str.70, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 382, i32 14}
!201 = !{ptr @.str.71, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1564, i32 34}
!203 = !{ptr @__func__.ath6kl_cfg80211_change_iface, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1564, i32 51}
!205 = !{ptr @.str.72, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1588, i32 15}
!207 = !{ptr @.str.73, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1150, i32 7}
!209 = !{ptr @__func__.ath6kl_cfg80211_add_key, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1150, i32 43}
!211 = !{ptr @.str.74, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1206, i32 6}
!213 = !{ptr @.str.75, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1220, i32 8}
!215 = !{ptr @.str.76, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1237, i32 7}
!217 = !{ptr @.str.77, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1291, i32 34}
!219 = !{ptr @__func__.ath6kl_cfg80211_get_key, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1291, i32 52}
!221 = !{ptr @__func__.ath6kl_cfg80211_del_key, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1258, i32 52}
!223 = !{ptr @.str.78, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1272, i32 7}
!225 = !{ptr @__func__.ath6kl_cfg80211_set_default_key, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1327, i32 52}
!227 = !{ptr @.str.79, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1340, i32 35}
!229 = !{ptr @.str.80, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2775, i32 34}
!231 = !{ptr @__func__.ath6kl_start_ap, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2775, i32 43}
!233 = !{ptr @.str.81, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2791, i32 15}
!235 = !{ptr @.str.82, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2798, i32 15}
!237 = !{ptr @.str.83, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 197, i32 34}
!239 = !{ptr @__func__.ath6kl_set_auth_type, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 197, i32 48}
!241 = !{ptr @.str.84, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 215, i32 14}
!243 = !{ptr @.str.85, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 228, i32 34}
!245 = !{ptr @__func__.ath6kl_set_cipher, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 229, i32 6}
!247 = !{ptr @.str.86, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 258, i32 14}
!249 = !{ptr @.str.87, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!251 = !{ptr @bcast_addr, !252, !"bcast_addr", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 2988, i32 17}
!253 = !{ptr @.str.88, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1855, i32 7}
!255 = distinct !{null, !256, !"legacy", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1715, i32 19}
!257 = distinct !{null, !258, !"ht20", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1730, i32 19}
!259 = distinct !{null, !260, !"ht40", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1752, i32 19}
!261 = !{ptr @.str.89, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1014, i32 15}
!263 = !{ptr @.str.90, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1029, i32 14}
!265 = !{ptr @.str.91, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1046, i32 16}
!267 = !{ptr @.str.92, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1067, i32 14}
!269 = !{ptr @.str.93, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 471, i32 14}
!271 = !{ptr @.str.94, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 478, i32 14}
!273 = !{ptr @.str.95, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 483, i32 14}
!275 = !{ptr @.str.96, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 488, i32 14}
!277 = !{ptr @.str.97, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 501, i32 15}
!279 = !{ptr @.str.98, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 526, i32 15}
!281 = !{ptr @.str.99, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 570, i32 15}
!283 = !{ptr @.str.100, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 610, i32 6}
!285 = !{ptr @__func__.ath6kl_cfg80211_connect, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 613, i32 6}
!287 = !{ptr @.str.101, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 627, i32 15}
!289 = !{ptr @.str.102, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 658, i32 14}
!291 = !{ptr @.str.103, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 661, i32 14}
!293 = !{ptr @.str.104, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 178, i32 34}
!295 = !{ptr @__func__.ath6kl_set_wpa_version, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 178, i32 46}
!297 = !{ptr @.str.105, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 187, i32 14}
!299 = !{ptr @__func__.ath6kl_set_key_mgmt, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 267, i32 48}
!301 = !{ptr @.str.106, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 827, i32 34}
!303 = !{ptr @__func__.ath6kl_cfg80211_disconnect, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 827, i32 53}
!305 = !{ptr @__func__.ath6kl_cfg80211_join_ibss, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1671, i32 6}
!307 = !{ptr @.str.107, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1385, i32 34}
!309 = !{ptr @__func__.ath6kl_cfg80211_set_wiphy_params, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1385, i32 56}
!311 = !{ptr @.str.108, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1398, i32 15}
!313 = !{ptr @.str.109, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1415, i32 34}
!315 = !{ptr @__func__.ath6kl_cfg80211_set_txpower, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1415, i32 61}
!317 = !{ptr @.str.110, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1432, i32 35}
!319 = !{ptr @.str.111, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1460, i32 15}
!321 = !{ptr @.str.112, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1468, i32 15}
!323 = !{ptr @.str.113, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1485, i32 34}
!325 = !{ptr @__func__.ath6kl_cfg80211_set_power_mgmt, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1486, i32 6}
!327 = !{ptr @.str.114, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1492, i32 35}
!329 = !{ptr @.str.115, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1495, i32 35}
!331 = !{ptr @.str.116, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 1501, i32 14}
!333 = !{ptr @.str.117, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3324, i32 15}
!335 = !{ptr @.str.118, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/ath/ath6kl/cfg80211.c", i32 3341, i32 15}
!337 = !{!"sp"}
!338 = !{i32 1, !"wchar_size", i32 2}
!339 = !{i32 1, !"min_enum_size", i32 4}
!340 = !{i32 8, !"branch-target-enforcement", i32 0}
!341 = !{i32 8, !"sign-return-address", i32 0}
!342 = !{i32 8, !"sign-return-address-all", i32 0}
!343 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!344 = !{i32 7, !"uwtable", i32 1}
!345 = !{i32 7, !"frame-pointer", i32 2}
!346 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!347 = !{i8 0, i8 2}
!348 = !{!"branch_weights", i32 1, i32 2000}
!349 = !{i64 2157165657, i64 2157166145, i64 2157165694, i64 2157165750, i64 2157165784, i64 2157165808, i64 2157165849, i64 2157165870, i64 2157165898, i64 2157165932}
!350 = !{!"auto-init"}
!351 = !{!"branch_weights", i32 2000, i32 1}
