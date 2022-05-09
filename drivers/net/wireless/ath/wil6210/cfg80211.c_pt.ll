; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/cfg80211.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/cfg80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.anon.131 = type { i32, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_txrx_stypes = type { i16, i16 }
%struct.wiphy_vendor_command = type { %struct.nl80211_vendor_cmd_info, i32, ptr, ptr, ptr, i32 }
%struct.nl80211_vendor_cmd_info = type { i32, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.107 }
%union.anon.107 = type { i32 }
%struct.anon.171 = type <{ %struct.wmi_cmd_hdr, %struct.wmi_set_rf_sector_params_done_event }>
%struct.wmi_cmd_hdr = type { i8, i8, i16, i32 }
%struct.wmi_set_rf_sector_params_done_event = type { i8 }
%struct.anon.172 = type { %struct.wmi_cmd_hdr, %struct.wmi_get_selected_rf_sector_index_done_event }
%struct.wmi_get_selected_rf_sector_index_done_event = type { i16, i8, [5 x i8], i64 }
%struct.anon.173 = type { %struct.wmi_cmd_hdr, %struct.wmi_set_selected_rf_sector_index_done_event }
%struct.wmi_set_selected_rf_sector_index_done_event = type { i8, [3 x i8] }
%struct.wil6210_priv = type { ptr, i32, ptr, ptr, i32, ptr, [1 x i32], [32 x i8], i32, i8, ptr, ptr, ptr, i32, ptr, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32, %struct.wait_queue_head, i8, [4 x ptr], %struct.mutex, %struct.atomic_t, i32, %struct.cfg80211_chan_def, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.wil6210_mbox_ctl, %struct.completion, %struct.completion, i16, i16, i8, ptr, i16, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.napi_struct, %struct.napi_struct, %struct.net_device, %struct.wil_ring, i32, [24 x %struct.wil_ring], [24 x %struct.wil_ring_tx_data], [8 x %struct.wil_status_ring], i8, i32, [24 x [2 x i8]], [20 x %struct.wil_sta_info], i32, i32, %struct.wil_rx_buff_mgmt, i8, %struct.wil_txrx_ops, %struct.mutex, %struct.rw_semaphore, %struct.atomic_t, %struct.atomic_t, ptr, [19 x %struct.wil_blob_wrapper], i8, i8, i8, %struct.wil_suspend_stats, %struct.wil_debugfs_data, i8, i32, ptr, %struct.wil_platform_ops, i8, %struct.pmc_ctx, i8, ptr, ptr, %struct.wil_halp, i32, i32, %struct.notifier_block, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, %struct.wil_fw_stats_global, i32, i32, i8, i32, [16 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.wil6210_mbox_ctl = type { %struct.wil6210_mbox_ring, %struct.wil6210_mbox_ring }
%struct.wil6210_mbox_ring = type { i32, i16, i16, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.129, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.129 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wil_ring = type { i32, ptr, i16, i32, i32, i32, ptr, %struct.wil_desc_ring_rx_swtail, i8 }
%struct.wil_desc_ring_rx_swtail = type { ptr, i32 }
%struct.wil_ring_tx_data = type { i8, i32, i32, i32, i32, i8, i16, i8, i8, i8, %struct.spinlock }
%struct.wil_status_ring = type { i32, ptr, i16, i32, i32, i32, i8, i8, %struct.wil_ring_rx_data, i32 }
%struct.wil_ring_rx_data = type { ptr, i8, i16 }
%struct.wil_sta_info = type { [6 x i8], i8, i32, %struct.wil_net_stats, ptr, %struct.wmi_link_stats_basic, [16 x ptr], %struct.spinlock, [1 x i32], [1 x i32], [16 x %struct.wil_tid_crypto_rx], %struct.wil_tid_crypto_rx, i8 }
%struct.wil_net_stats = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [16 x i64], i32 }
%struct.wmi_link_stats_basic = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], i16, i32, i32, i32, i32, i32 }
%struct.wil_tid_crypto_rx = type { [4 x %struct.wil_tid_crypto_rx_single] }
%struct.wil_tid_crypto_rx_single = type { [6 x i8], i8 }
%struct.wil_rx_buff_mgmt = type { ptr, i32, %struct.list_head, %struct.list_head, i32 }
%struct.wil_txrx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wil_blob_wrapper = type { ptr, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.wil_suspend_stats = type { %struct.wil_suspend_count_stats, %struct.wil_suspend_count_stats, i32, i32 }
%struct.wil_suspend_count_stats = type { i32, i32, i32, i32 }
%struct.wil_debugfs_data = type { ptr, i32 }
%struct.wil_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmc_ctx = type { %struct.mutex, ptr, i32, ptr, i32, i32, i32 }
%struct.wil_halp = type { %struct.mutex, i32, %struct.completion, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wil_fw_stats_global = type { i8, i64, %struct.wmi_link_stats_global }
%struct.wmi_link_stats_global = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.126, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.126 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.wmi_notify_req_cmd = type { i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.anon.132 = type { %struct.wmi_cmd_hdr, %struct.wmi_notify_req_done_event }
%struct.wmi_notify_req_done_event = type <{ i32, i64, i8, i8, [2 x i8], i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, [3 x i8] }>
%struct.wil6210_vif = type { %struct.wireless_dev, ptr, ptr, i8, [1 x i32], i32, i16, i8, i8, i32, i8, i32, ptr, ptr, ptr, i32, i32, i32, [32 x i8], i32, i8, [32 x i8], i32, i32, ptr, i32, %struct.timer_list, %struct.work_struct, ptr, %struct.timer_list, %struct.wil_p2p_info, %struct.list_head, %struct.mutex, %struct.work_struct, i32, i8, i64, i32, %struct.work_struct }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.127, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.127 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.128 }
%union.anon.128 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.wil_p2p_info = type { %struct.ieee80211_channel, i8, i64, ptr, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.cfg80211_mgmt_tx_params = type { ptr, i8, i32, ptr, i32, i8, i8, i32, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.135 }
%union.anon.135 = type { %struct.anon.141, [16 x i8] }
%struct.anon.141 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.wil_probe_client_req = type { %struct.list_head, i64, i8 }
%struct.wil_fw_record_concurrency = type { i32, i8, i8, i16, [0 x %struct.wil_fw_concurrency_combo] }
%struct.wil_fw_concurrency_combo = type { i8, i8, i8, i8, [0 x %struct.wil_fw_concurrency_limit] }
%struct.wil_fw_concurrency_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_vendor_ie = type { i8, i8, [3 x i8], i8 }
%struct.iface_combination_params = type { i32, i8, [13 x i32], i32 }
%struct.vif_params = type { i32, i32, [6 x i8], ptr, ptr }
%struct.cfg80211_ap_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, i32, i32, ptr, i32, i32, %struct.cfg80211_crypto_settings, i8, i32, i32, i32, i8, i8, ptr, i8, %struct.cfg80211_bitrate_mask, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.cfg80211_fils_discovery, %struct.cfg80211_unsol_bcast_probe_resp, %struct.cfg80211_mbssid_config }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.134] }
%struct.anon.134 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.cfg80211_fils_discovery = type { i32, i32, i32, ptr }
%struct.cfg80211_unsol_bcast_probe_resp = type { i32, i32, ptr }
%struct.cfg80211_mbssid_config = type { ptr, i8, i8 }
%struct.station_parameters = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, i8, i8, i32, i16, ptr, i8, ptr, i8, ptr, i8, i8, i8, i32, ptr, i8, i16, %struct.sta_txpwr, ptr }
%struct.sta_txpwr = type { i16, i32 }
%struct.station_del_parameters = type { ptr, i8, i16 }
%struct.bss_parameters = type { i32, i32, i32, ptr, i8, i32, i32, i8, i8 }
%struct.anon.168 = type { %struct.wmi_start_scan_cmd, [4 x i16] }
%struct.wmi_start_scan_cmd = type <{ [6 x i8], i8, i8, i32, i32, i8, i8, [0 x %struct.anon.169] }>
%struct.anon.169 = type { i8, i8 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.wmi_connect_cmd = type { i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8], i8, i8, [6 x i8], i32, [6 x i8], [2 x i8] }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.cfg80211_match_set = type { %struct.cfg80211_ssid, [6 x i8], i32, [6 x i32] }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }
%struct.wmi_ft_reassoc_cmd = type { [6 x i8], [2 x i8] }
%struct.cfg80211_update_ft_ies_params = type { i16, ptr, i32 }
%struct.wmi_ft_auth_cmd = type { [6 x i8], i8, i8, [4 x i8] }
%struct.wmi_get_rf_sector_params_cmd = type { i16, i8, i8 }
%struct.anon.170 = type { %struct.wmi_cmd_hdr, %struct.wmi_get_rf_sector_params_done_event }
%struct.wmi_get_rf_sector_params_done_event = type { i8, [7 x i8], i64, [8 x %struct.wmi_rf_sector_info] }
%struct.wmi_rf_sector_info = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.wmi_set_rf_sector_params_cmd = type { i16, i8, i8, [8 x %struct.wmi_rf_sector_info] }
%struct.wmi_get_selected_rf_sector_index_cmd = type { i8, i8, [2 x i8] }
%struct.wmi_set_selected_rf_sector_index_cmd = type { i8, i8, i16 }

@__param_str_disable_ap_sme = internal constant [23 x i8] c"wil6210.disable_ap_sme\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@disable_ap_sme = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_ap_sme = internal constant %struct.kernel_param { ptr @__param_str_disable_ap_sme, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @disable_ap_sme } }, section "__param", align 4
@__UNIQUE_ID_disable_ap_smetype343 = internal constant [37 x i8] c"wil6210.parmtype=disable_ap_sme:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_ap_sme344 = internal constant [63 x i8] c"wil6210.parm=disable_ap_sme: let user space handle AP mode SME\00", section ".modinfo", align 1
@update_supported_bands.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"update_supported_bands\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/ath/wil6210/cfg80211.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DBG[MISC]update supported bands\00", [32 x i8] zeroinitializer }, align 32
@wil_iftype_nl2wmi.__nl2wmi = internal constant { [6 x %struct.anon.131], [48 x i8] } { [6 x %struct.anon.131] [%struct.anon.131 { i32 1, i32 2 }, %struct.anon.131 { i32 2, i32 1 }, %struct.anon.131 { i32 3, i32 16 }, %struct.anon.131 { i32 8, i32 32 }, %struct.anon.131 { i32 9, i32 32 }, %struct.anon.131 { i32 6, i32 2 }], [48 x i8] zeroinitializer }, align 32
@wil_cid_fill_sinfo.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wil_cid_fill_sinfo\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [190 x i8], [34 x i8] } { [190 x i8] c"DBG[ WMI]Link status for CID %d MID %d: {\0A  MCS %s TSF 0x%016llx\0A  BF status 0x%08x RSSI %d SQI %d%%\0A  Tx Tpt %d goodput %d Rx goodput %d\0A  Sectors(rx:tx) my %d:%d peer %d:%d\0A  Tx mode %d}\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"12.1\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_mcs\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: failed to stop AP, status %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.wil_vif_prepare_stop = private unnamed_addr constant [21 x i8] c"wil_vif_prepare_stop\00", align 1
@wil_cfg80211_mgmt_tx.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 1, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wil_cfg80211_mgmt_tx\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DBG[MISC]mgmt_tx: channel %d offchan %d, wait %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: invalid channel\0A\00", [43 x i8] zeroinitializer }, align 32
@wil_cfg80211_mgmt_tx.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 1, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"DBG[MISC]send WMI_SW_TX_REQ_CMDID on non-AP interfaces\0A\00", [40 x i8] zeroinitializer }, align 32
@wil_cfg80211_mgmt_tx.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 1, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DBG[MISC]send WMI_SW_TX_REQ_CMDID for on-channel\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s: invalid channel params: current %d requested %d, off-channel not allowed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: AP (vif %d) recovery: privacy %d, bi %d, channel %d, hidden %d, pbss %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.wil_cfg80211_ap_recovery = private unnamed_addr constant [25 x i8] c"wil_cfg80211_ap_recovery\00", align 1
@wil_cfg80211_ap_recovery.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_cfg80211_ap_recovery, ptr @.str.2, ptr @.str.16, i8 2, i8 2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DBG[MISC]SSID \00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: vif %d recovery failed (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: vif %d recovery add key failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@wil_probe_client_flush.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 2, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wil_probe_client_flush\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DBG[MISC]probe_client_flush\0A\00", [35 x i8] zeroinitializer }, align 32
@wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug444 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 2, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wil_cfg80211_iface_combinations_from_fw\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DBG[MISC]iface_combinations already set, skipping\0A\00", [45 x i8] zeroinitializer }, align 32
@wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug445 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 2, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"DBG[MISC]iface_combination %d: max_if %d, num_ch %d, bi_match %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug446 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.25, i8 2, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DBG[MISC]limit %d: max %d types 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug447 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.26, i8 2, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DBG[MISC]multiple VIFs supported, n_mids %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: limited number of VIFs supported(%d, FW %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@wil_cfg80211_init.__UNIQUE_ID_ddebug448 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 2, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wil_cfg80211_init\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@wil_cfg80211_ops = internal constant { %struct.cfg80211_ops, [108 x i8] } { %struct.cfg80211_ops { ptr @wil_cfg80211_suspend, ptr @wil_cfg80211_resume, ptr null, ptr @wil_cfg80211_add_iface, ptr @wil_cfg80211_del_iface, ptr @wil_cfg80211_change_iface, ptr @wil_cfg80211_add_key, ptr null, ptr @wil_cfg80211_del_key, ptr @wil_cfg80211_set_default_key, ptr null, ptr null, ptr @wil_cfg80211_start_ap, ptr @wil_cfg80211_change_beacon, ptr @wil_cfg80211_stop_ap, ptr @wil_cfg80211_add_station, ptr @wil_cfg80211_del_station, ptr @wil_cfg80211_change_station, ptr @wil_cfg80211_get_station, ptr @wil_cfg80211_dump_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wil_cfg80211_change_bss, ptr null, ptr null, ptr @wil_cfg80211_set_channel, ptr @wil_cfg80211_scan, ptr @wil_cfg80211_abort_scan, ptr null, ptr null, ptr null, ptr null, ptr @wil_cfg80211_connect, ptr null, ptr @wil_cfg80211_disconnect, ptr null, ptr null, ptr null, ptr @wil_cfg80211_set_wiphy_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wil_remain_on_channel, ptr @wil_cancel_remain_on_channel, ptr @wil_cfg80211_mgmt_tx, ptr null, ptr @wil_cfg80211_set_power_mgmt, ptr @wil_cfg80211_set_cqm_rssi_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wil_cfg80211_sched_scan_start, ptr @wil_cfg80211_sched_scan_stop, ptr null, ptr null, ptr null, ptr @wil_cfg80211_probe_client, ptr null, ptr null, ptr @wil_cfg80211_start_p2p_device, ptr @wil_cfg80211_stop_p2p_device, ptr null, ptr null, ptr null, ptr @wil_cfg80211_update_ft_ies, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wil_cfg80211_set_multicast_to_unicast, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [108 x i8] zeroinitializer }, align 32
@wil_cfg80211_deinit.__UNIQUE_ID_ddebug449 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.29, i8 2, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil_cfg80211_deinit\00", [44 x i8] zeroinitializer }, align 32
@_wil_cfg80211_start_ap.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 1, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_wil_cfg80211_start_ap\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DBG[MISC]start_ap: mid=%d, is_go=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: P2P GO must be in PBSS\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: FW does not support FT roaming\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: NULL params\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.wil_cfg80211_add_key = private unnamed_addr constant [21 x i8] c"wil_cfg80211_add_key\00", align 1
@wil_cfg80211_add_key.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_cfg80211_add_key, ptr @.str.2, ptr @.str.37, i8 1, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DBG[MISC]add_key: %pM %s[%d] PN %*phN\0A\00", [57 x i8] zeroinitializer }, align 32
@key_usage_str = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Not connected, %pM %s[%d] PN %*phN\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Wrong PN len %d, %pM %s[%d] PN %*phN\0A\00", [54 x i8] zeroinitializer }, align 32
@wil_cfg80211_add_key.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_cfg80211_add_key, ptr @.str.2, ptr @.str.40, i8 1, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DBG[MISC]Store EAPOL key\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Can't determine GTK type\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.wil_detect_key_usage = private unnamed_addr constant [21 x i8] c"wil_detect_key_usage\00", align 1
@wil_detect_key_usage.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.wil_detect_key_usage, ptr @.str.2, ptr @.str.42, i8 1, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[MISC]detect_key_usage: -> %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: No CID for %pM %s\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.wil_find_sta_by_key_usage = private unnamed_addr constant [26 x i8] c"wil_find_sta_by_key_usage\00", align 1
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PTK\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RX_GTK\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TX_GTK\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STORE_PTK\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APPLY_PTK\00", [22 x i8] zeroinitializer }, align 32
@wil_cfg80211_suspend.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 2, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wil_cfg80211_suspend\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[ PM ]trying to suspend while suspended\0A\00", [52 x i8] zeroinitializer }, align 32
@wil_cfg80211_suspend.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.51, i8 2, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DBG[ PM ]suspending\0A\00", [43 x i8] zeroinitializer }, align 32
@wil_cfg80211_resume.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 2, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil_cfg80211_resume\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[ PM ]resuming\0A\00", [45 x i8] zeroinitializer }, align 32
@wil_cfg80211_add_iface.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wil_cfg80211_add_iface\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DBG[MISC]add_iface, type %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: P2P_DEVICE interface already created\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: virtual interfaces not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: iface validation failed, err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: added VIF, mid %d iftype %d MAC %pM\0A\00", [55 x i8] zeroinitializer }, align 32
@wil_cfg80211_del_iface.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wil_cfg80211_del_iface\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DBG[MISC]del_iface\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: delete of incorrect interface 0x%p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: cannot remove the main interface\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: deleted VIF, mid %d iftype %d MAC %pM\0A\00", [53 x i8] zeroinitializer }, align 32
@wil_cfg80211_change_iface.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wil_cfg80211_change_iface\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DBG[MISC]change_iface: type=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@wil_cfg80211_change_iface.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.67, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DBG[MISC]interface is up. resetting...\0A\00", [56 x i8] zeroinitializer }, align 32
@wil_cfg80211_del_key.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 1, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wil_cfg80211_del_key\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DBG[MISC]del_key: %pM %s[%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Not connected, %pM %s[%d]\0A\00", [33 x i8] zeroinitializer }, align 32
@wil_cfg80211_set_default_key.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 1, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wil_cfg80211_set_default_key\00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[MISC]set_default_key: entered\0A\00", [61 x i8] zeroinitializer }, align 32
@wil_cfg80211_start_ap.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 2, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wil_cfg80211_start_ap\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[MISC]start_ap\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: AP: No channel???\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: AP: Invalid hidden SSID %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wil_cfg80211_start_ap.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.77, i8 2, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DBG[MISC]AP on Channel %d %d MHz, %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"secure\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@wil_cfg80211_start_ap.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.80, i8 2, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[MISC]Privacy: %d auth_type %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wil_cfg80211_start_ap.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.81, i8 2, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DBG[MISC]Hidden SSID mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wil_cfg80211_start_ap.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.82, i8 2, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DBG[MISC]BI %d DTIM %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wil_cfg80211_start_ap.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.83, i8 2, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DBG[MISC]PBSS %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wil_cfg80211_start_ap.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.16, i8 2, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Unsupported edmg channel bitmap 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.wil_get_wmi_edmg_channel = private unnamed_addr constant [25 x i8] c"wil_get_wmi_edmg_channel\00", align 1
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Unsupported EDMG BW configuration %d\0A\00", [54 x i8] zeroinitializer }, align 32
@wil_print_bcon_data.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 1, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil_print_bcon_data\00", [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[MISC]head     \00", [45 x i8] zeroinitializer }, align 32
@wil_print_bcon_data.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.88, i8 1, i8 -49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[MISC]tail     \00", [45 x i8] zeroinitializer }, align 32
@wil_print_bcon_data.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.89, i8 1, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[MISC]BCON IE  \00", [45 x i8] zeroinitializer }, align 32
@wil_print_bcon_data.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.90, i8 1, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[MISC]PROBE    \00", [45 x i8] zeroinitializer }, align 32
@wil_print_bcon_data.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.91, i8 1, i8 -48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[MISC]PROBE IE \00", [45 x i8] zeroinitializer }, align 32
@wil_print_bcon_data.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.92, i8 1, i8 -47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[MISC]ASSOC IE \00", [45 x i8] zeroinitializer }, align 32
@wil_print_crypto.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 1, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil_print_crypto\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DBG[MISC]WPA versions: 0x%08x cipher group 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@wil_print_crypto.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.95, i8 1, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[MISC]Pairwise ciphers [%d] {\0A\00", [62 x i8] zeroinitializer }, align 32
@wil_print_crypto.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.96, i8 1, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DBG[MISC]  [%d] = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@wil_print_crypto.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.97, i8 1, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DBG[MISC]}\0A\00", [20 x i8] zeroinitializer }, align 32
@wil_print_crypto.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.98, i8 1, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[MISC]AKM suites [%d] {\0A\00", [36 x i8] zeroinitializer }, align 32
@wil_print_crypto.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.96, i8 1, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wil_print_crypto.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.97, i8 1, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wil_print_crypto.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.99, i8 1, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"DBG[MISC]Control port : %d, eth_type 0x%04x no_encrypt %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wil_cfg80211_change_beacon.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 2, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wil_cfg80211_change_beacon\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DBG[MISC]change_beacon, mid=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@wil_cfg80211_change_beacon.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.102, i8 2, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DBG[MISC]privacy changed %d=>%d. Restarting AP\0A\00", [48 x i8] zeroinitializer }, align 32
@wil_cfg80211_stop_ap.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 2, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wil_cfg80211_stop_ap\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DBG[MISC]stop_ap, mid=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@wil_cfg80211_add_station.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.2, ptr @.str.106, i8 2, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wil_cfg80211_add_station\00", [39 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"DBG[MISC]add station %pM aid %d mid %d mask 0x%x set 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: not supported with AP SME enabled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: invalid aid\0A\00", [47 x i8] zeroinitializer }, align 32
@wil_cfg80211_del_station.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.2, ptr @.str.110, i8 2, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wil_cfg80211_del_station\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DBG[MISC]del_station: %pM, reason=%d mid=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@wil_cfg80211_change_station.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.112, i8 2, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wil_cfg80211_change_station\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"DBG[MISC]change station %pM mask 0x%x set 0x%x mid %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wil_cfg80211_change_station.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.113, i8 2, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[MISC]not supported with AP SME enabled\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: station not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: ring data not found\0A\00", [39 x i8] zeroinitializer }, align 32
@wil_cfg80211_change_station.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.116, i8 2, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DBG[MISC]cid %d ring %d authorize %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wil_cfg80211_get_station.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.118, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wil_cfg80211_get_station\00", [39 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DBG[MISC]get_station: %pM CID %d MID %d\0A\00", [55 x i8] zeroinitializer }, align 32
@wil_cfg80211_dump_station.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.2, ptr @.str.120, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wil_cfg80211_dump_station\00", [38 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DBG[MISC]dump_station: %pM CID %d MID %d\0A\00", [54 x i8] zeroinitializer }, align 32
@wil_cfg80211_change_bss.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.2, ptr @.str.122, i8 2, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wil_cfg80211_change_bss\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DBG[MISC]change_bss: ap_isolate MID %d, %d => %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wil_cfg80211_scan.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.124, i8 0, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wil_cfg80211_scan\00", [46 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DBG[MISC]scan: wdev=0x%p iftype=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Can't scan now\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Already scanning\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: P2P search requested on stopped P2P device\0A\00", [48 x i8] zeroinitializer }, align 32
@wil_cfg80211_scan.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.128, i8 0, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[MISC]Start scan_request 0x%p\0A\00", [62 x i8] zeroinitializer }, align 32
@wil_cfg80211_scan.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.129, i8 0, i8 -17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DBG[MISC]SSID count: %d\00", [40 x i8] zeroinitializer }, align 32
@wil_cfg80211_scan.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.130, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DBG[MISC]SSID[%d]\00", [46 x i8] zeroinitializer }, align 32
@wil_cfg80211_scan.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.16, i8 0, i8 -16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: set SSID for scan request failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.132 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Scan requested for unknown frequency %dMhz\0A\00", [48 x i8] zeroinitializer }, align 32
@wil_cfg80211_scan.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.133, i8 0, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[MISC]Scan for ch %d  : %d MHz\0A\00", [61 x i8] zeroinitializer }, align 32
@wil_cfg80211_scan.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.134, i8 0, i8 -6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DBG[MISC]Scan IE \00", [46 x i8] zeroinitializer }, align 32
@wil_cfg80211_scan.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.135, i8 0, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DBG[MISC]Scan has no IE's\0A\00", [37 x i8] zeroinitializer }, align 32
@wil_cfg80211_scan.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.136, i8 0, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[MISC]active scan with discovery_mode=1\0A\00", [52 x i8] zeroinitializer }, align 32
@wil_cfg80211_abort_scan.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.2, ptr @.str.138, i8 1, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wil_cfg80211_abort_scan\00", [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DBG[MISC]wdev=0x%p iftype=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@wil_cfg80211_abort_scan.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.2, ptr @.str.139, i8 1, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DBG[MISC]abort scan was called on the wrong iface\0A\00", [45 x i8] zeroinitializer }, align 32
@wil_cfg80211_connect.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.140, ptr @.str.2, ptr @.str.141, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wil_cfg80211_connect\00", [43 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DBG[MISC]connect, mid=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: IE too large (%td bytes)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: WSC connection\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: No WSC with FT roam\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Unable to find BSS\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: No SSID\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Unsupported BSS type, capability= 0x%04x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: BSS at unknown frequency %dMhz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: FT: Unsupported BSS type, capability= 0x%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: WMI_DELETE_CIPHER_KEY_CMD(PTK) failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: WMI_DELETE_CIPHER_KEY_CMD(GTK) failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Connecting to:\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.wil_print_connect_params = private unnamed_addr constant [25 x i8] c"wil_print_connect_params\00", align 1
@.str.153 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:   Channel: %d freq %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s:   BSSID: %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"  SSID: \00", [23 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:   Previous BSSID=%pM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:   Auth Type: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:   Privacy: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:   PBSS: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OPEN_SYSTEM\00", [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SHARED_KEY\00", [21 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FT\00", [29 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NETWORK_EAP\00", [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SAE\00", [28 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AUTOMATIC\00", [22 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: FT: FW does not support FT roaming\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.wil_ft_connect = private unnamed_addr constant [15 x i8] c"wil_ft_connect\00", align 1
@.str.169 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: FT: prev_bssid was not set\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: FT: can not roam to same AP\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: FT: roam while not connected\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: FT: privacy mismatch, current (%d) roam (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: FT: roam is not valid for PBSS\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: FT: roaming\0A\00", [47 x i8] zeroinitializer }, align 32
@wil_cfg80211_disconnect.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.175, ptr @.str.2, ptr @.str.176, i8 1, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wil_cfg80211_disconnect\00", [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DBG[MISC]disconnect: reason=%d, mid=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Disconnect was called while disconnected\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: disconnect error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wil_remain_on_channel.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.179, ptr @.str.2, ptr @.str.180, i8 1, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wil_remain_on_channel\00", [42 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"DBG[MISC]remain_on_channel: center_freq=%d, duration=%d iftype=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@wil_cancel_remain_on_channel.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.181, ptr @.str.2, ptr @.str.182, i8 1, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wil_cancel_remain_on_channel\00", [35 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[MISC]cancel_remain_on_channel\0A\00", [61 x i8] zeroinitializer }, align 32
@wil_cfg80211_set_power_mgmt.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.183, ptr @.str.2, ptr @.str.184, i8 2, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wil_cfg80211_set_power_mgmt\00", [36 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DBG[MISC]enabled=%d, timeout=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.2, ptr @.str.186, i8 2, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wil_cfg80211_sched_scan_start\00", [34 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"DBG[MISC]sched scan start: n_ssids %d, ie_len %zu, flags 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.2, ptr @.str.187, i8 2, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[MISC]SSID[%d]:\00", [45 x i8] zeroinitializer }, align 32
@wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.2, ptr @.str.16, i8 2, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.2, ptr @.str.188, i8 2, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[MISC]channels:\00", [45 x i8] zeroinitializer }, align 32
@wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.2, ptr @.str.189, i8 2, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DBG[MISC] %d%s\00", [17 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug435 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.2, ptr @.str.192, i8 2, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.192 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"DBG[MISC]n_match_sets %d, min_rssi_thold %d, delay %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.2, ptr @.str.193, i8 2, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DBG[MISC]MATCHSET[%d]: rssi_thold %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug437 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.2, ptr @.str.16, i8 2, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug438 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.2, ptr @.str.194, i8 2, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.194 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DBG[MISC]n_scan_plans %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug439 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.2, ptr @.str.195, i8 2, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DBG[MISC]SCAN PLAN[%d]: interval %d iterations %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wil_cfg80211_sched_scan_stop.__UNIQUE_ID_ddebug440 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.196, ptr @.str.2, ptr @.str.197, i8 2, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.196 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wil_cfg80211_sched_scan_stop\00", [35 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[MISC]sched scan stopped (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@wil_cfg80211_probe_client.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.198, ptr @.str.2, ptr @.str.199, i8 2, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.198 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wil_cfg80211_probe_client\00", [38 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DBG[MISC]probe_client: %pM => CID %d MID %d\0A\00", [51 x i8] zeroinitializer }, align 32
@wil_cfg80211_start_p2p_device.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.200, ptr @.str.2, ptr @.str.201, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.200 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wil_cfg80211_start_p2p_device\00", [34 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DBG[MISC]start_p2p_device: entered\0A\00", [60 x i8] zeroinitializer }, align 32
@wil_cfg80211_stop_p2p_device.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.202, ptr @.str.2, ptr @.str.203, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.202 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wil_cfg80211_stop_p2p_device\00", [35 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DBG[MISC]stop_p2p_device: entered\0A\00", [61 x i8] zeroinitializer }, align 32
@wil_cfg80211_update_ft_ies.__UNIQUE_ID_ddebug441 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.204, ptr @.str.2, ptr @.str.205, i8 2, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.204 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wil_cfg80211_update_ft_ies\00", [37 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DBG[MISC]update ft ies, mid=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@wil_cfg80211_update_ft_ies.__UNIQUE_ID_ddebug442 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.204, ptr @.str.2, ptr @.str.206, i8 2, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.206 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DBG[MISC]FT IE \00", [16 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: FT: bss is NULL\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: FT: reassoc failed (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: set multicast to unicast, enabled=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.wil_cfg80211_set_multicast_to_unicast = private unnamed_addr constant [38 x i8] c"wil_cfg80211_set_multicast_to_unicast\00", align 1
@wil_wiphy_init.__UNIQUE_ID_ddebug443 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.210, ptr @.str.2, ptr @.str.211, i8 2, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.210 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil_wiphy_init\00", [17 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s : flags = 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@wil_cipher_suites = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1027080], [28 x i8] zeroinitializer }, align 32
@wil_mgmt_stypes = internal constant { [13 x %struct.ieee80211_txrx_stypes], [44 x i8] } { [13 x %struct.ieee80211_txrx_stypes] [%struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 11306, i16 15381 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer], [44 x i8] zeroinitializer }, align 32
@wil_nl80211_vendor_commands = internal constant { [4 x %struct.wiphy_vendor_command], [48 x i8] } { [4 x %struct.wiphy_vendor_command] [%struct.wiphy_vendor_command { %struct.nl80211_vendor_cmd_info { i32 4980, i32 139 }, i32 5, ptr @wil_rf_sector_get_cfg, ptr null, ptr @wil_rf_sector_policy, i32 0 }, %struct.wiphy_vendor_command { %struct.nl80211_vendor_cmd_info { i32 4980, i32 140 }, i32 5, ptr @wil_rf_sector_set_cfg, ptr null, ptr @wil_rf_sector_policy, i32 0 }, %struct.wiphy_vendor_command { %struct.nl80211_vendor_cmd_info { i32 4980, i32 141 }, i32 5, ptr @wil_rf_sector_get_selected, ptr null, ptr @wil_rf_sector_policy, i32 0 }, %struct.wiphy_vendor_command { %struct.nl80211_vendor_cmd_info { i32 4980, i32 142 }, i32 5, ptr @wil_rf_sector_set_selected, ptr null, ptr @wil_rf_sector_policy, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wil_wowlan_support = internal global { %struct.wiphy_wowlan_support, [36 x i8] } { %struct.wiphy_wowlan_support { i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@wil_60ghz_channels = internal global { [4 x %struct.ieee80211_channel], [32 x i8] } { [4 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 2, i32 58320, i16 0, i16 1, i32 0, i32 0, i32 40, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 2, i32 60480, i16 0, i16 2, i32 0, i32 0, i32 40, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 2, i32 62640, i16 0, i16 3, i32 0, i32 0, i32 40, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 2, i32 64800, i16 0, i16 4, i32 0, i32 0, i32 40, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@wil_band_60ghz = internal global { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, [36 x i8] } { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr } { ptr @wil_60ghz_channels, ptr null, i32 0, i32 4, i32 0, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 0, i8 1, i8 3, i8 6, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] } { <{ i8, i8, [8 x i8] }> <{ i8 -2, i8 31, [8 x i8] zeroinitializer }>, i16 0, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@wil_rf_sector_policy = internal constant { [35 x %struct.nla_policy], [72 x i8] } { [35 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.107 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.107 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.107 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.107 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.107 zeroinitializer }, %struct.nla_policy zeroinitializer], [72 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Invalid rf sector ATTR\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.wil_rf_sector_get_cfg = private unnamed_addr constant [22 x i8] c"wil_rf_sector_get_cfg\00", align 1
@.str.214 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Invalid rf sector spec\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Invalid sector index %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Invalid sector type %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Invalid rf module mask 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: get rf sector cfg failed with status %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__const.wil_rf_sector_set_cfg.reply = private unnamed_addr constant %struct.anon.171 <{ %struct.wmi_cmd_hdr zeroinitializer, %struct.wmi_set_rf_sector_params_done_event { i8 3 } }>, align 1
@__func__.wil_rf_sector_set_cfg = private unnamed_addr constant [22 x i8] c"wil_rf_sector_set_cfg\00", align 1
@wil_rf_sector_cfg_policy = internal constant { [8 x %struct.nla_policy], [32 x i8] } { [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.107 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.107 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.107 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.107 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.107 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.107 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.107 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: invalid sector cfg\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: missing cfg params\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: invalid RF module index %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__const.wil_rf_sector_get_selected.reply = private unnamed_addr constant %struct.anon.172 { %struct.wmi_cmd_hdr zeroinitializer, %struct.wmi_get_selected_rf_sector_index_done_event { i16 0, i8 3, [5 x i8] zeroinitializer, i64 0 } }, align 1
@__func__.wil_rf_sector_get_selected = private unnamed_addr constant [27 x i8] c"wil_rf_sector_get_selected\00", align 1
@.str.222 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid MAC address %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: must specify MAC address when connected\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: get rf selected sector cfg failed with status %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.wil_rf_sector_set_selected = private unnamed_addr constant [27 x i8] c"wil_rf_sector_set_selected\00", align 1
@.str.225 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: broadcast MAC valid only with unlocking\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: unlock cid %d failed with status %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__const.wil_rf_sector_wmi_set_selected.reply = private unnamed_addr constant %struct.anon.173 { %struct.wmi_cmd_hdr zeroinitializer, %struct.wmi_set_selected_rf_sector_index_done_event { i8 3, [3 x i8] zeroinitializer } }, align 1
@switch.table.wil_iftype_nl2wmi = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 0, i32 0, i32 5, i32 0, i32 3, i32 4], [60 x i8] zeroinitializer }, align 32
@switch.table.wil_spec2wmi_ch = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\01\02\03\04\05\00\00\06\07\08\09", [20 x i8] zeroinitializer }, align 32
@switch.table.wil_wmi2spec_ch = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01\02\03\04\05\06\09\0A\0B\0C", [22 x i8] zeroinitializer }, align 32
@switch.table._wil_cfg80211_start_ap = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 0, i32 0, i32 5, i32 0, i32 3, i32 4], [60 x i8] zeroinitializer }, align 32
@switch.table.wil_detect_key_usage = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2], [32 x i8] zeroinitializer }, align 32
@switch.table.wil_cfg80211_connect = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.167, ptr @.str.167, ptr @.str.167, ptr @.str.166], [60 x i8] zeroinitializer }, align 32
@switch.table.wil_rf_sector_get_cfg = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -22, i32 -11, i32 -95], [16 x i8] zeroinitializer }, align 32
@switch.table.wil_rf_sector_set_cfg = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -22, i32 -11, i32 -95], [16 x i8] zeroinitializer }, align 32
@switch.table.wil_rf_sector_get_selected = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -22, i32 -11, i32 -95], [16 x i8] zeroinitializer }, align 32
@switch.table.wil_rf_sector_wmi_set_selected = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -22, i32 -11, i32 -95], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.228 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.229 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.230 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.232 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 6, i64 12]
@__sancov_gen_cov_switch_values.233 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 8, i64 10]
@__sancov_gen_cov_switch_values.234 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.235 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.236 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 6, i64 12]
@___asan_gen_.237 = private unnamed_addr constant [15 x i8] c"disable_ap_sme\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 33, i32 6 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 119, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [9 x i8] c"__nl2wmi\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 332, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 458, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 763, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1445, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1456, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1461, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1468, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1475, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2053, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2057, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2066, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2079, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2370, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2733, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2761, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2770, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2780, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2783, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2798, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"wil_cfg80211_ops\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2638, i32 34 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2825, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1952, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1954, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1973, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1638, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1642, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [14 x i8] c"key_usage_str\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 319, i32 27 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1651, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1662, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1676, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1528, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1533, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1553, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 320, i32 27 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 321, i32 27 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 322, i32 27 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 323, i32 28 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 324, i32 28 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2456, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2464, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2481, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 682, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 690, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 709, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 715, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 741, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 781, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 785, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 796, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 804, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 833, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 849, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1712, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1716, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1733, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2136, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2145, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2163, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2166, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2168, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2170, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2172, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2174, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1202, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1207, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1849, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1851, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1853, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1855, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1857, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1859, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1067, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1069, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1072, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1074, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1075, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1081, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2094, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2107, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2196, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2235, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2240, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2245, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2259, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2280, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2285, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2294, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2305, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2311, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 545, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 588, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2421, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 902, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 917, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 925, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 934, i32 4 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 956, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 957, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 960, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 973, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 988, i32 4 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 995, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1000, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1003, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1012, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1039, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1048, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1229, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1244, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1252, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1254, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1266, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1272, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1291, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1299, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1307, i32 4 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1323, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1329, i32 4 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1109, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1111, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1115, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1117, i32 18 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1117, i32 29 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1120, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1121, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1123, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1124, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1091, i32 10 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1093, i32 10 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1095, i32 10 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1097, i32 10 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1099, i32 10 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1101, i32 10 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1103, i32 10 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1138, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1143, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1148, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1153, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1158, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1164, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1172, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1395, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1400, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1409, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1746, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 1761, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2436, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2498, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2502, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2507, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2509, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2511, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2517, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2523, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2527, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2553, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2391, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 601, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 614, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2568, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2569, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2591, i32 3 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2601, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2615, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2695, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant [18 x i8] c"wil_cipher_suites\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 315, i32 18 }
@___asan_gen_.885 = private unnamed_addr constant [16 x i8] c"wil_mgmt_stypes\00", align 1
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 273, i32 1 }
@___asan_gen_.888 = private unnamed_addr constant [28 x i8] c"wil_nl80211_vendor_commands\00", align 1
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 219, i32 42 }
@___asan_gen_.891 = private unnamed_addr constant [19 x i8] c"wil_wowlan_support\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 38, i32 36 }
@___asan_gen_.894 = private unnamed_addr constant [19 x i8] c"wil_60ghz_channels\00", align 1
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 52, i32 33 }
@___asan_gen_.897 = private unnamed_addr constant [15 x i8] c"wil_band_60ghz\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 256, i32 40 }
@___asan_gen_.900 = private unnamed_addr constant [21 x i8] c"wil_rf_sector_policy\00", align 1
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 179, i32 12 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2897, i32 3 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2904, i32 3 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2911, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2917, i32 3 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2924, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 2938, i32 3 }
@___asan_gen_.921 = private unnamed_addr constant [25 x i8] c"wil_rf_sector_cfg_policy\00", align 1
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 188, i32 12 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 3053, i32 4 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 3064, i32 4 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 3071, i32 4 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 3144, i32 4 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 3149, i32 4 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 3165, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 3269, i32 5 }
@___asan_gen_.945 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.946 = private constant [47 x i8] c"../drivers/net/wireless/ath/wil6210/cfg80211.c\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.946, i32 3303, i32 6 }
@___asan_gen_.948 = private unnamed_addr constant [31 x i8] c"switch.table.wil_iftype_nl2wmi\00", align 1
@___asan_gen_.949 = private unnamed_addr constant [29 x i8] c"switch.table.wil_spec2wmi_ch\00", align 1
@___asan_gen_.950 = private unnamed_addr constant [29 x i8] c"switch.table.wil_wmi2spec_ch\00", align 1
@___asan_gen_.951 = private unnamed_addr constant [36 x i8] c"switch.table._wil_cfg80211_start_ap\00", align 1
@___asan_gen_.952 = private unnamed_addr constant [34 x i8] c"switch.table.wil_detect_key_usage\00", align 1
@___asan_gen_.953 = private unnamed_addr constant [34 x i8] c"switch.table.wil_cfg80211_connect\00", align 1
@___asan_gen_.954 = private unnamed_addr constant [35 x i8] c"switch.table.wil_rf_sector_get_cfg\00", align 1
@___asan_gen_.955 = private unnamed_addr constant [35 x i8] c"switch.table.wil_rf_sector_set_cfg\00", align 1
@___asan_gen_.956 = private unnamed_addr constant [40 x i8] c"switch.table.wil_rf_sector_get_selected\00", align 1
@___asan_gen_.957 = private unnamed_addr constant [44 x i8] c"switch.table.wil_rf_sector_wmi_set_selected\00", align 1
@llvm.compiler.used = appending global [250 x ptr] [ptr @__UNIQUE_ID_disable_ap_sme344, ptr @__UNIQUE_ID_disable_ap_smetype343, ptr @__param_disable_ap_sme, ptr @disable_ap_sme, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wil_iftype_nl2wmi.__nl2wmi, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @wil_cfg80211_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @key_usage_str, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @wil_cipher_suites, ptr @wil_mgmt_stypes, ptr @wil_nl80211_vendor_commands, ptr @wil_wowlan_support, ptr @wil_60ghz_channels, ptr @wil_band_60ghz, ptr @wil_rf_sector_policy, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @wil_rf_sector_cfg_policy, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @switch.table.wil_iftype_nl2wmi, ptr @switch.table.wil_spec2wmi_ch, ptr @switch.table.wil_wmi2spec_ch, ptr @switch.table._wil_cfg80211_start_ap, ptr @switch.table.wil_detect_key_usage, ptr @switch.table.wil_cfg80211_connect, ptr @switch.table.wil_rf_sector_get_cfg, ptr @switch.table.wil_rf_sector_set_cfg, ptr @switch.table.wil_rf_sector_get_selected, ptr @switch.table.wil_rf_sector_wmi_set_selected], section "llvm.metadata"
@0 = internal global [247 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_ap_sme to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_iftype_nl2wmi.__nl2wmi to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 190, i32 224, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_cfg80211_ops to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_usage_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_cipher_suites to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_mgmt_stypes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_nl80211_vendor_commands to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_wowlan_support to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_60ghz_channels to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_band_60ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_rf_sector_policy to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_rf_sector_cfg_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wil_iftype_nl2wmi to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wil_spec2wmi_ch to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wil_wmi2spec_ch to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._wil_cfg80211_start_ap to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wil_detect_key_usage to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wil_cfg80211_connect to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wil_rf_sector_get_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wil_rf_sector_set_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wil_rf_sector_get_selected to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wil_rf_sector_wmi_set_selected to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_supported_bands(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy1 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_supported_bands.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_supported_bands, %if.then)) #10
          to label %do.end7 [label %if.then], !srcloc !556

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @update_supported_bands.__UNIQUE_ID_ddebug345, ptr noundef %3, ptr noundef nonnull @.str.3) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.3) #10
  %fw_capabilities.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 16
  %4 = ptrtoint ptr %fw_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %fw_capabilities.i, align 4
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %spec.select.i = select i1 %tobool.not.i, i32 3, i32 4
  %arrayidx = getelementptr %struct.wiphy, ptr %1, i32 0, i32 53, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select.i, ptr %n_channels, align 4
  %10 = ptrtoint ptr %fw_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %fw_capabilities.i, align 4
  %12 = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %do.end7.if.end19_crit_edge, label %if.then13

do.end7.if.end19_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then13:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %edmg_cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %edmg_cap to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 15, ptr %edmg_cap, align 4
  %16 = load ptr, ptr %arrayidx, align 8
  %bw_config = getelementptr inbounds %struct.ieee80211_supported_band, ptr %16, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %bw_config to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %bw_config, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %do.end7.if.end19_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_iftype_nl2wmi(i32 noundef %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 9
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 423, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.wil_iftype_nl2wmi, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %wmi = getelementptr [6 x %struct.anon.131], ptr @wil_iftype_nl2wmi.__nl2wmi, i32 0, i32 %switch.load, i32 1
  %3 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wmi, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %switch.lookup ], [ -95, %entry.cleanup_crit_edge ], [ -95, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @wil_spec2wmi_ch(i8 noundef zeroext %spec_ch, ptr nocapture noundef writeonly %wmi_ch) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i8 %spec_ch, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %switch.tableidx)
  %0 = icmp ult i8 %switch.tableidx, 12
  br i1 %0, label %switch.hole_check, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 3903, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.return_crit_edge, label %switch.lookup

switch.hole_check.return_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %2 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.wil_spec2wmi_ch, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %3)
  %switch.load = load i8, ptr %switch.gep, align 1
  %4 = ptrtoint ptr %wmi_ch to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %switch.load, ptr %wmi_ch, align 1
  br label %return

return:                                           ; preds = %switch.lookup, %switch.hole_check.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %switch.lookup ], [ -22, %switch.hole_check.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @wil_wmi2spec_ch(i8 noundef zeroext %wmi_ch, ptr nocapture noundef writeonly %spec_ch) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %wmi_ch)
  %0 = icmp ult i8 %wmi_ch, 10
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = sext i8 %wmi_ch to i32
  %switch.gep = getelementptr inbounds [10 x i8], ptr @switch.table.wil_wmi2spec_ch, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  %3 = ptrtoint ptr %spec_ch to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %switch.load, ptr %spec_ch, align 1
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_cid_fill_sinfo(ptr noundef %vif, i32 noundef %cid, ptr nocapture noundef %sinfo) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.wmi_notify_req_cmd, align 1
  %reply = alloca %struct.anon.132, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #10
  %2 = getelementptr inbounds %struct.wmi_notify_req_cmd, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %cid to i8
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %cmd, align 1
  %4 = call ptr @memset(ptr %2, i32 0, i32 11)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %reply) #10
  %stats3 = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 3
  %5 = call ptr @memset(ptr %reply, i32 0, i32 52)
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 3
  %6 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mid, align 4
  %call = call i32 @wmi_call(ptr noundef %1, i16 noundef zeroext 2147, i8 noundef zeroext %7, ptr noundef nonnull %cmd, i16 noundef zeroext 12, i16 noundef zeroext 6243, ptr noundef nonnull %reply, i16 noundef zeroext 52, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %evt = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1
  %bf_mcs = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %bf_mcs to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %bf_mcs, align 1
  %10 = lshr i16 %9, 8
  %conv4 = trunc i16 %10 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cid_fill_sinfo.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cid_fill_sinfo, %if.then11)) #10
          to label %do.end37 [label %if.then11], !srcloc !556

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_ndev, align 4
  %13 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mid, align 4
  %conv13 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 26, i16 %10)
  %cmp = icmp eq i16 %10, 26
  %cond = select i1 %cmp, ptr @.str.6, ptr @.str.7
  %tsf = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %tsf to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %tsf, align 1
  %17 = call i64 @llvm.bswap.i64(i64 %16)
  %18 = ptrtoint ptr %evt to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %evt, align 1
  %rssi = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rssi, align 1
  %conv19 = sext i8 %21 to i32
  %sqi = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 14
  %22 = ptrtoint ptr %sqi to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sqi, align 1
  %conv21 = zext i8 %23 to i32
  %tx_tpt = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %tx_tpt to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %tx_tpt, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %tx_goodput = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 6
  %27 = ptrtoint ptr %tx_goodput to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %tx_goodput, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %rx_goodput = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 7
  %30 = ptrtoint ptr %rx_goodput to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %rx_goodput, align 1
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %my_rx_sector = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 9
  %33 = ptrtoint ptr %my_rx_sector to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %my_rx_sector, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %conv26 = zext i16 %35 to i32
  %my_tx_sector = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 10
  %36 = ptrtoint ptr %my_tx_sector to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %my_tx_sector, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %conv28 = zext i16 %38 to i32
  %other_rx_sector = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 11
  %39 = ptrtoint ptr %other_rx_sector to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %other_rx_sector, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %conv30 = zext i16 %41 to i32
  %other_tx_sector = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 12
  %42 = ptrtoint ptr %other_tx_sector to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %other_tx_sector, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43)
  %conv32 = zext i16 %44 to i32
  %tx_mode = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %tx_mode to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_mode, align 1
  %conv34 = zext i8 %46 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cid_fill_sinfo.__UNIQUE_ID_ddebug346, ptr noundef %12, ptr noundef nonnull @.str.5, i32 noundef %cid, i32 noundef %conv13, ptr noundef nonnull %cond, i64 noundef %17, i32 noundef %19, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %conv26, i32 noundef %conv28, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %conv34) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then11, %if.end
  %47 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %mid, align 4
  %conv39 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 26, i16 %10)
  %cmp41 = icmp eq i16 %10, 26
  %cond43 = select i1 %cmp41, ptr @.str.6, ptr @.str.7
  %tsf45 = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %tsf45 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %tsf45, align 1
  %51 = call i64 @llvm.bswap.i64(i64 %50)
  %52 = ptrtoint ptr %evt to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %evt, align 1
  %rssi49 = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %rssi49 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %rssi49, align 1
  %conv50 = sext i8 %55 to i32
  %sqi52 = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 14
  %56 = ptrtoint ptr %sqi52 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %sqi52, align 1
  %conv53 = zext i8 %57 to i32
  %tx_tpt55 = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 5
  %58 = ptrtoint ptr %tx_tpt55 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %tx_tpt55, align 1
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %tx_goodput57 = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 6
  %61 = ptrtoint ptr %tx_goodput57 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %tx_goodput57, align 1
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %rx_goodput59 = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 7
  %64 = ptrtoint ptr %rx_goodput59 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %rx_goodput59, align 1
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  %my_rx_sector61 = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 9
  %67 = ptrtoint ptr %my_rx_sector61 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %my_rx_sector61, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %68)
  %conv62 = zext i16 %69 to i32
  %my_tx_sector64 = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 10
  %70 = ptrtoint ptr %my_tx_sector64 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %my_tx_sector64, align 1
  %72 = call i16 @llvm.bswap.i16(i16 %71)
  %conv65 = zext i16 %72 to i32
  %other_rx_sector67 = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 11
  %73 = ptrtoint ptr %other_rx_sector67 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %other_rx_sector67, align 1
  %75 = call i16 @llvm.bswap.i16(i16 %74)
  %conv68 = zext i16 %75 to i32
  %other_tx_sector70 = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 12
  %76 = ptrtoint ptr %other_tx_sector70 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %other_tx_sector70, align 1
  %78 = call i16 @llvm.bswap.i16(i16 %77)
  %conv71 = zext i16 %78 to i32
  %tx_mode73 = getelementptr inbounds %struct.anon.132, ptr %reply, i32 0, i32 1, i32 3
  %79 = ptrtoint ptr %tx_mode73 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %tx_mode73, align 1
  %conv74 = zext i8 %80 to i32
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %cid, i32 noundef %conv39, ptr noundef nonnull %cond43, i64 noundef %51, i32 noundef %53, i32 noundef %conv50, i32 noundef %conv53, i32 noundef %60, i32 noundef %63, i32 noundef %66, i32 noundef %conv62, i32 noundef %conv65, i32 noundef %conv68, i32 noundef %conv71, i32 noundef %conv74) #10
  %sinfo_gen = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 29
  %81 = ptrtoint ptr %sinfo_gen to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sinfo_gen, align 4
  %generation = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 23
  %83 = ptrtoint ptr %generation to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %generation, align 4
  %84 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 268457740, ptr %sinfo, align 8
  %use_enhanced_dma_hw = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 67
  %85 = ptrtoint ptr %use_enhanced_dma_hw to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %use_enhanced_dma_hw, align 4, !range !557
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool77.not = icmp eq i8 %86, 0
  br i1 %tobool77.not, label %do.end37.if.end85_crit_edge, label %land.lhs.true

do.end37.if.end85_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.lhs.true:                                    ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %tx_mode73 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %tx_mode73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp82.not = icmp eq i8 %88, 0
  %spec.select = select i1 %cmp82.not, i8 8, i8 32
  br label %if.end85

if.end85:                                         ; preds = %land.lhs.true, %do.end37.if.end85_crit_edge
  %rx_rate_flag.0 = phi i8 [ 8, %do.end37.if.end85_crit_edge ], [ %spec.select, %land.lhs.true ]
  %last_mcs_rx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 3, i32 17
  %89 = ptrtoint ptr %last_mcs_rx to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %last_mcs_rx, align 4
  %conv86 = trunc i16 %90 to i8
  %spec.select182 = select i1 %cmp41, i8 7, i8 %conv4
  %spec.select183 = select i1 %cmp41, i8 64, i8 %rx_rate_flag.0
  %conv86.mask = and i16 %90, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 26, i16 %conv86.mask)
  %cmp93 = icmp eq i16 %conv86.mask, 26
  %rx_mcs.0 = select i1 %cmp93, i8 7, i8 %conv86
  %rx_rate_flag.1 = select i1 %cmp93, i8 64, i8 %rx_rate_flag.0
  %txrate = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  %91 = ptrtoint ptr %txrate to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %spec.select183, ptr %txrate, align 8
  %rxrate = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 15
  %92 = ptrtoint ptr %rxrate to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %rx_rate_flag.1, ptr %rxrate, align 2
  %mcs = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 1
  %93 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %spec.select182, ptr %mcs, align 1
  %mcs100 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 15, i32 1
  %94 = ptrtoint ptr %mcs100 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %rx_mcs.0, ptr %mcs100, align 1
  %95 = ptrtoint ptr %tx_mode73 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %tx_mode73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %96)
  %cond.i = icmp eq i8 %96, 2
  %conv104 = select i1 %cond.i, i8 2, i8 1
  %n_bonded_ch = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 8
  %97 = ptrtoint ptr %n_bonded_ch to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv104, ptr %n_bonded_ch, align 1
  %last_cb_mode_rx = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 3, i32 18
  %98 = ptrtoint ptr %last_cb_mode_rx to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %last_cb_mode_rx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %99)
  %cond.i186 = icmp eq i8 %99, 2
  %conv107 = select i1 %cond.i186, i8 2, i8 1
  %n_bonded_ch109 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 15, i32 8
  %100 = ptrtoint ptr %n_bonded_ch109 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv107, ptr %n_bonded_ch109, align 1
  %rx_bytes = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 3, i32 2
  %101 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_bytes, align 8
  %conv110 = zext i32 %102 to i64
  %rx_bytes111 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 4
  %103 = ptrtoint ptr %rx_bytes111 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %conv110, ptr %rx_bytes111, align 8
  %104 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %stats3, align 8
  %rx_packets112 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 16
  %106 = ptrtoint ptr %rx_packets112 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %rx_packets112, align 4
  %rx_dropped = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 3, i32 8
  %107 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rx_dropped, align 8
  %rx_dropped_misc = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 20
  %109 = ptrtoint ptr %rx_dropped_misc to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %rx_dropped_misc, align 4
  %tx_bytes = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 3, i32 3
  %110 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx_bytes, align 4
  %conv113 = zext i32 %111 to i64
  %tx_bytes114 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 5
  %112 = ptrtoint ptr %tx_bytes114 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %conv113, ptr %tx_bytes114, align 8
  %tx_packets = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 3, i32 1
  %113 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_packets, align 4
  %tx_packets115 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 17
  %115 = ptrtoint ptr %tx_packets115 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %tx_packets115, align 8
  %tx_errors = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %cid, i32 3, i32 4
  %116 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tx_errors, align 8
  %tx_failed = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 19
  %118 = ptrtoint ptr %tx_failed to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %tx_failed, align 8
  %status116 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 4
  %119 = ptrtoint ptr %status116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %status116, align 4
  %121 = and i32 %120, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool118.not = icmp eq i32 %121, 0
  br i1 %tobool118.not, label %if.end85.cleanup_crit_edge, label %if.then119

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then119:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 268457868, ptr %sinfo, align 8
  %fw_capabilities = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 16
  %123 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %fw_capabilities, align 4
  %125 = and i32 %124, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool123.not = icmp eq i32 %125, 0
  %126 = ptrtoint ptr %sqi52 to i32
  call void @__asan_load1_noabort(i32 %126)
  %sqi52.val = load i8, ptr %sqi52, align 1
  %127 = ptrtoint ptr %rssi49 to i32
  call void @__asan_load1_noabort(i32 %127)
  %rssi49.val = load i8, ptr %rssi49, align 1
  %128 = select i1 %tobool123.not, i8 %sqi52.val, i8 %rssi49.val
  %signal129 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %129 = ptrtoint ptr %signal129 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %signal129, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %if.end85.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %reply) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_call(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_find_cid_by_idx(ptr nocapture noundef readonly %wil, i8 noundef zeroext %mid, i32 noundef %idx) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_assoc_sta = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 26
  %0 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not = icmp eq i32 %1, 0
  br i1 %cmp21.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %idx.addr.022 = phi i32 [ %idx.addr.1, %for.inc.for.body_crit_edge ], [ %idx, %entry.for.body_crit_edge ]
  %status = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %i.023, i32 2
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %mid4 = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 63, i32 %i.023, i32 1
  %4 = ptrtoint ptr %mid4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mid4, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %mid)
  %cmp6.not = icmp eq i8 %5, %mid
  br i1 %cmp6.not, label %if.end9, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.addr.022)
  %cmp10 = icmp eq i32 %idx.addr.022, 0
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %idx.addr.022, -1
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %idx.addr.1 = phi i32 [ %idx.addr.022, %for.body.for.inc_crit_edge ], [ %idx.addr.022, %if.end.for.inc_crit_edge ], [ %dec, %if.end13 ]
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -2, %for.inc.cleanup_crit_edge ], [ %i.023, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_vif_prepare_stop(ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ndev3 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 1
  %4 = ptrtoint ptr %ndev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev3, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @wmi_pcp_stop(ptr noundef %vif) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then4.if.end7_crit_edge, label %if.then6

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.wil_vif_prepare_stop, i32 noundef %call5) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4.if.end7_crit_edge
  tail call void @wil_bcast_fini(ptr noundef %vif) #10
  tail call void @netif_carrier_off(ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_pcp_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_bcast_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_cfg80211_mgmt_tx(ptr noundef %wiphy, ptr noundef %wdev, ptr nocapture noundef readonly %params, ptr noundef readonly %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf1 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 3
  %0 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf1, align 4
  %len2 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 4
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %p2p_wdev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %4 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p2p_wdev.i, align 4
  %cmp.i = icmp eq ptr %5, %wdev
  br i1 %cmp.i, label %if.then.i, label %wiphy_priv.exit.wdev_to_vif.exit_crit_edge

wiphy_priv.exit.wdev_to_vif.exit_crit_edge:       ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wdev_to_vif.exit

if.then.i:                                        ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 2304
  br label %wdev_to_vif.exit

wdev_to_vif.exit:                                 ; preds = %if.then.i, %wiphy_priv.exit.wdev_to_vif.exit_crit_edge
  %retval.0.i188 = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %wdev, %wiphy_priv.exit.wdev_to_vif.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_mgmt_tx.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_mgmt_tx, %if.then)) #10
          to label %do.end14 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wdev_to_vif.exit
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %main_ndev, align 4
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %params, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %if.then.cond.end_crit_edge ]
  %offchan = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 1
  %14 = ptrtoint ptr %offchan to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %offchan, align 4, !range !557
  %16 = zext i8 %15 to i32
  %wait = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 2
  %17 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wait, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_mgmt_tx.__UNIQUE_ID_ddebug388, ptr noundef %9, ptr noundef nonnull @.str.10, i32 noundef %cond, i32 noundef %16, i32 noundef %18) #10
  br label %do.end14

do.end14:                                         ; preds = %cond.end, %wdev_to_vif.exit
  %19 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %params, align 4
  %tobool16.not = icmp eq ptr %20, null
  br i1 %tobool16.not, label %do.end14.cond.end22_crit_edge, label %cond.true17

do.end14.cond.end22_crit_edge:                    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end22

cond.true17:                                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  %hw_value19 = getelementptr inbounds %struct.ieee80211_channel, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %hw_value19 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_value19, align 2
  %conv20 = zext i16 %22 to i32
  br label %cond.end22

cond.end22:                                       ; preds = %cond.true17, %do.end14.cond.end22_crit_edge
  %cond23 = phi i32 [ %conv20, %cond.true17 ], [ -1, %do.end14.cond.end22_crit_edge ]
  %offchan24 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 1
  %23 = ptrtoint ptr %offchan24 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %offchan24, align 4, !range !557
  %25 = zext i8 %24 to i32
  %wait27 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 2
  %26 = ptrtoint ptr %wait27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wait27, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.10, i32 noundef %cond23, i32 noundef %25, i32 noundef %27) #10
  %28 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %params, align 4
  %tobool31.not = icmp eq ptr %29, null
  br i1 %tobool31.not, label %if.end37, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end22
  %hw_value33 = getelementptr inbounds %struct.ieee80211_channel, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %hw_value33 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hw_value33, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp = icmp eq i16 %31, 0
  br i1 %cmp, label %if.then36, label %if.end37.thread

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end37:                                         ; preds = %cond.end22
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %32 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp38.not = icmp eq i32 %33, 3
  br i1 %cmp38.not, label %if.end37.do.body77_crit_edge, label %if.end37.do.body43_crit_edge

if.end37.do.body43_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

if.end37.do.body77_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body77

if.end37.thread:                                  ; preds = %land.lhs.true
  %iftype191 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %34 = ptrtoint ptr %iftype191 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iftype191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp38.not192 = icmp eq i32 %35, 3
  br i1 %cmp38.not192, label %lor.lhs.false, label %if.end37.thread.do.body43_crit_edge

if.end37.thread.do.body43_crit_edge:              ; preds = %if.end37.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

do.body43:                                        ; preds = %if.end37.thread.do.body43_crit_edge, %if.end37.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_mgmt_tx.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_mgmt_tx, %if.then55)) #10
          to label %do.end61 [label %if.then55], !srcloc !556

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev56 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %main_ndev56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %main_ndev56, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_mgmt_tx.__UNIQUE_ID_ddebug389, ptr noundef %37, ptr noundef nonnull @.str.12) #10
  br label %do.end61

do.end61:                                         ; preds = %if.then55, %do.body43
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.12) #10
  %call64 = tail call i32 @wmi_mgmt_tx(ptr noundef %retval.0.i188, ptr noundef %1, i32 noundef %3) #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end37.thread
  %38 = ptrtoint ptr %hw_value33 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hw_value33, align 2
  %conv70 = zext i16 %39 to i32
  %channel = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i188, i32 0, i32 6
  %40 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %channel, align 8
  %conv71 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp72 = icmp eq i16 %39, %41
  br i1 %cmp72, label %lor.lhs.false.do.body77_crit_edge, label %if.end99

lor.lhs.false.do.body77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body77

do.body77:                                        ; preds = %lor.lhs.false.do.body77_crit_edge, %if.end37.do.body77_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_mgmt_tx.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_mgmt_tx, %if.then89)) #10
          to label %do.end95 [label %if.then89], !srcloc !556

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev90 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %main_ndev90 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %main_ndev90, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_mgmt_tx.__UNIQUE_ID_ddebug390, ptr noundef %43, ptr noundef nonnull @.str.13) #10
  br label %do.end95

do.end95:                                         ; preds = %if.then89, %do.body77
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.13) #10
  %call98 = tail call i32 @wmi_mgmt_tx(ptr noundef %retval.0.i188, ptr noundef %1, i32 noundef %3) #10
  br label %out

if.end99:                                         ; preds = %lor.lhs.false
  %44 = ptrtoint ptr %offchan24 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %offchan24, align 4, !range !557
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp103 = icmp eq i8 %45, 0
  br i1 %cmp103, label %if.then105, label %if.end111

if.then105:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef %conv71, i32 noundef %conv70) #10
  br label %cleanup

if.end111:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %conv114 = trunc i16 %39 to i8
  %46 = ptrtoint ptr %wait27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wait27, align 4
  %conv116 = trunc i32 %47 to i16
  %call117 = tail call i32 @wmi_mgmt_tx_ext(ptr noundef %retval.0.i188, ptr noundef %1, i32 noundef %3, i8 noundef zeroext %conv114, i16 noundef zeroext %conv116) #10
  br label %out

out:                                              ; preds = %if.end111, %do.end95, %do.end61
  %rc.0 = phi i32 [ %call64, %do.end61 ], [ %call98, %do.end95 ], [ %call117, %if.end111 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp118 = icmp eq i32 %rc.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %rc.0)
  %cmp121 = icmp eq i32 %rc.0, -11
  %spec.select = select i1 %cmp121, i32 0, i32 %rc.0
  %tobool127.not = icmp eq ptr %cookie, null
  br i1 %tobool127.not, label %out.cond.end130_crit_edge, label %cond.true128

out.cond.end130_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end130

cond.true128:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %cookie, align 8
  br label %cond.end130

cond.end130:                                      ; preds = %cond.true128, %out.cond.end130_crit_edge
  %cond131 = phi i64 [ %49, %cond.true128 ], [ 0, %out.cond.end130_crit_edge ]
  tail call void @cfg80211_mgmt_tx_status(ptr noundef %wdev, i64 noundef %cond131, ptr noundef %1, i32 noundef %3, i1 noundef zeroext %cmp118, i32 noundef 3264) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end130, %if.then105, %if.then36
  %retval.0 = phi i32 [ -22, %if.then36 ], [ %spec.select, %cond.end130 ], [ -16, %if.then105 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_mgmt_tx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_mgmt_tx_ext(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_set_crypto_rx(i8 noundef zeroext %key_index, i32 noundef %key_usage, ptr noundef writeonly %cs, ptr nocapture noundef readonly %params) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cs, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %key_usage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %key_usage, label %if.end.cleanup_crit_edge [
    i32 3, label %if.end.sw.bb_crit_edge
    i32 0, label %if.end.sw.bb_crit_edge39
    i32 1, label %sw.bb8
  ]

if.end.sw.bb_crit_edge39:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge39
  %idxprom = zext i8 %key_index to i32
  %seq = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %sw.bb
  %tid.038 = phi i32 [ 0, %sw.bb ], [ %inc, %if.end7.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil_sta_info, ptr %cs, i32 0, i32 10, i32 %tid.038
  %arrayidx1 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx, i32 0, i32 %idxprom
  %1 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %seq, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = call ptr @memcpy(ptr %arrayidx1, ptr %2, i32 6)
  br label %if.end7

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = call ptr @memset(ptr %arrayidx1, i32 0, i32 6)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %key_set = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx, i32 0, i32 %idxprom, i32 1
  %5 = ptrtoint ptr %key_set to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %key_set, align 1
  %inc = add nuw nsw i32 %tid.038, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %if.end7.cleanup_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %group_crypto_rx = getelementptr inbounds %struct.wil_sta_info, ptr %cs, i32 0, i32 11
  %idxprom10 = zext i8 %key_index to i32
  %arrayidx11 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %group_crypto_rx, i32 0, i32 %idxprom10
  %seq12 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %seq12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %seq12, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.else18, label %if.then14

if.then14:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call ptr @memcpy(ptr %arrayidx11, ptr %7, i32 6)
  br label %if.end21

if.else18:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memset(ptr %arrayidx11, i32 0, i32 6)
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then14
  %key_set22 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %group_crypto_rx, i32 0, i32 %idxprom10, i32 1
  %10 = ptrtoint ptr %key_set22 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %key_set22, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_cfg80211_ap_recovery(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  %bcon = alloca %struct.cfg80211_beacon_data, align 4
  %key_params = alloca %struct.key_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy1 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy1, align 8
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %2 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_vifs, align 4
  %4 = call i8 @llvm.umin.i8(i8 %3, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp3101.not = icmp eq i8 %4, 0
  br i1 %cmp3101.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %proberesp_ies8 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 3
  %assocresp_ies9 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 4
  %probe_resp = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 5
  %proberesp_ies_len10 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 13
  %assocresp_ies_len11 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 14
  %probe_resp_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 15
  %key_len = getelementptr inbounds %struct.key_params, ptr %key_params, i32 0, i32 2
  %seq_len = getelementptr inbounds %struct.key_params, ptr %key_params, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %wil, i32 0, i32 23, i32 %i.0102
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %bcon) #10
  %7 = call ptr @memset(ptr %bcon, i32 0, i32 72)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %key_params) #10
  %8 = call ptr @memset(ptr %key_params, i32 0, i32 28)
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %ssid_len = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 19
  %9 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ssid_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ndev7 = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %ndev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev7, align 4
  %proberesp_ies = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 13
  %13 = ptrtoint ptr %proberesp_ies to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %proberesp_ies, align 4
  %15 = ptrtoint ptr %proberesp_ies8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %proberesp_ies8, align 4
  %assocresp_ies = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 14
  %16 = ptrtoint ptr %assocresp_ies to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %assocresp_ies, align 8
  %18 = ptrtoint ptr %assocresp_ies9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %assocresp_ies9, align 4
  %proberesp = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 12
  %19 = ptrtoint ptr %proberesp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %proberesp, align 8
  %21 = ptrtoint ptr %probe_resp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %probe_resp, align 4
  %proberesp_ies_len = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 16
  %22 = ptrtoint ptr %proberesp_ies_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %proberesp_ies_len, align 8
  %24 = ptrtoint ptr %proberesp_ies_len10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %proberesp_ies_len10, align 4
  %assocresp_ies_len = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 17
  %25 = ptrtoint ptr %assocresp_ies_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %assocresp_ies_len, align 4
  %27 = ptrtoint ptr %assocresp_ies_len11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %assocresp_ies_len11, align 4
  %proberesp_len = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 15
  %28 = ptrtoint ptr %proberesp_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %proberesp_len, align 4
  %30 = ptrtoint ptr %probe_resp_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %probe_resp_len, align 4
  %privacy = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 5
  %31 = ptrtoint ptr %privacy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %privacy, align 4
  %bi = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 11
  %33 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bi, align 4
  %channel = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 6
  %35 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %channel, align 8
  %conv12 = zext i16 %36 to i32
  %hidden_ssid = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 8
  %37 = ptrtoint ptr %hidden_ssid to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hidden_ssid, align 1
  %conv13 = zext i8 %38 to i32
  %pbss = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 10
  %39 = ptrtoint ptr %pbss to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pbss, align 8, !range !557
  %41 = zext i8 %40 to i32
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.wil_cfg80211_ap_recovery, i32 noundef %i.0102, i32 noundef %32, i32 noundef %34, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %41) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_ap_recovery.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_ap_recovery, %if.then20)) #10
          to label %do.end [label %if.then20], !srcloc !556

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ssid = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 18
  %42 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ssid_len, align 8
  call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %ssid, i32 noundef %43, i1 noundef zeroext true) #10
  br label %do.end

do.end:                                           ; preds = %if.then20, %if.end
  %ssid23 = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 18
  %44 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ssid_len, align 8
  %46 = ptrtoint ptr %privacy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %privacy, align 4
  %48 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bi, align 4
  %50 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %channel, align 8
  %conv29 = trunc i16 %51 to i8
  %wmi_edmg_channel = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 7
  %52 = ptrtoint ptr %wmi_edmg_channel to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %wmi_edmg_channel, align 2
  %54 = ptrtoint ptr %hidden_ssid to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hidden_ssid, align 1
  %56 = ptrtoint ptr %pbss to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pbss, align 8, !range !557
  %58 = zext i8 %57 to i32
  %call34 = call fastcc i32 @_wil_cfg80211_start_ap(ptr noundef %1, ptr noundef %12, ptr noundef %ssid23, i32 noundef %45, i32 noundef %47, i32 noundef %49, i8 noundef zeroext %conv29, i8 noundef zeroext %53, ptr noundef nonnull %bcon, i8 noundef zeroext %55, i32 noundef %58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.wil_cfg80211_ap_recovery, i32 noundef %i.0102, i32 noundef %call34) #10
  br label %cleanup

if.end37:                                         ; preds = %do.end
  %59 = ptrtoint ptr %privacy to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %privacy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool39.not = icmp eq i32 %60, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %lor.lhs.false40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false40:                                  ; preds = %if.end37
  %gtk_len = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 22
  %61 = ptrtoint ptr %gtk_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gtk_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp41 = icmp eq i32 %62, 0
  br i1 %cmp41, label %lor.lhs.false40.cleanup_crit_edge, label %if.end44

lor.lhs.false40.cleanup_crit_edge:                ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %lor.lhs.false40
  %gtk = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 21
  %63 = ptrtoint ptr %key_params to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %gtk, ptr %key_params, align 4
  %64 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %62, ptr %key_len, align 4
  %65 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 6, ptr %seq_len, align 4
  %gtk_index = getelementptr inbounds %struct.wil6210_vif, ptr %6, i32 0, i32 20
  %66 = ptrtoint ptr %gtk_index to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %gtk_index, align 4
  %call47 = call i32 @wil_cfg80211_add_key(ptr noundef %1, ptr noundef %12, i8 noundef zeroext %67, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %key_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end44.cleanup_crit_edge, label %if.then49

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.wil_cfg80211_ap_recovery, i32 noundef %i.0102, i32 noundef %call47) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end44.cleanup_crit_edge, %lor.lhs.false40.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then36, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %key_params) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %bcon) #10
  %inc = add nuw nsw i32 %i.0102, 1
  %68 = ptrtoint ptr %max_vifs to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %max_vifs, align 4
  %70 = call i8 @llvm.umin.i8(i8 %69, i8 4)
  %cond = zext i8 %70 to i32
  %cmp3 = icmp ult i32 %inc, %cond
  br i1 %cmp3, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_wil_cfg80211_start_ap(ptr noundef %wiphy, ptr noundef %ndev, ptr noundef %ssid, i32 noundef %ssid_len, i32 noundef %privacy, i32 noundef %bi, i8 noundef zeroext %chan, i8 noundef zeroext %wmi_edmg_channel, ptr nocapture noundef readonly %bcon, i8 noundef zeroext %hidden_ssid, i32 noundef %pbss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 9
  br i1 %4, label %switch.hole_check, label %wiphy_priv.exit.wil_iftype_nl2wmi.exit_crit_edge

wiphy_priv.exit.wil_iftype_nl2wmi.exit_crit_edge: ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_iftype_nl2wmi.exit

switch.hole_check:                                ; preds = %wiphy_priv.exit
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 423, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.wil_iftype_nl2wmi.exit_crit_edge, label %switch.lookup

switch.hole_check.wil_iftype_nl2wmi.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_iftype_nl2wmi.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table._wil_cfg80211_start_ap, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %wmi.i = getelementptr [6 x %struct.anon.131], ptr @wil_iftype_nl2wmi.__nl2wmi, i32 0, i32 %switch.load, i32 1
  %7 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wmi.i, align 4
  %phi.cast = trunc i32 %8 to i8
  br label %wil_iftype_nl2wmi.exit

wil_iftype_nl2wmi.exit:                           ; preds = %switch.lookup, %switch.hole_check.wil_iftype_nl2wmi.exit_crit_edge, %wiphy_priv.exit.wil_iftype_nl2wmi.exit_crit_edge
  %retval.0.i159 = phi i8 [ %phi.cast, %switch.lookup ], [ -95, %wiphy_priv.exit.wil_iftype_nl2wmi.exit_crit_edge ], [ -95, %switch.hole_check.wil_iftype_nl2wmi.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp = icmp eq i32 %3, 9
  %conv5 = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pbss)
  %tobool = icmp ne i32 %pbss, 0
  %spec.select = select i1 %tobool, i8 32, i8 %retval.0.i159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_wil_cfg80211_start_ap.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_wil_cfg80211_start_ap, %if.then12)) #10
          to label %do.end17 [label %if.then12], !srcloc !556

if.then12:                                        ; preds = %wil_iftype_nl2wmi.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %main_ndev, align 4
  %mid = getelementptr i8, ptr %ndev, i32 3276
  %11 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mid, align 4
  %conv13 = zext i8 %12 to i32
  %conv14 = zext i1 %cmp to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_wil_cfg80211_start_ap.__UNIQUE_ID_ddebug404, ptr noundef %10, ptr noundef nonnull @.str.32, i32 noundef %conv13, i32 noundef %conv14) #10
  br label %do.end17

do.end17:                                         ; preds = %if.then12, %wil_iftype_nl2wmi.exit
  %mid18 = getelementptr i8, ptr %ndev, i32 3276
  %13 = ptrtoint ptr %mid18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mid18, align 4
  %conv19 = zext i8 %14 to i32
  %conv20 = zext i1 %cmp to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.32, i32 noundef %conv19, i32 noundef %conv20) #10
  %cmp.not = xor i1 %cmp, true
  %brmerge = or i1 %tobool, %cmp.not
  br i1 %brmerge, label %if.end27, label %if.then26

if.then26:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.end27:                                         ; preds = %do.end17
  tail call void @wil_set_recovery_state(ptr noundef %priv.i, i32 noundef 0) #10
  %probe_resp = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 5
  %15 = ptrtoint ptr %probe_resp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %probe_resp, align 4
  %tobool.not.i160 = icmp eq ptr %16, null
  br i1 %tobool.not.i160, label %if.end27.if.end48_crit_edge, label %_wil_cfg80211_get_proberesp_ies.exit

if.end27.if.end48_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

_wil_cfg80211_get_proberesp_ies.exit:             ; preds = %if.end27
  %probe_resp_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 15
  %17 = ptrtoint ptr %probe_resp_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %probe_resp_len, align 4
  %conv28 = trunc i32 %18 to i16
  %variable.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %16, i32 0, i32 6, i32 1, i32 2
  %sub.i = add i16 %conv28, -36
  %tobool30.not = icmp eq ptr %variable.i, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %cmp33.not = icmp eq i16 %sub.i, 0
  %or.cond = select i1 %tobool30.not, i1 true, i1 %cmp33.not
  br i1 %or.cond, label %_wil_cfg80211_get_proberesp_ies.exit.if.end48_crit_edge, label %land.lhs.true35

_wil_cfg80211_get_proberesp_ies.exit.if.end48_crit_edge: ; preds = %_wil_cfg80211_get_proberesp_ies.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true35:                                  ; preds = %_wil_cfg80211_get_proberesp_ies.exit
  %conv32 = zext i16 %sub.i to i32
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 54, ptr noundef nonnull %variable.i, i32 noundef %conv32, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %tobool38.not.not = icmp eq ptr %call.i.i, null
  br i1 %tobool38.not.not, label %land.lhs.true35.if.end48_crit_edge, label %if.then42

land.lhs.true35.if.end48_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then42:                                        ; preds = %land.lhs.true35
  %fw_capabilities = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 1
  %19 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %fw_capabilities, align 4
  %21 = and i32 %20, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool44.not = icmp eq i32 %21, 0
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.end46:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr i8, ptr %ndev, i32 3280
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status) #10
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %land.lhs.true35.if.end48_crit_edge, %_wil_cfg80211_get_proberesp_ies.exit.if.end48_crit_edge, %if.end27.if.end48_crit_edge
  %mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 53, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call49 = tail call zeroext i1 @wil_has_other_active_ifaces(ptr noundef %priv.i, ptr noundef %ndev, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br i1 %call49, label %if.end48.if.end56_crit_edge, label %if.then50

if.end48.if.end56_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then50:                                        ; preds = %if.end48
  %call51 = tail call i32 @__wil_down(ptr noundef %priv.i) #10
  %call52 = tail call i32 @__wil_up(ptr noundef %priv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then50.if.end56_crit_edge, label %if.then50.out_crit_edge

if.then50.out_crit_edge:                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then50.if.end56_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.end56:                                         ; preds = %if.then50.if.end56_crit_edge, %if.end48.if.end56_crit_edge
  %conv57 = trunc i32 %ssid_len to i8
  %call58 = tail call i32 @wmi_set_ssid(ptr noundef %add.ptr.i, i8 noundef zeroext %conv57, ptr noundef %ssid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.out_crit_edge

if.end56.out_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end61:                                         ; preds = %if.end56
  %call62 = tail call fastcc i32 @_wil_cfg80211_set_ies(ptr noundef %add.ptr.i, ptr noundef %bcon)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.out_crit_edge

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end65:                                         ; preds = %if.end61
  %privacy66 = getelementptr i8, ptr %ndev, i32 3284
  %22 = ptrtoint ptr %privacy66 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %privacy, ptr %privacy66, align 4
  %conv67 = zext i8 %chan to i16
  %channel = getelementptr i8, ptr %ndev, i32 3288
  %23 = ptrtoint ptr %channel to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv67, ptr %channel, align 8
  %wmi_edmg_channel68 = getelementptr i8, ptr %ndev, i32 3290
  %24 = ptrtoint ptr %wmi_edmg_channel68 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %wmi_edmg_channel, ptr %wmi_edmg_channel68, align 2
  %hidden_ssid69 = getelementptr i8, ptr %ndev, i32 3291
  %25 = ptrtoint ptr %hidden_ssid69 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %hidden_ssid, ptr %hidden_ssid69, align 1
  %pbss71 = getelementptr i8, ptr %ndev, i32 3296
  %frombool72 = zext i1 %tobool to i8
  %26 = ptrtoint ptr %pbss71 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool72, ptr %pbss71, align 8
  %bi73 = getelementptr i8, ptr %ndev, i32 3300
  %27 = ptrtoint ptr %bi73 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bi, ptr %bi73, align 4
  %ssid74 = getelementptr i8, ptr %ndev, i32 3328
  %28 = call ptr @memcpy(ptr %ssid74, ptr %ssid, i32 %ssid_len)
  %ssid_len76 = getelementptr i8, ptr %ndev, i32 3360
  %29 = ptrtoint ptr %ssid_len76 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %ssid_len, ptr %ssid_len76, align 8
  tail call void @netif_carrier_on(ptr noundef %ndev) #10
  %call77 = tail call zeroext i1 @wil_has_other_active_ifaces(ptr noundef %priv.i, ptr noundef %ndev, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br i1 %call77, label %if.end65.if.end79_crit_edge, label %if.then78

if.end65.if.end79_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wil6210_bus_request(ptr noundef %priv.i, i32 noundef 800000) #10
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end65.if.end79_crit_edge
  %call80 = tail call i32 @wmi_pcp_start(ptr noundef %add.ptr.i, i32 noundef %bi, i8 noundef zeroext %spec.select, i8 noundef zeroext %chan, i8 noundef zeroext %wmi_edmg_channel, i8 noundef zeroext %hidden_ssid, i8 noundef zeroext %conv5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.err_pcp_start_crit_edge

if.end79.err_pcp_start_crit_edge:                 ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pcp_start

if.end83:                                         ; preds = %if.end79
  %call84 = tail call i32 @wil_bcast_init(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end83.out_crit_edge, label %err_bcast

if.end83.out_crit_edge:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

err_bcast:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %call88 = tail call i32 @wmi_pcp_stop(ptr noundef %add.ptr.i) #10
  br label %err_pcp_start

err_pcp_start:                                    ; preds = %err_bcast, %if.end79.err_pcp_start_crit_edge
  %rc.0 = phi i32 [ %call80, %if.end79.err_pcp_start_crit_edge ], [ %call84, %err_bcast ]
  tail call void @netif_carrier_off(ptr noundef %ndev) #10
  %call89 = tail call zeroext i1 @wil_has_other_active_ifaces(ptr noundef %priv.i, ptr noundef %ndev, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br i1 %call89, label %err_pcp_start.out_crit_edge, label %if.then90

err_pcp_start.out_crit_edge:                      ; preds = %err_pcp_start
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then90:                                        ; preds = %err_pcp_start
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wil6210_bus_request(ptr noundef %priv.i, i32 noundef 128000) #10
  br label %out

out:                                              ; preds = %if.then90, %err_pcp_start.out_crit_edge, %if.end83.out_crit_edge, %if.end61.out_crit_edge, %if.end56.out_crit_edge, %if.then50.out_crit_edge
  %rc.1 = phi i32 [ %call58, %if.end56.out_crit_edge ], [ %call62, %if.end61.out_crit_edge ], [ %rc.0, %err_pcp_start.out_crit_edge ], [ %rc.0, %if.then90 ], [ 0, %if.end83.out_crit_edge ], [ %call52, %if.then50.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then45, %if.then26
  %retval.0 = phi i32 [ %rc.1, %out ], [ -524, %if.then45 ], [ -524, %if.then26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_add_key(ptr noundef %wiphy, ptr noundef %ndev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr, ptr noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %call3 = tail call fastcc i32 @wil_detect_key_usage(ptr noundef %add.ptr.i, i1 noundef zeroext %pairwise), !range !560
  %mid = getelementptr i8, ptr %ndev, i32 3276
  %0 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.i = icmp eq i32 %call3, 2
  br i1 %cmp.i, label %wiphy_priv.exit.wil_find_sta_by_key_usage.exit_crit_edge, label %if.end.i

wiphy_priv.exit.wil_find_sta_by_key_usage.exit_crit_edge: ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_find_sta_by_key_usage.exit

if.end.i:                                         ; preds = %wiphy_priv.exit
  %tobool.not.i181 = icmp eq ptr %mac_addr, null
  br i1 %tobool.not.i181, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @wil_find_cid(ptr noundef %priv.i, i8 noundef zeroext %1, ptr noundef nonnull %mac_addr) #10
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp2.i = icmp eq i32 %call3, 1
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i.if.then8.i_crit_edge

if.else.i.if.then8.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then3.i:                                       ; preds = %if.else.i
  %max_assoc_sta.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 47
  %2 = ptrtoint ptr %max_assoc_sta.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_assoc_sta.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp21.not.i.i, label %if.then3.i.if.then8.i_crit_edge, label %if.then3.i.for.body.i.i_crit_edge

if.then3.i.for.body.i.i_crit_edge:                ; preds = %if.then3.i
  br label %for.body.i.i

if.then3.i.if.then8.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then3.i.for.body.i.i_crit_edge
  %i.023.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then3.i.for.body.i.i_crit_edge ]
  %status.i.i = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 63, i32 %i.023.i.i, i32 2
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i.i = icmp eq i32 %5, 0
  br i1 %cmp1.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %mid4.i.i = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 63, i32 %i.023.i.i, i32 1
  %6 = ptrtoint ptr %mid4.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mid4.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %1)
  %cmp6.not.i.i = icmp eq i8 %7, %1
  br i1 %cmp6.not.i.i, label %if.end.i.i.if.end6.i_crit_edge, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i.if.end6.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then8.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.then8.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.end6.i:                                        ; preds = %if.end.i.i.if.end6.i_crit_edge, %if.then1.i
  %cid.0.i = phi i32 [ %call.i, %if.then1.i ], [ %i.023.i.i, %if.end.i.i.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cid.0.i)
  %cmp7.i = icmp slt i32 %cid.0.i, 0
  br i1 %cmp7.i, label %if.end6.i.if.then8.i_crit_edge, label %if.end10.i

if.end6.i.if.then8.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i.if.then8.i_crit_edge, %for.inc.i.i.if.then8.i_crit_edge, %if.then3.i.if.then8.i_crit_edge, %if.else.i.if.then8.i_crit_edge
  %cid.024.i = phi i32 [ %cid.0.i, %if.end6.i.if.then8.i_crit_edge ], [ -2, %if.then3.i.if.then8.i_crit_edge ], [ -22, %if.else.i.if.then8.i_crit_edge ], [ -2, %for.inc.i.i.if.then8.i_crit_edge ]
  %arrayidx.i = getelementptr [5 x ptr], ptr @key_usage_str, i32 0, i32 %call3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.wil_find_sta_by_key_usage, ptr noundef %mac_addr, ptr noundef %9) #10
  %10 = inttoptr i32 %cid.024.i to ptr
  br label %wil_find_sta_by_key_usage.exit

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 63, i32 %cid.0.i
  br label %wil_find_sta_by_key_usage.exit

wil_find_sta_by_key_usage.exit:                   ; preds = %if.end10.i, %if.then8.i, %wiphy_priv.exit.wil_find_sta_by_key_usage.exit_crit_edge
  %retval.0.i182 = phi ptr [ %10, %if.then8.i ], [ %arrayidx11.i, %if.end10.i ], [ null, %wiphy_priv.exit.wil_find_sta_by_key_usage.exit_crit_edge ]
  %tobool5.not = icmp eq ptr %params, null
  br i1 %tobool5.not, label %if.then, label %do.body7

if.then:                                          ; preds = %wil_find_sta_by_key_usage.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.wil_cfg80211_add_key) #10
  br label %cleanup

do.body7:                                         ; preds = %wil_find_sta_by_key_usage.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_add_key.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_add_key, %if.then13)) #10
          to label %do.end16 [label %if.then13], !srcloc !556

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_ndev, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @key_usage_str, i32 0, i32 %call3
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %conv = zext i8 %key_index to i32
  %seq_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %15 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq_len, align 4
  %seq = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 1
  %17 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %seq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_add_key.__UNIQUE_ID_ddebug392, ptr noundef %12, ptr noundef nonnull @.str.37, ptr noundef %mac_addr, ptr noundef %14, i32 noundef %conv, i32 noundef %16, ptr noundef %18) #10
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body7
  %arrayidx17 = getelementptr [5 x ptr], ptr @key_usage_str, i32 0, i32 %call3
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx17, align 4
  %conv18 = zext i8 %key_index to i32
  %seq_len19 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %21 = ptrtoint ptr %seq_len19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %seq_len19, align 4
  %seq20 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 1
  %23 = ptrtoint ptr %seq20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %seq20, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.37, ptr noundef %mac_addr, ptr noundef %20, i32 noundef %conv18, i32 noundef %22, ptr noundef %24) #10
  %cmp.i183 = icmp ugt ptr %retval.0.i182, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %if.then24, label %if.then35

if.then24:                                        ; preds = %do.end16
  %status = getelementptr i8, ptr %ndev, i32 3280
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %status, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool26.not = icmp eq i32 %27, 0
  br i1 %tobool26.not, label %if.then27, label %if.then24.if.end36_crit_edge

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %seq_len19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %seq_len19, align 4
  %30 = ptrtoint ptr %seq20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %seq20, align 4
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.wil_cfg80211_add_key, ptr noundef %mac_addr, ptr noundef %20, i32 noundef %conv18, i32 noundef %29, ptr noundef %31) #10
  br label %cleanup

if.then35:                                        ; preds = %do.end16
  %tobool.not.i185 = icmp eq ptr %retval.0.i182, null
  br i1 %tobool.not.i185, label %if.then35.if.end36_crit_edge, label %if.end.i186

if.then35.if.end36_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end.i186:                                      ; preds = %if.then35
  %32 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %call3, label %if.end.i186.if.end36_crit_edge [
    i32 0, label %for.cond.preheader.i
    i32 1, label %sw.bb2.i
  ]

if.end.i186.if.end36_crit_edge:                   ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

for.cond.preheader.i:                             ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i187 = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 0
  %key_set.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.i187, i32 0, i32 %conv18, i32 1
  %33 = ptrtoint ptr %key_set.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %key_set.i, align 1
  %arrayidx.1.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 1
  %key_set.1.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.1.i, i32 0, i32 %conv18, i32 1
  %34 = ptrtoint ptr %key_set.1.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %key_set.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 2
  %key_set.2.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.2.i, i32 0, i32 %conv18, i32 1
  %35 = ptrtoint ptr %key_set.2.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %key_set.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 3
  %key_set.3.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.3.i, i32 0, i32 %conv18, i32 1
  %36 = ptrtoint ptr %key_set.3.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %key_set.3.i, align 1
  %arrayidx.4.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 4
  %key_set.4.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.4.i, i32 0, i32 %conv18, i32 1
  %37 = ptrtoint ptr %key_set.4.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %key_set.4.i, align 1
  %arrayidx.5.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 5
  %key_set.5.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.5.i, i32 0, i32 %conv18, i32 1
  %38 = ptrtoint ptr %key_set.5.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %key_set.5.i, align 1
  %arrayidx.6.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 6
  %key_set.6.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.6.i, i32 0, i32 %conv18, i32 1
  %39 = ptrtoint ptr %key_set.6.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %key_set.6.i, align 1
  %arrayidx.7.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 7
  %key_set.7.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.7.i, i32 0, i32 %conv18, i32 1
  %40 = ptrtoint ptr %key_set.7.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %key_set.7.i, align 1
  %arrayidx.8.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 8
  %key_set.8.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.8.i, i32 0, i32 %conv18, i32 1
  %41 = ptrtoint ptr %key_set.8.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %key_set.8.i, align 1
  %arrayidx.9.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 9
  %key_set.9.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.9.i, i32 0, i32 %conv18, i32 1
  %42 = ptrtoint ptr %key_set.9.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %key_set.9.i, align 1
  %arrayidx.10.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 10
  %key_set.10.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.10.i, i32 0, i32 %conv18, i32 1
  %43 = ptrtoint ptr %key_set.10.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %key_set.10.i, align 1
  %arrayidx.11.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 11
  %key_set.11.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.11.i, i32 0, i32 %conv18, i32 1
  %44 = ptrtoint ptr %key_set.11.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %key_set.11.i, align 1
  %arrayidx.12.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 12
  %key_set.12.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.12.i, i32 0, i32 %conv18, i32 1
  %45 = ptrtoint ptr %key_set.12.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %key_set.12.i, align 1
  %arrayidx.13.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 13
  %key_set.13.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.13.i, i32 0, i32 %conv18, i32 1
  %46 = ptrtoint ptr %key_set.13.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %key_set.13.i, align 1
  %arrayidx.14.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 14
  %key_set.14.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.14.i, i32 0, i32 %conv18, i32 1
  %47 = ptrtoint ptr %key_set.14.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %key_set.14.i, align 1
  %arrayidx.15.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 15
  br label %cleanup.sink.split.i

sw.bb2.i:                                         ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #12
  %group_crypto_rx.i = getelementptr inbounds %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb2.i, %for.cond.preheader.i
  %arrayidx.15.i.pn = phi ptr [ %arrayidx.15.i, %for.cond.preheader.i ], [ %group_crypto_rx.i, %sw.bb2.i ]
  %key_set.15.sink.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.15.i.pn, i32 0, i32 %conv18, i32 1
  %48 = ptrtoint ptr %key_set.15.sink.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %key_set.15.sink.i, align 1
  br label %if.end36

if.end36:                                         ; preds = %cleanup.sink.split.i, %if.end.i186.if.end36_crit_edge, %if.then35.if.end36_crit_edge, %if.then24.if.end36_crit_edge
  %49 = ptrtoint ptr %seq20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %seq20, align 4
  %tobool38.not = icmp eq ptr %50, null
  br i1 %tobool38.not, label %if.end36.if.end47_crit_edge, label %land.lhs.true

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end36
  %51 = ptrtoint ptr %seq_len19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %seq_len19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %52)
  %cmp.not = icmp eq i32 %52, 6
  br i1 %cmp.not, label %land.lhs.true.if.end47_crit_edge, label %if.then41

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.wil_cfg80211_add_key, i32 noundef %52, ptr noundef %mac_addr, ptr noundef %20, i32 noundef %conv18, i32 noundef %52, ptr noundef nonnull %50) #10
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.end36.if.end47_crit_edge
  %eap_lock = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %eap_lock) #10
  br i1 %pairwise, label %land.lhs.true50, label %if.end47.if.end84_crit_edge

if.end47.if.end84_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

land.lhs.true50:                                  ; preds = %if.end47
  %iftype = getelementptr i8, ptr %ndev, i32 2308
  %53 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp51 = icmp eq i32 %54, 2
  br i1 %cmp51, label %land.lhs.true53, label %land.lhs.true50.if.end84_crit_edge

land.lhs.true50.if.end84_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %ptk_rekey_state = getelementptr i8, ptr %ndev, i32 3936
  %55 = ptrtoint ptr %ptk_rekey_state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ptk_rekey_state, align 8
  %.off = add i32 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then59, label %land.lhs.true53.if.end84_crit_edge

land.lhs.true53.if.end84_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then59:                                        ; preds = %land.lhs.true53
  %57 = ptrtoint ptr %ptk_rekey_state to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %ptk_rekey_state, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_add_key.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_add_key, %if.then75)) #10
          to label %do.end81 [label %if.then75], !srcloc !556

if.then75:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev76 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %58 = ptrtoint ptr %main_ndev76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %main_ndev76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_add_key.__UNIQUE_ID_ddebug393, ptr noundef %59, ptr noundef nonnull @.str.40) #10
  br label %do.end81

do.end81:                                         ; preds = %if.then75, %if.then59
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.40) #10
  br label %if.end84

if.end84:                                         ; preds = %do.end81, %land.lhs.true53.if.end84_crit_edge, %land.lhs.true50.if.end84_crit_edge, %if.end47.if.end84_crit_edge
  %key_usage.0 = phi i32 [ 3, %do.end81 ], [ %call3, %land.lhs.true50.if.end84_crit_edge ], [ %call3, %if.end47.if.end84_crit_edge ], [ %call3, %land.lhs.true53.if.end84_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %eap_lock) #10
  %key_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %60 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %key_len, align 4
  %62 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %params, align 4
  %call86 = tail call i32 @wmi_add_cipher_key(ptr noundef %add.ptr.i, i8 noundef zeroext %key_index, ptr noundef %mac_addr, i32 noundef %61, ptr noundef %63, i32 noundef %key_usage.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp ne i32 %call86, 0
  %brmerge = select i1 %tobool87.not, i1 true, i1 %cmp.i183
  br i1 %brmerge, label %if.end84.cleanup_crit_edge, label %if.then90

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then90:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %key_usage.0)
  %cmp91 = icmp eq i32 %key_usage.0, 2
  br i1 %cmp91, label %land.lhs.true93, label %if.then90.if.end105_crit_edge

if.then90.if.end105_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

land.lhs.true93:                                  ; preds = %if.then90
  %64 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %params, align 4
  %tobool95.not = icmp eq ptr %65, null
  br i1 %tobool95.not, label %land.lhs.true93.if.end105_crit_edge, label %land.lhs.true96

land.lhs.true93.if.end105_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

land.lhs.true96:                                  ; preds = %land.lhs.true93
  %66 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %67)
  %cmp98 = icmp slt i32 %67, 33
  br i1 %cmp98, label %if.then100, label %land.lhs.true96.if.end105_crit_edge

land.lhs.true96.if.end105_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then100:                                       ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #12
  %gtk_index = getelementptr i8, ptr %ndev, i32 3364
  %68 = ptrtoint ptr %gtk_index to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %key_index, ptr %gtk_index, align 4
  %gtk = getelementptr i8, ptr %ndev, i32 3365
  %69 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %params, align 4
  %71 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %key_len, align 4
  %73 = call ptr @memcpy(ptr %gtk, ptr %70, i32 %72)
  %74 = load i32, ptr %key_len, align 4
  %gtk_len = getelementptr i8, ptr %ndev, i32 3400
  %75 = ptrtoint ptr %gtk_len to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %gtk_len, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %land.lhs.true96.if.end105_crit_edge, %land.lhs.true93.if.end105_crit_edge, %if.then90.if.end105_crit_edge
  %tobool.not.i189 = icmp eq ptr %retval.0.i182, null
  br i1 %tobool.not.i189, label %if.end105.cleanup_crit_edge, label %if.end.i190

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i190:                                      ; preds = %if.end105
  %76 = zext i32 %key_usage.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %key_usage.0, label %if.end.i190.cleanup_crit_edge [
    i32 3, label %if.end.i190.for.body.i.preheader_crit_edge
    i32 0, label %if.end.i190.for.body.i.preheader_crit_edge206
    i32 1, label %sw.bb8.i
  ]

if.end.i190.for.body.i.preheader_crit_edge206:    ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.end.i190.for.body.i.preheader_crit_edge:       ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.end.i190.cleanup_crit_edge:                    ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.preheader:                             ; preds = %if.end.i190.for.body.i.preheader_crit_edge, %if.end.i190.for.body.i.preheader_crit_edge206
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %for.body.i.preheader
  %tid.038.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i192 = getelementptr %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 10, i32 %tid.038.i
  %arrayidx1.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.i192, i32 0, i32 %conv18
  %77 = ptrtoint ptr %seq20 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %seq20, align 4
  %tobool2.not.i = icmp eq ptr %78, null
  br i1 %tobool2.not.i, label %if.else.i194, label %if.then3.i193

if.then3.i193:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = call ptr @memcpy(ptr %arrayidx1.i, ptr %78, i32 6)
  br label %if.end7.i

if.else.i194:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = call ptr @memset(ptr %arrayidx1.i, i32 0, i32 6)
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i194, %if.then3.i193
  %key_set.i195 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.i192, i32 0, i32 %conv18, i32 1
  %81 = ptrtoint ptr %key_set.i195 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %key_set.i195, align 1
  %inc.i = add nuw nsw i32 %tid.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb8.i:                                         ; preds = %if.end.i190
  %group_crypto_rx.i196 = getelementptr inbounds %struct.wil_sta_info, ptr %retval.0.i182, i32 0, i32 11
  %arrayidx11.i197 = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %group_crypto_rx.i196, i32 0, i32 %conv18
  %82 = ptrtoint ptr %seq20 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %seq20, align 4
  %tobool13.not.i = icmp eq ptr %83, null
  br i1 %tobool13.not.i, label %if.else18.i, label %if.then14.i

if.then14.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = call ptr @memcpy(ptr %arrayidx11.i197, ptr %83, i32 6)
  br label %if.end21.i

if.else18.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = call ptr @memset(ptr %arrayidx11.i197, i32 0, i32 6)
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else18.i, %if.then14.i
  %key_set22.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %group_crypto_rx.i196, i32 0, i32 %conv18, i32 1
  %86 = ptrtoint ptr %key_set22.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %key_set22.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.end7.i.cleanup_crit_edge, %if.end.i190.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.then41, %if.then27, %if.then
  %retval.0 = phi i32 [ -22, %if.then41 ], [ -22, %if.then27 ], [ -22, %if.then ], [ %call86, %if.end84.cleanup_crit_edge ], [ 0, %if.end105.cleanup_crit_edge ], [ 0, %if.end.i190.cleanup_crit_edge ], [ 0, %if.end21.i ], [ 0, %if.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_probe_client_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr i8, ptr %work, i32 -604
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  %probe_client_mutex.i = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %probe_client_mutex.i, i32 noundef 0) #10
  %probe_client_pending.i = getelementptr i8, ptr %work, i32 -100
  %2 = ptrtoint ptr %probe_client_pending.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %probe_client_pending.i, align 4
  %cmp.i.not.i11 = icmp eq ptr %3, %probe_client_pending.i
  br i1 %cmp.i.not.i11, label %entry.next_probe_client.exit.thread_crit_edge, label %if.then.i.lr.ph

entry.next_probe_client.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_probe_client.exit.thread

if.then.i.lr.ph:                                  ; preds = %entry
  %ndev1.i = getelementptr i8, ptr %work, i32 -608
  br label %if.then.i

next_probe_client.exit.thread:                    ; preds = %while.body.next_probe_client.exit.thread_crit_edge, %entry.next_probe_client.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %probe_client_mutex.i) #10
  br label %while.end

if.then.i:                                        ; preds = %while.body.if.then.i_crit_edge, %if.then.i.lr.ph
  %4 = phi ptr [ %3, %if.then.i.lr.ph ], [ %22, %while.body.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.next_probe_client.exit_crit_edge

if.then.i.next_probe_client.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_probe_client.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %next_probe_client.exit

next_probe_client.exit:                           ; preds = %if.end.i.i.i, %if.then.i.next_probe_client.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %probe_client_mutex.i) #10
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %next_probe_client.exit.while.end_crit_edge, label %while.body

next_probe_client.exit.while.end_crit_edge:       ; preds = %next_probe_client.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %next_probe_client.exit
  %13 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev1.i, align 4
  %cid.i = getelementptr inbounds %struct.wil_probe_client_req, ptr %4, i32 0, i32 2
  %15 = ptrtoint ptr %cid.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cid.i, align 8
  %idxprom.i = zext i8 %16 to i32
  %arrayidx.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %idxprom.i
  %status.i = getelementptr %struct.wil6210_priv, ptr %1, i32 0, i32 63, i32 %idxprom.i, i32 2
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i = icmp eq i32 %18, 2
  %cookie.i = getelementptr inbounds %struct.wil_probe_client_req, ptr %4, i32 0, i32 1
  %19 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %cookie.i, align 8
  tail call void @cfg80211_probe_status(ptr noundef %14, ptr noundef %arrayidx.i, i64 noundef %20, i1 noundef zeroext %cmp.i, i32 noundef 0, i1 noundef zeroext false, i32 noundef 3264) #10
  tail call void @kfree(ptr noundef nonnull %4) #10
  tail call void @mutex_lock_nested(ptr noundef %probe_client_mutex.i, i32 noundef 0) #10
  %21 = ptrtoint ptr %probe_client_pending.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %probe_client_pending.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %probe_client_pending.i
  br i1 %cmp.i.not.i, label %while.body.next_probe_client.exit.thread_crit_edge, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

while.body.next_probe_client.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_probe_client.exit.thread

while.end:                                        ; preds = %next_probe_client.exit.while.end_crit_edge, %next_probe_client.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_probe_client_flush(ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wil1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %wil1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wil1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_probe_client_flush.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_probe_client_flush, %if.then)) #10
          to label %do.end7 [label %if.then], !srcloc !556

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_probe_client_flush.__UNIQUE_ID_ddebug423, ptr noundef %3, ptr noundef nonnull @.str.21) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %1, ptr noundef nonnull @.str.21) #10
  %probe_client_mutex = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %probe_client_mutex, i32 noundef 0) #10
  %probe_client_pending = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 31
  %4 = ptrtoint ptr %probe_client_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %probe_client_pending, align 8
  %cmp.not36 = icmp eq ptr %5, %probe_client_pending
  br i1 %cmp.not36, label %do.end7.for.end_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.end7.for.body_crit_edge
  %req.037 = phi ptr [ %t.0, %list_del.exit.for.body_crit_edge ], [ %5, %do.end7.for.body_crit_edge ]
  %6 = ptrtoint ptr %req.037 to i32
  call void @__asan_load4_noabort(i32 %6)
  %t.0 = load ptr, ptr %req.037, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.037) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req.037, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %req.037 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req.037, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %req.037 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %req.037, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %req.037, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %req.037) #10
  %cmp.not = icmp eq ptr %t.0, %probe_client_pending
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.end7.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %probe_client_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_cfg80211_iface_combinations_from_fw(ptr noundef %wil, ptr nocapture noundef readonly %conc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy1 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy1, align 8
  %iface_combinations2 = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %iface_combinations2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface_combinations2, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end13, label %do.body4

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_iface_combinations_from_fw, %if.then8)) #10
          to label %do.end10 [label %if.then8], !srcloc !556

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug444, ptr noundef %5, ptr noundef nonnull @.str.23) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %do.body4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end13:                                         ; preds = %entry
  %combos = getelementptr inbounds %struct.wil_fw_record_concurrency, ptr %conc, i32 0, i32 4
  %n_combos14 = getelementptr inbounds %struct.wil_fw_record_concurrency, ptr %conc, i32 0, i32 3
  %6 = ptrtoint ptr %n_combos14 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %n_combos14, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp301.not = icmp eq i16 %7, 0
  br i1 %cmp301.not, label %if.end13.if.end8.i.i_crit_edge, label %for.body.preheader

if.end13.if.end8.i.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

for.body.preheader:                               ; preds = %if.end13
  %umax = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %total_limits.0304 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %combo.0303 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %combos, %for.body.preheader ]
  %i.0302 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %9 = ptrtoint ptr %combo.0303 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %combo.0303, align 1
  %conv16 = zext i8 %10 to i32
  %add = add i32 %total_limits.0304, %conv16
  %limits = getelementptr inbounds %struct.wil_fw_concurrency_combo, ptr %combo.0303, i32 0, i32 4
  %add.ptr = getelementptr %struct.wil_fw_concurrency_limit, ptr %limits, i32 %conv16
  %inc = add nuw nsw i32 %i.0302, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = shl i32 %add, 2
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.end.loopexit, %if.end13.if.end8.i.i_crit_edge
  %total_limits.0.lcssa = phi i32 [ 0, %if.end13.if.end8.i.i_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %mul = mul nuw nsw i32 %conv, 20
  %add22 = add i32 %total_limits.0.lcssa, %mul
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add22, i32 noundef 3520) #13
  %tobool24.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool24.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end26

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end8.i.i
  br i1 %cmp301.not, label %if.end26.do.body152_crit_edge, label %for.body35.lr.ph

if.end26.do.body152_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body152

for.body35.lr.ph:                                 ; preds = %if.end26
  %add.ptr28 = getelementptr %struct.ieee80211_iface_combination, ptr %call9.i.i, i32 %conv
  %main_ndev61 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 1)
  br label %for.body35

for.body35:                                       ; preds = %for.end138.for.body35_crit_edge, %for.body35.lr.ph
  %combo.1315 = phi ptr [ %combos, %for.body35.lr.ph ], [ %add.ptr146, %for.end138.for.body35_crit_edge ]
  %iface_limit.0313 = phi ptr [ %add.ptr28, %for.body35.lr.ph ], [ %add.ptr143, %for.end138.for.body35_crit_edge ]
  %i.1311 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc148, %for.end138.for.body35_crit_edge ]
  %max_interfaces = getelementptr inbounds %struct.wil_fw_concurrency_combo, ptr %combo.1315, i32 0, i32 1
  %11 = ptrtoint ptr %max_interfaces to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_interfaces, align 1
  %conv36 = zext i8 %12 to i16
  %arrayidx = getelementptr %struct.ieee80211_iface_combination, ptr %call9.i.i, i32 %i.1311
  %max_interfaces37 = getelementptr %struct.ieee80211_iface_combination, ptr %call9.i.i, i32 %i.1311, i32 2
  %13 = ptrtoint ptr %max_interfaces37 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv36, ptr %max_interfaces37, align 4
  %n_diff_channels = getelementptr inbounds %struct.wil_fw_concurrency_combo, ptr %combo.1315, i32 0, i32 2
  %14 = ptrtoint ptr %n_diff_channels to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %n_diff_channels, align 1
  %conv38 = zext i8 %15 to i32
  %num_different_channels = getelementptr %struct.ieee80211_iface_combination, ptr %call9.i.i, i32 %i.1311, i32 1
  %16 = ptrtoint ptr %num_different_channels to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv38, ptr %num_different_channels, align 4
  %same_bi = getelementptr inbounds %struct.wil_fw_concurrency_combo, ptr %combo.1315, i32 0, i32 3
  %17 = ptrtoint ptr %same_bi to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %same_bi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool40 = icmp ne i8 %18, 0
  %beacon_int_infra_match = getelementptr %struct.ieee80211_iface_combination, ptr %call9.i.i, i32 %i.1311, i32 4
  %frombool42 = zext i1 %tobool40 to i8
  %19 = ptrtoint ptr %beacon_int_infra_match to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool42, ptr %beacon_int_infra_match, align 1
  %20 = ptrtoint ptr %combo.1315 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %combo.1315, align 1
  %n_limits45 = getelementptr %struct.ieee80211_iface_combination, ptr %call9.i.i, i32 %i.1311, i32 3
  %22 = ptrtoint ptr %n_limits45 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %n_limits45, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug445, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_iface_combinations_from_fw, %if.then60)) #10
          to label %do.end75 [label %if.then60], !srcloc !556

if.then60:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %main_ndev61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %main_ndev61, align 4
  %25 = ptrtoint ptr %max_interfaces37 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %max_interfaces37, align 4
  %conv64 = zext i16 %26 to i32
  %27 = ptrtoint ptr %num_different_channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_different_channels, align 4
  %29 = ptrtoint ptr %beacon_int_infra_match to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %beacon_int_infra_match, align 1, !range !557
  %31 = zext i8 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug445, ptr noundef %24, ptr noundef nonnull @.str.24, i32 noundef %i.1311, i32 noundef %conv64, i32 noundef %28, i32 noundef %31) #10
  br label %do.end75

do.end75:                                         ; preds = %if.then60, %for.body35
  %32 = ptrtoint ptr %max_interfaces37 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %max_interfaces37, align 4
  %conv78 = zext i16 %33 to i32
  %34 = ptrtoint ptr %num_different_channels to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_different_channels, align 4
  %36 = ptrtoint ptr %beacon_int_infra_match to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %beacon_int_infra_match, align 1, !range !557
  %38 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.24, i32 noundef %i.1311, i32 noundef %conv78, i32 noundef %35, i32 noundef %38) #10
  %limits87 = getelementptr inbounds %struct.wil_fw_concurrency_combo, ptr %combo.1315, i32 0, i32 4
  %39 = ptrtoint ptr %combo.1315 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %combo.1315, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp92307.not = icmp eq i8 %40, 0
  br i1 %cmp92307.not, label %do.end75.for.end138_crit_edge, label %do.end75.for.body94_crit_edge

do.end75.for.body94_crit_edge:                    ; preds = %do.end75
  br label %for.body94

do.end75.for.end138_crit_edge:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end138

for.body94:                                       ; preds = %do.end127.for.body94_crit_edge, %do.end75.for.body94_crit_edge
  %j.0308 = phi i32 [ %inc137, %do.end127.for.body94_crit_edge ], [ 0, %do.end75.for.body94_crit_edge ]
  %arrayidx95 = getelementptr %struct.wil_fw_concurrency_limit, ptr %limits87, i32 %j.0308
  %41 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %arrayidx95, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %arrayidx96 = getelementptr %struct.ieee80211_iface_limit, ptr %iface_limit.0313, i32 %j.0308
  %44 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %arrayidx96, align 2
  %types = getelementptr %struct.wil_fw_concurrency_limit, ptr %limits87, i32 %j.0308, i32 1
  %45 = ptrtoint ptr %types to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %types, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %types100 = getelementptr %struct.ieee80211_iface_limit, ptr %iface_limit.0313, i32 %j.0308, i32 1
  %48 = ptrtoint ptr %types100 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %types100, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug446, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_iface_combinations_from_fw, %if.then115)) #10
          to label %do.end127 [label %if.then115], !srcloc !556

if.then115:                                       ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %main_ndev61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %main_ndev61, align 4
  %51 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx96, align 2
  %conv119 = zext i16 %52 to i32
  %53 = ptrtoint ptr %types100 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %types100, align 2
  %conv122 = zext i16 %54 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug446, ptr noundef %50, ptr noundef nonnull @.str.25, i32 noundef %j.0308, i32 noundef %conv119, i32 noundef %conv122) #10
  br label %do.end127

do.end127:                                        ; preds = %if.then115, %for.body94
  %55 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx96, align 2
  %conv130 = zext i16 %56 to i32
  %57 = ptrtoint ptr %types100 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %types100, align 2
  %conv133 = zext i16 %58 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.25, i32 noundef %j.0308, i32 noundef %conv130, i32 noundef %conv133) #10
  %inc137 = add nuw nsw i32 %j.0308, 1
  %59 = ptrtoint ptr %combo.1315 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %combo.1315, align 1
  %conv91 = zext i8 %60 to i32
  %cmp92 = icmp ult i32 %inc137, %conv91
  br i1 %cmp92, label %do.end127.for.body94_crit_edge, label %do.end127.for.end138_crit_edge

do.end127.for.end138_crit_edge:                   ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end138

do.end127.for.body94_crit_edge:                   ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body94

for.end138:                                       ; preds = %do.end127.for.end138_crit_edge, %do.end75.for.end138_crit_edge
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %iface_limit.0313, ptr %arrayidx, align 4
  %62 = ptrtoint ptr %combo.1315 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %combo.1315, align 1
  %conv142 = zext i8 %63 to i32
  %add.ptr143 = getelementptr %struct.ieee80211_iface_limit, ptr %iface_limit.0313, i32 %conv142
  %add.ptr146 = getelementptr %struct.wil_fw_concurrency_limit, ptr %limits87, i32 %conv142
  %inc148 = add nuw nsw i32 %i.1311, 1
  %exitcond316.not = icmp eq i32 %inc148, %smax
  br i1 %exitcond316.not, label %for.end138.do.body152_crit_edge, label %for.end138.for.body35_crit_edge

for.end138.for.body35_crit_edge:                  ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

for.end138.do.body152_crit_edge:                  ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body152

do.body152:                                       ; preds = %for.end138.do.body152_crit_edge, %if.end26.do.body152_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug447, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_iface_combinations_from_fw, %if.then164)) #10
          to label %do.end171 [label %if.then164], !srcloc !556

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev165 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %64 = ptrtoint ptr %main_ndev165 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %main_ndev165, align 4
  %n_mids = getelementptr inbounds %struct.wil_fw_record_concurrency, ptr %conc, i32 0, i32 2
  %66 = ptrtoint ptr %n_mids to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %n_mids, align 1
  %conv166 = zext i8 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug447, ptr noundef %65, ptr noundef nonnull @.str.26, i32 noundef %conv166) #10
  br label %do.end171

do.end171:                                        ; preds = %if.then164, %do.body152
  %n_mids172 = getelementptr inbounds %struct.wil_fw_record_concurrency, ptr %conc, i32 0, i32 2
  %68 = ptrtoint ptr %n_mids172 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %n_mids172, align 1
  %conv173 = zext i8 %69 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.26, i32 noundef %conv173) #10
  %70 = ptrtoint ptr %n_mids172 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %n_mids172, align 1
  %add178 = add i8 %71, 1
  %max_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 22
  %72 = ptrtoint ptr %max_vifs to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %add178, ptr %max_vifs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %add178)
  %cmp182 = icmp ugt i8 %add178, 4
  br i1 %cmp182, label %if.then184, label %do.end171.if.end188_crit_edge

do.end171.if.end188_crit_edge:                    ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end188

if.then184:                                       ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #12
  %conv181 = zext i8 %add178 to i32
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22, i32 noundef 4, i32 noundef %conv181) #10
  %73 = ptrtoint ptr %max_vifs to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 4, ptr %max_vifs, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then184, %do.end171.if.end188_crit_edge
  %n_iface_combinations = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 6
  %74 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv, ptr %n_iface_combinations, align 4
  %75 = ptrtoint ptr %iface_combinations2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call9.i.i, ptr %iface_combinations2, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end188, %if.end8.i.i.cleanup_crit_edge, %do.end10
  %retval.0 = phi i32 [ 0, %do.end10 ], [ 0, %if.end188 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wil_cfg80211_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_init.__UNIQUE_ID_ddebug448, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_init, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !556

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wil_cfg80211_init.__UNIQUE_ID_ddebug448, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @wiphy_new_nm(ptr noundef nonnull @wil_cfg80211_ops, i32 noundef 25216, ptr noundef null) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 56, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent.i, align 8
  %max_scan_ssids.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 18
  %1 = ptrtoint ptr %max_scan_ssids.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %max_scan_ssids.i, align 32
  %max_scan_ie_len.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 22
  %2 = ptrtoint ptr %max_scan_ie_len.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1024, ptr %max_scan_ie_len.i, align 4
  %max_remain_on_channel_duration.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 42
  %3 = ptrtoint ptr %max_remain_on_channel_duration.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 5000, ptr %max_remain_on_channel_duration.i, align 8
  %max_num_pmkids.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 43
  %4 = ptrtoint ptr %max_num_pmkids.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %max_num_pmkids.i, align 2
  %interface_modes.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %interface_modes.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1868, ptr %interface_modes.i, align 4
  %flags.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 32
  %or.i = or i32 %7, 2621456
  store i32 %or.i, ptr %flags.i, align 32
  %8 = load i8, ptr @disable_ap_sme, align 1, !range !557
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end7.do.body.i_crit_edge

if.end7.do.body.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %or2.i = or i32 %7, 2752528
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or2.i, ptr %flags.i, align 32
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end7.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_wiphy_init.__UNIQUE_ID_ddebug443, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_init, %if.then6.i)) #10
          to label %wiphy_priv.exit [label %if.then6.i], !srcloc !556

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wil_wiphy_init.__UNIQUE_ID_ddebug443, ptr noundef %11, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.210, i32 noundef %13) #10
  br label %wiphy_priv.exit

wiphy_priv.exit:                                  ; preds = %if.then6.i, %do.body.i
  %probe_resp_offload.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 46
  %14 = ptrtoint ptr %probe_resp_offload.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %probe_resp_offload.i, align 4
  %arrayidx.i = getelementptr %struct.wiphy, ptr %call.i, i32 0, i32 53, i32 2
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @wil_band_60ghz, ptr %arrayidx.i, align 8
  %signal_type.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 16
  %16 = ptrtoint ptr %signal_type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %signal_type.i, align 8
  %cipher_suites.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 28
  %17 = ptrtoint ptr %cipher_suites.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @wil_cipher_suites, ptr %cipher_suites.i, align 8
  %n_cipher_suites.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 27
  %18 = ptrtoint ptr %n_cipher_suites.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %n_cipher_suites.i, align 4
  %mgmt_stypes.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %mgmt_stypes.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @wil_mgmt_stypes, ptr %mgmt_stypes.i, align 4
  %features.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 13
  %20 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features.i, align 8
  %or10.i = or i32 %21, 1
  store i32 %or10.i, ptr %features.i, align 8
  %n_vendor_commands.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 67
  %22 = ptrtoint ptr %n_vendor_commands.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %n_vendor_commands.i, align 4
  %vendor_commands.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 65
  %23 = ptrtoint ptr %vendor_commands.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @wil_nl80211_vendor_commands, ptr %vendor_commands.i, align 4
  %wowlan.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 40
  %24 = ptrtoint ptr %wowlan.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @wil_wowlan_support, ptr %wowlan.i, align 32
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 86
  %wiphy9 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %wiphy9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %wiphy9, align 8
  %26 = load ptr, ptr @wil_band_60ghz, align 4
  %monitor_chandef = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 48
  tail call void @cfg80211_chandef_create(ptr noundef %monitor_chandef, ptr noundef %26, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %wiphy_priv.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %priv.i, %wiphy_priv.exit ], [ inttoptr (i32 -12 to ptr), %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_cfg80211_deinit(ptr nocapture noundef readonly %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy1 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %0 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_deinit.__UNIQUE_ID_ddebug449, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_deinit, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !556

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy1, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 56, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wil_cfg80211_deinit.__UNIQUE_ID_ddebug449, ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %iface_combinations = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %iface_combinations to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iface_combinations, align 16
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %iface_combinations to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %iface_combinations, align 16
  tail call void @wiphy_free(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_p2p_wdev_free(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vif_mutex = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #10
  %p2p_wdev1 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 87
  %0 = ptrtoint ptr %p2p_wdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p_wdev1, align 4
  store ptr null, ptr %p2p_wdev1, align 4
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 82
  %4 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee80211_ptr, align 16
  %radio_wdev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 88
  %6 = ptrtoint ptr %radio_wdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %radio_wdev, align 8
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cfg80211_unregister_wdev(ptr noundef nonnull %1) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_set_recovery_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wil_has_other_active_ifaces(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__wil_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__wil_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_set_ssid(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_wil_cfg80211_set_ies(ptr noundef %vif, ptr nocapture noundef readonly %bcon) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proberesp1 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 12
  %proberesp_len2 = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 15
  %probe_resp = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 5
  %0 = ptrtoint ptr %probe_resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %probe_resp, align 4
  %probe_resp_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 15
  %2 = ptrtoint ptr %probe_resp_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %probe_resp_len, align 4
  %4 = ptrtoint ptr %proberesp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proberesp1, align 4
  tail call void @kfree(ptr noundef %5) #10
  %6 = ptrtoint ptr %proberesp1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %proberesp1, align 4
  %7 = ptrtoint ptr %proberesp_len2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %proberesp_len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %entry.wil_memdup_ie.exit_crit_edge, label %if.then.i

entry.wil_memdup_ie.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_memdup_ie.exit

if.then.i:                                        ; preds = %entry
  %call.i = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %3, i32 noundef 3264) #10
  %8 = ptrtoint ptr %proberesp1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %proberesp1, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i.wil_memdup_ie.exit_crit_edge, label %if.then1.i

if.then.i.wil_memdup_ie.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_memdup_ie.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %proberesp_len2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %proberesp_len2, align 4
  br label %wil_memdup_ie.exit

wil_memdup_ie.exit:                               ; preds = %if.then1.i, %if.then.i.wil_memdup_ie.exit_crit_edge, %entry.wil_memdup_ie.exit_crit_edge
  %proberesp_ies = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 13
  %proberesp_ies_len = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 16
  %proberesp_ies3 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 3
  %10 = ptrtoint ptr %proberesp_ies3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proberesp_ies3, align 4
  %proberesp_ies_len4 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 13
  %12 = ptrtoint ptr %proberesp_ies_len4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %proberesp_ies_len4, align 4
  %14 = ptrtoint ptr %proberesp_ies to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %proberesp_ies, align 4
  tail call void @kfree(ptr noundef %15) #10
  %16 = ptrtoint ptr %proberesp_ies to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %proberesp_ies, align 4
  %17 = ptrtoint ptr %proberesp_ies_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %proberesp_ies_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i48 = icmp eq i32 %13, 0
  br i1 %cmp.not.i48, label %wil_memdup_ie.exit.wil_memdup_ie.exit53_crit_edge, label %if.then.i51

wil_memdup_ie.exit.wil_memdup_ie.exit53_crit_edge: ; preds = %wil_memdup_ie.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_memdup_ie.exit53

if.then.i51:                                      ; preds = %wil_memdup_ie.exit
  %call.i49 = tail call ptr @kmemdup(ptr noundef %11, i32 noundef %13, i32 noundef 3264) #10
  %18 = ptrtoint ptr %proberesp_ies to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i49, ptr %proberesp_ies, align 4
  %tobool.not.i50 = icmp eq ptr %call.i49, null
  br i1 %tobool.not.i50, label %if.then.i51.wil_memdup_ie.exit53_crit_edge, label %if.then1.i52

if.then.i51.wil_memdup_ie.exit53_crit_edge:       ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_memdup_ie.exit53

if.then1.i52:                                     ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %proberesp_ies_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %13, ptr %proberesp_ies_len, align 4
  br label %wil_memdup_ie.exit53

wil_memdup_ie.exit53:                             ; preds = %if.then1.i52, %if.then.i51.wil_memdup_ie.exit53_crit_edge, %wil_memdup_ie.exit.wil_memdup_ie.exit53_crit_edge
  %assocresp_ies = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 14
  %assocresp_ies_len = getelementptr inbounds %struct.wil6210_vif, ptr %vif, i32 0, i32 17
  %assocresp_ies5 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 4
  %20 = ptrtoint ptr %assocresp_ies5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %assocresp_ies5, align 4
  %assocresp_ies_len6 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 14
  %22 = ptrtoint ptr %assocresp_ies_len6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %assocresp_ies_len6, align 4
  %24 = ptrtoint ptr %assocresp_ies to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %assocresp_ies, align 4
  tail call void @kfree(ptr noundef %25) #10
  %26 = ptrtoint ptr %assocresp_ies to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %assocresp_ies, align 4
  %27 = ptrtoint ptr %assocresp_ies_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %assocresp_ies_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i54 = icmp eq i32 %23, 0
  br i1 %cmp.not.i54, label %wil_memdup_ie.exit53.wil_memdup_ie.exit59_crit_edge, label %if.then.i57

wil_memdup_ie.exit53.wil_memdup_ie.exit59_crit_edge: ; preds = %wil_memdup_ie.exit53
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_memdup_ie.exit59

if.then.i57:                                      ; preds = %wil_memdup_ie.exit53
  %call.i55 = tail call ptr @kmemdup(ptr noundef %21, i32 noundef %23, i32 noundef 3264) #10
  %28 = ptrtoint ptr %assocresp_ies to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i55, ptr %assocresp_ies, align 4
  %tobool.not.i56 = icmp eq ptr %call.i55, null
  br i1 %tobool.not.i56, label %if.then.i57.wil_memdup_ie.exit59_crit_edge, label %if.then1.i58

if.then.i57.wil_memdup_ie.exit59_crit_edge:       ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_memdup_ie.exit59

if.then1.i58:                                     ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %assocresp_ies_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %23, ptr %assocresp_ies_len, align 4
  br label %wil_memdup_ie.exit59

wil_memdup_ie.exit59:                             ; preds = %if.then1.i58, %if.then.i57.wil_memdup_ie.exit59_crit_edge, %wil_memdup_ie.exit53.wil_memdup_ie.exit59_crit_edge
  %30 = ptrtoint ptr %probe_resp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %probe_resp, align 4
  %32 = ptrtoint ptr %probe_resp_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %probe_resp_len, align 4
  %conv = trunc i32 %33 to i16
  %tobool.not.i60 = icmp eq ptr %31, null
  %variable.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %31, i32 0, i32 6, i32 1, i32 2
  %sub.i = add i16 %conv, -36
  %ies.0.i = select i1 %tobool.not.i60, ptr null, ptr %variable.i
  %34 = ptrtoint ptr %proberesp_ies3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %proberesp_ies3, align 4
  %36 = ptrtoint ptr %proberesp_ies_len4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %proberesp_ies_len4, align 4
  %conv11 = trunc i32 %37 to i16
  %tobool.not.i62 = icmp eq ptr %ies.0.i, null
  %38 = or i1 %tobool.not.i60, %tobool.not.i62
  %spec.select.i = select i1 %38, i16 0, i16 %sub.i
  %tobool1.not.i = icmp eq ptr %35, null
  %ies2_len.addr.0.i = select i1 %tobool1.not.i, i16 0, i16 %conv11
  %conv.i = zext i16 %spec.select.i to i32
  %39 = or i16 %ies2_len.addr.0.i, %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %wil_memdup_ie.exit59.if.end_crit_edge, label %if.end9.i

wil_memdup_ie.exit59.if.end_crit_edge:            ; preds = %wil_memdup_ie.exit59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end9.i:                                        ; preds = %wil_memdup_ie.exit59
  %conv11.i = zext i16 %ies2_len.addr.0.i to i32
  %add.i = add nuw nsw i32 %conv11.i, %conv.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #13
  %tobool12.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not.i, label %if.end9.i.out_crit_edge, label %if.end14.i

if.end9.i.out_crit_edge:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14.i:                                       ; preds = %if.end9.i
  br i1 %tobool.not.i62, label %if.end14.i.if.end18.i_crit_edge, label %if.then16.i

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = call ptr @memcpy(ptr %call9.i.i, ptr %ies.0.i, i32 %conv.i)
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end18.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %conv.i
  br i1 %tobool1.not.i, label %if.end18.i.while.end.i_crit_edge, label %land.rhs.lr.ph.i

if.end18.i.while.end.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

land.rhs.lr.ph.i:                                 ; preds = %if.end18.i
  %add.ptr23.i = getelementptr i8, ptr %35, i32 %conv11.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %spos.0105.i = phi ptr [ %35, %land.rhs.lr.ph.i ], [ %add.ptr30.i, %cleanup.i.land.rhs.i_crit_edge ]
  %dpos.0103.i = phi ptr [ %add.ptr.i, %land.rhs.lr.ph.i ], [ %dpos.2.i, %cleanup.i.land.rhs.i_crit_edge ]
  %add.ptr21.i = getelementptr i8, ptr %spos.0105.i, i32 1
  %cmp24.i = icmp ult ptr %add.ptr21.i, %add.ptr23.i
  br i1 %cmp24.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %42 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr21.i, align 1
  %conv26.i = zext i8 %43 to i32
  %add27.i = add nuw nsw i32 %conv26.i, 2
  %add.ptr30.i = getelementptr i8, ptr %spos.0105.i, i32 %add27.i
  %cmp33.i = icmp ugt ptr %add.ptr30.i, %add.ptr23.i
  br i1 %cmp33.i, label %while.body.i.while.end.i_crit_edge, label %if.end36.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end36.i:                                       ; preds = %while.body.i
  %44 = ptrtoint ptr %spos.0105.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %spos.0105.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %45)
  %cmp39.i = icmp eq i8 %45, -35
  br i1 %cmp39.i, label %land.lhs.true41.i, label %if.end36.i.cleanup.i_crit_edge

if.end36.i.cleanup.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

land.lhs.true41.i:                                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp16.i.i = icmp ult i8 %43, 4
  %or.cond101.i = select i1 %tobool.not.i62, i1 true, i1 %cmp16.i.i
  br i1 %or.cond101.i, label %land.lhs.true41.i.if.then45.i_crit_edge, label %_wil_cfg80211_find_ie.exit.i

land.lhs.true41.i.if.then45.i_crit_edge:          ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45.i

_wil_cfg80211_find_ie.exit.i:                     ; preds = %land.lhs.true41.i
  %oui20.i.i = getelementptr inbounds %struct.ieee80211_vendor_ie, ptr %spos.0105.i, i32 0, i32 2
  %46 = ptrtoint ptr %oui20.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %oui20.i.i, align 1
  %conv22.i.i = zext i8 %47 to i32
  %shl.i.i = shl nuw nsw i32 %conv22.i.i, 16
  %arrayidx24.i.i = getelementptr %struct.ieee80211_vendor_ie, ptr %spos.0105.i, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx24.i.i, align 1
  %conv25.i.i = zext i8 %49 to i32
  %shl26.i.i = shl nuw nsw i32 %conv25.i.i, 8
  %or.i.i = or i32 %shl26.i.i, %shl.i.i
  %arrayidx28.i.i = getelementptr %struct.ieee80211_vendor_ie, ptr %spos.0105.i, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx28.i.i, align 1
  %conv29.i.i = zext i8 %51 to i32
  %or30.i.i = or i32 %or.i.i, %conv29.i.i
  %oui_type.i.i = getelementptr inbounds %struct.ieee80211_vendor_ie, ptr %spos.0105.i, i32 0, i32 3
  %52 = ptrtoint ptr %oui_type.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %oui_type.i.i, align 1
  %conv31.i.i = zext i8 %53 to i32
  %call.i.i.i = tail call ptr @cfg80211_find_vendor_elem(i32 noundef %or30.i.i, i32 noundef %conv31.i.i, ptr noundef nonnull %ies.0.i, i32 noundef %conv.i) #10
  %tobool44.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool44.not.i, label %_wil_cfg80211_find_ie.exit.i.if.then45.i_crit_edge, label %_wil_cfg80211_find_ie.exit.i.cleanup.i_crit_edge

_wil_cfg80211_find_ie.exit.i.cleanup.i_crit_edge: ; preds = %_wil_cfg80211_find_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

_wil_cfg80211_find_ie.exit.i.if.then45.i_crit_edge: ; preds = %_wil_cfg80211_find_ie.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45.i

if.then45.i:                                      ; preds = %_wil_cfg80211_find_ie.exit.i.if.then45.i_crit_edge, %land.lhs.true41.i.if.then45.i_crit_edge
  %54 = call ptr @memcpy(ptr %dpos.0103.i, ptr %spos.0105.i, i32 %add27.i)
  %add.ptr48.i = getelementptr i8, ptr %dpos.0103.i, i32 %add27.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then45.i, %_wil_cfg80211_find_ie.exit.i.cleanup.i_crit_edge, %if.end36.i.cleanup.i_crit_edge
  %dpos.2.i = phi ptr [ %dpos.0103.i, %_wil_cfg80211_find_ie.exit.i.cleanup.i_crit_edge ], [ %add.ptr48.i, %if.then45.i ], [ %dpos.0103.i, %if.end36.i.cleanup.i_crit_edge ]
  %tobool20.not.i = icmp eq ptr %add.ptr30.i, null
  br i1 %tobool20.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.land.rhs.i_crit_edge

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %if.end18.i.while.end.i_crit_edge
  %dpos.0.lcssa.i = phi ptr [ %add.ptr.i, %if.end18.i.while.end.i_crit_edge ], [ %dpos.0103.i, %land.rhs.i.while.end.i_crit_edge ], [ %dpos.2.i, %cleanup.i.while.end.i_crit_edge ], [ %dpos.0103.i, %while.body.i.while.end.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dpos.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call9.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv52.i = trunc i32 %sub.ptr.sub.i to i16
  br label %if.end

if.end:                                           ; preds = %while.end.i, %wil_memdup_ie.exit59.if.end_crit_edge
  %len.0.ph = phi i16 [ 0, %wil_memdup_ie.exit59.if.end_crit_edge ], [ %conv52.i, %while.end.i ]
  %ies.1.ph = phi ptr [ null, %wil_memdup_ie.exit59.if.end_crit_edge ], [ %call9.i.i, %while.end.i ]
  %call13 = tail call i32 @wmi_set_ie(ptr noundef %vif, i8 noundef zeroext 2, i16 noundef zeroext %len.0.ph, ptr noundef %ies.1.ph) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end16:                                         ; preds = %if.end
  %55 = ptrtoint ptr %assocresp_ies5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %assocresp_ies5, align 4
  %tobool18.not = icmp eq ptr %56, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %assocresp_ies_len6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %assocresp_ies_len6, align 4
  %conv21 = trunc i32 %58 to i16
  %call23 = tail call i32 @wmi_set_ie(ptr noundef %vif, i8 noundef zeroext 4, i16 noundef zeroext %conv21, ptr noundef nonnull %56) #10
  br label %out

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 @wmi_set_ie(ptr noundef %vif, i8 noundef zeroext 4, i16 noundef zeroext %len.0.ph, ptr noundef %ies.1.ph) #10
  br label %out

out:                                              ; preds = %if.else, %if.then19, %if.end.out_crit_edge, %if.end9.i.out_crit_edge
  %ies.172 = phi ptr [ %ies.1.ph, %if.end.out_crit_edge ], [ %ies.1.ph, %if.then19 ], [ %ies.1.ph, %if.else ], [ null, %if.end9.i.out_crit_edge ]
  %rc.0 = phi i32 [ %call13, %if.end.out_crit_edge ], [ %call23, %if.then19 ], [ %call24, %if.else ], [ -12, %if.end9.i.out_crit_edge ]
  tail call void @kfree(ptr noundef %ies.172) #10
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_bus_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_pcp_start(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_bcast_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_set_ie(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_vendor_elem(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_detect_key_usage(ptr noundef readonly %wdev, i1 noundef zeroext %pairwise) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wdev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #10, !srcloc !561
  unreachable

do.end7.i:                                        ; preds = %entry
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wdev_priv.exit, !prof !558

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wdev_priv.exit:                                   ; preds = %do.end7.i
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  br i1 %pairwise, label %wdev_priv.exit.do.body3_crit_edge, label %if.else

wdev_priv.exit.do.body3_crit_edge:                ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

if.else:                                          ; preds = %wdev_priv.exit
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  %switch.tableidx = add i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 8
  br i1 %4, label %switch.hole_check, label %if.else.sw.default_crit_edge

if.else.sw.default_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %if.else.sw.default_crit_edge
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.wil_detect_key_usage) #10
  br label %do.body3

switch.hole_check:                                ; preds = %if.else
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -61, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.wil_detect_key_usage, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body3

do.body3:                                         ; preds = %switch.lookup, %sw.default, %wdev_priv.exit.do.body3_crit_edge
  %rc.0 = phi i32 [ 1, %sw.default ], [ 0, %wdev_priv.exit.do.body3_crit_edge ], [ %switch.load, %switch.lookup ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_detect_key_usage.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_detect_key_usage, %if.then9)) #10
          to label %do.end12 [label %if.then9], !srcloc !556

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_ndev, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @key_usage_str, i32 0, i32 %rc.0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_detect_key_usage.__UNIQUE_ID_ddebug391, ptr noundef %8, ptr noundef nonnull @.str.42, ptr noundef %10) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body3
  %arrayidx13 = getelementptr [5 x ptr], ptr @key_usage_str, i32 0, i32 %rc.0
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx13, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i.i, ptr noundef nonnull @.str.42, ptr noundef %12) #10
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_add_cipher_key(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_find_cid(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_probe_status(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_suspend(ptr noundef %wiphy, ptr nocapture noundef readnone %wow) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %status = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end13, label %do.body3

do.body3:                                         ; preds = %wiphy_priv.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_suspend.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_suspend, %if.then8)) #10
          to label %do.end10 [label %if.then8], !srcloc !556

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_suspend.__UNIQUE_ID_ddebug427, ptr noundef %4, ptr noundef nonnull @.str.50) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %do.body3
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.50) #10
  br label %cleanup

if.end13:                                         ; preds = %wiphy_priv.exit
  %call14 = tail call i32 @wil_can_suspend(ptr noundef %priv.i, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body20, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body20:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_suspend.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_suspend, %if.then32)) #10
          to label %do.end38 [label %if.then32], !srcloc !556

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev33 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %main_ndev33 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_ndev33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_suspend.__UNIQUE_ID_ddebug428, ptr noundef %6, ptr noundef nonnull @.str.51) #10
  br label %do.end38

do.end38:                                         ; preds = %if.then32, %do.body20
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.51) #10
  %mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 53, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %vif_mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 28
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #10
  tail call void @wil_p2p_stop_radio_operations(ptr noundef %priv.i) #10
  tail call void @wil_abort_scan_all_vifs(ptr noundef %priv.i, i1 noundef zeroext true) #10
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end13.cleanup_crit_edge, %do.end10
  %retval.0 = phi i32 [ 0, %do.end10 ], [ %call14, %if.end13.cleanup_crit_edge ], [ 0, %do.end38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_resume(ptr noundef %wiphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_resume.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_resume, %if.then)) #10
          to label %do.end7 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_resume.__UNIQUE_ID_ddebug429, ptr noundef %1, ptr noundef nonnull @.str.53) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %wiphy_priv.exit
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.53) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @wil_cfg80211_add_iface(ptr noundef %wiphy, ptr noundef %name, i8 noundef zeroext %name_assign_type, i32 noundef %type, ptr noundef %params) #0 align 64 {
entry:
  %params.i = alloca %struct.iface_combination_params, align 4
  %addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_add_iface.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_add_iface, %if.then)) #10
          to label %do.end8 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_add_iface.__UNIQUE_ID_ddebug355, ptr noundef %3, ptr noundef nonnull @.str.55, i32 noundef %type) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wiphy_priv.exit
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.55, i32 noundef %type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %type)
  %cmp = icmp eq i32 %type, 10
  br i1 %cmp, label %if.then11, label %if.end25

if.then11:                                        ; preds = %do.end8
  %p2p_wdev12 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %4 = ptrtoint ptr %p2p_wdev12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p2p_wdev12, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54) #10
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 964) #14
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10, ptr %iftype, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %wiphy, ptr %call7.i.i, align 8
  %address = getelementptr inbounds %struct.wireless_dev, ptr %call7.i.i, i32 0, i32 12
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 54
  %9 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %perm_addr, align 4
  %11 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %address, align 4
  %add.ptr.i = getelementptr %struct.net_device, ptr %1, i32 0, i32 54, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.wireless_dev, ptr %call7.i.i, i32 0, i32 12, i32 4
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %add.ptr1.i, align 8
  %15 = ptrtoint ptr %p2p_wdev12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %p2p_wdev12, align 4
  br label %cleanup

if.end25:                                         ; preds = %do.end8
  %wiphy26 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %wiphy26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy26, align 8
  %n_iface_combinations = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_iface_combinations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool27.not = icmp eq i32 %19, 0
  br i1 %tobool27.not, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.54) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %params.i) #10
  %20 = getelementptr inbounds i8, ptr %params.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 60)
  %22 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %params.i, align 4
  %max_vifs.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 22
  %23 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %max_vifs.i, align 4
  %25 = tail call i8 @llvm.umin.i8(i8 %24, i8 4) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp220.not.i = icmp eq i8 %25, 0
  br i1 %cmp220.not.i, label %if.end30.wil_cfg80211_validate_add_iface.exit_crit_edge, label %for.body.i

if.end30.wil_cfg80211_validate_add_iface.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_cfg80211_validate_add_iface.exit

for.body.i:                                       ; preds = %if.end30
  %arrayidx.i = getelementptr %struct.wiphy, ptr %wiphy, i32 1, i32 24
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i120 = icmp eq ptr %27, null
  br i1 %tobool.not.i120, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %iftype.i = getelementptr inbounds %struct.wireless_dev, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %iftype.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iftype.i, align 4
  %arrayidx7.i = getelementptr %struct.iface_combination_params, ptr %params.i, i32 0, i32 2, i32 %29
  %30 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx7.i, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %arrayidx7.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %exitcond.not.i = icmp eq i8 %25, 1
  br i1 %exitcond.not.i, label %for.inc.i.wil_cfg80211_validate_add_iface.exit_crit_edge, label %for.body.i.1

for.inc.i.wil_cfg80211_validate_add_iface.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_cfg80211_validate_add_iface.exit

for.body.i.1:                                     ; preds = %for.inc.i
  %arrayidx.i.1 = getelementptr %struct.wiphy, ptr %wiphy, i32 1, i32 25
  %32 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool.not.i120.1 = icmp eq ptr %33, null
  br i1 %tobool.not.i120.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.then.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %iftype.i.1 = getelementptr inbounds %struct.wireless_dev, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %iftype.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iftype.i.1, align 4
  %arrayidx7.i.1 = getelementptr %struct.iface_combination_params, ptr %params.i, i32 0, i32 2, i32 %35
  %36 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx7.i.1, align 4
  %inc.i.1 = add i32 %37, 1
  store i32 %inc.i.1, ptr %arrayidx7.i.1, align 4
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %for.body.i.1.for.inc.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %exitcond.not.i.1 = icmp eq i8 %25, 2
  br i1 %exitcond.not.i.1, label %for.inc.i.1.wil_cfg80211_validate_add_iface.exit_crit_edge, label %for.body.i.2

for.inc.i.1.wil_cfg80211_validate_add_iface.exit_crit_edge: ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_cfg80211_validate_add_iface.exit

for.body.i.2:                                     ; preds = %for.inc.i.1
  %arrayidx.i.2 = getelementptr %struct.wiphy, ptr %wiphy, i32 1, i32 26
  %38 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool.not.i120.2 = icmp eq ptr %39, null
  br i1 %tobool.not.i120.2, label %for.body.i.2.for.inc.i.2_crit_edge, label %if.then.i.2

for.body.i.2.for.inc.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.2

if.then.i.2:                                      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %iftype.i.2 = getelementptr inbounds %struct.wireless_dev, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %iftype.i.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iftype.i.2, align 4
  %arrayidx7.i.2 = getelementptr %struct.iface_combination_params, ptr %params.i, i32 0, i32 2, i32 %41
  %42 = ptrtoint ptr %arrayidx7.i.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx7.i.2, align 4
  %inc.i.2 = add i32 %43, 1
  store i32 %inc.i.2, ptr %arrayidx7.i.2, align 4
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then.i.2, %for.body.i.2.for.inc.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %exitcond.not.i.2 = icmp eq i8 %25, 3
  br i1 %exitcond.not.i.2, label %for.inc.i.2.wil_cfg80211_validate_add_iface.exit_crit_edge, label %for.body.i.3

for.inc.i.2.wil_cfg80211_validate_add_iface.exit_crit_edge: ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_cfg80211_validate_add_iface.exit

for.body.i.3:                                     ; preds = %for.inc.i.2
  %arrayidx.i.3 = getelementptr %struct.wiphy, ptr %wiphy, i32 1, i32 27
  %44 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.3, align 4
  %tobool.not.i120.3 = icmp eq ptr %45, null
  br i1 %tobool.not.i120.3, label %for.body.i.3.wil_cfg80211_validate_add_iface.exit_crit_edge, label %if.then.i.3

for.body.i.3.wil_cfg80211_validate_add_iface.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_cfg80211_validate_add_iface.exit

if.then.i.3:                                      ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #12
  %iftype.i.3 = getelementptr inbounds %struct.wireless_dev, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %iftype.i.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iftype.i.3, align 4
  %arrayidx7.i.3 = getelementptr %struct.iface_combination_params, ptr %params.i, i32 0, i32 2, i32 %47
  %48 = ptrtoint ptr %arrayidx7.i.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx7.i.3, align 4
  %inc.i.3 = add i32 %49, 1
  store i32 %inc.i.3, ptr %arrayidx7.i.3, align 4
  br label %wil_cfg80211_validate_add_iface.exit

wil_cfg80211_validate_add_iface.exit:             ; preds = %if.then.i.3, %for.body.i.3.wil_cfg80211_validate_add_iface.exit_crit_edge, %for.inc.i.2.wil_cfg80211_validate_add_iface.exit_crit_edge, %for.inc.i.1.wil_cfg80211_validate_add_iface.exit_crit_edge, %for.inc.i.wil_cfg80211_validate_add_iface.exit_crit_edge, %if.end30.wil_cfg80211_validate_add_iface.exit_crit_edge
  %arrayidx10.i = getelementptr %struct.iface_combination_params, ptr %params.i, i32 0, i32 2, i32 %type
  %50 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx10.i, align 4
  %inc11.i = add i32 %51, 1
  store i32 %inc11.i, ptr %arrayidx10.i, align 4
  %call.i = call i32 @cfg80211_check_combinations(ptr noundef %17, ptr noundef nonnull %params.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %params.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %wil_cfg80211_validate_add_iface.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.54, i32 noundef %call.i) #10
  %52 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end35:                                         ; preds = %wil_cfg80211_validate_add_iface.exit
  %call36 = call ptr @wil_vif_alloc(ptr noundef %priv.i, ptr noundef %name, i8 noundef zeroext %name_assign_type, i32 noundef %type) #10
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %ndev41 = getelementptr inbounds %struct.wil6210_vif, ptr %call36, i32 0, i32 1
  %53 = ptrtoint ptr %ndev41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ndev41, align 4
  %perm_addr42 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 54
  %perm_addr44 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 54
  %55 = ptrtoint ptr %perm_addr44 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %perm_addr44, align 4
  %57 = ptrtoint ptr %perm_addr42 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %perm_addr42, align 4
  %add.ptr.i121 = getelementptr %struct.net_device, ptr %1, i32 0, i32 54, i32 4
  %58 = ptrtoint ptr %add.ptr.i121 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i121, align 2
  %add.ptr1.i122 = getelementptr %struct.net_device, ptr %54, i32 0, i32 54, i32 4
  %60 = ptrtoint ptr %add.ptr1.i122 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %add.ptr1.i122, align 2
  %macaddr = getelementptr inbounds %struct.vif_params, ptr %params, i32 0, i32 2
  %61 = ptrtoint ptr %macaddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %macaddr, align 4
  %63 = and i32 %62, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.i.not.i = icmp eq i32 %63, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end40.if.else_crit_edge

if.end40.if.else_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %if.end40
  %add.ptr.i.i = getelementptr %struct.vif_params, ptr %params, i32 0, i32 2, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %65 to i32
  %or.i.i = or i32 %62, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %if.then48

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then48:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @dev_addr_mod(ptr noundef %54, i32 noundef 0, ptr noundef %macaddr, i32 noundef 6) #10
  br label %if.end58

if.else:                                          ; preds = %is_valid_ether_addr.exit.if.else_crit_edge, %if.end40.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #10
  %66 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %67 = ptrtoint ptr %perm_addr44 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %perm_addr44, align 4
  %69 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %addr, align 4
  %70 = ptrtoint ptr %add.ptr.i121 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr.i121, align 2
  %72 = ptrtoint ptr %66 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %66, align 4
  %73 = lshr i32 %68, 24
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %call36, i32 0, i32 3
  %74 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %mid, align 4
  %conv54 = zext i8 %75 to i32
  %shl = shl nuw i32 1, %conv54
  %76 = xor i32 %73, %shl
  %77 = trunc i32 %76 to i8
  %conv55 = or i8 %77, 2
  store i8 %conv55, ptr %addr, align 4
  call void @dev_addr_mod(ptr noundef %54, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #10
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then48
  %address60 = getelementptr inbounds %struct.wireless_dev, ptr %call36, i32 0, i32 12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 86
  %78 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_addr, align 64
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %82 = ptrtoint ptr %address60 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %address60, align 4
  %add.ptr.i125 = getelementptr i8, ptr %79, i32 4
  %83 = ptrtoint ptr %add.ptr.i125 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr.i125, align 2
  %add.ptr1.i126 = getelementptr %struct.wireless_dev, ptr %call36, i32 0, i32 12, i32 4
  %85 = ptrtoint ptr %add.ptr1.i126 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %add.ptr1.i126, align 2
  %call62 = call i32 @wil_vif_add(ptr noundef %priv.i, ptr noundef %call36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %out

if.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %mid66 = getelementptr inbounds %struct.wil6210_vif, ptr %call36, i32 0, i32 3
  %86 = ptrtoint ptr %mid66 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %mid66, align 4
  %conv67 = zext i8 %87 to i32
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.54, i32 noundef %conv67, i32 noundef %type, ptr noundef %address60) #10
  br label %cleanup

out:                                              ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  call void @wil_vif_free(ptr noundef %call36) #10
  %88 = inttoptr i32 %call62 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end65, %if.end35.cleanup_crit_edge, %if.then33, %if.then28, %if.end21, %if.end16.cleanup_crit_edge, %if.then14
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then14 ], [ %call7.i.i, %if.end21 ], [ %52, %if.then33 ], [ %88, %out ], [ %call36, %if.end65 ], [ inttoptr (i32 -22 to ptr), %if.then28 ], [ inttoptr (i32 -12 to ptr), %if.end16.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_del_iface(ptr noundef %wiphy, ptr noundef %wdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %p2p_wdev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %0 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p_wdev.i, align 4
  %cmp.i = icmp eq ptr %1, %wdev
  br i1 %cmp.i, label %if.then.i, label %wiphy_priv.exit.wdev_to_vif.exit_crit_edge

wiphy_priv.exit.wdev_to_vif.exit_crit_edge:       ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wdev_to_vif.exit

if.then.i:                                        ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  br label %wdev_to_vif.exit

wdev_to_vif.exit:                                 ; preds = %if.then.i, %wiphy_priv.exit.wdev_to_vif.exit_crit_edge
  %retval.0.i49 = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %wdev, %wiphy_priv.exit.wdev_to_vif.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_del_iface.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_del_iface, %if.then)) #10
          to label %do.end8 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wdev_to_vif.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_del_iface.__UNIQUE_ID_ddebug356, ptr noundef %5, ptr noundef nonnull @.str.61) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wdev_to_vif.exit
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.61) #10
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %6 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp = icmp eq i32 %7, 10
  br i1 %cmp, label %if.then11, label %if.end15

if.then11:                                        ; preds = %do.end8
  %8 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p2p_wdev.i, align 4
  %cmp12.not = icmp eq ptr %9, %wdev
  br i1 %cmp12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, ptr noundef %wdev) #10
  br label %cleanup

if.end14:                                         ; preds = %if.then11
  tail call void @wil_cfg80211_stop_p2p_device(ptr noundef nonnull %wiphy, ptr noundef %wdev)
  %vif_mutex.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 28
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex.i, i32 noundef 0) #10
  %10 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p2p_wdev.i, align 4
  store ptr null, ptr %p2p_wdev.i, align 4
  %main_ndev.i50 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %main_ndev.i50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %main_ndev.i50, align 4
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 82
  %14 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ieee80211_ptr.i, align 16
  %radio_wdev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %radio_wdev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %radio_wdev.i, align 8
  tail call void @mutex_unlock(ptr noundef %vif_mutex.i) #10
  %tobool.not.i51 = icmp eq ptr %11, null
  br i1 %tobool.not.i51, label %if.end14.cleanup_crit_edge, label %if.then.i52

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i52:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cfg80211_unregister_wdev(ptr noundef nonnull %11) #10
  tail call void @kfree(ptr noundef nonnull %11) #10
  br label %cleanup

if.end15:                                         ; preds = %do.end8
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i49, i32 0, i32 3
  %17 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp16 = icmp eq i8 %18, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.60) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %wil1.i = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i49, i32 0, i32 2
  %19 = ptrtoint ptr %wil1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wil1.i, align 8
  %iftype.i = getelementptr inbounds %struct.wireless_dev, ptr %retval.0.i49, i32 0, i32 1
  %21 = ptrtoint ptr %iftype.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iftype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.end19.wil_vif_prepare_stop.exit_crit_edge

if.end19.wil_vif_prepare_stop.exit_crit_edge:     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_vif_prepare_stop.exit

if.end.i:                                         ; preds = %if.end19
  %ndev3.i = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i49, i32 0, i32 1
  %23 = ptrtoint ptr %ndev3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev3.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i.i, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %if.then4.i, label %if.end.i.wil_vif_prepare_stop.exit_crit_edge

if.end.i.wil_vif_prepare_stop.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_vif_prepare_stop.exit

if.then4.i:                                       ; preds = %if.end.i
  %call5.i = tail call i32 @wmi_pcp_stop(ptr noundef %retval.0.i49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i53 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i53, label %if.then4.i.if.end7.i_crit_edge, label %if.then6.i

if.then4.i.if.end7.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %20, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.wil_vif_prepare_stop, i32 noundef %call5.i) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.then4.i.if.end7.i_crit_edge
  tail call void @wil_bcast_fini(ptr noundef %retval.0.i49) #10
  tail call void @netif_carrier_off(ptr noundef %24) #10
  br label %wil_vif_prepare_stop.exit

wil_vif_prepare_stop.exit:                        ; preds = %if.end7.i, %if.end.i.wil_vif_prepare_stop.exit_crit_edge, %if.end19.wil_vif_prepare_stop.exit_crit_edge
  %28 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mid, align 4
  %conv25 = zext i8 %29 to i32
  %30 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iftype, align 4
  %address = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 12
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.60, i32 noundef %conv25, i32 noundef %31, ptr noundef %address) #10
  %32 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mid, align 4
  tail call void @wil_vif_remove(ptr noundef %priv.i, i8 noundef zeroext %33) #10
  br label %cleanup

cleanup:                                          ; preds = %wil_vif_prepare_stop.exit, %if.then18, %if.then.i52, %if.end14.cleanup_crit_edge, %if.then13
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -22, %if.then18 ], [ 0, %wil_vif_prepare_stop.exit ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then.i52 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_change_iface(ptr noundef %wiphy, ptr noundef %ndev, i32 noundef %type, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %params.i = alloca %struct.iface_combination_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_change_iface.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_change_iface, %if.then)) #10
          to label %do.end9 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_change_iface.__UNIQUE_ID_ddebug357, ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %type) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %wiphy_priv.exit
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.66, i32 noundef %type) #10
  %n_iface_combinations = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 6
  %2 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_iface_combinations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool12.not = icmp eq i32 %3, 0
  br i1 %tobool12.not, label %do.end9.if.end18_crit_edge, label %if.then13

do.end9.if.end18_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then13:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %params.i) #10
  %4 = getelementptr inbounds i8, ptr %params.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 60)
  %6 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %params.i, align 4
  %max_vifs.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 22
  %7 = ptrtoint ptr %max_vifs.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %max_vifs.i, align 4
  %9 = tail call i8 @llvm.umin.i8(i8 %8, i8 4) #10
  %cond.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp225.not.i = icmp eq i8 %9, 0
  br i1 %cmp225.not.i, label %if.then13.wil_cfg80211_validate_change_iface.exit.thread_crit_edge, label %if.then13.for.body.outer.i_crit_edge

if.then13.for.body.outer.i_crit_edge:             ; preds = %if.then13
  br label %for.body.outer.i

if.then13.wil_cfg80211_validate_change_iface.exit.thread_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_cfg80211_validate_change_iface.exit.thread

for.body.outer.i:                                 ; preds = %if.end.thread.i.for.body.outer.i_crit_edge, %if.then13.for.body.outer.i_crit_edge
  %i.027.ph.i = phi i32 [ %inc829.i, %if.end.thread.i.for.body.outer.i_crit_edge ], [ 0, %if.then13.for.body.outer.i_crit_edge ]
  %check_combos.0.off026.ph.i = phi i1 [ true, %if.end.thread.i.for.body.outer.i_crit_edge ], [ false, %if.then13.for.body.outer.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.outer.i
  %i.027.i = phi i32 [ %inc8.i, %if.end.i.for.body.i_crit_edge ], [ %i.027.ph.i, %for.body.outer.i ]
  %arrayidx.i = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 23, i32 %i.027.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i129 = icmp eq ptr %11, null
  %cmp4.not.i = icmp eq ptr %11, %add.ptr.i
  %or.cond.i = or i1 %tobool.not.i129, %cmp4.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.end.thread.i

if.end.i:                                         ; preds = %for.body.i
  %inc8.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, %cond.i
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.thread.i:                                  ; preds = %for.body.i
  %iftype.i = getelementptr inbounds %struct.wireless_dev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %iftype.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iftype.i, align 4
  %arrayidx7.i = getelementptr %struct.iface_combination_params, ptr %params.i, i32 0, i32 2, i32 %13
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %arrayidx7.i, align 4
  %inc829.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not30.i = icmp eq i32 %inc829.i, %cond.i
  br i1 %exitcond.not30.i, label %if.end.thread.i.wil_cfg80211_validate_change_iface.exit_crit_edge, label %if.end.thread.i.for.body.outer.i_crit_edge

if.end.thread.i.for.body.outer.i_crit_edge:       ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.outer.i

if.end.thread.i.wil_cfg80211_validate_change_iface.exit_crit_edge: ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_cfg80211_validate_change_iface.exit

for.end.i:                                        ; preds = %if.end.i
  br i1 %check_combos.0.off026.ph.i, label %for.end.i.wil_cfg80211_validate_change_iface.exit_crit_edge, label %for.end.i.wil_cfg80211_validate_change_iface.exit.thread_crit_edge

for.end.i.wil_cfg80211_validate_change_iface.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_cfg80211_validate_change_iface.exit.thread

for.end.i.wil_cfg80211_validate_change_iface.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_cfg80211_validate_change_iface.exit

wil_cfg80211_validate_change_iface.exit.thread:   ; preds = %for.end.i.wil_cfg80211_validate_change_iface.exit.thread_crit_edge, %if.then13.wil_cfg80211_validate_change_iface.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %params.i) #10
  br label %if.end18

wil_cfg80211_validate_change_iface.exit:          ; preds = %for.end.i.wil_cfg80211_validate_change_iface.exit_crit_edge, %if.end.thread.i.wil_cfg80211_validate_change_iface.exit_crit_edge
  %arrayidx12.i = getelementptr %struct.iface_combination_params, ptr %params.i, i32 0, i32 2, i32 %type
  %16 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12.i, align 4
  %inc13.i = add i32 %17, 1
  store i32 %inc13.i, ptr %arrayidx12.i, align 4
  %wiphy.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy.i, align 8
  %call.i = call i32 @cfg80211_check_combinations(ptr noundef %19, ptr noundef nonnull %params.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %params.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %wil_cfg80211_validate_change_iface.exit.if.end18_crit_edge, label %if.then16

wil_cfg80211_validate_change_iface.exit.if.end18_crit_edge: ; preds = %wil_cfg80211_validate_change_iface.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %wil_cfg80211_validate_change_iface.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.65, i32 noundef %call.i) #10
  br label %cleanup

if.end18:                                         ; preds = %wil_cfg80211_validate_change_iface.exit.if.end18_crit_edge, %wil_cfg80211_validate_change_iface.exit.thread, %do.end9.if.end18_crit_edge
  %call19 = call zeroext i1 @wil_has_other_active_ifaces(ptr noundef %priv.i, ptr noundef %ndev, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br i1 %call19, label %if.end18.if.end55_crit_edge, label %land.lhs.true

if.end18.if.end55_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end18
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true21

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true21:                                  ; preds = %land.lhs.true
  %call22 = call zeroext i1 @wil_is_recovery_blocked(ptr noundef %priv.i) #10
  br i1 %call22, label %land.lhs.true21.if.end55_crit_edge, label %land.lhs.true23

land.lhs.true21.if.end55_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %iftype = getelementptr i8, ptr %ndev, i32 2308
  %22 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i = icmp eq i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %cmp1.i = icmp eq i32 %type, 8
  %or.cond.i130 = and i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i130, label %land.lhs.true23.sw.epilog_crit_edge, label %do.body28

land.lhs.true23.sw.epilog_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body28:                                        ; preds = %land.lhs.true23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_change_iface.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_change_iface, %if.then40)) #10
          to label %do.end46 [label %if.then40], !srcloc !556

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev41 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %main_ndev41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %main_ndev41, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_change_iface.__UNIQUE_ID_ddebug358, ptr noundef %25, ptr noundef nonnull @.str.67) #10
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.67) #10
  %mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 53, i32 4
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call49 = call i32 @__wil_down(ptr noundef %priv.i) #10
  %call50 = call i32 @__wil_up(ptr noundef %priv.i) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool52.not = icmp eq i32 %call50, 0
  br i1 %tobool52.not, label %do.end46.if.end55_crit_edge, label %do.end46.cleanup_crit_edge

do.end46.cleanup_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end46.if.end55_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end55:                                         ; preds = %do.end46.if.end55_crit_edge, %land.lhs.true21.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %if.end18.if.end55_crit_edge
  %fw_reset.0.off0 = phi i1 [ false, %if.end18.if.end55_crit_edge ], [ false, %land.lhs.true21.if.end55_crit_edge ], [ false, %land.lhs.true.if.end55_crit_edge ], [ true, %do.end46.if.end55_crit_edge ]
  %26 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %type, label %if.end55.cleanup_crit_edge [
    i32 2, label %if.end55.sw.epilog_crit_edge
    i32 3, label %if.end55.sw.epilog_crit_edge158
    i32 8, label %if.end55.sw.epilog_crit_edge159
    i32 9, label %if.end55.sw.epilog_crit_edge160
    i32 6, label %sw.bb56
  ]

if.end55.sw.epilog_crit_edge160:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end55.sw.epilog_crit_edge159:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end55.sw.epilog_crit_edge158:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end55.sw.epilog_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb56:                                          ; preds = %if.end55
  %27 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool57.not = icmp eq i32 %28, 0
  br i1 %tobool57.not, label %sw.bb56.sw.epilog_crit_edge, label %if.then58

sw.bb56.sw.epilog_crit_edge:                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then58:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  %monitor_flags = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 53, i32 2
  %29 = ptrtoint ptr %monitor_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %monitor_flags, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then58, %sw.bb56.sw.epilog_crit_edge, %if.end55.sw.epilog_crit_edge, %if.end55.sw.epilog_crit_edge158, %if.end55.sw.epilog_crit_edge159, %if.end55.sw.epilog_crit_edge160, %land.lhs.true23.sw.epilog_crit_edge
  %fw_reset.0.off0139 = phi i1 [ %fw_reset.0.off0, %sw.bb56.sw.epilog_crit_edge ], [ %fw_reset.0.off0, %if.then58 ], [ %fw_reset.0.off0, %if.end55.sw.epilog_crit_edge ], [ %fw_reset.0.off0, %if.end55.sw.epilog_crit_edge158 ], [ %fw_reset.0.off0, %if.end55.sw.epilog_crit_edge159 ], [ %fw_reset.0.off0, %if.end55.sw.epilog_crit_edge160 ], [ false, %land.lhs.true23.sw.epilog_crit_edge ]
  %mid = getelementptr i8, ptr %ndev, i32 3276
  %30 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.not = icmp eq i8 %31, 0
  br i1 %cmp.not, label %sw.epilog.if.end80_crit_edge, label %land.lhs.true62

sw.epilog.if.end80_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true62:                                  ; preds = %sw.epilog
  %call63 = call zeroext i1 @wil_has_active_ifaces(ptr noundef %priv.i, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br i1 %call63, label %if.then65, label %land.lhs.true62.if.end80_crit_edge

land.lhs.true62.if.end80_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then65:                                        ; preds = %land.lhs.true62
  br i1 %fw_reset.0.off0139, label %if.then65.if.end69_crit_edge, label %if.then67

if.then65.if.end69_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then67:                                        ; preds = %if.then65
  %wil1.i = getelementptr i8, ptr %ndev, i32 3272
  %32 = ptrtoint ptr %wil1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wil1.i, align 8
  %iftype.i131 = getelementptr i8, ptr %ndev, i32 2308
  %34 = ptrtoint ptr %iftype.i131 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iftype.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp.not.i = icmp eq i32 %35, 3
  br i1 %cmp.not.i, label %if.end.i132, label %if.then67.if.end69_crit_edge

if.then67.if.end69_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end.i132:                                      ; preds = %if.then67
  %ndev3.i = getelementptr i8, ptr %ndev, i32 3268
  %36 = ptrtoint ptr %ndev3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev3.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %state.i.i, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %if.then4.i, label %if.end.i132.if.end69_crit_edge

if.end.i132.if.end69_crit_edge:                   ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then4.i:                                       ; preds = %if.end.i132
  %call5.i = call i32 @wmi_pcp_stop(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i133 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i133, label %if.then4.i.if.end7.i_crit_edge, label %if.then6.i

if.then4.i.if.end7.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_info(ptr noundef %33, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.wil_vif_prepare_stop, i32 noundef %call5.i) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.then4.i.if.end7.i_crit_edge
  call void @wil_bcast_fini(ptr noundef %add.ptr.i) #10
  call void @netif_carrier_off(ptr noundef %37) #10
  br label %if.end69

if.end69:                                         ; preds = %if.end7.i, %if.end.i132.if.end69_crit_edge, %if.then67.if.end69_crit_edge, %if.then65.if.end69_crit_edge
  %41 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mid, align 4
  %call71 = call i32 @wmi_port_delete(ptr noundef %priv.i, i8 noundef zeroext %42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end74:                                         ; preds = %if.end69
  %43 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mid, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %45 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_addr, align 64
  %call76 = call i32 @wmi_port_allocate(ptr noundef %priv.i, i8 noundef zeroext %44, ptr noundef %46, i32 noundef %type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end74.if.end80_crit_edge, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end74.if.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.end80:                                         ; preds = %if.end74.if.end80_crit_edge, %land.lhs.true62.if.end80_crit_edge, %sw.epilog.if.end80_crit_edge
  %iftype81 = getelementptr i8, ptr %ndev, i32 2308
  %47 = ptrtoint ptr %iftype81 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %type, ptr %iftype81, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end74.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %do.end46.cleanup_crit_edge, %if.then16
  %retval.0 = phi i32 [ %call.i, %if.then16 ], [ 0, %if.end80 ], [ %call50, %do.end46.cleanup_crit_edge ], [ -95, %if.end55.cleanup_crit_edge ], [ %call71, %if.end69.cleanup_crit_edge ], [ %call76, %if.end74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_del_key(ptr noundef %wiphy, ptr noundef %ndev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %call3 = tail call fastcc i32 @wil_detect_key_usage(ptr noundef %add.ptr.i, i1 noundef zeroext %pairwise), !range !560
  %mid = getelementptr i8, ptr %ndev, i32 3276
  %0 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.i = icmp eq i32 %call3, 2
  br i1 %cmp.i, label %wiphy_priv.exit.wil_find_sta_by_key_usage.exit_crit_edge, label %if.end.i

wiphy_priv.exit.wil_find_sta_by_key_usage.exit_crit_edge: ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_find_sta_by_key_usage.exit

if.end.i:                                         ; preds = %wiphy_priv.exit
  %tobool.not.i47 = icmp eq ptr %mac_addr, null
  br i1 %tobool.not.i47, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @wil_find_cid(ptr noundef %priv.i, i8 noundef zeroext %1, ptr noundef nonnull %mac_addr) #10
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp2.i = icmp eq i32 %call3, 1
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i.if.then8.i_crit_edge

if.else.i.if.then8.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then3.i:                                       ; preds = %if.else.i
  %max_assoc_sta.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 47
  %2 = ptrtoint ptr %max_assoc_sta.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_assoc_sta.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp21.not.i.i, label %if.then3.i.if.then8.i_crit_edge, label %if.then3.i.for.body.i.i_crit_edge

if.then3.i.for.body.i.i_crit_edge:                ; preds = %if.then3.i
  br label %for.body.i.i

if.then3.i.if.then8.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then3.i.for.body.i.i_crit_edge
  %i.023.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then3.i.for.body.i.i_crit_edge ]
  %status.i.i = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 63, i32 %i.023.i.i, i32 2
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i.i = icmp eq i32 %5, 0
  br i1 %cmp1.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %mid4.i.i = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 63, i32 %i.023.i.i, i32 1
  %6 = ptrtoint ptr %mid4.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mid4.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %1)
  %cmp6.not.i.i = icmp eq i8 %7, %1
  br i1 %cmp6.not.i.i, label %if.end.i.i.if.end6.i_crit_edge, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i.if.end6.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then8.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.then8.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.end6.i:                                        ; preds = %if.end.i.i.if.end6.i_crit_edge, %if.then1.i
  %cid.0.i = phi i32 [ %call.i, %if.then1.i ], [ %i.023.i.i, %if.end.i.i.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cid.0.i)
  %cmp7.i = icmp slt i32 %cid.0.i, 0
  br i1 %cmp7.i, label %if.end6.i.if.then8.i_crit_edge, label %if.end10.i

if.end6.i.if.then8.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i.if.then8.i_crit_edge, %for.inc.i.i.if.then8.i_crit_edge, %if.then3.i.if.then8.i_crit_edge, %if.else.i.if.then8.i_crit_edge
  %cid.024.i = phi i32 [ %cid.0.i, %if.end6.i.if.then8.i_crit_edge ], [ -2, %if.then3.i.if.then8.i_crit_edge ], [ -22, %if.else.i.if.then8.i_crit_edge ], [ -2, %for.inc.i.i.if.then8.i_crit_edge ]
  %arrayidx.i = getelementptr [5 x ptr], ptr @key_usage_str, i32 0, i32 %call3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.wil_find_sta_by_key_usage, ptr noundef %mac_addr, ptr noundef %9) #10
  %10 = inttoptr i32 %cid.024.i to ptr
  br label %wil_find_sta_by_key_usage.exit

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 63, i32 %cid.0.i
  br label %wil_find_sta_by_key_usage.exit

wil_find_sta_by_key_usage.exit:                   ; preds = %if.end10.i, %if.then8.i, %wiphy_priv.exit.wil_find_sta_by_key_usage.exit_crit_edge
  %retval.0.i48 = phi ptr [ %10, %if.then8.i ], [ %arrayidx11.i, %if.end10.i ], [ null, %wiphy_priv.exit.wil_find_sta_by_key_usage.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_del_key.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_del_key, %if.then)) #10
          to label %do.end13 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wil_find_sta_by_key_usage.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_ndev, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @key_usage_str, i32 0, i32 %call3
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %conv = zext i8 %key_index to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_del_key.__UNIQUE_ID_ddebug394, ptr noundef %12, ptr noundef nonnull @.str.69, ptr noundef %mac_addr, ptr noundef %14, i32 noundef %conv) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then, %wil_find_sta_by_key_usage.exit
  %arrayidx14 = getelementptr [5 x ptr], ptr @key_usage_str, i32 0, i32 %call3
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx14, align 4
  %conv15 = zext i8 %key_index to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.69, ptr noundef %mac_addr, ptr noundef %16, i32 noundef %conv15) #10
  %cmp.i49 = icmp ugt ptr %retval.0.i48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.end22.thread, label %if.end22

if.end22.thread:                                  ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, ptr noundef %mac_addr, ptr noundef %16, i32 noundef %conv15) #10
  br label %if.end25

if.end22:                                         ; preds = %do.end13
  %tobool.not.i50 = icmp eq ptr %retval.0.i48, null
  br i1 %tobool.not.i50, label %if.end22.if.end25_crit_edge, label %if.end.i53

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end.i53:                                       ; preds = %if.end22
  %17 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %call3, label %if.end.i53.if.end25_crit_edge [
    i32 0, label %for.cond.preheader.i
    i32 1, label %sw.bb2.i
  ]

if.end.i53.if.end25_crit_edge:                    ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.cond.preheader.i:                             ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i54 = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 0
  %key_set.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.i54, i32 0, i32 %conv15, i32 1
  %18 = ptrtoint ptr %key_set.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %key_set.i, align 1
  %arrayidx.1.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 1
  %key_set.1.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.1.i, i32 0, i32 %conv15, i32 1
  %19 = ptrtoint ptr %key_set.1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %key_set.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 2
  %key_set.2.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.2.i, i32 0, i32 %conv15, i32 1
  %20 = ptrtoint ptr %key_set.2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %key_set.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 3
  %key_set.3.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.3.i, i32 0, i32 %conv15, i32 1
  %21 = ptrtoint ptr %key_set.3.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %key_set.3.i, align 1
  %arrayidx.4.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 4
  %key_set.4.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.4.i, i32 0, i32 %conv15, i32 1
  %22 = ptrtoint ptr %key_set.4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %key_set.4.i, align 1
  %arrayidx.5.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 5
  %key_set.5.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.5.i, i32 0, i32 %conv15, i32 1
  %23 = ptrtoint ptr %key_set.5.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %key_set.5.i, align 1
  %arrayidx.6.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 6
  %key_set.6.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.6.i, i32 0, i32 %conv15, i32 1
  %24 = ptrtoint ptr %key_set.6.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %key_set.6.i, align 1
  %arrayidx.7.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 7
  %key_set.7.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.7.i, i32 0, i32 %conv15, i32 1
  %25 = ptrtoint ptr %key_set.7.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %key_set.7.i, align 1
  %arrayidx.8.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 8
  %key_set.8.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.8.i, i32 0, i32 %conv15, i32 1
  %26 = ptrtoint ptr %key_set.8.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %key_set.8.i, align 1
  %arrayidx.9.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 9
  %key_set.9.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.9.i, i32 0, i32 %conv15, i32 1
  %27 = ptrtoint ptr %key_set.9.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %key_set.9.i, align 1
  %arrayidx.10.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 10
  %key_set.10.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.10.i, i32 0, i32 %conv15, i32 1
  %28 = ptrtoint ptr %key_set.10.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %key_set.10.i, align 1
  %arrayidx.11.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 11
  %key_set.11.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.11.i, i32 0, i32 %conv15, i32 1
  %29 = ptrtoint ptr %key_set.11.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %key_set.11.i, align 1
  %arrayidx.12.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 12
  %key_set.12.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.12.i, i32 0, i32 %conv15, i32 1
  %30 = ptrtoint ptr %key_set.12.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %key_set.12.i, align 1
  %arrayidx.13.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 13
  %key_set.13.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.13.i, i32 0, i32 %conv15, i32 1
  %31 = ptrtoint ptr %key_set.13.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %key_set.13.i, align 1
  %arrayidx.14.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 14
  %key_set.14.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.14.i, i32 0, i32 %conv15, i32 1
  %32 = ptrtoint ptr %key_set.14.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %key_set.14.i, align 1
  %arrayidx.15.i = getelementptr %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 10, i32 15
  br label %cleanup.sink.split.i

sw.bb2.i:                                         ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #12
  %group_crypto_rx.i = getelementptr inbounds %struct.wil_sta_info, ptr %retval.0.i48, i32 0, i32 11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb2.i, %for.cond.preheader.i
  %arrayidx.15.i.pn = phi ptr [ %arrayidx.15.i, %for.cond.preheader.i ], [ %group_crypto_rx.i, %sw.bb2.i ]
  %key_set.15.sink.i = getelementptr [4 x %struct.wil_tid_crypto_rx_single], ptr %arrayidx.15.i.pn, i32 0, i32 %conv15, i32 1
  %33 = ptrtoint ptr %key_set.15.sink.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %key_set.15.sink.i, align 1
  br label %if.end25

if.end25:                                         ; preds = %cleanup.sink.split.i, %if.end.i53.if.end25_crit_edge, %if.end22.if.end25_crit_edge, %if.end22.thread
  %call26 = tail call i32 @wmi_del_cipher_key(ptr noundef %add.ptr.i, i8 noundef zeroext %key_index, ptr noundef %mac_addr, i32 noundef %call3) #10
  ret i32 %call26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_set_default_key(ptr noundef %wiphy, ptr nocapture noundef readnone %ndev, i8 noundef zeroext %key_index, i1 noundef zeroext %unicast, i1 noundef zeroext %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_set_default_key.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_set_default_key, %if.then)) #10
          to label %do.end9 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_set_default_key.__UNIQUE_ID_ddebug395, ptr noundef %1, ptr noundef nonnull @.str.72) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %wiphy_priv.exit
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.72) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_start_ap(ptr noundef %wiphy, ptr noundef %ndev, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %beacon = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 1
  %crypto1 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_start_ap, %if.then)) #10
          to label %do.end8 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug410, ptr noundef %3, ptr noundef nonnull @.str.74) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wiphy_priv.exit
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.74) #10
  %edmg = getelementptr inbounds %struct.cfg80211_chan_def, ptr %info, i32 0, i32 4
  %bw_config = getelementptr inbounds %struct.cfg80211_chan_def, ptr %info, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %bw_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bw_config, align 4
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %edmg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %edmg, align 4
  %8 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.231)
  switch i8 %conv, label %if.else9.i [
    i8 0, label %do.end8.if.end17_crit_edge
    i8 5, label %if.then2.i
  ]

do.end8.if.end17_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then2.i:                                       ; preds = %do.end8
  %9 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.232)
  switch i8 %7, label %sw.default.i [
    i8 3, label %if.then2.i.if.end17_crit_edge
    i8 6, label %sw.bb4.i
    i8 12, label %sw.bb6.i
  ]

if.then2.i.if.end17_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

sw.bb4.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

sw.bb6.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

sw.default.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv3.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.wil_get_wmi_edmg_channel, i32 noundef %conv3.i) #10
  br label %cleanup

if.else9.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = and i32 %5, 255
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.wil_get_wmi_edmg_channel, i32 noundef %conv.i) #10
  br label %cleanup

if.end17:                                         ; preds = %sw.bb6.i, %sw.bb4.i, %if.then2.i.if.end17_crit_edge, %do.end8.if.end17_crit_edge
  %wmi_edmg_channel.0.ph = phi i8 [ 6, %if.then2.i.if.end17_crit_edge ], [ %conv, %do.end8.if.end17_crit_edge ], [ 7, %sw.bb4.i ], [ 8, %sw.bb6.i ]
  %tobool18.not = icmp eq ptr %1, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %hidden_ssid21 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 6
  %10 = ptrtoint ptr %hidden_ssid21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hidden_ssid21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.73, i32 noundef %11) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end20
  %switch.cast = trunc i32 %11 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 -126976, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_start_ap, %if.then39)) #10
          to label %do.end48 [label %if.then39], !srcloc !556

if.then39:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev40 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %main_ndev40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %main_ndev40, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hw_value, align 2
  %conv41 = zext i16 %16 to i32
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %center_freq, align 4
  %privacy = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 8
  %19 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %privacy, align 4, !range !557
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool42.not = icmp eq i8 %20, 0
  %cond = select i1 %tobool42.not, ptr @.str.79, ptr @.str.78
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug411, ptr noundef %14, ptr noundef nonnull @.str.77, i32 noundef %conv41, i32 noundef %18, ptr noundef nonnull %cond) #10
  br label %do.end48

do.end48:                                         ; preds = %if.then39, %switch.lookup
  %hw_value49 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %hw_value49 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_value49, align 2
  %conv50 = zext i16 %22 to i32
  %center_freq51 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %center_freq51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %center_freq51, align 4
  %privacy52 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 8
  %25 = ptrtoint ptr %privacy52 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %privacy52, align 4, !range !557
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool53.not = icmp eq i8 %26, 0
  %cond55 = select i1 %tobool53.not, ptr @.str.79, ptr @.str.78
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.77, i32 noundef %conv50, i32 noundef %24, ptr noundef nonnull %cond55) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_start_ap, %if.then72)) #10
          to label %do.end81 [label %if.then72], !srcloc !556

if.then72:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev73 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %main_ndev73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %main_ndev73, align 4
  %29 = ptrtoint ptr %privacy52 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %privacy52, align 4, !range !557
  %31 = zext i8 %30 to i32
  %auth_type = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 9
  %32 = ptrtoint ptr %auth_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %auth_type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug412, ptr noundef %28, ptr noundef nonnull @.str.80, i32 noundef %31, i32 noundef %33) #10
  br label %do.end81

do.end81:                                         ; preds = %if.then72, %do.end48
  %34 = ptrtoint ptr %privacy52 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %privacy52, align 4, !range !557
  %36 = zext i8 %35 to i32
  %auth_type85 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 9
  %37 = ptrtoint ptr %auth_type85 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %auth_type85, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.80, i32 noundef %36, i32 noundef %38) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_start_ap, %if.then102)) #10
          to label %do.end109 [label %if.then102], !srcloc !556

if.then102:                                       ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev103 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %main_ndev103 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %main_ndev103, align 4
  %41 = ptrtoint ptr %hidden_ssid21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hidden_ssid21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug413, ptr noundef %40, ptr noundef nonnull @.str.81, i32 noundef %42) #10
  br label %do.end109

do.end109:                                        ; preds = %if.then102, %do.end81
  %43 = ptrtoint ptr %hidden_ssid21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hidden_ssid21, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.81, i32 noundef %44) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_start_ap, %if.then127)) #10
          to label %do.end133 [label %if.then127], !srcloc !556

if.then127:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev128 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %main_ndev128 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %main_ndev128, align 4
  %beacon_interval = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 2
  %47 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %beacon_interval, align 4
  %dtim_period = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 3
  %49 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dtim_period, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug414, ptr noundef %46, ptr noundef nonnull @.str.82, i32 noundef %48, i32 noundef %50) #10
  br label %do.end133

do.end133:                                        ; preds = %if.then127, %do.end109
  %beacon_interval134 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 2
  %51 = ptrtoint ptr %beacon_interval134 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %beacon_interval134, align 4
  %dtim_period135 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 3
  %53 = ptrtoint ptr %dtim_period135 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dtim_period135, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.82, i32 noundef %52, i32 noundef %54) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_start_ap, %if.then152)) #10
          to label %do.end160 [label %if.then152], !srcloc !556

if.then152:                                       ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev153 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %main_ndev153 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %main_ndev153, align 4
  %pbss = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 15
  %57 = ptrtoint ptr %pbss to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pbss, align 4, !range !557
  %59 = zext i8 %58 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug415, ptr noundef %56, ptr noundef nonnull @.str.83, i32 noundef %59) #10
  br label %do.end160

do.end160:                                        ; preds = %if.then152, %do.end133
  %pbss161 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 15
  %60 = ptrtoint ptr %pbss161 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pbss161, align 4, !range !557
  %62 = zext i8 %61 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.83, i32 noundef %62) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_start_ap, %if.then178)) #10
          to label %do.end181 [label %if.then178], !srcloc !556

if.then178:                                       ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #12
  %ssid = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 4
  %63 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ssid, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 5
  %65 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ssid_len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %64, i32 noundef %66, i1 noundef zeroext true) #10
  br label %do.end181

do.end181:                                        ; preds = %if.then178, %do.end160
  tail call fastcc void @wil_print_bcon_data(ptr noundef %beacon)
  tail call fastcc void @wil_print_crypto(ptr noundef %priv.i, ptr noundef %crypto1)
  %ssid182 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 4
  %67 = ptrtoint ptr %ssid182 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ssid182, align 4
  %ssid_len183 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %info, i32 0, i32 5
  %69 = ptrtoint ptr %ssid_len183 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ssid_len183, align 4
  %71 = ptrtoint ptr %privacy52 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %privacy52, align 4, !range !557
  %73 = zext i8 %72 to i32
  %74 = ptrtoint ptr %beacon_interval134 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %beacon_interval134, align 4
  %76 = ptrtoint ptr %hw_value49 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %hw_value49, align 2
  %conv189 = trunc i16 %77 to i8
  %78 = ptrtoint ptr %pbss161 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %pbss161, align 4, !range !557
  %80 = zext i8 %79 to i32
  %call193 = tail call fastcc i32 @_wil_cfg80211_start_ap(ptr noundef nonnull %wiphy, ptr noundef %ndev, ptr noundef %68, i32 noundef %70, i32 noundef %73, i32 noundef %75, i8 noundef zeroext %conv189, i8 noundef zeroext %wmi_edmg_channel.0.ph, ptr noundef %beacon, i8 noundef zeroext %switch.masked, i32 noundef %80)
  br label %cleanup

cleanup:                                          ; preds = %do.end181, %sw.default, %if.then19, %if.else9.i, %sw.default.i
  %retval.0 = phi i32 [ -95, %sw.default ], [ %call193, %do.end181 ], [ -22, %if.then19 ], [ -22, %sw.default.i ], [ -22, %if.else9.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_change_beacon(ptr noundef %wiphy, ptr noundef %ndev, ptr nocapture noundef readonly %bcon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_change_beacon.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_change_beacon, %if.then)) #10
          to label %do.end8 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %mid = getelementptr i8, ptr %ndev, i32 3276
  %4 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mid, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_change_beacon.__UNIQUE_ID_ddebug408, ptr noundef %3, ptr noundef nonnull @.str.101, i32 noundef %conv) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wiphy_priv.exit
  %mid9 = getelementptr i8, ptr %ndev, i32 3276
  %6 = ptrtoint ptr %mid9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mid9, align 4
  %conv10 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.101, i32 noundef %conv10) #10
  tail call fastcc void @wil_print_bcon_data(ptr noundef %bcon)
  %tail = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 1
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %do.end8.if.end18_crit_edge, label %land.lhs.true

do.end8.if.end18_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true:                                    ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %tail_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %bcon, i32 0, i32 11
  %10 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail_len, align 4
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 48, ptr noundef nonnull %9, i32 noundef %11, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %tobool16.not = icmp ne ptr %call.i.i, null
  %spec.select = zext i1 %tobool16.not to i32
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %do.end8.if.end18_crit_edge
  %privacy.0 = phi i32 [ 0, %do.end8.if.end18_crit_edge ], [ %spec.select, %land.lhs.true ]
  %ssid = getelementptr i8, ptr %ndev, i32 3328
  %ssid19 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 13
  %ssid_len = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ssid_len, align 2
  %conv21 = zext i8 %13 to i32
  %14 = call ptr @memcpy(ptr %ssid, ptr %ssid19, i32 %conv21)
  %15 = load i8, ptr %ssid_len, align 2
  %conv23 = zext i8 %15 to i32
  %ssid_len24 = getelementptr i8, ptr %ndev, i32 3360
  %16 = ptrtoint ptr %ssid_len24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv23, ptr %ssid_len24, align 8
  %privacy25 = getelementptr i8, ptr %ndev, i32 3284
  %17 = ptrtoint ptr %privacy25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %privacy25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %privacy.0)
  %cmp.not = icmp eq i32 %18, %privacy.0
  br i1 %cmp.not, label %if.else, label %do.body30

do.body30:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_change_beacon.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_change_beacon, %if.then42)) #10
          to label %do.end49 [label %if.then42], !srcloc !556

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev43 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %main_ndev43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %main_ndev43, align 4
  %21 = ptrtoint ptr %privacy25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %privacy25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_change_beacon.__UNIQUE_ID_ddebug409, ptr noundef %20, ptr noundef nonnull @.str.102, i32 noundef %22, i32 noundef %privacy.0) #10
  br label %do.end49

do.end49:                                         ; preds = %if.then42, %do.body30
  %23 = ptrtoint ptr %privacy25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %privacy25, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.102, i32 noundef %24, i32 noundef %privacy.0) #10
  %25 = ptrtoint ptr %ssid_len24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ssid_len24, align 8
  %beacon_interval = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 32
  %27 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %beacon_interval, align 4
  %channel = getelementptr i8, ptr %ndev, i32 3288
  %29 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %channel, align 8
  %conv56 = trunc i16 %30 to i8
  %wmi_edmg_channel = getelementptr i8, ptr %ndev, i32 3290
  %31 = ptrtoint ptr %wmi_edmg_channel to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wmi_edmg_channel, align 2
  %hidden_ssid = getelementptr i8, ptr %ndev, i32 3291
  %33 = ptrtoint ptr %hidden_ssid to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hidden_ssid, align 1
  %pbss = getelementptr i8, ptr %ndev, i32 3296
  %35 = ptrtoint ptr %pbss to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pbss, align 8, !range !557
  %37 = zext i8 %36 to i32
  %call59 = tail call fastcc i32 @_wil_cfg80211_start_ap(ptr noundef nonnull %wiphy, ptr noundef %ndev, ptr noundef %ssid, i32 noundef %26, i32 noundef %privacy.0, i32 noundef %28, i8 noundef zeroext %conv56, i8 noundef zeroext %32, ptr noundef %bcon, i8 noundef zeroext %34, i32 noundef %37)
  br label %if.end61

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call60 = tail call fastcc i32 @_wil_cfg80211_set_ies(ptr noundef %add.ptr.i, ptr noundef %bcon)
  br label %if.end61

if.end61:                                         ; preds = %if.else, %do.end49
  %rc.0 = phi i32 [ %call59, %do.end49 ], [ %call60, %if.else ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_stop_ap(ptr noundef %wiphy, ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_stop_ap.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_stop_ap, %if.then)) #10
          to label %do.end8 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %mid = getelementptr i8, ptr %ndev, i32 3276
  %2 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mid, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_stop_ap.__UNIQUE_ID_ddebug417, ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %conv) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wiphy_priv.exit
  %mid9 = getelementptr i8, ptr %ndev, i32 3276
  %4 = ptrtoint ptr %mid9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mid9, align 4
  %conv10 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.104, i32 noundef %conv10) #10
  tail call void @netif_carrier_off(ptr noundef %ndev) #10
  %call13 = tail call zeroext i1 @wil_has_other_active_ifaces(ptr noundef %priv.i, ptr noundef %ndev, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br i1 %call13, label %do.end8.if.end19_crit_edge, label %if.then18

do.end8.if.end19_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wil6210_bus_request(ptr noundef %priv.i, i32 noundef 128000) #10
  tail call void @wil_set_recovery_state(ptr noundef %priv.i, i32 noundef 0) #10
  %status = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %status) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.end8.if.end19_crit_edge
  %mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 53, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call20 = tail call i32 @wmi_pcp_stop(ptr noundef %add.ptr.i) #10
  %status21 = getelementptr i8, ptr %ndev, i32 3280
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status21) #10
  %ssid_len = getelementptr i8, ptr %ndev, i32 3360
  %6 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ssid_len, align 8
  %proberesp = getelementptr i8, ptr %ndev, i32 3304
  %proberesp_len = getelementptr i8, ptr %ndev, i32 3316
  %7 = ptrtoint ptr %proberesp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proberesp, align 4
  tail call void @kfree(ptr noundef %8) #10
  %9 = ptrtoint ptr %proberesp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %proberesp, align 4
  %10 = ptrtoint ptr %proberesp_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %proberesp_len, align 4
  %proberesp_ies = getelementptr i8, ptr %ndev, i32 3308
  %proberesp_ies_len = getelementptr i8, ptr %ndev, i32 3320
  %11 = ptrtoint ptr %proberesp_ies to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %proberesp_ies, align 4
  tail call void @kfree(ptr noundef %12) #10
  %13 = ptrtoint ptr %proberesp_ies to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %proberesp_ies, align 4
  %14 = ptrtoint ptr %proberesp_ies_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %proberesp_ies_len, align 4
  %assocresp_ies = getelementptr i8, ptr %ndev, i32 3312
  %assocresp_ies_len = getelementptr i8, ptr %ndev, i32 3324
  %15 = ptrtoint ptr %assocresp_ies to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %assocresp_ies, align 4
  tail call void @kfree(ptr noundef %16) #10
  %17 = ptrtoint ptr %assocresp_ies to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %assocresp_ies, align 4
  %18 = ptrtoint ptr %assocresp_ies_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %assocresp_ies_len, align 4
  %gtk = getelementptr i8, ptr %ndev, i32 3365
  %19 = call ptr @memset(ptr %gtk, i32 0, i32 32)
  %gtk_len = getelementptr i8, ptr %ndev, i32 3400
  %20 = ptrtoint ptr %gtk_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %gtk_len, align 8
  br i1 %call13, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 @__wil_down(ptr noundef %priv.i) #10
  br label %if.end27

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wil_bcast_fini(ptr noundef %add.ptr.i) #10
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then25
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_add_station(ptr noundef %wiphy, ptr noundef %dev, ptr noundef %mac, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_add_station.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_add_station, %if.then)) #10
          to label %do.end9 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %aid = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 6
  %2 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aid, align 4
  %conv = zext i16 %3 to i32
  %mid = getelementptr i8, ptr %dev, i32 3276
  %4 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mid, align 4
  %conv7 = zext i8 %5 to i32
  %sta_flags_mask = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %sta_flags_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sta_flags_mask, align 4
  %sta_flags_set = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 3
  %8 = ptrtoint ptr %sta_flags_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sta_flags_set, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_add_station.__UNIQUE_ID_ddebug418, ptr noundef %1, ptr noundef nonnull @.str.106, ptr noundef %mac, i32 noundef %conv, i32 noundef %conv7, i32 noundef %7, i32 noundef %9) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %wiphy_priv.exit
  %aid10 = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 6
  %10 = ptrtoint ptr %aid10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %aid10, align 4
  %conv11 = zext i16 %11 to i32
  %mid12 = getelementptr i8, ptr %dev, i32 3276
  %12 = ptrtoint ptr %mid12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mid12, align 4
  %conv13 = zext i8 %13 to i32
  %sta_flags_mask14 = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 2
  %14 = ptrtoint ptr %sta_flags_mask14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sta_flags_mask14, align 4
  %sta_flags_set15 = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 3
  %16 = ptrtoint ptr %sta_flags_set15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sta_flags_set15, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.106, ptr noundef %mac, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %15, i32 noundef %17) #10
  %18 = load i8, ptr @disable_ap_sme, align 1, !range !557
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool18.not = icmp eq i8 %18, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.105) #10
  br label %cleanup

if.end20:                                         ; preds = %do.end9
  %19 = ptrtoint ptr %aid10 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %aid10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %20)
  %cmp = icmp ugt i16 %20, 254
  br i1 %cmp, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.105) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %conv27 = trunc i16 %20 to i8
  %call28 = tail call i32 @wmi_new_sta(ptr noundef %add.ptr.i, ptr noundef %mac, i8 noundef zeroext %conv27) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then19
  %retval.0 = phi i32 [ -22, %if.then24 ], [ %call28, %if.end25 ], [ -95, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_del_station(ptr noundef %wiphy, ptr noundef %dev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_del_station.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_del_station, %if.then)) #10
          to label %do.end9 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %reason_code = getelementptr inbounds %struct.station_del_parameters, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %reason_code to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reason_code, align 2
  %conv = zext i16 %5 to i32
  %mid = getelementptr i8, ptr %dev, i32 3276
  %6 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mid, align 4
  %conv7 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_del_station.__UNIQUE_ID_ddebug419, ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef %3, i32 noundef %conv, i32 noundef %conv7) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %wiphy_priv.exit
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %reason_code11 = getelementptr inbounds %struct.station_del_parameters, ptr %params, i32 0, i32 2
  %10 = ptrtoint ptr %reason_code11 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %reason_code11, align 2
  %conv12 = zext i16 %11 to i32
  %mid13 = getelementptr i8, ptr %dev, i32 3276
  %12 = ptrtoint ptr %mid13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mid13, align 4
  %conv14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.110, ptr noundef %9, i32 noundef %conv12, i32 noundef %conv14) #10
  %mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 53, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %params, align 4
  %16 = ptrtoint ptr %reason_code11 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reason_code11, align 2
  tail call void @wil6210_disconnect(ptr noundef %add.ptr.i, ptr noundef %15, i16 noundef zeroext %17) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_change_station(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %mac, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_change_station.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_change_station, %if.then)) #10
          to label %do.end8 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %sta_flags_mask = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %sta_flags_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sta_flags_mask, align 4
  %sta_flags_set = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %sta_flags_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sta_flags_set, align 4
  %mid = getelementptr i8, ptr %dev, i32 3276
  %6 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mid, align 4
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_change_station.__UNIQUE_ID_ddebug420, ptr noundef %1, ptr noundef nonnull @.str.112, ptr noundef %mac, i32 noundef %3, i32 noundef %5, i32 noundef %conv) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wiphy_priv.exit
  %sta_flags_mask9 = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %sta_flags_mask9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sta_flags_mask9, align 4
  %sta_flags_set10 = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 3
  %10 = ptrtoint ptr %sta_flags_set10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sta_flags_set10, align 4
  %mid11 = getelementptr i8, ptr %dev, i32 3276
  %12 = ptrtoint ptr %mid11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mid11, align 4
  %conv12 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.112, ptr noundef %mac, i32 noundef %9, i32 noundef %11, i32 noundef %conv12) #10
  %14 = load i8, ptr @disable_ap_sme, align 1, !range !557
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %do.body19, label %if.end40

do.body19:                                        ; preds = %do.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_change_station.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_change_station, %if.then31)) #10
          to label %do.end37 [label %if.then31], !srcloc !556

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev32 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %main_ndev32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_ndev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_change_station.__UNIQUE_ID_ddebug421, ptr noundef %16, ptr noundef nonnull @.str.113) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body19
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.113) #10
  br label %cleanup

if.end40:                                         ; preds = %do.end8
  %17 = ptrtoint ptr %sta_flags_mask9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sta_flags_mask9, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %19 = ptrtoint ptr %mid11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mid11, align 4
  %call46 = tail call i32 @wil_find_cid(ptr noundef %priv.i, i8 noundef zeroext %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp = icmp slt i32 %call46, 0
  br i1 %cmp, label %if.then48, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end44
  %arrayidx = getelementptr %struct.wiphy, ptr %wiphy, i32 5, i32 56, i32 12, i32 15
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 2
  %conv53 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53)
  %cmp54 = icmp eq i32 %call46, %conv53
  br i1 %cmp54, label %for.body.preheader.for.end_crit_edge, label %for.inc

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.111) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 1
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.1, align 2
  %conv53.1 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.1)
  %cmp54.1 = icmp eq i32 %call46, %conv53.1
  br i1 %cmp54.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.wiphy, ptr %wiphy, i32 5, i32 56, i32 12, i32 16
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2, align 2
  %conv53.2 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.2)
  %cmp54.2 = icmp eq i32 %call46, %conv53.2
  br i1 %cmp54.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 3
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.3, align 2
  %conv53.3 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.3)
  %cmp54.3 = icmp eq i32 %call46, %conv53.3
  br i1 %cmp54.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.wiphy, ptr %wiphy, i32 5, i32 56, i32 12, i32 17
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.4, align 2
  %conv53.4 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.4)
  %cmp54.4 = icmp eq i32 %call46, %conv53.4
  br i1 %cmp54.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.5, align 2
  %conv53.5 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.5)
  %cmp54.5 = icmp eq i32 %call46, %conv53.5
  br i1 %cmp54.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.wiphy, ptr %wiphy, i32 5, i32 56, i32 12, i32 18
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.6, align 2
  %conv53.6 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.6)
  %cmp54.6 = icmp eq i32 %call46, %conv53.6
  br i1 %cmp54.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 7
  %35 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.7, align 2
  %conv53.7 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.7)
  %cmp54.7 = icmp eq i32 %call46, %conv53.7
  br i1 %cmp54.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.wiphy, ptr %wiphy, i32 5, i32 56, i32 12, i32 19
  %37 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.8, align 2
  %conv53.8 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.8)
  %cmp54.8 = icmp eq i32 %call46, %conv53.8
  br i1 %cmp54.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 9
  %39 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.9, align 2
  %conv53.9 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.9)
  %cmp54.9 = icmp eq i32 %call46, %conv53.9
  br i1 %cmp54.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.wiphy, ptr %wiphy, i32 5, i32 56, i32 12, i32 20
  %41 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.10, align 2
  %conv53.10 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.10)
  %cmp54.10 = icmp eq i32 %call46, %conv53.10
  br i1 %cmp54.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 11
  %43 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.11, align 2
  %conv53.11 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.11)
  %cmp54.11 = icmp eq i32 %call46, %conv53.11
  br i1 %cmp54.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.wiphy, ptr %wiphy, i32 5, i32 56, i32 12, i32 21
  %45 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.12, align 2
  %conv53.12 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.12)
  %cmp54.12 = icmp eq i32 %call46, %conv53.12
  br i1 %cmp54.12, label %for.inc.11.for.end_crit_edge, label %for.inc.12

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 13
  %47 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.13, align 2
  %conv53.13 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.13)
  %cmp54.13 = icmp eq i32 %call46, %conv53.13
  br i1 %cmp54.13, label %for.inc.12.for.end_crit_edge, label %for.inc.13

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.wiphy, ptr %wiphy, i32 5, i32 56, i32 12, i32 22
  %49 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.14, align 2
  %conv53.14 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.14)
  %cmp54.14 = icmp eq i32 %call46, %conv53.14
  br i1 %cmp54.14, label %for.inc.13.for.end_crit_edge, label %for.inc.14

for.inc.13.for.end_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx.15 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 15
  %51 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.15, align 2
  %conv53.15 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.15)
  %cmp54.15 = icmp eq i32 %call46, %conv53.15
  br i1 %cmp54.15, label %for.inc.14.for.end_crit_edge, label %for.inc.15

for.inc.14.for.end_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.15:                                       ; preds = %for.inc.14
  %arrayidx.16 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 16
  %53 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.16, align 2
  %conv53.16 = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.16)
  %cmp54.16 = icmp eq i32 %call46, %conv53.16
  br i1 %cmp54.16, label %for.inc.15.for.end_crit_edge, label %for.inc.16

for.inc.15.for.end_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.16:                                       ; preds = %for.inc.15
  %arrayidx.17 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 17
  %55 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.17, align 2
  %conv53.17 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.17)
  %cmp54.17 = icmp eq i32 %call46, %conv53.17
  br i1 %cmp54.17, label %for.inc.16.for.end_crit_edge, label %for.inc.17

for.inc.16.for.end_crit_edge:                     ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.17:                                       ; preds = %for.inc.16
  %arrayidx.18 = getelementptr %struct.wiphy, ptr %wiphy, i32 5, i32 56, i32 12, i32 23
  %57 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.18, align 2
  %conv53.18 = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.18)
  %cmp54.18 = icmp eq i32 %call46, %conv53.18
  br i1 %cmp54.18, label %for.inc.17.for.end_crit_edge, label %for.inc.18

for.inc.17.for.end_crit_edge:                     ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.18:                                       ; preds = %for.inc.17
  %arrayidx.19 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 19
  %59 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.19, align 2
  %conv53.19 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.19)
  %cmp54.19 = icmp eq i32 %call46, %conv53.19
  br i1 %cmp54.19, label %for.inc.18.for.end_crit_edge, label %for.inc.19

for.inc.18.for.end_crit_edge:                     ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.19:                                       ; preds = %for.inc.18
  %arrayidx.20 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 20
  %61 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.20, align 2
  %conv53.20 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.20)
  %cmp54.20 = icmp eq i32 %call46, %conv53.20
  br i1 %cmp54.20, label %for.inc.19.for.end_crit_edge, label %for.inc.20

for.inc.19.for.end_crit_edge:                     ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.20:                                       ; preds = %for.inc.19
  %arrayidx.21 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 21
  %63 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.21, align 2
  %conv53.21 = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.21)
  %cmp54.21 = icmp eq i32 %call46, %conv53.21
  br i1 %cmp54.21, label %for.inc.20.for.end_crit_edge, label %for.inc.21

for.inc.20.for.end_crit_edge:                     ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.21:                                       ; preds = %for.inc.20
  %arrayidx.22 = getelementptr %struct.wiphy, ptr %wiphy, i32 5, i32 56, i32 12, i32 24
  %65 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.22, align 2
  %conv53.22 = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.22)
  %cmp54.22 = icmp eq i32 %call46, %conv53.22
  br i1 %cmp54.22, label %for.inc.21.for.end_crit_edge, label %for.inc.22

for.inc.21.for.end_crit_edge:                     ; preds = %for.inc.21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.22:                                       ; preds = %for.inc.21
  %arrayidx.23 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 62, i32 23
  %67 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.23, align 2
  %conv53.23 = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv53.23)
  %cmp54.23 = icmp eq i32 %call46, %conv53.23
  br i1 %cmp54.23, label %for.inc.22.for.end_crit_edge, label %for.inc.22.if.then60_crit_edge

for.inc.22.if.then60_crit_edge:                   ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60

for.inc.22.for.end_crit_edge:                     ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.22.for.end_crit_edge, %for.inc.21.for.end_crit_edge, %for.inc.20.for.end_crit_edge, %for.inc.19.for.end_crit_edge, %for.inc.18.for.end_crit_edge, %for.inc.17.for.end_crit_edge, %for.inc.16.for.end_crit_edge, %for.inc.15.for.end_crit_edge, %for.inc.14.for.end_crit_edge, %for.inc.13.for.end_crit_edge, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %i.0143.lcssa = phi i32 [ 0, %for.body.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ], [ 10, %for.inc.9.for.end_crit_edge ], [ 11, %for.inc.10.for.end_crit_edge ], [ 12, %for.inc.11.for.end_crit_edge ], [ 13, %for.inc.12.for.end_crit_edge ], [ 14, %for.inc.13.for.end_crit_edge ], [ 15, %for.inc.14.for.end_crit_edge ], [ 16, %for.inc.15.for.end_crit_edge ], [ 17, %for.inc.16.for.end_crit_edge ], [ 18, %for.inc.17.for.end_crit_edge ], [ 19, %for.inc.18.for.end_crit_edge ], [ 20, %for.inc.19.for.end_crit_edge ], [ 21, %for.inc.20.for.end_crit_edge ], [ 22, %for.inc.21.for.end_crit_edge ], [ 23, %for.inc.22.for.end_crit_edge ]
  %arrayidx57 = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 58, i32 %i.0143.lcssa
  %tobool59.not = icmp eq ptr %arrayidx57, null
  br i1 %tobool59.not, label %for.end.if.then60_crit_edge, label %if.end61

for.end.if.then60_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60

if.then60:                                        ; preds = %for.end.if.then60_crit_edge, %for.inc.22.if.then60_crit_edge
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.111) #10
  br label %cleanup

if.end61:                                         ; preds = %for.end
  %69 = ptrtoint ptr %sta_flags_set10 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sta_flags_set10, align 4
  %71 = trunc i32 %70 to i8
  %72 = lshr i8 %71, 1
  %73 = and i8 %72, 1
  %74 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx57, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_change_station.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_change_station, %if.then81)) #10
          to label %do.end90 [label %if.then81], !srcloc !556

if.then81:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev82 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %75 = ptrtoint ptr %main_ndev82 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %main_ndev82, align 4
  %77 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx57, align 4, !range !557
  %79 = zext i8 %78 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_change_station.__UNIQUE_ID_ddebug422, ptr noundef %76, ptr noundef nonnull @.str.116, i32 noundef %call46, i32 noundef %i.0143.lcssa, i32 noundef %79) #10
  br label %do.end90

do.end90:                                         ; preds = %if.then81, %if.end61
  %80 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx57, align 4, !range !557
  %82 = zext i8 %81 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.116, i32 noundef %call46, i32 noundef %i.0143.lcssa, i32 noundef %82) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %if.then60, %if.then48, %if.end40.cleanup_crit_edge, %do.end37
  %retval.0 = phi i32 [ -67, %if.then48 ], [ 0, %do.end90 ], [ -67, %if.then60 ], [ -95, %do.end37 ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_get_station(ptr noundef %wiphy, ptr noundef %ndev, ptr noundef %mac, ptr nocapture noundef %sinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %mid = getelementptr i8, ptr %ndev, i32 3276
  %0 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mid, align 4
  %call2 = tail call i32 @wil_find_cid(ptr noundef %priv.i, i8 noundef zeroext %1, ptr noundef %mac) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_get_station.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_get_station, %if.then)) #10
          to label %do.end10 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %4 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mid, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_get_station.__UNIQUE_ID_ddebug347, ptr noundef %3, ptr noundef nonnull @.str.118, ptr noundef %mac, i32 noundef %call2, i32 noundef %conv) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then, %wiphy_priv.exit
  %6 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mid, align 4
  %conv12 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.118, ptr noundef %mac, i32 noundef %call2, i32 noundef %conv12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp.i = icmp sgt i32 %call2, -1
  br i1 %cmp.i, label %wil_cid_valid.exit, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

wil_cid_valid.exit:                               ; preds = %do.end10
  %max_assoc_sta.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 47
  %8 = ptrtoint ptr %max_assoc_sta.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_assoc_sta.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call2)
  %cmp1.i = icmp ugt i32 %9, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call2)
  %cmp2.i = icmp ult i32 %call2, 20
  %spec.select.i = and i1 %cmp2.i, %cmp1.i
  br i1 %spec.select.i, label %if.end17, label %wil_cid_valid.exit.cleanup_crit_edge

wil_cid_valid.exit.cleanup_crit_edge:             ; preds = %wil_cid_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %wil_cid_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 @wil_cid_fill_sinfo(ptr noundef %add.ptr.i, i32 noundef %call2, ptr noundef %sinfo)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %wil_cid_valid.exit.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end17 ], [ -2, %wil_cid_valid.exit.cleanup_crit_edge ], [ -2, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_dump_station(ptr noundef %wiphy, ptr noundef %dev, i32 noundef %idx, ptr noundef %mac, ptr nocapture noundef %sinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %mid = getelementptr i8, ptr %dev, i32 3276
  %0 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mid, align 4
  %max_assoc_sta.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 47
  %2 = ptrtoint ptr %max_assoc_sta.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_assoc_sta.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.not.i = icmp eq i32 %3, 0
  br i1 %cmp21.not.i, label %wiphy_priv.exit.cleanup_crit_edge, label %wiphy_priv.exit.for.body.i_crit_edge

wiphy_priv.exit.for.body.i_crit_edge:             ; preds = %wiphy_priv.exit
  br label %for.body.i

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %wiphy_priv.exit.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %wiphy_priv.exit.for.body.i_crit_edge ]
  %idx.addr.022.i = phi i32 [ %idx.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %idx, %wiphy_priv.exit.for.body.i_crit_edge ]
  %status.i = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 63, i32 %i.023.i, i32 2
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i = icmp eq i32 %5, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %mid4.i = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 63, i32 %i.023.i, i32 1
  %6 = ptrtoint ptr %mid4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mid4.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %1)
  %cmp6.not.i = icmp eq i8 %7, %1
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.addr.022.i)
  %cmp10.i = icmp eq i32 %idx.addr.022.i, 0
  br i1 %cmp10.i, label %wil_find_cid_by_idx.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i = add i32 %idx.addr.022.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %idx.addr.1.i = phi i32 [ %idx.addr.022.i, %for.body.i.for.inc.i_crit_edge ], [ %idx.addr.022.i, %if.end.i.for.inc.i_crit_edge ], [ %dec.i, %if.end13.i ]
  %inc.i = add nuw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

wil_find_cid_by_idx.exit:                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.023.i)
  %cmp.i = icmp sgt i32 %i.023.i, -1
  br i1 %cmp.i, label %wil_cid_valid.exit, label %wil_find_cid_by_idx.exit.cleanup_crit_edge

wil_find_cid_by_idx.exit.cleanup_crit_edge:       ; preds = %wil_find_cid_by_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

wil_cid_valid.exit:                               ; preds = %wil_find_cid_by_idx.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %i.023.i)
  %cmp1.i37 = icmp ugt i32 %3, %i.023.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %i.023.i)
  %cmp2.i = icmp ult i32 %i.023.i, 20
  %spec.select.i = and i1 %cmp2.i, %cmp1.i37
  br i1 %spec.select.i, label %if.end, label %wil_cid_valid.exit.cleanup_crit_edge

wil_cid_valid.exit.cleanup_crit_edge:             ; preds = %wil_cid_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wil_cid_valid.exit
  %arrayidx = getelementptr %struct.wil6210_priv, ptr %priv.i, i32 0, i32 63, i32 %i.023.i
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mac, align 4
  %add.ptr.i38 = getelementptr i8, ptr %arrayidx, i32 4
  %11 = ptrtoint ptr %add.ptr.i38 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i38, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_dump_station.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_dump_station, %if.then9)) #10
          to label %do.end13 [label %if.then9], !srcloc !556

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %main_ndev, align 4
  %16 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mid, align 4
  %conv = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_dump_station.__UNIQUE_ID_ddebug348, ptr noundef %15, ptr noundef nonnull @.str.120, ptr noundef %mac, i32 noundef %i.023.i, i32 noundef %conv) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %if.end
  %18 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mid, align 4
  %conv15 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.120, ptr noundef %mac, i32 noundef %i.023.i, i32 noundef %conv15) #10
  %call18 = tail call i32 @wil_cid_fill_sinfo(ptr noundef %add.ptr.i, i32 noundef %i.023.i, ptr noundef %sinfo)
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %wil_cid_valid.exit.cleanup_crit_edge, %wil_find_cid_by_idx.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %do.end13 ], [ -2, %wil_cid_valid.exit.cleanup_crit_edge ], [ -2, %wil_find_cid_by_idx.exit.cleanup_crit_edge ], [ -2, %wiphy_priv.exit.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_change_bss(ptr noundef %wiphy, ptr nocapture noundef %dev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %ap_isolate = getelementptr inbounds %struct.bss_parameters, ptr %params, i32 0, i32 5
  %0 = ptrtoint ptr %ap_isolate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ap_isolate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %do.body3, label %wiphy_priv.exit.if.end20_crit_edge

wiphy_priv.exit.if.end20_crit_edge:               ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.body3:                                         ; preds = %wiphy_priv.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_change_bss.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_change_bss, %if.then7)) #10
          to label %do.end11 [label %if.then7], !srcloc !556

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %mid = getelementptr i8, ptr %dev, i32 3276
  %4 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mid, align 4
  %conv = zext i8 %5 to i32
  %ap_isolate8 = getelementptr i8, ptr %dev, i32 3292
  %6 = ptrtoint ptr %ap_isolate8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ap_isolate8, align 4
  %8 = ptrtoint ptr %ap_isolate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ap_isolate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_change_bss.__UNIQUE_ID_ddebug425, ptr noundef %3, ptr noundef nonnull @.str.122, i32 noundef %conv, i32 noundef %7, i32 noundef %9) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body3
  %mid12 = getelementptr i8, ptr %dev, i32 3276
  %10 = ptrtoint ptr %mid12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mid12, align 4
  %conv13 = zext i8 %11 to i32
  %ap_isolate14 = getelementptr i8, ptr %dev, i32 3292
  %12 = ptrtoint ptr %ap_isolate14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ap_isolate14, align 4
  %14 = ptrtoint ptr %ap_isolate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ap_isolate, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.122, i32 noundef %conv13, i32 noundef %13, i32 noundef %15) #10
  %16 = ptrtoint ptr %ap_isolate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ap_isolate, align 4
  %18 = ptrtoint ptr %ap_isolate14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ap_isolate14, align 4
  br label %if.end20

if.end20:                                         ; preds = %do.end11, %wiphy_priv.exit.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_set_channel(ptr noundef writeonly %wiphy, ptr nocapture noundef readonly %chandef) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %monitor_chandef = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 48
  %0 = call ptr @memcpy(ptr %monitor_chandef, ptr %chandef, i32 28)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_scan(ptr noundef %wiphy, ptr noundef %request) #0 align 64 {
entry:
  %cmd = alloca %struct.anon.168, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %wdev1 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 10
  %0 = ptrtoint ptr %wdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev1, align 8
  %p2p_wdev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p2p_wdev.i, align 4
  %cmp.i = icmp eq ptr %3, %1
  br i1 %cmp.i, label %if.then.i, label %wiphy_priv.exit.wdev_to_vif.exit_crit_edge

wiphy_priv.exit.wdev_to_vif.exit_crit_edge:       ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wdev_to_vif.exit

if.then.i:                                        ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2304
  br label %wdev_to_vif.exit

wdev_to_vif.exit:                                 ; preds = %if.then.i, %wiphy_priv.exit.wdev_to_vif.exit_crit_edge
  %retval.0.i473 = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %1, %wiphy_priv.exit.wdev_to_vif.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %cmd) #10
  %6 = getelementptr inbounds %struct.wmi_start_scan_cmd, ptr %cmd, i32 0, i32 1
  %7 = getelementptr inbounds %struct.wmi_start_scan_cmd, ptr %cmd, i32 0, i32 5
  %8 = getelementptr inbounds %struct.wmi_start_scan_cmd, ptr %cmd, i32 0, i32 6
  %9 = call ptr @memset(ptr %cmd, i32 255, i32 26)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_scan, %if.then)) #10
          to label %do.end9 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wdev_to_vif.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_ndev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iftype, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_scan.__UNIQUE_ID_ddebug359, ptr noundef %11, ptr noundef nonnull @.str.124, ptr noundef %1, i32 noundef %13) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %wdev_to_vif.exit
  %iftype10 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %iftype10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iftype10, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.124, ptr noundef %1, i32 noundef %15) #10
  %16 = ptrtoint ptr %iftype10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iftype10, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %17, label %do.end9.cleanup336_crit_edge [
    i32 2, label %do.end9.sw.epilog_crit_edge
    i32 8, label %do.end9.sw.epilog_crit_edge493
    i32 10, label %do.end9.sw.epilog_crit_edge494
    i32 3, label %do.end9.sw.epilog_crit_edge495
  ]

do.end9.sw.epilog_crit_edge495:                   ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end9.sw.epilog_crit_edge494:                   ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end9.sw.epilog_crit_edge493:                   ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end9.sw.epilog_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end9.cleanup336_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup336

sw.epilog:                                        ; preds = %do.end9.sw.epilog_crit_edge, %do.end9.sw.epilog_crit_edge493, %do.end9.sw.epilog_crit_edge494, %do.end9.sw.epilog_crit_edge495
  %status = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 4, i32 1
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %status, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool15.not = icmp eq i32 %21, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.123) #10
  br label %cleanup336

if.end17:                                         ; preds = %sw.epilog
  %mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 53, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %vif_mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 28
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #10
  %scan_request = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i473, i32 0, i32 28
  %22 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scan_request, align 4
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end17.if.then20_crit_edge

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end17
  %discovery_started = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i473, i32 0, i32 30, i32 1
  %24 = ptrtoint ptr %discovery_started to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %discovery_started, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool19.not = icmp eq i8 %25, 0
  br i1 %tobool19.not, label %if.end22, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end17.if.then20_crit_edge
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.123) #10
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #10
  br label %out

if.end22:                                         ; preds = %lor.lhs.false
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #10
  %26 = ptrtoint ptr %iftype10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iftype10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %27)
  %cmp = icmp eq i32 %27, 10
  br i1 %cmp, label %if.then26, label %if.end22.if.end52_crit_edge

if.end22.if.end52_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then26:                                        ; preds = %if.end22
  %p2p_dev_started = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %p2p_dev_started to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %p2p_dev_started, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool27.not = icmp eq i8 %29, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.123) #10
  br label %out

if.end29:                                         ; preds = %if.then26
  %call30 = tail call zeroext i1 @wil_p2p_is_social_scan(ptr noundef %request) #10
  br i1 %call30, label %if.then31, label %if.end29.if.end52_crit_edge

if.end29.if.end52_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then31:                                        ; preds = %if.end29
  %30 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %request, ptr %scan_request, align 4
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i473, i32 0, i32 3
  %31 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp34 = icmp eq i8 %32, 0
  br i1 %cmp34, label %if.then36, label %if.then31.if.end37_crit_edge

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then36:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %radio_wdev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %radio_wdev to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %1, ptr %radio_wdev, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then31.if.end37_crit_edge
  %call38 = tail call i32 @wil_p2p_search(ptr noundef %retval.0.i473, ptr noundef %request) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.out_crit_edge, label %if.then40

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then40:                                        ; preds = %if.end37
  %34 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp43 = icmp eq i8 %35, 0
  br i1 %cmp43, label %if.then45, label %if.then40.if.end48_crit_edge

if.then40.if.end48_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev46 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %main_ndev46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %main_ndev46, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 82
  %38 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ieee80211_ptr, align 16
  %radio_wdev47 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %radio_wdev47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %radio_wdev47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.then40.if.end48_crit_edge
  %41 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %scan_request, align 4
  br label %out

if.end52:                                         ; preds = %if.end29.if.end52_crit_edge, %if.end22.if.end52_crit_edge
  %call53 = tail call zeroext i8 @wil_p2p_stop_discovery(ptr noundef %retval.0.i473) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_scan, %if.then68)) #10
          to label %do.end74 [label %if.then68], !srcloc !556

if.then68:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev69 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %main_ndev69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %main_ndev69, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_scan.__UNIQUE_ID_ddebug360, ptr noundef %43, ptr noundef nonnull @.str.128, ptr noundef %request) #10
  br label %do.end74

do.end74:                                         ; preds = %if.then68, %if.end52
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.128, ptr noundef %request) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_scan, %if.then91)) #10
          to label %do.end97 [label %if.then91], !srcloc !556

if.then91:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev92 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %main_ndev92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %main_ndev92, align 4
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 1
  %46 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_ssids, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_scan.__UNIQUE_ID_ddebug361, ptr noundef %45, ptr noundef nonnull @.str.129, i32 noundef %47) #10
  br label %do.end97

do.end97:                                         ; preds = %if.then91, %do.end74
  %n_ssids98 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 1
  %48 = ptrtoint ptr %n_ssids98 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_ssids98, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.129, i32 noundef %49) #10
  %50 = ptrtoint ptr %n_ssids98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n_ssids98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp102486.not = icmp eq i32 %51, 0
  br i1 %cmp102486.not, label %do.end97.if.else_crit_edge, label %do.body106.lr.ph

do.end97.if.else_crit_edge:                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.body106.lr.ph:                                 ; preds = %do.end97
  %main_ndev119 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  br label %do.body106

do.body106:                                       ; preds = %for.inc.do.body106_crit_edge, %do.body106.lr.ph
  %i.0487 = phi i32 [ 0, %do.body106.lr.ph ], [ %inc, %for.inc.do.body106_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_scan, %if.then118)) #10
          to label %do.end124 [label %if.then118], !srcloc !556

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %main_ndev119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %main_ndev119, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_scan.__UNIQUE_ID_ddebug362, ptr noundef %53, ptr noundef nonnull @.str.130, i32 noundef %i.0487) #10
  br label %do.end124

do.end124:                                        ; preds = %if.then118, %do.body106
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.130, i32 noundef %i.0487) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_scan, %if.then139)) #10
          to label %for.inc [label %if.then139], !srcloc !556

if.then139:                                       ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %request, align 8
  %arrayidx = getelementptr %struct.cfg80211_ssid, ptr %55, i32 %i.0487
  %ssid_len = getelementptr %struct.cfg80211_ssid, ptr %55, i32 %i.0487, i32 1
  %56 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ssid_len, align 1
  %conv143 = zext i8 %57 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %arrayidx, i32 noundef %conv143, i1 noundef zeroext true) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then139, %do.end124
  %inc = add nuw i32 %i.0487, 1
  %58 = ptrtoint ptr %n_ssids98 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_ssids98, align 4
  %cmp102 = icmp ult i32 %inc, %59
  br i1 %cmp102, label %for.inc.do.body106_crit_edge, label %for.end

for.inc.do.body106_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body106

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %phi.cmp = icmp eq i32 %59, 0
  br i1 %phi.cmp, label %for.end.if.else_crit_edge, label %if.then149

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then149:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %request, align 8
  %ssid_len152 = getelementptr inbounds %struct.cfg80211_ssid, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %ssid_len152 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ssid_len152, align 1
  %call157 = tail call i32 @wmi_set_ssid(ptr noundef %retval.0.i473, i8 noundef zeroext %63, ptr noundef %61) #10
  br label %if.end159

if.else:                                          ; preds = %for.end.if.else_crit_edge, %do.end97.if.else_crit_edge
  %call158 = tail call i32 @wmi_set_ssid(ptr noundef %retval.0.i473, i8 noundef zeroext 0, ptr noundef null) #10
  br label %if.end159

if.end159:                                        ; preds = %if.else, %if.then149
  %rc.0 = phi i32 [ %call157, %if.then149 ], [ %call158, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool160.not = icmp eq i32 %rc.0, 0
  br i1 %tobool160.not, label %if.end162, label %if.then161

if.then161:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.123, i32 noundef %rc.0) #10
  br label %out

if.end162:                                        ; preds = %if.end159
  %64 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %request, ptr %scan_request, align 4
  %scan_timer = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i473, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %65, 1000
  %call165 = tail call i32 @mod_timer(ptr noundef %scan_timer, i32 noundef %add) #10
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 2
  %66 = call ptr @memset(ptr %cmd, i32 0, i32 26)
  %67 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_channels, align 8
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp172489.not = icmp eq i32 %69, 0
  br i1 %cmp172489.not, label %if.end162.for.end220_crit_edge, label %for.body174.lr.ph

if.end162.for.end220_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end220

for.body174.lr.ph:                                ; preds = %if.end162
  %main_ndev204 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  br label %for.body174

for.body174:                                      ; preds = %cleanup.for.body174_crit_edge, %for.body174.lr.ph
  %i.1490 = phi i32 [ 0, %for.body174.lr.ph ], [ %inc219, %cleanup.for.body174_crit_edge ]
  %arrayidx175 = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 22, i32 %i.1490
  %70 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx175, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %hw_value, align 2
  %conv176 = zext i16 %73 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp177 = icmp eq i16 %73, 0
  br i1 %cmp177, label %if.then179, label %if.end182

if.then179:                                       ; preds = %for.body174
  call void @__sanitizer_cov_trace_pc() #12
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %71, i32 0, i32 1
  %74 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.123, i32 noundef %75) #10
  br label %cleanup

if.end182:                                        ; preds = %for.body174
  %76 = trunc i16 %73 to i8
  %conv183 = add i8 %76, -1
  %77 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %8, align 1
  %inc187 = add i8 %78, 1
  store i8 %inc187, ptr %8, align 1
  %idxprom = zext i8 %78 to i32
  %arrayidx188 = getelementptr %struct.wmi_start_scan_cmd, ptr %cmd, i32 0, i32 7, i32 %idxprom
  %79 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv183, ptr %arrayidx188, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_scan, %if.then203)) #10
          to label %do.end212 [label %if.then203], !srcloc !556

if.then203:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %main_ndev204 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %main_ndev204, align 4
  %82 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx175, align 4
  %center_freq207 = getelementptr inbounds %struct.ieee80211_channel, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %center_freq207 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %center_freq207, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_scan.__UNIQUE_ID_ddebug366, ptr noundef %81, ptr noundef nonnull @.str.133, i32 noundef %conv176, i32 noundef %85) #10
  br label %do.end212

do.end212:                                        ; preds = %if.then203, %if.end182
  %86 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx175, align 4
  %center_freq215 = getelementptr inbounds %struct.ieee80211_channel, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %center_freq215 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %center_freq215, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.133, i32 noundef %conv176, i32 noundef %89) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end212, %if.then179
  %inc219 = add nuw nsw i32 %i.1490, 1
  %exitcond.not = icmp eq i32 %inc219, %69
  br i1 %exitcond.not, label %cleanup.for.end220_crit_edge, label %cleanup.for.body174_crit_edge

cleanup.for.body174_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body174

cleanup.for.end220_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end220

for.end220:                                       ; preds = %cleanup.for.end220_crit_edge, %if.end162.for.end220_crit_edge
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 5
  %90 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool221.not = icmp eq i32 %91, 0
  br i1 %tobool221.not, label %do.body243, label %do.body223

do.body223:                                       ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_scan, %if.then235)) #10
          to label %if.end264 [label %if.then235], !srcloc !556

if.then235:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #12
  %ie = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 4
  %92 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ie, align 8
  %94 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ie_len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.134, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %93, i32 noundef %95, i1 noundef zeroext true) #10
  br label %if.end264

do.body243:                                       ; preds = %for.end220
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_scan, %if.then255)) #10
          to label %do.end261 [label %if.then255], !srcloc !556

if.then255:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev256 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %96 = ptrtoint ptr %main_ndev256 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %main_ndev256, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_scan.__UNIQUE_ID_ddebug368, ptr noundef %97, ptr noundef nonnull @.str.135) #10
  br label %do.end261

do.end261:                                        ; preds = %if.then255, %do.body243
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.135) #10
  br label %if.end264

if.end264:                                        ; preds = %do.end261, %if.then235, %do.body223
  %98 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ie_len, align 4
  %conv266 = trunc i32 %99 to i16
  %ie267 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 4
  %100 = ptrtoint ptr %ie267 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ie267, align 8
  %call268 = tail call i32 @wmi_set_ie(ptr noundef %retval.0.i473, i8 noundef zeroext 1, i16 noundef zeroext %conv266, ptr noundef %101) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %if.end271, label %if.end264.if.then321_crit_edge

if.end264.if.then321_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then321

if.end271:                                        ; preds = %if.end264
  %discovery_mode = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 3, i32 0, i32 0, i32 4
  %102 = ptrtoint ptr %discovery_mode to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %discovery_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool273.not = icmp eq i8 %103, 0
  br i1 %tobool273.not, label %if.end271.if.end305_crit_edge, label %land.lhs.true

if.end271.if.end305_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end305

land.lhs.true:                                    ; preds = %if.end271
  %104 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp277 = icmp eq i8 %105, 0
  br i1 %cmp277, label %if.then279, label %land.lhs.true.if.end305_crit_edge

land.lhs.true.if.end305_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end305

if.then279:                                       ; preds = %land.lhs.true
  %106 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %6, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_scan, %if.then296)) #10
          to label %do.end302 [label %if.then296], !srcloc !556

if.then296:                                       ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev297 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %107 = ptrtoint ptr %main_ndev297 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %main_ndev297, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_scan.__UNIQUE_ID_ddebug369, ptr noundef %108, ptr noundef nonnull @.str.136) #10
  br label %do.end302

do.end302:                                        ; preds = %if.then296, %if.then279
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.136) #10
  br label %if.end305

if.end305:                                        ; preds = %do.end302, %land.lhs.true.if.end305_crit_edge, %if.end271.if.end305_crit_edge
  %mid306 = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i473, i32 0, i32 3
  %109 = ptrtoint ptr %mid306 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %mid306, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp308 = icmp eq i8 %110, 0
  br i1 %cmp308, label %if.then310, label %if.end305.out_restore_crit_edge

if.end305.out_restore_crit_edge:                  ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_restore

if.then310:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  %radio_wdev311 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %111 = ptrtoint ptr %radio_wdev311 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %1, ptr %radio_wdev311, align 8
  br label %out_restore

out_restore:                                      ; preds = %if.then310, %if.end305.out_restore_crit_edge
  %112 = ptrtoint ptr %mid306 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %mid306, align 4
  %114 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %8, align 1
  %conv316 = zext i8 %115 to i16
  %mul = shl nuw nsw i16 %conv316, 1
  %add317 = add nuw nsw i16 %mul, 18
  %call319 = call i32 @wmi_send(ptr noundef %priv.i, i16 noundef zeroext 7, i8 noundef zeroext %113, ptr noundef nonnull %cmd, i16 noundef zeroext %add317) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %out_restore.out_crit_edge, label %out_restore.if.then321_crit_edge

out_restore.if.then321_crit_edge:                 ; preds = %out_restore
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then321

out_restore.out_crit_edge:                        ; preds = %out_restore
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then321:                                       ; preds = %out_restore.if.then321_crit_edge, %if.end264.if.then321_crit_edge
  %rc.1485 = phi i32 [ %call319, %out_restore.if.then321_crit_edge ], [ %call268, %if.end264.if.then321_crit_edge ]
  %call323 = call i32 @del_timer_sync(ptr noundef %scan_timer) #10
  %mid324 = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i473, i32 0, i32 3
  %116 = ptrtoint ptr %mid324 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %mid324, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp326 = icmp eq i8 %117, 0
  br i1 %cmp326, label %if.then328, label %if.then321.if.end332_crit_edge

if.then321.if.end332_crit_edge:                   ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end332

if.then328:                                       ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev329 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %118 = ptrtoint ptr %main_ndev329 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %main_ndev329, align 4
  %ieee80211_ptr330 = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 82
  %120 = ptrtoint ptr %ieee80211_ptr330 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ieee80211_ptr330, align 16
  %radio_wdev331 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %122 = ptrtoint ptr %radio_wdev331 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %radio_wdev331, align 8
  br label %if.end332

if.end332:                                        ; preds = %if.then328, %if.then321.if.end332_crit_edge
  %123 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %scan_request, align 4
  br label %out

out:                                              ; preds = %if.end332, %out_restore.out_crit_edge, %if.then161, %if.end48, %if.end37.out_crit_edge, %if.then28, %if.then20
  %rc.2 = phi i32 [ -11, %if.then20 ], [ %call38, %if.end48 ], [ 0, %if.end37.out_crit_edge ], [ %rc.0, %if.then161 ], [ %rc.1485, %if.end332 ], [ 0, %out_restore.out_crit_edge ], [ -5, %if.then28 ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup336

cleanup336:                                       ; preds = %out, %if.then16, %do.end9.cleanup336_crit_edge
  %retval.0 = phi i32 [ -16, %if.then16 ], [ %rc.2, %out ], [ -95, %do.end9.cleanup336_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_cfg80211_abort_scan(ptr noundef %wiphy, ptr noundef %wdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %p2p_wdev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %0 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p_wdev.i, align 4
  %cmp.i = icmp eq ptr %1, %wdev
  br i1 %cmp.i, label %if.then.i, label %wiphy_priv.exit.wdev_to_vif.exit_crit_edge

wiphy_priv.exit.wdev_to_vif.exit_crit_edge:       ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wdev_to_vif.exit

if.then.i:                                        ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  br label %wdev_to_vif.exit

wdev_to_vif.exit:                                 ; preds = %if.then.i, %wiphy_priv.exit.wdev_to_vif.exit_crit_edge
  %retval.0.i73 = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %wdev, %wiphy_priv.exit.wdev_to_vif.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_abort_scan.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_abort_scan, %if.then)) #10
          to label %do.end8 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wdev_to_vif.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %6 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iftype, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_abort_scan.__UNIQUE_ID_ddebug370, ptr noundef %5, ptr noundef nonnull @.str.138, ptr noundef %wdev, i32 noundef %7) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wdev_to_vif.exit
  %iftype9 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %8 = ptrtoint ptr %iftype9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iftype9, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.138, ptr noundef %wdev, i32 noundef %9) #10
  %mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 53, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %vif_mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 28
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #10
  %scan_request = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i73, i32 0, i32 28
  %10 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scan_request, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %do.end8.out_crit_edge, label %if.end14

do.end8.out_crit_edge:                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %do.end8
  %wdev16 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %wdev16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wdev16, align 8
  %cmp.not = icmp eq ptr %13, %wdev
  br i1 %cmp.not, label %if.end41, label %do.body20

do.body20:                                        ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_abort_scan.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_abort_scan, %if.then32)) #10
          to label %do.end38 [label %if.then32], !srcloc !556

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev33 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %main_ndev33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %main_ndev33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_abort_scan.__UNIQUE_ID_ddebug371, ptr noundef %15, ptr noundef nonnull @.str.139) #10
  br label %do.end38

do.end38:                                         ; preds = %if.then32, %do.body20
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.139) #10
  br label %out

if.end41:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p2p_wdev.i, align 4
  %cmp42 = icmp eq ptr %17, %wdev
  br i1 %cmp42, label %land.lhs.true, label %if.end41.if.else_crit_edge

if.end41.if.else_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end41
  %radio_wdev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %radio_wdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %radio_wdev, align 8
  %cmp44 = icmp eq ptr %19, %wdev
  br i1 %cmp44, label %if.then45, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @wil_p2p_stop_radio_operations(ptr noundef %priv.i) #10
  br label %out

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end41.if.else_crit_edge
  tail call void @wil_abort_scan(ptr noundef %retval.0.i73, i1 noundef zeroext true) #10
  br label %out

out:                                              ; preds = %if.else, %if.then45, %do.end38, %do.end8.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_connect(ptr noundef %wiphy, ptr noundef %ndev, ptr noundef readonly %sme) #0 align 64 {
entry:
  %conn = alloca %struct.wmi_connect_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %conn) #10
  %0 = call ptr @memset(ptr %conn, i32 255, i32 60)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_connect.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_connect, %if.then)) #10
          to label %do.end8 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %main_ndev, align 4
  %mid = getelementptr i8, ptr %ndev, i32 3276
  %3 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mid, align 4
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_connect.__UNIQUE_ID_ddebug384, ptr noundef %2, ptr noundef nonnull @.str.141, i32 noundef %conv) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wiphy_priv.exit
  %mid9 = getelementptr i8, ptr %ndev, i32 3276
  %5 = ptrtoint ptr %mid9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mid9, align 4
  %conv10 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.141, i32 noundef %conv10) #10
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.wil_print_connect_params) #10
  %7 = ptrtoint ptr %sme to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sme, align 4
  %tobool.not.i291 = icmp eq ptr %8, null
  br i1 %tobool.not.i291, label %do.end8.if.end.i_crit_edge, label %if.then.i

do.end8.if.end.i_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hw_value.i, align 2
  %conv.i = zext i16 %10 to i32
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq.i, align 4
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.153, ptr noundef nonnull @__func__.wil_print_connect_params, i32 noundef %conv.i, i32 noundef %12) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end8.if.end.i_crit_edge
  %bssid.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 2
  %13 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bssid.i, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.154, ptr noundef nonnull @__func__.wil_print_connect_params, ptr noundef nonnull %14) #10
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %ssid.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %15 = ptrtoint ptr %ssid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ssid.i, align 4
  %tobool7.not.i = icmp eq ptr %16, null
  br i1 %tobool7.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then8.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %ssid_len.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 5
  %17 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ssid_len.i, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %16, i32 noundef %18, i1 noundef zeroext true) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end10.i_crit_edge
  %prev_bssid.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 23
  %19 = ptrtoint ptr %prev_bssid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev_bssid.i, align 4
  %tobool11.not.i = icmp eq ptr %20, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end14.i_crit_edge, label %if.then12.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.157, ptr noundef nonnull @__func__.wil_print_connect_params, ptr noundef nonnull %20) #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end14.i_crit_edge
  %auth_type.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 6
  %21 = ptrtoint ptr %auth_type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %auth_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %22)
  %23 = icmp ult i32 %22, 9
  br i1 %23, label %switch.lookup, label %if.end14.i.wil_print_connect_params.exit_crit_edge

if.end14.i.wil_print_connect_params.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wil_print_connect_params.exit

switch.lookup:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.wil_cfg80211_connect, i32 0, i32 %22
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %wil_print_connect_params.exit

wil_print_connect_params.exit:                    ; preds = %switch.lookup, %if.end14.i.wil_print_connect_params.exit_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.167, %if.end14.i.wil_print_connect_params.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.158, ptr noundef nonnull @__func__.wil_print_connect_params, ptr noundef nonnull %retval.0.i.i) #10
  %privacy.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 9
  %25 = ptrtoint ptr %privacy.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %privacy.i, align 4, !range !557
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool15.not.i = icmp eq i8 %26, 0
  %cond.i = select i1 %tobool15.not.i, ptr @.str.79, ptr @.str.78
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.wil_print_connect_params, ptr noundef nonnull %cond.i) #10
  %pbss.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 21
  %27 = ptrtoint ptr %pbss.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pbss.i, align 4, !range !557
  %29 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.160, ptr noundef nonnull @__func__.wil_print_connect_params, i32 noundef %29) #10
  %crypto.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11
  tail call fastcc void @wil_print_crypto(ptr noundef %priv.i, ptr noundef %crypto.i) #10
  %30 = ptrtoint ptr %auth_type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %auth_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp = icmp eq i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %31)
  %cmp17 = icmp eq i32 %31, 8
  br i1 %cmp17, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %wil_print_connect_params.exit
  %status = getelementptr i8, ptr %ndev, i32 3280
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %status, align 4
  %34 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool20.not = icmp ne i32 %34, 0
  %spec.select = select i1 %tobool20.not, i1 true, i1 %cmp
  br i1 %spec.select, label %land.lhs.true.if.end35_crit_edge, label %land.lhs.true.if.then24_crit_edge

land.lhs.true.if.then24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end22:                                         ; preds = %wil_print_connect_params.exit
  br i1 %cmp, label %if.end22.if.end35_crit_edge, label %if.end22.if.then24_crit_edge

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %land.lhs.true.if.then24_crit_edge
  %status25 = getelementptr i8, ptr %ndev, i32 3280
  %35 = ptrtoint ptr %status25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %status25, align 4
  %and1.i287 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i287)
  %tobool28.not = icmp eq i32 %and1.i287, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then24
  %37 = ptrtoint ptr %status25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %status25, align 4
  %39 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool32.not = icmp eq i32 %39, 0
  br i1 %tobool32.not, label %lor.lhs.false.if.end35_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end35:                                         ; preds = %lor.lhs.false.if.end35_crit_edge, %if.end22.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge
  %is_ft_roam.1.off0297 = phi i1 [ true, %land.lhs.true.if.end35_crit_edge ], [ false, %lor.lhs.false.if.end35_crit_edge ], [ true, %if.end22.if.end35_crit_edge ]
  %ie_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 8
  %40 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %41)
  %cmp36 = icmp ugt i32 %41, 1024
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.140, i32 noundef %41) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %ie = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 7
  %42 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ie, align 4
  %tobool41.not = icmp eq ptr %43, null
  br i1 %tobool41.not, label %if.end40.cond.end_crit_edge, label %cond.true

if.end40.cond.end_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 48, ptr noundef nonnull %43, i32 noundef %41, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end40.cond.end_crit_edge
  %cond = phi ptr [ %call.i.i, %cond.true ], [ null, %if.end40.cond.end_crit_edge ]
  %44 = ptrtoint ptr %privacy.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %privacy.i, align 4, !range !557
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool45.not = icmp ne i8 %45, 0
  %tobool48.not = icmp eq ptr %cond, null
  %or.cond = select i1 %tobool45.not, i1 %tobool48.not, i1 false
  br i1 %or.cond, label %if.then49, label %cond.end.if.end53_crit_edge

cond.end.if.end53_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then49:                                        ; preds = %cond.end
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.140) #10
  br i1 %is_ft_roam.1.off0297, label %if.then51, label %if.then49.if.end53_crit_edge

if.then49.if.end53_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.140) #10
  br label %cleanup

if.end53:                                         ; preds = %if.then49.if.end53_crit_edge, %cond.end.if.end53_crit_edge
  %46 = ptrtoint ptr %pbss.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pbss.i, align 4, !range !557
  %48 = zext i8 %47 to i32
  %49 = ptrtoint ptr %sme to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sme, align 4
  %51 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bssid.i, align 4
  %53 = ptrtoint ptr %ssid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ssid.i, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 5
  %55 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ssid_len, align 4
  %call57 = tail call ptr @cfg80211_get_bss(ptr noundef nonnull %wiphy, ptr noundef %50, ptr noundef %52, ptr noundef %54, i32 noundef %56, i32 noundef %48, i32 noundef 2) #10
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.140) #10
  br label %cleanup

if.end60:                                         ; preds = %if.end53
  %call.i = tail call ptr @ieee80211_bss_get_elem(ptr noundef nonnull %call57, i8 noundef zeroext 0) #10
  %tobool62.not = icmp eq ptr %call.i, null
  br i1 %tobool62.not, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.140) #10
  br label %out

if.end64:                                         ; preds = %if.end60
  %57 = ptrtoint ptr %privacy.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %privacy.i, align 4, !range !557
  %59 = zext i8 %58 to i32
  %privacy68 = getelementptr i8, ptr %ndev, i32 3284
  %60 = ptrtoint ptr %privacy68 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %privacy68, align 4
  %61 = ptrtoint ptr %pbss.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pbss.i, align 4, !range !557
  %pbss71 = getelementptr i8, ptr %ndev, i32 3296
  %63 = ptrtoint ptr %pbss71 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %pbss71, align 8
  %64 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ie_len, align 4
  %conv74 = trunc i32 %65 to i16
  %66 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ie, align 4
  %call76 = tail call i32 @wmi_set_ie(ptr noundef %add.ptr.i, i8 noundef zeroext 3, i16 noundef zeroext %conv74, ptr noundef %67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end64.out_crit_edge

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end79:                                         ; preds = %if.end64
  %capability = getelementptr inbounds %struct.cfg80211_bss, ptr %call57, i32 0, i32 10
  %68 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %capability, align 2
  %conv80 = zext i16 %69 to i32
  %and = and i32 %conv80, 3
  %70 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %and, label %sw.default [
    i32 3, label %if.end79.sw.epilog_crit_edge
    i32 2, label %sw.bb81
  ]

if.end79.sw.epilog_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.140, i32 noundef %conv80) #10
  br label %out

sw.epilog:                                        ; preds = %sw.bb81, %if.end79.sw.epilog_crit_edge
  %cmp94.not = phi i1 [ false, %sw.bb81 ], [ true, %if.end79.sw.epilog_crit_edge ]
  %network_type.0 = phi i8 [ 32, %sw.bb81 ], [ 1, %if.end79.sw.epilog_crit_edge ]
  %71 = ptrtoint ptr %call57 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call57, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %hw_value, align 2
  %conv85 = trunc i16 %74 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp86 = icmp eq i16 %74, 0
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.140, i32 noundef %76) #10
  br label %out

if.end90:                                         ; preds = %sw.epilog
  br i1 %is_ft_roam.1.off0297, label %if.then92, label %if.end106

if.then92:                                        ; preds = %if.end90
  br i1 %cmp94.not, label %if.end99, label %if.then96

if.then96:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.140, i32 noundef %conv80) #10
  br label %out

if.end99:                                         ; preds = %if.then92
  %call100 = tail call fastcc i32 @wil_ft_connect(ptr noundef nonnull %wiphy, ptr noundef %ndev, ptr noundef %sme)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.end99.out_crit_edge

if.end99.out_crit_edge:                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %bss104 = getelementptr i8, ptr %ndev, i32 3408
  %77 = ptrtoint ptr %bss104 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call57, ptr %bss104, align 8
  br label %out

if.end106:                                        ; preds = %if.end90
  %78 = ptrtoint ptr %privacy68 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %privacy68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool108.not = icmp eq i32 %79, 0
  br i1 %tobool108.not, label %if.end122.thread, label %if.then109

if.end122.thread:                                 ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %80 = getelementptr inbounds i8, ptr %conn, i32 3
  %81 = call ptr @memset(ptr %80, i32 0, i32 57)
  %82 = ptrtoint ptr %conn to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %network_type.0, ptr %conn, align 1
  br label %if.else132

if.then109:                                       ; preds = %if.end106
  %bssid110 = getelementptr inbounds %struct.cfg80211_bss, ptr %call57, i32 0, i32 11
  %call112 = tail call i32 @wmi_del_cipher_key(ptr noundef %add.ptr.i, i8 noundef zeroext 0, ptr noundef %bssid110, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.then114

if.then114:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.140) #10
  br label %out

if.end115:                                        ; preds = %if.then109
  %call118 = tail call i32 @wmi_del_cipher_key(ptr noundef %add.ptr.i, i8 noundef zeroext 0, ptr noundef %bssid110, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end122, label %if.then120

if.then120:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.140) #10
  br label %out

if.end122:                                        ; preds = %if.end115
  %83 = ptrtoint ptr %privacy68 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr = load i32, ptr %privacy68, align 4
  %84 = getelementptr inbounds i8, ptr %conn, i32 1
  %85 = call ptr @memset(ptr %84, i32 0, i32 59)
  %86 = ptrtoint ptr %conn to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %network_type.0, ptr %conn, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool125.not = icmp eq i32 %.pr, 0
  br i1 %tobool125.not, label %if.end122.if.else132_crit_edge, label %if.then126

if.end122.if.else132_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else132

if.then126:                                       ; preds = %if.end122
  %dot11_auth_mode129 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 1
  br i1 %tobool48.not, label %if.else, label %if.then128

if.then128:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %dot11_auth_mode129 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 2, ptr %dot11_auth_mode129, align 1
  %auth_mode = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 2
  %88 = ptrtoint ptr %auth_mode to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 16, ptr %auth_mode, align 1
  %pairwise_crypto_type = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 3
  %89 = ptrtoint ptr %pairwise_crypto_type to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 32, ptr %pairwise_crypto_type, align 1
  %pairwise_crypto_len = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 4
  %90 = ptrtoint ptr %pairwise_crypto_len to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 16, ptr %pairwise_crypto_len, align 1
  %group_crypto_type = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 5
  %91 = ptrtoint ptr %group_crypto_type to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 32, ptr %group_crypto_type, align 1
  %group_crypto_len = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 6
  %92 = ptrtoint ptr %group_crypto_len to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 16, ptr %group_crypto_len, align 1
  br label %if.end135

if.else:                                          ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %dot11_auth_mode129 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 8, ptr %dot11_auth_mode129, align 1
  %auth_mode130 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 2
  %94 = ptrtoint ptr %auth_mode130 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %auth_mode130, align 1
  br label %if.end135

if.else132:                                       ; preds = %if.end122.if.else132_crit_edge, %if.end122.thread
  %dot11_auth_mode133 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 1
  %95 = ptrtoint ptr %dot11_auth_mode133 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %dot11_auth_mode133, align 1
  %auth_mode134 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 2
  %96 = ptrtoint ptr %auth_mode134 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %auth_mode134, align 1
  br label %if.end135

if.end135:                                        ; preds = %if.else132, %if.else, %if.then128
  %arrayidx = getelementptr i8, ptr %call.i, i32 1
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx, align 1
  %99 = tail call i8 @llvm.umin.i8(i8 %98, i8 32)
  %ssid_len148 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 7
  %100 = ptrtoint ptr %ssid_len148 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %ssid_len148, align 1
  %ssid149 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %call.i, i32 2
  %conv152 = zext i8 %99 to i32
  %101 = call ptr @memcpy(ptr %ssid149, ptr %add.ptr, i32 %conv152)
  %sub = add i8 %conv85, -1
  %channel154 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 9
  %102 = ptrtoint ptr %channel154 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %sub, ptr %channel154, align 1
  %edmg = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 32
  %bw_config = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 32, i32 1
  %103 = ptrtoint ptr %bw_config to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bw_config, align 4
  %conv155 = trunc i32 %104 to i8
  %105 = ptrtoint ptr %edmg to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %edmg, align 4
  %edmg_channel = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 10
  %call157 = call fastcc i32 @wil_get_wmi_edmg_channel(ptr noundef %priv.i, i8 noundef zeroext %conv155, i8 noundef zeroext %106, ptr noundef %edmg_channel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %cmp158 = icmp slt i32 %call157, 0
  br i1 %cmp158, label %if.end135.cleanup_crit_edge, label %if.end161

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end161:                                        ; preds = %if.end135
  %bssid162 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 11
  %bssid164 = getelementptr inbounds %struct.cfg80211_bss, ptr %call57, i32 0, i32 11
  %107 = ptrtoint ptr %bssid164 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bssid164, align 4
  %109 = ptrtoint ptr %bssid162 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %bssid162, align 4
  %add.ptr.i292 = getelementptr %struct.cfg80211_bss, ptr %call57, i32 0, i32 11, i32 4
  %110 = ptrtoint ptr %add.ptr.i292 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %add.ptr.i292, align 2
  %add.ptr1.i = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 11, i32 4
  %112 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %add.ptr1.i, align 2
  %dst_mac = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 13
  %113 = load i32, ptr %bssid164, align 4
  %114 = ptrtoint ptr %dst_mac to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %dst_mac, align 4
  %115 = load i16, ptr %add.ptr.i292, align 2
  %add.ptr1.i294 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %conn, i32 0, i32 13, i32 4
  %116 = ptrtoint ptr %add.ptr1.i294 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %add.ptr1.i294, align 2
  %status169 = getelementptr i8, ptr %ndev, i32 3280
  tail call void @_set_bit(i32 noundef 0, ptr noundef %status169) #10
  %117 = ptrtoint ptr %mid9 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %mid9, align 4
  %call172 = call i32 @wmi_send(ptr noundef %priv.i, i16 noundef zeroext 1, i8 noundef zeroext %118, ptr noundef nonnull %conn, i16 noundef zeroext 60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %cmp173 = icmp eq i32 %call172, 0
  br i1 %cmp173, label %if.then175, label %if.else182

if.then175:                                       ; preds = %if.end161
  call void @netif_carrier_on(ptr noundef %ndev) #10
  %call176 = call zeroext i1 @wil_has_other_active_ifaces(ptr noundef %priv.i, ptr noundef %ndev, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br i1 %call176, label %if.then175.if.end178_crit_edge, label %if.then177

if.then175.if.end178_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.then177:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #12
  call void @wil6210_bus_request(ptr noundef %priv.i, i32 noundef 800000) #10
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %if.then175.if.end178_crit_edge
  %bss179 = getelementptr i8, ptr %ndev, i32 3408
  %119 = ptrtoint ptr %bss179 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call57, ptr %bss179, align 8
  %connect_timer = getelementptr i8, ptr %ndev, i32 3416
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %120 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %120, 500
  %call181 = call i32 @mod_timer(ptr noundef %connect_timer, i32 noundef %add) #10
  br label %out

if.else182:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 0, ptr noundef %status169) #10
  br label %out

out:                                              ; preds = %if.else182, %if.end178, %if.then120, %if.then114, %if.then103, %if.end99.out_crit_edge, %if.then96, %if.then88, %sw.default, %if.end64.out_crit_edge, %if.then63
  %rc.0 = phi i32 [ %call76, %if.end64.out_crit_edge ], [ -22, %sw.default ], [ -95, %if.then88 ], [ -22, %if.then96 ], [ 0, %if.then103 ], [ %call100, %if.end99.out_crit_edge ], [ %call112, %if.then114 ], [ %call118, %if.then120 ], [ 0, %if.end178 ], [ %call172, %if.else182 ], [ -2, %if.then63 ]
  call void @cfg80211_put_bss(ptr noundef nonnull %wiphy, ptr noundef nonnull %call57) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end135.cleanup_crit_edge, %if.then59, %if.then51, %if.then38, %lor.lhs.false.cleanup_crit_edge, %if.then24.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %if.then38 ], [ %rc.0, %out ], [ -2, %if.then59 ], [ -22, %if.then51 ], [ -114, %lor.lhs.false.cleanup_crit_edge ], [ -114, %if.then24.cleanup_crit_edge ], [ %call157, %if.end135.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %conn) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_disconnect(ptr noundef %wiphy, ptr noundef %ndev, i16 noundef zeroext %reason_code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_disconnect.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_disconnect, %if.then)) #10
          to label %do.end9 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %conv = zext i16 %reason_code to i32
  %mid = getelementptr i8, ptr %ndev, i32 3276
  %2 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mid, align 4
  %conv7 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_disconnect.__UNIQUE_ID_ddebug387, ptr noundef %1, ptr noundef nonnull @.str.176, i32 noundef %conv, i32 noundef %conv7) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %wiphy_priv.exit
  %conv10 = zext i16 %reason_code to i32
  %mid11 = getelementptr i8, ptr %ndev, i32 3276
  %4 = ptrtoint ptr %mid11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mid11, align 4
  %conv12 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.176, i32 noundef %conv10, i32 noundef %conv12) #10
  %status = getelementptr i8, ptr %ndev, i32 3280
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool16.not = icmp eq i32 %and1.i, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %do.end9.if.end22_crit_edge

do.end9.if.end22_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

lor.lhs.false:                                    ; preds = %do.end9
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool20.not = icmp eq i32 %10, 0
  br i1 %tobool20.not, label %if.then21, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.175) #10
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false.if.end22_crit_edge, %do.end9.if.end22_crit_edge
  %locally_generated_disc = getelementptr i8, ptr %ndev, i32 3412
  %11 = ptrtoint ptr %locally_generated_disc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %locally_generated_disc, align 4
  %12 = ptrtoint ptr %mid11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mid11, align 4
  %call24 = tail call i32 @wmi_call(ptr noundef %priv.i, i16 noundef zeroext 3, i8 noundef zeroext %13, ptr noundef null, i16 noundef zeroext 0, i16 noundef zeroext 4099, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.then26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.175, i32 noundef %call24) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end22.cleanup_crit_edge, %if.then21
  %retval.0 = phi i32 [ 0, %if.then21 ], [ %call24, %if.then26 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_set_wiphy_params(ptr noundef %wiphy, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %and = and i32 %changed, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %wiphy_priv.exit.cleanup_crit_edge

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %and1 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %retry_short = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 33
  %0 = ptrtoint ptr %retry_short to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %retry_short, align 4
  %call4 = tail call i32 @wmi_set_mgmt_retry(ptr noundef %priv.i, i8 noundef zeroext %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then3.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -524, %wiphy_priv.exit.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_remain_on_channel(ptr noundef %wiphy, ptr noundef %wdev, ptr noundef %chan, i32 noundef %duration, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_remain_on_channel.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_remain_on_channel, %if.then)) #10
          to label %do.end7 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %center_freq, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_remain_on_channel.__UNIQUE_ID_ddebug396, ptr noundef %1, ptr noundef nonnull @.str.180, i32 noundef %3, i32 noundef %duration, i32 noundef %5) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %wiphy_priv.exit
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %center_freq8 = getelementptr inbounds %struct.ieee80211_channel, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %center_freq8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %center_freq8, align 4
  %iftype9 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 1
  %8 = ptrtoint ptr %iftype9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iftype9, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.180, i32 noundef %7, i32 noundef %duration, i32 noundef %9) #10
  %call12 = tail call i32 @wil_p2p_listen(ptr noundef %priv.i, ptr noundef %wdev, i32 noundef %duration, ptr noundef %chan, ptr noundef %cookie) #10
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cancel_remain_on_channel(ptr noundef %wiphy, ptr noundef %wdev, i64 noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %p2p_wdev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %0 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p_wdev.i, align 4
  %cmp.i = icmp eq ptr %1, %wdev
  br i1 %cmp.i, label %if.then.i, label %wiphy_priv.exit.wdev_to_vif.exit_crit_edge

wiphy_priv.exit.wdev_to_vif.exit_crit_edge:       ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wdev_to_vif.exit

if.then.i:                                        ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  br label %wdev_to_vif.exit

wdev_to_vif.exit:                                 ; preds = %if.then.i, %wiphy_priv.exit.wdev_to_vif.exit_crit_edge
  %retval.0.i14 = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %wdev, %wiphy_priv.exit.wdev_to_vif.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cancel_remain_on_channel.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cancel_remain_on_channel, %if.then)) #10
          to label %do.end8 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wdev_to_vif.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cancel_remain_on_channel.__UNIQUE_ID_ddebug397, ptr noundef %5, ptr noundef nonnull @.str.182) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wdev_to_vif.exit
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.182) #10
  %call11 = tail call i32 @wil_p2p_cancel_listen(ptr noundef %retval.0.i14, i64 noundef %cookie) #10
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_set_power_mgmt(ptr noundef %wiphy, ptr nocapture noundef readnone %dev, i1 noundef zeroext %enabled, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_set_power_mgmt.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_set_power_mgmt, %if.then)) #10
          to label %do.end9 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %conv = zext i1 %enabled to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_set_power_mgmt.__UNIQUE_ID_ddebug426, ptr noundef %1, ptr noundef nonnull @.str.184, i32 noundef %conv, i32 noundef %timeout) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %wiphy_priv.exit
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %conv11 = zext i1 %enabled to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.184, i32 noundef %conv11, i32 noundef %timeout) #10
  %not.enabled = xor i1 %enabled, true
  %. = zext i1 %not.enabled to i32
  %call17 = tail call i32 @wil_ps_update(ptr noundef %priv.i, i32 noundef %.) #10
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_set_cqm_rssi_config(ptr noundef %wiphy, ptr nocapture noundef readnone %dev, i32 noundef %rssi_thold, i32 noundef %rssi_hyst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %cqm_rssi_thold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 39
  %0 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rssi_thold, ptr %cqm_rssi_thold, align 4
  %call1 = tail call i32 @wmi_set_cqm_rssi_config(ptr noundef %priv.i, i32 noundef %rssi_thold, i32 noundef %rssi_hyst) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %wiphy_priv.exit.if.end_crit_edge, label %if.then

wiphy_priv.exit.if.end_crit_edge:                 ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cqm_rssi_thold, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %wiphy_priv.exit.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_sched_scan_start(ptr noundef %wiphy, ptr noundef %dev, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mid = getelementptr i8, ptr %dev, i32 3276
  %0 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %do.body4, label %wiphy_priv.exit.cleanup_crit_edge

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %wiphy_priv.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_sched_scan_start, %if.then8)) #10
          to label %do.end11 [label %if.then8], !srcloc !556

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %n_ssids = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 2
  %4 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_ssids, align 4
  %ie_len = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 6
  %6 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ie_len, align 4
  %flags = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 7
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug430, ptr noundef %3, ptr noundef nonnull @.str.186, i32 noundef %5, i32 noundef %7, i32 noundef %9) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body4
  %n_ssids12 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 2
  %10 = ptrtoint ptr %n_ssids12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_ssids12, align 4
  %ie_len13 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 6
  %12 = ptrtoint ptr %ie_len13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ie_len13, align 4
  %flags14 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 7
  %14 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags14, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.186, i32 noundef %11, i32 noundef %13, i32 noundef %15) #10
  %16 = ptrtoint ptr %n_ssids12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_ssids12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp18388 = icmp sgt i32 %17, 0
  br i1 %cmp18388, label %do.body22.lr.ph, label %do.end11.do.body64_crit_edge

do.end11.do.body64_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body64

do.body22.lr.ph:                                  ; preds = %do.end11
  %main_ndev35 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %ssids = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 1
  br label %do.body22

do.body22:                                        ; preds = %for.inc.do.body22_crit_edge, %do.body22.lr.ph
  %i.0389 = phi i32 [ 0, %do.body22.lr.ph ], [ %inc, %for.inc.do.body22_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_sched_scan_start, %if.then34)) #10
          to label %do.end40 [label %if.then34], !srcloc !556

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %main_ndev35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %main_ndev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug431, ptr noundef %19, ptr noundef nonnull @.str.187, i32 noundef %i.0389) #10
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %do.body22
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.187, i32 noundef %i.0389) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_sched_scan_start, %if.then55)) #10
          to label %for.inc [label %if.then55], !srcloc !556

if.then55:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %ssids to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ssids, align 8
  %arrayidx = getelementptr %struct.cfg80211_ssid, ptr %21, i32 %i.0389
  %ssid_len = getelementptr %struct.cfg80211_ssid, ptr %21, i32 %i.0389, i32 1
  %22 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ssid_len, align 1
  %conv58 = zext i8 %23 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %arrayidx, i32 noundef %conv58, i1 noundef zeroext true) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %do.end40
  %inc = add nuw nsw i32 %i.0389, 1
  %24 = ptrtoint ptr %n_ssids12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_ssids12, align 4
  %cmp18 = icmp slt i32 %inc, %25
  br i1 %cmp18, label %for.inc.do.body22_crit_edge, label %for.inc.do.body64_crit_edge

for.inc.do.body64_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body64

for.inc.do.body22_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

do.body64:                                        ; preds = %for.inc.do.body64_crit_edge, %do.end11.do.body64_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_sched_scan_start, %if.then76)) #10
          to label %do.end82 [label %if.then76], !srcloc !556

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev77 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %main_ndev77 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %main_ndev77, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug433, ptr noundef %27, ptr noundef nonnull @.str.188) #10
  br label %do.end82

do.end82:                                         ; preds = %if.then76, %do.body64
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.188) #10
  %n_channels = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 3
  %28 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp86391.not = icmp eq i32 %29, 0
  br i1 %cmp86391.not, label %do.end82.do.body131_crit_edge, label %do.body91.lr.ph

do.end82.do.body131_crit_edge:                    ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body131

do.body91.lr.ph:                                  ; preds = %do.end82
  %main_ndev104 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  br label %do.body91

do.body91:                                        ; preds = %do.end114.do.body91_crit_edge, %do.body91.lr.ph
  %i.1392 = phi i32 [ 0, %do.body91.lr.ph ], [ %inc127, %do.end114.do.body91_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_sched_scan_start, %if.then103)) #10
          to label %do.end114 [label %if.then103], !srcloc !556

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %main_ndev104 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %main_ndev104, align 4
  %arrayidx105 = getelementptr %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 27, i32 %i.1392
  %32 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx105, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hw_value, align 2
  %conv106 = zext i16 %35 to i32
  %36 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_channels, align 8
  %sub = add i32 %37, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1392, i32 %sub)
  %cmp108 = icmp eq i32 %i.1392, %sub
  %cond = select i1 %cmp108, ptr @.str.190, ptr @.str.191
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug434, ptr noundef %31, ptr noundef nonnull @.str.189, i32 noundef %conv106, ptr noundef nonnull %cond) #10
  br label %do.end114

do.end114:                                        ; preds = %if.then103, %do.body91
  %arrayidx116 = getelementptr %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 27, i32 %i.1392
  %38 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx116, align 4
  %hw_value117 = getelementptr inbounds %struct.ieee80211_channel, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %hw_value117 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hw_value117, align 2
  %conv118 = zext i16 %41 to i32
  %42 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_channels, align 8
  %sub120 = add i32 %43, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1392, i32 %sub120)
  %cmp121 = icmp eq i32 %i.1392, %sub120
  %cond123 = select i1 %cmp121, ptr @.str.190, ptr @.str.191
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.189, i32 noundef %conv118, ptr noundef nonnull %cond123) #10
  %inc127 = add nuw i32 %i.1392, 1
  %44 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_channels, align 8
  %cmp86 = icmp ult i32 %inc127, %45
  br i1 %cmp86, label %do.end114.do.body91_crit_edge, label %do.end114.do.body131_crit_edge

do.end114.do.body131_crit_edge:                   ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body131

do.end114.do.body91_crit_edge:                    ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body91

do.body131:                                       ; preds = %do.end114.do.body131_crit_edge, %do.end82.do.body131_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug435, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_sched_scan_start, %if.then143)) #10
          to label %do.end149 [label %if.then143], !srcloc !556

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev144 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %main_ndev144 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %main_ndev144, align 4
  %n_match_sets = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 9
  %48 = ptrtoint ptr %n_match_sets to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_match_sets, align 8
  %min_rssi_thold = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 10
  %50 = ptrtoint ptr %min_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %min_rssi_thold, align 4
  %delay = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 11
  %52 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %delay, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug435, ptr noundef %47, ptr noundef nonnull @.str.192, i32 noundef %49, i32 noundef %51, i32 noundef %53) #10
  br label %do.end149

do.end149:                                        ; preds = %if.then143, %do.body131
  %n_match_sets150 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 9
  %54 = ptrtoint ptr %n_match_sets150 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_match_sets150, align 8
  %min_rssi_thold151 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 10
  %56 = ptrtoint ptr %min_rssi_thold151 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %min_rssi_thold151, align 4
  %delay152 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 11
  %58 = ptrtoint ptr %delay152 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %delay152, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.192, i32 noundef %55, i32 noundef %57, i32 noundef %59) #10
  %60 = ptrtoint ptr %n_match_sets150 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %n_match_sets150, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp157394 = icmp sgt i32 %61, 0
  br i1 %cmp157394, label %for.body159.lr.ph, label %do.end149.do.body212_crit_edge

do.end149.do.body212_crit_edge:                   ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body212

for.body159.lr.ph:                                ; preds = %do.end149
  %match_sets = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 8
  %main_ndev176 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  br label %for.body159

for.body159:                                      ; preds = %do.end206.for.body159_crit_edge, %for.body159.lr.ph
  %i.2395 = phi i32 [ 0, %for.body159.lr.ph ], [ %inc208, %do.end206.for.body159_crit_edge ]
  %62 = ptrtoint ptr %match_sets to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %match_sets, align 4
  %arrayidx160 = getelementptr %struct.cfg80211_match_set, ptr %63, i32 %i.2395
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_sched_scan_start, %if.then175)) #10
          to label %do.end181 [label %if.then175], !srcloc !556

if.then175:                                       ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %main_ndev176 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %main_ndev176, align 4
  %rssi_thold = getelementptr %struct.cfg80211_match_set, ptr %63, i32 %i.2395, i32 2
  %66 = ptrtoint ptr %rssi_thold to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rssi_thold, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug436, ptr noundef %65, ptr noundef nonnull @.str.193, i32 noundef %i.2395, i32 noundef %67) #10
  br label %do.end181

do.end181:                                        ; preds = %if.then175, %for.body159
  %rssi_thold182 = getelementptr %struct.cfg80211_match_set, ptr %63, i32 %i.2395, i32 2
  %68 = ptrtoint ptr %rssi_thold182 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rssi_thold182, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.193, i32 noundef %i.2395, i32 noundef %69) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug437, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_sched_scan_start, %if.then197)) #10
          to label %do.end206 [label %if.then197], !srcloc !556

if.then197:                                       ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #12
  %ssid_len202 = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx160, i32 0, i32 1
  %70 = ptrtoint ptr %ssid_len202 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ssid_len202, align 4
  %conv203 = zext i8 %71 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %arrayidx160, i32 noundef %conv203, i1 noundef zeroext true) #10
  br label %do.end206

do.end206:                                        ; preds = %if.then197, %do.end181
  %inc208 = add nuw nsw i32 %i.2395, 1
  %72 = ptrtoint ptr %n_match_sets150 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_match_sets150, align 8
  %cmp157 = icmp slt i32 %inc208, %73
  br i1 %cmp157, label %do.end206.for.body159_crit_edge, label %do.end206.do.body212_crit_edge

do.end206.do.body212_crit_edge:                   ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body212

do.end206.for.body159_crit_edge:                  ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body159

do.body212:                                       ; preds = %do.end206.do.body212_crit_edge, %do.end149.do.body212_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug438, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_sched_scan_start, %if.then224)) #10
          to label %do.end230 [label %if.then224], !srcloc !556

if.then224:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev225 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %74 = ptrtoint ptr %main_ndev225 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %main_ndev225, align 4
  %n_scan_plans = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 13
  %76 = ptrtoint ptr %n_scan_plans to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_scan_plans, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug438, ptr noundef %75, ptr noundef nonnull @.str.194, i32 noundef %77) #10
  br label %do.end230

do.end230:                                        ; preds = %if.then224, %do.body212
  %n_scan_plans231 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 13
  %78 = ptrtoint ptr %n_scan_plans231 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %n_scan_plans231, align 8
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.194, i32 noundef %79) #10
  %80 = ptrtoint ptr %n_scan_plans231 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %n_scan_plans231, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp236397 = icmp sgt i32 %81, 0
  br i1 %cmp236397, label %for.body238.lr.ph, label %do.end230.for.end267_crit_edge

do.end230.for.end267_crit_edge:                   ; preds = %do.end230
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end267

for.body238.lr.ph:                                ; preds = %do.end230
  %scan_plans = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 12
  %main_ndev255 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  br label %for.body238

for.body238:                                      ; preds = %do.end260.for.body238_crit_edge, %for.body238.lr.ph
  %i.3398 = phi i32 [ 0, %for.body238.lr.ph ], [ %inc266, %do.end260.for.body238_crit_edge ]
  %82 = ptrtoint ptr %scan_plans to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %scan_plans, align 4
  %arrayidx239 = getelementptr %struct.cfg80211_sched_scan_plan, ptr %83, i32 %i.3398
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_sched_scan_start, %if.then254)) #10
          to label %do.end260 [label %if.then254], !srcloc !556

if.then254:                                       ; preds = %for.body238
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %main_ndev255 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %main_ndev255, align 4
  %86 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx239, align 4
  %iterations = getelementptr %struct.cfg80211_sched_scan_plan, ptr %83, i32 %i.3398, i32 1
  %88 = ptrtoint ptr %iterations to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iterations, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug439, ptr noundef %85, ptr noundef nonnull @.str.195, i32 noundef %i.3398, i32 noundef %87, i32 noundef %89) #10
  br label %do.end260

do.end260:                                        ; preds = %if.then254, %for.body238
  %90 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx239, align 4
  %iterations262 = getelementptr %struct.cfg80211_sched_scan_plan, ptr %83, i32 %i.3398, i32 1
  %92 = ptrtoint ptr %iterations262 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %iterations262, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.195, i32 noundef %i.3398, i32 noundef %91, i32 noundef %93) #10
  %inc266 = add nuw nsw i32 %i.3398, 1
  %94 = ptrtoint ptr %n_scan_plans231 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %n_scan_plans231, align 8
  %cmp236 = icmp slt i32 %inc266, %95
  br i1 %cmp236, label %do.end260.for.body238_crit_edge, label %do.end260.for.end267_crit_edge

do.end260.for.end267_crit_edge:                   ; preds = %do.end260
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end267

do.end260.for.body238_crit_edge:                  ; preds = %do.end260
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body238

for.end267:                                       ; preds = %do.end260.for.end267_crit_edge, %do.end230.for.end267_crit_edge
  %96 = ptrtoint ptr %ie_len13 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ie_len13, align 4
  %conv269 = trunc i32 %97 to i16
  %ie = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %request, i32 0, i32 5
  %98 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ie, align 8
  %call270 = tail call i32 @wmi_set_ie(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext %conv269, ptr noundef %99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %if.end273, label %for.end267.cleanup_crit_edge

for.end267.cleanup_crit_edge:                     ; preds = %for.end267
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end273:                                        ; preds = %for.end267
  call void @__sanitizer_cov_trace_pc() #12
  %call274 = tail call i32 @wmi_start_sched_scan(ptr noundef %priv.i, ptr noundef %request) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end273, %for.end267.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call274, %if.end273 ], [ -95, %wiphy_priv.exit.cleanup_crit_edge ], [ %call270, %for.end267.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_sched_scan_stop(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, i64 noundef %reqid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %mid = getelementptr i8, ptr %dev, i32 3276
  %0 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %wiphy_priv.exit.cleanup_crit_edge

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %call3 = tail call i32 @wmi_stop_sched_scan(ptr noundef %priv.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_sched_scan_stop.__UNIQUE_ID_ddebug440, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_sched_scan_stop, %if.then9)) #10
          to label %do.end12 [label %if.then9], !srcloc !556

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_sched_scan_stop.__UNIQUE_ID_ddebug440, ptr noundef %3, ptr noundef nonnull @.str.197, i32 noundef %call3) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %if.end
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.197, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end12 ], [ -95, %wiphy_priv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_probe_client(ptr noundef %wiphy, ptr noundef %dev, ptr noundef %peer, ptr nocapture noundef writeonly %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %mid = getelementptr i8, ptr %dev, i32 3276
  %0 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mid, align 4
  %call2 = tail call i32 @wil_find_cid(ptr noundef %priv.i, i8 noundef zeroext %1, ptr noundef %peer) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_probe_client.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_probe_client, %if.then)) #10
          to label %do.end10 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  %4 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mid, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_probe_client.__UNIQUE_ID_ddebug424, ptr noundef %3, ptr noundef nonnull @.str.199, ptr noundef %peer, i32 noundef %call2, i32 noundef %conv) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then, %wiphy_priv.exit
  %6 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mid, align 4
  %conv12 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.199, ptr noundef %peer, i32 noundef %call2, i32 noundef %conv12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end17

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %do.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 24) #14
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %conv22 = trunc i32 %call2 to i8
  %cid23 = getelementptr inbounds %struct.wil_probe_client_req, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %cid23 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv22, ptr %cid23, align 8
  %conv2452 = zext i32 %call2 to i64
  %cookie25 = getelementptr inbounds %struct.wil_probe_client_req, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %cookie25 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv2452, ptr %cookie25, align 8
  %probe_client_mutex = getelementptr i8, ptr %dev, i32 3784
  tail call void @mutex_lock_nested(ptr noundef %probe_client_mutex, i32 noundef 0) #10
  %probe_client_pending = getelementptr i8, ptr %dev, i32 3776
  %prev.i = getelementptr i8, ptr %dev, i32 3780
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %12, ptr noundef %probe_client_pending) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_add_tail.exit_crit_edge

if.end21.list_add_tail.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %probe_client_pending, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end21.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %probe_client_mutex) #10
  %17 = ptrtoint ptr %cookie25 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cookie25, align 8
  %19 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %cookie, align 8
  %wq_service = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 10, i32 1, i32 4, i32 7
  %20 = ptrtoint ptr %wq_service to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wq_service, align 128
  %probe_client_worker = getelementptr i8, ptr %dev, i32 3876
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %probe_client_worker) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end17.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -67, %do.end10.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_start_p2p_device(ptr noundef %wiphy, ptr nocapture noundef readnone %wdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_start_p2p_device.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_start_p2p_device, %if.then)) #10
          to label %do.end7 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_start_p2p_device.__UNIQUE_ID_ddebug349, ptr noundef %1, ptr noundef nonnull @.str.201) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %wiphy_priv.exit
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.201) #10
  %p2p_dev_started = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %2 = ptrtoint ptr %p2p_dev_started to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %p2p_dev_started, align 64
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wil_cfg80211_stop_p2p_device(ptr noundef %wiphy, ptr nocapture noundef readnone %wdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %p2p_dev_started = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %p2p_dev_started to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p2p_dev_started, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup_crit_edge, label %do.body2

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %wiphy_priv.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_stop_p2p_device.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_stop_p2p_device, %if.then7)) #10
          to label %do.end10 [label %if.then7], !srcloc !556

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_stop_p2p_device.__UNIQUE_ID_ddebug350, ptr noundef %3, ptr noundef nonnull @.str.203) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.203) #10
  %mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 53, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %vif_mutex = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 28
  tail call void @mutex_lock_nested(ptr noundef %vif_mutex, i32 noundef 0) #10
  tail call void @wil_p2p_stop_radio_operations(ptr noundef %priv.i) #10
  %4 = ptrtoint ptr %p2p_dev_started to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %p2p_dev_started, align 64
  tail call void @mutex_unlock(ptr noundef %vif_mutex) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %wiphy_priv.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_update_ft_ies(ptr noundef %wiphy, ptr noundef %dev, ptr nocapture noundef readonly %ftie) #0 align 64 {
entry:
  %reassoc = alloca %struct.wmi_ft_reassoc_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reassoc) #10
  %0 = getelementptr inbounds [6 x i8], ptr %reassoc, i32 0, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_update_ft_ies.__UNIQUE_ID_ddebug441, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_update_ft_ies, %if.then)) #10
          to label %do.end8 [label %if.then], !srcloc !556

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %main_ndev, align 4
  %mid = getelementptr i8, ptr %dev, i32 3276
  %3 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mid, align 4
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_cfg80211_update_ft_ies.__UNIQUE_ID_ddebug441, ptr noundef %2, ptr noundef nonnull @.str.205, i32 noundef %conv) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wiphy_priv.exit
  %mid9 = getelementptr i8, ptr %dev, i32 3276
  %5 = ptrtoint ptr %mid9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mid9, align 4
  %conv10 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %priv.i, ptr noundef nonnull @.str.205, i32 noundef %conv10) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_cfg80211_update_ft_ies.__UNIQUE_ID_ddebug442, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_cfg80211_update_ft_ies, %if.then25)) #10
          to label %do.end28 [label %if.then25], !srcloc !556

if.then25:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %ie = getelementptr inbounds %struct.cfg80211_update_ft_ies_params, ptr %ftie, i32 0, i32 1
  %7 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ie, align 4
  %ie_len = getelementptr inbounds %struct.cfg80211_update_ft_ies_params, ptr %ftie, i32 0, i32 2
  %9 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ie_len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.206, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %8, i32 noundef %10, i1 noundef zeroext true) #10
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.end8
  %fw_capabilities = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 1
  %11 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %fw_capabilities, align 4
  %13 = and i32 %12, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool30.not = icmp eq i32 %13, 0
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.204) #10
  br label %cleanup

if.end32:                                         ; preds = %do.end28
  %ie_len33 = getelementptr inbounds %struct.cfg80211_update_ft_ies_params, ptr %ftie, i32 0, i32 2
  %14 = ptrtoint ptr %ie_len33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ie_len33, align 4
  %conv34 = trunc i32 %15 to i16
  %ie35 = getelementptr inbounds %struct.cfg80211_update_ft_ies_params, ptr %ftie, i32 0, i32 1
  %16 = ptrtoint ptr %ie35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ie35, align 4
  %call36 = tail call i32 @wmi_update_ft_ies(ptr noundef %add.ptr.i, i16 noundef zeroext %conv34, ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %status = getelementptr i8, ptr %dev, i32 3280
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %status, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool42.not = icmp eq i32 %20, 0
  br i1 %tobool42.not, label %if.end39.cleanup_crit_edge, label %if.end44

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %bss45 = getelementptr i8, ptr %dev, i32 3408
  %21 = ptrtoint ptr %bss45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bss45, align 8
  %tobool46.not = icmp eq ptr %22, null
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.204) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %23 = ptrtoint ptr %reassoc to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %reassoc, align 8
  %bssid50 = getelementptr inbounds %struct.cfg80211_bss, ptr %22, i32 0, i32 11
  %24 = ptrtoint ptr %bssid50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bssid50, align 4
  store i32 %25, ptr %reassoc, align 8
  %add.ptr.i85 = getelementptr %struct.cfg80211_bss, ptr %22, i32 0, i32 11, i32 4
  %26 = ptrtoint ptr %add.ptr.i85 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i85, align 2
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %0, align 4
  %29 = ptrtoint ptr %mid9 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mid9, align 4
  %call53 = call i32 @wmi_send(ptr noundef %priv.i, i16 noundef zeroext 13, i8 noundef zeroext %30, ptr noundef nonnull %reassoc, i16 noundef zeroext 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end48.cleanup_crit_edge, label %if.then55

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.204, i32 noundef %call53) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end48.cleanup_crit_edge, %if.then47, %if.end39.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then31
  %retval.0 = phi i32 [ -22, %if.then47 ], [ -95, %if.then31 ], [ %call36, %if.end32.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ %call53, %if.then55 ], [ 0, %if.end48.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reassoc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_cfg80211_set_multicast_to_unicast(ptr noundef %wiphy, ptr nocapture noundef readnone %dev, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %multicast_to_unicast = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 18, i32 56, i32 38
  %0 = ptrtoint ptr %multicast_to_unicast to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %multicast_to_unicast, align 8
  %2 = zext i1 %enabled to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %conv1 = zext i1 %enabled to i32
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.209, ptr noundef nonnull @__func__.wil_cfg80211_set_multicast_to_unicast, i32 noundef %conv1) #10
  %3 = ptrtoint ptr %multicast_to_unicast to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %multicast_to_unicast, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %wiphy_priv.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_can_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_p2p_stop_radio_operations(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_abort_scan_all_vifs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wil_vif_alloc(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_vif_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_vif_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_check_combinations(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_vif_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wil_is_recovery_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wil_has_active_ifaces(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_port_delete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_port_allocate(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_del_cipher_key(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_get_wmi_edmg_channel(ptr noundef %wil, i8 noundef zeroext %edmg_bw_config, i8 noundef zeroext %edmg_channels, ptr nocapture noundef writeonly %wmi_ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %edmg_bw_config to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.235)
  switch i8 %edmg_bw_config, label %if.else9 [
    i8 0, label %if.then
    i8 5, label %if.then2
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %wmi_ch to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %wmi_ch, align 1
  br label %return

if.then2:                                         ; preds = %entry
  %2 = zext i8 %edmg_channels to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.236)
  switch i8 %edmg_channels, label %sw.default [
    i8 3, label %sw.bb
    i8 6, label %sw.bb4
    i8 12, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %wmi_ch to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %wmi_ch, align 1
  br label %return

sw.bb4:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %wmi_ch to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 7, ptr %wmi_ch, align 1
  br label %return

sw.bb6:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %wmi_ch to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %wmi_ch, align 1
  br label %return

sw.default:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %conv3 = zext i8 %edmg_channels to i32
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.wil_get_wmi_edmg_channel, i32 noundef %conv3) #10
  br label %return

if.else9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %edmg_bw_config to i32
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.wil_get_wmi_edmg_channel, i32 noundef %conv) #10
  br label %return

return:                                           ; preds = %if.else9, %sw.default, %sw.bb6, %sw.bb4, %sw.bb, %if.then
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb6 ], [ 0, %sw.bb4 ], [ 0, %sw.bb ], [ -22, %if.else9 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_print_bcon_data(ptr nocapture noundef readonly %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_bcon_data.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_bcon_data, %if.then)) #10
          to label %do.body3 [label %if.then], !srcloc !556

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 4
  %head_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %b, i32 0, i32 10
  %2 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head_len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.87, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %1, i32 noundef %3, i1 noundef zeroext true) #10
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_bcon_data.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_bcon_data, %if.then15)) #10
          to label %do.body18 [label %if.then15], !srcloc !556

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %tail = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %b, i32 0, i32 1
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail, align 4
  %tail_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %b, i32 0, i32 11
  %6 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail_len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.88, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %5, i32 noundef %7, i1 noundef zeroext true) #10
  br label %do.body18

do.body18:                                        ; preds = %if.then15, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_bcon_data.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_bcon_data, %if.then30)) #10
          to label %do.body33 [label %if.then30], !srcloc !556

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %beacon_ies = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %b, i32 0, i32 2
  %8 = ptrtoint ptr %beacon_ies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %beacon_ies, align 4
  %beacon_ies_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %b, i32 0, i32 12
  %10 = ptrtoint ptr %beacon_ies_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %beacon_ies_len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.89, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %9, i32 noundef %11, i1 noundef zeroext true) #10
  br label %do.body33

do.body33:                                        ; preds = %if.then30, %do.body18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_bcon_data.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_bcon_data, %if.then45)) #10
          to label %do.body48 [label %if.then45], !srcloc !556

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %probe_resp = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %b, i32 0, i32 5
  %12 = ptrtoint ptr %probe_resp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %probe_resp, align 4
  %probe_resp_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %b, i32 0, i32 15
  %14 = ptrtoint ptr %probe_resp_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %probe_resp_len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.90, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %13, i32 noundef %15, i1 noundef zeroext true) #10
  br label %do.body48

do.body48:                                        ; preds = %if.then45, %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_bcon_data.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_bcon_data, %if.then60)) #10
          to label %do.body63 [label %if.then60], !srcloc !556

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  %proberesp_ies = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %b, i32 0, i32 3
  %16 = ptrtoint ptr %proberesp_ies to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %proberesp_ies, align 4
  %proberesp_ies_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %b, i32 0, i32 13
  %18 = ptrtoint ptr %proberesp_ies_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %proberesp_ies_len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.91, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %17, i32 noundef %19, i1 noundef zeroext true) #10
  br label %do.body63

do.body63:                                        ; preds = %if.then60, %do.body48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_bcon_data.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_bcon_data, %if.then75)) #10
          to label %do.end77 [label %if.then75], !srcloc !556

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  %assocresp_ies = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %b, i32 0, i32 4
  %20 = ptrtoint ptr %assocresp_ies to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %assocresp_ies, align 4
  %assocresp_ies_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %b, i32 0, i32 14
  %22 = ptrtoint ptr %assocresp_ies_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %assocresp_ies_len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.92, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %21, i32 noundef %23, i1 noundef zeroext true) #10
  br label %do.end77

do.end77:                                         ; preds = %if.then75, %do.body63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wil_print_crypto(ptr noundef %wil, ptr nocapture noundef readonly %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_crypto.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_crypto, %if.then)) #10
          to label %do.end6 [label %if.then], !srcloc !556

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c, align 4
  %cipher_group = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 1
  %4 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cipher_group, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_print_crypto.__UNIQUE_ID_ddebug372, ptr noundef %1, ptr noundef nonnull @.str.94, i32 noundef %3, i32 noundef %5) #10
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c, align 4
  %cipher_group8 = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 1
  %8 = ptrtoint ptr %cipher_group8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cipher_group8, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.94, i32 noundef %7, i32 noundef %9) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_crypto.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_crypto, %if.then25)) #10
          to label %do.end31 [label %if.then25], !srcloc !556

if.then25:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev26 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %10 = ptrtoint ptr %main_ndev26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_ndev26, align 4
  %n_ciphers_pairwise = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 2
  %12 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_ciphers_pairwise, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_print_crypto.__UNIQUE_ID_ddebug373, ptr noundef %11, ptr noundef nonnull @.str.95, i32 noundef %13) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then25, %do.end6
  %n_ciphers_pairwise32 = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 2
  %14 = ptrtoint ptr %n_ciphers_pairwise32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_ciphers_pairwise32, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.95, i32 noundef %15) #10
  %16 = ptrtoint ptr %n_ciphers_pairwise32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_ciphers_pairwise32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp37288 = icmp sgt i32 %17, 0
  br i1 %cmp37288, label %do.body40.lr.ph, label %do.end31.do.body65_crit_edge

do.end31.do.body65_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body65

do.body40.lr.ph:                                  ; preds = %do.end31
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 5)
  %main_ndev53 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  br label %do.body40

do.body40:                                        ; preds = %do.end58.do.body40_crit_edge, %do.body40.lr.ph
  %i.0289 = phi i32 [ 0, %do.body40.lr.ph ], [ %inc, %do.end58.do.body40_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_crypto.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_crypto, %if.then52)) #10
          to label %do.end58 [label %if.then52], !srcloc !556

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %main_ndev53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %main_ndev53, align 4
  %arrayidx = getelementptr %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 3, i32 %i.0289
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_print_crypto.__UNIQUE_ID_ddebug376, ptr noundef %20, ptr noundef nonnull @.str.96, i32 noundef %i.0289, i32 noundef %22) #10
  br label %do.end58

do.end58:                                         ; preds = %if.then52, %do.body40
  %arrayidx60 = getelementptr %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 3, i32 %i.0289
  %23 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx60, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.96, i32 noundef %i.0289, i32 noundef %24) #10
  %inc = add nuw nsw i32 %i.0289, 1
  %exitcond.not = icmp eq i32 %inc, %18
  br i1 %exitcond.not, label %do.end58.do.body65_crit_edge, label %do.end58.do.body40_crit_edge

do.end58.do.body40_crit_edge:                     ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40

do.end58.do.body65_crit_edge:                     ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body65

do.body65:                                        ; preds = %do.end58.do.body65_crit_edge, %do.end31.do.body65_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_crypto.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_crypto, %if.then77)) #10
          to label %do.end83 [label %if.then77], !srcloc !556

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev78 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %25 = ptrtoint ptr %main_ndev78 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %main_ndev78, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_print_crypto.__UNIQUE_ID_ddebug377, ptr noundef %26, ptr noundef nonnull @.str.97) #10
  br label %do.end83

do.end83:                                         ; preds = %if.then77, %do.body65
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.97) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_crypto.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_crypto, %if.then100)) #10
          to label %do.end106 [label %if.then100], !srcloc !556

if.then100:                                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev101 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %27 = ptrtoint ptr %main_ndev101 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %main_ndev101, align 4
  %n_akm_suites = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 4
  %29 = ptrtoint ptr %n_akm_suites to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_akm_suites, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_print_crypto.__UNIQUE_ID_ddebug378, ptr noundef %28, ptr noundef nonnull @.str.98, i32 noundef %30) #10
  br label %do.end106

do.end106:                                        ; preds = %if.then100, %do.end83
  %n_akm_suites107 = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 4
  %31 = ptrtoint ptr %n_akm_suites107 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_akm_suites107, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.98, i32 noundef %32) #10
  %33 = ptrtoint ptr %n_akm_suites107 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_akm_suites107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp118291 = icmp sgt i32 %34, 0
  br i1 %cmp118291, label %do.body122.lr.ph, label %do.end106.do.body151_crit_edge

do.end106.do.body151_crit_edge:                   ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body151

do.body122.lr.ph:                                 ; preds = %do.end106
  %main_ndev135 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %.not = icmp eq i32 %34, 1
  %smax294 = select i1 %.not, i32 1, i32 2
  br label %do.body122

do.body122:                                       ; preds = %do.end141.do.body122_crit_edge, %do.body122.lr.ph
  %i.1292 = phi i32 [ 0, %do.body122.lr.ph ], [ %inc147, %do.end141.do.body122_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_crypto.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_crypto, %if.then134)) #10
          to label %do.end141 [label %if.then134], !srcloc !556

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %main_ndev135 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %main_ndev135, align 4
  %arrayidx136 = getelementptr %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 5, i32 %i.1292
  %37 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx136, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_print_crypto.__UNIQUE_ID_ddebug381, ptr noundef %36, ptr noundef nonnull @.str.96, i32 noundef %i.1292, i32 noundef %38) #10
  br label %do.end141

do.end141:                                        ; preds = %if.then134, %do.body122
  %arrayidx143 = getelementptr %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 5, i32 %i.1292
  %39 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx143, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.96, i32 noundef %i.1292, i32 noundef %40) #10
  %inc147 = add nuw nsw i32 %i.1292, 1
  %exitcond295.not = icmp eq i32 %inc147, %smax294
  br i1 %exitcond295.not, label %do.end141.do.body151_crit_edge, label %do.end141.do.body122_crit_edge

do.end141.do.body122_crit_edge:                   ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body122

do.end141.do.body151_crit_edge:                   ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body151

do.body151:                                       ; preds = %do.end141.do.body151_crit_edge, %do.end106.do.body151_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_crypto.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_crypto, %if.then163)) #10
          to label %do.end169 [label %if.then163], !srcloc !556

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev164 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %41 = ptrtoint ptr %main_ndev164 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %main_ndev164, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_print_crypto.__UNIQUE_ID_ddebug382, ptr noundef %42, ptr noundef nonnull @.str.97) #10
  br label %do.end169

do.end169:                                        ; preds = %if.then163, %do.body151
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.97) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_print_crypto.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_print_crypto, %if.then186)) #10
          to label %do.end196 [label %if.then186], !srcloc !556

if.then186:                                       ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev187 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %43 = ptrtoint ptr %main_ndev187 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %main_ndev187, align 4
  %control_port = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 6
  %45 = ptrtoint ptr %control_port to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %control_port, align 4, !range !557
  %47 = zext i8 %46 to i32
  %control_port_ethertype = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 7
  %48 = ptrtoint ptr %control_port_ethertype to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %control_port_ethertype, align 2
  %conv189 = zext i16 %49 to i32
  %control_port_no_encrypt = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 8
  %50 = ptrtoint ptr %control_port_no_encrypt to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %control_port_no_encrypt, align 4, !range !557
  %52 = zext i8 %51 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_print_crypto.__UNIQUE_ID_ddebug383, ptr noundef %44, ptr noundef nonnull @.str.99, i32 noundef %47, i32 noundef %conv189, i32 noundef %52) #10
  br label %do.end196

do.end196:                                        ; preds = %if.then186, %do.end169
  %control_port197 = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 6
  %53 = ptrtoint ptr %control_port197 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %control_port197, align 4, !range !557
  %55 = zext i8 %54 to i32
  %control_port_ethertype200 = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 7
  %56 = ptrtoint ptr %control_port_ethertype200 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %control_port_ethertype200, align 2
  %conv201 = zext i16 %57 to i32
  %control_port_no_encrypt202 = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %c, i32 0, i32 8
  %58 = ptrtoint ptr %control_port_no_encrypt202 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %control_port_no_encrypt202, align 4, !range !557
  %60 = zext i8 %59 to i32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.99, i32 noundef %55, i32 noundef %conv201, i32 noundef %60) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_new_sta(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil6210_disconnect(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wil_p2p_is_social_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_p2p_search(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @wil_p2p_stop_discovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_send(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_abort_scan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_ft_connect(ptr noundef %wiphy, ptr noundef %ndev, ptr nocapture noundef readonly %sme) unnamed_addr #0 align 64 {
entry:
  %auth_cmd = alloca %struct.wmi_ft_auth_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %auth_cmd) #10
  %0 = getelementptr inbounds [6 x i8], ptr %auth_cmd, i32 0, i32 4
  %1 = getelementptr inbounds %struct.wmi_ft_auth_cmd, ptr %auth_cmd, i32 0, i32 1
  %fw_capabilities = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 1
  %2 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fw_capabilities, align 4
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.168, ptr noundef nonnull @__func__.wil_ft_connect) #10
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %prev_bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 23
  %5 = ptrtoint ptr %prev_bssid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev_bssid, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.169, ptr noundef nonnull @__func__.wil_ft_connect) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 2
  %7 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bssid, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %xor.i = xor i32 %12, %10
  %add.ptr.i72 = getelementptr i8, ptr %6, i32 4
  %13 = ptrtoint ptr %add.ptr.i72 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i72, align 2
  %add.ptr1.i = getelementptr i8, ptr %8, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %16, %14
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.170, ptr noundef nonnull @__func__.wil_ft_connect) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %status = getelementptr i8, ptr %ndev, i32 3280
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %status, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.171, ptr noundef nonnull @__func__.wil_ft_connect) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %privacy = getelementptr i8, ptr %ndev, i32 3284
  %20 = ptrtoint ptr %privacy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %privacy, align 4
  %privacy15 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 9
  %22 = ptrtoint ptr %privacy15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %privacy15, align 4, !range !557
  %24 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %24)
  %cmp.not = icmp eq i32 %21, %24
  br i1 %cmp.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.172, ptr noundef nonnull @__func__.wil_ft_connect, i32 noundef %21, i32 noundef %24) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %pbss = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 21
  %25 = ptrtoint ptr %pbss to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pbss, align 4, !range !557
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool24.not = icmp eq i8 %26, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i, ptr noundef nonnull @.str.173, ptr noundef nonnull @__func__.wil_ft_connect) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %27 = getelementptr inbounds i8, ptr %auth_cmd, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 0, ptr %27, align 4
  %29 = ptrtoint ptr %sme to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sme, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %hw_value, align 2
  %conv27 = trunc i16 %32 to i8
  %sub = add i8 %conv27, -1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %sub, ptr %1, align 2
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %8, align 4
  %36 = ptrtoint ptr %auth_cmd to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %auth_cmd, align 4
  %37 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr1.i, align 2
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %0, align 4
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %priv.i, ptr noundef nonnull @.str.174, ptr noundef nonnull @__func__.wil_ft_connect) #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status) #10
  %mid = getelementptr i8, ptr %ndev, i32 3276
  %40 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mid, align 4
  %call35 = call i32 @wmi_send(ptr noundef %priv.i, i16 noundef zeroext 12, i8 noundef zeroext %41, ptr noundef nonnull %auth_cmd, i16 noundef zeroext 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %connect_timer = getelementptr i8, ptr %ndev, i32 3416
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %42, 500
  %call40 = call i32 @mod_timer(ptr noundef %connect_timer, i32 noundef %add) #10
  br label %cleanup

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 2, ptr noundef %status) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then38, %if.then25, %if.then18, %if.then13, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %if.then8 ], [ -22, %if.then18 ], [ -22, %if.then25 ], [ -22, %if.then13 ], [ -22, %if.then4 ], [ -95, %if.then ], [ %call35, %if.else ], [ 0, %if.then38 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %auth_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_get_elem(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_set_mgmt_retry(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_p2p_listen(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_p2p_cancel_listen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_ps_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_set_cqm_rssi_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_start_sched_scan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_stop_sched_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wmi_update_ft_ies(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_rf_sector_get_cfg(ptr noundef %wiphy, ptr noundef readonly %wdev, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  %tmp.i186 = alloca i32, align 4
  %tmp.i184 = alloca i32, align 4
  %tmp.i182 = alloca i32, align 4
  %tmp.i180 = alloca i32, align 4
  %tmp.i178 = alloca i32, align 4
  %tmp.i176 = alloca i32, align 4
  %tmp.i174 = alloca i8, align 1
  %tmp.i = alloca i64, align 8
  %tb = alloca [35 x ptr], align 4
  %cmd = alloca %struct.wmi_get_rf_sector_params_cmd, align 2
  %reply = alloca %struct.anon.170, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wdev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #10, !srcloc !561
  unreachable

do.end7.i:                                        ; preds = %entry
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wdev_priv.exit, !prof !558

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wdev_priv.exit:                                   ; preds = %do.end7.i
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %p2p_wdev.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p2p_wdev.i, align 4
  %cmp.i = icmp eq ptr %3, %wdev
  br i1 %cmp.i, label %if.then.i, label %wdev_priv.exit.wdev_to_vif.exit_crit_edge

wdev_priv.exit.wdev_to_vif.exit_crit_edge:        ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wdev_to_vif.exit

if.then.i:                                        ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2304
  br label %wdev_to_vif.exit

wdev_to_vif.exit:                                 ; preds = %if.then.i, %wdev_priv.exit.wdev_to_vif.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %wdev, %wdev_priv.exit.wdev_to_vif.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %tb) #10
  %6 = call ptr @memset(ptr %tb, i32 255, i32 140)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #10
  %7 = getelementptr inbounds %struct.wmi_get_rf_sector_params_cmd, ptr %cmd, i32 0, i32 1
  %8 = getelementptr inbounds %struct.wmi_get_rf_sector_params_cmd, ptr %cmd, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %reply) #10
  %9 = call ptr @memset(ptr %reply, i32 0, i32 216)
  %10 = getelementptr inbounds %struct.anon.170, ptr %reply, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %10, align 1
  %fw_capabilities = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 1
  %12 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %fw_capabilities, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %wdev_to_vif.exit.cleanup_crit_edge, label %if.end

wdev_to_vif.exit.cleanup_crit_edge:               ; preds = %wdev_to_vif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wdev_to_vif.exit
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 34, ptr noundef %data, i32 noundef %data_len, ptr noundef nonnull @wil_rf_sector_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__.wil_rf_sector_get_cfg) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [35 x ptr], ptr %tb, i32 0, i32 30
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %if.end7.if.then14_crit_edge, label %lor.lhs.false

if.end7.if.then14_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end7
  %arrayidx9 = getelementptr inbounds [35 x ptr], ptr %tb, i32 0, i32 31
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %lor.lhs.false.if.then14_crit_edge, label %lor.lhs.false11

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %arrayidx12 = getelementptr inbounds [35 x ptr], ptr %tb, i32 0, i32 32
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %20, null
  br i1 %tobool13.not, label %lor.lhs.false11.if.then14_crit_edge, label %if.end15

lor.lhs.false11.if.then14_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false11.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge, %if.end7.if.then14_crit_edge
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.214, ptr noundef nonnull @__func__.wil_rf_sector_get_cfg) #10
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false11
  %add.ptr.i.i163 = getelementptr i8, ptr %16, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i163 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i163, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %22)
  %cmp = icmp ugt i16 %22, 127
  br i1 %cmp, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %22 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.215, ptr noundef nonnull @__func__.wil_rf_sector_get_cfg, i32 noundef %conv) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %add.ptr.i.i164 = getelementptr i8, ptr %18, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i164 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i.i164, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp25 = icmp ugt i8 %24, 1
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %conv24 = zext i8 %24 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.216, ptr noundef nonnull @__func__.wil_rf_sector_get_cfg, i32 noundef %conv24) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %add.ptr.i.i165 = getelementptr i8, ptr %20, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i165 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %26)
  %cmp32 = icmp ugt i32 %26, 255
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.217, ptr noundef nonnull @__func__.wil_rf_sector_get_cfg, i32 noundef %26) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %27 = call i16 @llvm.bswap.i16(i16 %22)
  %28 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %cmd, align 2
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %24, ptr %7, align 2
  %conv37 = trunc i32 %26 to i8
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv37, ptr %8, align 1
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i, i32 0, i32 3
  %31 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mid, align 4
  %call39 = call i32 @wmi_call(ptr noundef %priv.i.i, i16 noundef zeroext 2464, i8 noundef zeroext %32, ptr noundef nonnull %cmd, i16 noundef zeroext 4, i16 noundef zeroext 6560, ptr noundef nonnull %reply, i16 noundef zeroext 216, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool43.not = icmp eq i8 %34, 0
  br i1 %tobool43.not, label %if.end51, label %if.then44

if.then44:                                        ; preds = %if.end42
  %conv47 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.218, ptr noundef nonnull @__func__.wil_rf_sector_get_cfg, i32 noundef %conv47) #10
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %36)
  %37 = icmp ult i8 %36, 4
  br i1 %37, label %switch.lookup, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51:                                         ; preds = %if.end42
  %call.i167 = call ptr @__cfg80211_alloc_reply_skb(ptr noundef %wiphy, i32 noundef 103, i32 noundef 197, i32 noundef 512) #10
  %tobool53.not = icmp eq ptr %call.i167, null
  br i1 %tobool53.not, label %if.end51.cleanup_crit_edge, label %if.end55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %tsf = getelementptr inbounds %struct.anon.170, ptr %reply, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %tsf to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %tsf, align 1
  %40 = call i64 @llvm.bswap.i64(i64 %39)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #10
  %41 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %tmp.i, align 8
  %call.i168 = call i32 @nla_put_64bit(ptr noundef nonnull %call.i167, i32 noundef 29, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool58.not = icmp eq i32 %call.i168, 0
  br i1 %tobool58.not, label %if.end60, label %if.end55.nla_put_failure_crit_edge

if.end55.nla_put_failure_crit_edge:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end60:                                         ; preds = %if.end55
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i167, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef nonnull %call.i167, i32 noundef 33, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i169 = icmp slt i32 %call1.i, 0
  %tobool62.not197 = icmp eq ptr %43, null
  %tobool62.not = select i1 %cmp.i169, i1 true, i1 %tobool62.not197
  br i1 %tobool62.not, label %if.end60.nla_put_failure_crit_edge, label %if.end60.for.body_crit_edge

if.end60.for.body_crit_edge:                      ; preds = %if.end60
  br label %for.body

if.end60.nla_put_failure_crit_edge:               ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end60.for.body_crit_edge
  %i.0195 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end60.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0195
  %and67 = and i32 %shl, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %for.body.for.inc_crit_edge, label %if.end70

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end70:                                         ; preds = %for.body
  %44 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i, align 8
  %call1.i171 = call i32 @nla_put(ptr noundef nonnull %call.i167, i32 noundef %i.0195, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i171)
  %cmp.i172 = icmp slt i32 %call1.i171, 0
  %tobool72.not194 = icmp eq ptr %45, null
  %tobool72.not = select i1 %cmp.i172, i1 true, i1 %tobool72.not194
  br i1 %tobool72.not, label %if.end70.nla_put_failure_crit_edge, label %if.end74

if.end70.nla_put_failure_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end74:                                         ; preds = %if.end70
  %arrayidx76 = getelementptr %struct.anon.170, ptr %reply, i32 0, i32 1, i32 3, i32 %i.0195
  %conv77 = trunc i32 %i.0195 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i174) #10
  %46 = ptrtoint ptr %tmp.i174 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv77, ptr %tmp.i174, align 1
  %call.i175 = call i32 @nla_put(ptr noundef nonnull %call.i167, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i174) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i174) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool79.not = icmp eq i32 %call.i175, 0
  br i1 %tobool79.not, label %lor.lhs.false80, label %if.end74.nla_put_failure_crit_edge

if.end74.nla_put_failure_crit_edge:               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

lor.lhs.false80:                                  ; preds = %if.end74
  %etype0 = getelementptr %struct.anon.170, ptr %reply, i32 0, i32 1, i32 3, i32 %i.0195, i32 2
  %47 = ptrtoint ptr %etype0 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %etype0, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i176) #10
  %50 = ptrtoint ptr %tmp.i176 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %tmp.i176, align 4
  %call.i177 = call i32 @nla_put(ptr noundef nonnull %call.i167, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i176) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i176) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool82.not = icmp eq i32 %call.i177, 0
  br i1 %tobool82.not, label %lor.lhs.false83, label %lor.lhs.false80.nla_put_failure_crit_edge

lor.lhs.false80.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

lor.lhs.false83:                                  ; preds = %lor.lhs.false80
  %etype1 = getelementptr %struct.anon.170, ptr %reply, i32 0, i32 1, i32 3, i32 %i.0195, i32 3
  %51 = ptrtoint ptr %etype1 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %etype1, align 1
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i178) #10
  %54 = ptrtoint ptr %tmp.i178 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %tmp.i178, align 4
  %call.i179 = call i32 @nla_put(ptr noundef nonnull %call.i167, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i178) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i178) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %tobool85.not = icmp eq i32 %call.i179, 0
  br i1 %tobool85.not, label %lor.lhs.false86, label %lor.lhs.false83.nla_put_failure_crit_edge

lor.lhs.false83.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

lor.lhs.false86:                                  ; preds = %lor.lhs.false83
  %etype2 = getelementptr %struct.anon.170, ptr %reply, i32 0, i32 1, i32 3, i32 %i.0195, i32 4
  %55 = ptrtoint ptr %etype2 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %etype2, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i180) #10
  %58 = ptrtoint ptr %tmp.i180 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %tmp.i180, align 4
  %call.i181 = call i32 @nla_put(ptr noundef nonnull %call.i167, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i180) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i180) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool88.not = icmp eq i32 %call.i181, 0
  br i1 %tobool88.not, label %lor.lhs.false89, label %lor.lhs.false86.nla_put_failure_crit_edge

lor.lhs.false86.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

lor.lhs.false89:                                  ; preds = %lor.lhs.false86
  %59 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %arrayidx76, align 1
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i182) #10
  %62 = ptrtoint ptr %tmp.i182 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tmp.i182, align 4
  %call.i183 = call i32 @nla_put(ptr noundef nonnull %call.i167, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i182) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i182) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool91.not = icmp eq i32 %call.i183, 0
  br i1 %tobool91.not, label %lor.lhs.false92, label %lor.lhs.false89.nla_put_failure_crit_edge

lor.lhs.false89.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

lor.lhs.false92:                                  ; preds = %lor.lhs.false89
  %psh_lo = getelementptr %struct.anon.170, ptr %reply, i32 0, i32 1, i32 3, i32 %i.0195, i32 1
  %63 = ptrtoint ptr %psh_lo to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %psh_lo, align 1
  %65 = call i32 @llvm.bswap.i32(i32 %64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i184) #10
  %66 = ptrtoint ptr %tmp.i184 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %tmp.i184, align 4
  %call.i185 = call i32 @nla_put(ptr noundef nonnull %call.i167, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i184) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i184) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool94.not = icmp eq i32 %call.i185, 0
  br i1 %tobool94.not, label %lor.lhs.false95, label %lor.lhs.false92.nla_put_failure_crit_edge

lor.lhs.false92.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

lor.lhs.false95:                                  ; preds = %lor.lhs.false92
  %dtype_swch_off = getelementptr %struct.anon.170, ptr %reply, i32 0, i32 1, i32 3, i32 %i.0195, i32 5
  %67 = ptrtoint ptr %dtype_swch_off to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %dtype_swch_off, align 1
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i186) #10
  %70 = ptrtoint ptr %tmp.i186 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %tmp.i186, align 4
  %call.i187 = call i32 @nla_put(ptr noundef nonnull %call.i167, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i186) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i186) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool97.not = icmp eq i32 %call.i187, 0
  br i1 %tobool97.not, label %if.end99, label %lor.lhs.false95.nla_put_failure_crit_edge

lor.lhs.false95.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end99:                                         ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %73 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i, ptr %45, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end99, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0195, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i190 = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast.i191 = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i192 = sub i32 %sub.ptr.lhs.cast.i190, %sub.ptr.rhs.cast.i191
  %conv.i193 = trunc i32 %sub.ptr.sub.i192 to i16
  %76 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i193, ptr %43, align 2
  %call102 = call i32 @cfg80211_vendor_cmd_reply(ptr noundef nonnull %call.i167) #10
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false95.nla_put_failure_crit_edge, %lor.lhs.false92.nla_put_failure_crit_edge, %lor.lhs.false89.nla_put_failure_crit_edge, %lor.lhs.false86.nla_put_failure_crit_edge, %lor.lhs.false83.nla_put_failure_crit_edge, %lor.lhs.false80.nla_put_failure_crit_edge, %if.end74.nla_put_failure_crit_edge, %if.end70.nla_put_failure_crit_edge, %if.end60.nla_put_failure_crit_edge, %if.end55.nla_put_failure_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i167, i32 noundef 0) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %77 = sext i8 %36 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wil_rf_sector_get_cfg, i32 0, i32 %77
  %78 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %78)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %nla_put_failure, %for.end, %if.end51.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then34, %if.then27, %if.then19, %if.then14, %if.then6, %wdev_to_vif.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then6 ], [ -22, %if.then19 ], [ -22, %if.then27 ], [ -22, %if.then34 ], [ -105, %nla_put_failure ], [ %call102, %for.end ], [ -22, %if.then14 ], [ -95, %wdev_to_vif.exit.cleanup_crit_edge ], [ %call39, %if.end35.cleanup_crit_edge ], [ -12, %if.end51.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -22, %if.then44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %reply) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #10
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_rf_sector_set_cfg(ptr nocapture noundef readnone %wiphy, ptr noundef readonly %wdev, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  %tb = alloca [35 x ptr], align 4
  %tb2 = alloca [8 x ptr], align 4
  %cmd = alloca %struct.wmi_set_rf_sector_params_cmd, align 2
  %reply = alloca %struct.anon.171, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wdev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #10, !srcloc !561
  unreachable

do.end7.i:                                        ; preds = %entry
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wdev_priv.exit, !prof !558

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wdev_priv.exit:                                   ; preds = %do.end7.i
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %p2p_wdev.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p2p_wdev.i, align 4
  %cmp.i = icmp eq ptr %3, %wdev
  br i1 %cmp.i, label %if.then.i, label %wdev_priv.exit.wdev_to_vif.exit_crit_edge

wdev_priv.exit.wdev_to_vif.exit_crit_edge:        ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wdev_to_vif.exit

if.then.i:                                        ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2304
  br label %wdev_to_vif.exit

wdev_to_vif.exit:                                 ; preds = %if.then.i, %wdev_priv.exit.wdev_to_vif.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %wdev, %wdev_priv.exit.wdev_to_vif.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %tb) #10
  %6 = call ptr @memset(ptr %tb, i32 255, i32 140)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tb2) #10
  %7 = getelementptr inbounds [8 x ptr], ptr %tb2, i32 0, i32 1
  %8 = getelementptr inbounds [8 x ptr], ptr %tb2, i32 0, i32 2
  %9 = getelementptr inbounds [8 x ptr], ptr %tb2, i32 0, i32 3
  %10 = getelementptr inbounds [8 x ptr], ptr %tb2, i32 0, i32 4
  %11 = getelementptr inbounds [8 x ptr], ptr %tb2, i32 0, i32 5
  %12 = getelementptr inbounds [8 x ptr], ptr %tb2, i32 0, i32 6
  %13 = getelementptr inbounds [8 x ptr], ptr %tb2, i32 0, i32 7
  %14 = call ptr @memset(ptr %tb2, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 196, ptr nonnull %cmd) #10
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %reply) #10
  %15 = call ptr @memcpy(ptr %reply, ptr @__const.wil_rf_sector_set_cfg.reply, i32 9)
  %fw_capabilities = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 1
  %16 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %fw_capabilities, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %wdev_to_vif.exit.cleanup_crit_edge, label %if.end

wdev_to_vif.exit.cleanup_crit_edge:               ; preds = %wdev_to_vif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wdev_to_vif.exit
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 34, ptr noundef %data, i32 noundef %data_len, ptr noundef nonnull @wil_rf_sector_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__.wil_rf_sector_set_cfg) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [35 x ptr], ptr %tb, i32 0, i32 30
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %20, null
  br i1 %tobool8.not, label %if.end7.if.then14_crit_edge, label %lor.lhs.false

if.end7.if.then14_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end7
  %arrayidx9 = getelementptr inbounds [35 x ptr], ptr %tb, i32 0, i32 31
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %22, null
  br i1 %tobool10.not, label %lor.lhs.false.if.then14_crit_edge, label %lor.lhs.false11

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %arrayidx12 = getelementptr inbounds [35 x ptr], ptr %tb, i32 0, i32 33
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %24, null
  br i1 %tobool13.not, label %lor.lhs.false11.if.then14_crit_edge, label %if.end15

lor.lhs.false11.if.then14_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false11.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge, %if.end7.if.then14_crit_edge
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.214, ptr noundef nonnull @__func__.wil_rf_sector_set_cfg) #10
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false11
  %add.ptr.i.i138 = getelementptr i8, ptr %20, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i138 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i138, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %26)
  %cmp = icmp ugt i16 %26, 127
  br i1 %cmp, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %26 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.215, ptr noundef nonnull @__func__.wil_rf_sector_set_cfg, i32 noundef %conv) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %add.ptr.i.i139 = getelementptr i8, ptr %22, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i139 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i.i139, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp25 = icmp ugt i8 %28, 1
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %conv24 = zext i8 %28 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.216, ptr noundef nonnull @__func__.wil_rf_sector_set_cfg, i32 noundef %conv24) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %29 = getelementptr inbounds i8, ptr %cmd, i32 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 192)
  %31 = call i16 @llvm.bswap.i16(i16 %26)
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %cmd, align 2
  %sector_type30 = getelementptr inbounds %struct.wmi_set_rf_sector_params_cmd, ptr %cmd, i32 0, i32 1
  %33 = ptrtoint ptr %sector_type30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %28, ptr %sector_type30, align 2
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %35)
  %cmp.i140159 = icmp ugt i16 %35, 7
  br i1 %cmp.i140159, label %land.lhs.true.i.preheader, label %if.end29.for.end_crit_edge

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.i.preheader:                        ; preds = %if.end29
  %conv.i = zext i16 %35 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i = getelementptr i8, ptr %24, i32 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end72.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %nl_cfg.0162 = phi ptr [ %add.ptr.i152, %if.end72.land.lhs.true.i_crit_edge ], [ %add.ptr.i, %land.lhs.true.i.preheader ]
  %rf_modules_vec.0161 = phi i32 [ %or, %if.end72.land.lhs.true.i_crit_edge ], [ 0, %land.lhs.true.i.preheader ]
  %tmp.0160 = phi i32 [ %sub1.i, %if.end72.land.lhs.true.i_crit_edge ], [ %sub.i, %land.lhs.true.i.preheader ]
  %36 = ptrtoint ptr %nl_cfg.0162 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %nl_cfg.0162, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %37)
  %cmp1.i = icmp ult i16 %37, 4
  %conv.i141 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.0160, i32 %conv.i141)
  %cmp5.i.not = icmp ult i32 %tmp.0160, %conv.i141
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.for.end_crit_edge, label %for.body

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %land.lhs.true.i
  %add.ptr.i.i142 = getelementptr i8, ptr %nl_cfg.0162, i32 4
  %38 = ptrtoint ptr %nl_cfg.0162 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nl_cfg.0162, align 2
  %conv.i.i = zext i16 %39 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb2, i32 noundef 7, ptr noundef %add.ptr.i.i142, i32 noundef %sub.i.i, ptr noundef nonnull @wil_rf_sector_cfg_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool39.not = icmp eq i32 %call2.i, 0
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.219, ptr noundef nonnull @__func__.wil_rf_sector_set_cfg) #10
  br label %cleanup

if.end41:                                         ; preds = %for.body
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 4
  %tobool43.not = icmp eq ptr %41, null
  br i1 %tobool43.not, label %if.end41.if.then62_crit_edge, label %lor.lhs.false44

if.end41.if.then62_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false44:                                  ; preds = %if.end41
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %8, align 4
  %tobool46.not = icmp eq ptr %43, null
  br i1 %tobool46.not, label %lor.lhs.false44.if.then62_crit_edge, label %lor.lhs.false47

lor.lhs.false44.if.then62_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %9, align 4
  %tobool49.not = icmp eq ptr %45, null
  br i1 %tobool49.not, label %lor.lhs.false47.if.then62_crit_edge, label %lor.lhs.false50

lor.lhs.false47.if.then62_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %46 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %10, align 4
  %tobool52.not = icmp eq ptr %47, null
  br i1 %tobool52.not, label %lor.lhs.false50.if.then62_crit_edge, label %lor.lhs.false53

lor.lhs.false50.if.then62_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %48 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %11, align 4
  %tobool55.not = icmp eq ptr %49, null
  br i1 %tobool55.not, label %lor.lhs.false53.if.then62_crit_edge, label %lor.lhs.false56

lor.lhs.false53.if.then62_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false56:                                  ; preds = %lor.lhs.false53
  %50 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %12, align 4
  %tobool58.not = icmp eq ptr %51, null
  br i1 %tobool58.not, label %lor.lhs.false56.if.then62_crit_edge, label %lor.lhs.false59

lor.lhs.false56.if.then62_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %52 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %13, align 4
  %tobool61.not = icmp eq ptr %53, null
  br i1 %tobool61.not, label %lor.lhs.false59.if.then62_crit_edge, label %if.end63

lor.lhs.false59.if.then62_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false59.if.then62_crit_edge, %lor.lhs.false56.if.then62_crit_edge, %lor.lhs.false53.if.then62_crit_edge, %lor.lhs.false50.if.then62_crit_edge, %lor.lhs.false47.if.then62_crit_edge, %lor.lhs.false44.if.then62_crit_edge, %if.end41.if.then62_crit_edge
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.220, ptr noundef nonnull @__func__.wil_rf_sector_set_cfg) #10
  br label %cleanup

if.end63:                                         ; preds = %lor.lhs.false59
  %add.ptr.i.i143 = getelementptr i8, ptr %41, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i143 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add.ptr.i.i143, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %55)
  %cmp68 = icmp ugt i8 %55, 7
  %conv67.le = zext i8 %55 to i32
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %conv67.le.le = zext i8 %55 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.221, ptr noundef nonnull @__func__.wil_rf_sector_set_cfg, i32 noundef %conv67.le.le) #10
  br label %cleanup

if.end72:                                         ; preds = %if.end63
  %shl = shl nuw nsw i32 1, %conv67.le
  %or = or i32 %shl, %rf_modules_vec.0161
  %arrayidx74 = getelementptr %struct.wmi_set_rf_sector_params_cmd, ptr %cmd, i32 0, i32 3, i32 %conv67.le
  %add.ptr.i.i144 = getelementptr i8, ptr %43, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i144, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  %etype0 = getelementptr %struct.wmi_set_rf_sector_params_cmd, ptr %cmd, i32 0, i32 3, i32 %conv67.le, i32 2
  %59 = ptrtoint ptr %etype0 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %etype0, align 2
  %add.ptr.i.i145 = getelementptr i8, ptr %45, i32 4
  %60 = ptrtoint ptr %add.ptr.i.i145 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i.i145, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %etype1 = getelementptr %struct.wmi_set_rf_sector_params_cmd, ptr %cmd, i32 0, i32 3, i32 %conv67.le, i32 3
  %63 = ptrtoint ptr %etype1 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %etype1, align 2
  %add.ptr.i.i146 = getelementptr i8, ptr %47, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i146 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i.i146, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  %etype2 = getelementptr %struct.wmi_set_rf_sector_params_cmd, ptr %cmd, i32 0, i32 3, i32 %conv67.le, i32 4
  %67 = ptrtoint ptr %etype2 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %etype2, align 2
  %add.ptr.i.i147 = getelementptr i8, ptr %49, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i147 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.i147, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %arrayidx74, align 2
  %add.ptr.i.i148 = getelementptr i8, ptr %51, i32 4
  %72 = ptrtoint ptr %add.ptr.i.i148 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i148, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  %psh_lo = getelementptr %struct.wmi_set_rf_sector_params_cmd, ptr %cmd, i32 0, i32 3, i32 %conv67.le, i32 1
  %75 = ptrtoint ptr %psh_lo to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %psh_lo, align 2
  %add.ptr.i.i149 = getelementptr i8, ptr %53, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i149 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i149, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %dtype_swch_off = getelementptr %struct.wmi_set_rf_sector_params_cmd, ptr %cmd, i32 0, i32 3, i32 %conv67.le, i32 5
  %79 = ptrtoint ptr %dtype_swch_off to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %dtype_swch_off, align 2
  %80 = ptrtoint ptr %nl_cfg.0162 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %nl_cfg.0162, align 2
  %conv.i150 = zext i16 %81 to i32
  %sub.i151 = add nuw nsw i32 %conv.i150, 3
  %and.i = and i32 %sub.i151, 131068
  %sub1.i = sub nsw i32 %tmp.0160, %and.i
  %add.ptr.i152 = getelementptr i8, ptr %nl_cfg.0162, i32 %and.i
  %cmp.i140 = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i140, label %if.end72.land.lhs.true.i_crit_edge, label %if.end72.for.end_crit_edge

if.end72.for.end_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end72.land.lhs.true.i_crit_edge:               ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.end:                                          ; preds = %if.end72.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge, %if.end29.for.end_crit_edge
  %rf_modules_vec.0.lcssa = phi i32 [ 0, %if.end29.for.end_crit_edge ], [ %or, %if.end72.for.end_crit_edge ], [ %rf_modules_vec.0161, %land.lhs.true.i.for.end_crit_edge ]
  %conv88 = trunc i32 %rf_modules_vec.0.lcssa to i8
  %rf_modules_vec89 = getelementptr inbounds %struct.wmi_set_rf_sector_params_cmd, ptr %cmd, i32 0, i32 2
  %82 = ptrtoint ptr %rf_modules_vec89 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv88, ptr %rf_modules_vec89, align 1
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i, i32 0, i32 3
  %83 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %mid, align 4
  %call90 = call i32 @wmi_call(ptr noundef %priv.i.i, i16 noundef zeroext 2465, i8 noundef zeroext %84, ptr noundef nonnull %cmd, i16 noundef zeroext 196, i16 noundef zeroext 6561, ptr noundef nonnull %reply, i16 noundef zeroext 9, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end93:                                         ; preds = %for.end
  %evt = getelementptr inbounds %struct.anon.171, ptr %reply, i32 0, i32 1
  %85 = ptrtoint ptr %evt to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %evt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %86)
  %87 = icmp ult i8 %86, 4
  br i1 %87, label %switch.lookup, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %88 = sext i8 %86 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wil_rf_sector_set_cfg, i32 0, i32 %88
  %89 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %89)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end93.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then70, %if.then62, %if.then40, %if.then27, %if.then19, %if.then14, %if.then6, %wdev_to_vif.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then6 ], [ -22, %if.then19 ], [ -22, %if.then27 ], [ -22, %if.then40 ], [ -22, %if.then70 ], [ -22, %if.then62 ], [ -22, %if.then14 ], [ -95, %wdev_to_vif.exit.cleanup_crit_edge ], [ %call90, %for.end.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -22, %if.end93.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %reply) #10
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %cmd) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tb2) #10
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_rf_sector_get_selected(ptr noundef %wiphy, ptr noundef %wdev, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  %tmp.i108 = alloca i16, align 2
  %tmp.i = alloca i64, align 8
  %tb = alloca [35 x ptr], align 4
  %mac_addr = alloca [6 x i8], align 4
  %cmd = alloca %struct.wmi_get_selected_rf_sector_index_cmd, align 4
  %reply = alloca %struct.anon.172, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wdev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #10, !srcloc !561
  unreachable

do.end7.i:                                        ; preds = %entry
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wdev_priv.exit, !prof !558

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wdev_priv.exit:                                   ; preds = %do.end7.i
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %p2p_wdev.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p2p_wdev.i, align 4
  %cmp.i = icmp eq ptr %3, %wdev
  br i1 %cmp.i, label %if.then.i, label %wdev_priv.exit.wdev_to_vif.exit_crit_edge

wdev_priv.exit.wdev_to_vif.exit_crit_edge:        ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wdev_to_vif.exit

if.then.i:                                        ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2304
  br label %wdev_to_vif.exit

wdev_to_vif.exit:                                 ; preds = %if.then.i, %wdev_priv.exit.wdev_to_vif.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %wdev, %wdev_priv.exit.wdev_to_vif.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %tb) #10
  %6 = call ptr @memset(ptr %tb, i32 255, i32 140)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #10
  %7 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %8 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #10
  %9 = getelementptr inbounds %struct.wmi_get_selected_rf_sector_index_cmd, ptr %cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %reply) #10
  %10 = call ptr @memcpy(ptr %reply, ptr @__const.wil_rf_sector_get_selected.reply, i32 24)
  %fw_capabilities = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 1
  %11 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %fw_capabilities, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %wdev_to_vif.exit.cleanup_crit_edge, label %if.end

wdev_to_vif.exit.cleanup_crit_edge:               ; preds = %wdev_to_vif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wdev_to_vif.exit
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 34, ptr noundef %data, i32 noundef %data_len, ptr noundef nonnull @wil_rf_sector_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__.wil_rf_sector_get_selected) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [35 x ptr], ptr %tb, i32 0, i32 31
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.214, ptr noundef nonnull @__func__.wil_rf_sector_get_selected) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %add.ptr.i.i103 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i103 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp = icmp ugt i8 %17, 1
  br i1 %cmp, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %17 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.216, ptr noundef nonnull @__func__.wil_rf_sector_get_selected, i32 noundef %conv) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %arrayidx17 = getelementptr inbounds [35 x ptr], ptr %tb, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %mac_addr, align 4
  %add.ptr.i104 = getelementptr i8, ptr %19, i32 8
  %23 = ptrtoint ptr %add.ptr.i104 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i104, align 2
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %7, align 4
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i, i32 0, i32 3
  %26 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mid, align 4
  %call24 = call i32 @wil_find_cid(ptr noundef %priv.i.i, i8 noundef zeroext %27, ptr noundef nonnull %mac_addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.then19.if.end35_crit_edge

if.then19.if.end35_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.222, ptr noundef nonnull @__func__.wil_rf_sector_get_selected, ptr noundef nonnull %mac_addr) #10
  br label %cleanup

if.else:                                          ; preds = %if.end16
  %status = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i, i32 0, i32 4
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %status, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool32.not = icmp eq i32 %30, 0
  br i1 %tobool32.not, label %if.else.if.end35_crit_edge, label %if.then33

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.223, ptr noundef nonnull @__func__.wil_rf_sector_get_selected) #10
  br label %cleanup

if.end35:                                         ; preds = %if.else.if.end35_crit_edge, %if.then19.if.end35_crit_edge
  %cid.0 = phi i32 [ %call24, %if.then19.if.end35_crit_edge ], [ 0, %if.else.if.end35_crit_edge ]
  %31 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %cmd, align 4
  %conv36 = trunc i32 %cid.0 to i8
  store i8 %conv36, ptr %cmd, align 4
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %17, ptr %9, align 1
  %mid39 = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i, i32 0, i32 3
  %33 = ptrtoint ptr %mid39 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mid39, align 4
  %call40 = call i32 @wmi_call(ptr noundef %priv.i.i, i16 noundef zeroext 2466, i8 noundef zeroext %34, ptr noundef nonnull %cmd, i16 noundef zeroext 4, i16 noundef zeroext 6562, ptr noundef nonnull %reply, i16 noundef zeroext 24, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %evt = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1
  %status44 = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %status44 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %status44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool45.not = icmp eq i8 %36, 0
  br i1 %tobool45.not, label %if.end53, label %if.then46

if.then46:                                        ; preds = %if.end43
  %conv49 = zext i8 %36 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.wil_rf_sector_get_selected, i32 noundef %conv49) #10
  %37 = ptrtoint ptr %status44 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %status44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %38)
  %39 = icmp ult i8 %38, 4
  br i1 %39, label %switch.lookup, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53:                                         ; preds = %if.end43
  %call.i106 = call ptr @__cfg80211_alloc_reply_skb(ptr noundef %wiphy, i32 noundef 103, i32 noundef 197, i32 noundef 512) #10
  %tobool55.not = icmp eq ptr %call.i106, null
  br i1 %tobool55.not, label %if.end53.cleanup_crit_edge, label %if.end57

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %tsf = getelementptr inbounds %struct.anon.172, ptr %reply, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %tsf to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %tsf, align 1
  %42 = call i64 @llvm.bswap.i64(i64 %41)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #10
  %43 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %tmp.i, align 8
  %call.i107 = call i32 @nla_put_64bit(ptr noundef nonnull %call.i106, i32 noundef 29, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool60.not = icmp eq i32 %call.i107, 0
  br i1 %tobool60.not, label %lor.lhs.false, label %if.end57.nla_put_failure_crit_edge

if.end57.nla_put_failure_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.end57
  %44 = ptrtoint ptr %evt to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %evt, align 1
  %46 = call i16 @llvm.bswap.i16(i16 %45)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i108) #10
  %47 = ptrtoint ptr %tmp.i108 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %tmp.i108, align 2
  %call.i109 = call i32 @nla_put(ptr noundef nonnull %call.i106, i32 noundef 30, i32 noundef 2, ptr noundef nonnull %tmp.i108) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i108) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool63.not = icmp eq i32 %call.i109, 0
  br i1 %tobool63.not, label %if.end65, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end65:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = call i32 @cfg80211_vendor_cmd_reply(ptr noundef nonnull %call.i106) #10
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false.nla_put_failure_crit_edge, %if.end57.nla_put_failure_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i106, i32 noundef 0) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %48 = sext i8 %38 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wil_rf_sector_get_selected, i32 0, i32 %48
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %nla_put_failure, %if.end65, %if.end53.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then33, %if.then27, %if.then14, %if.then9, %if.then6, %wdev_to_vif.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then6 ], [ -22, %if.then14 ], [ -2, %if.then27 ], [ -105, %nla_put_failure ], [ %call66, %if.end65 ], [ -22, %if.then33 ], [ -22, %if.then9 ], [ -95, %wdev_to_vif.exit.cleanup_crit_edge ], [ %call40, %if.end35.cleanup_crit_edge ], [ -12, %if.end53.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -22, %if.then46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %reply) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #10
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil_rf_sector_set_selected(ptr nocapture noundef readnone %wiphy, ptr noundef %wdev, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  %tb = alloca [35 x ptr], align 4
  %mac_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wdev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !558

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #10, !srcloc !561
  unreachable

do.end7.i:                                        ; preds = %entry
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wdev_priv.exit, !prof !558

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #10, !srcloc !559
  unreachable

wdev_priv.exit:                                   ; preds = %do.end7.i
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %p2p_wdev.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 18, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %p2p_wdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p2p_wdev.i, align 4
  %cmp.i = icmp eq ptr %3, %wdev
  br i1 %cmp.i, label %if.then.i, label %wdev_priv.exit.wdev_to_vif.exit_crit_edge

wdev_priv.exit.wdev_to_vif.exit_crit_edge:        ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wdev_to_vif.exit

if.then.i:                                        ; preds = %wdev_priv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %main_ndev.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2304
  br label %wdev_to_vif.exit

wdev_to_vif.exit:                                 ; preds = %if.then.i, %wdev_priv.exit.wdev_to_vif.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %wdev, %wdev_priv.exit.wdev_to_vif.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %tb) #10
  %6 = call ptr @memset(ptr %tb, i32 255, i32 140)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #10
  %7 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %fw_capabilities = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 1
  %8 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  %9 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %fw_capabilities, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %wdev_to_vif.exit.cleanup_crit_edge, label %if.end

wdev_to_vif.exit.cleanup_crit_edge:               ; preds = %wdev_to_vif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %wdev_to_vif.exit
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 34, ptr noundef %data, i32 noundef %data_len, ptr noundef nonnull @wil_rf_sector_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__.wil_rf_sector_set_selected) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [35 x ptr], ptr %tb, i32 0, i32 30
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end7.if.then11_crit_edge, label %lor.lhs.false

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end7
  %arrayidx9 = getelementptr inbounds [35 x ptr], ptr %tb, i32 0, i32 31
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %lor.lhs.false.if.then11_crit_edge, label %if.end12

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end7.if.then11_crit_edge
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.214, ptr noundef nonnull @__func__.wil_rf_sector_set_selected) #10
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %add.ptr.i.i142 = getelementptr i8, ptr %13, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i142 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i142, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp17.not = icmp eq i16 %17, -1
  %18 = add i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 129, i16 %18)
  %19 = icmp ult i16 %18, 129
  br i1 %19, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %17 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.215, ptr noundef nonnull @__func__.wil_rf_sector_set_selected, i32 noundef %conv) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %add.ptr.i.i143 = getelementptr i8, ptr %15, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i143 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i.i143, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp25 = icmp ugt i8 %21, 1
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %conv24 = zext i8 %21 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.216, ptr noundef nonnull @__func__.wil_rf_sector_set_selected, i32 noundef %conv24) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %arrayidx30 = getelementptr inbounds [35 x ptr], ptr %tb, i32 0, i32 6
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %23, null
  br i1 %tobool31.not, label %if.else52, label %if.then32

if.then32:                                        ; preds = %if.end29
  %add.ptr.i = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 4
  %26 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mac_addr, align 4
  %add.ptr.i144 = getelementptr i8, ptr %23, i32 8
  %27 = ptrtoint ptr %add.ptr.i144 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i144, align 2
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %7, align 4
  %30 = lshr i32 %25, 16
  %31 = trunc i32 %30 to i16
  %32 = trunc i32 %25 to i16
  %and9.i = and i16 %28, %31
  %and510.i = and i16 %and9.i, %32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i146 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i146, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.then32
  %mid = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i, i32 0, i32 3
  %33 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mid, align 4
  %call40 = call i32 @wil_find_cid(ptr noundef %priv.i.i, i8 noundef zeroext %34, ptr noundef nonnull %mac_addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.then38.if.then61_crit_edge

if.then38.if.then61_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.then43:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.222, ptr noundef nonnull @__func__.wil_rf_sector_set_selected, ptr noundef nonnull %mac_addr) #10
  br label %cleanup

if.else:                                          ; preds = %if.then32
  br i1 %cmp17.not, label %if.else65, label %if.then49

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.wil_rf_sector_set_selected) #10
  br label %cleanup

if.else52:                                        ; preds = %if.end29
  %status = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i, i32 0, i32 4
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %status, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool55.not = icmp eq i32 %37, 0
  br i1 %tobool55.not, label %if.else52.if.then61_crit_edge, label %if.then56

if.else52.if.then61_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.then56:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.223, ptr noundef nonnull @__func__.wil_rf_sector_set_selected) #10
  br label %cleanup

if.then61:                                        ; preds = %if.else52.if.then61_crit_edge, %if.then38.if.then61_crit_edge
  %cid.0.ph = phi i32 [ 0, %if.else52.if.then61_crit_edge ], [ %call40, %if.then38.if.then61_crit_edge ]
  %mid62 = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i, i32 0, i32 3
  %38 = ptrtoint ptr %mid62 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mid62, align 4
  %conv63 = trunc i32 %cid.0.ph to i8
  %call64 = call fastcc i32 @wil_rf_sector_wmi_set_selected(ptr noundef %priv.i.i, i8 noundef zeroext %39, i16 noundef zeroext %17, i8 noundef zeroext %21, i8 noundef zeroext %conv63)
  br label %cleanup

if.else65:                                        ; preds = %if.else
  %mid66 = getelementptr inbounds %struct.wil6210_vif, ptr %retval.0.i, i32 0, i32 3
  %40 = ptrtoint ptr %mid66 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mid66, align 4
  %call67 = call fastcc i32 @wil_rf_sector_wmi_set_selected(ptr noundef %priv.i.i, i8 noundef zeroext %41, i16 noundef zeroext -1, i8 noundef zeroext %21, i8 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call67)
  %cmp68 = icmp eq i32 %call67, -22
  br i1 %cmp68, label %for.cond.preheader, label %if.else65.cleanup_crit_edge

if.else65.cleanup_crit_edge:                      ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.else65
  %max_assoc_sta = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 47
  %42 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_assoc_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp72152.not = icmp eq i32 %43, 0
  br i1 %cmp72152.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %conv71156 = phi i32 [ %conv71, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0154 = phi i8 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %rc.0153 = phi i32 [ %rc.1, %for.inc.for.body_crit_edge ], [ -22, %for.cond.preheader.for.body_crit_edge ]
  %mid75 = getelementptr %struct.wil6210_priv, ptr %priv.i.i, i32 0, i32 63, i32 %conv71156, i32 1
  %44 = ptrtoint ptr %mid75 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mid75, align 2
  %46 = ptrtoint ptr %mid66 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mid66, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp79.not = icmp eq i8 %45, %47
  br i1 %cmp79.not, label %if.end82, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end82:                                         ; preds = %for.body
  %call84 = call fastcc i32 @wil_rf_sector_wmi_set_selected(ptr noundef %priv.i.i, i8 noundef zeroext %45, i16 noundef zeroext -1, i8 noundef zeroext %21, i8 noundef zeroext %i.0154)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end82.for.inc_crit_edge, label %if.then86

if.end82.for.inc_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %priv.i.i, ptr noundef nonnull @.str.226, ptr noundef nonnull @__func__.wil_rf_sector_set_selected, i32 noundef %conv71156, i32 noundef %call84) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end82.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %rc.1 = phi i32 [ %rc.0153, %for.body.for.inc_crit_edge ], [ 0, %if.end82.for.inc_crit_edge ]
  %inc = add i8 %i.0154, 1
  %conv71 = zext i8 %inc to i32
  %48 = ptrtoint ptr %max_assoc_sta to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_assoc_sta, align 8
  %cmp72 = icmp ugt i32 %49, %conv71
  br i1 %cmp72, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then86, %for.cond.preheader.cleanup_crit_edge, %if.else65.cleanup_crit_edge, %if.then61, %if.then56, %if.then49, %if.then43, %if.then27, %if.then19, %if.then11, %if.then6, %wdev_to_vif.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then6 ], [ -22, %if.then19 ], [ -22, %if.then27 ], [ -22, %if.then49 ], [ -2, %if.then43 ], [ -22, %if.then56 ], [ -22, %if.then11 ], [ -95, %wdev_to_vif.exit.cleanup_crit_edge ], [ %call64, %if.then61 ], [ %call84, %if.then86 ], [ %call67, %if.else65.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ %rc.1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #10
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_vendor_cmd_reply(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__cfg80211_alloc_reply_skb(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_rf_sector_wmi_set_selected(ptr noundef %wil, i8 noundef zeroext %mid, i16 noundef zeroext %sector_index, i8 noundef zeroext %sector_type, i8 noundef zeroext %cid) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.wmi_set_selected_rf_sector_index_cmd, align 4
  %reply = alloca %struct.anon.173, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds %struct.wmi_set_selected_rf_sector_index_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wmi_set_selected_rf_sector_index_cmd, ptr %cmd, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply) #10
  %2 = call ptr @memcpy(ptr %reply, ptr @__const.wil_rf_sector_wmi_set_selected.reply, i32 12)
  %3 = tail call i16 @llvm.bswap.i16(i16 %sector_index)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %1, align 2
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %sector_type, ptr %0, align 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cid, ptr %cmd, align 4
  %call = call i32 @wmi_call(ptr noundef %wil, i16 noundef zeroext 2467, i8 noundef zeroext %mid, ptr noundef nonnull %cmd, i16 noundef zeroext 4, i16 noundef zeroext 6563, ptr noundef nonnull %reply, i16 noundef zeroext 12, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %evt = getelementptr inbounds %struct.anon.173, ptr %reply, i32 0, i32 1
  %7 = ptrtoint ptr %evt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %evt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %9 = icmp ult i8 %8, 4
  br i1 %9, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = sext i8 %8 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wil_rf_sector_wmi_set_selected, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 247)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 247)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !17, !18, !19, !21, !22, !24, !25, !26, !28, !30, !31, !33, !34, !36, !38, !39, !41, !42, !43, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !84, !86, !88, !89, !91, !92, !94, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !139, !141, !143, !145, !147, !148, !149, !151, !153, !155, !157, !158, !159, !161, !162, !164, !165, !166, !168, !170, !171, !172, !174, !175, !176, !178, !180, !182, !183, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !201, !202, !204, !206, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !243, !245, !246, !248, !249, !250, !252, !253, !255, !256, !257, !259, !260, !261, !263, !265, !267, !268, !269, !271, !272, !273, !275, !276, !278, !280, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !303, !305, !307, !308, !310, !311, !313, !314, !316, !318, !320, !322, !323, !325, !326, !328, !329, !331, !332, !334, !335, !336, !338, !339, !341, !342, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !399, !401, !403, !405, !407, !409, !411, !413, !414, !415, !417, !419, !421, !422, !423, !425, !426, !427, !429, !430, !431, !433, !434, !435, !437, !438, !440, !442, !443, !445, !446, !447, !448, !450, !451, !453, !454, !456, !458, !459, !461, !462, !464, !465, !466, !468, !469, !470, !472, !473, !474, !476, !477, !478, !480, !481, !482, !484, !485, !487, !489, !491, !492, !494, !495, !496, !498, !500, !502, !504, !506, !508, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545}
!llvm.module.flags = !{!547, !548, !549, !550, !551, !552, !553, !554}
!llvm.ident = !{!555}

!0 = !{ptr @__param_disable_ap_sme, !1, !"__param_disable_ap_sme", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_ap_smetype343, !1, !"__UNIQUE_ID_disable_ap_smetype343", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_disable_ap_sme344, !4, !"__UNIQUE_ID_disable_ap_sme344", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 35, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 119, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @update_supported_bands.__UNIQUE_ID_ddebug345, !6, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!11 = !{ptr @wil_iftype_nl2wmi.__nl2wmi, !12, !"__nl2wmi", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 332, i32 4}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 458, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @wil_cid_fill_sinfo.__UNIQUE_ID_ddebug346, !14, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!17 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 763, i32 4}
!21 = !{ptr @__func__.wil_vif_prepare_stop, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1445, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @wil_cfg80211_mgmt_tx.__UNIQUE_ID_ddebug388, !23, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1456, i32 3}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1461, i32 3}
!30 = !{ptr @wil_cfg80211_mgmt_tx.__UNIQUE_ID_ddebug389, !29, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1468, i32 3}
!33 = !{ptr @wil_cfg80211_mgmt_tx.__UNIQUE_ID_ddebug390, !32, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1475, i32 3}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2053, i32 3}
!38 = !{ptr @__func__.wil_cfg80211_ap_recovery, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2057, i32 3}
!41 = !{ptr @wil_cfg80211_ap_recovery.__UNIQUE_ID_ddebug407, !40, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!42 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2066, i32 4}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2079, i32 4}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2370, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @wil_probe_client_flush.__UNIQUE_ID_ddebug423, !48, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2733, i32 3}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug444, !52, !"__UNIQUE_ID_ddebug444", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2761, i32 3}
!57 = !{ptr @wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug445, !56, !"__UNIQUE_ID_ddebug445", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2770, i32 4}
!60 = !{ptr @wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug446, !59, !"__UNIQUE_ID_ddebug446", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2780, i32 2}
!63 = !{ptr @wil_cfg80211_iface_combinations_from_fw.__UNIQUE_ID_ddebug447, !62, !"__UNIQUE_ID_ddebug447", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2783, i32 3}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2798, i32 2}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @wil_cfg80211_init.__UNIQUE_ID_ddebug448, !67, !"__UNIQUE_ID_ddebug448", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2825, i32 2}
!72 = !{ptr @wil_cfg80211_deinit.__UNIQUE_ID_ddebug449, !71, !"__UNIQUE_ID_ddebug449", i1 false, i1 false}
!73 = !{ptr @disable_ap_sme, !74, !"disable_ap_sme", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 33, i32 6}
!75 = !{ptr @__param_str_disable_ap_sme, !1, !"__param_str_disable_ap_sme", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1952, i32 2}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @_wil_cfg80211_start_ap.__UNIQUE_ID_ddebug404, !77, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1954, i32 3}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1973, i32 4}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1638, i32 3}
!88 = !{ptr @__func__.wil_cfg80211_add_key, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1642, i32 2}
!91 = !{ptr @wil_cfg80211_add_key.__UNIQUE_ID_ddebug392, !90, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1651, i32 4}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1662, i32 3}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1676, i32 3}
!98 = !{ptr @wil_cfg80211_add_key.__UNIQUE_ID_ddebug393, !97, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1528, i32 4}
!101 = !{ptr @__func__.wil_detect_key_usage, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1533, i32 2}
!104 = !{ptr @wil_detect_key_usage.__UNIQUE_ID_ddebug391, !103, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1553, i32 3}
!107 = !{ptr @__func__.wil_find_sta_by_key_usage, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 320, i32 27}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 321, i32 27}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 322, i32 27}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 323, i32 28}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 324, i32 28}
!118 = !{ptr @key_usage_str, !119, !"key_usage_str", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 319, i32 27}
!120 = !{ptr @wil_cfg80211_ops, !121, !"wil_cfg80211_ops", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2638, i32 34}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2456, i32 3}
!124 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @wil_cfg80211_suspend.__UNIQUE_ID_ddebug427, !123, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2464, i32 2}
!128 = !{ptr @wil_cfg80211_suspend.__UNIQUE_ID_ddebug428, !127, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2481, i32 2}
!131 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @wil_cfg80211_resume.__UNIQUE_ID_ddebug429, !130, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 682, i32 2}
!135 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @wil_cfg80211_add_iface.__UNIQUE_ID_ddebug355, !134, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 690, i32 4}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 709, i32 3}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 715, i32 3}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 741, i32 2}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 781, i32 2}
!147 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @wil_cfg80211_del_iface.__UNIQUE_ID_ddebug356, !146, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 785, i32 4}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 796, i32 3}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 804, i32 2}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 833, i32 2}
!157 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @wil_cfg80211_change_iface.__UNIQUE_ID_ddebug357, !156, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 849, i32 3}
!161 = !{ptr @wil_cfg80211_change_iface.__UNIQUE_ID_ddebug358, !160, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1712, i32 2}
!164 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @wil_cfg80211_del_key.__UNIQUE_ID_ddebug394, !163, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!166 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1716, i32 3}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1733, i32 2}
!170 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @wil_cfg80211_set_default_key.__UNIQUE_ID_ddebug395, !169, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2136, i32 2}
!174 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug410, !173, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2145, i32 3}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2163, i32 3}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2166, i32 2}
!182 = !{ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug411, !181, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!183 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.80, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2168, i32 2}
!187 = !{ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug412, !186, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!188 = !{ptr @.str.81, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2170, i32 2}
!190 = !{ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug413, !189, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!191 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2172, i32 2}
!193 = !{ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug414, !192, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!194 = !{ptr @.str.83, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2174, i32 2}
!196 = !{ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug415, !195, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!197 = !{ptr @wil_cfg80211_start_ap.__UNIQUE_ID_ddebug416, !198, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2175, i32 2}
!199 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1202, i32 4}
!201 = !{ptr @__func__.wil_get_wmi_edmg_channel, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.85, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1207, i32 3}
!204 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1849, i32 2}
!206 = !{ptr @.str.87, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @wil_print_bcon_data.__UNIQUE_ID_ddebug398, !205, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!208 = !{ptr @.str.88, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1851, i32 2}
!210 = !{ptr @wil_print_bcon_data.__UNIQUE_ID_ddebug399, !209, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!211 = !{ptr @.str.89, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1853, i32 2}
!213 = !{ptr @wil_print_bcon_data.__UNIQUE_ID_ddebug400, !212, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!214 = !{ptr @.str.90, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1855, i32 2}
!216 = !{ptr @wil_print_bcon_data.__UNIQUE_ID_ddebug401, !215, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!217 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1857, i32 2}
!219 = !{ptr @wil_print_bcon_data.__UNIQUE_ID_ddebug402, !218, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!220 = !{ptr @.str.92, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1859, i32 2}
!222 = !{ptr @wil_print_bcon_data.__UNIQUE_ID_ddebug403, !221, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!223 = !{ptr @.str.93, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1067, i32 2}
!225 = !{ptr @.str.94, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @wil_print_crypto.__UNIQUE_ID_ddebug372, !224, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!227 = !{ptr @.str.95, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1069, i32 2}
!229 = !{ptr @wil_print_crypto.__UNIQUE_ID_ddebug373, !228, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!230 = !{ptr @.str.96, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1072, i32 3}
!232 = !{ptr @wil_print_crypto.__UNIQUE_ID_ddebug376, !231, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!233 = !{ptr @.str.97, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1074, i32 2}
!235 = !{ptr @wil_print_crypto.__UNIQUE_ID_ddebug377, !234, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!236 = !{ptr @.str.98, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1075, i32 2}
!238 = !{ptr @wil_print_crypto.__UNIQUE_ID_ddebug378, !237, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!239 = !{ptr @wil_print_crypto.__UNIQUE_ID_ddebug381, !240, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1078, i32 3}
!241 = !{ptr @wil_print_crypto.__UNIQUE_ID_ddebug382, !242, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1080, i32 2}
!243 = !{ptr @.str.99, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1081, i32 2}
!245 = !{ptr @wil_print_crypto.__UNIQUE_ID_ddebug383, !244, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!246 = !{ptr @.str.100, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2094, i32 2}
!248 = !{ptr @.str.101, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @wil_cfg80211_change_beacon.__UNIQUE_ID_ddebug408, !247, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!250 = !{ptr @.str.102, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2107, i32 3}
!252 = !{ptr @wil_cfg80211_change_beacon.__UNIQUE_ID_ddebug409, !251, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!253 = !{ptr @.str.103, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2196, i32 2}
!255 = !{ptr @.str.104, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @wil_cfg80211_stop_ap.__UNIQUE_ID_ddebug417, !254, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!257 = !{ptr @.str.105, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2235, i32 2}
!259 = !{ptr @.str.106, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @wil_cfg80211_add_station.__UNIQUE_ID_ddebug418, !258, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!261 = !{ptr @.str.107, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2240, i32 3}
!263 = !{ptr @.str.108, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2245, i32 3}
!265 = !{ptr @.str.109, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2259, i32 2}
!267 = !{ptr @.str.110, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @wil_cfg80211_del_station.__UNIQUE_ID_ddebug419, !266, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!269 = !{ptr @.str.111, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2280, i32 2}
!271 = !{ptr @.str.112, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @wil_cfg80211_change_station.__UNIQUE_ID_ddebug420, !270, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!273 = !{ptr @.str.113, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2285, i32 3}
!275 = !{ptr @wil_cfg80211_change_station.__UNIQUE_ID_ddebug421, !274, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!276 = !{ptr @.str.114, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2294, i32 3}
!278 = !{ptr @.str.115, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2305, i32 3}
!280 = !{ptr @.str.116, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2311, i32 2}
!282 = !{ptr @wil_cfg80211_change_station.__UNIQUE_ID_ddebug422, !281, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!283 = !{ptr @.str.117, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 545, i32 2}
!285 = !{ptr @.str.118, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @wil_cfg80211_get_station.__UNIQUE_ID_ddebug347, !284, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!287 = !{ptr @.str.119, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 588, i32 2}
!289 = !{ptr @.str.120, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @wil_cfg80211_dump_station.__UNIQUE_ID_ddebug348, !288, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!291 = !{ptr @.str.121, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2421, i32 3}
!293 = !{ptr @.str.122, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @wil_cfg80211_change_bss.__UNIQUE_ID_ddebug425, !292, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!295 = !{ptr @.str.123, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 902, i32 2}
!297 = !{ptr @.str.124, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug359, !296, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!299 = !{ptr @.str.125, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 917, i32 3}
!301 = !{ptr @.str.126, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 925, i32 3}
!303 = !{ptr @.str.127, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 934, i32 4}
!305 = !{ptr @.str.128, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 956, i32 2}
!307 = !{ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug360, !306, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!308 = !{ptr @.str.129, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 957, i32 2}
!310 = !{ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug361, !309, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!311 = !{ptr @.str.130, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 960, i32 3}
!313 = !{ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug362, !312, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!314 = !{ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug363, !315, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 961, i32 3}
!316 = !{ptr @.str.131, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 973, i32 3}
!318 = !{ptr @.str.132, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 988, i32 4}
!320 = !{ptr @.str.133, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 995, i32 3}
!322 = !{ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug366, !321, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!323 = !{ptr @.str.134, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1000, i32 3}
!325 = !{ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug367, !324, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!326 = !{ptr @.str.135, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1003, i32 3}
!328 = !{ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug368, !327, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!329 = !{ptr @.str.136, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1012, i32 3}
!331 = !{ptr @wil_cfg80211_scan.__UNIQUE_ID_ddebug369, !330, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!332 = !{ptr @.str.137, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1039, i32 2}
!334 = !{ptr @.str.138, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @wil_cfg80211_abort_scan.__UNIQUE_ID_ddebug370, !333, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!336 = !{ptr @.str.139, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1048, i32 3}
!338 = !{ptr @wil_cfg80211_abort_scan.__UNIQUE_ID_ddebug371, !337, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!339 = !{ptr @.str.140, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1229, i32 2}
!341 = !{ptr @.str.141, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @wil_cfg80211_connect.__UNIQUE_ID_ddebug384, !340, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!343 = !{ptr @.str.142, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1244, i32 3}
!345 = !{ptr @.str.143, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1252, i32 3}
!347 = !{ptr @.str.144, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1254, i32 4}
!349 = !{ptr @.str.145, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1266, i32 3}
!351 = !{ptr @.str.146, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1272, i32 3}
!353 = !{ptr @.str.147, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1291, i32 3}
!355 = !{ptr @.str.148, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1299, i32 3}
!357 = !{ptr @.str.149, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1307, i32 4}
!359 = !{ptr @.str.150, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1323, i32 4}
!361 = !{ptr @.str.151, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1329, i32 4}
!363 = !{ptr @.str.152, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1109, i32 2}
!365 = !{ptr @__func__.wil_print_connect_params, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.153, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1111, i32 3}
!368 = !{ptr @.str.154, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1115, i32 3}
!370 = !{ptr @.str.155, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1117, i32 18}
!372 = !{ptr @.str.156, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1117, i32 29}
!374 = !{ptr @.str.157, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1120, i32 3}
!376 = !{ptr @.str.158, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1121, i32 2}
!378 = !{ptr @.str.159, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1123, i32 2}
!380 = !{ptr @.str.160, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1124, i32 2}
!382 = !{ptr @.str.161, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1091, i32 10}
!384 = !{ptr @.str.162, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1093, i32 10}
!386 = !{ptr @.str.163, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1095, i32 10}
!388 = !{ptr @.str.164, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1097, i32 10}
!390 = !{ptr @.str.165, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1099, i32 10}
!392 = !{ptr @.str.166, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1101, i32 10}
!394 = !{ptr @.str.167, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1103, i32 10}
!396 = !{ptr @.str.168, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1138, i32 3}
!398 = !{ptr @__func__.wil_ft_connect, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @.str.169, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1143, i32 3}
!401 = !{ptr @.str.170, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1148, i32 3}
!403 = !{ptr @.str.171, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1153, i32 3}
!405 = !{ptr @.str.172, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1158, i32 3}
!407 = !{ptr @.str.173, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1164, i32 3}
!409 = !{ptr @.str.174, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1172, i32 2}
!411 = !{ptr @.str.175, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1395, i32 2}
!413 = !{ptr @.str.176, !412, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @wil_cfg80211_disconnect.__UNIQUE_ID_ddebug387, !412, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!415 = !{ptr @.str.177, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1400, i32 3}
!417 = !{ptr @.str.178, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1409, i32 3}
!419 = !{ptr @.str.179, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1746, i32 2}
!421 = !{ptr @.str.180, !420, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @wil_remain_on_channel.__UNIQUE_ID_ddebug396, !420, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!423 = !{ptr @.str.181, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 1761, i32 2}
!425 = !{ptr @.str.182, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @wil_cancel_remain_on_channel.__UNIQUE_ID_ddebug397, !424, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!427 = !{ptr @.str.183, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2436, i32 2}
!429 = !{ptr @.str.184, !428, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @wil_cfg80211_set_power_mgmt.__UNIQUE_ID_ddebug426, !428, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!431 = !{ptr @.str.185, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2498, i32 2}
!433 = !{ptr @.str.186, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug430, !432, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!435 = !{ptr @.str.187, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2502, i32 3}
!437 = !{ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug431, !436, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!438 = !{ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug432, !439, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2503, i32 3}
!440 = !{ptr @.str.188, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2507, i32 2}
!442 = !{ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug433, !441, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!443 = !{ptr @.str.189, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2509, i32 3}
!445 = !{ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug434, !444, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!446 = !{ptr @.str.190, !444, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @.str.191, !444, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @.str.192, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2511, i32 2}
!450 = !{ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug435, !449, !"__UNIQUE_ID_ddebug435", i1 false, i1 false}
!451 = !{ptr @.str.193, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2517, i32 3}
!453 = !{ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug436, !452, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!454 = !{ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug437, !455, !"__UNIQUE_ID_ddebug437", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2519, i32 3}
!456 = !{ptr @.str.194, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2523, i32 2}
!458 = !{ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug438, !457, !"__UNIQUE_ID_ddebug438", i1 false, i1 false}
!459 = !{ptr @.str.195, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2527, i32 3}
!461 = !{ptr @wil_cfg80211_sched_scan_start.__UNIQUE_ID_ddebug439, !460, !"__UNIQUE_ID_ddebug439", i1 false, i1 false}
!462 = !{ptr @.str.196, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2553, i32 2}
!464 = !{ptr @.str.197, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @wil_cfg80211_sched_scan_stop.__UNIQUE_ID_ddebug440, !463, !"__UNIQUE_ID_ddebug440", i1 false, i1 false}
!466 = !{ptr @.str.198, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2391, i32 2}
!468 = !{ptr @.str.199, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @wil_cfg80211_probe_client.__UNIQUE_ID_ddebug424, !467, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!470 = !{ptr @.str.200, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 601, i32 2}
!472 = !{ptr @.str.201, !471, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @wil_cfg80211_start_p2p_device.__UNIQUE_ID_ddebug349, !471, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!474 = !{ptr @.str.202, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 614, i32 2}
!476 = !{ptr @.str.203, !475, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @wil_cfg80211_stop_p2p_device.__UNIQUE_ID_ddebug350, !475, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!478 = !{ptr @.str.204, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2568, i32 2}
!480 = !{ptr @.str.205, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @wil_cfg80211_update_ft_ies.__UNIQUE_ID_ddebug441, !479, !"__UNIQUE_ID_ddebug441", i1 false, i1 false}
!482 = !{ptr @.str.206, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2569, i32 2}
!484 = !{ptr @wil_cfg80211_update_ft_ies.__UNIQUE_ID_ddebug442, !483, !"__UNIQUE_ID_ddebug442", i1 false, i1 false}
!485 = !{ptr @.str.207, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2591, i32 3}
!487 = !{ptr @.str.208, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2601, i32 3}
!489 = !{ptr @.str.209, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2615, i32 2}
!491 = !{ptr @__func__.wil_cfg80211_set_multicast_to_unicast, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @.str.210, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2695, i32 2}
!494 = !{ptr @.str.211, !493, !"<string literal>", i1 false, i1 false}
!495 = !{ptr @wil_wiphy_init.__UNIQUE_ID_ddebug443, !493, !"__UNIQUE_ID_ddebug443", i1 false, i1 false}
!496 = !{ptr @wil_band_60ghz, !497, !"wil_band_60ghz", i1 false, i1 false}
!497 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 256, i32 40}
!498 = !{ptr @wil_60ghz_channels, !499, !"wil_60ghz_channels", i1 false, i1 false}
!499 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 52, i32 33}
!500 = !{ptr @wil_cipher_suites, !501, !"wil_cipher_suites", i1 false, i1 false}
!501 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 315, i32 18}
!502 = !{ptr @wil_mgmt_stypes, !503, !"wil_mgmt_stypes", i1 false, i1 false}
!503 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 273, i32 1}
!504 = !{ptr @wil_nl80211_vendor_commands, !505, !"wil_nl80211_vendor_commands", i1 false, i1 false}
!505 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 219, i32 42}
!506 = !{ptr @.str.213, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2897, i32 3}
!508 = !{ptr @__func__.wil_rf_sector_get_cfg, !507, !"<string literal>", i1 false, i1 false}
!509 = !{ptr @.str.214, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2904, i32 3}
!511 = !{ptr @.str.215, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2911, i32 3}
!513 = !{ptr @.str.216, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2917, i32 3}
!515 = !{ptr @.str.217, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2924, i32 3}
!517 = !{ptr @.str.218, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 2938, i32 3}
!519 = !{ptr @wil_rf_sector_policy, !520, !"wil_rf_sector_policy", i1 false, i1 false}
!520 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 179, i32 12}
!521 = !{ptr @__func__.wil_rf_sector_set_cfg, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 3017, i32 3}
!523 = !{ptr @.str.219, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 3053, i32 4}
!525 = !{ptr @.str.220, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 3064, i32 4}
!527 = !{ptr @.str.221, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 3071, i32 4}
!529 = !{ptr @wil_rf_sector_cfg_policy, !530, !"wil_rf_sector_cfg_policy", i1 false, i1 false}
!530 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 188, i32 12}
!531 = !{ptr @__func__.wil_rf_sector_get_selected, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 3126, i32 3}
!533 = !{ptr @.str.222, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 3144, i32 4}
!535 = !{ptr @.str.223, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 3149, i32 4}
!537 = !{ptr @.str.224, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 3165, i32 3}
!539 = !{ptr @__func__.wil_rf_sector_set_selected, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 3234, i32 3}
!541 = !{ptr @.str.225, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 3269, i32 5}
!543 = !{ptr @.str.226, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 3303, i32 6}
!545 = !{ptr @wil_wowlan_support, !546, !"wil_wowlan_support", i1 false, i1 false}
!546 = !{!"../drivers/net/wireless/ath/wil6210/cfg80211.c", i32 38, i32 36}
!547 = !{i32 1, !"wchar_size", i32 2}
!548 = !{i32 1, !"min_enum_size", i32 4}
!549 = !{i32 8, !"branch-target-enforcement", i32 0}
!550 = !{i32 8, !"sign-return-address", i32 0}
!551 = !{i32 8, !"sign-return-address-all", i32 0}
!552 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!553 = !{i32 7, !"uwtable", i32 1}
!554 = !{i32 7, !"frame-pointer", i32 2}
!555 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!556 = !{i64 2148936990, i64 2148936995, i64 2148937008, i64 2148937052, i64 2148937086, i64 2148937107}
!557 = !{i8 0, i8 2}
!558 = !{!"branch_weights", i32 1, i32 2000}
!559 = !{i64 2157140183, i64 2157140671, i64 2157140220, i64 2157140276, i64 2157140310, i64 2157140334, i64 2157140375, i64 2157140396, i64 2157140424, i64 2157140458}
!560 = !{i32 0, i32 3}
!561 = !{i64 2157146266, i64 2157146754, i64 2157146303, i64 2157146359, i64 2157146393, i64 2157146417, i64 2157146458, i64 2157146479, i64 2157146507, i64 2157146541}
