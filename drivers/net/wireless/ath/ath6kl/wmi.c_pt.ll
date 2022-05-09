; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/wmi.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/wmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.country_code_to_enum_rd = type { i16, i16, ptr }
%struct.reg_dmn_pair_mapping = type { i16, i16, i16 }
%struct.wmi = type { [4 x i16], i8, ptr, i8, %struct.spinlock, i32, [2 x %struct.sq_threshold_params], i8, i8, i8, ptr, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sq_threshold_params = type { [6 x i16], [6 x i16], i32, i32, i32, i8, i8, i8 }
%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.127, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.128 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.127 = type { ptr, i32 }
%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.124, ptr, ptr, ptr }
%union.anon.124 = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.128 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.129, ptr, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.129 = type { i32 }
%struct.ath6kl_vif = type { %struct.list_head, %struct.wireless_dev, ptr, ptr, %struct.spinlock, i8, i32, i32, [32 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], i16, i16, [4 x %struct.ath6kl_wep_key], [4 x %struct.ath6kl_key], ptr, [6 x %struct.ath6kl_htcap], %struct.timer_list, %struct.timer_list, ptr, i32, i32, i32, i32, i32, i8, i16, i16, i16, i32, i16, i8, %struct.target_stats, %struct.wmi_connect_cmd, i16, %struct.list_head }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.118, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.118 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.119 }
%union.anon.119 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ath6kl_wep_key = type { i8, i8, [64 x i8] }
%struct.ath6kl_key = type { [32 x i8], i8, [8 x i8], i8, i32 }
%struct.ath6kl_htcap = type { i8, i8, i16 }
%struct.target_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32 }
%struct.wmi_connect_cmd = type <{ i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8], i16, [6 x i8], i32, i8 }>
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.wmi_tx_meta_v1 = type { i8, i8 }
%struct.wmi_data_hdr = type { i8, i8, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.wmi_create_pstream_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath6kl_llc_snap_hdr = type { i8, i8, i8, [3 x i8], i16 }
%struct.low_rssi_scan_params = type { i16, i16, i16, i8, [1 x i8] }
%struct.roam_ctrl_cmd = type <{ %union.anon.134, i8 }>
%union.anon.134 = type { %struct.low_rssi_scan_params }
%struct.wmi_cmd_hdr = type { i16, i16, i16 }
%struct.wmi_txe_notify_cmd = type { i32, i32, i32 }
%struct.wmi_data_sync_bufs = type { i8, ptr }
%struct.wmi_reconnect_cmd = type { i16, [6 x i8] }
%struct.wmi_start_scan_cmd = type { i32, i32, i32, i32, i8, i8, [1 x i16] }
%struct.wmi_begin_scan_cmd = type { i32, i32, i32, i32, i32, i8, [2 x %struct.wmi_supp_rates], i8, [1 x i16] }
%struct.wmi_supp_rates = type { i8, [15 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.123, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.possible_net_t = type { ptr }
%struct.anon.123 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.wmi_scan_params_cmd = type { i16, i16, i16, i16, i16, i8, i8, i16, i16, i32 }
%struct.wmi_bss_filter_cmd = type { i8, i8, i16, i32 }
%struct.wmi_probed_ssid_cmd = type { i8, i8, i8, [32 x i8] }
%struct.wmi_listen_int_cmd = type { i16, i16 }
%struct.wmi_bmiss_time_cmd = type { i16, i16 }
%struct.wmi_power_params_cmd = type { i16, i16, i16, i16, i16, i16 }
%struct.wmi_add_cipher_key_cmd = type { i8, i8, i8, i8, [8 x i8], [32 x i8], i8, [6 x i8] }
%struct.wmi_setpmkid_cmd = type { [6 x i8], i8, [16 x i8] }
%struct.wmi_delete_pstream_cmd = type { i8, i8, i8, i8, i8 }
%struct.anon.135 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.wmi_set_host_sleep_mode_cmd = type { i32, i32 }
%struct.wmi_set_wow_mode_cmd = type <{ i32, i32, i16 }>
%struct.wmi_add_wow_pattern_cmd = type { i8, i8, i8, [0 x i8] }
%struct.wmi_del_wow_pattern_cmd = type { i16, i16 }
%struct.wmix_hb_challenge_resp_cmd = type { i32, i32 }
%struct.ath6kl_wmix_dbglog_cfg_module_cmd = type { i32, i32 }
%struct.wmi_set_lpreamble_cmd = type { i8, i8 }
%struct.wmi_set_htcap_cmd = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.wmi_set_regdomain_cmd = type { i8, [2 x i8] }
%struct.wmi_ap_set_mlme_cmd = type <{ [6 x i8], i16, i8 }>
%struct.wmi_ap_apsd_buffered_traffic_cmd = type { i16, i16, i32 }
%struct.wmi_ap_set_pvb_cmd = type { i32, i16, i16 }
%struct.wmi_rx_frame_format_cmd = type { i8, i8, i8, [1 x i8] }
%struct.wmi_set_appie_cmd = type { i8, i8, [0 x i8] }
%struct.wmi_set_ie_cmd = type { i8, i8, i8, i8, [0 x i8] }
%struct.wmi_remain_on_chnl_cmd = type { i32, i32 }
%struct.wmi_send_mgmt_cmd = type <{ i32, i32, i32, i32, i16, [0 x i8] }>
%struct.wmi_send_action_cmd = type <{ i32, i32, i32, i16, [0 x i8] }>
%struct.wmi_p2p_probe_response_cmd = type { i32, [6 x i8], i16, [0 x i8] }
%struct.wmi_set_inact_period_cmd = type <{ i32, i8 }>
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.wmi_ready_event_2 = type <{ i32, i32, [6 x i8], i8 }>
%struct.wmi_peer_node_event = type { i8, [6 x i8] }
%struct.wmi_pstream_timeout_event = type { i8, i8, i8, i8 }
%struct.wmi_cmd_error_event = type <{ i16, i8 }>
%struct.wmi_rssi_threshold_event = type <{ i16, i8 }>
%struct.wmi_snr_threshold_event = type { i8, i8 }
%struct.wmi_aplist_event = type { i8, i8, [1 x %union.wmi_ap_info] }
%union.wmi_ap_info = type { %struct.wmi_ap_info_v1 }
%struct.wmi_ap_info_v1 = type { [6 x i8], i16 }
%struct.wmi_tx_complete_event = type { i8, i8, i8, i8 }
%struct.tx_complete_msg_v1 = type { i8, i8, i8, i8 }
%struct.wmi_p2p_info_event = type <{ i32, i16, [0 x i8] }>
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.101, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.101 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.anon.139 = type { i16, [6 x i8], [8 x i8] }
%struct.anon.138 = type { i8, i8, [6 x i8], i8, i8, i16, i8, [3 x i8] }
%struct.wmi_connect_event = type { %union.anon.136, i8, i8, i8, [1 x i8] }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i16, [6 x i8], i16, i16, i32 }
%struct.wmi_disconnect_event = type <{ i16, [6 x i8], i8, i8, [1 x i8] }>
%struct.wmi_tkip_micerr_event = type { i8, i8 }
%struct.wmi_bss_info_hdr2 = type { i16, i8, i8, [6 x i8], i16 }
%struct.wmi_neighbor_report_event = type { i8, [0 x %struct.wmi_neighbor_info] }
%struct.wmi_neighbor_info = type { [6 x i8], i8 }
%struct.wmi_cac_event = type { i8, i8, i8, [63 x i8] }
%struct.wmi_addba_req_event = type <{ i8, i8, i16, i8 }>
%struct.wmi_remain_on_chnl_event = type { i32, i32 }
%struct.wmi_cancel_remain_on_chnl_event = type <{ i32, i32, i8 }>
%struct.wmi_tx_status_event = type <{ i32, i8 }>
%struct.wmi_p2p_rx_probe_req_event = type <{ i32, i16, [0 x i8] }>
%struct.wmi_rx_action_event = type <{ i32, i16, [0 x i8] }>
%struct.wmi_txe_notify_event = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath6kl/wmi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: pkt is already in 802.3 format\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.ath6kl_wmi_dix_2_dot3 = private unnamed_addr constant [22 x i8] c"ath6kl_wmi_dix_2_dot3\00", align 1
@up_to_ac = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\01\00\02\02\03\03", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"force roam to %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set roam mode %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wmi tx id %d len %d flag %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wmi tx \00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"wmi connect bssid %pM freq %d flags 0x%x ssid_len %d type %d dot11_auth %d auth %d pairwise %d group %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ssid \00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wmi reconnect bssid %pM freq %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wmi disconnect\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s scheduled scan on vif %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabling\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabling\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"addkey cmd: key_index=%u key_type=%d key_usage=%d key_len=%d key_op_ctrl=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"TSRS IE enabled::MinPhy %x->NominalPhy ===> %x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sending create_pstream_cmd: ac=%d  tsid:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid traffic class: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid tsid: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"TSID %d doesn't exist for traffic class: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"sending delete_pstream_cmd: traffic class: %d tsid=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid host sleep mode: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid wow mode: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"Set htcap: band:%d ht_enable:%d 40mhz:%d sgi_20mhz:%d sgi_40mhz:%d 40mhz_intolerant:%d ampdu_len_exp:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid multicast filter address\0A\00", [62 x i8] zeroinitializer }, align 32
@wmi_rate_tbl_mcs15 = internal constant { [45 x [2 x i32]], [88 x i8] } { [45 x [2 x i32]] [[2 x i32] [i32 1000, i32 1000], [2 x i32] [i32 2000, i32 2000], [2 x i32] [i32 5500, i32 5500], [2 x i32] [i32 11000, i32 11000], [2 x i32] [i32 6000, i32 6000], [2 x i32] [i32 9000, i32 9000], [2 x i32] [i32 12000, i32 12000], [2 x i32] [i32 18000, i32 18000], [2 x i32] [i32 24000, i32 24000], [2 x i32] [i32 36000, i32 36000], [2 x i32] [i32 48000, i32 48000], [2 x i32] [i32 54000, i32 54000], [2 x i32] [i32 6500, i32 7200], [2 x i32] [i32 13000, i32 14400], [2 x i32] [i32 19500, i32 21700], [2 x i32] [i32 26000, i32 28900], [2 x i32] [i32 39000, i32 43300], [2 x i32] [i32 52000, i32 57800], [2 x i32] [i32 58500, i32 65000], [2 x i32] [i32 65000, i32 72200], [2 x i32] [i32 13000, i32 14400], [2 x i32] [i32 26000, i32 28900], [2 x i32] [i32 39000, i32 43300], [2 x i32] [i32 52000, i32 57800], [2 x i32] [i32 78000, i32 86700], [2 x i32] [i32 104000, i32 115600], [2 x i32] [i32 117000, i32 130000], [2 x i32] [i32 130000, i32 144400], [2 x i32] [i32 13500, i32 15000], [2 x i32] [i32 27000, i32 30000], [2 x i32] [i32 40500, i32 45000], [2 x i32] [i32 54000, i32 60000], [2 x i32] [i32 81000, i32 90000], [2 x i32] [i32 108000, i32 120000], [2 x i32] [i32 121500, i32 135000], [2 x i32] [i32 135000, i32 150000], [2 x i32] [i32 27000, i32 30000], [2 x i32] [i32 54000, i32 60000], [2 x i32] [i32 81000, i32 90000], [2 x i32] [i32 108000, i32 120000], [2 x i32] [i32 162000, i32 180000], [2 x i32] [i32 216000, i32 240000], [2 x i32] [i32 243000, i32 270000], [2 x i32] [i32 270000, i32 300000], [2 x i32] zeroinitializer], [88 x i8] zeroinitializer }, align 32
@wmi_rate_tbl = internal constant { [29 x [2 x i32]], [56 x i8] } { [29 x [2 x i32]] [[2 x i32] [i32 1000, i32 1000], [2 x i32] [i32 2000, i32 2000], [2 x i32] [i32 5500, i32 5500], [2 x i32] [i32 11000, i32 11000], [2 x i32] [i32 6000, i32 6000], [2 x i32] [i32 9000, i32 9000], [2 x i32] [i32 12000, i32 12000], [2 x i32] [i32 18000, i32 18000], [2 x i32] [i32 24000, i32 24000], [2 x i32] [i32 36000, i32 36000], [2 x i32] [i32 48000, i32 48000], [2 x i32] [i32 54000, i32 54000], [2 x i32] [i32 6500, i32 7200], [2 x i32] [i32 13000, i32 14400], [2 x i32] [i32 19500, i32 21700], [2 x i32] [i32 26000, i32 28900], [2 x i32] [i32 39000, i32 43300], [2 x i32] [i32 52000, i32 57800], [2 x i32] [i32 58500, i32 65000], [2 x i32] [i32 65000, i32 72200], [2 x i32] [i32 13500, i32 15000], [2 x i32] [i32 27000, i32 30000], [2 x i32] [i32 40500, i32 45000], [2 x i32] [i32 54000, i32 60000], [2 x i32] [i32 81000, i32 90000], [2 x i32] [i32 108000, i32 120000], [2 x i32] [i32 121500, i32 135000], [2 x i32] [i32 135000, i32 150000], [2 x i32] zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: nw_type=%u auth_mode=%u ch=%u ctrl_flags=0x%x-> res=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.ath6kl_wmi_ap_profile_commit = private unnamed_addr constant [29 x i8] c"ath6kl_wmi_ap_profile_commit\00", align 1
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ap_set_mlme: cmd=%d reason=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"set_appie_cmd: mgmt_frm_type=%u ie_len=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"set_ie_cmd: ie_id=%u ie_ie_field=%u ie_len=%u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"disable_11b_rates_cmd: disable=%u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"remain_on_chnl_cmd: freq=%u dur=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"send_probe_response_cmd: freq=%u dst=%pM len=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"probe_report_req_cmd: enable=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"info_req_cmd: flags=%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cancel_remain_on_chnl_cmd\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad packet 1\0A\00", [18 x i8] zeroinitializer }, align 32
@ath6kl_wmi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&wmi->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Ratemask 64 bit: 2.4:%llx 5:%llx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Ratemask 32 bit: 2.4:%x 5:%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"send_action_cmd: id=%u freq=%u wait=%u len=%u\0A\00", [49 x i8] zeroinitializer }, align 32
@__tracepoint_ath6kl_wmi_event = external dso_local global %struct.tracepoint, align 4
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath6kl/trace.h\00", [56 x i8] zeroinitializer }, align 32
@trace_ath6kl_wmi_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wmi rx id %d len %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wmi rx \00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_GET_BITRATE_CMDID\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WMI_GET_CHANNEL_LIST_CMDID\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_GET_TX_PWR_CMDID\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_READY_EVENTID\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_PEER_NODE_EVENTID\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_REGDOMAIN_EVENTID\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WMI_PSTREAM_TIMEOUT_EVENTID\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_CMDERROR_EVENTID\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WMI_RSSI_THRESHOLD_EVENTID\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WMI_ERROR_REPORT_EVENTID\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WMI_OPT_RX_FRAME_EVENTID\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WMI_REPORT_ROAM_TBL_EVENTID\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_EXTENSION_EVENTID\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WMI_CHANNEL_CHANGE_EVENTID\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WMI_REPORT_ROAM_DATA_EVENTID\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WMI_TEST_EVENTID\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_GET_FIXRATES_CMDID\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WMI_TX_RETRY_ERR_EVENTID\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WMI_SNR_THRESHOLD_EVENTID\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WMI_LQ_THRESHOLD_EVENTID\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WMI_APLIST_EVENTID\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_GET_KEEPALIVE_CMDID\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WMI_GET_WOW_LIST_EVENTID\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WMI_GET_PMKID_LIST_EVENTID\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WMI_SET_PARAMS_REPLY_EVENTID\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_ADDBA_RESP_EVENTID\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WMI_REPORT_BTCOEX_CONFIG_EVENTID\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WMI_REPORT_BTCOEX_STATS_EVENTID\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_TX_COMPLETE_EVENTID\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WMI_P2P_CAPABILITIES_EVENTID\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_P2P_INFO_EVENTID\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rateindex %d\0A\00", [18 x i8] zeroinitializer }, align 32
@ath6kl_wmi_bitrate_reply_rx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"joined node with mac addr: %pM\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"left node with mac addr: %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Regpair used: 0x%0x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Regpair not found reg_code 0x%0x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Country alpha2 being used: %c%c\0A\00", [63 x i8] zeroinitializer }, align 32
@allCountries = internal constant { [194 x %struct.country_code_to_enum_rd], [400 x i8] } { [194 x %struct.country_code_to_enum_rd] [%struct.country_code_to_enum_rd { i16 511, i16 0, ptr @.str.81 }, %struct.country_code_to_enum_rd { i16 0, i16 16, ptr @.str.82 }, %struct.country_code_to_enum_rd { i16 8, i16 55, ptr @.str.83 }, %struct.country_code_to_enum_rd { i16 12, i16 90, ptr @.str.84 }, %struct.country_code_to_enum_rd { i16 32, i16 59, ptr @.str.85 }, %struct.country_code_to_enum_rd { i16 51, i16 48, ptr @.str.86 }, %struct.country_code_to_enum_rd { i16 533, i16 55, ptr @.str.87 }, %struct.country_code_to_enum_rd { i16 36, i16 59, ptr @.str.88 }, %struct.country_code_to_enum_rd { i16 5000, i16 35, ptr @.str.88 }, %struct.country_code_to_enum_rd { i16 40, i16 55, ptr @.str.89 }, %struct.country_code_to_enum_rd { i16 31, i16 48, ptr @.str.90 }, %struct.country_code_to_enum_rd { i16 44, i16 59, ptr @.str.91 }, %struct.country_code_to_enum_rd { i16 48, i16 91, ptr @.str.92 }, %struct.country_code_to_enum_rd { i16 50, i16 82, ptr @.str.93 }, %struct.country_code_to_enum_rd { i16 52, i16 33, ptr @.str.94 }, %struct.country_code_to_enum_rd { i16 112, i16 55, ptr @.str.95 }, %struct.country_code_to_enum_rd { i16 56, i16 55, ptr @.str.96 }, %struct.country_code_to_enum_rd { i16 5002, i16 48, ptr @.str.97 }, %struct.country_code_to_enum_rd { i16 84, i16 85, ptr @.str.98 }, %struct.country_code_to_enum_rd { i16 60, i16 58, ptr @.str.99 }, %struct.country_code_to_enum_rd { i16 68, i16 85, ptr @.str.100 }, %struct.country_code_to_enum_rd { i16 70, i16 55, ptr @.str.101 }, %struct.country_code_to_enum_rd { i16 76, i16 59, ptr @.str.102 }, %struct.country_code_to_enum_rd { i16 96, i16 91, ptr @.str.103 }, %struct.country_code_to_enum_rd { i16 100, i16 55, ptr @.str.104 }, %struct.country_code_to_enum_rd { i16 116, i16 55, ptr @.str.105 }, %struct.country_code_to_enum_rd { i16 124, i16 58, ptr @.str.106 }, %struct.country_code_to_enum_rd { i16 5001, i16 20, ptr @.str.106 }, %struct.country_code_to_enum_rd { i16 152, i16 91, ptr @.str.107 }, %struct.country_code_to_enum_rd { i16 156, i16 82, ptr @.str.108 }, %struct.country_code_to_enum_rd { i16 170, i16 59, ptr @.str.82 }, %struct.country_code_to_enum_rd { i16 188, i16 17, ptr @.str.109 }, %struct.country_code_to_enum_rd { i16 191, i16 55, ptr @.str.110 }, %struct.country_code_to_enum_rd { i16 196, i16 55, ptr @.str.111 }, %struct.country_code_to_enum_rd { i16 203, i16 55, ptr @.str.112 }, %struct.country_code_to_enum_rd { i16 208, i16 55, ptr @.str.113 }, %struct.country_code_to_enum_rd { i16 214, i16 16, ptr @.str.114 }, %struct.country_code_to_enum_rd { i16 218, i16 17, ptr @.str.115 }, %struct.country_code_to_enum_rd { i16 818, i16 54, ptr @.str.116 }, %struct.country_code_to_enum_rd { i16 222, i16 17, ptr @.str.117 }, %struct.country_code_to_enum_rd { i16 233, i16 55, ptr @.str.118 }, %struct.country_code_to_enum_rd { i16 246, i16 55, ptr @.str.119 }, %struct.country_code_to_enum_rd { i16 250, i16 55, ptr @.str.120 }, %struct.country_code_to_enum_rd { i16 268, i16 48, ptr @.str.121 }, %struct.country_code_to_enum_rd { i16 276, i16 55, ptr @.str.122 }, %struct.country_code_to_enum_rd { i16 300, i16 55, ptr @.str.123 }, %struct.country_code_to_enum_rd { i16 304, i16 55, ptr @.str.124 }, %struct.country_code_to_enum_rd { i16 308, i16 58, ptr @.str.125 }, %struct.country_code_to_enum_rd { i16 316, i16 16, ptr @.str.126 }, %struct.country_code_to_enum_rd { i16 320, i16 16, ptr @.str.127 }, %struct.country_code_to_enum_rd { i16 332, i16 55, ptr @.str.128 }, %struct.country_code_to_enum_rd { i16 340, i16 59, ptr @.str.129 }, %struct.country_code_to_enum_rd { i16 344, i16 59, ptr @.str.130 }, %struct.country_code_to_enum_rd { i16 348, i16 55, ptr @.str.131 }, %struct.country_code_to_enum_rd { i16 352, i16 55, ptr @.str.132 }, %struct.country_code_to_enum_rd { i16 356, i16 91, ptr @.str.133 }, %struct.country_code_to_enum_rd { i16 360, i16 3, ptr @.str.134 }, %struct.country_code_to_enum_rd { i16 364, i16 82, ptr @.str.135 }, %struct.country_code_to_enum_rd { i16 372, i16 55, ptr @.str.136 }, %struct.country_code_to_enum_rd { i16 376, i16 54, ptr @.str.137 }, %struct.country_code_to_enum_rd { i16 380, i16 55, ptr @.str.138 }, %struct.country_code_to_enum_rd { i16 388, i16 59, ptr @.str.139 }, %struct.country_code_to_enum_rd { i16 392, i16 64, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 393, i16 65, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 394, i16 72, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 395, i16 67, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 396, i16 74, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 397, i16 75, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4006, i16 76, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4007, i16 128, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4008, i16 129, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4009, i16 130, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4010, i16 131, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4011, i16 132, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4012, i16 133, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4013, i16 134, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4014, i16 135, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4015, i16 136, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4016, i16 137, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4017, i16 138, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4018, i16 139, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4019, i16 140, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4020, i16 141, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4021, i16 142, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4022, i16 143, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4023, i16 144, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4024, i16 145, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4025, i16 240, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4026, i16 241, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4027, i16 242, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4028, i16 244, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4029, i16 245, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4030, i16 248, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4031, i16 249, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4032, i16 250, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4033, i16 251, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4034, i16 246, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4035, i16 247, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4036, i16 243, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4037, i16 252, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4038, i16 253, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4039, i16 254, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4040, i16 255, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4041, i16 208, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4042, i16 209, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4043, i16 210, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4044, i16 211, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4045, i16 212, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4046, i16 213, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4047, i16 214, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4048, i16 215, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4049, i16 216, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4050, i16 217, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4051, i16 218, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4052, i16 219, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4053, i16 220, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4054, i16 221, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4057, i16 222, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4058, i16 146, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 4059, i16 147, ptr @.str.140 }, %struct.country_code_to_enum_rd { i16 400, i16 53, ptr @.str.141 }, %struct.country_code_to_enum_rd { i16 398, i16 3, ptr @.str.142 }, %struct.country_code_to_enum_rd { i16 404, i16 82, ptr @.str.143 }, %struct.country_code_to_enum_rd { i16 408, i16 94, ptr @.str.144 }, %struct.country_code_to_enum_rd { i16 410, i16 94, ptr @.str.145 }, %struct.country_code_to_enum_rd { i16 411, i16 69, ptr @.str.146 }, %struct.country_code_to_enum_rd { i16 412, i16 94, ptr @.str.147 }, %struct.country_code_to_enum_rd { i16 413, i16 95, ptr @.str.148 }, %struct.country_code_to_enum_rd { i16 414, i16 54, ptr @.str.149 }, %struct.country_code_to_enum_rd { i16 428, i16 55, ptr @.str.150 }, %struct.country_code_to_enum_rd { i16 422, i16 3, ptr @.str.151 }, %struct.country_code_to_enum_rd { i16 438, i16 55, ptr @.str.152 }, %struct.country_code_to_enum_rd { i16 440, i16 55, ptr @.str.153 }, %struct.country_code_to_enum_rd { i16 442, i16 55, ptr @.str.154 }, %struct.country_code_to_enum_rd { i16 446, i16 33, ptr @.str.155 }, %struct.country_code_to_enum_rd { i16 807, i16 55, ptr @.str.156 }, %struct.country_code_to_enum_rd { i16 458, i16 17, ptr @.str.157 }, %struct.country_code_to_enum_rd { i16 470, i16 55, ptr @.str.158 }, %struct.country_code_to_enum_rd { i16 480, i16 55, ptr @.str.159 }, %struct.country_code_to_enum_rd { i16 484, i16 16, ptr @.str.160 }, %struct.country_code_to_enum_rd { i16 492, i16 48, ptr @.str.161 }, %struct.country_code_to_enum_rd { i16 499, i16 55, ptr @.str.162 }, %struct.country_code_to_enum_rd { i16 504, i16 66, ptr @.str.163 }, %struct.country_code_to_enum_rd { i16 524, i16 82, ptr @.str.164 }, %struct.country_code_to_enum_rd { i16 528, i16 55, ptr @.str.165 }, %struct.country_code_to_enum_rd { i16 530, i16 55, ptr @.str.166 }, %struct.country_code_to_enum_rd { i16 554, i16 63, ptr @.str.167 }, %struct.country_code_to_enum_rd { i16 558, i16 58, ptr @.str.168 }, %struct.country_code_to_enum_rd { i16 578, i16 55, ptr @.str.169 }, %struct.country_code_to_enum_rd { i16 512, i16 59, ptr @.str.170 }, %struct.country_code_to_enum_rd { i16 586, i16 3, ptr @.str.171 }, %struct.country_code_to_enum_rd { i16 591, i16 16, ptr @.str.172 }, %struct.country_code_to_enum_rd { i16 598, i16 17, ptr @.str.173 }, %struct.country_code_to_enum_rd { i16 600, i16 59, ptr @.str.174 }, %struct.country_code_to_enum_rd { i16 604, i16 59, ptr @.str.175 }, %struct.country_code_to_enum_rd { i16 608, i16 59, ptr @.str.176 }, %struct.country_code_to_enum_rd { i16 616, i16 55, ptr @.str.177 }, %struct.country_code_to_enum_rd { i16 620, i16 55, ptr @.str.178 }, %struct.country_code_to_enum_rd { i16 630, i16 16, ptr @.str.179 }, %struct.country_code_to_enum_rd { i16 634, i16 82, ptr @.str.180 }, %struct.country_code_to_enum_rd { i16 642, i16 55, ptr @.str.181 }, %struct.country_code_to_enum_rd { i16 643, i16 61, ptr @.str.182 }, %struct.country_code_to_enum_rd { i16 682, i16 3, ptr @.str.183 }, %struct.country_code_to_enum_rd { i16 688, i16 55, ptr @.str.184 }, %struct.country_code_to_enum_rd { i16 891, i16 55, ptr @.str.185 }, %struct.country_code_to_enum_rd { i16 702, i16 59, ptr @.str.186 }, %struct.country_code_to_enum_rd { i16 703, i16 55, ptr @.str.187 }, %struct.country_code_to_enum_rd { i16 705, i16 55, ptr @.str.188 }, %struct.country_code_to_enum_rd { i16 710, i16 59, ptr @.str.189 }, %struct.country_code_to_enum_rd { i16 724, i16 55, ptr @.str.190 }, %struct.country_code_to_enum_rd { i16 144, i16 59, ptr @.str.191 }, %struct.country_code_to_enum_rd { i16 752, i16 55, ptr @.str.192 }, %struct.country_code_to_enum_rd { i16 756, i16 55, ptr @.str.193 }, %struct.country_code_to_enum_rd { i16 760, i16 3, ptr @.str.194 }, %struct.country_code_to_enum_rd { i16 158, i16 80, ptr @.str.195 }, %struct.country_code_to_enum_rd { i16 834, i16 82, ptr @.str.196 }, %struct.country_code_to_enum_rd { i16 764, i16 59, ptr @.str.197 }, %struct.country_code_to_enum_rd { i16 780, i16 59, ptr @.str.198 }, %struct.country_code_to_enum_rd { i16 788, i16 54, ptr @.str.199 }, %struct.country_code_to_enum_rd { i16 792, i16 54, ptr @.str.200 }, %struct.country_code_to_enum_rd { i16 800, i16 59, ptr @.str.201 }, %struct.country_code_to_enum_rd { i16 804, i16 62, ptr @.str.202 }, %struct.country_code_to_enum_rd { i16 784, i16 3, ptr @.str.203 }, %struct.country_code_to_enum_rd { i16 826, i16 55, ptr @.str.204 }, %struct.country_code_to_enum_rd { i16 840, i16 58, ptr @.str.205 }, %struct.country_code_to_enum_rd { i16 841, i16 58, ptr @.str.205 }, %struct.country_code_to_enum_rd { i16 843, i16 58, ptr @.str.205 }, %struct.country_code_to_enum_rd { i16 842, i16 18, ptr @.str.206 }, %struct.country_code_to_enum_rd { i16 858, i16 59, ptr @.str.207 }, %struct.country_code_to_enum_rd { i16 860, i16 58, ptr @.str.208 }, %struct.country_code_to_enum_rd { i16 862, i16 86, ptr @.str.209 }, %struct.country_code_to_enum_rd { i16 704, i16 3, ptr @.str.210 }, %struct.country_code_to_enum_rd { i16 887, i16 3, ptr @.str.211 }, %struct.country_code_to_enum_rd { i16 716, i16 55, ptr @.str.212 }], [400 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DB\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CO\00", [29 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AL\00", [29 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DZ\00", [29 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AR\00", [29 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AM\00", [29 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AW\00", [29 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AU\00", [29 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AT\00", [29 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AZ\00", [29 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BS\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BH\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BD\00", [29 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BB\00", [29 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BY\00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BE\00", [29 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BL\00", [29 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BZ\00", [29 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BM\00", [29 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BO\00", [29 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BA\00", [29 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BR\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BN\00", [29 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BG\00", [29 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KH\00", [29 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CA\00", [29 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CL\00", [29 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CN\00", [29 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CR\00", [29 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HR\00", [29 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CY\00", [29 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CZ\00", [29 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DK\00", [29 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DO\00", [29 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EC\00", [29 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EG\00", [29 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SV\00", [29 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EE\00", [29 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FI\00", [29 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FR\00", [29 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GE\00", [29 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DE\00", [29 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GR\00", [29 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GL\00", [29 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GD\00", [29 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GU\00", [29 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GT\00", [29 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HT\00", [29 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HN\00", [29 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HK\00", [29 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HU\00", [29 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IS\00", [29 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ID\00", [29 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IR\00", [29 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IE\00", [29 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IL\00", [29 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IT\00", [29 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"JM\00", [29 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"JP\00", [29 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"JO\00", [29 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KZ\00", [29 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KE\00", [29 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KP\00", [29 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KR\00", [29 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"K2\00", [29 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"K3\00", [29 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"K4\00", [29 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KW\00", [29 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LV\00", [29 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LB\00", [29 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LI\00", [29 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LT\00", [29 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LU\00", [29 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MO\00", [29 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MK\00", [29 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MY\00", [29 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MT\00", [29 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MU\00", [29 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MX\00", [29 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MC\00", [29 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ME\00", [29 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MA\00", [29 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NP\00", [29 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NL\00", [29 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AN\00", [29 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NZ\00", [29 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NI\00", [29 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NO\00", [29 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OM\00", [29 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PK\00", [29 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PA\00", [29 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PG\00", [29 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PY\00", [29 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PE\00", [29 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PH\00", [29 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PL\00", [29 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PT\00", [29 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PR\00", [29 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"QA\00", [29 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RO\00", [29 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RU\00", [29 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SA\00", [29 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RS\00", [29 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CS\00", [29 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SG\00", [29 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SK\00", [29 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SI\00", [29 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ZA\00", [29 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ES\00", [29 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LK\00", [29 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SE\00", [29 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CH\00", [29 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SY\00", [29 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TW\00", [29 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TZ\00", [29 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TH\00", [29 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TT\00", [29 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TN\00", [29 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TR\00", [29 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UG\00", [29 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UA\00", [29 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AE\00", [29 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GB\00", [29 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"US\00", [29 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PS\00", [29 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UY\00", [29 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UZ\00", [29 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VE\00", [29 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VN\00", [29 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"YE\00", [29 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ZW\00", [29 x i8] zeroinitializer }, align 32
@regDomainPairs = internal constant { [113 x %struct.reg_dmn_pair_mapping], [186 x i8] } { [113 x %struct.reg_dmn_pair_mapping] [%struct.reg_dmn_pair_mapping { i16 0, i16 511, i16 511 }, %struct.reg_dmn_pair_mapping { i16 3, i16 255, i16 48 }, %struct.reg_dmn_pair_mapping { i16 7, i16 255, i16 48 }, %struct.reg_dmn_pair_mapping { i16 8, i16 255, i16 48 }, %struct.reg_dmn_pair_mapping { i16 32, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 33, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 34, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 58, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 59, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 63, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 18, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 19, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 20, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 35, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 55, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 53, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 54, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 48, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 57, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 52, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 61, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 62, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 50, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 49, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 17, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 16, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 82, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 69, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 77, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 71, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 66, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 88, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 90, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 91, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 93, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 94, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 95, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 80, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 92, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 85, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 86, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 73, i16 16, i16 255 }, %struct.reg_dmn_pair_mapping { i16 64, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 65, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 72, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 74, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 75, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 76, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 67, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 240, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 128, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 241, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 129, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 130, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 242, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 243, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 131, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 244, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 132, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 133, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 245, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 134, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 135, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 136, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 137, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 248, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 138, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 139, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 249, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 140, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 250, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 141, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 142, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 251, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 143, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 144, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 145, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 246, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 252, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 253, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 255, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 254, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 247, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 208, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 209, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 211, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 210, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 212, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 213, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 214, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 216, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 215, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 217, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 218, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 219, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 221, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 220, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 222, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 146, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 147, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 96, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 97, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 98, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 99, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 100, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 101, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 102, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 103, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 104, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 105, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 106, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 107, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 108, i16 255, i16 255 }], [186 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown error\00", [18 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid parameter\00", [46 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid state\00", [18 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"internal error\00", [17 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"programming error, cmd=%d %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"spurious upper rssi threshold event: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"spurious lower rssi threshold event: %d %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to configure rssi thresholds\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wmi event hb challenge resp\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wmi event dbglog len %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown cmd id 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"spurious upper snr threshold event: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"spurious lower snr threshold event: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"snr: %d, threshold: %d, lower: %d, upper: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to configure snr threshold\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"number of APs in aplist event: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AP#%d BSSID %pM Channel %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"comp: %d %d %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msg: %d %d %d %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"p2p_capab: len=%u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"p2p_info: flags=%x len=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"p2p_info: GO Power Save = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"p2p_info: MAC Address = %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"p2p_info: P2P Model = %d (%s)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Wmi event for unavailable vif, vif_index:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_CONNECT_EVENTID\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_DISCONNECT_EVENTID\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_TKIP_MICERR_EVENTID\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_BSSINFO_EVENTID\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WMI_NEIGHBOR_REPORT_EVENTID\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WMI_SCAN_COMPLETE_EVENTID\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WMI_REPORT_STATISTICS_EVENTID\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WMI_CAC_EVENTID\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WMI_PSPOLL_EVENTID\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_DTIMEXPIRY_EVENTID\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_ADDBA_REQ_EVENTID\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_DELBA_REQ_EVENTID\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"WMI_SET_HOST_SLEEP_MODE_CMD_PROCESSED_EVENTID\00", [50 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WMI_REMAIN_ON_CHNL_EVENTID\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"WMI_CANCEL_REMAIN_ON_CHNL_EVENTID\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_TX_STATUS_EVENTID\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WMI_RX_PROBE_REQ_EVENTID\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_RX_ACTION_EVENTID\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_TXE_NOTIFY_EVENTID\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: freq %d bssid %pM (AP started)\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.ath6kl_wmi_connect_event_rx = private unnamed_addr constant [28 x i8] c"ath6kl_wmi_connect_event_rx\00", align 1
@.str.260 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s: aid %u mac_addr %pM auth=%u keymgmt=%u cipher=%u apsd_info=%u (STA connected)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"wmi event connect freq %d bssid %pM listen_intvl %d beacon_intvl %d type %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"wmi event disconnect proto_reason %d bssid %pM wmi_reason %d assoc_resp_len %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"bss info evt - ch %u, snr %d, rssi %d, bssid \22%pM\22 frame_type=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.265 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"truncated neighbor event (num=%d len=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"neighbor %d/%d - %pM 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid AC: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"remain_on_chnl: freq=%u dur=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"remain_on_chnl: Unknown channel (freq=%u)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cancel_remain_on_chnl: freq=%u dur=%u status=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cancel_remain_on_chnl: Unknown channel (freq=%u)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tx_status: id=%x ack_status=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid wmi_p2p_rx_probe_req_event: len=%d dlen=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rx_probe_req: len=%u freq=%u probe_req_report=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid wmi_rx_action_event: len=%d dlen=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_action: len=%u freq=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"TXE notify event: peer %pM rate %d%% pkts %d intvl %ds\0A\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.ath6kl_wmi_control_rx = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.214, ptr @.str.215, ptr @.str.216], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.278 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 32768]
@__sancov_gen_cov_switch_values.279 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.281 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 51]
@__sancov_gen_cov_switch_values.282 = internal global [33 x i64] [i64 31, i64 16, i64 14, i64 28, i64 53, i64 62, i64 4097, i64 4101, i64 4102, i64 4103, i64 4108, i64 4109, i64 4110, i64 4111, i64 4112, i64 4114, i64 4115, i64 4116, i64 4117, i64 4118, i64 4119, i64 4120, i64 4121, i64 4122, i64 4123, i64 4127, i64 4129, i64 4131, i64 4135, i64 4136, i64 36875, i64 36877, i64 61441]
@__sancov_gen_cov_switch_values.283 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.284 = internal global [4 x i64] [i64 2, i64 16, i64 12295, i64 12296]
@__sancov_gen_cov_switch_values.285 = internal global [21 x i64] [i64 19, i64 16, i64 4098, i64 4099, i64 4100, i64 4104, i64 4105, i64 4106, i64 4107, i64 4113, i64 4124, i64 4125, i64 4128, i64 4130, i64 4167, i64 36871, i64 36872, i64 36873, i64 36874, i64 36876, i64 36884]
@__sancov_gen_cov_switch_values.286 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 125, i32 6 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 181, i32 7 }
@___asan_gen_.293 = private unnamed_addr constant [9 x i8] c"up_to_ac\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 112, i32 17 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 797, i32 29 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 849, i32 29 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1796, i32 29 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1798, i32 45 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1863, i32 6 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1867, i32 40 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1914, i32 29 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1939, i32 29 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2091, i32 29 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2092, i32 15 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2092, i32 28 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2315, i32 6 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2576, i32 7 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2589, i32 6 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2640, i32 14 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2645, i32 14 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2664, i32 7 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2670, i32 6 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2890, i32 14 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2935, i32 14 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3210, i32 6 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3262, i32 15 }
@___asan_gen_.362 = private unnamed_addr constant [19 x i8] c"wmi_rate_tbl_mcs15\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 62, i32 18 }
@___asan_gen_.365 = private unnamed_addr constant [13 x i8] c"wmi_rate_tbl\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 29, i32 18 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3406, i32 6 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3427, i32 29 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3567, i32 6 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3590, i32 29 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3612, i32 29 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3630, i32 29 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3762, i32 6 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3783, i32 29 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3800, i32 29 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3810, i32 29 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4128, i32 14 }
@___asan_gen_.401 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4156, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2794, i32 6 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 2844, i32 6 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3707, i32 6 }
@___asan_gen_.420 = private unnamed_addr constant [43 x i8] c"../drivers/net/wireless/ath/ath6kl/trace.h\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 62, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 108, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3990, i32 29 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3991, i32 45 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3996, i32 30 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4000, i32 30 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4004, i32 30 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4008, i32 30 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4012, i32 30 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4016, i32 30 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4020, i32 30 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4024, i32 30 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4028, i32 30 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4032, i32 30 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4035, i32 30 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4039, i32 30 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4043, i32 30 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4047, i32 30 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4050, i32 30 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4053, i32 30 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4057, i32 30 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4061, i32 30 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4064, i32 30 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4068, i32 30 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4071, i32 30 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4075, i32 30 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4079, i32 30 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4082, i32 30 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4086, i32 30 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4089, i32 30 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4093, i32 7 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4097, i32 7 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4100, i32 30 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4104, i32 30 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 4108, i32 30 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1211, i32 29 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1055, i32 30 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1058, i32 30 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1002, i32 31 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1005, i32 16 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1015, i32 30 }
@___asan_gen_.542 = private unnamed_addr constant [13 x i8] c"allCountries\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 301, i32 39 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 302, i32 26 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 303, i32 28 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 304, i32 30 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 305, i32 30 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 306, i32 31 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 307, i32 30 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 308, i32 28 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 309, i32 31 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 311, i32 30 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 312, i32 33 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 313, i32 29 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 314, i32 29 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 315, i32 32 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 316, i32 30 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 317, i32 30 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 318, i32 30 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 319, i32 31 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 320, i32 28 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 321, i32 28 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 322, i32 29 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 323, i32 34 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 324, i32 28 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 325, i32 39 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 326, i32 31 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 327, i32 31 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 328, i32 27 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 330, i32 27 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 331, i32 27 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 333, i32 32 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 334, i32 30 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 335, i32 29 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 336, i32 28 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 337, i32 30 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 338, i32 39 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 339, i32 29 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 340, i32 28 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 341, i32 33 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 342, i32 30 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 343, i32 30 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 344, i32 29 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 345, i32 30 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 346, i32 30 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 347, i32 29 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 348, i32 32 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 349, i32 28 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 350, i32 25 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 351, i32 30 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 352, i32 28 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 353, i32 30 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 354, i32 31 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 355, i32 30 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 356, i32 30 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 357, i32 27 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 358, i32 32 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 359, i32 26 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 360, i32 30 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 361, i32 29 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 362, i32 28 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 363, i32 29 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 365, i32 26 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 424, i32 29 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 425, i32 33 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 426, i32 27 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 427, i32 33 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 428, i32 31 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 429, i32 32 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 430, i32 32 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 431, i32 33 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 432, i32 29 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 433, i32 29 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 434, i32 30 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 435, i32 36 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 436, i32 32 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 437, i32 33 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 438, i32 27 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 439, i32 32 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 440, i32 30 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 441, i32 28 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 442, i32 32 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 443, i32 27 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 444, i32 29 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 445, i32 33 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 446, i32 29 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 447, i32 27 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 448, i32 34 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 449, i32 43 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 450, i32 33 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 451, i32 30 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 452, i32 29 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 453, i32 26 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 454, i32 31 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 455, i32 27 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 456, i32 38 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 457, i32 30 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 458, i32 26 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 459, i32 33 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 460, i32 29 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 461, i32 31 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 462, i32 32 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 463, i32 27 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 464, i32 30 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 465, i32 29 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 466, i32 35 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 467, i32 29 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 468, i32 40 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 469, i32 31 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 470, i32 31 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 471, i32 31 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 472, i32 34 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 473, i32 28 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 474, i32 31 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 475, i32 29 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 476, i32 34 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 477, i32 28 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 478, i32 27 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 479, i32 30 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 480, i32 30 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 481, i32 39 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 482, i32 30 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 483, i32 29 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 484, i32 28 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 485, i32 30 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 486, i32 26 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 487, i32 37 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 488, i32 34 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 494, i32 40 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 495, i32 29 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 496, i32 31 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 497, i32 31 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 498, i32 31 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 499, i32 28 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 500, i32 31 }
@___asan_gen_.941 = private unnamed_addr constant [15 x i8] c"regDomainPairs\00", align 1
@___asan_gen_.942 = private unnamed_addr constant [52 x i8] c"../drivers/net/wireless/ath/ath6kl/../regd_common.h\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.942, i32 165, i32 36 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1325, i32 21 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1331, i32 10 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1334, i32 10 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1337, i32 10 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1341, i32 29 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1437, i32 8 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1461, i32 8 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1497, i32 14 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3868, i32 30 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3872, i32 30 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3876, i32 15 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1691, i32 8 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1709, i32 8 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1738, i32 6 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1744, i32 14 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1766, i32 6 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1774, i32 30 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 487, i32 29 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 495, i32 30 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 637, i32 29 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 678, i32 29 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 685, i32 30 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 694, i32 30 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 703, i32 30 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 705, i32 24 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 705, i32 33 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3898, i32 7 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3905, i32 30 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3908, i32 30 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3911, i32 30 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3914, i32 30 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3917, i32 30 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3921, i32 30 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3924, i32 30 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3927, i32 30 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3930, i32 30 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3933, i32 30 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3936, i32 30 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3939, i32 30 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3943, i32 7 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3946, i32 30 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3950, i32 7 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3954, i32 30 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3957, i32 30 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3960, i32 30 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 3963, i32 30 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 870, i32 8 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 877, i32 8 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 899, i32 6 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1032, i32 6 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1103, i32 6 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1298, i32 7 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1303, i32 30 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1518, i32 14 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 519, i32 29 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 524, i32 7 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 553, i32 6 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 558, i32 7 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 584, i32 29 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 613, i32 14 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 618, i32 6 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 656, i32 14 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 660, i32 29 }
@___asan_gen_.1133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1134 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath6kl/wmi.c\00", align 1
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1134, i32 1598, i32 29 }
@___asan_gen_.1136 = private unnamed_addr constant [35 x i8] c"switch.table.ath6kl_wmi_control_rx\00", align 1
@llvm.compiler.used = appending global [284 x ptr] [ptr @.str, ptr @.str.1, ptr @up_to_ac, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @wmi_rate_tbl_mcs15, ptr @wmi_rate_tbl, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @ath6kl_wmi_init.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @allCountries, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @regDomainPairs, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @switch.table.ath6kl_wmi_control_rx], section "llvm.metadata"
@0 = internal global [284 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @up_to_ac to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmi_rate_tbl_mcs15 to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmi_rate_tbl to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_wmi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allCountries to i32), i32 1552, i32 1952, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regDomainPairs to i32), i32 678, i32 864, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath6kl_wmi_control_rx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_wmi_set_control_ep(ptr nocapture noundef writeonly %wmi, i32 noundef %ep_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ep_id)
  %cmp = icmp eq i32 %ep_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ep_id)
  %cmp1 = icmp sgt i32 %ep_id, 8
  %spec.select = or i1 %cmp, %cmp1
  br i1 %spec.select, label %do.end, label %if.end22.critedge, !prof !587

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end22.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ep_id23 = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 5
  %0 = ptrtoint ptr %ep_id23 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ep_id, ptr %ep_id23, align 4
  br label %return

return:                                           ; preds = %if.end22.critedge, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath6kl_wmi_get_control_ep(ptr nocapture noundef readonly %wmi) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_id = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 5
  %0 = ptrtoint ptr %ep_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ep_id, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath6kl_get_vif_by_index(ptr noundef %ar, i8 noundef zeroext %if_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %if_idx to i32
  %vif_max = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 17
  %0 = ptrtoint ptr %vif_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif_max, align 4
  %sub = add i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp = icmp ult i32 %sub, %conv
  br i1 %cmp, label %do.end, label %if.end22, !prof !587

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end22:                                         ; preds = %entry
  %list_lock = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #10
  %vif_list = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end22
  %vif.0.in = phi ptr [ %vif_list, %if.end22 ], [ %vif.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %vif.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %vif.0 = load ptr, ptr %vif.0.in, align 4
  %cmp25.not = icmp eq ptr %vif.0, %vif_list
  br i1 %cmp25.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %fw_vif_idx = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0, i32 0, i32 5
  %3 = ptrtoint ptr %fw_vif_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fw_vif_idx, align 8
  %cmp31 = icmp eq i8 %4, %if_idx
  br i1 %cmp31, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %found.0 = phi ptr [ null, %for.cond.for.end_crit_edge ], [ %vif.0, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %found.0, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_dix_2_dot3(ptr nocapture noundef readnone %wmi, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %do.end, label %if.end21, !prof !587

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end21:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i)
  %cmp22 = icmp ult i32 %sub.ptr.sub.i, 14
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %5)
  %cmp27 = icmp ugt i16 %5, 1535
  br i1 %cmp27, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ath6kl_wmi_dix_2_dot3) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %call31 = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 8) #10
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = trunc i32 %7 to i16
  %conv33 = add i16 %10, -6
  %11 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %conv33, ptr %h_proto, align 1
  %12 = call ptr @memcpy(ptr %9, ptr %1, i32 14)
  %add.ptr = getelementptr i8, ptr %9, i32 14
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -86, ptr %add.ptr, align 1
  %ssap = getelementptr i8, ptr %9, i32 15
  %14 = ptrtoint ptr %ssap to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -86, ptr %ssap, align 1
  %cntl = getelementptr i8, ptr %9, i32 16
  %15 = ptrtoint ptr %cntl to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %cntl, align 1
  %org_code = getelementptr i8, ptr %9, i32 17
  %16 = ptrtoint ptr %org_code to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %org_code, align 1
  %arrayidx36 = getelementptr i8, ptr %9, i32 18
  %17 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx36, align 1
  %arrayidx38 = getelementptr i8, ptr %9, i32 19
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx38, align 1
  %eth_type = getelementptr i8, ptr %9, i32 20
  %19 = ptrtoint ptr %eth_type to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %5, ptr %eth_type, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then29, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end30 ], [ 0, %if.then29 ], [ -12, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_data_hdr_add(ptr nocapture noundef readonly %wmi, ptr noundef %skb, i8 noundef zeroext %msg_type, i32 noundef %flags, i32 noundef %data_type, i8 noundef zeroext %meta_ver, ptr noundef readonly %tx_meta_info, i8 noundef zeroext %if_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %conv = zext i8 %if_idx to i32
  %parent_dev = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %0 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_dev, align 4
  %vif_max = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %vif_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif_max, align 4
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp1 = icmp ult i32 %sub, %conv
  br i1 %cmp1, label %lor.rhs.do.end_crit_edge, label %if.end23, !prof !587

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %lor.rhs
  %tobool24.not = icmp eq ptr %tx_meta_info, null
  br i1 %tobool24.not, label %if.end23.if.end29_crit_edge, label %if.end22.i

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end22.i:                                       ; preds = %if.end23
  %4 = zext i8 %meta_ver to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %meta_ver, label %if.end22.i.if.end29_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb23.i
  ]

if.end22.i.if.end29_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

sw.bb.i:                                          ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 12) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %6, align 1
  %rate_plcy_id.i = getelementptr inbounds %struct.wmi_tx_meta_v1, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %rate_plcy_id.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rate_plcy_id.i, align 1
  br label %if.end29

sw.bb23.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %call24.i = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 12) #10
  %data25.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data25.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data25.i, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %tx_meta_info, i32 3)
  br label %if.end29

if.end29:                                         ; preds = %sw.bb23.i, %sw.bb.i, %if.end22.i.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  %call30 = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 6) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 6)
  %info = getelementptr inbounds %struct.wmi_data_hdr, ptr %13, i32 0, i32 1
  %data_type.tr = trunc i32 %data_type to i8
  %15 = shl i8 %data_type.tr, 6
  %conv36 = or i8 %15, %msg_type
  %16 = trunc i32 %flags to i8
  %17 = shl i8 %16, 5
  %18 = and i8 %17, 32
  %19 = or i8 %conv36, %18
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %info, align 1
  %and44 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end29.if.end50_crit_edge, label %if.then46

if.end29.if.end50_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then46:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %info3 = getelementptr inbounds %struct.wmi_data_hdr, ptr %13, i32 0, i32 3
  %21 = ptrtoint ptr %info3 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %info3, align 1
  %23 = or i16 %22, 4096
  store i16 %23, ptr %info3, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end29.if.end50_crit_edge
  %conv51 = zext i8 %meta_ver to i16
  %24 = shl nuw nsw i16 %conv51, 5
  %25 = and i16 %24, 224
  %info2 = getelementptr inbounds %struct.wmi_data_hdr, ptr %13, i32 0, i32 2
  %26 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %info2, align 1
  %or56 = or i16 %27, %25
  store i16 %or56, ptr %info2, align 1
  %28 = and i8 %if_idx, 15
  %conv60 = zext i8 %28 to i16
  %29 = shl nuw nsw i16 %conv60, 8
  %info362 = getelementptr inbounds %struct.wmi_data_hdr, ptr %13, i32 0, i32 3
  %30 = ptrtoint ptr %info362 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %info362, align 1
  %or64 = or i16 %31, %29
  store i16 %or64, ptr %info362, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ath6kl_wmi_determine_user_priority(ptr nocapture noundef readonly %pkt, i32 noundef %layer2_pri) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tos = getelementptr inbounds %struct.iphdr, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tos, align 1
  %2 = lshr i8 %1, 5
  %and4 = and i32 %layer2_pri, 7
  %conv5 = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %conv5)
  %cmp = icmp ugt i32 %and4, %conv5
  %3 = trunc i32 %layer2_pri to i8
  %conv10 = and i8 %3, 7
  %retval.0 = select i1 %cmp, i8 %conv10, i8 %2
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ath6kl_wmi_get_traffic_class(i8 noundef zeroext %user_priority) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %user_priority, 7
  %and = zext i8 %0 to i32
  %arrayidx = getelementptr [8 x i8], ptr @up_to_ac, i32 0, i32 %and
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_implicit_create_pstream(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef readonly %skb, i32 noundef %layer2_priority, i1 noundef zeroext %wmm_enabled, ptr nocapture noundef writeonly %ac) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.wmi_create_pstream_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #10
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %do.end, label %if.end21, !prof !587

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 312, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end21:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  br i1 %wmm_enabled, label %if.else, label %if.end21.if.end42_crit_edge

if.end21.if.end42_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.else:                                          ; preds = %if.end21
  %info2 = getelementptr inbounds %struct.wmi_data_hdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %info2, align 1
  %4 = and i16 %3, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool22.not = icmp eq i16 %4, 0
  %cond = select i1 %tobool22.not, i32 0, i32 12
  %add.ptr = getelementptr i8, ptr %1, i32 6
  %add.ptr25 = getelementptr i8, ptr %add.ptr, i32 %cond
  %add.ptr26 = getelementptr i8, ptr %add.ptr25, i32 14
  %eth_type = getelementptr inbounds %struct.ath6kl_llc_snap_hdr, ptr %add.ptr26, i32 0, i32 4
  %5 = ptrtoint ptr %eth_type to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %eth_type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %6)
  %cmp29 = icmp eq i16 %6, 2048
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr32 = getelementptr i8, ptr %add.ptr26, i32 8
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr32, i32 0, i32 1
  %7 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tos.i, align 1
  %9 = lshr i8 %8, 5
  %and4.i = and i32 %layer2_priority, 7
  %conv5.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i, i32 %conv5.i)
  %cmp.i = icmp ugt i32 %and4.i, %conv5.i
  %10 = trunc i32 %layer2_priority to i8
  %conv10.i = and i8 %10, 7
  %retval.0.i = select i1 %cmp.i, i8 %conv10.i, i8 %9
  br label %if.end36

if.else33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %11 = trunc i32 %layer2_priority to i8
  %conv35 = and i8 %11, 7
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then31
  %usr_pri.0 = phi i8 [ %retval.0.i, %if.then31 ], [ %conv35, %if.else33 ]
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %13)
  %cmp38 = icmp eq i16 %13, -30578
  %spec.select = select i1 %cmp38, i8 7, i8 %usr_pri.0
  br label %if.end42

if.end42:                                         ; preds = %if.end36, %if.end21.if.end42_crit_edge
  %usr_pri.1 = phi i8 [ 0, %if.end21.if.end42_crit_edge ], [ %spec.select, %if.end36 ]
  %traffic_class43 = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 8
  %14 = ptrtoint ptr %traffic_class43 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %traffic_class43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp45 = icmp eq i8 %15, 2
  %16 = and i8 %usr_pri.1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %switch = icmp eq i8 %16, 4
  %or.cond = select i1 %cmp45, i1 %switch, i1 false
  %usr_pri.2 = select i1 %or.cond, i8 1, i8 %usr_pri.1
  %and56 = zext i8 %usr_pri.2 to i32
  %arrayidx = getelementptr [8 x i8], ptr @up_to_ac, i32 0, i32 %and56
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %info.i = getelementptr inbounds %struct.wmi_data_hdr, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %info.i, align 1
  %21 = and i8 %20, -29
  %shl.i = shl nuw nsw i8 %usr_pri.2, 2
  %or.i = or i8 %shl.i, %21
  store i8 %or.i, ptr %info.i, align 1
  %lock = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %fat_pipe_exist = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 1
  %22 = ptrtoint ptr %fat_pipe_exist to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fat_pipe_exist, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %conv58 = zext i8 %23 to i32
  %conv59 = zext i8 %18 to i32
  %shl = shl nuw i32 1, %conv59
  %and60 = and i32 %shl, %conv58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then62, label %if.end42.if.end65_crit_edge

if.end42.if.end65_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then62:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %24 = call ptr @memset(ptr %cmd, i32 0, i32 64)
  %traffic_class63 = getelementptr inbounds %struct.wmi_create_pstream_cmd, ptr %cmd, i32 0, i32 15
  %25 = ptrtoint ptr %traffic_class63 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %18, ptr %traffic_class63, align 1
  %user_pri = getelementptr inbounds %struct.wmi_create_pstream_cmd, ptr %cmd, i32 0, i32 21
  %26 = ptrtoint ptr %user_pri to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %usr_pri.2, ptr %user_pri, align 1
  %inactivity_int = getelementptr inbounds %struct.wmi_create_pstream_cmd, ptr %cmd, i32 0, i32 2
  %27 = ptrtoint ptr %inactivity_int to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 -2012020736, ptr %inactivity_int, align 1
  %tsid = getelementptr inbounds %struct.wmi_create_pstream_cmd, ptr %cmd, i32 0, i32 20
  %28 = ptrtoint ptr %tsid to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %tsid, align 1
  %call64 = call i32 @ath6kl_wmi_create_pstream_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %cmd)
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end42.if.end65_crit_edge
  %29 = ptrtoint ptr %ac to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %18, ptr %ac, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end65 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_create_pstream_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr nocapture noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_pri = getelementptr inbounds %struct.wmi_create_pstream_cmd, ptr %params, i32 0, i32 21
  %0 = ptrtoint ptr %user_pri to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %user_pri, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp ult i8 %1, 8
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %and = zext i8 %1 to i32
  %arrayidx = getelementptr [8 x i8], ptr @up_to_ac, i32 0, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %traffic_class = getelementptr inbounds %struct.wmi_create_pstream_cmd, ptr %params, i32 0, i32 15
  %4 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %traffic_class, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp6 = icmp eq i8 %3, %5
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true8:                                   ; preds = %land.lhs.true
  %traffic_direc = getelementptr inbounds %struct.wmi_create_pstream_cmd, ptr %params, i32 0, i32 16
  %6 = ptrtoint ptr %traffic_direc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %traffic_direc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %switch = icmp ult i8 %7, 3
  br i1 %switch, label %land.lhs.true21, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true21:                                  ; preds = %land.lhs.true8
  %traffic_type = getelementptr inbounds %struct.wmi_create_pstream_cmd, ptr %params, i32 0, i32 18
  %8 = ptrtoint ptr %traffic_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %traffic_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %switch167 = icmp ult i8 %9, 2
  br i1 %switch167, label %land.lhs.true30, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true30:                                  ; preds = %land.lhs.true21
  %voice_psc_cap = getelementptr inbounds %struct.wmi_create_pstream_cmd, ptr %params, i32 0, i32 19
  %10 = ptrtoint ptr %voice_psc_cap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %voice_psc_cap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %switch168 = icmp ult i8 %11, 3
  br i1 %switch168, label %land.lhs.true44, label %land.lhs.true30.cleanup_crit_edge

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true44:                                  ; preds = %land.lhs.true30
  %tsid = getelementptr inbounds %struct.wmi_create_pstream_cmd, ptr %params, i32 0, i32 20
  %12 = ptrtoint ptr %tsid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tsid, align 1
  %14 = add i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %14)
  %15 = icmp ult i8 %14, 17
  br i1 %15, label %if.end, label %land.lhs.true44.cleanup_crit_edge

land.lhs.true44.cleanup_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true44
  %min_phy_rate = getelementptr inbounds %struct.wmi_create_pstream_cmd, ptr %params, i32 0, i32 10
  %16 = ptrtoint ptr %min_phy_rate to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %min_phy_rate, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %div53 = udiv i32 %18, 1000000
  %nominal_phy54 = getelementptr inbounds %struct.wmi_create_pstream_cmd, ptr %params, i32 0, i32 22
  %19 = ptrtoint ptr %nominal_phy54 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nominal_phy54, align 1
  %conv55 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div53, i32 %conv55)
  %cmp56.not = icmp ugt i32 %div53, %conv55
  br i1 %cmp56.not, label %if.end.if.end65_crit_edge, label %if.then58

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then58:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %div61 = shl nuw nsw i32 %conv55, 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.14, i32 noundef %div53, i32 noundef %div61) #10
  %conv62 = trunc i32 %div61 to i8
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %if.end.if.end65_crit_edge
  %storemerge = phi i8 [ %conv62, %if.then58 ], [ 0, %if.end.if.end65_crit_edge ]
  %21 = ptrtoint ptr %nominal_phy54 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %storemerge, ptr %nominal_phy54, align 1
  %call = tail call fastcc ptr @ath6kl_wmi_get_new_buf(i32 noundef 64)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end65.cleanup_crit_edge, label %if.end67

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end67:                                         ; preds = %if.end65
  %22 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %traffic_class, align 1
  %conv69 = zext i8 %23 to i32
  %24 = ptrtoint ptr %tsid to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tsid, align 1
  %conv71 = zext i8 %25 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.15, i32 noundef %conv69, i32 noundef %conv71) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = call ptr @memcpy(ptr %27, ptr %params, i32 64)
  %29 = ptrtoint ptr %tsid to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tsid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp74 = icmp eq i8 %30, -1
  %lock = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %fat_pipe_exist = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 1
  %31 = ptrtoint ptr %fat_pipe_exist to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fat_pipe_exist, align 4
  %33 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %traffic_class, align 1
  %conv79 = zext i8 %34 to i32
  %shl = shl nuw i32 1, %conv79
  %35 = trunc i32 %shl to i8
  %conv81 = and i8 %32, %35
  br i1 %cmp74, label %if.then76, label %if.else89

if.then76:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %conv87 = or i8 %32, %35
  br label %if.end114

if.else89:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %tsid to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tsid, align 1
  %conv99 = zext i8 %37 to i32
  %shl100 = shl nuw i32 1, %conv99
  %arrayidx102 = getelementptr [4 x i16], ptr %wmi, i32 0, i32 %conv79
  %38 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx102, align 2
  %40 = trunc i32 %shl100 to i16
  %conv105 = or i16 %39, %40
  store i16 %conv105, ptr %arrayidx102, align 2
  %41 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %traffic_class, align 1
  %conv107 = zext i8 %42 to i32
  %shl108 = shl nuw i32 1, %conv107
  %43 = ptrtoint ptr %fat_pipe_exist to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fat_pipe_exist, align 4
  %45 = trunc i32 %shl108 to i8
  %conv112 = or i8 %44, %45
  br label %if.end114

if.end114:                                        ; preds = %if.else89, %if.then76
  %conv112.sink = phi i8 [ %conv112, %if.else89 ], [ %conv87, %if.then76 ]
  %46 = ptrtoint ptr %fat_pipe_exist to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv112.sink, ptr %fat_pipe_exist, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv81)
  %tobool115.not = icmp eq i8 %conv81, 0
  br i1 %tobool115.not, label %if.then116, label %if.end114.if.end118_crit_edge

if.end114.if.end118_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then116:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  %parent_dev = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %47 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent_dev, align 4
  %49 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %traffic_class, align 1
  tail call void @ath6kl_indicate_tx_activity(ptr noundef %48, i8 noundef zeroext %50, i1 noundef zeroext true) #10
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end114.if.end118_crit_edge
  %call119 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call, i32 noundef 5, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %if.end65.cleanup_crit_edge, %land.lhs.true44.cleanup_crit_edge, %land.lhs.true30.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call119, %if.end118 ], [ -22, %land.lhs.true44.cleanup_crit_edge ], [ -22, %land.lhs.true30.cleanup_crit_edge ], [ -22, %land.lhs.true21.cleanup_crit_edge ], [ -22, %land.lhs.true8.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_dot11_hdr_remove(ptr nocapture noundef readnone %wmi, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %do.end, label %if.end21, !prof !587

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 397, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end21:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = and i16 %3, -4096
  %wh.sroa.6.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 4
  %5 = ptrtoint ptr %wh.sroa.6.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %wh.sroa.6.0.copyload = load i8, ptr %wh.sroa.6.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.9.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 5
  %6 = ptrtoint ptr %wh.sroa.9.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %wh.sroa.9.0.copyload = load i8, ptr %wh.sroa.9.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.12.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 6
  %7 = ptrtoint ptr %wh.sroa.12.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %wh.sroa.12.0.copyload = load i8, ptr %wh.sroa.12.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.15.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 7
  %8 = ptrtoint ptr %wh.sroa.15.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %wh.sroa.15.0.copyload = load i8, ptr %wh.sroa.15.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.18.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 8
  %9 = ptrtoint ptr %wh.sroa.18.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %wh.sroa.18.0.copyload = load i8, ptr %wh.sroa.18.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.21.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 9
  %10 = ptrtoint ptr %wh.sroa.21.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %wh.sroa.21.0.copyload = load i8, ptr %wh.sroa.21.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.24.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 10
  %11 = ptrtoint ptr %wh.sroa.24.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %wh.sroa.24.0.copyload = load i8, ptr %wh.sroa.24.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.27.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 11
  %12 = ptrtoint ptr %wh.sroa.27.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %wh.sroa.27.0.copyload = load i8, ptr %wh.sroa.27.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.30.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 12
  %13 = ptrtoint ptr %wh.sroa.30.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %wh.sroa.30.0.copyload = load i8, ptr %wh.sroa.30.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.33.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 13
  %14 = ptrtoint ptr %wh.sroa.33.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %wh.sroa.33.0.copyload = load i8, ptr %wh.sroa.33.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.36.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 14
  %15 = ptrtoint ptr %wh.sroa.36.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %wh.sroa.36.0.copyload = load i8, ptr %wh.sroa.36.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.39.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 15
  %16 = ptrtoint ptr %wh.sroa.39.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %wh.sroa.39.0.copyload = load i8, ptr %wh.sroa.39.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.42.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 16
  %17 = ptrtoint ptr %wh.sroa.42.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %wh.sroa.42.0.copyload = load i8, ptr %wh.sroa.42.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.45.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 17
  %18 = ptrtoint ptr %wh.sroa.45.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %wh.sroa.45.0.copyload = load i8, ptr %wh.sroa.45.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.48.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 18
  %19 = ptrtoint ptr %wh.sroa.48.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %wh.sroa.48.0.copyload = load i8, ptr %wh.sroa.48.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.51.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 19
  %20 = ptrtoint ptr %wh.sroa.51.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %wh.sroa.51.0.copyload = load i8, ptr %wh.sroa.51.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.54.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 20
  %21 = ptrtoint ptr %wh.sroa.54.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %wh.sroa.54.0.copyload = load i8, ptr %wh.sroa.54.0.datap.0.71.sroa_idx, align 1
  %wh.sroa.57.0.datap.0.71.sroa_idx = getelementptr inbounds i8, ptr %1, i32 21
  %22 = ptrtoint ptr %wh.sroa.57.0.datap.0.71.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %wh.sroa.57.0.copyload = load i8, ptr %wh.sroa.57.0.datap.0.71.sroa_idx, align 1
  %23 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.278)
  switch i16 %4, label %if.end21.if.end34_crit_edge [
    i16 -32768, label %if.end21.if.end34.sink.split_crit_edge
    i16 0, label %if.then31
  ]

if.end21.if.end34.sink.split_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.sink.split

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.then31, %if.end21.if.end34.sink.split_crit_edge
  %.sink = phi i32 [ 24, %if.then31 ], [ 28, %if.end21.if.end34.sink.split_crit_edge ]
  %call32 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef %.sink) #10
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.end21.if.end34_crit_edge
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %eth_type = getelementptr inbounds %struct.ath6kl_llc_snap_hdr, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %eth_type to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %eth_type, align 1
  %28 = shl i16 %3, 8
  %29 = and i16 %28, 768
  %and38 = zext i16 %29 to i32
  %30 = zext i32 %and38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.279)
  switch i32 %and38, label %sw.default [
    i32 256, label %sw.bb
    i32 512, label %sw.bb42
    i32 768, label %if.end34.sw.epilog_crit_edge
  ]

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb42, %sw.bb, %if.end34.sw.epilog_crit_edge
  %eth_hdr.sroa.0.0 = phi i8 [ %wh.sroa.6.0.copyload, %sw.default ], [ 0, %if.end34.sw.epilog_crit_edge ], [ %wh.sroa.6.0.copyload, %sw.bb42 ], [ %wh.sroa.42.0.copyload, %sw.bb ]
  %eth_hdr.sroa.8.0 = phi i8 [ %wh.sroa.9.0.copyload, %sw.default ], [ 0, %if.end34.sw.epilog_crit_edge ], [ %wh.sroa.9.0.copyload, %sw.bb42 ], [ %wh.sroa.45.0.copyload, %sw.bb ]
  %eth_hdr.sroa.9.0 = phi i8 [ %wh.sroa.12.0.copyload, %sw.default ], [ 0, %if.end34.sw.epilog_crit_edge ], [ %wh.sroa.12.0.copyload, %sw.bb42 ], [ %wh.sroa.48.0.copyload, %sw.bb ]
  %eth_hdr.sroa.10.0 = phi i8 [ %wh.sroa.15.0.copyload, %sw.default ], [ 0, %if.end34.sw.epilog_crit_edge ], [ %wh.sroa.15.0.copyload, %sw.bb42 ], [ %wh.sroa.51.0.copyload, %sw.bb ]
  %eth_hdr.sroa.11.0 = phi i8 [ %wh.sroa.18.0.copyload, %sw.default ], [ 0, %if.end34.sw.epilog_crit_edge ], [ %wh.sroa.18.0.copyload, %sw.bb42 ], [ %wh.sroa.54.0.copyload, %sw.bb ]
  %eth_hdr.sroa.12.0 = phi i8 [ %wh.sroa.21.0.copyload, %sw.default ], [ 0, %if.end34.sw.epilog_crit_edge ], [ %wh.sroa.21.0.copyload, %sw.bb42 ], [ %wh.sroa.57.0.copyload, %sw.bb ]
  %eth_hdr.sroa.13.0 = phi i8 [ %wh.sroa.24.0.copyload, %sw.default ], [ 0, %if.end34.sw.epilog_crit_edge ], [ %wh.sroa.42.0.copyload, %sw.bb42 ], [ %wh.sroa.24.0.copyload, %sw.bb ]
  %eth_hdr.sroa.17.0 = phi i8 [ %wh.sroa.27.0.copyload, %sw.default ], [ 0, %if.end34.sw.epilog_crit_edge ], [ %wh.sroa.45.0.copyload, %sw.bb42 ], [ %wh.sroa.27.0.copyload, %sw.bb ]
  %eth_hdr.sroa.18.0 = phi i8 [ %wh.sroa.30.0.copyload, %sw.default ], [ 0, %if.end34.sw.epilog_crit_edge ], [ %wh.sroa.48.0.copyload, %sw.bb42 ], [ %wh.sroa.30.0.copyload, %sw.bb ]
  %eth_hdr.sroa.19.0 = phi i8 [ %wh.sroa.33.0.copyload, %sw.default ], [ 0, %if.end34.sw.epilog_crit_edge ], [ %wh.sroa.51.0.copyload, %sw.bb42 ], [ %wh.sroa.33.0.copyload, %sw.bb ]
  %eth_hdr.sroa.20.0 = phi i8 [ %wh.sroa.36.0.copyload, %sw.default ], [ 0, %if.end34.sw.epilog_crit_edge ], [ %wh.sroa.54.0.copyload, %sw.bb42 ], [ %wh.sroa.36.0.copyload, %sw.bb ]
  %eth_hdr.sroa.21.0 = phi i8 [ %wh.sroa.39.0.copyload, %sw.default ], [ 0, %if.end34.sw.epilog_crit_edge ], [ %wh.sroa.57.0.copyload, %sw.bb42 ], [ %wh.sroa.39.0.copyload, %sw.bb ]
  %call58 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 8) #10
  %call59 = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 14) #10
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %eth_hdr.sroa.0.0, ptr %32, align 1
  %eth_hdr.sroa.8.0.datap.0.73.sroa_idx = getelementptr inbounds i8, ptr %32, i32 1
  %34 = ptrtoint ptr %eth_hdr.sroa.8.0.datap.0.73.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %eth_hdr.sroa.8.0, ptr %eth_hdr.sroa.8.0.datap.0.73.sroa_idx, align 1
  %eth_hdr.sroa.9.0.datap.0.73.sroa_idx = getelementptr inbounds i8, ptr %32, i32 2
  %35 = ptrtoint ptr %eth_hdr.sroa.9.0.datap.0.73.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %eth_hdr.sroa.9.0, ptr %eth_hdr.sroa.9.0.datap.0.73.sroa_idx, align 1
  %eth_hdr.sroa.10.0.datap.0.73.sroa_idx = getelementptr inbounds i8, ptr %32, i32 3
  %36 = ptrtoint ptr %eth_hdr.sroa.10.0.datap.0.73.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %eth_hdr.sroa.10.0, ptr %eth_hdr.sroa.10.0.datap.0.73.sroa_idx, align 1
  %eth_hdr.sroa.11.0.datap.0.73.sroa_idx = getelementptr inbounds i8, ptr %32, i32 4
  %37 = ptrtoint ptr %eth_hdr.sroa.11.0.datap.0.73.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %eth_hdr.sroa.11.0, ptr %eth_hdr.sroa.11.0.datap.0.73.sroa_idx, align 1
  %eth_hdr.sroa.12.0.datap.0.73.sroa_idx = getelementptr inbounds i8, ptr %32, i32 5
  %38 = ptrtoint ptr %eth_hdr.sroa.12.0.datap.0.73.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %eth_hdr.sroa.12.0, ptr %eth_hdr.sroa.12.0.datap.0.73.sroa_idx, align 1
  %eth_hdr.sroa.13.0.datap.0.73.sroa_idx = getelementptr inbounds i8, ptr %32, i32 6
  %39 = ptrtoint ptr %eth_hdr.sroa.13.0.datap.0.73.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %eth_hdr.sroa.13.0, ptr %eth_hdr.sroa.13.0.datap.0.73.sroa_idx, align 1
  %eth_hdr.sroa.17.0.datap.0.73.sroa_idx = getelementptr inbounds i8, ptr %32, i32 7
  %40 = ptrtoint ptr %eth_hdr.sroa.17.0.datap.0.73.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %eth_hdr.sroa.17.0, ptr %eth_hdr.sroa.17.0.datap.0.73.sroa_idx, align 1
  %eth_hdr.sroa.18.0.datap.0.73.sroa_idx = getelementptr inbounds i8, ptr %32, i32 8
  %41 = ptrtoint ptr %eth_hdr.sroa.18.0.datap.0.73.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %eth_hdr.sroa.18.0, ptr %eth_hdr.sroa.18.0.datap.0.73.sroa_idx, align 1
  %eth_hdr.sroa.19.0.datap.0.73.sroa_idx = getelementptr inbounds i8, ptr %32, i32 9
  %42 = ptrtoint ptr %eth_hdr.sroa.19.0.datap.0.73.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %eth_hdr.sroa.19.0, ptr %eth_hdr.sroa.19.0.datap.0.73.sroa_idx, align 1
  %eth_hdr.sroa.20.0.datap.0.73.sroa_idx = getelementptr inbounds i8, ptr %32, i32 10
  %43 = ptrtoint ptr %eth_hdr.sroa.20.0.datap.0.73.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %eth_hdr.sroa.20.0, ptr %eth_hdr.sroa.20.0.datap.0.73.sroa_idx, align 1
  %eth_hdr.sroa.21.0.datap.0.73.sroa_idx = getelementptr inbounds i8, ptr %32, i32 11
  %44 = ptrtoint ptr %eth_hdr.sroa.21.0.datap.0.73.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %eth_hdr.sroa.21.0, ptr %eth_hdr.sroa.21.0.datap.0.73.sroa_idx, align 1
  %eth_hdr.sroa.22.0.datap.0.73.sroa_idx = getelementptr inbounds i8, ptr %32, i32 12
  %45 = ptrtoint ptr %eth_hdr.sroa.22.0.datap.0.73.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %27, ptr %eth_hdr.sroa.22.0.datap.0.73.sroa_idx, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_dot3_2_dix(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %do.end, label %if.end21, !prof !587

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 460, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %eth_hdr.sroa.0.0.copyload = load i8, ptr %1, align 1
  %eth_hdr.sroa.5.0.datap.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 1
  %3 = ptrtoint ptr %eth_hdr.sroa.5.0.datap.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %eth_hdr.sroa.5.0.copyload = load i8, ptr %eth_hdr.sroa.5.0.datap.0..sroa_idx, align 1
  %eth_hdr.sroa.6.0.datap.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 2
  %4 = ptrtoint ptr %eth_hdr.sroa.6.0.datap.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %eth_hdr.sroa.6.0.copyload = load i8, ptr %eth_hdr.sroa.6.0.datap.0..sroa_idx, align 1
  %eth_hdr.sroa.7.0.datap.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 3
  %5 = ptrtoint ptr %eth_hdr.sroa.7.0.datap.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %eth_hdr.sroa.7.0.copyload = load i8, ptr %eth_hdr.sroa.7.0.datap.0..sroa_idx, align 1
  %eth_hdr.sroa.8.0.datap.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 4
  %6 = ptrtoint ptr %eth_hdr.sroa.8.0.datap.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %eth_hdr.sroa.8.0.copyload = load i8, ptr %eth_hdr.sroa.8.0.datap.0..sroa_idx, align 1
  %eth_hdr.sroa.9.0.datap.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 5
  %7 = ptrtoint ptr %eth_hdr.sroa.9.0.datap.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %eth_hdr.sroa.9.0.copyload = load i8, ptr %eth_hdr.sroa.9.0.datap.0..sroa_idx, align 1
  %eth_hdr.sroa.10.0.datap.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 6
  %8 = ptrtoint ptr %eth_hdr.sroa.10.0.datap.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %eth_hdr.sroa.10.0.copyload = load i8, ptr %eth_hdr.sroa.10.0.datap.0..sroa_idx, align 1
  %eth_hdr.sroa.11.0.datap.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 7
  %9 = ptrtoint ptr %eth_hdr.sroa.11.0.datap.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %eth_hdr.sroa.11.0.copyload = load i8, ptr %eth_hdr.sroa.11.0.datap.0..sroa_idx, align 1
  %eth_hdr.sroa.12.0.datap.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 8
  %10 = ptrtoint ptr %eth_hdr.sroa.12.0.datap.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %eth_hdr.sroa.12.0.copyload = load i8, ptr %eth_hdr.sroa.12.0.datap.0..sroa_idx, align 1
  %eth_hdr.sroa.13.0.datap.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 9
  %11 = ptrtoint ptr %eth_hdr.sroa.13.0.datap.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %eth_hdr.sroa.13.0.copyload = load i8, ptr %eth_hdr.sroa.13.0.datap.0..sroa_idx, align 1
  %eth_hdr.sroa.14.0.datap.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 10
  %12 = ptrtoint ptr %eth_hdr.sroa.14.0.datap.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %eth_hdr.sroa.14.0.copyload = load i8, ptr %eth_hdr.sroa.14.0.datap.0..sroa_idx, align 1
  %eth_hdr.sroa.15.0.datap.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 11
  %13 = ptrtoint ptr %eth_hdr.sroa.15.0.datap.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %eth_hdr.sroa.15.0.copyload = load i8, ptr %eth_hdr.sroa.15.0.datap.0..sroa_idx, align 1
  %eth_type = getelementptr i8, ptr %1, i32 20
  %14 = ptrtoint ptr %eth_type to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %eth_type, align 1
  %call = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 8) #10
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %eth_hdr.sroa.0.0.copyload, ptr %17, align 1
  %eth_hdr.sroa.5.0.datap.0.27.sroa_idx = getelementptr inbounds i8, ptr %17, i32 1
  %19 = ptrtoint ptr %eth_hdr.sroa.5.0.datap.0.27.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %eth_hdr.sroa.5.0.copyload, ptr %eth_hdr.sroa.5.0.datap.0.27.sroa_idx, align 1
  %eth_hdr.sroa.6.0.datap.0.27.sroa_idx = getelementptr inbounds i8, ptr %17, i32 2
  %20 = ptrtoint ptr %eth_hdr.sroa.6.0.datap.0.27.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %eth_hdr.sroa.6.0.copyload, ptr %eth_hdr.sroa.6.0.datap.0.27.sroa_idx, align 1
  %eth_hdr.sroa.7.0.datap.0.27.sroa_idx = getelementptr inbounds i8, ptr %17, i32 3
  %21 = ptrtoint ptr %eth_hdr.sroa.7.0.datap.0.27.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %eth_hdr.sroa.7.0.copyload, ptr %eth_hdr.sroa.7.0.datap.0.27.sroa_idx, align 1
  %eth_hdr.sroa.8.0.datap.0.27.sroa_idx = getelementptr inbounds i8, ptr %17, i32 4
  %22 = ptrtoint ptr %eth_hdr.sroa.8.0.datap.0.27.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %eth_hdr.sroa.8.0.copyload, ptr %eth_hdr.sroa.8.0.datap.0.27.sroa_idx, align 1
  %eth_hdr.sroa.9.0.datap.0.27.sroa_idx = getelementptr inbounds i8, ptr %17, i32 5
  %23 = ptrtoint ptr %eth_hdr.sroa.9.0.datap.0.27.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %eth_hdr.sroa.9.0.copyload, ptr %eth_hdr.sroa.9.0.datap.0.27.sroa_idx, align 1
  %eth_hdr.sroa.10.0.datap.0.27.sroa_idx = getelementptr inbounds i8, ptr %17, i32 6
  %24 = ptrtoint ptr %eth_hdr.sroa.10.0.datap.0.27.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %eth_hdr.sroa.10.0.copyload, ptr %eth_hdr.sroa.10.0.datap.0.27.sroa_idx, align 1
  %eth_hdr.sroa.11.0.datap.0.27.sroa_idx = getelementptr inbounds i8, ptr %17, i32 7
  %25 = ptrtoint ptr %eth_hdr.sroa.11.0.datap.0.27.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %eth_hdr.sroa.11.0.copyload, ptr %eth_hdr.sroa.11.0.datap.0.27.sroa_idx, align 1
  %eth_hdr.sroa.12.0.datap.0.27.sroa_idx = getelementptr inbounds i8, ptr %17, i32 8
  %26 = ptrtoint ptr %eth_hdr.sroa.12.0.datap.0.27.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %eth_hdr.sroa.12.0.copyload, ptr %eth_hdr.sroa.12.0.datap.0.27.sroa_idx, align 1
  %eth_hdr.sroa.13.0.datap.0.27.sroa_idx = getelementptr inbounds i8, ptr %17, i32 9
  %27 = ptrtoint ptr %eth_hdr.sroa.13.0.datap.0.27.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %eth_hdr.sroa.13.0.copyload, ptr %eth_hdr.sroa.13.0.datap.0.27.sroa_idx, align 1
  %eth_hdr.sroa.14.0.datap.0.27.sroa_idx = getelementptr inbounds i8, ptr %17, i32 10
  %28 = ptrtoint ptr %eth_hdr.sroa.14.0.datap.0.27.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %eth_hdr.sroa.14.0.copyload, ptr %eth_hdr.sroa.14.0.datap.0.27.sroa_idx, align 1
  %eth_hdr.sroa.15.0.datap.0.27.sroa_idx = getelementptr inbounds i8, ptr %17, i32 11
  %29 = ptrtoint ptr %eth_hdr.sroa.15.0.datap.0.27.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %eth_hdr.sroa.15.0.copyload, ptr %eth_hdr.sroa.15.0.datap.0.27.sroa_idx, align 1
  %eth_hdr.sroa.16.0.datap.0.27.sroa_idx = getelementptr inbounds i8, ptr %17, i32 12
  %30 = ptrtoint ptr %eth_hdr.sroa.16.0.datap.0.27.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %15, ptr %eth_hdr.sroa.16.0.datap.0.27.sroa_idx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_roam_lrssi_cmd(ptr noundef %wmi, i8 noundef zeroext %lrssi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 9) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 9) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 9)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 1280, ptr %3, align 1
  %conv = zext i8 %lrssi to i16
  %add = add nuw nsw i16 %conv, 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %add) #10
  %lrssi_scan_threshold = getelementptr inbounds %struct.low_rssi_scan_params, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %lrssi_scan_threshold to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %lrssi_scan_threshold, align 1
  %7 = shl nuw i16 %conv, 8
  %lrssi_roam_threshold = getelementptr inbounds %struct.low_rssi_scan_params, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %lrssi_roam_threshold to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %lrssi_roam_threshold, align 1
  %roam_rssi_floor = getelementptr inbounds %struct.low_rssi_scan_params, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %roam_rssi_floor to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 60, ptr %roam_rssi_floor, align 1
  %roam_ctrl = getelementptr inbounds %struct.roam_ctrl_cmd, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %roam_ctrl to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %roam_ctrl, align 1
  %call8 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext 0, ptr noundef nonnull %call.i, i32 noundef 41, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ath6kl_wmi_get_new_buf(i32 noundef %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @ath6kl_buf_alloc(i32 noundef %size) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef %size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool2.not = icmp eq i32 %size, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 %size)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef %skb, i32 noundef %cmd_id, i32 noundef %sync_flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_id1 = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 5
  %0 = ptrtoint ptr %ep_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ep_id1, align 4
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %conv = zext i8 %if_idx to i32
  %parent_dev = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %2 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_dev, align 4
  %vif_max = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %vif_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif_max, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp2 = icmp ult i32 %sub, %conv
  br i1 %cmp2, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !587

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1791, i32 noundef 9, ptr noundef null) #10
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.4, i32 noundef %cmd_id, i32 noundef %7, i32 noundef %sync_flag) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  tail call void @ath6kl_dbg_dump(i32 noundef 524288, ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef %9, i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sync_flag)
  %cmp26 = icmp ugt i32 %sync_flag, 3
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %skb) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %12 = zext i32 %sync_flag to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.280)
  switch i32 %sync_flag, label %if.end29.if.end35_crit_edge [
    i32 1, label %if.end29.if.then34_crit_edge
    i32 3, label %if.end29.if.then34_crit_edge98
  ]

if.end29.if.then34_crit_edge98:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.end29.if.then34_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %if.end29.if.then34_crit_edge, %if.end29.if.then34_crit_edge98
  tail call fastcc void @ath6kl_wmi_sync_point(ptr noundef %wmi, i8 noundef zeroext %if_idx)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end29.if.end35_crit_edge
  %call36 = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 6) #10
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %conv38 = trunc i32 %cmd_id to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv38)
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %14, align 1
  %17 = and i8 %if_idx, 15
  %conv41 = zext i8 %17 to i16
  %18 = shl nuw nsw i16 %conv41, 8
  %info142 = getelementptr inbounds %struct.wmi_cmd_hdr, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %info142 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %info142, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %cmd_id)
  %cmp43 = icmp eq i32 %cmd_id, 38
  br i1 %cmp43, label %lor.rhs.i, label %if.end35.if.end52_crit_edge

if.end35.if.end52_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

lor.rhs.i:                                        ; preds = %if.end35
  %20 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent_dev, align 4
  %vif_max.i = getelementptr inbounds %struct.ath6kl, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %vif_max.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vif_max.i, align 4
  %sub.i = add i32 %23, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv)
  %cmp1.i = icmp ult i32 %sub.i, %conv
  br i1 %cmp1.i, label %if.then48, label %if.end49, !prof !587

if.then48:                                        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef null) #10
  tail call void @consume_skb(ptr noundef nonnull %skb) #10
  br label %cleanup

if.end49:                                         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %call30.i = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 6) #10
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 0, ptr %25, align 1
  %info.i = getelementptr inbounds %struct.wmi_data_hdr, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %info.i, align 1
  %info362.i = getelementptr inbounds %struct.wmi_data_hdr, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %info362.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %18, ptr %info362.i, align 1
  %29 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent_dev, align 4
  %call51 = tail call i32 @ath6kl_ac2_endpoint_id(ptr noundef %30, i8 noundef zeroext 0) #10
  br label %if.end52

if.end52:                                         ; preds = %if.end49, %if.end35.if.end52_crit_edge
  %ep_id.0 = phi i32 [ %call51, %if.end49 ], [ %1, %if.end35.if.end52_crit_edge ]
  %31 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent_dev, align 4
  %call54 = tail call i32 @ath6kl_control_tx(ptr noundef %32, ptr noundef nonnull %skb, i32 noundef %ep_id.0) #10
  %33 = and i32 %sync_flag, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %switch = icmp eq i32 %33, 2
  br i1 %switch, label %if.then60, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then60:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ath6kl_wmi_sync_point(ptr noundef %wmi, i8 noundef zeroext %if_idx)
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end52.cleanup_crit_edge, %if.then48, %if.then28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then28 ], [ -22, %if.then48 ], [ 0, %if.end52.cleanup_crit_edge ], [ 0, %if.then60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_force_roam_cmd(ptr noundef %wmi, ptr noundef %bssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 9) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 9) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 9)
  %3 = load ptr, ptr %data.i, align 4
  %4 = call ptr @memcpy(ptr %3, ptr %bssid, i32 6)
  %roam_ctrl = getelementptr inbounds %struct.roam_ctrl_cmd, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %roam_ctrl to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %roam_ctrl, align 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.2, ptr noundef %bssid) #10
  %call1 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext 0, ptr noundef nonnull %call.i, i32 noundef 41, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_ap_set_beacon_intvl_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %beacon_intvl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %beacon_intvl)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %3, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 15, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_ap_set_dtim_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %dtim_period) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %dtim_period)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %3, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61461, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_roam_mode_cmd(ptr noundef %wmi, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 9) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 9) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 9)
  %3 = load ptr, ptr %data.i, align 4
  %conv = trunc i32 %mode to i8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %3, align 1
  %roam_ctrl = getelementptr inbounds %struct.roam_ctrl_cmd, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %roam_ctrl to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %roam_ctrl, align 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.3, i32 noundef %mode) #10
  %call1 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext 0, ptr noundef nonnull %call.i, i32 noundef 41, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_wmi_sscan_timer(ptr nocapture noundef readonly %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ar = getelementptr i8, ptr %t, i32 -652
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 8
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 4
  tail call void @cfg80211_sched_scan_results(ptr noundef %3, i64 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_results(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_txe_notify(ptr noundef %wmi, i8 noundef zeroext %idx, i32 noundef %rate, i32 noundef %pkts, i32 noundef %intvl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 12) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 12) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %rate)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %3, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %pkts)
  %pkts2 = getelementptr inbounds %struct.wmi_txe_notify_cmd, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pkts2 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %pkts2, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %intvl)
  %intvl3 = getelementptr inbounds %struct.wmi_txe_notify_cmd, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %intvl3 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %intvl3, align 1
  %call4 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %idx, ptr noundef nonnull %call.i, i32 noundef 61587, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_rssi_filter_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef signext %rssi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %rssi, ptr %3, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61584, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg_dump(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_wmi_sync_point(ptr noundef %wmi, i8 noundef zeroext %if_idx) unnamed_addr #0 align 64 {
entry:
  %data_sync_bufs = alloca [4 x %struct.wmi_data_sync_bufs], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data_sync_bufs) #10
  %0 = call ptr @memset(ptr %data_sync_bufs, i32 0, i32 32)
  %lock = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %fat_pipe_exist = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 1
  %1 = ptrtoint ptr %fat_pipe_exist to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fat_pipe_exist, align 4
  %conv2 = zext i8 %2 to i32
  %and = and i32 %conv2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %data_sync_bufs to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %data_sync_bufs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %num_pri_streams.1 = phi i8 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %and.1 = and i32 %conv2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %inc.1 = add nuw nsw i8 %num_pri_streams.1, 1
  %sub.1 = zext i8 %num_pri_streams.1 to i32
  %arrayidx.1 = getelementptr [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 %sub.1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %num_pri_streams.1.1 = phi i8 [ %inc.1, %if.then.1 ], [ %num_pri_streams.1, %for.inc.for.inc.1_crit_edge ]
  %and.2 = and i32 %conv2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %inc.2 = add nuw nsw i8 %num_pri_streams.1.1, 1
  %sub.2 = zext i8 %num_pri_streams.1.1 to i32
  %arrayidx.2 = getelementptr [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 %sub.2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %num_pri_streams.1.2 = phi i8 [ %inc.2, %if.then.2 ], [ %num_pri_streams.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %and.3 = and i32 %conv2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %inc.3 = add nuw nsw i8 %num_pri_streams.1.2, 1
  %sub.3 = zext i8 %num_pri_streams.1.2 to i32
  %arrayidx.3 = getelementptr [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 %sub.3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %num_pri_streams.1.3 = phi i8 [ %inc.3, %if.then.3 ], [ %num_pri_streams.1.2, %for.inc.2.for.inc.3_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.inc.3.cleanup_crit_edge, label %if.end9

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %for.inc.3
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %8, align 1
  %10 = load ptr, ptr %data.i, align 4
  %11 = ptrtoint ptr %fat_pipe_exist to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fat_pipe_exist, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_pri_streams.1.3)
  %cmp1412.not = icmp eq i8 %num_pri_streams.1.3, 0
  br i1 %cmp1412.not, label %if.end32.critedge.thread, label %for.body16

for.cond11:                                       ; preds = %for.body16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %num_pri_streams.1.3)
  %exitcond.not = icmp eq i8 %num_pri_streams.1.3, 1
  br i1 %exitcond.not, label %for.cond11.if.end32.critedge_crit_edge, label %for.body16.1

for.cond11.if.end32.critedge_crit_edge:           ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.critedge

for.body16.1:                                     ; preds = %for.cond11
  %call17.1 = tail call ptr @ath6kl_buf_alloc(i32 noundef 0) #10
  %skb19.1 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %skb19.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call17.1, ptr %skb19.1, align 4
  %cmp23.1 = icmp eq ptr %call17.1, null
  br i1 %cmp23.1, label %for.body16.1.free_cmd_skb_crit_edge, label %for.cond11.1

for.body16.1.free_cmd_skb_crit_edge:              ; preds = %for.body16.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cmd_skb

for.cond11.1:                                     ; preds = %for.body16.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %num_pri_streams.1.3)
  %exitcond.not.1 = icmp eq i8 %num_pri_streams.1.3, 2
  br i1 %exitcond.not.1, label %for.cond11.1.if.end32.critedge_crit_edge, label %for.body16.2

for.cond11.1.if.end32.critedge_crit_edge:         ; preds = %for.cond11.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.critedge

for.body16.2:                                     ; preds = %for.cond11.1
  %call17.2 = tail call ptr @ath6kl_buf_alloc(i32 noundef 0) #10
  %skb19.2 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %skb19.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call17.2, ptr %skb19.2, align 4
  %cmp23.2 = icmp eq ptr %call17.2, null
  br i1 %cmp23.2, label %for.body16.2.free_cmd_skb_crit_edge, label %for.cond11.2

for.body16.2.free_cmd_skb_crit_edge:              ; preds = %for.body16.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cmd_skb

for.cond11.2:                                     ; preds = %for.body16.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %num_pri_streams.1.3)
  %exitcond.not.2 = icmp eq i8 %num_pri_streams.1.3, 3
  br i1 %exitcond.not.2, label %for.cond11.2.if.end32.critedge_crit_edge, label %for.body16.3

for.cond11.2.if.end32.critedge_crit_edge:         ; preds = %for.cond11.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.critedge

for.body16.3:                                     ; preds = %for.cond11.2
  %call17.3 = tail call ptr @ath6kl_buf_alloc(i32 noundef 0) #10
  %skb19.3 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %skb19.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17.3, ptr %skb19.3, align 4
  %cmp23.3 = icmp eq ptr %call17.3, null
  br i1 %cmp23.3, label %for.body16.3.free_cmd_skb_crit_edge, label %for.body16.3.if.end32.critedge_crit_edge

for.body16.3.if.end32.critedge_crit_edge:         ; preds = %for.body16.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.critedge

for.body16.3.free_cmd_skb_crit_edge:              ; preds = %for.body16.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cmd_skb

for.body16:                                       ; preds = %if.end9
  %call17 = tail call ptr @ath6kl_buf_alloc(i32 noundef 0) #10
  %skb19 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %skb19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call17, ptr %skb19, align 4
  %cmp23 = icmp eq ptr %call17, null
  br i1 %cmp23, label %for.body16.free_cmd_skb_crit_edge, label %for.cond11

for.body16.free_cmd_skb_crit_edge:                ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cmd_skb

if.end32.critedge:                                ; preds = %for.body16.3.if.end32.critedge_crit_edge, %for.cond11.2.if.end32.critedge_crit_edge, %for.cond11.1.if.end32.critedge_crit_edge, %for.cond11.if.end32.critedge_crit_edge
  %call33 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 4, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %for.cond37.preheader, label %if.end32.critedge.free_data_skb_crit_edge

if.end32.critedge.free_data_skb_crit_edge:        ; preds = %if.end32.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_data_skb

if.end32.critedge.thread:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call3333 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 4, i32 noundef 0)
  br label %cleanup

for.cond37.preheader:                             ; preds = %if.end32.critedge
  br i1 %cmp1412.not, label %for.cond37.preheader.cleanup_crit_edge, label %for.body42.lr.ph

for.cond37.preheader.cleanup_crit_edge:           ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body42.lr.ph:                                 ; preds = %for.cond37.preheader
  %parent_dev = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %ep_id1.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 5
  %18 = and i8 %if_idx, 15
  %conv24.i = zext i8 %18 to i16
  %19 = shl nuw nsw i16 %conv24.i, 8
  %skb45 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %skb45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb45, align 4
  %tobool46.not = icmp eq ptr %21, null
  br i1 %tobool46.not, label %for.body42.lr.ph.do.end_crit_edge, label %lor.rhs.i, !prof !587

for.body42.lr.ph.do.end_crit_edge:                ; preds = %for.body42.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond37:                                       ; preds = %ath6kl_wmi_data_sync_send.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %num_pri_streams.1.3)
  %exitcond28.not = icmp eq i8 %num_pri_streams.1.3, 1
  br i1 %exitcond28.not, label %for.cond37.cleanup_crit_edge, label %for.body42.1

for.cond37.cleanup_crit_edge:                     ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body42.1:                                     ; preds = %for.cond37
  %skb45.1 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %skb45.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb45.1, align 4
  %tobool46.not.1 = icmp eq ptr %23, null
  br i1 %tobool46.not.1, label %for.body42.1.do.end_crit_edge, label %lor.rhs.i.1, !prof !587

for.body42.1.do.end_crit_edge:                    ; preds = %for.body42.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs.i.1:                                      ; preds = %for.body42.1
  %arrayidx44.1 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 1
  %24 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent_dev, align 4
  %26 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx44.1, align 4
  %call75.1 = tail call i32 @ath6kl_ac2_endpoint_id(ptr noundef %25, i8 noundef zeroext %27) #10
  %28 = ptrtoint ptr %ep_id1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ep_id1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %call75.1)
  %cmp2.i.1 = icmp eq i32 %29, %call75.1
  br i1 %cmp2.i.1, label %lor.rhs.i.1.ath6kl_wmi_data_sync_send.exit.thread_crit_edge, label %ath6kl_wmi_data_sync_send.exit.1, !prof !587

lor.rhs.i.1.ath6kl_wmi_data_sync_send.exit.thread_crit_edge: ; preds = %lor.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_data_sync_send.exit.thread

ath6kl_wmi_data_sync_send.exit.1:                 ; preds = %lor.rhs.i.1
  %call.i1.1 = tail call ptr @skb_push(ptr noundef nonnull %23, i32 noundef 6) #10
  %data.i2.1 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %30 = ptrtoint ptr %data.i2.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i2.1, align 4
  %info.i.1 = getelementptr inbounds %struct.wmi_data_hdr, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %info.i.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %info.i.1, align 1
  %info3.i.1 = getelementptr inbounds %struct.wmi_data_hdr, ptr %31, i32 0, i32 3
  %33 = ptrtoint ptr %info3.i.1 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %19, ptr %info3.i.1, align 1
  %34 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent_dev, align 4
  %call25.i.1 = tail call i32 @ath6kl_control_tx(ptr noundef %35, ptr noundef nonnull %23, i32 noundef %call75.1) #10
  %36 = ptrtoint ptr %skb45.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %skb45.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.1)
  %tobool83.not.1 = icmp eq i32 %call25.i.1, 0
  br i1 %tobool83.not.1, label %for.cond37.1, label %ath6kl_wmi_data_sync_send.exit.1.for.body94_crit_edge

ath6kl_wmi_data_sync_send.exit.1.for.body94_crit_edge: ; preds = %ath6kl_wmi_data_sync_send.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body94

for.cond37.1:                                     ; preds = %ath6kl_wmi_data_sync_send.exit.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %num_pri_streams.1.3)
  %exitcond28.not.1 = icmp eq i8 %num_pri_streams.1.3, 2
  br i1 %exitcond28.not.1, label %for.cond37.1.cleanup_crit_edge, label %for.body42.2

for.cond37.1.cleanup_crit_edge:                   ; preds = %for.cond37.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body42.2:                                     ; preds = %for.cond37.1
  %skb45.2 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %skb45.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skb45.2, align 4
  %tobool46.not.2 = icmp eq ptr %38, null
  br i1 %tobool46.not.2, label %for.body42.2.do.end_crit_edge, label %lor.rhs.i.2, !prof !587

for.body42.2.do.end_crit_edge:                    ; preds = %for.body42.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs.i.2:                                      ; preds = %for.body42.2
  %arrayidx44.2 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 2
  %39 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent_dev, align 4
  %41 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx44.2, align 4
  %call75.2 = tail call i32 @ath6kl_ac2_endpoint_id(ptr noundef %40, i8 noundef zeroext %42) #10
  %43 = ptrtoint ptr %ep_id1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ep_id1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %call75.2)
  %cmp2.i.2 = icmp eq i32 %44, %call75.2
  br i1 %cmp2.i.2, label %lor.rhs.i.2.ath6kl_wmi_data_sync_send.exit.thread_crit_edge, label %ath6kl_wmi_data_sync_send.exit.2, !prof !587

lor.rhs.i.2.ath6kl_wmi_data_sync_send.exit.thread_crit_edge: ; preds = %lor.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_data_sync_send.exit.thread

ath6kl_wmi_data_sync_send.exit.2:                 ; preds = %lor.rhs.i.2
  %call.i1.2 = tail call ptr @skb_push(ptr noundef nonnull %38, i32 noundef 6) #10
  %data.i2.2 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 19
  %45 = ptrtoint ptr %data.i2.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i2.2, align 4
  %info.i.2 = getelementptr inbounds %struct.wmi_data_hdr, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %info.i.2 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %info.i.2, align 1
  %info3.i.2 = getelementptr inbounds %struct.wmi_data_hdr, ptr %46, i32 0, i32 3
  %48 = ptrtoint ptr %info3.i.2 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %19, ptr %info3.i.2, align 1
  %49 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parent_dev, align 4
  %call25.i.2 = tail call i32 @ath6kl_control_tx(ptr noundef %50, ptr noundef nonnull %38, i32 noundef %call75.2) #10
  %51 = ptrtoint ptr %skb45.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %skb45.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.2)
  %tobool83.not.2 = icmp eq i32 %call25.i.2, 0
  br i1 %tobool83.not.2, label %for.cond37.2, label %ath6kl_wmi_data_sync_send.exit.2.free_data_skb_crit_edge

ath6kl_wmi_data_sync_send.exit.2.free_data_skb_crit_edge: ; preds = %ath6kl_wmi_data_sync_send.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_data_skb

for.cond37.2:                                     ; preds = %ath6kl_wmi_data_sync_send.exit.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %num_pri_streams.1.3)
  %exitcond28.not.2 = icmp eq i8 %num_pri_streams.1.3, 3
  br i1 %exitcond28.not.2, label %for.cond37.2.cleanup_crit_edge, label %for.body42.3

for.cond37.2.cleanup_crit_edge:                   ; preds = %for.cond37.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body42.3:                                     ; preds = %for.cond37.2
  %skb45.3 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %skb45.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb45.3, align 4
  %tobool46.not.3 = icmp eq ptr %53, null
  br i1 %tobool46.not.3, label %for.body42.3.do.end_crit_edge, label %lor.rhs.i.3, !prof !587

for.body42.3.do.end_crit_edge:                    ; preds = %for.body42.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs.i.3:                                      ; preds = %for.body42.3
  %arrayidx44.3 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 3
  %54 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent_dev, align 4
  %56 = ptrtoint ptr %arrayidx44.3 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx44.3, align 4
  %call75.3 = tail call i32 @ath6kl_ac2_endpoint_id(ptr noundef %55, i8 noundef zeroext %57) #10
  %58 = ptrtoint ptr %ep_id1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ep_id1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %call75.3)
  %cmp2.i.3 = icmp eq i32 %59, %call75.3
  br i1 %cmp2.i.3, label %lor.rhs.i.3.ath6kl_wmi_data_sync_send.exit.thread_crit_edge, label %ath6kl_wmi_data_sync_send.exit.3, !prof !587

lor.rhs.i.3.ath6kl_wmi_data_sync_send.exit.thread_crit_edge: ; preds = %lor.rhs.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_data_sync_send.exit.thread

ath6kl_wmi_data_sync_send.exit.3:                 ; preds = %lor.rhs.i.3
  %call.i1.3 = tail call ptr @skb_push(ptr noundef nonnull %53, i32 noundef 6) #10
  %data.i2.3 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 19
  %60 = ptrtoint ptr %data.i2.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i2.3, align 4
  %info.i.3 = getelementptr inbounds %struct.wmi_data_hdr, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %info.i.3 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %info.i.3, align 1
  %info3.i.3 = getelementptr inbounds %struct.wmi_data_hdr, ptr %61, i32 0, i32 3
  %63 = ptrtoint ptr %info3.i.3 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %19, ptr %info3.i.3, align 1
  %64 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %parent_dev, align 4
  %call25.i.3 = tail call i32 @ath6kl_control_tx(ptr noundef %65, ptr noundef nonnull %53, i32 noundef %call75.3) #10
  %66 = ptrtoint ptr %skb45.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %skb45.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.3)
  %tobool83.not.3 = icmp eq i32 %call25.i.3, 0
  %brmerge = select i1 %tobool83.not.3, i1 true, i1 %cmp1412.not
  br i1 %brmerge, label %ath6kl_wmi_data_sync_send.exit.3.cleanup_crit_edge, label %ath6kl_wmi_data_sync_send.exit.3.for.body94_crit_edge

ath6kl_wmi_data_sync_send.exit.3.for.body94_crit_edge: ; preds = %ath6kl_wmi_data_sync_send.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body94

ath6kl_wmi_data_sync_send.exit.3.cleanup_crit_edge: ; preds = %ath6kl_wmi_data_sync_send.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %for.body42.3.do.end_crit_edge, %for.body42.2.do.end_crit_edge, %for.body42.1.do.end_crit_edge, %for.body42.lr.ph.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2507, i32 noundef 9, ptr noundef null) #10
  br label %free_data_skb

lor.rhs.i:                                        ; preds = %for.body42.lr.ph
  %67 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parent_dev, align 4
  %69 = ptrtoint ptr %data_sync_bufs to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %data_sync_bufs, align 4
  %call75 = tail call i32 @ath6kl_ac2_endpoint_id(ptr noundef %68, i8 noundef zeroext %70) #10
  %71 = ptrtoint ptr %ep_id1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ep_id1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %call75)
  %cmp2.i = icmp eq i32 %72, %call75
  br i1 %cmp2.i, label %lor.rhs.i.ath6kl_wmi_data_sync_send.exit.thread_crit_edge, label %ath6kl_wmi_data_sync_send.exit, !prof !587

lor.rhs.i.ath6kl_wmi_data_sync_send.exit.thread_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_data_sync_send.exit.thread

ath6kl_wmi_data_sync_send.exit.thread:            ; preds = %lor.rhs.i.ath6kl_wmi_data_sync_send.exit.thread_crit_edge, %lor.rhs.i.3.ath6kl_wmi_data_sync_send.exit.thread_crit_edge, %lor.rhs.i.2.ath6kl_wmi_data_sync_send.exit.thread_crit_edge, %lor.rhs.i.1.ath6kl_wmi_data_sync_send.exit.thread_crit_edge
  %skb45.lcssa53 = phi ptr [ %skb45, %lor.rhs.i.ath6kl_wmi_data_sync_send.exit.thread_crit_edge ], [ %skb45.1, %lor.rhs.i.1.ath6kl_wmi_data_sync_send.exit.thread_crit_edge ], [ %skb45.2, %lor.rhs.i.2.ath6kl_wmi_data_sync_send.exit.thread_crit_edge ], [ %skb45.3, %lor.rhs.i.3.ath6kl_wmi_data_sync_send.exit.thread_crit_edge ]
  %.lcssa50 = phi ptr [ %21, %lor.rhs.i.ath6kl_wmi_data_sync_send.exit.thread_crit_edge ], [ %23, %lor.rhs.i.1.ath6kl_wmi_data_sync_send.exit.thread_crit_edge ], [ %38, %lor.rhs.i.2.ath6kl_wmi_data_sync_send.exit.thread_crit_edge ], [ %53, %lor.rhs.i.3.ath6kl_wmi_data_sync_send.exit.thread_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2430, i32 noundef 9, ptr noundef null) #10
  tail call void @consume_skb(ptr noundef nonnull %.lcssa50) #10
  %73 = ptrtoint ptr %skb45.lcssa53 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %skb45.lcssa53, align 4
  br label %free_data_skb

ath6kl_wmi_data_sync_send.exit:                   ; preds = %lor.rhs.i
  %call.i1 = tail call ptr @skb_push(ptr noundef nonnull %21, i32 noundef 6) #10
  %data.i2 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 19
  %74 = ptrtoint ptr %data.i2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i2, align 4
  %info.i = getelementptr inbounds %struct.wmi_data_hdr, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 2, ptr %info.i, align 1
  %info3.i = getelementptr inbounds %struct.wmi_data_hdr, ptr %75, i32 0, i32 3
  %77 = ptrtoint ptr %info3.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %19, ptr %info3.i, align 1
  %78 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %parent_dev, align 4
  %call25.i = tail call i32 @ath6kl_control_tx(ptr noundef %79, ptr noundef nonnull %21, i32 noundef %call75) #10
  %80 = ptrtoint ptr %skb45 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %skb45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool83.not = icmp eq i32 %call25.i, 0
  br i1 %tobool83.not, label %for.cond37, label %ath6kl_wmi_data_sync_send.exit.for.body94_crit_edge

ath6kl_wmi_data_sync_send.exit.for.body94_crit_edge: ; preds = %ath6kl_wmi_data_sync_send.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body94

free_cmd_skb:                                     ; preds = %for.body16.free_cmd_skb_crit_edge, %for.body16.3.free_cmd_skb_crit_edge, %for.body16.2.free_cmd_skb_crit_edge, %for.body16.1.free_cmd_skb_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i) #10
  br label %free_data_skb

free_data_skb:                                    ; preds = %free_cmd_skb, %ath6kl_wmi_data_sync_send.exit.thread, %do.end, %ath6kl_wmi_data_sync_send.exit.2.free_data_skb_crit_edge, %if.end32.critedge.free_data_skb_crit_edge
  br i1 %cmp1412.not, label %free_data_skb.cleanup_crit_edge, label %free_data_skb.for.body94_crit_edge

free_data_skb.for.body94_crit_edge:               ; preds = %free_data_skb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body94

free_data_skb.cleanup_crit_edge:                  ; preds = %free_data_skb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body94:                                       ; preds = %free_data_skb.for.body94_crit_edge, %ath6kl_wmi_data_sync_send.exit.for.body94_crit_edge, %ath6kl_wmi_data_sync_send.exit.3.for.body94_crit_edge, %ath6kl_wmi_data_sync_send.exit.1.for.body94_crit_edge
  %skb97 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 0, i32 1
  %81 = ptrtoint ptr %skb97 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %skb97, align 4
  tail call void @consume_skb(ptr noundef %82) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %num_pri_streams.1.3)
  %exitcond32.not = icmp eq i8 %num_pri_streams.1.3, 1
  br i1 %exitcond32.not, label %for.body94.cleanup_crit_edge, label %for.body94.1

for.body94.cleanup_crit_edge:                     ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body94.1:                                     ; preds = %for.body94
  %skb97.1 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %skb97.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skb97.1, align 4
  tail call void @consume_skb(ptr noundef %84) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %num_pri_streams.1.3)
  %exitcond32.not.1 = icmp eq i8 %num_pri_streams.1.3, 2
  br i1 %exitcond32.not.1, label %for.body94.1.cleanup_crit_edge, label %for.body94.2

for.body94.1.cleanup_crit_edge:                   ; preds = %for.body94.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body94.2:                                     ; preds = %for.body94.1
  %skb97.2 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 2, i32 1
  %85 = ptrtoint ptr %skb97.2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %skb97.2, align 4
  tail call void @consume_skb(ptr noundef %86) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %num_pri_streams.1.3)
  %exitcond32.not.2 = icmp eq i8 %num_pri_streams.1.3, 3
  br i1 %exitcond32.not.2, label %for.body94.2.cleanup_crit_edge, label %for.body94.3

for.body94.2.cleanup_crit_edge:                   ; preds = %for.body94.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body94.3:                                     ; preds = %for.body94.2
  call void @__sanitizer_cov_trace_pc() #12
  %skb97.3 = getelementptr inbounds [4 x %struct.wmi_data_sync_bufs], ptr %data_sync_bufs, i32 0, i32 3, i32 1
  %87 = ptrtoint ptr %skb97.3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %skb97.3, align 4
  tail call void @consume_skb(ptr noundef %88) #10
  br label %cleanup

cleanup:                                          ; preds = %for.body94.3, %for.body94.2.cleanup_crit_edge, %for.body94.1.cleanup_crit_edge, %for.body94.cleanup_crit_edge, %free_data_skb.cleanup_crit_edge, %ath6kl_wmi_data_sync_send.exit.3.cleanup_crit_edge, %for.cond37.2.cleanup_crit_edge, %for.cond37.1.cleanup_crit_edge, %for.cond37.cleanup_crit_edge, %for.cond37.preheader.cleanup_crit_edge, %if.end32.critedge.thread, %for.inc.3.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data_sync_bufs) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_ac2_endpoint_id(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_control_tx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_connect_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %nw_type, i32 noundef %dot11_auth_mode, i32 noundef %auth_mode, i32 noundef %pairwise_crypto, i8 noundef zeroext %pairwise_crypto_len, i32 noundef %group_crypto, i8 noundef zeroext %group_crypto_len, i32 noundef %ssid_len, ptr noundef %ssid, ptr noundef %bssid, i16 noundef zeroext %channel, i32 noundef %ctrl_flags, i8 noundef zeroext %nw_subtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %channel to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.6, ptr noundef %bssid, i32 noundef %conv, i32 noundef %ctrl_flags, i32 noundef %ssid_len, i32 noundef %nw_type, i32 noundef %dot11_auth_mode, i32 noundef %auth_mode, i32 noundef %pairwise_crypto, i32 noundef %group_crypto) #10
  tail call void @ath6kl_dbg_dump(i32 noundef 1024, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef %ssid, i32 noundef %ssid_len) #10
  %traffic_class = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 8
  %0 = ptrtoint ptr %traffic_class to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 100, ptr %traffic_class, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pairwise_crypto)
  %cmp = icmp eq i32 %pairwise_crypto, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %group_crypto)
  %cmp2.not = icmp eq i32 %group_crypto, 1
  %or.cond72 = xor i1 %cmp, %cmp2.not
  br i1 %or.cond72, label %entry.cleanup_crit_edge, label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %entry
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 53) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end10.cleanup_crit_edge, label %if.end12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end10
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 53) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 53)
  %4 = load ptr, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ssid_len)
  %tobool13.not = icmp eq i32 %ssid_len, 0
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %ssid15 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %4, i32 0, i32 8
  %5 = call ptr @memcpy(ptr %ssid15, ptr %ssid, i32 %ssid_len)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %conv17 = trunc i32 %ssid_len to i8
  %ssid_len18 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %4, i32 0, i32 7
  %6 = ptrtoint ptr %ssid_len18 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv17, ptr %ssid_len18, align 1
  %conv19 = trunc i32 %nw_type to i8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv19, ptr %4, align 1
  %conv21 = trunc i32 %dot11_auth_mode to i8
  %dot11_auth_mode22 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %dot11_auth_mode22 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv21, ptr %dot11_auth_mode22, align 1
  %conv23 = trunc i32 %auth_mode to i8
  %auth_mode24 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %auth_mode24 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv23, ptr %auth_mode24, align 1
  %conv25 = trunc i32 %pairwise_crypto to i8
  %prwise_crypto_type = getelementptr inbounds %struct.wmi_connect_cmd, ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %prwise_crypto_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv25, ptr %prwise_crypto_type, align 1
  %prwise_crypto_len = getelementptr inbounds %struct.wmi_connect_cmd, ptr %4, i32 0, i32 4
  %11 = ptrtoint ptr %prwise_crypto_len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %pairwise_crypto_len, ptr %prwise_crypto_len, align 1
  %conv26 = trunc i32 %group_crypto to i8
  %grp_crypto_type = getelementptr inbounds %struct.wmi_connect_cmd, ptr %4, i32 0, i32 5
  %12 = ptrtoint ptr %grp_crypto_type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv26, ptr %grp_crypto_type, align 1
  %grp_crypto_len = getelementptr inbounds %struct.wmi_connect_cmd, ptr %4, i32 0, i32 6
  %13 = ptrtoint ptr %grp_crypto_len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %group_crypto_len, ptr %grp_crypto_len, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %channel)
  %ch = getelementptr inbounds %struct.wmi_connect_cmd, ptr %4, i32 0, i32 9
  %15 = ptrtoint ptr %ch to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %ch, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %ctrl_flags)
  %ctrl_flags27 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %4, i32 0, i32 11
  %17 = ptrtoint ptr %ctrl_flags27 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %ctrl_flags27, align 1
  %nw_subtype28 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %4, i32 0, i32 12
  %18 = ptrtoint ptr %nw_subtype28 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %nw_subtype, ptr %nw_subtype28, align 1
  %cmp29.not = icmp eq ptr %bssid, null
  br i1 %cmp29.not, label %if.end16.if.end34_crit_edge, label %if.then31

if.end16.if.end34_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then31:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %bssid32 = getelementptr inbounds %struct.wmi_connect_cmd, ptr %4, i32 0, i32 10
  %19 = call ptr @memcpy(ptr %bssid32, ptr %bssid, i32 6)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end16.if.end34_crit_edge
  %call35 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end34 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_reconnect_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef %bssid, i16 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %channel to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.8, ptr noundef %bssid, i32 noundef %conv) #10
  %traffic_class = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 8
  %0 = ptrtoint ptr %traffic_class to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 100, ptr %traffic_class, align 1
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 1
  %4 = load ptr, ptr %data.i, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %channel)
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %4, align 1
  %cmp.not = icmp eq ptr %bssid, null
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bssid4 = getelementptr inbounds %struct.wmi_reconnect_cmd, ptr %4, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %bssid4, ptr %bssid, i32 6)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 2, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_disconnect_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.9) #10
  %traffic_class = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 8
  %0 = ptrtoint ptr %traffic_class to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 100, ptr %traffic_class, align 1
  %call.i.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 0) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.ath6kl_wmi_simple_cmd.exit_crit_edge, label %if.end.i

entry.ath6kl_wmi_simple_cmd.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_simple_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  %call1.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef 0) #10
  br label %ath6kl_wmi_simple_cmd.exit

ath6kl_wmi_simple_cmd.exit:                       ; preds = %if.end.i, %entry.ath6kl_wmi_simple_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -12, %entry.ath6kl_wmi_simple_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_beginscan_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %scan_type, i32 noundef %force_fgscan, i32 noundef %is_legacy, i32 noundef %home_dwell_time, i32 noundef %force_scan_interval, i8 noundef signext %num_chan, ptr nocapture noundef readonly %ch_list, i32 noundef %no_cck, ptr nocapture noundef readonly %rates) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_dev = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %0 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_dev, align 4
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fw_capabilities, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %scan_type)
  %switch.i = icmp ult i32 %scan_type, 2
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %switch.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %conv.i = sext i8 %num_chan to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %num_chan)
  %cmp2.i = icmp sgt i8 %num_chan, 32
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_chan)
  %tobool.not.i = icmp eq i8 %num_chan, 0
  %sub.i = shl i32 %conv.i, 25
  %sext.i = add i32 %sub.i, 301989888
  %phi.cast.i = ashr exact i32 %sext.i, 24
  %size.0.i = select i1 %tobool.not.i, i32 20, i32 %phi.cast.i
  %call.i.i = tail call ptr @ath6kl_buf_alloc(i32 noundef %size.0.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end5.i.cleanup_crit_edge, label %if.end.i.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end5.i
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %size.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.i)
  %tobool2.not.i.i = icmp eq i32 %size.0.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end14.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end14.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 %size.0.i)
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then3.i.i, %if.end.i.i.if.end14.i_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %conv15.i = trunc i32 %scan_type to i8
  %scan_type16.i = getelementptr inbounds %struct.wmi_start_scan_cmd, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %scan_type16.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv15.i, ptr %scan_type16.i, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %force_fgscan) #10
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %9, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %is_legacy) #10
  %is_legacy17.i = getelementptr inbounds %struct.wmi_start_scan_cmd, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %is_legacy17.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %is_legacy17.i, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %home_dwell_time) #10
  %home_dwell_time18.i = getelementptr inbounds %struct.wmi_start_scan_cmd, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %home_dwell_time18.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %home_dwell_time18.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %force_scan_interval) #10
  %force_scan_intvl.i = getelementptr inbounds %struct.wmi_start_scan_cmd, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %force_scan_intvl.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %force_scan_intvl.i, align 1
  %num_ch.i = getelementptr inbounds %struct.wmi_start_scan_cmd, ptr %9, i32 0, i32 5
  %19 = ptrtoint ptr %num_ch.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %num_chan, ptr %num_ch.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_chan)
  %cmp2047.i = icmp sgt i8 %num_chan, 0
  br i1 %cmp2047.i, label %if.end14.i.for.body.i_crit_edge, label %if.end14.i.for.end.i_crit_edge

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end14.i.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end14.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %ch_list, i32 %i.048.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  %arrayidx23.i = getelementptr %struct.wmi_start_scan_cmd, ptr %9, i32 0, i32 6, i32 %i.048.i
  %23 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %arrayidx23.i, align 1
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end14.i.for.end.i_crit_edge
  %call24.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i.i, i32 noundef 7, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %switch.i, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv = sext i8 %num_chan to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %num_chan)
  %cmp5 = icmp sgt i8 %num_chan, 32
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_chan)
  %tobool9.not = icmp eq i8 %num_chan, 0
  %sub = shl i32 %conv, 25
  %sext = add i32 %sub, 905969664
  %phi.cast = ashr exact i32 %sext, 24
  %size.0 = select i1 %tobool9.not, i32 56, i32 %phi.cast
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef %size.0) #10
  %tobool.not.i148 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i148, label %if.end8.cleanup_crit_edge, label %if.end.i149

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i149:                                      ; preds = %if.end8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %size.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %tobool2.not.i = icmp eq i32 %size.0, 0
  br i1 %tobool2.not.i, label %if.end.i149.if.end19_crit_edge, label %if.then3.i

if.end.i149.if.end19_crit_edge:                   ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then3.i:                                       ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #12
  %data.i150 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %24 = ptrtoint ptr %data.i150 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i150, align 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 %size.0)
  br label %if.end19

if.end19:                                         ; preds = %if.then3.i, %if.end.i149.if.end19_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %conv20 = trunc i32 %scan_type to i8
  %scan_type21 = getelementptr inbounds %struct.wmi_begin_scan_cmd, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %scan_type21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv20, ptr %scan_type21, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %force_fgscan)
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %28, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %is_legacy)
  %is_legacy22 = getelementptr inbounds %struct.wmi_begin_scan_cmd, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %is_legacy22 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %is_legacy22, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %home_dwell_time)
  %home_dwell_time23 = getelementptr inbounds %struct.wmi_begin_scan_cmd, ptr %28, i32 0, i32 2
  %35 = ptrtoint ptr %home_dwell_time23 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %home_dwell_time23, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %force_scan_interval)
  %force_scan_intvl = getelementptr inbounds %struct.wmi_begin_scan_cmd, ptr %28, i32 0, i32 3
  %37 = ptrtoint ptr %force_scan_intvl to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %force_scan_intvl, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %no_cck)
  %no_cck24 = getelementptr inbounds %struct.wmi_begin_scan_cmd, ptr %28, i32 0, i32 4
  %39 = ptrtoint ptr %no_cck24 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %no_cck24, align 1
  %num_ch = getelementptr inbounds %struct.wmi_begin_scan_cmd, ptr %28, i32 0, i32 7
  %40 = ptrtoint ptr %num_ch to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %num_chan, ptr %num_ch, align 1
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc77.for.body_crit_edge, %if.end19
  %band.0155 = phi i32 [ 0, %if.end19 ], [ %inc78, %for.inc77.for.body_crit_edge ]
  %41 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wiphy, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %42, i32 0, i32 53, i32 %band.0155
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %tobool27.not = icmp eq ptr %44, null
  br i1 %tobool27.not, label %for.body.for.inc77_crit_edge, label %if.end29

for.body.for.inc77_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc77

if.end29:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band.0155)
  %cmp30 = icmp ugt i32 %band.0155, 1
  br i1 %cmp30, label %do.end, label %if.end55.critedge, !prof !587

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2056, i32 noundef 9, ptr noundef null) #10
  br label %for.end79

if.end55.critedge:                                ; preds = %if.end29
  %arrayidx56 = getelementptr i32, ptr %rates, i32 %band.0155
  %45 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx56, align 4
  %arrayidx58 = getelementptr %struct.wmi_begin_scan_cmd, ptr %28, i32 0, i32 6, i32 %band.0155
  %rates59 = getelementptr %struct.wmi_begin_scan_cmd, ptr %28, i32 0, i32 6, i32 %band.0155, i32 1
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 4
  %47 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp62151 = icmp sgt i32 %48, 0
  br i1 %cmp62151, label %for.body64.lr.ph, label %if.end55.critedge.for.end_crit_edge

if.end55.critedge.for.end_crit_edge:              ; preds = %if.end55.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body64.lr.ph:                                 ; preds = %if.end55.critedge
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 1
  br label %for.body64

for.body64:                                       ; preds = %for.inc.for.body64_crit_edge, %for.body64.lr.ph
  %num_rates.0154 = phi i32 [ 0, %for.body64.lr.ph ], [ %num_rates.1, %for.inc.for.body64_crit_edge ]
  %i.0152 = phi i32 [ 0, %for.body64.lr.ph ], [ %inc73, %for.inc.for.body64_crit_edge ]
  %shl = shl nuw i32 1, %i.0152
  %and = and i32 %shl, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp65 = icmp eq i32 %and, 0
  br i1 %cmp65, label %for.body64.for.inc_crit_edge, label %if.end68

for.body64.for.inc_crit_edge:                     ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end68:                                         ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bitrates, align 4
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %50, i32 %i.0152, i32 1
  %51 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %bitrate, align 4
  %53 = udiv i16 %52, 5
  %conv71 = trunc i16 %53 to i8
  %inc = add i32 %num_rates.0154, 1
  %arrayidx72 = getelementptr i8, ptr %rates59, i32 %num_rates.0154
  %54 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv71, ptr %arrayidx72, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end68, %for.body64.for.inc_crit_edge
  %num_rates.1 = phi i32 [ %num_rates.0154, %for.body64.for.inc_crit_edge ], [ %inc, %if.end68 ]
  %inc73 = add nuw nsw i32 %i.0152, 1
  %55 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_bitrates, align 4
  %cmp62 = icmp slt i32 %inc73, %56
  br i1 %cmp62, label %for.inc.for.body64_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body64_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body64

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end55.critedge.for.end_crit_edge
  %num_rates.0.lcssa = phi i32 [ 0, %if.end55.critedge.for.end_crit_edge ], [ %num_rates.1, %for.inc.for.end_crit_edge ]
  %conv74 = trunc i32 %num_rates.0.lcssa to i8
  %57 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv74, ptr %arrayidx58, align 1
  br label %for.inc77

for.inc77:                                        ; preds = %for.end, %for.body.for.inc77_crit_edge
  %inc78 = add nuw nsw i32 %band.0155, 1
  %exitcond.not = icmp eq i32 %inc78, 6
  br i1 %exitcond.not, label %for.inc77.for.end79_crit_edge, label %for.inc77.for.body_crit_edge

for.inc77.for.body_crit_edge:                     ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc77.for.end79_crit_edge:                    ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end79

for.end79:                                        ; preds = %for.inc77.for.end79_crit_edge, %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_chan)
  %cmp82157 = icmp sgt i8 %num_chan, 0
  br i1 %cmp82157, label %for.end79.for.body84_crit_edge, label %for.end79.for.end90_crit_edge

for.end79.for.end90_crit_edge:                    ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end90

for.end79.for.body84_crit_edge:                   ; preds = %for.end79
  br label %for.body84

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %for.end79.for.body84_crit_edge
  %i.1158 = phi i32 [ %inc89, %for.body84.for.body84_crit_edge ], [ 0, %for.end79.for.body84_crit_edge ]
  %arrayidx85 = getelementptr i16, ptr %ch_list, i32 %i.1158
  %58 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx85, align 2
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %arrayidx87 = getelementptr %struct.wmi_begin_scan_cmd, ptr %28, i32 0, i32 8, i32 %i.1158
  %61 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %arrayidx87, align 1
  %inc89 = add nuw nsw i32 %i.1158, 1
  %exitcond159.not = icmp eq i32 %inc89, %conv
  br i1 %exitcond159.not, label %for.body84.for.end90_crit_edge, label %for.body84.for.body84_crit_edge

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body84

for.body84.for.end90_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end90

for.end90:                                        ; preds = %for.body84.for.end90_crit_edge, %for.end79.for.end90_crit_edge
  %call91 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61579, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %for.end90, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.end.i, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call91, %for.end90 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call24.i, %for.end.i ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -12, %if.end5.i.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_enable_sched_scan_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %cond = select i1 %enable, ptr @.str.11, ptr @.str.12
  %conv = zext i8 %if_idx to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond, i32 noundef %conv) #10
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %conv5 = zext i1 %enable to i8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %4, align 1
  %call7 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61589, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_scanparams_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i16 noundef zeroext %fg_start_sec, i16 noundef zeroext %fg_end_sec, i16 noundef zeroext %bg_sec, i16 noundef zeroext %minact_chdw_msec, i16 noundef zeroext %maxact_chdw_msec, i16 noundef zeroext %pas_chdw_msec, i8 noundef zeroext %short_scan_ratio, i8 noundef zeroext %scan_ctrl_flag, i32 noundef %max_dfsch_act_time, i16 noundef zeroext %maxact_scan_per_ssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 20) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 20) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 20)
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %fg_start_sec)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %3, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %fg_end_sec)
  %fg_end_period = getelementptr inbounds %struct.wmi_scan_params_cmd, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %fg_end_period to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %fg_end_period, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %bg_sec)
  %bg_period = getelementptr inbounds %struct.wmi_scan_params_cmd, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %bg_period to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %bg_period, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %minact_chdw_msec)
  %minact_chdwell_time = getelementptr inbounds %struct.wmi_scan_params_cmd, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %minact_chdwell_time to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %minact_chdwell_time, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %maxact_chdw_msec)
  %maxact_chdwell_time = getelementptr inbounds %struct.wmi_scan_params_cmd, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %maxact_chdwell_time to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %maxact_chdwell_time, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %pas_chdw_msec)
  %pas_chdwell_time = getelementptr inbounds %struct.wmi_scan_params_cmd, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %pas_chdwell_time to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %pas_chdwell_time, align 1
  %short_scan_ratio1 = getelementptr inbounds %struct.wmi_scan_params_cmd, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %short_scan_ratio1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %short_scan_ratio, ptr %short_scan_ratio1, align 1
  %scan_ctrl_flags = getelementptr inbounds %struct.wmi_scan_params_cmd, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %scan_ctrl_flags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %scan_ctrl_flag, ptr %scan_ctrl_flags, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %max_dfsch_act_time)
  %max_dfsch_act_time2 = getelementptr inbounds %struct.wmi_scan_params_cmd, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %max_dfsch_act_time2 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %max_dfsch_act_time2, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %maxact_scan_per_ssid)
  %maxact_scan_per_ssid3 = getelementptr inbounds %struct.wmi_scan_params_cmd, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %maxact_scan_per_ssid3 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %maxact_scan_per_ssid3, align 1
  %call4 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 8, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_bssfilter_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %filter, i32 noundef %ie_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %filter)
  %cmp = icmp ugt i8 %filter, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %filter, ptr %3, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %ie_mask)
  %ie_mask4 = getelementptr inbounds %struct.wmi_bss_filter_cmd, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %ie_mask4 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %ie_mask4, align 1
  %call5 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 9, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_probedssid_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %index, i8 noundef zeroext %flag, i8 noundef zeroext %ssid_len, ptr nocapture noundef readonly %ssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %index)
  %cmp = icmp ugt i8 %index, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i8 %ssid_len to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %ssid_len)
  %cmp3 = icmp ugt i8 %ssid_len, 32
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %conv7 = zext i8 %flag to i32
  %and = and i32 %conv7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ssid_len)
  %cmp9.not = icmp eq i8 %ssid_len, 0
  %or.cond = or i1 %cmp9.not, %tobool.not
  br i1 %or.cond, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %and14 = and i32 %conv7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %tobool15.not.not = xor i1 %tobool15.not, true
  %or.cond49 = and i1 %cmp9.not, %tobool15.not.not
  br i1 %or.cond49, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  br i1 %tobool15.not, label %if.end19.if.end24_crit_edge, label %if.then23

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %is_probe_ssid = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 9
  %0 = ptrtoint ptr %is_probe_ssid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %is_probe_ssid, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19.if.end24_crit_edge
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 35) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 35) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 35)
  %4 = load ptr, ptr %data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %index, ptr %4, align 1
  %flag28 = getelementptr inbounds %struct.wmi_probed_ssid_cmd, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %flag28 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %flag, ptr %flag28, align 1
  %ssid_len29 = getelementptr inbounds %struct.wmi_probed_ssid_cmd, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %ssid_len29 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %ssid_len, ptr %ssid_len29, align 1
  %ssid30 = getelementptr inbounds %struct.wmi_probed_ssid_cmd, ptr %4, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %ssid30, ptr %ssid, i32 %conv2)
  %call32 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 10, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end24.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end27 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -12, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_listeninterval_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i16 noundef zeroext %listen_interval, i16 noundef zeroext %listen_beacons) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %listen_interval)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %3, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %listen_beacons)
  %num_beacons = getelementptr inbounds %struct.wmi_listen_int_cmd, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %num_beacons to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %num_beacons, align 1
  %call1 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 11, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_bmisstime_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i16 noundef zeroext %bmiss_time, i16 noundef zeroext %num_beacons) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %bmiss_time)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %3, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %num_beacons)
  %num_beacons2 = getelementptr inbounds %struct.wmi_bmiss_time_cmd, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %num_beacons2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %num_beacons2, align 2
  %call3 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 12, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_powermode_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %pwr_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %pwr_mode, ptr %3, align 1
  %pwr_mode2 = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 3
  %5 = ptrtoint ptr %pwr_mode2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %pwr_mode, ptr %pwr_mode2, align 4
  %call3 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 18, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_pmparams_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i16 noundef zeroext %idle_period, i16 noundef zeroext %ps_poll_num, i16 noundef zeroext %dtim_policy, i16 noundef zeroext %tx_wakeup_policy, i16 noundef zeroext %num_tx_to_wakeup, i16 noundef zeroext %ps_fail_event_policy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 12) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 12) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %idle_period)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %3, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %ps_poll_num)
  %pspoll_number = getelementptr inbounds %struct.wmi_power_params_cmd, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pspoll_number to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %pspoll_number, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %dtim_policy)
  %dtim_policy2 = getelementptr inbounds %struct.wmi_power_params_cmd, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %dtim_policy2 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %dtim_policy2, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %tx_wakeup_policy)
  %tx_wakeup_policy3 = getelementptr inbounds %struct.wmi_power_params_cmd, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %tx_wakeup_policy3 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %tx_wakeup_policy3, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %num_tx_to_wakeup)
  %num_tx_to_wakeup4 = getelementptr inbounds %struct.wmi_power_params_cmd, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %num_tx_to_wakeup4 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %num_tx_to_wakeup4, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %ps_fail_event_policy)
  %ps_fail_event_policy5 = getelementptr inbounds %struct.wmi_power_params_cmd, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %ps_fail_event_policy5 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %ps_fail_event_policy5, align 1
  %call6 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 20, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_disctimeout_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %timeout, ptr %3, align 1
  %call1 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 13, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %parent_dev = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %5 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent_dev, align 4
  tail call void @ath6kl_debug_set_disconnect_timeout(ptr noundef %6, i8 noundef zeroext %timeout) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_debug_set_disconnect_timeout(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_addkey_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %key_index, i32 noundef %key_type, i8 noundef zeroext %key_usage, i8 noundef zeroext %key_len, ptr noundef readonly %key_rsc, i32 noundef %key_rsc_len, ptr noundef readonly %key_material, i8 noundef zeroext %key_op_ctrl, ptr noundef readonly %mac_addr, i32 noundef %sync_flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %key_index to i32
  %conv1 = zext i8 %key_usage to i32
  %conv2 = zext i8 %key_len to i32
  %conv3 = zext i8 %key_op_ctrl to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %key_type, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %key_index)
  %cmp = icmp ugt i8 %key_index, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %key_len)
  %cmp7 = icmp ugt i8 %key_len, 32
  %or.cond = or i1 %cmp, %cmp7
  %cmp10 = icmp eq ptr %key_material, null
  %or.cond66 = or i1 %or.cond, %cmp10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %key_rsc_len)
  %cmp13 = icmp ugt i32 %key_rsc_len, 8
  %or.cond67 = or i1 %cmp13, %or.cond66
  br i1 %or.cond67, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %key_type)
  %cmp15.not = icmp ne i32 %key_type, 2
  %cmp17 = icmp eq ptr %key_rsc, null
  %or.cond68 = and i1 %cmp15.not, %cmp17
  br i1 %or.cond68, label %if.end.cleanup_crit_edge, label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 51) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end20.cleanup_crit_edge, label %if.end22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end20
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 51) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 51)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %key_index, ptr %3, align 1
  %conv24 = trunc i32 %key_type to i8
  %key_type25 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %key_type25 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv24, ptr %key_type25, align 1
  %key_usage26 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %key_usage26 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %key_usage, ptr %key_usage26, align 1
  %key_len27 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %key_len27 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %key_len, ptr %key_len27, align 1
  %key = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, ptr %3, i32 0, i32 5
  %8 = call ptr @memcpy(ptr %key, ptr %key_material, i32 %conv2)
  br i1 %cmp17, label %if.end22.if.end34_crit_edge, label %if.then31

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %key_rsc32 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, ptr %3, i32 0, i32 4
  %9 = call ptr @memcpy(ptr %key_rsc32, ptr %key_rsc, i32 %key_rsc_len)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end22.if.end34_crit_edge
  %key_op_ctrl35 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %key_op_ctrl35 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %key_op_ctrl, ptr %key_op_ctrl35, align 1
  %tobool36.not = icmp eq ptr %mac_addr, null
  br i1 %tobool36.not, label %if.end34.if.end39_crit_edge, label %if.then37

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %key_mac_addr = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, ptr %3, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %key_mac_addr, ptr %mac_addr, i32 6)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34.if.end39_crit_edge
  %call40 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 22, i32 noundef %sync_flag)
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end39 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_add_krk_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr nocapture noundef readonly %krk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 16) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = load ptr, ptr %data.i, align 4
  %4 = call ptr @memcpy(ptr %3, ptr %krk, i32 16)
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 24, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_deletekey_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %key_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %key_index)
  %cmp = icmp ugt i8 %key_index, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %key_index, ptr %3, align 1
  %call5 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 23, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_setpmkid_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef readonly %bssid, ptr noundef readonly %pmkid, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %bssid, null
  %cmp1 = icmp eq ptr %pmkid, null
  %or.cond = and i1 %cmp1, %set
  %or.cond28 = or i1 %cmp, %or.cond
  br i1 %or.cond28, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 23) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 23) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 23)
  %3 = load ptr, ptr %data.i, align 4
  %4 = call ptr @memcpy(ptr %3, ptr %bssid, i32 6)
  %pmkid10 = getelementptr inbounds %struct.wmi_setpmkid_cmd, ptr %3, i32 0, i32 2
  br i1 %set, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %5 = call ptr @memcpy(ptr %pmkid10, ptr %pmkid, i32 16)
  br label %if.end15

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call ptr @memset(ptr %pmkid10, i32 0, i32 16)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then9
  %.sink = phi i8 [ 1, %if.then9 ], [ 0, %if.else ]
  %7 = getelementptr inbounds %struct.wmi_setpmkid_cmd, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %7, align 1
  %call16 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 26, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_indicate_tx_activity(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_delete_pstream_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %traffic_class, i8 noundef zeroext %tsid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %traffic_class to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %traffic_class)
  %cmp = icmp ugt i8 %traffic_class, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.16, i32 noundef %conv) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = zext i8 %tsid to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %tsid)
  %cmp4 = icmp ugt i8 %tsid, 15
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.17, i32 noundef %conv3) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 5) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end8.cleanup_crit_edge, label %if.end10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 5) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 5)
  %3 = load ptr, ptr %data.i, align 4
  %traffic_class11 = getelementptr inbounds %struct.wmi_delete_pstream_cmd, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %traffic_class11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %traffic_class, ptr %traffic_class11, align 1
  %tsid12 = getelementptr inbounds %struct.wmi_delete_pstream_cmd, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %tsid12 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %tsid, ptr %tsid12, align 1
  %lock = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %arrayidx = getelementptr [4 x i16], ptr %wmi, i32 0, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %conv14 = zext i16 %7 to i32
  %shl = shl nuw i32 1, %conv3
  %and = and i32 %shl, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i) #10
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.18, i32 noundef %conv3, i32 noundef %conv) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv3) #10
  %call23 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 6, i32 noundef 1)
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = trunc i32 %shl to i16
  %11 = xor i16 %10, -1
  %conv32 = and i16 %9, %11
  store i16 %conv32, ptr %arrayidx, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv32)
  %tobool37.not = icmp eq i16 %conv32, 0
  br i1 %tobool37.not, label %if.then38, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then38:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %parent_dev = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %12 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent_dev, align 4
  tail call void @ath6kl_indicate_tx_activity(ptr noundef %13, i8 noundef zeroext %traffic_class, i1 noundef zeroext false) #10
  %shl40 = shl nuw i32 1, %conv
  %fat_pipe_exist = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 1
  %14 = ptrtoint ptr %fat_pipe_exist to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fat_pipe_exist, align 4
  %16 = trunc i32 %shl40 to i8
  %17 = xor i8 %16, -1
  %conv44 = and i8 %15, %17
  store i8 %conv44, ptr %fat_pipe_exist, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end20.cleanup_crit_edge, %if.then17, %if.end8.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then6 ], [ -61, %if.then17 ], [ %call23, %if.then38 ], [ %call23, %if.end20.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_ip_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %ips0, i32 noundef %ips1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %ips0, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  %and.i15 = and i32 %ips1, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i15)
  %cmp.i16 = icmp eq i32 %and.i15, -536870912
  %or.cond = or i1 %cmp.i, %cmp.i16
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %ips0, ptr %3, align 1
  %arrayidx6 = getelementptr [2 x i32], ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %ips1, ptr %arrayidx6, align 1
  %call7 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61463, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_bitrate_mask(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr nocapture noundef readonly %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_dev = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %0 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_dev, align 4
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fw_capabilities, align 4
  %4 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %storemerge.i = zext i32 %6 to i64
  %ht_mcs.i = getelementptr [6 x %struct.anon.135], ptr %mask, i32 0, i32 0, i32 1
  %arrayidx11.i = getelementptr [6 x %struct.anon.135], ptr %mask, i32 0, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %8 to i64
  %shl13.i = shl nuw nsw i64 %conv12.i, 8
  %9 = ptrtoint ptr %ht_mcs.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ht_mcs.i, align 4
  %conv18.i = zext i8 %10 to i64
  %or.i = or i64 %shl13.i, %conv18.i
  %shl19.i = shl nuw nsw i64 %or.i, 12
  %or21.i = or i64 %shl19.i, %storemerge.i
  %shl22.i = shl nuw nsw i64 %or.i, 28
  %or24.i = or i64 %or21.i, %shl22.i
  %arrayidx.1.i = getelementptr [6 x %struct.anon.135], ptr %mask, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i, align 4
  %shl.1.i = shl i32 %12, 4
  %storemerge.1.i = zext i32 %shl.1.i to i64
  %ht_mcs.1.i = getelementptr [6 x %struct.anon.135], ptr %mask, i32 0, i32 1, i32 1
  %arrayidx11.1.i = getelementptr [6 x %struct.anon.135], ptr %mask, i32 0, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11.1.i, align 1
  %conv12.1.i = zext i8 %14 to i64
  %shl13.1.i = shl nuw nsw i64 %conv12.1.i, 8
  %15 = ptrtoint ptr %ht_mcs.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ht_mcs.1.i, align 4
  %conv18.1.i = zext i8 %16 to i64
  %or.1.i = or i64 %shl13.1.i, %conv18.1.i
  %shl19.1.i = shl nuw nsw i64 %or.1.i, 12
  %or21.1.i = or i64 %shl19.1.i, %storemerge.1.i
  %shl22.1.i = shl nuw nsw i64 %or.1.i, 28
  %or24.1.i = or i64 %or21.1.i, %shl22.1.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.36, i64 noundef %or24.i, i64 noundef %or24.1.i) #10
  %call.i.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 512) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.cleanup_crit_edge, label %if.end41.7.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41.7.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 512) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 512)
  %20 = load ptr, ptr %data.i.i, align 4
  %21 = tail call i64 @llvm.bswap.i64(i64 %or24.1.i) #10
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %20, align 1
  %23 = tail call i64 @llvm.bswap.i64(i64 %or24.i) #10
  %arrayidx44.1.i = getelementptr [8 x i64], ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx44.1.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %arrayidx44.1.i, align 1
  %arrayidx44.2.i = getelementptr [8 x i64], ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx44.2.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %23, ptr %arrayidx44.2.i, align 1
  %arrayidx44.3.i = getelementptr [8 x i64], ptr %20, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx44.3.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %23, ptr %arrayidx44.3.i, align 1
  %arrayidx44.4.i = getelementptr [8 x i64], ptr %20, i32 0, i32 4
  %27 = ptrtoint ptr %arrayidx44.4.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %21, ptr %arrayidx44.4.i, align 1
  %arrayidx44.5.i = getelementptr [8 x i64], ptr %20, i32 0, i32 5
  %28 = ptrtoint ptr %arrayidx44.5.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %23, ptr %arrayidx44.5.i, align 1
  %arrayidx44.6.i = getelementptr [8 x i64], ptr %20, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx44.6.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %21, ptr %arrayidx44.6.i, align 1
  %arrayidx44.7.i = getelementptr [8 x i64], ptr %20, i32 0, i32 7
  %30 = ptrtoint ptr %arrayidx44.7.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %23, ptr %arrayidx44.7.i, align 1
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %ht_mcs.i8 = getelementptr [6 x %struct.anon.135], ptr %mask, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %ht_mcs.i8 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ht_mcs.i8, align 4
  %conv.i = zext i8 %32 to i32
  %shl10.i = shl nuw nsw i32 %conv.i, 12
  %or.i9 = or i32 %shl10.i, %6
  %shl12.i = shl nuw nsw i32 %conv.i, 20
  %or14.i = or i32 %or.i9, %shl12.i
  %arrayidx.1.i10 = getelementptr [6 x %struct.anon.135], ptr %mask, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.1.i10, align 4
  %shl.1.i11 = shl i32 %34, 4
  %ht_mcs.1.i12 = getelementptr [6 x %struct.anon.135], ptr %mask, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %ht_mcs.1.i12 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ht_mcs.1.i12, align 4
  %conv.1.i = zext i8 %36 to i32
  %shl10.1.i = shl nuw nsw i32 %conv.1.i, 12
  %or.1.i13 = or i32 %shl10.1.i, %shl.1.i11
  %shl12.1.i = shl nuw nsw i32 %conv.1.i, 20
  %or14.1.i = or i32 %or.1.i13, %shl12.1.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.37, i32 noundef %or14.i, i32 noundef %or14.1.i) #10
  %call.i.i14 = tail call ptr @ath6kl_buf_alloc(i32 noundef 256) #10
  %tobool.not.i.i15 = icmp eq ptr %call.i.i14, null
  br i1 %tobool.not.i.i15, label %if.else.cleanup_crit_edge, label %if.end31.7.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31.7.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i16 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i14, i32 noundef 256) #10
  %data.i.i17 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i14, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i17, align 4
  %39 = call ptr @memset(ptr %38, i32 0, i32 256)
  %40 = load ptr, ptr %data.i.i17, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %or14.1.i) #10
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %40, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #10
  %arrayidx34.1.i = getelementptr [8 x i32], ptr %40, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx34.1.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %arrayidx34.1.i, align 1
  %arrayidx34.2.i = getelementptr [8 x i32], ptr %40, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx34.2.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %43, ptr %arrayidx34.2.i, align 1
  %arrayidx34.3.i = getelementptr [8 x i32], ptr %40, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx34.3.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %43, ptr %arrayidx34.3.i, align 1
  %arrayidx34.4.i = getelementptr [8 x i32], ptr %40, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx34.4.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %41, ptr %arrayidx34.4.i, align 1
  %arrayidx34.5.i = getelementptr [8 x i32], ptr %40, i32 0, i32 5
  %48 = ptrtoint ptr %arrayidx34.5.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %43, ptr %arrayidx34.5.i, align 1
  %arrayidx34.6.i = getelementptr [8 x i32], ptr %40, i32 0, i32 6
  %49 = ptrtoint ptr %arrayidx34.6.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %41, ptr %arrayidx34.6.i, align 1
  %arrayidx34.7.i = getelementptr [8 x i32], ptr %40, i32 0, i32 7
  %50 = ptrtoint ptr %arrayidx34.7.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %43, ptr %arrayidx34.7.i, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end31.7.i, %if.end41.7.i
  %call.i.i14.sink = phi ptr [ %call.i.i14, %if.end31.7.i ], [ %call.i.i, %if.end41.7.i ]
  %call38.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i.i14.sink, i32 noundef 61472, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ %call38.i, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_host_sleep_mode_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %host_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %host_mode)
  %switch = icmp ult i32 %host_mode, 2
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.20, i32 noundef %host_mode) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %host_mode)
  %cmp4 = icmp eq i32 %host_mode, 1
  br i1 %cmp4, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  %lock.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %fat_pipe_exist.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 1
  %4 = ptrtoint ptr %fat_pipe_exist.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fat_pipe_exist.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %parent_dev.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i17 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i17, label %if.then5.for.inc.i_crit_edge, label %if.then.i

if.then5.for.inc.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %6 = ptrtoint ptr %wmi to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wmi, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not.i = icmp eq i16 %7, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i = and i8 %5, -2
  %8 = ptrtoint ptr %parent_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent_dev.i, align 4
  tail call void @ath6kl_indicate_tx_activity(ptr noundef %9, i8 noundef zeroext 0, i1 noundef zeroext false) #10
  %.pre.i = zext i8 %conv9.i to i32
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.then.i.for.inc.i_crit_edge, %if.then5.for.inc.i_crit_edge
  %conv.1.pre-phi.i = phi i32 [ %conv.i, %if.then5.for.inc.i_crit_edge ], [ %.pre.i, %if.then5.i ], [ %conv.i, %if.then.i.for.inc.i_crit_edge ]
  %stream_exist.1.i = phi i8 [ %5, %if.then5.for.inc.i_crit_edge ], [ %conv9.i, %if.then5.i ], [ %5, %if.then.i.for.inc.i_crit_edge ]
  %and.1.i = and i32 %conv.1.pre-phi.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %arrayidx.1.i = getelementptr [4 x i16], ptr %wmi, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.1.i, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.not.1.i = icmp eq i16 %11, 0
  br i1 %tobool4.not.1.i, label %if.then5.1.i, label %if.then.1.i.for.inc.1.i_crit_edge

if.then.1.i.for.inc.1.i_crit_edge:                ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then5.1.i:                                     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.1.i = and i8 %stream_exist.1.i, -3
  %12 = ptrtoint ptr %parent_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent_dev.i, align 4
  tail call void @ath6kl_indicate_tx_activity(ptr noundef %13, i8 noundef zeroext 1, i1 noundef zeroext false) #10
  %.pre34.i = zext i8 %conv9.1.i to i32
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then5.1.i, %if.then.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %conv.2.pre-phi.i = phi i32 [ %.pre34.i, %if.then5.1.i ], [ %conv.1.pre-phi.i, %if.then.1.i.for.inc.1.i_crit_edge ], [ %conv.1.pre-phi.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %stream_exist.1.1.i = phi i8 [ %conv9.1.i, %if.then5.1.i ], [ %stream_exist.1.i, %if.then.1.i.for.inc.1.i_crit_edge ], [ %stream_exist.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %and.2.i = and i32 %conv.2.pre-phi.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %arrayidx.2.i = getelementptr [4 x i16], ptr %wmi, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2.i, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool4.not.2.i = icmp eq i16 %15, 0
  br i1 %tobool4.not.2.i, label %if.then5.2.i, label %if.then.2.i.for.inc.2.i_crit_edge

if.then.2.i.for.inc.2.i_crit_edge:                ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.then5.2.i:                                     ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.2.i = and i8 %stream_exist.1.1.i, -5
  %16 = ptrtoint ptr %parent_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent_dev.i, align 4
  tail call void @ath6kl_indicate_tx_activity(ptr noundef %17, i8 noundef zeroext 2, i1 noundef zeroext false) #10
  %.pre35.i = zext i8 %conv9.2.i to i32
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then5.2.i, %if.then.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %conv.3.pre-phi.i = phi i32 [ %.pre35.i, %if.then5.2.i ], [ %conv.2.pre-phi.i, %if.then.2.i.for.inc.2.i_crit_edge ], [ %conv.2.pre-phi.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %stream_exist.1.2.i = phi i8 [ %conv9.2.i, %if.then5.2.i ], [ %stream_exist.1.1.i, %if.then.2.i.for.inc.2.i_crit_edge ], [ %stream_exist.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %and.3.i = and i32 %conv.3.pre-phi.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.ath6kl_wmi_relinquish_implicit_pstream_credits.exit_crit_edge, label %if.then.3.i

for.inc.2.i.ath6kl_wmi_relinquish_implicit_pstream_credits.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_relinquish_implicit_pstream_credits.exit

if.then.3.i:                                      ; preds = %for.inc.2.i
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %arrayidx.3.i = getelementptr [4 x i16], ptr %wmi, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.3.i, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool4.not.3.i = icmp eq i16 %19, 0
  br i1 %tobool4.not.3.i, label %if.then5.3.i, label %if.then.3.i.ath6kl_wmi_relinquish_implicit_pstream_credits.exit_crit_edge

if.then.3.i.ath6kl_wmi_relinquish_implicit_pstream_credits.exit_crit_edge: ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_relinquish_implicit_pstream_credits.exit

if.then5.3.i:                                     ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.3.i = and i8 %stream_exist.1.2.i, -9
  %20 = ptrtoint ptr %parent_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent_dev.i, align 4
  tail call void @ath6kl_indicate_tx_activity(ptr noundef %21, i8 noundef zeroext 3, i1 noundef zeroext false) #10
  br label %ath6kl_wmi_relinquish_implicit_pstream_credits.exit

ath6kl_wmi_relinquish_implicit_pstream_credits.exit: ; preds = %if.then5.3.i, %if.then.3.i.ath6kl_wmi_relinquish_implicit_pstream_credits.exit_crit_edge, %for.inc.2.i.ath6kl_wmi_relinquish_implicit_pstream_credits.exit_crit_edge
  %stream_exist.1.3.i = phi i8 [ %stream_exist.1.2.i, %if.then.3.i.ath6kl_wmi_relinquish_implicit_pstream_credits.exit_crit_edge ], [ %conv9.3.i, %if.then5.3.i ], [ %stream_exist.1.2.i, %for.inc.2.i.ath6kl_wmi_relinquish_implicit_pstream_credits.exit_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %22 = ptrtoint ptr %fat_pipe_exist.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %stream_exist.1.3.i, ptr %fat_pipe_exist.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %asleep = getelementptr inbounds %struct.wmi_set_host_sleep_mode_cmd, ptr %3, i32 0, i32 1
  br label %if.end6

if.end6:                                          ; preds = %ath6kl_wmi_relinquish_implicit_pstream_credits.exit, %if.end3.if.end6_crit_edge
  %.sink = phi ptr [ %asleep, %ath6kl_wmi_relinquish_implicit_pstream_credits.exit ], [ %3, %if.end3.if.end6_crit_edge ]
  %23 = ptrtoint ptr %.sink to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 16777216, ptr %.sink, align 1
  %call7 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 66, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call7, %if.end6 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_wow_mode_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %wow_mode, i32 noundef %filter, i16 noundef zeroext %host_req_delay) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %wow_mode)
  %switch = icmp ult i32 %wow_mode, 2
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.21, i32 noundef %wow_mode) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 10) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 10) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 10)
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %wow_mode)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %3, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %filter)
  %filter4 = getelementptr inbounds %struct.wmi_set_wow_mode_cmd, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %filter4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %filter4, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %host_req_delay)
  %host_req_delay5 = getelementptr inbounds %struct.wmi_set_wow_mode_cmd, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %host_req_delay5 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %host_req_delay5, align 1
  %call6 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 67, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call6, %if.end3 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_add_wow_pattern_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %list_id, i8 noundef zeroext %filter_size, i8 noundef zeroext %filter_offset, ptr nocapture noundef readonly %filter, ptr nocapture noundef readonly %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.tr = zext i8 %filter_size to i32
  %0 = shl nuw nsw i32 %conv.tr, 1
  %conv1 = add nuw nsw i32 %0, 3
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef %conv1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 %conv1)
  %4 = load ptr, ptr %data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %list_id, ptr %4, align 1
  %filter_size3 = getelementptr inbounds %struct.wmi_add_wow_pattern_cmd, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %filter_size3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %filter_size, ptr %filter_size3, align 1
  %filter_offset4 = getelementptr inbounds %struct.wmi_add_wow_pattern_cmd, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %filter_offset4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %filter_offset, ptr %filter_offset4, align 1
  %filter5 = getelementptr inbounds %struct.wmi_add_wow_pattern_cmd, ptr %4, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %filter5, ptr %filter, i32 %conv.tr)
  %add.ptr = getelementptr i8, ptr %filter5, i32 %conv.tr
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %mask, i32 %conv.tr)
  %call11 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 69, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_del_wow_pattern_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i16 noundef zeroext %list_id, i16 noundef zeroext %filter_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %list_id)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %3, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %filter_id)
  %filter_id1 = getelementptr inbounds %struct.wmi_del_wow_pattern_cmd, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %filter_id1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %filter_id1, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 70, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_get_challenge_resp_cmd(ptr noundef %wmi, i32 noundef %cookie, i32 noundef %source) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %cookie)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %3, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %source)
  %source2 = getelementptr inbounds %struct.wmix_hb_challenge_resp_cmd, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %source2 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %source2, align 1
  %call.i9 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 136314880, ptr %9, align 1
  %call2.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext 0, ptr noundef nonnull %call.i, i32 noundef 46, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_config_debug_module_cmd(ptr noundef %wmi, i32 noundef %valid, i32 noundef %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %valid)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %3, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %config)
  %config2 = getelementptr inbounds %struct.ath6kl_wmix_dbglog_cfg_module_cmd, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %config2 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %config2, align 1
  %call.i9 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 153092096, ptr %9, align 1
  %call2.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext 0, ptr noundef nonnull %call.i, i32 noundef 46, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_get_stats_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 0) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.ath6kl_wmi_simple_cmd.exit_crit_edge, label %if.end.i

entry.ath6kl_wmi_simple_cmd.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_simple_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  %call1.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i.i, i32 noundef 16, i32 noundef 0) #10
  br label %ath6kl_wmi_simple_cmd.exit

ath6kl_wmi_simple_cmd.exit:                       ; preds = %if.end.i, %entry.ath6kl_wmi_simple_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -12, %entry.ath6kl_wmi_simple_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_tx_pwr_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %dbM) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %dbM, ptr %3, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 27, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_get_tx_pwr_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 0) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.ath6kl_wmi_simple_cmd.exit_crit_edge, label %if.end.i

entry.ath6kl_wmi_simple_cmd.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_simple_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  %call1.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i.i, i32 noundef 28, i32 noundef 0) #10
  br label %ath6kl_wmi_simple_cmd.exit

ath6kl_wmi_simple_cmd.exit:                       ; preds = %if.end.i, %entry.ath6kl_wmi_simple_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -12, %entry.ath6kl_wmi_simple_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_get_roam_tbl_cmd(ptr noundef %wmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 0) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.ath6kl_wmi_simple_cmd.exit_crit_edge, label %if.end.i

entry.ath6kl_wmi_simple_cmd.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_simple_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  %call1.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext 0, ptr noundef nonnull %call.i.i, i32 noundef 42, i32 noundef 0) #10
  br label %ath6kl_wmi_simple_cmd.exit

ath6kl_wmi_simple_cmd.exit:                       ; preds = %if.end.i, %entry.ath6kl_wmi_simple_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -12, %entry.ath6kl_wmi_simple_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_lpreamble_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %status, i8 noundef zeroext %preamble_policy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 2) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %status, ptr %3, align 1
  %preamble_policy2 = getelementptr inbounds %struct.wmi_set_lpreamble_cmd, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %preamble_policy2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %preamble_policy, ptr %preamble_policy2, align 1
  %call3 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 49, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_rts_cmd(ptr noundef %wmi, i16 noundef zeroext %threshold) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 2) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %threshold)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %3, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext 0, ptr noundef nonnull %call.i, i32 noundef 50, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_wmm_txop(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cfg)
  %switch = icmp ult i32 %cfg, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %conv = trunc i32 %cfg to i8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %3, align 1
  %call4 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 57, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_keepalive_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %keep_alive_intvl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %keep_alive_intvl, ptr %3, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %parent_dev = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %5 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent_dev, align 4
  tail call void @ath6kl_debug_set_keepalive(ptr noundef %6, i8 noundef zeroext %keep_alive_intvl) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_debug_set_keepalive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_htcap_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %band, ptr nocapture noundef readonly %htcap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 7) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 7) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 7)
  %3 = load ptr, ptr %data.i, align 4
  %conv = trunc i32 %band to i8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %3, align 1
  %5 = ptrtoint ptr %htcap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %htcap, align 2, !range !588
  %ht_enable5 = getelementptr inbounds %struct.wmi_set_htcap_cmd, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %ht_enable5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ht_enable5, align 1
  %cap_info = getelementptr inbounds %struct.ath6kl_htcap, ptr %htcap, i32 0, i32 2
  %8 = ptrtoint ptr %cap_info to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cap_info, align 2
  %10 = trunc i16 %9 to i8
  %11 = lshr i8 %10, 5
  %12 = and i8 %11, 1
  %ht20_sgi = getelementptr inbounds %struct.wmi_set_htcap_cmd, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %ht20_sgi to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ht20_sgi, align 1
  %14 = load i16, ptr %cap_info, align 2
  %15 = trunc i16 %14 to i8
  %16 = lshr i8 %15, 1
  %17 = and i8 %16, 1
  %ht40_supported = getelementptr inbounds %struct.wmi_set_htcap_cmd, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %ht40_supported to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ht40_supported, align 1
  %19 = load i16, ptr %cap_info, align 2
  %20 = trunc i16 %19 to i8
  %21 = lshr i8 %20, 6
  %22 = and i8 %21, 1
  %ht40_sgi = getelementptr inbounds %struct.wmi_set_htcap_cmd, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %ht40_sgi to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %ht40_sgi, align 1
  %24 = load i16, ptr %cap_info, align 2
  %25 = lshr i16 %24, 14
  %26 = trunc i16 %25 to i8
  %27 = and i8 %26, 1
  %intolerant_40mhz = getelementptr inbounds %struct.wmi_set_htcap_cmd, ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %intolerant_40mhz to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %intolerant_40mhz, align 1
  %ampdu_factor = getelementptr inbounds %struct.ath6kl_htcap, ptr %htcap, i32 0, i32 1
  %29 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ampdu_factor, align 1
  %max_ampdu_len_exp = getelementptr inbounds %struct.wmi_set_htcap_cmd, ptr %3, i32 0, i32 6
  %31 = ptrtoint ptr %max_ampdu_len_exp to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %max_ampdu_len_exp, align 1
  %conv41 = and i32 %band, 255
  %conv43 = zext i8 %6 to i32
  %conv45 = zext i8 %17 to i32
  %conv47 = zext i8 %12 to i32
  %conv49 = zext i8 %22 to i32
  %conv51 = zext i8 %27 to i32
  %conv53 = zext i8 %30 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.22, i32 noundef %conv41, i32 noundef %conv43, i32 noundef %conv45, i32 noundef %conv47, i32 noundef %conv49, i32 noundef %conv51, i32 noundef %conv53) #10
  %call54 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61470, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_test_cmd(ptr noundef %wmi, ptr nocapture noundef readonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef %len) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %len) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool2.not.i = icmp eq i32 %len, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 %len)
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = call ptr @memcpy(ptr %4, ptr %buf, i32 %len)
  %call1 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext 0, ptr noundef nonnull %call.i, i32 noundef 58, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_mcast_filter_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i1 noundef zeroext %mc_all_on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %frombool = zext i1 %mc_all_on to i8
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %3, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61481, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_add_del_mcast_filter_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr nocapture noundef readonly %filter, i1 noundef zeroext %add_filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %filter to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %filter, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.281)
  switch i8 %1, label %entry.if.then_crit_edge [
    i8 51, label %lor.lhs.false
    i8 1, label %lor.lhs.false10
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %filter, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %4)
  %cmp4.not = icmp eq i8 %4, 51
  br i1 %cmp4.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false10:                                  ; preds = %entry
  %arrayidx11 = getelementptr i8, ptr %filter, i32 1
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp13.not = icmp eq i8 %6, 0
  br i1 %cmp13.not, label %lor.lhs.false15, label %lor.lhs.false10.if.then_crit_edge

lor.lhs.false10.if.then_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false15:                                  ; preds = %lor.lhs.false10
  %arrayidx16 = getelementptr i8, ptr %filter, i32 2
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %8)
  %cmp18.not = icmp eq i8 %8, 94
  br i1 %cmp18.not, label %lor.lhs.false20, label %lor.lhs.false15.if.then_crit_edge

lor.lhs.false15.if.then_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %arrayidx21 = getelementptr i8, ptr %filter, i32 3
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp23 = icmp slt i8 %10, 0
  br i1 %cmp23, label %lor.lhs.false20.if.then_crit_edge, label %lor.lhs.false20.if.end_crit_edge

lor.lhs.false20.if.end_crit_edge:                 ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false20.if.then_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false20.if.then_crit_edge, %lor.lhs.false15.if.then_crit_edge, %lor.lhs.false10.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false20.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 6) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 6) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 6)
  %14 = load ptr, ptr %data.i, align 4
  %15 = call ptr @memcpy(ptr %14, ptr %filter, i32 6)
  %cond = select i1 %add_filter, i32 61465, i32 61466
  %call29 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef %cond, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call29, %if.end26 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_sta_bmiss_enhance_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i1 noundef zeroext %enhance) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %conv = zext i1 %enhance to i8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %3, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61582, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_regdomain_cmd(ptr noundef %wmi, ptr nocapture noundef readonly %alpha2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 3) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 3) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 3)
  %3 = load ptr, ptr %data.i, align 4
  %iso_name = getelementptr inbounds %struct.wmi_set_regdomain_cmd, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %alpha2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %alpha2, align 1
  %6 = ptrtoint ptr %iso_name to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %iso_name, align 1
  %call1 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext 0, ptr noundef nonnull %call.i, i32 noundef 61583, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_get_rate(ptr nocapture noundef readonly %wmi, i8 noundef signext %rate_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rate_index)
  %cmp = icmp eq i8 %rate_index, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent_dev = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %0 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_dev, align 4
  %and5 = and i8 %rate_index, 127
  %rate_index.lobit = lshr i8 %rate_index, 7
  %2 = zext i8 %rate_index.lobit to i32
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 87
  %3 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %fw_capabilities, align 4
  %5 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %and5)
  %cmp11 = icmp ugt i8 %and5, 44
  br i1 %cmp11, label %do.end, label %if.end36, !prof !587

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3333, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end36:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %conv1094 = zext i8 %and5 to i32
  %arrayidx38 = getelementptr [45 x [2 x i32]], ptr @wmi_rate_tbl_mcs15, i32 0, i32 %conv1094, i32 %2
  br label %if.end79

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %and5)
  %cmp41 = icmp ugt i8 %and5, 28
  br i1 %cmp41, label %do.end58, label %if.end74, !prof !587

do.end58:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3338, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end74:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv4093 = zext i8 %and5 to i32
  %arrayidx78 = getelementptr [29 x [2 x i32]], ptr @wmi_rate_tbl, i32 0, i32 %conv4093, i32 %2
  br label %if.end79

if.end79:                                         ; preds = %if.end74, %if.end36
  %ret.0.in = phi ptr [ %arrayidx38, %if.end36 ], [ %arrayidx78, %if.end74 ]
  %6 = ptrtoint ptr %ret.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %ret.0 = load i32, ptr %ret.0.in, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %do.end58, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.0, %if.end79 ], [ 0, %do.end58 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_ap_profile_commit(ptr noundef %wmip, i8 noundef zeroext %if_idx, ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 53) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 53) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 53)
  %3 = load ptr, ptr %data.i, align 4
  %4 = call ptr @memcpy(ptr %3, ptr %p, i32 53)
  %call1 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmip, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61455, i32 noundef 0)
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %p, align 1
  %conv = zext i8 %6 to i32
  %auth_mode = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 2
  %7 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %auth_mode, align 1
  %conv2 = zext i8 %8 to i32
  %ch = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 9
  %9 = ptrtoint ptr %ch to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %ch, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv3 = zext i16 %11 to i32
  %ctrl_flags = getelementptr inbounds %struct.wmi_connect_cmd, ptr %p, i32 0, i32 11
  %12 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %ctrl_flags, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.ath6kl_wmi_ap_profile_commit, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %14, i32 noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_ap_set_mlme(ptr noundef %wmip, i8 noundef zeroext %if_idx, i8 noundef zeroext %cmd, ptr nocapture noundef readonly %mac, i16 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 9) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 9) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 9)
  %3 = load ptr, ptr %data.i, align 4
  %4 = call ptr @memcpy(ptr %3, ptr %mac, i32 6)
  %5 = tail call i16 @llvm.bswap.i16(i16 %reason)
  %reason2 = getelementptr inbounds %struct.wmi_ap_set_mlme_cmd, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %reason2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %reason2, align 1
  %cmd3 = getelementptr inbounds %struct.wmi_ap_set_mlme_cmd, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %cmd3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %cmd, ptr %cmd3, align 1
  %conv = zext i8 %cmd to i32
  %conv6 = zext i16 %5 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv6) #10
  %call7 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmip, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61456, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_ap_hidden_ssid(ptr noundef %wmi, i8 noundef zeroext %if_idx, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %conv = zext i1 %enable to i8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %3, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61451, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_ap_set_apsd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %enable, ptr %3, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61529, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_apsd_bfrd_traf(ptr noundef %wmi, i8 noundef zeroext %if_idx, i16 noundef zeroext %aid, i16 noundef zeroext %bitmap, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %aid)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %3, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %bitmap)
  %bitmap2 = getelementptr inbounds %struct.wmi_ap_apsd_buffered_traffic_cmd, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %bitmap2 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %bitmap2, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %flags)
  %flags3 = getelementptr inbounds %struct.wmi_ap_apsd_buffered_traffic_cmd, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %flags3 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %flags3, align 1
  %call4 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61530, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_pvb_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i16 noundef zeroext %aid, i1 noundef zeroext %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %aid)
  %aid1 = getelementptr inbounds %struct.wmi_ap_set_pvb_cmd, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %aid1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %aid1, align 1
  %rsvd = getelementptr inbounds %struct.wmi_ap_set_pvb_cmd, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %rsvd to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 0, ptr %rsvd, align 1
  %7 = select i1 %flag, i32 16777216, i32 0
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %3, align 1
  %call4 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61457, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_rx_frame_format_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %rx_meta_ver, i1 noundef zeroext %rx_dot11_hdr, i1 noundef zeroext %defrag_on_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %1, align 1
  %3 = load ptr, ptr %data.i, align 4
  %conv = zext i1 %rx_dot11_hdr to i8
  %dot11_hdr = getelementptr inbounds %struct.wmi_rx_frame_format_cmd, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dot11_hdr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %dot11_hdr, align 1
  %conv6 = zext i1 %defrag_on_host to i8
  %defrag_on_host7 = getelementptr inbounds %struct.wmi_rx_frame_format_cmd, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %defrag_on_host7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv6, ptr %defrag_on_host7, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %rx_meta_ver, ptr %3, align 1
  %call8 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61476, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_appie_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %mgmt_frm_type, ptr noundef readonly %ie, i8 noundef zeroext %ie_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ie_len to i32
  %add = add nuw nsw i32 %conv, 2
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef %add) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 %add)
  %conv1 = zext i8 %mgmt_frm_type to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.26, i32 noundef %conv1, i32 noundef %conv) #10
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %mgmt_frm_type, ptr %4, align 1
  %ie_len4 = getelementptr inbounds %struct.wmi_set_appie_cmd, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %ie_len4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %ie_len, ptr %ie_len4, align 1
  %cmp.not = icmp eq ptr %ie, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ie_len)
  %cmp7.not = icmp eq i8 %ie_len, 0
  %or.cond = or i1 %cmp.not, %cmp7.not
  br i1 %or.cond, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ie_info = getelementptr inbounds %struct.wmi_set_appie_cmd, ptr %4, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %ie_info, ptr %ie, i32 %conv)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %call12 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 63, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_ie_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i8 noundef zeroext %ie_id, i8 noundef zeroext %ie_field, ptr noundef readonly %ie_info, i8 noundef zeroext %ie_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ie_len to i32
  %add = add nuw nsw i32 %conv, 4
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef %add) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 %add)
  %conv1 = zext i8 %ie_id to i32
  %conv2 = zext i8 %ie_field to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.27, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv) #10
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %ie_id, ptr %4, align 1
  %ie_field5 = getelementptr inbounds %struct.wmi_set_ie_cmd, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %ie_field5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %ie_field, ptr %ie_field5, align 1
  %ie_len6 = getelementptr inbounds %struct.wmi_set_ie_cmd, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %ie_len6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %ie_len, ptr %ie_len6, align 1
  %tobool7.not = icmp eq ptr %ie_info, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ie_len)
  %cmp.not = icmp eq i8 %ie_len, 0
  %or.cond = or i1 %tobool7.not, %cmp.not
  br i1 %or.cond, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ie_info11 = getelementptr inbounds %struct.wmi_set_ie_cmd, ptr %4, i32 0, i32 4
  %8 = call ptr @memcpy(ptr %ie_info11, ptr %ie_info, i32 %conv)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %call14 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 74, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_disable_11b_rates_cmd(ptr noundef %wmi, i1 noundef zeroext %disable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %conv = zext i1 %disable to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.28, i32 noundef %conv) #10
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %conv4 = zext i1 %disable to i8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %4, align 1
  %call6 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext 0, ptr noundef nonnull %call.i, i32 noundef 61547, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_remain_on_chnl_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %freq, i32 noundef %dur) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.29, i32 noundef %freq, i32 noundef %dur) #10
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %freq)
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %4, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %dur)
  %duration = getelementptr inbounds %struct.wmi_remain_on_chnl_cmd, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %duration to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %duration, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61543, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_send_mgmt_cmd(ptr nocapture noundef readonly %wmi, i8 noundef zeroext %if_idx, i32 noundef %id, i32 noundef %freq, i32 noundef %wait, ptr noundef %data, i16 noundef zeroext %data_len, i32 noundef %no_cck) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_dev = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %0 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_dev, align 4
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fw_capabilities, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %wmi3 = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %wmi3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wmi3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not.i13 = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i13, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %conv.i = zext i16 %data_len to i32
  %call.i = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %conv.i, i32 noundef 3264) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.end3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  %add.i = add nuw nsw i32 %conv.i, 18
  %call.i.i = tail call ptr @ath6kl_buf_alloc(i32 noundef %add.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call.i) #10
  br label %if.end

if.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add.i) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 %add.i)
  %last_mgmt_tx_frame.i = getelementptr inbounds %struct.wmi, ptr %6, i32 0, i32 10
  %10 = ptrtoint ptr %last_mgmt_tx_frame.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %last_mgmt_tx_frame.i, align 4
  tail call void @kfree(ptr noundef %11) #10
  %12 = ptrtoint ptr %last_mgmt_tx_frame.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %last_mgmt_tx_frame.i, align 4
  %last_mgmt_tx_frame_len.i = getelementptr inbounds %struct.wmi, ptr %6, i32 0, i32 11
  %13 = ptrtoint ptr %last_mgmt_tx_frame_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %last_mgmt_tx_frame_len.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.38, i32 noundef %id, i32 noundef %freq, i32 noundef 0, i32 noundef %conv.i) #10
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %id) #10
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %15, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %freq) #10
  %freq14.i = getelementptr inbounds %struct.wmi_send_mgmt_cmd, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %freq14.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %freq14.i, align 1
  %wait15.i = getelementptr inbounds %struct.wmi_send_mgmt_cmd, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %wait15.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 0, ptr %wait15.i, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %no_cck) #10
  %no_cck16.i = getelementptr inbounds %struct.wmi_send_mgmt_cmd, ptr %15, i32 0, i32 3
  %22 = ptrtoint ptr %no_cck16.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %no_cck16.i, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %data_len) #10
  %len.i = getelementptr inbounds %struct.wmi_send_mgmt_cmd, ptr %15, i32 0, i32 4
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %len.i, align 1
  %data17.i = getelementptr inbounds %struct.wmi_send_mgmt_cmd, ptr %15, i32 0, i32 5
  %25 = call ptr @memcpy(ptr %data17.i, ptr %data, i32 %conv.i)
  %call19.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %6, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i.i, i32 noundef 61578, i32 noundef 0) #10
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i13, label %if.end.i17, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i17:                                       ; preds = %if.else
  %conv.i14 = zext i16 %data_len to i32
  %call.i15 = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %conv.i14, i32 noundef 3264) #10
  %tobool1.not.i16 = icmp eq ptr %call.i15, null
  br i1 %tobool1.not.i16, label %if.end.i17.if.end_crit_edge, label %if.end3.i21

if.end.i17.if.end_crit_edge:                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end3.i21:                                      ; preds = %if.end.i17
  %add.i18 = add nuw nsw i32 %conv.i14, 14
  %call.i.i19 = tail call ptr @ath6kl_buf_alloc(i32 noundef %add.i18) #10
  %tobool.not.i.i20 = icmp eq ptr %call.i.i19, null
  br i1 %tobool.not.i.i20, label %if.then7.i22, label %if.end8.i30

if.then7.i22:                                     ; preds = %if.end3.i21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call.i15) #10
  br label %if.end

if.end8.i30:                                      ; preds = %if.end3.i21
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i23 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i19, i32 noundef %add.i18) #10
  %data.i.i24 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i19, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i24, align 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 %add.i18)
  %last_mgmt_tx_frame.i25 = getelementptr inbounds %struct.wmi, ptr %6, i32 0, i32 10
  %29 = ptrtoint ptr %last_mgmt_tx_frame.i25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %last_mgmt_tx_frame.i25, align 4
  tail call void @kfree(ptr noundef %30) #10
  %31 = ptrtoint ptr %last_mgmt_tx_frame.i25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i15, ptr %last_mgmt_tx_frame.i25, align 4
  %last_mgmt_tx_frame_len.i26 = getelementptr inbounds %struct.wmi, ptr %6, i32 0, i32 11
  %32 = ptrtoint ptr %last_mgmt_tx_frame_len.i26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv.i14, ptr %last_mgmt_tx_frame_len.i26, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.38, i32 noundef %id, i32 noundef %freq, i32 noundef 0, i32 noundef %conv.i14) #10
  %33 = ptrtoint ptr %data.i.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i24, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %id) #10
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %34, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %freq) #10
  %freq14.i27 = getelementptr inbounds %struct.wmi_send_action_cmd, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %freq14.i27 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %freq14.i27, align 1
  %wait15.i28 = getelementptr inbounds %struct.wmi_send_action_cmd, ptr %34, i32 0, i32 2
  %39 = ptrtoint ptr %wait15.i28 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 0, ptr %wait15.i28, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %data_len) #10
  %len.i29 = getelementptr inbounds %struct.wmi_send_action_cmd, ptr %34, i32 0, i32 3
  %41 = ptrtoint ptr %len.i29 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %len.i29, align 1
  %data16.i = getelementptr inbounds %struct.wmi_send_action_cmd, ptr %34, i32 0, i32 4
  %42 = call ptr @memcpy(ptr %data16.i, ptr %data, i32 %conv.i14)
  %call18.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %6, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i.i19, i32 noundef 61545, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.end8.i30, %if.then7.i22, %if.end.i17.if.end_crit_edge, %if.else.if.end_crit_edge, %if.end8.i, %if.then7.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %status.0 = phi i32 [ %call19.i, %if.end8.i ], [ -12, %if.then7.i ], [ -22, %if.then.if.end_crit_edge ], [ -12, %if.end.i.if.end_crit_edge ], [ %call18.i, %if.end8.i30 ], [ -12, %if.then7.i22 ], [ -22, %if.else.if.end_crit_edge ], [ -12, %if.end.i17.if.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_send_probe_response_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %freq, ptr noundef %dst, ptr nocapture noundef readonly %data, i16 noundef zeroext %data_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %data_len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %data_len)
  %cmp = icmp eq i16 %data_len, 0
  %spec.select.v = select i1 %cmp, i32 13, i32 12
  %spec.select = add nuw nsw i32 %spec.select.v, %conv
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef %spec.select) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %spec.select) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 %spec.select)
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.30, i32 noundef %freq, ptr noundef %dst, i32 noundef %conv) #10
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %freq)
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %4, align 1
  %destination_addr = getelementptr inbounds %struct.wmi_p2p_probe_response_cmd, ptr %4, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %destination_addr, ptr %dst, i32 6)
  %8 = tail call i16 @llvm.bswap.i16(i16 %data_len)
  %len = getelementptr inbounds %struct.wmi_p2p_probe_response_cmd, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %len, align 1
  %data8 = getelementptr inbounds %struct.wmi_p2p_probe_response_cmd, ptr %4, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %data8, ptr %data, i32 %conv)
  %call11 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61548, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_probe_report_req_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %conv = zext i1 %enable to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.31, i32 noundef %conv) #10
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %conv4 = zext i1 %enable to i8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %4, align 1
  %call6 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61546, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_info_req_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %info_req_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %1, align 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.32, i32 noundef %info_req_flags) #10
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %info_req_flags)
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %4, align 1
  %call2 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61549, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_cancel_remain_on_chnl_cmd(ptr noundef %wmi, i8 noundef zeroext %if_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.33) #10
  %call.i.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 0) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.ath6kl_wmi_simple_cmd.exit_crit_edge, label %if.end.i

entry.ath6kl_wmi_simple_cmd.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_simple_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  %call1.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i.i, i32 noundef 61544, i32 noundef 0) #10
  br label %ath6kl_wmi_simple_cmd.exit

ath6kl_wmi_simple_cmd.exit:                       ; preds = %if.end.i, %entry.ath6kl_wmi_simple_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -12, %entry.ath6kl_wmi_simple_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_set_inact_period(ptr noundef %wmi, i8 noundef zeroext %if_idx, i32 noundef %inact_timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 5) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 5) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 5)
  %3 = load ptr, ptr %data.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %inact_timeout)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %3, align 1
  %num_null_func = getelementptr inbounds %struct.wmi_set_inact_period_cmd, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %num_null_func to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %num_null_func, align 1
  %call1 = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext %if_idx, ptr noundef nonnull %call.i, i32 noundef 61458, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_wmi_control_rx(ptr noundef %wmi, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %data.i.i.i250.i = alloca %struct.cfg80211_inform_bss, align 8
  %alpha2.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %do.end, label %if.end21, !prof !587

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4124, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end21:                                         ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp22 = icmp ult i32 %1, 6
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.34) #10
  tail call void @consume_skb(ptr noundef nonnull %skb) #10
  br label %return

if.end24:                                         ; preds = %if.end21
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call fastcc void @trace_ath6kl_wmi_event(ptr noundef %3, i32 noundef %1)
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  %info1.i = getelementptr inbounds %struct.wmi_cmd_hdr, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %info1.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %info1.i, align 1
  %call.i = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 6) #10
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %conv4.i = zext i16 %8 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.42, i32 noundef %conv4.i, i32 noundef %14) #10
  tail call void @ath6kl_dbg_dump(i32 noundef 524288, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef %12, i32 noundef %14) #10
  %15 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.282)
  switch i16 %8, label %sw.default.i [
    i16 -4095, label %sw.bb.i
    i16 14, label %sw.bb7.i
    i16 28, label %sw.bb9.i
    i16 4097, label %sw.bb11.i
    i16 4123, label %sw.bb13.i
    i16 4102, label %sw.bb15.i
    i16 4103, label %sw.bb16.i
    i16 4101, label %sw.bb18.i
    i16 4108, label %sw.bb20.i
    i16 4109, label %sw.bb22.i
    i16 4110, label %sw.bb23.i
    i16 4111, label %sw.bb24.i
    i16 4112, label %sw.bb26.i
    i16 4122, label %sw.bb28.i
    i16 4117, label %sw.bb29.i
    i16 4118, label %sw.bb30.i
    i16 53, label %sw.bb32.i
    i16 4116, label %sw.bb34.i
    i16 4114, label %sw.bb35.i
    i16 4115, label %sw.bb37.i
    i16 4119, label %sw.bb38.i
    i16 62, label %sw.bb40.i
    i16 4120, label %sw.bb42.i
    i16 4121, label %sw.bb43.i
    i16 4127, label %sw.bb45.i
    i16 4129, label %sw.bb46.i
    i16 4136, label %sw.bb47.i
    i16 4135, label %sw.bb48.i
    i16 4131, label %sw.bb49.i
    i16 -28661, label %sw.bb51.i
    i16 -28659, label %sw.bb53.i
  ]

sw.bb.i:                                          ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i, label %sw.bb.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i.i

sw.bb.i.ath6kl_wmi_proc_events.exit_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %12, align 1
  %conv.i.i = sext i8 %17 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.75, i32 noundef %conv.i.i) #10
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp3.not.i.i = icmp ne i8 %19, -1
  %20 = and i8 %19, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %20)
  %cmp8.i.i = icmp ugt i8 %20, 28
  %or.cond.i.i = and i1 %cmp3.not.i.i, %cmp8.i.i
  br i1 %or.cond.i.i, label %land.rhs.i.i, label %if.end50.i.i

land.rhs.i.i:                                     ; preds = %if.end.i.i
  %.b57.i.i = load i1, ptr @ath6kl_wmi_bitrate_reply_rx.__already_done, align 1
  br i1 %.b57.i.i, label %land.rhs.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.then17.i.i, !prof !589

land.rhs.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.then17.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ath6kl_wmi_bitrate_reply_rx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1215, i32 noundef 9, ptr noundef null) #10
  br label %ath6kl_wmi_proc_events.exit

if.end50.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %parent_dev.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %21 = ptrtoint ptr %parent_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent_dev.i.i, align 4
  tail call void @ath6kl_wakeup_event(ptr noundef %22) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb7.i:                                         ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.i123.i = icmp ult i32 %14, 4
  br i1 %cmp.i123.i, label %sw.bb7.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i125.i

sw.bb7.i.ath6kl_wmi_proc_events.exit_crit_edge:   ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i125.i:                                    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  %parent_dev.i124.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %23 = ptrtoint ptr %parent_dev.i124.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent_dev.i124.i, align 4
  tail call void @ath6kl_wakeup_event(ptr noundef %24) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb9.i:                                         ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i127.i = icmp eq i32 %14, 0
  br i1 %cmp.i127.i, label %sw.bb9.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i129.i

sw.bb9.i.ath6kl_wmi_proc_events.exit_crit_edge:   ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i129.i:                                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  %parent_dev.i128.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %25 = ptrtoint ptr %parent_dev.i128.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent_dev.i128.i, align 4
  %27 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %12, align 1
  tail call void @ath6kl_txpwr_rx_evt(ptr noundef %26, i8 noundef zeroext %28) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb11.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %14)
  %cmp.i131.i = icmp ult i32 %14, 15
  br i1 %cmp.i131.i, label %sw.bb11.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i134.i

sw.bb11.i.ath6kl_wmi_proc_events.exit_crit_edge:  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i134.i:                                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #12
  %parent_dev.i132.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %29 = ptrtoint ptr %parent_dev.i132.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent_dev.i132.i, align 4
  %mac_addr.i.i = getelementptr inbounds %struct.wmi_ready_event_2, ptr %12, i32 0, i32 2
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %12, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  %abi_version.i.i = getelementptr inbounds %struct.wmi_ready_event_2, ptr %12, i32 0, i32 1
  %34 = ptrtoint ptr %abi_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %abi_version.i.i, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  %phy_cap.i.i = getelementptr inbounds %struct.wmi_ready_event_2, ptr %12, i32 0, i32 3
  %37 = ptrtoint ptr %phy_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %phy_cap.i.i, align 1
  %conv.i133.i = zext i8 %38 to i32
  tail call void @ath6kl_ready_event(ptr noundef %30, ptr noundef %mac_addr.i.i, i32 noundef %33, i32 noundef %36, i32 noundef %conv.i133.i) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb13.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp.i136.i = icmp ult i32 %14, 7
  br i1 %cmp.i136.i, label %sw.bb13.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i137.i

sw.bb13.i.ath6kl_wmi_proc_events.exit_crit_edge:  ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i137.i:                                    ; preds = %sw.bb13.i
  %39 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %12, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.283)
  switch i8 %40, label %if.end.i137.i.ath6kl_wmi_proc_events.exit_crit_edge [
    i8 0, label %if.end.i137.i.cleanup.sink.split.i.i_crit_edge
    i8 1, label %if.then8.i.i
  ]

if.end.i137.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.end.i137.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

if.end.i137.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end.i137.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.then8.i.i:                                     ; preds = %if.end.i137.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then8.i.i, %if.end.i137.i.cleanup.sink.split.i.i_crit_edge
  %.str.76.sink.i.i = phi ptr [ @.str.77, %if.then8.i.i ], [ @.str.76, %if.end.i137.i.cleanup.sink.split.i.i_crit_edge ]
  %peer_mac_addr.i.i = getelementptr inbounds %struct.wmi_peer_node_event, ptr %12, i32 0, i32 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull %.str.76.sink.i.i, ptr noundef %peer_mac_addr.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb15.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.49) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %alpha2.i.i) #10
  %42 = getelementptr inbounds [2 x i8], ptr %alpha2.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %12, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %tobool.not.i.i = icmp sgt i32 %45, -1
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb15.i
  %conv.i139.i = trunc i32 %45 to i16
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.09.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 194
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.ath6kl_wmi_regdomain_event.exit.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.cond.i.i.i.ath6kl_wmi_regdomain_event.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_regdomain_event.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i
  %i.09.i.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.09.i.i.i
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %conv.i139.i)
  %cmp3.i.i.i = icmp eq i16 %47, %conv.i139.i
  br i1 %cmp3.i.i.i, label %for.body.i.i.i.if.end16.i.i_crit_edge, label %for.cond.i.i.i

for.body.i.i.i.if.end16.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

if.else.i.i:                                      ; preds = %sw.bb15.i
  %and4.i.i = and i32 %45, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and4.i.i)
  %cmp.i140.i = icmp eq i32 %and4.i.i, 96
  br i1 %cmp.i140.i, label %if.else.i.i.ath6kl_wmi_regdomain_event.exit.i_crit_edge, label %if.then6.i.i

if.else.i.i.ath6kl_wmi_regdomain_event.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_regdomain_event.exit.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  %conv2.i.i = trunc i32 %45 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2.i.i)
  %cmp.i.i.i = icmp eq i16 %conv2.i.i, 0
  br i1 %cmp.i.i.i, label %if.then6.i.i.ath6kl_get_regpair.exit.i.i_crit_edge, label %if.then6.i.i.for.body.i5.i.i_crit_edge

if.then6.i.i.for.body.i5.i.i_crit_edge:           ; preds = %if.then6.i.i
  br label %for.body.i5.i.i

if.then6.i.i.ath6kl_get_regpair.exit.i.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_get_regpair.exit.i.i

for.cond.i3.i.i:                                  ; preds = %for.body.i5.i.i
  %inc.i1.i.i = add nuw nsw i32 %i.015.i.i.i, 1
  %exitcond.not.i2.i.i = icmp eq i32 %inc.i1.i.i, 113
  br i1 %exitcond.not.i2.i.i, label %for.cond.i3.i.i.ath6kl_get_regpair.exit.i.i_crit_edge, label %for.cond.i3.i.i.for.body.i5.i.i_crit_edge

for.cond.i3.i.i.for.body.i5.i.i_crit_edge:        ; preds = %for.cond.i3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i5.i.i

for.cond.i3.i.i.ath6kl_get_regpair.exit.i.i_crit_edge: ; preds = %for.cond.i3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_get_regpair.exit.i.i

for.body.i5.i.i:                                  ; preds = %for.cond.i3.i.i.for.body.i5.i.i_crit_edge, %if.then6.i.i.for.body.i5.i.i_crit_edge
  %i.015.i.i.i = phi i32 [ %inc.i1.i.i, %for.cond.i3.i.i.for.body.i5.i.i_crit_edge ], [ 0, %if.then6.i.i.for.body.i5.i.i_crit_edge ]
  %arrayidx.i4.i.i = getelementptr [113 x %struct.reg_dmn_pair_mapping], ptr @regDomainPairs, i32 0, i32 %i.015.i.i.i
  %48 = ptrtoint ptr %arrayidx.i4.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.i4.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %conv2.i.i)
  %cmp6.i.i.i = icmp eq i16 %49, %conv2.i.i
  br i1 %cmp6.i.i.i, label %for.body.i5.i.i.ath6kl_get_regpair.exit.i.i_crit_edge, label %for.cond.i3.i.i

for.body.i5.i.i.ath6kl_get_regpair.exit.i.i_crit_edge: ; preds = %for.body.i5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_get_regpair.exit.i.i

ath6kl_get_regpair.exit.i.i:                      ; preds = %for.body.i5.i.i.ath6kl_get_regpair.exit.i.i_crit_edge, %for.cond.i3.i.i.ath6kl_get_regpair.exit.i.i_crit_edge, %if.then6.i.i.ath6kl_get_regpair.exit.i.i_crit_edge
  %retval.0.i6.i.i = phi ptr [ null, %if.then6.i.i.ath6kl_get_regpair.exit.i.i_crit_edge ], [ %arrayidx.i4.i.i, %for.body.i5.i.i.ath6kl_get_regpair.exit.i.i_crit_edge ], [ null, %for.cond.i3.i.i.ath6kl_get_regpair.exit.i.i_crit_edge ]
  br label %for.body.i8.i.i

for.body.i8.i.i:                                  ; preds = %for.inc.i.i.i.for.body.i8.i.i_crit_edge, %ath6kl_get_regpair.exit.i.i
  %i.09.i7.i.i = phi i32 [ 0, %ath6kl_get_regpair.exit.i.i ], [ %inc.i10.i.i, %for.inc.i.i.i.for.body.i8.i.i_crit_edge ]
  %regDmnEnum.i.i.i = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.09.i7.i.i, i32 1
  %50 = ptrtoint ptr %regDmnEnum.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %regDmnEnum.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %conv2.i.i)
  %cmp2.i.i.i = icmp eq i16 %51, %conv2.i.i
  br i1 %cmp2.i.i.i, label %if.then.i.i.i, label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i9.i.i = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.09.i7.i.i
  br label %ath6kl_regd_find_country_by_rd.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i8.i.i
  %inc.i10.i.i = add nuw nsw i32 %i.09.i7.i.i, 1
  %exitcond.not.i11.i.i = icmp eq i32 %inc.i10.i.i, 194
  br i1 %exitcond.not.i11.i.i, label %for.inc.i.i.i.ath6kl_regd_find_country_by_rd.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i8.i.i_crit_edge

for.inc.i.i.i.for.body.i8.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i8.i.i

for.inc.i.i.i.ath6kl_regd_find_country_by_rd.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_regd_find_country_by_rd.exit.i.i

ath6kl_regd_find_country_by_rd.exit.i.i:          ; preds = %for.inc.i.i.i.ath6kl_regd_find_country_by_rd.exit.i.i_crit_edge, %if.then.i.i.i
  %retval.0.i12.i.i = phi ptr [ %arrayidx.i9.i.i, %if.then.i.i.i ], [ null, %for.inc.i.i.i.ath6kl_regd_find_country_by_rd.exit.i.i_crit_edge ]
  %tobool11.not.i.i = icmp eq ptr %retval.0.i6.i.i, null
  br i1 %tobool11.not.i.i, label %if.else14.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %ath6kl_regd_find_country_by_rd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %retval.0.i6.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %retval.0.i6.i.i, align 2
  %conv13.i.i = zext i16 %53 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.78, i32 noundef %conv13.i.i) #10
  br label %if.end16.i.i

if.else14.i.i:                                    ; preds = %ath6kl_regd_find_country_by_rd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.79, i32 noundef %45) #10
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.else14.i.i, %if.then12.i.i, %for.body.i.i.i.if.end16.i.i_crit_edge
  %country.0.i.i = phi ptr [ %retval.0.i12.i.i, %if.then12.i.i ], [ %retval.0.i12.i.i, %if.else14.i.i ], [ %arrayidx.i.i.i, %for.body.i.i.i.if.end16.i.i_crit_edge ]
  %tobool17.not.i.i = icmp eq ptr %country.0.i.i, null
  br i1 %tobool17.not.i.i, label %if.end16.i.i.ath6kl_wmi_regdomain_event.exit.i_crit_edge, label %land.lhs.true.i.i

if.end16.i.i.ath6kl_wmi_regdomain_event.exit.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_regdomain_event.exit.i

land.lhs.true.i.i:                                ; preds = %if.end16.i.i
  %parent_dev.i141.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %54 = ptrtoint ptr %parent_dev.i141.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent_dev.i141.i, align 4
  %wiphy_registered.i.i = getelementptr inbounds %struct.ath6kl, ptr %55, i32 0, i32 91
  %56 = ptrtoint ptr %wiphy_registered.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %wiphy_registered.i.i, align 1, !range !588
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool18.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool18.not.i.i, label %land.lhs.true.i.i.ath6kl_wmi_regdomain_event.exit.i_crit_edge, label %if.then20.i.i

land.lhs.true.i.i.ath6kl_wmi_regdomain_event.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_regdomain_event.exit.i

if.then20.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %isoName.i.i = getelementptr inbounds %struct.country_code_to_enum_rd, ptr %country.0.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %isoName.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %isoName.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 1
  %62 = ptrtoint ptr %alpha2.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %alpha2.i.i, align 1
  %arrayidx23.i.i = getelementptr i8, ptr %59, i32 1
  %63 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx23.i.i, align 1
  %65 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %42, align 1
  %wiphy.i.i = getelementptr inbounds %struct.ath6kl, ptr %55, i32 0, i32 1
  %66 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wiphy.i.i, align 4
  %call26.i.i = call i32 @regulatory_hint(ptr noundef %67, ptr noundef nonnull %alpha2.i.i) #10
  %68 = ptrtoint ptr %alpha2.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %alpha2.i.i, align 1
  %conv28.i.i = zext i8 %69 to i32
  %70 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %42, align 1
  %conv30.i.i = zext i8 %71 to i32
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.80, i32 noundef %conv28.i.i, i32 noundef %conv30.i.i) #10
  br label %ath6kl_wmi_regdomain_event.exit.i

ath6kl_wmi_regdomain_event.exit.i:                ; preds = %if.then20.i.i, %land.lhs.true.i.i.ath6kl_wmi_regdomain_event.exit.i_crit_edge, %if.end16.i.i.ath6kl_wmi_regdomain_event.exit.i_crit_edge, %if.else.i.i.ath6kl_wmi_regdomain_event.exit.i_crit_edge, %for.cond.i.i.i.ath6kl_wmi_regdomain_event.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %alpha2.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb16.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.i142.i = icmp ult i32 %14, 4
  br i1 %cmp.i142.i, label %sw.bb16.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i143.i

sw.bb16.i.ath6kl_wmi_proc_events.exit_crit_edge:  ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i143.i:                                    ; preds = %sw.bb16.i
  %traffic_class.i.i = getelementptr inbounds %struct.wmi_pstream_timeout_event, ptr %12, i32 0, i32 3
  %72 = ptrtoint ptr %traffic_class.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %traffic_class.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %73)
  %cmp1.i.i = icmp ugt i8 %73, 3
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.end6.i.i

if.then3.i.i:                                     ; preds = %if.end.i143.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i144.i = zext i8 %73 to i32
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.16, i32 noundef %conv.i144.i) #10
  br label %ath6kl_wmi_proc_events.exit

if.end6.i.i:                                      ; preds = %if.end.i143.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #10
  %74 = ptrtoint ptr %traffic_class.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %traffic_class.i.i, align 1
  %idxprom.i.i = zext i8 %75 to i32
  %arrayidx.i.i = getelementptr [4 x i16], ptr %wmi, i32 0, i32 %idxprom.i.i
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %arrayidx.i.i, align 2
  %77 = load i8, ptr %traffic_class.i.i, align 1
  %conv9.i.i = zext i8 %77 to i32
  %shl.i.i = shl nuw i32 1, %conv9.i.i
  %fat_pipe_exist.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 1
  %78 = ptrtoint ptr %fat_pipe_exist.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %fat_pipe_exist.i.i, align 4
  %80 = trunc i32 %shl.i.i to i8
  %81 = xor i8 %80, -1
  %conv11.i.i = and i8 %79, %81
  store i8 %conv11.i.i, ptr %fat_pipe_exist.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #10
  %parent_dev.i145.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %82 = ptrtoint ptr %parent_dev.i145.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %parent_dev.i145.i, align 4
  %84 = ptrtoint ptr %traffic_class.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %traffic_class.i.i, align 1
  tail call void @ath6kl_indicate_tx_activity(ptr noundef %83, i8 noundef zeroext %85, i1 noundef zeroext false) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb18.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.51) #10
  %err_code.i.i = getelementptr inbounds %struct.wmi_cmd_error_event, ptr %12, i32 0, i32 1
  %86 = ptrtoint ptr %err_code.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %err_code.i.i, align 1
  %switch.tableidx = add i8 %87, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %88 = icmp ult i8 %switch.tableidx, 3
  br i1 %88, label %switch.lookup, label %sw.bb18.i.ath6kl_wmi_error_event_rx.exit.i_crit_edge

sw.bb18.i.ath6kl_wmi_error_event_rx.exit.i_crit_edge: ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_error_event_rx.exit.i

switch.lookup:                                    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #12
  %89 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ath6kl_wmi_control_rx, i32 0, i32 %89
  %90 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %90)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ath6kl_wmi_error_event_rx.exit.i

ath6kl_wmi_error_event_rx.exit.i:                 ; preds = %switch.lookup, %sw.bb18.i.ath6kl_wmi_error_event_rx.exit.i_crit_edge
  %type.0.i.i = phi ptr [ @.str.213, %sw.bb18.i.ath6kl_wmi_error_event_rx.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %91 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %12, align 1
  %conv3.i.i = zext i16 %92 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.217, i32 noundef %conv3.i.i, ptr noundef nonnull %type.0.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb20.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i147.i = icmp ult i32 %14, 3
  br i1 %cmp.i147.i, label %sw.bb20.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i150.i

sw.bb20.i.ath6kl_wmi_proc_events.exit_crit_edge:  ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i150.i:                                    ; preds = %sw.bb20.i
  %range.i.i = getelementptr inbounds %struct.wmi_rssi_threshold_event, ptr %12, i32 0, i32 1
  %93 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %range.i.i, align 1
  %95 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %12, align 1
  %97 = tail call i16 @llvm.bswap.i16(i16 %96) #10
  %arrayidx.i148.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i149.i = icmp eq i8 %94, 0
  br i1 %tobool.not.i149.i, label %if.else98.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i150.i
  %98 = ptrtoint ptr %arrayidx.i148.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx.i148.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %97, i16 %99)
  %cmp6.i.i = icmp slt i16 %97, %99
  br i1 %cmp6.i.i, label %if.then8.i152.i, label %if.then2.i.i.if.end199.i.i_crit_edge

if.then2.i.i.if.end199.i.i_crit_edge:             ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199.i.i

if.then8.i152.i:                                  ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv3.i151.i = sext i16 %97 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.218, i32 noundef %conv3.i151.i) #10
  br label %if.end199.i.i

if.else98.i.i:                                    ; preds = %if.end.i150.i
  %lower_threshold.i.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 1, i32 1
  %100 = ptrtoint ptr %lower_threshold.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %lower_threshold.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %97, i16 %101)
  %cmp102.i.i = icmp sgt i16 %97, %101
  br i1 %cmp102.i.i, label %if.then104.i.i, label %if.else98.i.i.if.end199.i.i_crit_edge

if.else98.i.i.if.end199.i.i_crit_edge:            ; preds = %if.else98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199.i.i

if.then104.i.i:                                   ; preds = %if.else98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv101.i.i = sext i16 %101 to i32
  %conv99.i.i = sext i16 %97 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.219, i32 noundef %conv99.i.i, i32 noundef %conv101.i.i) #10
  br label %if.end199.i.i

if.end199.i.i:                                    ; preds = %if.then104.i.i, %if.else98.i.i.if.end199.i.i_crit_edge, %if.then8.i152.i, %if.then2.i.i.if.end199.i.i_crit_edge
  %lower_threshold_valid_count.i.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 1, i32 3
  %102 = ptrtoint ptr %lower_threshold_valid_count.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %lower_threshold_valid_count.i.i, align 4
  %sub.i.i.i = add i32 %103, -1
  %arrayidx.i.i153.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 1, i32 1, i32 %sub.i.i.i
  %104 = ptrtoint ptr %arrayidx.i.i153.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx.i.i153.i, align 2
  %conv.i.i.i = trunc i16 %105 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp17.not.i.i.i = icmp eq i32 %103, 0
  br i1 %cmp17.not.i.i.i, label %if.end199.i.i.ath6kl_wmi_get_lower_threshold.exit.i.i_crit_edge, label %if.end199.i.i.for.body.i.i158.i_crit_edge

if.end199.i.i.for.body.i.i158.i_crit_edge:        ; preds = %if.end199.i.i
  br label %for.body.i.i158.i

if.end199.i.i.ath6kl_wmi_get_lower_threshold.exit.i.i_crit_edge: ; preds = %if.end199.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_get_lower_threshold.exit.i.i

for.cond.i.i156.i:                                ; preds = %for.body.i.i158.i
  %inc.i.i154.i = add nuw i32 %index.018.i.i.i, 1
  %exitcond.not.i.i155.i = icmp eq i32 %inc.i.i154.i, %103
  br i1 %exitcond.not.i.i155.i, label %for.cond.i.i156.i.ath6kl_wmi_get_lower_threshold.exit.i.i_crit_edge, label %for.cond.i.i156.i.for.body.i.i158.i_crit_edge

for.cond.i.i156.i.for.body.i.i158.i_crit_edge:    ; preds = %for.cond.i.i156.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i158.i

for.cond.i.i156.i.ath6kl_wmi_get_lower_threshold.exit.i.i_crit_edge: ; preds = %for.cond.i.i156.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_get_lower_threshold.exit.i.i

for.body.i.i158.i:                                ; preds = %for.cond.i.i156.i.for.body.i.i158.i_crit_edge, %if.end199.i.i.for.body.i.i158.i_crit_edge
  %index.018.i.i.i = phi i32 [ %inc.i.i154.i, %for.cond.i.i156.i.for.body.i.i158.i_crit_edge ], [ 0, %if.end199.i.i.for.body.i.i158.i_crit_edge ]
  %arrayidx4.i.i.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 1, i32 1, i32 %index.018.i.i.i
  %106 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx4.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %107, i16 %97)
  %cmp6.i.i157.i = icmp slt i16 %107, %97
  br i1 %cmp6.i.i157.i, label %if.then.i.i159.i, label %for.cond.i.i156.i

if.then.i.i159.i:                                 ; preds = %for.body.i.i158.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv10.i.i.i = trunc i16 %107 to i8
  br label %ath6kl_wmi_get_lower_threshold.exit.i.i

ath6kl_wmi_get_lower_threshold.exit.i.i:          ; preds = %if.then.i.i159.i, %for.cond.i.i156.i.ath6kl_wmi_get_lower_threshold.exit.i.i_crit_edge, %if.end199.i.i.ath6kl_wmi_get_lower_threshold.exit.i.i_crit_edge
  %threshold.0.i.i.i = phi i8 [ %conv10.i.i.i, %if.then.i.i159.i ], [ %conv.i.i.i, %if.end199.i.i.ath6kl_wmi_get_lower_threshold.exit.i.i_crit_edge ], [ %conv.i.i.i, %for.cond.i.i156.i.ath6kl_wmi_get_lower_threshold.exit.i.i_crit_edge ]
  %upper_threshold_valid_count.i.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 1, i32 2
  %108 = ptrtoint ptr %upper_threshold_valid_count.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %upper_threshold_valid_count.i.i, align 4
  %sub.i278.i.i = add i32 %109, -1
  %arrayidx.i279.i.i = getelementptr [6 x i16], ptr %arrayidx.i148.i, i32 0, i32 %sub.i278.i.i
  %110 = ptrtoint ptr %arrayidx.i279.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx.i279.i.i, align 2
  %conv.i280.i.i = trunc i16 %111 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp17.not.i281.i.i = icmp eq i32 %109, 0
  br i1 %cmp17.not.i281.i.i, label %ath6kl_wmi_get_lower_threshold.exit.i.i.ath6kl_wmi_get_upper_threshold.exit.i.i_crit_edge, label %ath6kl_wmi_get_lower_threshold.exit.i.i.for.body.i288.i.i_crit_edge

ath6kl_wmi_get_lower_threshold.exit.i.i.for.body.i288.i.i_crit_edge: ; preds = %ath6kl_wmi_get_lower_threshold.exit.i.i
  br label %for.body.i288.i.i

ath6kl_wmi_get_lower_threshold.exit.i.i.ath6kl_wmi_get_upper_threshold.exit.i.i_crit_edge: ; preds = %ath6kl_wmi_get_lower_threshold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_get_upper_threshold.exit.i.i

for.cond.i284.i.i:                                ; preds = %for.body.i288.i.i
  %inc.i282.i.i = add nuw i32 %index.018.i285.i.i, 1
  %exitcond.not.i283.i.i = icmp eq i32 %inc.i282.i.i, %109
  br i1 %exitcond.not.i283.i.i, label %for.cond.i284.i.i.ath6kl_wmi_get_upper_threshold.exit.i.i_crit_edge, label %for.cond.i284.i.i.for.body.i288.i.i_crit_edge

for.cond.i284.i.i.for.body.i288.i.i_crit_edge:    ; preds = %for.cond.i284.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i288.i.i

for.cond.i284.i.i.ath6kl_wmi_get_upper_threshold.exit.i.i_crit_edge: ; preds = %for.cond.i284.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_get_upper_threshold.exit.i.i

for.body.i288.i.i:                                ; preds = %for.cond.i284.i.i.for.body.i288.i.i_crit_edge, %ath6kl_wmi_get_lower_threshold.exit.i.i.for.body.i288.i.i_crit_edge
  %index.018.i285.i.i = phi i32 [ %inc.i282.i.i, %for.cond.i284.i.i.for.body.i288.i.i_crit_edge ], [ 0, %ath6kl_wmi_get_lower_threshold.exit.i.i.for.body.i288.i.i_crit_edge ]
  %arrayidx4.i286.i.i = getelementptr [6 x i16], ptr %arrayidx.i148.i, i32 0, i32 %index.018.i285.i.i
  %112 = ptrtoint ptr %arrayidx4.i286.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx4.i286.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %113, i16 %97)
  %cmp6.i287.i.i = icmp sgt i16 %113, %97
  br i1 %cmp6.i287.i.i, label %if.then.i290.i.i, label %for.cond.i284.i.i

if.then.i290.i.i:                                 ; preds = %for.body.i288.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv10.i289.i.i = trunc i16 %113 to i8
  br label %ath6kl_wmi_get_upper_threshold.exit.i.i

ath6kl_wmi_get_upper_threshold.exit.i.i:          ; preds = %if.then.i290.i.i, %for.cond.i284.i.i.ath6kl_wmi_get_upper_threshold.exit.i.i_crit_edge, %ath6kl_wmi_get_lower_threshold.exit.i.i.ath6kl_wmi_get_upper_threshold.exit.i.i_crit_edge
  %threshold.0.i291.i.i = phi i8 [ %conv10.i289.i.i, %if.then.i290.i.i ], [ %conv.i280.i.i, %ath6kl_wmi_get_lower_threshold.exit.i.i.ath6kl_wmi_get_upper_threshold.exit.i.i_crit_edge ], [ %conv.i280.i.i, %for.cond.i284.i.i.ath6kl_wmi_get_upper_threshold.exit.i.i_crit_edge ]
  %weight.i.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 1, i32 5
  %114 = ptrtoint ptr %weight.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %weight.i.i, align 4
  %polling_interval.i.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 1, i32 4
  %116 = ptrtoint ptr %polling_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %polling_interval.i.i, align 4
  %call.i.i.i.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 32) #10
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %ath6kl_wmi_get_upper_threshold.exit.i.i.if.then209.i.i_crit_edge, label %ath6kl_wmi_send_rssi_threshold_params.exit.i.i

ath6kl_wmi_get_upper_threshold.exit.i.i.if.then209.i.i_crit_edge: ; preds = %ath6kl_wmi_get_upper_threshold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then209.i.i

ath6kl_wmi_send_rssi_threshold_params.exit.i.i:   ; preds = %ath6kl_wmi_get_upper_threshold.exit.i.i
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #10
  %conv204.i.i = zext i8 %threshold.0.i.i.i to i16
  %119 = shl nuw i16 %conv204.i.i, 8
  %conv202.i.i = zext i8 %threshold.0.i291.i.i to i16
  %120 = shl nuw i16 %conv202.i.i, 8
  %call1.i.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 32) #10
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %121 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data.i.i.i.i, align 4
  %123 = call ptr @memset(ptr %122, i32 0, i32 32)
  %124 = load ptr, ptr %data.i.i.i.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %118, ptr %124, align 1
  %cmd.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %124, i32 4
  %126 = ptrtoint ptr %cmd.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 %120, ptr %cmd.sroa.5.0..sroa_idx.i.i, align 1
  %cmd.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %124, i32 6
  %cmd.sroa.12.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %124, i32 16
  %127 = call ptr @memset(ptr %cmd.sroa.7.0..sroa_idx.i.i, i32 255, i32 10)
  %128 = ptrtoint ptr %cmd.sroa.12.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 2)
  store i16 %119, ptr %cmd.sroa.12.0..sroa_idx.i.i, align 1
  %cmd.sroa.14.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %124, i32 18
  %cmd.sroa.19.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %124, i32 28
  %129 = call ptr @memset(ptr %cmd.sroa.14.0..sroa_idx.i.i, i32 255, i32 10)
  %130 = ptrtoint ptr %cmd.sroa.19.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %115, ptr %cmd.sroa.19.0..sroa_idx.i.i, align 1
  %cmd.sroa.21.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %124, i32 29
  %131 = ptrtoint ptr %cmd.sroa.21.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -1, ptr %cmd.sroa.21.0..sroa_idx.i.i, align 1
  %cmd.sroa.22.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %124, i32 30
  %132 = ptrtoint ptr %cmd.sroa.22.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -1, ptr %cmd.sroa.22.0..sroa_idx.i.i, align 1
  %cmd.sroa.23.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %124, i32 31
  %133 = ptrtoint ptr %cmd.sroa.23.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -1, ptr %cmd.sroa.23.0..sroa_idx.i.i, align 1
  %call1.i.i.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext 0, ptr noundef nonnull %call.i.i.i.i, i32 noundef 33, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool208.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool208.not.i.i, label %ath6kl_wmi_send_rssi_threshold_params.exit.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %ath6kl_wmi_send_rssi_threshold_params.exit.i.i.if.then209.i.i_crit_edge

ath6kl_wmi_send_rssi_threshold_params.exit.i.i.if.then209.i.i_crit_edge: ; preds = %ath6kl_wmi_send_rssi_threshold_params.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then209.i.i

ath6kl_wmi_send_rssi_threshold_params.exit.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %ath6kl_wmi_send_rssi_threshold_params.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.then209.i.i:                                   ; preds = %ath6kl_wmi_send_rssi_threshold_params.exit.i.i.if.then209.i.i_crit_edge, %ath6kl_wmi_get_upper_threshold.exit.i.i.if.then209.i.i_crit_edge
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.220) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb22.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.53) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb23.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.54) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb24.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.55) #10
  %parent_dev.i161.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %134 = ptrtoint ptr %parent_dev.i161.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %parent_dev.i161.i, align 4
  %call.i.i = tail call i32 @ath6kl_debug_roam_tbl_event(ptr noundef %135, ptr noundef %12, i32 noundef %14) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb26.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.56) #10
  %136 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %137)
  %cmp.i162.i = icmp ult i32 %137, 4
  br i1 %cmp.i162.i, label %if.then.i163.i, label %if.end.i165.i

if.then.i163.i:                                   ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.34) #10
  br label %ath6kl_wmi_proc_events.exit

if.end.i165.i:                                    ; preds = %sw.bb26.i
  %138 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %139, align 1
  %call.i164.i = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 4) #10
  %142 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data, align 4
  %144 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %len, align 4
  %146 = and i32 %141, -65536
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #10
  %trunc.i.i = trunc i32 %147 to i16
  %148 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.284)
  switch i16 %trunc.i.i, label %sw.default.i.i [
    i16 12295, label %sw.bb.i167.i
    i16 12296, label %sw.bb5.i.i
  ]

sw.bb.i167.i:                                     ; preds = %if.end.i165.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.221) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %145)
  %cmp.i.i166.i = icmp ult i32 %145, 8
  br i1 %cmp.i.i166.i, label %sw.bb.i167.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i.i.i

sw.bb.i167.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb.i167.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i.i.i:                                     ; preds = %sw.bb.i167.i
  call void @__sanitizer_cov_trace_pc() #12
  %parent_dev.i.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %149 = ptrtoint ptr %parent_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %parent_dev.i.i.i, align 4
  %151 = ptrtoint ptr %143 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %143, align 1
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #10
  tail call void @ath6kl_recovery_hb_event(ptr noundef %150, i32 noundef %153) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb5.i.i:                                       ; preds = %if.end.i165.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.222, i32 noundef %145) #10
  %parent_dev.i168.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %154 = ptrtoint ptr %parent_dev.i168.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %parent_dev.i168.i, align 4
  tail call void @ath6kl_debug_fwlog_event(ptr noundef %155, ptr noundef %143, i32 noundef %145) #10
  br label %ath6kl_wmi_proc_events.exit

sw.default.i.i:                                   ; preds = %if.end.i165.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.223, i32 noundef %147) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb28.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.57) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb29.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.58) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb30.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.59) #10
  %parent_dev.i170.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %156 = ptrtoint ptr %parent_dev.i170.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %parent_dev.i170.i, align 4
  tail call void @ath6kl_tm_rx_event(ptr noundef %157, ptr noundef %12, i32 noundef %14) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb32.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.i171.i = icmp ult i32 %14, 4
  br i1 %cmp.i171.i, label %sw.bb32.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i173.i

sw.bb32.i.ath6kl_wmi_proc_events.exit_crit_edge:  ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i173.i:                                    ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #12
  %parent_dev.i172.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %158 = ptrtoint ptr %parent_dev.i172.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %parent_dev.i172.i, align 4
  tail call void @ath6kl_wakeup_event(ptr noundef %159) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb34.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.61) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb35.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.62) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i175.i = icmp ult i32 %14, 2
  br i1 %cmp.i175.i, label %sw.bb35.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i178.i

sw.bb35.i.ath6kl_wmi_proc_events.exit_crit_edge:  ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i178.i:                                    ; preds = %sw.bb35.i
  %160 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %12, align 1
  %snr1.i.i = getelementptr inbounds %struct.wmi_snr_threshold_event, ptr %12, i32 0, i32 1
  %162 = ptrtoint ptr %snr1.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %snr1.i.i, align 1
  %conv2.i176.i = zext i8 %163 to i16
  %sq_threshld.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i177.i = icmp eq i8 %161, 0
  %164 = zext i8 %163 to i32
  br i1 %tobool.not.i177.i, label %if.else67.i.i, label %if.then3.i179.i

if.then3.i179.i:                                  ; preds = %if.end.i178.i
  %165 = ptrtoint ptr %sq_threshld.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %sq_threshld.i.i, align 4
  %conv6.i.i = sext i16 %166 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %conv6.i.i)
  %cmp7.i.i = icmp slt i32 %164, %conv6.i.i
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else.i180.i

if.then9.i.i:                                     ; preds = %if.then3.i179.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.224, i32 noundef %164) #10
  br label %if.end135.i.i

if.else.i180.i:                                   ; preds = %if.then3.i179.i
  %arrayidx13.i.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 0, i32 0, i32 1
  %167 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %arrayidx13.i.i, align 2
  %conv14.i.i = sext i16 %168 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %conv14.i.i)
  %cmp15.not.i.i = icmp slt i32 %164, %conv14.i.i
  br i1 %cmp15.not.i.i, label %if.else.i180.i.if.end135.i.i_crit_edge, label %if.else24.i.i

if.else.i180.i.if.end135.i.i_crit_edge:           ; preds = %if.else.i180.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135.i.i

if.else24.i.i:                                    ; preds = %if.else.i180.i
  %arrayidx27.i.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 0, i32 0, i32 2
  %169 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %arrayidx27.i.i, align 4
  %conv28.i181.i = sext i16 %170 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %conv28.i181.i)
  %cmp29.i.i = icmp slt i32 %164, %conv28.i181.i
  br i1 %cmp29.i.i, label %if.else24.i.i.if.end135.i.i_crit_edge, label %if.else39.i.i

if.else24.i.i.if.end135.i.i_crit_edge:            ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135.i.i

if.else39.i.i:                                    ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx42.i.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 0, i32 0, i32 3
  %171 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %arrayidx42.i.i, align 2
  %conv43.i.i = sext i16 %172 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %conv43.i.i)
  %cmp44.i.i = icmp slt i32 %164, %conv43.i.i
  %spec.select.i.i = select i1 %cmp44.i.i, i8 5, i8 7
  br label %if.end135.i.i

if.else67.i.i:                                    ; preds = %if.end.i178.i
  %lower_threshold.i182.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 6, i32 0, i32 1
  %173 = ptrtoint ptr %lower_threshold.i182.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %lower_threshold.i182.i, align 4
  %conv70.i.i = sext i16 %174 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %conv70.i.i)
  %cmp71.i.i = icmp sgt i32 %164, %conv70.i.i
  br i1 %cmp71.i.i, label %if.then73.i.i, label %if.else77.i.i

if.then73.i.i:                                    ; preds = %if.else67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.225, i32 noundef %conv70.i.i) #10
  br label %if.end135.i.i

if.else77.i.i:                                    ; preds = %if.else67.i.i
  %arrayidx80.i.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 0, i32 1, i32 1
  %175 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %arrayidx80.i.i, align 2
  %conv81.i.i = sext i16 %176 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %conv81.i.i)
  %cmp82.not.i.i = icmp sgt i32 %164, %conv81.i.i
  br i1 %cmp82.not.i.i, label %if.else77.i.i.if.end135.i.i_crit_edge, label %if.else92.i.i

if.else77.i.i.if.end135.i.i_crit_edge:            ; preds = %if.else77.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135.i.i

if.else92.i.i:                                    ; preds = %if.else77.i.i
  %arrayidx95.i.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 0, i32 1, i32 2
  %177 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %arrayidx95.i.i, align 4
  %conv96.i.i = sext i16 %178 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %conv96.i.i)
  %cmp97.i.i = icmp sgt i32 %164, %conv96.i.i
  br i1 %cmp97.i.i, label %if.else92.i.i.if.end135.i.i_crit_edge, label %if.else107.i.i

if.else92.i.i.if.end135.i.i_crit_edge:            ; preds = %if.else92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135.i.i

if.else107.i.i:                                   ; preds = %if.else92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx110.i.i = getelementptr %struct.wmi, ptr %wmi, i32 0, i32 6, i32 0, i32 1, i32 3
  %179 = ptrtoint ptr %arrayidx110.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %arrayidx110.i.i, align 2
  %conv111.i.i = sext i16 %180 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %conv111.i.i)
  %cmp112.i.i = icmp sgt i32 %164, %conv111.i.i
  %spec.select216.i.i = select i1 %cmp112.i.i, i8 4, i8 2
  br label %if.end135.i.i

if.end135.i.i:                                    ; preds = %if.else107.i.i, %if.else92.i.i.if.end135.i.i_crit_edge, %if.else77.i.i.if.end135.i.i_crit_edge, %if.then73.i.i, %if.else39.i.i, %if.else24.i.i.if.end135.i.i_crit_edge, %if.else.i180.i.if.end135.i.i_crit_edge, %if.then9.i.i
  %new_threshold.0.shrunk.i.i = phi i8 [ %161, %if.then9.i.i ], [ 0, %if.then73.i.i ], [ 1, %if.else.i180.i.if.end135.i.i_crit_edge ], [ 8, %if.else77.i.i.if.end135.i.i_crit_edge ], [ %spec.select.i.i, %if.else39.i.i ], [ %spec.select216.i.i, %if.else107.i.i ], [ 3, %if.else24.i.i.if.end135.i.i_crit_edge ], [ 6, %if.else92.i.i.if.end135.i.i_crit_edge ]
  %new_threshold.0.i.i = zext i8 %new_threshold.0.shrunk.i.i to i32
  %lower_threshold_valid_count.i183.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 6, i32 0, i32 3
  %181 = ptrtoint ptr %lower_threshold_valid_count.i183.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %lower_threshold_valid_count.i183.i, align 4
  %sub.i.i184.i = add i32 %182, -1
  %arrayidx.i.i185.i = getelementptr %struct.sq_threshold_params, ptr %sq_threshld.i.i, i32 0, i32 1, i32 %sub.i.i184.i
  %183 = ptrtoint ptr %arrayidx.i.i185.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %arrayidx.i.i185.i, align 2
  %conv.i.i186.i = trunc i16 %184 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp17.not.i.i187.i = icmp eq i32 %182, 0
  br i1 %cmp17.not.i.i187.i, label %if.end135.i.i.ath6kl_wmi_get_lower_threshold.exit.i199.i_crit_edge, label %if.end135.i.i.for.body.i.i194.i_crit_edge

if.end135.i.i.for.body.i.i194.i_crit_edge:        ; preds = %if.end135.i.i
  br label %for.body.i.i194.i

if.end135.i.i.ath6kl_wmi_get_lower_threshold.exit.i199.i_crit_edge: ; preds = %if.end135.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_get_lower_threshold.exit.i199.i

for.cond.i.i190.i:                                ; preds = %for.body.i.i194.i
  %inc.i.i188.i = add nuw i32 %index.018.i.i191.i, 1
  %exitcond.not.i.i189.i = icmp eq i32 %inc.i.i188.i, %182
  br i1 %exitcond.not.i.i189.i, label %for.cond.i.i190.i.ath6kl_wmi_get_lower_threshold.exit.i199.i_crit_edge, label %for.cond.i.i190.i.for.body.i.i194.i_crit_edge

for.cond.i.i190.i.for.body.i.i194.i_crit_edge:    ; preds = %for.cond.i.i190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i194.i

for.cond.i.i190.i.ath6kl_wmi_get_lower_threshold.exit.i199.i_crit_edge: ; preds = %for.cond.i.i190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_get_lower_threshold.exit.i199.i

for.body.i.i194.i:                                ; preds = %for.cond.i.i190.i.for.body.i.i194.i_crit_edge, %if.end135.i.i.for.body.i.i194.i_crit_edge
  %index.018.i.i191.i = phi i32 [ %inc.i.i188.i, %for.cond.i.i190.i.for.body.i.i194.i_crit_edge ], [ 0, %if.end135.i.i.for.body.i.i194.i_crit_edge ]
  %arrayidx4.i.i192.i = getelementptr %struct.sq_threshold_params, ptr %sq_threshld.i.i, i32 0, i32 1, i32 %index.018.i.i191.i
  %185 = ptrtoint ptr %arrayidx4.i.i192.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %arrayidx4.i.i192.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %186, i16 %conv2.i176.i)
  %cmp6.i.i193.i = icmp slt i16 %186, %conv2.i176.i
  br i1 %cmp6.i.i193.i, label %if.then.i.i196.i, label %for.cond.i.i190.i

if.then.i.i196.i:                                 ; preds = %for.body.i.i194.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv10.i.i195.i = trunc i16 %186 to i8
  br label %ath6kl_wmi_get_lower_threshold.exit.i199.i

ath6kl_wmi_get_lower_threshold.exit.i199.i:       ; preds = %if.then.i.i196.i, %for.cond.i.i190.i.ath6kl_wmi_get_lower_threshold.exit.i199.i_crit_edge, %if.end135.i.i.ath6kl_wmi_get_lower_threshold.exit.i199.i_crit_edge
  %threshold.0.i.i197.i = phi i8 [ %conv10.i.i195.i, %if.then.i.i196.i ], [ %conv.i.i186.i, %if.end135.i.i.ath6kl_wmi_get_lower_threshold.exit.i199.i_crit_edge ], [ %conv.i.i186.i, %for.cond.i.i190.i.ath6kl_wmi_get_lower_threshold.exit.i199.i_crit_edge ]
  %upper_threshold_valid_count.i198.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 6, i32 0, i32 2
  %187 = ptrtoint ptr %upper_threshold_valid_count.i198.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %upper_threshold_valid_count.i198.i, align 4
  %sub.i200.i.i = add i32 %188, -1
  %arrayidx.i201.i.i = getelementptr [6 x i16], ptr %sq_threshld.i.i, i32 0, i32 %sub.i200.i.i
  %189 = ptrtoint ptr %arrayidx.i201.i.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %arrayidx.i201.i.i, align 2
  %conv.i202.i.i = trunc i16 %190 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %cmp17.not.i203.i.i = icmp eq i32 %188, 0
  br i1 %cmp17.not.i203.i.i, label %ath6kl_wmi_get_lower_threshold.exit.i199.i.ath6kl_wmi_get_upper_threshold.exit.i204.i_crit_edge, label %ath6kl_wmi_get_lower_threshold.exit.i199.i.for.body.i210.i.i_crit_edge

ath6kl_wmi_get_lower_threshold.exit.i199.i.for.body.i210.i.i_crit_edge: ; preds = %ath6kl_wmi_get_lower_threshold.exit.i199.i
  br label %for.body.i210.i.i

ath6kl_wmi_get_lower_threshold.exit.i199.i.ath6kl_wmi_get_upper_threshold.exit.i204.i_crit_edge: ; preds = %ath6kl_wmi_get_lower_threshold.exit.i199.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_get_upper_threshold.exit.i204.i

for.cond.i206.i.i:                                ; preds = %for.body.i210.i.i
  %inc.i204.i.i = add nuw i32 %index.018.i207.i.i, 1
  %exitcond.not.i205.i.i = icmp eq i32 %inc.i204.i.i, %188
  br i1 %exitcond.not.i205.i.i, label %for.cond.i206.i.i.ath6kl_wmi_get_upper_threshold.exit.i204.i_crit_edge, label %for.cond.i206.i.i.for.body.i210.i.i_crit_edge

for.cond.i206.i.i.for.body.i210.i.i_crit_edge:    ; preds = %for.cond.i206.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i210.i.i

for.cond.i206.i.i.ath6kl_wmi_get_upper_threshold.exit.i204.i_crit_edge: ; preds = %for.cond.i206.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_get_upper_threshold.exit.i204.i

for.body.i210.i.i:                                ; preds = %for.cond.i206.i.i.for.body.i210.i.i_crit_edge, %ath6kl_wmi_get_lower_threshold.exit.i199.i.for.body.i210.i.i_crit_edge
  %index.018.i207.i.i = phi i32 [ %inc.i204.i.i, %for.cond.i206.i.i.for.body.i210.i.i_crit_edge ], [ 0, %ath6kl_wmi_get_lower_threshold.exit.i199.i.for.body.i210.i.i_crit_edge ]
  %arrayidx4.i208.i.i = getelementptr [6 x i16], ptr %sq_threshld.i.i, i32 0, i32 %index.018.i207.i.i
  %191 = ptrtoint ptr %arrayidx4.i208.i.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %arrayidx4.i208.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %192, i16 %conv2.i176.i)
  %cmp6.i209.i.i = icmp sgt i16 %192, %conv2.i176.i
  br i1 %cmp6.i209.i.i, label %if.then.i212.i.i, label %for.cond.i206.i.i

if.then.i212.i.i:                                 ; preds = %for.body.i210.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv10.i211.i.i = trunc i16 %192 to i8
  br label %ath6kl_wmi_get_upper_threshold.exit.i204.i

ath6kl_wmi_get_upper_threshold.exit.i204.i:       ; preds = %if.then.i212.i.i, %for.cond.i206.i.i.ath6kl_wmi_get_upper_threshold.exit.i204.i_crit_edge, %ath6kl_wmi_get_lower_threshold.exit.i199.i.ath6kl_wmi_get_upper_threshold.exit.i204.i_crit_edge
  %threshold.0.i213.i.i = phi i8 [ %conv10.i211.i.i, %if.then.i212.i.i ], [ %conv.i202.i.i, %ath6kl_wmi_get_lower_threshold.exit.i199.i.ath6kl_wmi_get_upper_threshold.exit.i204.i_crit_edge ], [ %conv.i202.i.i, %for.cond.i206.i.i.ath6kl_wmi_get_upper_threshold.exit.i204.i_crit_edge ]
  %weight.i200.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 6, i32 0, i32 5
  %193 = ptrtoint ptr %weight.i200.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %weight.i200.i, align 4
  %polling_interval.i201.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 6, i32 0, i32 4
  %195 = ptrtoint ptr %polling_interval.i201.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %polling_interval.i201.i, align 4
  %conv139.i.i = zext i8 %threshold.0.i.i197.i to i32
  %conv140.i.i = zext i8 %threshold.0.i213.i.i to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.226, i32 noundef %164, i32 noundef %new_threshold.0.i.i, i32 noundef %conv139.i.i, i32 noundef %conv140.i.i) #10
  %call.i.i.i202.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 16) #10
  %tobool.not.i.i.i203.i = icmp eq ptr %call.i.i.i202.i, null
  br i1 %tobool.not.i.i.i203.i, label %ath6kl_wmi_get_upper_threshold.exit.i204.i.if.then143.i.i_crit_edge, label %ath6kl_wmi_send_snr_threshold_params.exit.i.i

ath6kl_wmi_get_upper_threshold.exit.i204.i.if.then143.i.i_crit_edge: ; preds = %ath6kl_wmi_get_upper_threshold.exit.i204.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then143.i.i

ath6kl_wmi_send_snr_threshold_params.exit.i.i:    ; preds = %ath6kl_wmi_get_upper_threshold.exit.i204.i
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #10
  %call1.i.i.i205.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i202.i, i32 noundef 16) #10
  %data.i.i.i206.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i202.i, i32 0, i32 19
  %198 = ptrtoint ptr %data.i.i.i206.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %data.i.i.i206.i, align 4
  %200 = call ptr @memset(ptr %199, i32 0, i32 16)
  %201 = load ptr, ptr %data.i.i.i206.i, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_storeN_noabort(i32 %202, i32 4)
  store i32 %197, ptr %201, align 1
  %cmd.sroa.5.0..sroa_idx.i207.i = getelementptr inbounds i8, ptr %201, i32 4
  %203 = ptrtoint ptr %cmd.sroa.5.0..sroa_idx.i207.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %194, ptr %cmd.sroa.5.0..sroa_idx.i207.i, align 1
  %cmd.sroa.7.0..sroa_idx.i208.i = getelementptr inbounds i8, ptr %201, i32 5
  %204 = ptrtoint ptr %cmd.sroa.7.0..sroa_idx.i208.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %threshold.0.i213.i.i, ptr %cmd.sroa.7.0..sroa_idx.i208.i, align 1
  %cmd.sroa.9.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %201, i32 6
  %205 = ptrtoint ptr %cmd.sroa.9.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 -1, ptr %cmd.sroa.9.0..sroa_idx.i.i, align 1
  %cmd.sroa.10.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %201, i32 7
  %206 = ptrtoint ptr %cmd.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 -1, ptr %cmd.sroa.10.0..sroa_idx.i.i, align 1
  %cmd.sroa.11.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %201, i32 8
  %207 = ptrtoint ptr %cmd.sroa.11.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 -1, ptr %cmd.sroa.11.0..sroa_idx.i.i, align 1
  %cmd.sroa.12.0..sroa_idx.i209.i = getelementptr inbounds i8, ptr %201, i32 9
  %208 = ptrtoint ptr %cmd.sroa.12.0..sroa_idx.i209.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %threshold.0.i.i197.i, ptr %cmd.sroa.12.0..sroa_idx.i209.i, align 1
  %cmd.sroa.14.0..sroa_idx.i210.i = getelementptr inbounds i8, ptr %201, i32 10
  %209 = call ptr @memset(ptr %cmd.sroa.14.0..sroa_idx.i210.i, i32 255, i32 6)
  %call1.i.i211.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %wmi, i8 noundef zeroext 0, ptr noundef nonnull %call.i.i.i202.i, i32 noundef 47, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i211.i)
  %tobool142.not.i.i = icmp eq i32 %call1.i.i211.i, 0
  br i1 %tobool142.not.i.i, label %ath6kl_wmi_send_snr_threshold_params.exit.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %ath6kl_wmi_send_snr_threshold_params.exit.i.i.if.then143.i.i_crit_edge

ath6kl_wmi_send_snr_threshold_params.exit.i.i.if.then143.i.i_crit_edge: ; preds = %ath6kl_wmi_send_snr_threshold_params.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then143.i.i

ath6kl_wmi_send_snr_threshold_params.exit.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %ath6kl_wmi_send_snr_threshold_params.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.then143.i.i:                                   ; preds = %ath6kl_wmi_send_snr_threshold_params.exit.i.i.if.then143.i.i_crit_edge, %ath6kl_wmi_get_upper_threshold.exit.i204.i.if.then143.i.i_crit_edge
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.227) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb37.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.63) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb38.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %14)
  %cmp.i213.i = icmp ult i32 %14, 10
  br i1 %cmp.i213.i, label %sw.bb38.i.ath6kl_wmi_proc_events.exit_crit_edge, label %lor.lhs.false.i.i

sw.bb38.i.ath6kl_wmi_proc_events.exit_crit_edge:  ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

lor.lhs.false.i.i:                                ; preds = %sw.bb38.i
  %210 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %211)
  %cmp1.not.i.i = icmp eq i8 %211, 1
  br i1 %cmp1.not.i.i, label %if.end.i216.i, label %lor.lhs.false.i.i.ath6kl_wmi_proc_events.exit_crit_edge

lor.lhs.false.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i216.i:                                    ; preds = %lor.lhs.false.i.i
  %num_ap.i.i = getelementptr inbounds %struct.wmi_aplist_event, ptr %12, i32 0, i32 1
  %212 = ptrtoint ptr %num_ap.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %num_ap.i.i, align 1
  %conv3.i214.i = zext i8 %213 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.228, i32 noundef %conv3.i214.i) #10
  %214 = ptrtoint ptr %num_ap.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %num_ap.i.i, align 1
  %conv5.i.i = zext i8 %215 to i32
  %sub.i.i = shl nuw nsw i32 %conv5.i.i, 3
  %add.i.i = or i32 %sub.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %14)
  %cmp7.i215.i = icmp sgt i32 %add.i.i, %14
  br i1 %cmp7.i215.i, label %if.end.i216.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end10.i.i

if.end.i216.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end.i216.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end10.i.i:                                     ; preds = %if.end.i216.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %cmp141.not.i.i = icmp eq i8 %215, 0
  br i1 %cmp141.not.i.i, label %if.end10.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %for.body.preheader.i.i

if.end10.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

for.body.preheader.i.i:                           ; preds = %if.end10.i.i
  %ap_list.i.i = getelementptr inbounds %struct.wmi_aplist_event, ptr %12, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %ap_info_v1.02.i.i = phi ptr [ %ap_list.i.i, %for.body.preheader.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %channel.i.i = getelementptr inbounds %struct.wmi_ap_info_v1, ptr %ap_info_v1.02.i.i, i32 0, i32 1
  %216 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 2)
  %217 = load i16, ptr %channel.i.i, align 1
  %conv18.i.i = zext i16 %217 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.229, i32 noundef %indvars.iv.i.i, ptr noundef %ap_info_v1.02.i.i, i32 noundef %conv18.i.i) #10
  %incdec.ptr.i.i = getelementptr %struct.wmi_ap_info_v1, ptr %ap_info_v1.02.i.i, i32 1
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %218 = ptrtoint ptr %num_ap.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %num_ap.i.i, align 1
  %220 = zext i8 %219 to i32
  %cmp14.i.i = icmp ult i32 %indvars.iv.next.i.i, %220
  br i1 %cmp14.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.ath6kl_wmi_proc_events.exit_crit_edge

for.body.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

sw.bb40.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.65) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp.i218.i = icmp ult i32 %14, 5
  br i1 %cmp.i218.i, label %sw.bb40.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i220.i

sw.bb40.i.ath6kl_wmi_proc_events.exit_crit_edge:  ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i220.i:                                    ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #12
  %parent_dev.i219.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %221 = ptrtoint ptr %parent_dev.i219.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %parent_dev.i219.i, align 4
  tail call void @ath6kl_wakeup_event(ptr noundef %222) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb42.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.66) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb43.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %14)
  %cmp.i222.i = icmp ult i32 %14, 26
  br i1 %cmp.i222.i, label %sw.bb43.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i225.i

sw.bb43.i.ath6kl_wmi_proc_events.exit_crit_edge:  ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i225.i:                                    ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #12
  %223 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %223, i32 4)
  %224 = load i32, ptr %12, align 1
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #10
  %mul.i.i = shl i32 %225, 4
  %add.i223.i = or i32 %mul.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i223.i, i32 %14)
  %cmp1.i224.i = icmp ugt i32 %add.i223.i, %14
  %..i.i = select i1 %cmp1.i224.i, i32 -22, i32 0
  br label %ath6kl_wmi_proc_events.exit

sw.bb45.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.68) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb46.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.69) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb47.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.70) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb48.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.71) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb49.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.72) #10
  %226 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %12, align 1
  %conv.i227.i = zext i8 %227 to i32
  %msg_len.i.i = getelementptr inbounds %struct.wmi_tx_complete_event, ptr %12, i32 0, i32 1
  %228 = ptrtoint ptr %msg_len.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %msg_len.i.i, align 1
  %conv1.i.i = zext i8 %229 to i32
  %msg_type.i.i = getelementptr inbounds %struct.wmi_tx_complete_event, ptr %12, i32 0, i32 2
  %230 = ptrtoint ptr %msg_type.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %msg_type.i.i, align 1
  %conv2.i228.i = zext i8 %231 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.230, i32 noundef %conv.i227.i, i32 noundef %conv1.i.i, i32 noundef %conv2.i228.i) #10
  %232 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %cmp2.not.i.i = icmp eq i8 %233, 0
  br i1 %cmp2.not.i.i, label %sw.bb49.i.ath6kl_wmi_proc_events.exit_crit_edge, label %sw.bb49.i.for.body.i233.i_crit_edge

sw.bb49.i.for.body.i233.i_crit_edge:              ; preds = %sw.bb49.i
  br label %for.body.i233.i

sw.bb49.i.ath6kl_wmi_proc_events.exit_crit_edge:  ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

for.body.i233.i:                                  ; preds = %for.body.i233.i.for.body.i233.i_crit_edge, %sw.bb49.i.for.body.i233.i_crit_edge
  %index.03.i.i = phi i32 [ %inc.i.i, %for.body.i233.i.for.body.i233.i_crit_edge ], [ 0, %sw.bb49.i.for.body.i233.i_crit_edge ]
  %234 = shl i32 %index.03.i.i, 2
  %conv6.i229.i = add nuw nsw i32 %234, 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv6.i229.i
  %235 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %add.ptr.i.i, align 1
  %conv8.i.i = zext i8 %236 to i32
  %pkt_id.i.i = getelementptr inbounds %struct.tx_complete_msg_v1, ptr %add.ptr.i.i, i32 0, i32 1
  %237 = ptrtoint ptr %pkt_id.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %pkt_id.i.i, align 1
  %conv9.i230.i = zext i8 %238 to i32
  %rate_idx.i.i = getelementptr inbounds %struct.tx_complete_msg_v1, ptr %add.ptr.i.i, i32 0, i32 2
  %239 = ptrtoint ptr %rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %rate_idx.i.i, align 1
  %conv10.i.i = zext i8 %240 to i32
  %ack_failures.i.i = getelementptr inbounds %struct.tx_complete_msg_v1, ptr %add.ptr.i.i, i32 0, i32 3
  %241 = ptrtoint ptr %ack_failures.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %ack_failures.i.i, align 1
  %conv11.i231.i = zext i8 %242 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.231, i32 noundef %conv8.i.i, i32 noundef %conv9.i230.i, i32 noundef %conv10.i.i, i32 noundef %conv11.i231.i) #10
  %inc.i.i = add nuw nsw i32 %index.03.i.i, 1
  %243 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %12, align 1
  %conv4.i.i = zext i8 %244 to i32
  %cmp.i232.i = icmp ult i32 %inc.i.i, %conv4.i.i
  br i1 %cmp.i232.i, label %for.body.i233.i.for.body.i233.i_crit_edge, label %for.body.i233.i.ath6kl_wmi_proc_events.exit_crit_edge

for.body.i233.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %for.body.i233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

for.body.i233.i.for.body.i233.i_crit_edge:        ; preds = %for.body.i233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i233.i

sw.bb51.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.73) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i234.i = icmp ult i32 %14, 2
  br i1 %cmp.i234.i, label %sw.bb51.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i236.i

sw.bb51.i.ath6kl_wmi_proc_events.exit_crit_edge:  ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i236.i:                                    ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #12
  %245 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %245, i32 2)
  %246 = load i16, ptr %12, align 1
  %247 = tail call i16 @llvm.bswap.i16(i16 %246) #10
  %conv.i235.i = zext i16 %247 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.232, i32 noundef %conv.i235.i) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb53.i:                                        ; preds = %if.end24
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.74) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp.i238.i = icmp ult i32 %14, 6
  br i1 %cmp.i238.i, label %sw.bb53.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i242.i

sw.bb53.i.ath6kl_wmi_proc_events.exit_crit_edge:  ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i242.i:                                    ; preds = %sw.bb53.i
  %248 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %248, i32 4)
  %249 = load i32, ptr %12, align 1
  %250 = tail call i32 @llvm.bswap.i32(i32 %249) #10
  %len1.i239.i = getelementptr inbounds %struct.wmi_p2p_info_event, ptr %12, i32 0, i32 1
  %251 = ptrtoint ptr %len1.i239.i to i32
  call void @__asan_loadN_noabort(i32 %251, i32 2)
  %252 = load i16, ptr %len1.i239.i, align 1
  %253 = tail call i16 @llvm.bswap.i16(i16 %252) #10
  %conv.i240.i = zext i16 %253 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.233, i32 noundef %250, i32 noundef %conv.i240.i) #10
  %and.i.i = and i32 %250, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i241.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i241.i, label %if.end.i242.i.if.end9.i.i_crit_edge, label %if.then2.i243.i

if.end.i242.i.if.end9.i.i_crit_edge:              ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

if.then2.i243.i:                                  ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %252)
  %cmp4.i.i = icmp eq i16 %252, 0
  br i1 %cmp4.i.i, label %if.then2.i243.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end7.i.i

if.then2.i243.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.then2.i243.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end7.i.i:                                      ; preds = %if.then2.i243.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i244.i = getelementptr inbounds %struct.wmi_p2p_info_event, ptr %12, i32 0, i32 2
  %254 = ptrtoint ptr %data.i244.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %data.i244.i, align 1
  %conv8.i245.i = zext i8 %255 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.234, i32 noundef %conv8.i245.i) #10
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end7.i.i, %if.end.i242.i.if.end9.i.i_crit_edge
  %and10.i.i = and i32 %250, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i246.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i246.i, label %if.end9.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.then12.i248.i

if.end9.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.then12.i248.i:                                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %253)
  %cmp14.i247.i = icmp ult i16 %253, 6
  br i1 %cmp14.i247.i, label %if.then12.i248.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end17.i.i

if.then12.i248.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.then12.i248.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end17.i.i:                                     ; preds = %if.then12.i248.i
  %data18.i.i = getelementptr inbounds %struct.wmi_p2p_info_event, ptr %12, i32 0, i32 2
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.235, ptr noundef %data18.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %252)
  %cmp29.i249.i = icmp eq i16 %252, 0
  br i1 %cmp29.i249.i, label %if.end17.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end32.i.i

if.end17.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end32.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %256 = ptrtoint ptr %data18.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %data18.i.i, align 1
  %conv35.i.i = zext i8 %257 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool38.not.i.i = icmp eq i8 %257, 0
  %cond.i.i = select i1 %tobool38.not.i.i, ptr @.str.238, ptr @.str.237
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.236, i32 noundef %conv35.i.i, ptr noundef nonnull %cond.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

sw.default.i:                                     ; preds = %if.end24
  %258 = lshr i16 %10, 8
  %conv55.i = and i16 %258, 15
  %parent_dev.i251.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 2
  %259 = ptrtoint ptr %parent_dev.i251.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %parent_dev.i251.i, align 4
  %conv.i252.i = trunc i16 %conv55.i to i8
  %conv.i.i253.i = zext i16 %conv55.i to i32
  %vif_max.i.i.i = getelementptr inbounds %struct.ath6kl, ptr %260, i32 0, i32 17
  %261 = ptrtoint ptr %vif_max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %vif_max.i.i.i, align 4
  %sub.i.i254.i = add i32 %262, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i254.i, i32 %conv.i.i253.i)
  %cmp.i.i255.i = icmp ult i32 %sub.i.i254.i, %conv.i.i253.i
  br i1 %cmp.i.i255.i, label %ath6kl_get_vif_by_index.exit.thread.i.i, label %if.end22.i.i.i, !prof !587

ath6kl_get_vif_by_index.exit.thread.i.i:          ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef null) #10
  br label %if.then.i260.i

if.end22.i.i.i:                                   ; preds = %sw.default.i
  %list_lock.i.i.i = getelementptr inbounds %struct.ath6kl, ptr %260, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i.i.i) #10
  %vif_list.i.i.i = getelementptr inbounds %struct.ath6kl, ptr %260, i32 0, i32 13
  br label %for.cond.i.i256.i

for.cond.i.i256.i:                                ; preds = %for.body.i.i257.i.for.cond.i.i256.i_crit_edge, %if.end22.i.i.i
  %vif.0.in.i.i.i = phi ptr [ %vif_list.i.i.i, %if.end22.i.i.i ], [ %vif.0.i.i.i, %for.body.i.i257.i.for.cond.i.i256.i_crit_edge ]
  %263 = ptrtoint ptr %vif.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %vif.0.i.i.i = load ptr, ptr %vif.0.in.i.i.i, align 4
  %cmp25.not.i.i.i = icmp eq ptr %vif.0.i.i.i, %vif_list.i.i.i
  br i1 %cmp25.not.i.i.i, label %ath6kl_get_vif_by_index.exit.thread243.i.i, label %for.body.i.i257.i

ath6kl_get_vif_by_index.exit.thread243.i.i:       ; preds = %for.cond.i.i256.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i.i.i) #10
  br label %if.then.i260.i

for.body.i.i257.i:                                ; preds = %for.cond.i.i256.i
  %fw_vif_idx.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 5
  %264 = ptrtoint ptr %fw_vif_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %fw_vif_idx.i.i.i, align 8
  %cmp31.i.i.i = icmp eq i8 %265, %conv.i252.i
  br i1 %cmp31.i.i.i, label %ath6kl_get_vif_by_index.exit.i.i, label %for.body.i.i257.i.for.cond.i.i256.i_crit_edge

for.body.i.i257.i.for.cond.i.i256.i_crit_edge:    ; preds = %for.body.i.i257.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i256.i

ath6kl_get_vif_by_index.exit.i.i:                 ; preds = %for.body.i.i257.i
  %fw_vif_idx.i.i.i.le = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 5
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i.i.i) #10
  %tobool.not.i258.i = icmp eq ptr %vif.0.i.i.i, null
  br i1 %tobool.not.i258.i, label %ath6kl_get_vif_by_index.exit.i.i.if.then.i260.i_crit_edge, label %if.end.i261.i

ath6kl_get_vif_by_index.exit.i.i.if.then.i260.i_crit_edge: ; preds = %ath6kl_get_vif_by_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i260.i

if.then.i260.i:                                   ; preds = %ath6kl_get_vif_by_index.exit.i.i.if.then.i260.i_crit_edge, %ath6kl_get_vif_by_index.exit.thread243.i.i, %ath6kl_get_vif_by_index.exit.thread.i.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.239, i32 noundef %conv.i.i253.i) #10
  br label %ath6kl_wmi_proc_events.exit

if.end.i261.i:                                    ; preds = %ath6kl_get_vif_by_index.exit.i.i
  %266 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %266, ptr @__sancov_gen_cov_switch_values.285)
  switch i16 %8, label %sw.default.i269.i [
    i16 4098, label %sw.bb.i262.i
    i16 4099, label %sw.bb4.i.i
    i16 4105, label %sw.bb6.i.i
    i16 4100, label %sw.bb8.i.i
    i16 4104, label %sw.bb10.i.i
    i16 4106, label %sw.bb12.i.i
    i16 4107, label %sw.bb14.i.i
    i16 4113, label %sw.bb16.i.i
    i16 4124, label %sw.bb18.i.i
    i16 4125, label %sw.bb20.i.i
    i16 4128, label %sw.bb22.i.i
    i16 4130, label %sw.bb24.i.i
    i16 4167, label %sw.bb26.i.i
    i16 -28665, label %sw.bb28.i.i
    i16 -28664, label %sw.bb30.i.i
    i16 -28663, label %sw.bb32.i.i
    i16 -28662, label %sw.bb34.i.i
    i16 -28660, label %sw.bb36.i.i
    i16 -28652, label %sw.bb38.i.i
  ]

sw.bb.i262.i:                                     ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.240) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %14)
  %cmp.i115.i.i = icmp ult i32 %14, 20
  br i1 %cmp.i115.i.i, label %sw.bb.i262.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i.i263.i

sw.bb.i262.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb.i262.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i.i263.i:                                  ; preds = %sw.bb.i262.i
  %nw_type.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 17
  %267 = ptrtoint ptr %nw_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %nw_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %268)
  %cmp1.i.i.i = icmp eq i8 %268, 16
  br i1 %cmp1.i.i.i, label %if.then3.i.i.i, label %if.end44.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i263.i
  %ndev.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 2
  %269 = ptrtoint ptr %ndev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ndev.i.i.i, align 4
  %dev_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %270, i32 0, i32 86
  %271 = ptrtoint ptr %dev_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dev_addr.i.i.i, align 64
  %bssid.i.i.i = getelementptr inbounds %struct.anon.139, ptr %12, i32 0, i32 1
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %272, ptr noundef dereferenceable(6) %bssid.i.i.i, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp4.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp4.i.i.i, label %if.then6.i.i.i, label %if.else.i.i.i

if.then6.i.i.i:                                   ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %273 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %273, i32 2)
  %274 = load i16, ptr %12, align 1
  %275 = tail call i16 @llvm.bswap.i16(i16 %274) #10
  %conv8.i.i.i = zext i16 %275 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.259, ptr noundef nonnull @__func__.ath6kl_wmi_connect_event_rx, i32 noundef %conv8.i.i.i, ptr noundef %bssid.i.i.i) #10
  %276 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %276, i32 2)
  %277 = load i16, ptr %12, align 1
  %278 = tail call i16 @llvm.bswap.i16(i16 %277) #10
  tail call void @ath6kl_connect_ap_mode_bss(ptr noundef nonnull %vif.0.i.i.i, i16 noundef zeroext %278) #10
  br label %ath6kl_wmi_proc_events.exit

if.else.i.i.i:                                    ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %279 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %12, align 1
  %conv15.i.i.i = zext i8 %280 to i32
  %auth.i.i.i = getelementptr inbounds %struct.anon.138, ptr %12, i32 0, i32 3
  %281 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %auth.i.i.i, align 1
  %conv19.i.i.i = zext i8 %282 to i32
  %keymgmt.i.i.i = getelementptr inbounds %struct.anon.138, ptr %12, i32 0, i32 4
  %283 = ptrtoint ptr %keymgmt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %keymgmt.i.i.i, align 1
  %conv21.i.i.i = zext i8 %284 to i32
  %cipher.i.i.i = getelementptr inbounds %struct.anon.138, ptr %12, i32 0, i32 5
  %285 = ptrtoint ptr %cipher.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %285, i32 2)
  %286 = load i16, ptr %cipher.i.i.i, align 1
  %287 = tail call i16 @llvm.bswap.i16(i16 %286) #10
  %conv23.i.i.i = zext i16 %287 to i32
  %apsd_info.i.i.i = getelementptr inbounds %struct.anon.138, ptr %12, i32 0, i32 6
  %288 = ptrtoint ptr %apsd_info.i.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %apsd_info.i.i.i, align 1
  %conv25.i.i.i = zext i8 %289 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.260, ptr noundef nonnull @__func__.ath6kl_wmi_connect_event_rx, i32 noundef %conv15.i.i.i, ptr noundef %bssid.i.i.i, i32 noundef %conv19.i.i.i, i32 noundef %conv21.i.i.i, i32 noundef %conv23.i.i.i, i32 noundef %conv25.i.i.i) #10
  %290 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %12, align 1
  %conv28.i.i.i = zext i8 %291 to i16
  %292 = ptrtoint ptr %keymgmt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %keymgmt.i.i.i, align 1
  %294 = ptrtoint ptr %cipher.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %294, i32 2)
  %295 = load i16, ptr %cipher.i.i.i, align 1
  %296 = lshr i16 %295, 8
  %conv36.i.i.i = trunc i16 %296 to i8
  %297 = ptrtoint ptr %auth.i.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %auth.i.i.i, align 1
  %assoc_req_len.i.i.i = getelementptr inbounds %struct.wmi_connect_event, ptr %12, i32 0, i32 2
  %299 = ptrtoint ptr %assoc_req_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %assoc_req_len.i.i.i, align 1
  %assoc_info.i.i.i = getelementptr inbounds %struct.wmi_connect_event, ptr %12, i32 0, i32 4
  %beacon_ie_len.i.i.i = getelementptr inbounds %struct.wmi_connect_event, ptr %12, i32 0, i32 1
  %301 = ptrtoint ptr %beacon_ie_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %beacon_ie_len.i.i.i, align 1
  %conv40.i.i.i = zext i8 %302 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %assoc_info.i.i.i, i32 %conv40.i.i.i
  %303 = ptrtoint ptr %apsd_info.i.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %apsd_info.i.i.i, align 1
  tail call void @ath6kl_connect_ap_mode_sta(ptr noundef nonnull %vif.0.i.i.i, i16 noundef zeroext %conv28.i.i.i, ptr noundef %bssid.i.i.i, i8 noundef zeroext %293, i8 noundef zeroext %conv36.i.i.i, i8 noundef zeroext %298, i8 noundef zeroext %300, ptr noundef %add.ptr.i.i.i, i8 noundef zeroext %304) #10
  br label %ath6kl_wmi_proc_events.exit

if.end44.i.i.i:                                   ; preds = %if.end.i.i263.i
  %305 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %305, i32 2)
  %306 = load i16, ptr %12, align 1
  %307 = tail call i16 @llvm.bswap.i16(i16 %306) #10
  %conv47.i.i.i = zext i16 %307 to i32
  %bssid49.i.i.i = getelementptr inbounds %struct.anon.137, ptr %12, i32 0, i32 1
  %listen_intvl.i.i.i = getelementptr inbounds %struct.anon.137, ptr %12, i32 0, i32 2
  %308 = ptrtoint ptr %listen_intvl.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %308, i32 2)
  %309 = load i16, ptr %listen_intvl.i.i.i, align 1
  %310 = tail call i16 @llvm.bswap.i16(i16 %309) #10
  %conv52.i.i.i = zext i16 %310 to i32
  %beacon_intvl.i.i.i = getelementptr inbounds %struct.anon.137, ptr %12, i32 0, i32 3
  %311 = ptrtoint ptr %beacon_intvl.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %311, i32 2)
  %312 = load i16, ptr %beacon_intvl.i.i.i, align 1
  %313 = tail call i16 @llvm.bswap.i16(i16 %312) #10
  %conv54.i.i.i = zext i16 %313 to i32
  %nw_type56.i.i.i = getelementptr inbounds %struct.anon.137, ptr %12, i32 0, i32 4
  %314 = ptrtoint ptr %nw_type56.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %314, i32 4)
  %315 = load i32, ptr %nw_type56.i.i.i, align 1
  %316 = tail call i32 @llvm.bswap.i32(i32 %315) #10
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.261, i32 noundef %conv47.i.i.i, ptr noundef %bssid49.i.i.i, i32 noundef %conv52.i.i.i, i32 noundef %conv54.i.i.i, i32 noundef %316) #10
  %assoc_info57.i.i.i = getelementptr inbounds %struct.wmi_connect_event, ptr %12, i32 0, i32 4
  %beacon_ie_len59.i.i.i = getelementptr inbounds %struct.wmi_connect_event, ptr %12, i32 0, i32 1
  %317 = ptrtoint ptr %beacon_ie_len59.i.i.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %beacon_ie_len59.i.i.i, align 1
  %conv60.i.i.i = zext i8 %318 to i32
  %add.ptr61.i.i.i = getelementptr i8, ptr %assoc_info57.i.i.i, i32 %conv60.i.i.i
  %assoc_req_len62.i.i.i = getelementptr inbounds %struct.wmi_connect_event, ptr %12, i32 0, i32 2
  %319 = ptrtoint ptr %assoc_req_len62.i.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %assoc_req_len62.i.i.i, align 1
  %conv63.i.i.i = zext i8 %320 to i32
  %add.ptr64.i.i.i = getelementptr i8, ptr %add.ptr61.i.i.i, i32 %conv63.i.i.i
  %add.ptr65.i.i.i = getelementptr i8, ptr %add.ptr64.i.i.i, i32 6
  %assoc_resp_len.i.i.i = getelementptr inbounds %struct.wmi_connect_event, ptr %12, i32 0, i32 3
  %321 = ptrtoint ptr %assoc_resp_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %assoc_resp_len.i.i.i, align 1
  %conv74.i.i.i = zext i8 %322 to i32
  %add.ptr75.i.i.i = getelementptr i8, ptr %add.ptr64.i.i.i, i32 %conv74.i.i.i
  %cmp76192.i.i.i = icmp ult ptr %add.ptr65.i.i.i, %add.ptr75.i.i.i
  br i1 %cmp76192.i.i.i, label %while.body.lr.ph.i.i.i, label %if.end44.i.i.i.while.end.i.i.i_crit_edge

if.end44.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end44.i.i.i
  %is_wmm_enabled.i.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 7
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end116.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %pie.0193.i.i.i = phi ptr [ %add.ptr65.i.i.i, %while.body.lr.ph.i.i.i ], [ %add.ptr119.i.i.i, %if.end116.i.i.i.while.body.i.i.i_crit_edge ]
  %323 = ptrtoint ptr %pie.0193.i.i.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %pie.0193.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %324)
  %cond.i.i.i = icmp eq i8 %324, -35
  br i1 %cond.i.i.i, label %sw.bb.i.i.i, label %while.body.i.i.i.sw.epilog.i.i.i_crit_edge

while.body.i.i.i.sw.epilog.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i

sw.bb.i.i.i:                                      ; preds = %while.body.i.i.i
  %arrayidx.i.i264.i = getelementptr i8, ptr %pie.0193.i.i.i, i32 1
  %325 = ptrtoint ptr %arrayidx.i.i264.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx.i.i264.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %326)
  %cmp80.i.i.i = icmp ugt i8 %326, 3
  br i1 %cmp80.i.i.i, label %land.lhs.true.i.i.i, label %sw.bb.i.i.i.sw.epilog.i.i.i_crit_edge

sw.bb.i.i.i.sw.epilog.i.i.i_crit_edge:            ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb.i.i.i
  %arrayidx82.i.i.i = getelementptr i8, ptr %pie.0193.i.i.i, i32 2
  %327 = ptrtoint ptr %arrayidx82.i.i.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx82.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %cmp84.i.i.i = icmp eq i8 %328, 0
  br i1 %cmp84.i.i.i, label %land.lhs.true86.i.i.i, label %land.lhs.true.i.i.i.sw.epilog.i.i.i_crit_edge

land.lhs.true.i.i.i.sw.epilog.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i

land.lhs.true86.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %arrayidx87.i.i.i = getelementptr i8, ptr %pie.0193.i.i.i, i32 3
  %329 = ptrtoint ptr %arrayidx87.i.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx87.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %330)
  %cmp89.i.i.i = icmp eq i8 %330, 80
  br i1 %cmp89.i.i.i, label %land.lhs.true91.i.i.i, label %land.lhs.true86.i.i.i.sw.epilog.i.i.i_crit_edge

land.lhs.true86.i.i.i.sw.epilog.i.i.i_crit_edge:  ; preds = %land.lhs.true86.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i

land.lhs.true91.i.i.i:                            ; preds = %land.lhs.true86.i.i.i
  %arrayidx92.i.i.i = getelementptr i8, ptr %pie.0193.i.i.i, i32 4
  %331 = ptrtoint ptr %arrayidx92.i.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx92.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %332)
  %cmp94.i.i.i = icmp eq i8 %332, -14
  br i1 %cmp94.i.i.i, label %land.lhs.true96.i.i.i, label %land.lhs.true91.i.i.i.sw.epilog.i.i.i_crit_edge

land.lhs.true91.i.i.i.sw.epilog.i.i.i_crit_edge:  ; preds = %land.lhs.true91.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i

land.lhs.true96.i.i.i:                            ; preds = %land.lhs.true91.i.i.i
  %arrayidx97.i.i.i = getelementptr i8, ptr %pie.0193.i.i.i, i32 5
  %333 = ptrtoint ptr %arrayidx97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx97.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %334)
  %cmp99.i.i.i = icmp eq i8 %334, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %326)
  %cmp104.i.i.i = icmp ugt i8 %326, 5
  %or.cond.i.i.i = select i1 %cmp99.i.i.i, i1 %cmp104.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %land.lhs.true106.i.i.i, label %land.lhs.true96.i.i.i.sw.epilog.i.i.i_crit_edge

land.lhs.true96.i.i.i.sw.epilog.i.i.i_crit_edge:  ; preds = %land.lhs.true96.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i

land.lhs.true106.i.i.i:                           ; preds = %land.lhs.true96.i.i.i
  %arrayidx107.i.i.i = getelementptr i8, ptr %pie.0193.i.i.i, i32 6
  %335 = ptrtoint ptr %arrayidx107.i.i.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %arrayidx107.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %336)
  %cmp109.i.i.i = icmp eq i8 %336, 1
  br i1 %cmp109.i.i.i, label %sw.epilog.thread.i.i.i, label %land.lhs.true106.i.i.i.sw.epilog.i.i.i_crit_edge

land.lhs.true106.i.i.i.sw.epilog.i.i.i_crit_edge: ; preds = %land.lhs.true106.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i

sw.epilog.thread.i.i.i:                           ; preds = %land.lhs.true106.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %337 = ptrtoint ptr %is_wmm_enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 1, ptr %is_wmm_enabled.i.i.i, align 4
  br label %while.end.i.i.i

sw.epilog.i.i.i:                                  ; preds = %land.lhs.true106.i.i.i.sw.epilog.i.i.i_crit_edge, %land.lhs.true96.i.i.i.sw.epilog.i.i.i_crit_edge, %land.lhs.true91.i.i.i.sw.epilog.i.i.i_crit_edge, %land.lhs.true86.i.i.i.sw.epilog.i.i.i_crit_edge, %land.lhs.true.i.i.i.sw.epilog.i.i.i_crit_edge, %sw.bb.i.i.i.sw.epilog.i.i.i_crit_edge, %while.body.i.i.i.sw.epilog.i.i.i_crit_edge
  %338 = ptrtoint ptr %is_wmm_enabled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %.pr.i.i.i = load i8, ptr %is_wmm_enabled.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i.i)
  %tobool.not.i.i.i = icmp eq i8 %.pr.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end116.i.i.i, label %sw.epilog.i.i.i.while.end.i.i.i_crit_edge

sw.epilog.i.i.i.while.end.i.i.i_crit_edge:        ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

if.end116.i.i.i:                                  ; preds = %sw.epilog.i.i.i
  %arrayidx117.i.i.i = getelementptr i8, ptr %pie.0193.i.i.i, i32 1
  %339 = ptrtoint ptr %arrayidx117.i.i.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %arrayidx117.i.i.i, align 1
  %conv118.i.i.i = zext i8 %340 to i32
  %add.i.i.i = add nuw nsw i32 %conv118.i.i.i, 2
  %add.ptr119.i.i.i = getelementptr i8, ptr %pie.0193.i.i.i, i32 %add.i.i.i
  %cmp76.i.i.i = icmp ult ptr %add.ptr119.i.i.i, %add.ptr75.i.i.i
  br i1 %cmp76.i.i.i, label %if.end116.i.i.i.while.body.i.i.i_crit_edge, label %if.end116.i.i.i.while.end.i.i.i_crit_edge

if.end116.i.i.i.while.end.i.i.i_crit_edge:        ; preds = %if.end116.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

if.end116.i.i.i.while.body.i.i.i_crit_edge:       ; preds = %if.end116.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %if.end116.i.i.i.while.end.i.i.i_crit_edge, %sw.epilog.i.i.i.while.end.i.i.i_crit_edge, %sw.epilog.thread.i.i.i, %if.end44.i.i.i.while.end.i.i.i_crit_edge
  %341 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %341, i32 2)
  %342 = load i16, ptr %12, align 1
  %343 = tail call i16 @llvm.bswap.i16(i16 %342) #10
  %344 = ptrtoint ptr %listen_intvl.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %344, i32 2)
  %345 = load i16, ptr %listen_intvl.i.i.i, align 1
  %346 = tail call i16 @llvm.bswap.i16(i16 %345) #10
  %347 = ptrtoint ptr %beacon_intvl.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %347, i32 2)
  %348 = load i16, ptr %beacon_intvl.i.i.i, align 1
  %349 = tail call i16 @llvm.bswap.i16(i16 %348) #10
  %350 = ptrtoint ptr %nw_type56.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %350, i32 4)
  %351 = load i32, ptr %nw_type56.i.i.i, align 1
  %352 = tail call i32 @llvm.bswap.i32(i32 %351) #10
  %353 = ptrtoint ptr %beacon_ie_len59.i.i.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %beacon_ie_len59.i.i.i, align 1
  %355 = ptrtoint ptr %assoc_req_len62.i.i.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %assoc_req_len62.i.i.i, align 1
  %357 = ptrtoint ptr %assoc_resp_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %assoc_resp_len.i.i.i, align 1
  tail call void @ath6kl_connect_event(ptr noundef nonnull %vif.0.i.i.i, i16 noundef zeroext %343, ptr noundef %bssid49.i.i.i, i16 noundef zeroext %346, i16 noundef zeroext %349, i32 noundef %352, i8 noundef zeroext %354, i8 noundef zeroext %356, i8 noundef zeroext %358, ptr noundef %assoc_info57.i.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb4.i.i:                                       ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.241) #10
  %traffic_class.i.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 8
  %359 = ptrtoint ptr %traffic_class.i.i.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 100, ptr %traffic_class.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %14)
  %cmp.i117.i.i = icmp ult i32 %14, 11
  br i1 %cmp.i117.i.i, label %sw.bb4.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i123.i.i

sw.bb4.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i123.i.i:                                  ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %360 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %360, i32 2)
  %361 = load i16, ptr %12, align 1
  %362 = tail call i16 @llvm.bswap.i16(i16 %361) #10
  %conv.i118.i.i = zext i16 %362 to i32
  %bssid.i119.i.i = getelementptr inbounds %struct.wmi_disconnect_event, ptr %12, i32 0, i32 1
  %disconn_reason.i.i.i = getelementptr inbounds %struct.wmi_disconnect_event, ptr %12, i32 0, i32 2
  %363 = ptrtoint ptr %disconn_reason.i.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %disconn_reason.i.i.i, align 1
  %conv1.i.i.i = zext i8 %364 to i32
  %assoc_resp_len.i120.i.i = getelementptr inbounds %struct.wmi_disconnect_event, ptr %12, i32 0, i32 3
  %365 = ptrtoint ptr %assoc_resp_len.i120.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %assoc_resp_len.i120.i.i, align 1
  %conv2.i.i.i = zext i8 %366 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.262, i32 noundef %conv.i118.i.i, ptr noundef %bssid.i119.i.i, i32 noundef %conv1.i.i.i, i32 noundef %conv2.i.i.i) #10
  %is_wmm_enabled.i121.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 7
  %367 = ptrtoint ptr %is_wmm_enabled.i121.i.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 0, ptr %is_wmm_enabled.i121.i.i, align 4
  %368 = ptrtoint ptr %disconn_reason.i.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %disconn_reason.i.i.i, align 1
  %370 = ptrtoint ptr %assoc_resp_len.i120.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %assoc_resp_len.i120.i.i, align 1
  %assoc_info.i122.i.i = getelementptr inbounds %struct.wmi_disconnect_event, ptr %12, i32 0, i32 4
  %372 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %372, i32 2)
  %373 = load i16, ptr %12, align 1
  %374 = tail call i16 @llvm.bswap.i16(i16 %373) #10
  tail call void @ath6kl_disconnect_event(ptr noundef nonnull %vif.0.i.i.i, i8 noundef zeroext %369, ptr noundef %bssid.i119.i.i, i8 noundef zeroext %371, ptr noundef %assoc_info.i122.i.i, i16 noundef zeroext %374) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb6.i.i:                                       ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.242) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i125.i.i = icmp ult i32 %14, 2
  br i1 %cmp.i125.i.i, label %sw.bb6.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i126.i.i

sw.bb6.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i126.i.i:                                  ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %375 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %12, align 1
  %is_mcast.i.i.i = getelementptr inbounds %struct.wmi_tkip_micerr_event, ptr %12, i32 0, i32 1
  %377 = ptrtoint ptr %is_mcast.i.i.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %is_mcast.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %378)
  %tobool.i.i.i = icmp ne i8 %378, 0
  tail call void @ath6kl_tkip_micerr_event(ptr noundef nonnull %vif.0.i.i.i, i8 noundef zeroext %376, i1 noundef zeroext %tobool.i.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb8.i.i:                                       ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.243) #10
  %379 = ptrtoint ptr %parent_dev.i251.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %parent_dev.i251.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %14)
  %cmp.i128.i.i = icmp ult i32 %14, 13
  br i1 %cmp.i128.i.i, label %sw.bb8.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i134.i.i

sw.bb8.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i134.i.i:                                  ; preds = %sw.bb8.i.i
  %add.ptr.i129.i.i = getelementptr i8, ptr %12, i32 12
  %sub.i130.i.i = add i32 %14, -12
  %381 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %381, i32 2)
  %382 = load i16, ptr %12, align 1
  %conv.i131.i.i = zext i16 %382 to i32
  %snr.i.i.i = getelementptr inbounds %struct.wmi_bss_info_hdr2, ptr %12, i32 0, i32 2
  %383 = ptrtoint ptr %snr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %snr.i.i.i, align 1
  %conv1.i132.i.i = zext i8 %384 to i32
  %sub4.i.i.i = add nsw i32 %conv1.i132.i.i, -95
  %bssid.i133.i.i = getelementptr inbounds %struct.wmi_bss_info_hdr2, ptr %12, i32 0, i32 3
  %frame_type.i.i.i = getelementptr inbounds %struct.wmi_bss_info_hdr2, ptr %12, i32 0, i32 1
  %385 = ptrtoint ptr %frame_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %frame_type.i.i.i, align 1
  %conv5.i.i.i = zext i8 %386 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.263, i32 noundef %conv.i131.i.i, i32 noundef %conv1.i132.i.i, i32 noundef %sub4.i.i.i, ptr noundef %bssid.i133.i.i, i32 noundef %conv5.i.i.i) #10
  %387 = ptrtoint ptr %frame_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %frame_type.i.i.i, align 1
  %.off.i.i.i = add i8 %388, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i.i)
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %if.end15.i.i.i, label %if.end.i134.i.i.ath6kl_wmi_proc_events.exit_crit_edge

if.end.i134.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end.i134.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end15.i.i.i:                                   ; preds = %if.end.i134.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %388)
  %cmp18.i.i.i = icmp eq i8 %388, 1
  br i1 %cmp18.i.i.i, label %land.lhs.true20.i.i.i, label %if.end15.i.i.i.if.end25.i.i.i_crit_edge

if.end15.i.i.i.if.end25.i.i.i_crit_edge:          ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i

land.lhs.true20.i.i.i:                            ; preds = %if.end15.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 6
  %389 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load volatile i32, ptr %flags.i.i.i, align 4
  %391 = and i32 %390, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool.not.i135.i.i = icmp eq i32 %391, 0
  br i1 %tobool.not.i135.i.i, label %land.lhs.true20.i.i.i.if.end25.i.i.i_crit_edge, label %if.then21.i.i.i

land.lhs.true20.i.i.i.if.end25.i.i.i_crit_edge:   ; preds = %land.lhs.true20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i

if.then21.i.i.i:                                  ; preds = %land.lhs.true20.i.i.i
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i.i.i) #10
  %wmi23.i.i.i = getelementptr inbounds %struct.ath6kl, ptr %380, i32 0, i32 7
  %392 = ptrtoint ptr %wmi23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %wmi23.i.i.i, align 4
  %394 = ptrtoint ptr %fw_vif_idx.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %fw_vif_idx.i.i.i.le, align 8
  %call.i.i.i.i.i = tail call ptr @ath6kl_buf_alloc(i32 noundef 8) #10
  %tobool.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then21.i.i.i.if.end25.i.i.i_crit_edge, label %if.end3.i.i.i.i

if.then21.i.i.i.if.end25.i.i.i_crit_edge:         ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i

if.end3.i.i.i.i:                                  ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i.i, i32 noundef 8) #10
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %396 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %data.i.i.i.i.i, align 4
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_storeN_noabort(i32 %398, i32 8)
  store i64 0, ptr %397, align 1
  %399 = load ptr, ptr %data.i.i.i.i.i, align 4
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 0, ptr %399, align 1
  %ie_mask4.i.i.i.i = getelementptr inbounds %struct.wmi_bss_filter_cmd, ptr %399, i32 0, i32 3
  %401 = ptrtoint ptr %ie_mask4.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %401, i32 4)
  store i32 0, ptr %ie_mask4.i.i.i.i, align 1
  %call5.i.i.i.i = tail call i32 @ath6kl_wmi_cmd_send(ptr noundef %393, i8 noundef zeroext %395, ptr noundef nonnull %call.i.i.i.i.i, i32 noundef 9, i32 noundef 0) #10
  br label %if.end25.i.i.i

if.end25.i.i.i:                                   ; preds = %if.end3.i.i.i.i, %if.then21.i.i.i.if.end25.i.i.i_crit_edge, %land.lhs.true20.i.i.i.if.end25.i.i.i_crit_edge, %if.end15.i.i.i.if.end25.i.i.i_crit_edge
  %wiphy.i.i.i = getelementptr inbounds %struct.ath6kl, ptr %380, i32 0, i32 1
  %402 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %wiphy.i.i.i, align 4
  %404 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %404, i32 2)
  %405 = load i16, ptr %12, align 1
  %406 = tail call i16 @llvm.bswap.i16(i16 %405) #10
  %conv27.i.i.i = zext i16 %406 to i32
  %mul.i.i.i.i = mul nuw nsw i32 %conv27.i.i.i, 1000
  %call.i.i.i265.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %403, i32 noundef %mul.i.i.i.i) #10
  %cmp29.i.i.i = icmp eq ptr %call.i.i.i265.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i130.i.i)
  %cmp33.i.i.i = icmp slt i32 %sub.i130.i.i, 12
  %or.cond.i137.i.i = or i1 %cmp33.i.i.i, %cmp29.i.i.i
  br i1 %or.cond.i137.i.i, label %if.end25.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end36.i.i.i

if.end25.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end36.i.i.i:                                   ; preds = %if.end25.i.i.i
  %407 = ptrtoint ptr %frame_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %frame_type.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %408)
  %cmp39.i.i.i = icmp eq i8 %408, 1
  br i1 %cmp39.i.i.i, label %land.lhs.true41.i.i.i, label %if.end36.i.i.i.if.end70.i.i.i_crit_edge

if.end36.i.i.i.if.end70.i.i.i_crit_edge:          ; preds = %if.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i.i.i

land.lhs.true41.i.i.i:                            ; preds = %if.end36.i.i.i
  %flags42.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 6
  %409 = ptrtoint ptr %flags42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load volatile i32, ptr %flags42.i.i.i, align 4
  %and1.i151.i.i.i = and i32 %410, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i151.i.i.i)
  %tobool44.not.i.i.i = icmp eq i32 %and1.i151.i.i.i, 0
  br i1 %tobool44.not.i.i.i, label %land.lhs.true41.i.i.i.if.end70.i.i.i_crit_edge, label %land.lhs.true45.i.i.i

land.lhs.true41.i.i.i.if.end70.i.i.i_crit_edge:   ; preds = %land.lhs.true41.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i.i.i

land.lhs.true45.i.i.i:                            ; preds = %land.lhs.true41.i.i.i
  %bssid48.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 18
  %bcmp.i138.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i133.i.i, ptr noundef dereferenceable(6) %bssid48.i.i.i, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i138.i.i)
  %cmp51.i.i.i = icmp eq i32 %bcmp.i138.i.i, 0
  br i1 %cmp51.i.i.i, label %if.then53.i.i.i, label %land.lhs.true45.i.i.i.if.end70.i.i.i_crit_edge

land.lhs.true45.i.i.i.if.end70.i.i.i_crit_edge:   ; preds = %land.lhs.true45.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i.i.i

if.then53.i.i.i:                                  ; preds = %land.lhs.true45.i.i.i
  %add.ptr56.i.i.i = getelementptr i8, ptr %12, i32 24
  %sub59.i.i.i = add i32 %14, -24
  %call.i.i154.i.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 5, ptr noundef %add.ptr56.i.i.i, i32 noundef %sub59.i.i.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %tobool61.not.i.i.i = icmp eq ptr %call.i.i154.i.i.i, null
  br i1 %tobool61.not.i.i.i, label %if.then53.i.i.i.if.end70.i.i.i_crit_edge, label %land.lhs.true62.i.i.i

if.then53.i.i.i.if.end70.i.i.i_crit_edge:         ; preds = %if.then53.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i.i.i

land.lhs.true62.i.i.i:                            ; preds = %if.then53.i.i.i
  %arrayidx.i139.i.i = getelementptr i8, ptr %call.i.i154.i.i.i, i32 1
  %411 = ptrtoint ptr %arrayidx.i139.i.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %arrayidx.i139.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %412)
  %cmp64.i.i.i = icmp ugt i8 %412, 1
  br i1 %cmp64.i.i.i, label %if.then66.i.i.i, label %land.lhs.true62.i.i.i.if.end70.i.i.i_crit_edge

land.lhs.true62.i.i.i.if.end70.i.i.i_crit_edge:   ; preds = %land.lhs.true62.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i.i.i

if.then66.i.i.i:                                  ; preds = %land.lhs.true62.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx67.i.i.i = getelementptr i8, ptr %call.i.i154.i.i.i, i32 3
  %413 = ptrtoint ptr %arrayidx67.i.i.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %arrayidx67.i.i.i, align 1
  %assoc_bss_dtim_period.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 40
  %415 = ptrtoint ptr %assoc_bss_dtim_period.i.i.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 %414, ptr %assoc_bss_dtim_period.i.i.i, align 2
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags42.i.i.i) #10
  br label %if.end70.i.i.i

if.end70.i.i.i:                                   ; preds = %if.then66.i.i.i, %land.lhs.true62.i.i.i.if.end70.i.i.i_crit_edge, %if.then53.i.i.i.if.end70.i.i.i_crit_edge, %land.lhs.true45.i.i.i.if.end70.i.i.i_crit_edge, %land.lhs.true41.i.i.i.if.end70.i.i.i_crit_edge, %if.end36.i.i.i.if.end70.i.i.i_crit_edge
  %416 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %wiphy.i.i.i, align 4
  %418 = ptrtoint ptr %frame_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %frame_type.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %419)
  %cmp74.i.i.i = icmp eq i8 %419, 1
  %cond.i140.i.i = select i1 %cmp74.i.i.i, i32 1, i32 2
  %420 = ptrtoint ptr %add.ptr.i129.i.i to i32
  call void @__asan_loadN_noabort(i32 %420, i32 8)
  %421 = load i64, ptr %add.ptr.i129.i.i, align 1
  %422 = tail call i64 @llvm.bswap.i64(i64 %421) #10
  %add.ptr79.i.i.i = getelementptr i8, ptr %12, i32 22
  %423 = ptrtoint ptr %add.ptr79.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %423, i32 2)
  %424 = load i16, ptr %add.ptr79.i.i.i, align 1
  %425 = tail call i16 @llvm.bswap.i16(i16 %424) #10
  %add.ptr81.i.i.i = getelementptr i8, ptr %12, i32 20
  %426 = ptrtoint ptr %add.ptr81.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %426, i32 2)
  %427 = load i16, ptr %add.ptr81.i.i.i, align 1
  %428 = tail call i16 @llvm.bswap.i16(i16 %427) #10
  %add.ptr85.i.i.i = getelementptr i8, ptr %12, i32 24
  %sub88.i.i.i = add i32 %14, -24
  %429 = ptrtoint ptr %snr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %snr.i.i.i, align 1
  %conv90.i.i.i = zext i8 %430 to i32
  %431 = mul nuw nsw i32 %conv90.i.i.i, 100
  %mul.i.i.i = add nsw i32 %431, -9500
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i.i.i250.i) #10
  %432 = getelementptr inbounds i8, ptr %data.i.i.i250.i, i32 8
  %433 = call ptr @memset(ptr %432, i32 0, i32 40)
  %434 = ptrtoint ptr %data.i.i.i250.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr %call.i.i.i265.i, ptr %data.i.i.i250.i, align 8
  %scan_width.i.i.i.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i.i.i250.i, i32 0, i32 1
  %435 = ptrtoint ptr %scan_width.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 0, ptr %scan_width.i.i.i.i, align 4
  %436 = ptrtoint ptr %432 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %mul.i.i.i, ptr %432, align 8
  %call.i155.i.i.i = call ptr @cfg80211_inform_bss_data(ptr noundef %417, ptr noundef nonnull %data.i.i.i250.i, i32 noundef %cond.i140.i.i, ptr noundef %bssid.i133.i.i, i64 noundef %422, i16 noundef zeroext %425, i16 noundef zeroext %428, ptr noundef %add.ptr85.i.i.i, i32 noundef %sub88.i.i.i, i32 noundef 2592) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i.i.i250.i) #10
  %cmp93.i.i.i = icmp eq ptr %call.i155.i.i.i, null
  br i1 %cmp93.i.i.i, label %if.end70.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end96.i.i.i

if.end70.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end96.i.i.i:                                   ; preds = %if.end70.i.i.i
  %437 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %wiphy.i.i.i, align 4
  call void @cfg80211_put_bss(ptr noundef %438, ptr noundef nonnull %call.i155.i.i.i) #10
  %flags98.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 6
  %439 = ptrtoint ptr %flags98.i.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load volatile i32, ptr %flags98.i.i.i, align 4
  %441 = and i32 %440, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %441)
  %tobool100.not.i.i.i = icmp eq i32 %441, 0
  br i1 %tobool100.not.i.i.i, label %if.end96.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %land.lhs.true101.i.i.i

if.end96.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end96.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

land.lhs.true101.i.i.i:                           ; preds = %if.end96.i.i.i
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 27, i32 0, i32 1
  %442 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load volatile ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i156.not.i.i.i = icmp eq ptr %443, null
  br i1 %tobool.not.i.i156.not.i.i.i, label %if.then104.i.i.i, label %land.lhs.true101.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge

land.lhs.true101.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %land.lhs.true101.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.then104.i.i.i:                                 ; preds = %land.lhs.true101.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sched_scan_timer.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %444 = load volatile i32, ptr @jiffies, align 128
  %add.i141.i.i = add i32 %444, 500
  %call107.i.i.i = call i32 @mod_timer(ptr noundef %sched_scan_timer.i.i.i, i32 noundef %add.i141.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb10.i.i:                                      ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.244) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i143.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i143.i.i, label %sw.bb10.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i145.i.i

sw.bb10.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i145.i.i:                                  ; preds = %sw.bb10.i.i
  %445 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %12, align 1
  %conv.i144.i.i = zext i8 %446 to i32
  %447 = mul nuw nsw i32 %conv.i144.i.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %447, i32 %14)
  %cmp1.not.i.i.i = icmp ult i32 %447, %14
  br i1 %cmp1.not.i.i.i, label %for.cond.preheader.i.i.i, label %if.then3.i147.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end.i145.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %446)
  %cmp101.not.i.i.i = icmp eq i8 %446, 0
  br i1 %cmp101.not.i.i.i, label %for.cond.preheader.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %ndev.i146.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 2
  br label %for.body.i151.i.i

if.then3.i147.i.i:                                ; preds = %if.end.i145.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.265, i32 noundef %conv.i144.i.i, i32 noundef %14) #10
  br label %ath6kl_wmi_proc_events.exit

for.body.i151.i.i:                                ; preds = %for.body.i151.i.i.for.body.i151.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %add.i148.i.i, %for.body.i151.i.i.for.body.i151.i.i_crit_edge ]
  %448 = phi i8 [ %446, %for.body.lr.ph.i.i.i ], [ %457, %for.body.i151.i.i.for.body.i151.i.i_crit_edge ]
  %conv9.i.i.i = zext i8 %448 to i32
  %add.i148.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %arrayidx.i149.i.i = getelementptr %struct.wmi_neighbor_report_event, ptr %12, i32 0, i32 1, i32 %indvars.iv.i.i.i
  %bss_flags.i.i.i = getelementptr %struct.wmi_neighbor_report_event, ptr %12, i32 0, i32 1, i32 %indvars.iv.i.i.i, i32 1
  %449 = ptrtoint ptr %bss_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %bss_flags.i.i.i, align 1
  %conv18.i.i.i = zext i8 %450 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.266, i32 noundef %add.i148.i.i, i32 noundef %conv9.i.i.i, ptr noundef %arrayidx.i149.i.i, i32 noundef %conv18.i.i.i) #10
  %451 = ptrtoint ptr %ndev.i146.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %ndev.i146.i.i, align 4
  %453 = ptrtoint ptr %bss_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %bss_flags.i.i.i, align 1
  %455 = and i8 %454, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %455)
  %tobool.i150.i.i = icmp ne i8 %455, 0
  tail call void @cfg80211_pmksa_candidate_notify(ptr noundef %452, i32 noundef %indvars.iv.i.i.i, ptr noundef %arrayidx.i149.i.i, i1 noundef zeroext %tobool.i150.i.i, i32 noundef 2592) #10
  %456 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %12, align 1
  %458 = zext i8 %457 to i32
  %cmp10.i.i.i = icmp ult i32 %add.i148.i.i, %458
  br i1 %cmp10.i.i.i, label %for.body.i151.i.i.for.body.i151.i.i_crit_edge, label %for.body.i151.i.i.ath6kl_wmi_proc_events.exit_crit_edge

for.body.i151.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %for.body.i151.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

for.body.i151.i.i.for.body.i151.i.i_crit_edge:    ; preds = %for.body.i151.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i151.i.i

sw.bb12.i.i:                                      ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.245) #10
  %459 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %459, i32 4)
  %460 = load i32, ptr %12, align 1
  %461 = tail call i32 @llvm.bswap.i32(i32 %460) #10
  tail call void @ath6kl_scan_complete_evt(ptr noundef nonnull %vif.0.i.i.i, i32 noundef %461) #10
  %is_probe_ssid.i.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 9
  %462 = ptrtoint ptr %is_probe_ssid.i.i.i to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 0, ptr %is_probe_ssid.i.i.i, align 2
  br label %ath6kl_wmi_proc_events.exit

sw.bb14.i.i:                                      ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.246) #10
  tail call void @ath6kl_tgt_stats_event(ptr noundef nonnull %vif.0.i.i.i, ptr noundef %12, i32 noundef %14) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb16.i.i:                                      ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.247) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %14)
  %cmp.i153.i.i = icmp ult i32 %14, 66
  br i1 %cmp.i153.i.i, label %sw.bb16.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i155.i.i

sw.bb16.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i155.i.i:                                  ; preds = %sw.bb16.i.i
  %463 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %464)
  %cmp1.i154.i.i = icmp ugt i8 %464, 3
  br i1 %cmp1.i154.i.i, label %if.then3.i157.i.i, label %if.end6.i.i.i

if.then3.i157.i.i:                                ; preds = %if.end.i155.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i156.i.i = zext i8 %464 to i32
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.267, i32 noundef %conv.i156.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

if.end6.i.i.i:                                    ; preds = %if.end.i155.i.i
  %cac_indication.i.i.i = getelementptr inbounds %struct.wmi_cac_event, ptr %12, i32 0, i32 1
  %465 = ptrtoint ptr %cac_indication.i.i.i to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %cac_indication.i.i.i, align 1
  %467 = zext i8 %466 to i64
  call void @__sanitizer_cov_trace_switch(i64 %467, ptr @__sancov_gen_cov_switch_values.286)
  switch i8 %466, label %if.end6.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge [
    i8 1, label %land.lhs.true.i158.i.i
    i8 3, label %if.then22.i.i.i
    i8 2, label %if.then47.i.i.i
  ]

if.end6.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

land.lhs.true.i158.i.i:                           ; preds = %if.end6.i.i.i
  %status_code.i.i.i = getelementptr inbounds %struct.wmi_cac_event, ptr %12, i32 0, i32 2
  %468 = ptrtoint ptr %status_code.i.i.i to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %status_code.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %469)
  %cmp11.not.i.i.i = icmp eq i8 %469, 0
  br i1 %cmp11.not.i.i.i, label %land.lhs.true.i158.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.then13.i.i.i

land.lhs.true.i158.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %land.lhs.true.i158.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.then13.i.i.i:                                  ; preds = %land.lhs.true.i158.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tsinfo14.i.i.i = getelementptr inbounds %struct.wmi_cac_event, ptr %12, i32 0, i32 3, i32 8
  %470 = ptrtoint ptr %tsinfo14.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %470, i32 2)
  %471 = load i16, ptr %tsinfo14.i.i.i, align 1
  %472 = lshr i16 %471, 9
  %473 = trunc i16 %472 to i8
  %conv16.i.i.i = and i8 %473, 15
  %474 = ptrtoint ptr %fw_vif_idx.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %fw_vif_idx.i.i.i.le, align 8
  %call.i.i.i = tail call i32 @ath6kl_wmi_delete_pstream_cmd(ptr noundef %wmi, i8 noundef zeroext %475, i8 noundef zeroext %464, i8 noundef zeroext %conv16.i.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

if.then22.i.i.i:                                  ; preds = %if.end6.i.i.i
  %lock.i.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #10
  %476 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %12, align 1
  %idxprom.i.i.i = zext i8 %477 to i32
  %arrayidx.i160.i.i = getelementptr [4 x i16], ptr %wmi, i32 0, i32 %idxprom.i.i.i
  %478 = ptrtoint ptr %arrayidx.i160.i.i to i32
  call void @__asan_load2_noabort(i32 %478)
  %479 = load i16, ptr %arrayidx.i160.i.i, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i) #10
  %conv28.i161.i.i = zext i16 %479 to i32
  %480 = and i32 %conv28.i161.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %480)
  %tobool.not.i162.i.i = icmp eq i32 %480, 0
  br i1 %tobool.not.i162.i.i, label %for.inc.i.i266.i, label %if.then22.i.i.i.if.then37.critedge.i.i.i_crit_edge

if.then22.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.i.i266.i:                                 ; preds = %if.then22.i.i.i
  %481 = and i32 %conv28.i161.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %481)
  %tobool.not.1.i.i.i = icmp eq i32 %481, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.1.i.i.i, label %for.inc.i.i266.i.if.then37.critedge.i.i.i_crit_edge

for.inc.i.i266.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.i.i266.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i266.i
  %482 = and i32 %conv28.i161.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %482)
  %tobool.not.2.i.i.i = icmp eq i32 %482, 0
  br i1 %tobool.not.2.i.i.i, label %for.inc.2.i.i.i, label %for.inc.1.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.1.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %483 = and i32 %conv28.i161.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %483)
  %tobool.not.3.i.i.i = icmp eq i32 %483, 0
  br i1 %tobool.not.3.i.i.i, label %for.inc.3.i.i.i, label %for.inc.2.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.2.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %484 = and i32 %conv28.i161.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %484)
  %tobool.not.4.i.i.i = icmp eq i32 %484, 0
  br i1 %tobool.not.4.i.i.i, label %for.inc.4.i.i.i, label %for.inc.3.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.3.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %485 = and i32 %conv28.i161.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %485)
  %tobool.not.5.i.i.i = icmp eq i32 %485, 0
  br i1 %tobool.not.5.i.i.i, label %for.inc.5.i.i.i, label %for.inc.4.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.4.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  %486 = and i32 %conv28.i161.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %486)
  %tobool.not.6.i.i.i = icmp eq i32 %486, 0
  br i1 %tobool.not.6.i.i.i, label %for.inc.6.i.i.i, label %for.inc.5.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.5.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i
  %487 = and i32 %conv28.i161.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %487)
  %tobool.not.7.i.i.i = icmp eq i32 %487, 0
  br i1 %tobool.not.7.i.i.i, label %for.inc.7.i.i.i, label %for.inc.6.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.6.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.7.i.i.i:                                  ; preds = %for.inc.6.i.i.i
  %488 = and i32 %conv28.i161.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %488)
  %tobool.not.8.i.i.i = icmp eq i32 %488, 0
  br i1 %tobool.not.8.i.i.i, label %for.inc.8.i.i.i, label %for.inc.7.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.7.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.8.i.i.i:                                  ; preds = %for.inc.7.i.i.i
  %489 = and i32 %conv28.i161.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %489)
  %tobool.not.9.i.i.i = icmp eq i32 %489, 0
  br i1 %tobool.not.9.i.i.i, label %for.inc.9.i.i.i, label %for.inc.8.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.8.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.9.i.i.i:                                  ; preds = %for.inc.8.i.i.i
  %490 = and i32 %conv28.i161.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %490)
  %tobool.not.10.i.i.i = icmp eq i32 %490, 0
  br i1 %tobool.not.10.i.i.i, label %for.inc.10.i.i.i, label %for.inc.9.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.9.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.10.i.i.i:                                 ; preds = %for.inc.9.i.i.i
  %491 = and i32 %conv28.i161.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %491)
  %tobool.not.11.i.i.i = icmp eq i32 %491, 0
  br i1 %tobool.not.11.i.i.i, label %for.inc.11.i.i.i, label %for.inc.10.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.10.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.11.i.i.i:                                 ; preds = %for.inc.10.i.i.i
  %492 = and i32 %conv28.i161.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %492)
  %tobool.not.12.i.i.i = icmp eq i32 %492, 0
  br i1 %tobool.not.12.i.i.i, label %for.inc.12.i.i.i, label %for.inc.11.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.11.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.12.i.i.i:                                 ; preds = %for.inc.11.i.i.i
  %493 = and i32 %conv28.i161.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %493)
  %tobool.not.13.i.i.i = icmp eq i32 %493, 0
  br i1 %tobool.not.13.i.i.i, label %for.inc.13.i.i.i, label %for.inc.12.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.12.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.13.i.i.i:                                 ; preds = %for.inc.12.i.i.i
  %494 = and i32 %conv28.i161.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %494)
  %tobool.not.14.i.i.i = icmp eq i32 %494, 0
  br i1 %tobool.not.14.i.i.i, label %for.inc.14.i.i.i, label %for.inc.13.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.13.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.14.i.i.i:                                 ; preds = %for.inc.13.i.i.i
  %495 = and i32 %conv28.i161.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %495)
  %tobool.not.15.i.i.i = icmp eq i32 %495, 0
  br i1 %tobool.not.15.i.i.i, label %for.inc.14.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %for.inc.14.i.i.i.if.then37.critedge.i.i.i_crit_edge

for.inc.14.i.i.i.if.then37.critedge.i.i.i_crit_edge: ; preds = %for.inc.14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge.i.i.i

for.inc.14.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %for.inc.14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.then37.critedge.i.i.i:                         ; preds = %for.inc.14.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.13.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.12.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.11.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.10.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.9.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.8.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.7.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.6.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.5.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.4.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.3.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.2.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.1.i.i.i.if.then37.critedge.i.i.i_crit_edge, %for.inc.i.i266.i.if.then37.critedge.i.i.i_crit_edge, %if.then22.i.i.i.if.then37.critedge.i.i.i_crit_edge
  %index.0121.lcssa.wide.i.i.i = phi i8 [ 0, %if.then22.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 1, %for.inc.i.i266.i.if.then37.critedge.i.i.i_crit_edge ], [ 2, %for.inc.1.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 3, %for.inc.2.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 4, %for.inc.3.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 5, %for.inc.4.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 6, %for.inc.5.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 7, %for.inc.6.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 8, %for.inc.7.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 9, %for.inc.8.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 10, %for.inc.9.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 11, %for.inc.10.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 12, %for.inc.11.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 13, %for.inc.12.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 14, %for.inc.13.i.i.i.if.then37.critedge.i.i.i_crit_edge ], [ 15, %for.inc.14.i.i.i.if.then37.critedge.i.i.i_crit_edge ]
  %496 = ptrtoint ptr %fw_vif_idx.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %fw_vif_idx.i.i.i.le, align 8
  %498 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %12, align 1
  %call40.i.i.i = tail call i32 @ath6kl_wmi_delete_pstream_cmd(ptr noundef %wmi, i8 noundef zeroext %497, i8 noundef zeroext %499, i8 noundef zeroext %index.0121.lcssa.wide.i.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

if.then47.i.i.i:                                  ; preds = %if.end6.i.i.i
  %tsinfo49.i.i.i = getelementptr inbounds %struct.wmi_cac_event, ptr %12, i32 0, i32 3, i32 8
  %500 = ptrtoint ptr %tsinfo49.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %500, i32 2)
  %501 = load i16, ptr %tsinfo49.i.i.i, align 1
  %502 = lshr i16 %501, 9
  %503 = and i16 %502, 15
  %lock54.i.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock54.i.i.i) #10
  %shl.i.i.i = shl nuw i16 1, %503
  %neg.i.i.i = xor i16 %shl.i.i.i, -1
  %504 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %12, align 1
  %idxprom58.i.i.i = zext i8 %505 to i32
  %arrayidx59.i.i.i = getelementptr [4 x i16], ptr %wmi, i32 0, i32 %idxprom58.i.i.i
  %506 = ptrtoint ptr %arrayidx59.i.i.i to i32
  call void @__asan_load2_noabort(i32 %506)
  %507 = load i16, ptr %arrayidx59.i.i.i, align 2
  %and61.i.i.i = and i16 %507, %neg.i.i.i
  store i16 %and61.i.i.i, ptr %arrayidx59.i.i.i, align 2
  %508 = load i8, ptr %12, align 1
  %idxprom65.i.i.i = zext i8 %508 to i32
  %arrayidx66.i.i.i = getelementptr [4 x i16], ptr %wmi, i32 0, i32 %idxprom65.i.i.i
  %509 = ptrtoint ptr %arrayidx66.i.i.i to i32
  call void @__asan_load2_noabort(i32 %509)
  %510 = load i16, ptr %arrayidx66.i.i.i, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock54.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %510)
  %tobool68.not.i.i.i = icmp eq i16 %510, 0
  br i1 %tobool68.not.i.i.i, label %if.then69.i.i.i, label %if.then47.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge

if.then47.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.then47.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.then69.i.i.i:                                  ; preds = %if.then47.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %511 = ptrtoint ptr %parent_dev.i251.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %parent_dev.i251.i, align 4
  %513 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %12, align 1
  tail call void @ath6kl_indicate_tx_activity(ptr noundef %512, i8 noundef zeroext %514, i1 noundef zeroext false) #10
  %515 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %12, align 1
  %conv72.i.i.i = zext i8 %516 to i32
  %shl73.i.i.i = shl nuw i32 1, %conv72.i.i.i
  %fat_pipe_exist.i.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 1
  %517 = ptrtoint ptr %fat_pipe_exist.i.i.i to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %fat_pipe_exist.i.i.i, align 4
  %519 = trunc i32 %shl73.i.i.i to i8
  %520 = xor i8 %519, -1
  %conv77.i.i.i = and i8 %518, %520
  store i8 %conv77.i.i.i, ptr %fat_pipe_exist.i.i.i, align 4
  br label %ath6kl_wmi_proc_events.exit

sw.bb18.i.i:                                      ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.248) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i165.i.i = icmp ult i32 %14, 2
  br i1 %cmp.i165.i.i, label %sw.bb18.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i167.i.i

sw.bb18.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i167.i.i:                                  ; preds = %sw.bb18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %521 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %521, i32 2)
  %522 = load i16, ptr %12, align 1
  %523 = lshr i16 %522, 8
  %conv.i166.i.i = trunc i16 %523 to i8
  tail call void @ath6kl_pspoll_event(ptr noundef nonnull %vif.0.i.i.i, i8 noundef zeroext %conv.i166.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb20.i.i:                                      ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.249) #10
  tail call void @ath6kl_dtimexpiry_event(ptr noundef nonnull %vif.0.i.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb22.i.i:                                      ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.250) #10
  %524 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %12, align 1
  %st_seq_no.i.i.i = getelementptr inbounds %struct.wmi_addba_req_event, ptr %12, i32 0, i32 2
  %526 = ptrtoint ptr %st_seq_no.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %526, i32 2)
  %527 = load i16, ptr %st_seq_no.i.i.i, align 1
  %528 = tail call i16 @llvm.bswap.i16(i16 %527) #10
  %win_sz.i.i.i = getelementptr inbounds %struct.wmi_addba_req_event, ptr %12, i32 0, i32 1
  %529 = ptrtoint ptr %win_sz.i.i.i to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %win_sz.i.i.i, align 1
  tail call void @aggr_recv_addba_req_evt(ptr noundef nonnull %vif.0.i.i.i, i8 noundef zeroext %525, i16 noundef zeroext %528, i8 noundef zeroext %530) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb24.i.i:                                      ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.251) #10
  %531 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %12, align 1
  tail call void @aggr_recv_delba_req_evt(ptr noundef nonnull %vif.0.i.i.i, i8 noundef zeroext %532) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb26.i.i:                                      ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.252) #10
  %533 = ptrtoint ptr %parent_dev.i251.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %parent_dev.i251.i, align 4
  %flags.i170.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags.i170.i.i) #10
  %event_wq.i.i.i = getelementptr inbounds %struct.ath6kl, ptr %534, i32 0, i32 72
  tail call void @__wake_up(ptr noundef %event_wq.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb28.i.i:                                      ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.253) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp.i171.i.i = icmp ult i32 %14, 8
  br i1 %cmp.i171.i.i, label %sw.bb28.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i177.i.i

sw.bb28.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i177.i.i:                                  ; preds = %sw.bb28.i.i
  %535 = ptrtoint ptr %parent_dev.i251.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %parent_dev.i251.i, align 4
  %537 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %537, i32 4)
  %538 = load i32, ptr %12, align 1
  %539 = tail call i32 @llvm.bswap.i32(i32 %538) #10
  %duration.i.i.i = getelementptr inbounds %struct.wmi_remain_on_chnl_event, ptr %12, i32 0, i32 1
  %540 = ptrtoint ptr %duration.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %540, i32 4)
  %541 = load i32, ptr %duration.i.i.i, align 1
  %542 = tail call i32 @llvm.bswap.i32(i32 %541) #10
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.268, i32 noundef %539, i32 noundef %542) #10
  %wiphy.i173.i.i = getelementptr inbounds %struct.ath6kl, ptr %536, i32 0, i32 1
  %543 = ptrtoint ptr %wiphy.i173.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %wiphy.i173.i.i, align 4
  %mul.i.i174.i.i = mul i32 %539, 1000
  %call.i.i175.i.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %544, i32 noundef %mul.i.i174.i.i) #10
  %tobool.not.i176.i.i = icmp eq ptr %call.i.i175.i.i, null
  br i1 %tobool.not.i176.i.i, label %if.then2.i.i.i, label %if.end3.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i177.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.269, i32 noundef %539) #10
  br label %ath6kl_wmi_proc_events.exit

if.end3.i.i.i:                                    ; preds = %if.end.i177.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %last_roc_id.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 31
  %545 = ptrtoint ptr %last_roc_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %last_roc_id.i.i.i, align 8
  %wdev.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 1
  %conv.i178.i.i = zext i32 %546 to i64
  tail call void @cfg80211_ready_on_channel(ptr noundef %wdev.i.i.i, i64 noundef %conv.i178.i.i, ptr noundef nonnull %call.i.i175.i.i, i32 noundef %542, i32 noundef 2592) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb30.i.i:                                      ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.254) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %14)
  %cmp.i180.i.i = icmp ult i32 %14, 9
  br i1 %cmp.i180.i.i, label %sw.bb30.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i188.i.i

sw.bb30.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i188.i.i:                                  ; preds = %sw.bb30.i.i
  %547 = ptrtoint ptr %parent_dev.i251.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %parent_dev.i251.i, align 4
  %549 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %549, i32 4)
  %550 = load i32, ptr %12, align 1
  %551 = tail call i32 @llvm.bswap.i32(i32 %550) #10
  %duration.i182.i.i = getelementptr inbounds %struct.wmi_cancel_remain_on_chnl_event, ptr %12, i32 0, i32 1
  %552 = ptrtoint ptr %duration.i182.i.i to i32
  call void @__asan_loadN_noabort(i32 %552, i32 4)
  %553 = load i32, ptr %duration.i182.i.i, align 1
  %554 = tail call i32 @llvm.bswap.i32(i32 %553) #10
  %status.i.i.i = getelementptr inbounds %struct.wmi_cancel_remain_on_chnl_event, ptr %12, i32 0, i32 2
  %555 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load1_noabort(i32 %555)
  %556 = load i8, ptr %status.i.i.i, align 1
  %conv.i183.i.i = zext i8 %556 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.270, i32 noundef %551, i32 noundef %554, i32 noundef %conv.i183.i.i) #10
  %wiphy.i184.i.i = getelementptr inbounds %struct.ath6kl, ptr %548, i32 0, i32 1
  %557 = ptrtoint ptr %wiphy.i184.i.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %wiphy.i184.i.i, align 4
  %mul.i.i185.i.i = mul i32 %551, 1000
  %call.i.i186.i.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %558, i32 noundef %mul.i.i185.i.i) #10
  %tobool.not.i187.i.i = icmp eq ptr %call.i.i186.i.i, null
  br i1 %tobool.not.i187.i.i, label %if.then2.i189.i.i, label %if.end3.i190.i.i

if.then2.i189.i.i:                                ; preds = %if.end.i188.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.271, i32 noundef %551) #10
  br label %ath6kl_wmi_proc_events.exit

if.end3.i190.i.i:                                 ; preds = %if.end.i188.i.i
  %last_cancel_roc_id.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 32
  %559 = ptrtoint ptr %last_cancel_roc_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %last_cancel_roc_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %560)
  %tobool4.not.i.i.i = icmp eq i32 %560, 0
  br i1 %tobool4.not.i.i.i, label %if.end3.i190.i.i.if.else.i194.i.i_crit_edge, label %land.lhs.true.i193.i.i

if.end3.i190.i.i.if.else.i194.i.i_crit_edge:      ; preds = %if.end3.i190.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i194.i.i

land.lhs.true.i193.i.i:                           ; preds = %if.end3.i190.i.i
  %add.i191.i.i = add i32 %560, 1
  %last_roc_id.i192.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 31
  %561 = ptrtoint ptr %last_roc_id.i192.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %last_roc_id.i192.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i191.i.i, i32 %562)
  %cmp6.i.i267.i = icmp eq i32 %add.i191.i.i, %562
  br i1 %cmp6.i.i267.i, label %land.lhs.true.i193.i.i.if.end11.i.i.i_crit_edge, label %land.lhs.true.i193.i.i.if.else.i194.i.i_crit_edge

land.lhs.true.i193.i.i.if.else.i194.i.i_crit_edge: ; preds = %land.lhs.true.i193.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i194.i.i

land.lhs.true.i193.i.i.if.end11.i.i.i_crit_edge:  ; preds = %land.lhs.true.i193.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i.i

if.else.i194.i.i:                                 ; preds = %land.lhs.true.i193.i.i.if.else.i194.i.i_crit_edge, %if.end3.i190.i.i.if.else.i194.i.i_crit_edge
  %last_roc_id10.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 31
  %563 = ptrtoint ptr %last_roc_id10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %last_roc_id10.i.i.i, align 8
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.else.i194.i.i, %land.lhs.true.i193.i.i.if.end11.i.i.i_crit_edge
  %id.0.i.i.i = phi i32 [ %564, %if.else.i194.i.i ], [ %560, %land.lhs.true.i193.i.i.if.end11.i.i.i_crit_edge ]
  %565 = ptrtoint ptr %last_cancel_roc_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 0, ptr %last_cancel_roc_id.i.i.i, align 4
  %wdev.i195.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 1
  %conv13.i.i.i = zext i32 %id.0.i.i.i to i64
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %wdev.i195.i.i, i64 noundef %conv13.i.i.i, ptr noundef nonnull %call.i.i186.i.i, i32 noundef 2592) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb32.i.i:                                      ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp.i197.i.i = icmp ult i32 %14, 5
  br i1 %cmp.i197.i.i, label %sw.bb32.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i200.i.i

sw.bb32.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i200.i.i:                                  ; preds = %sw.bb32.i.i
  %566 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %566, i32 4)
  %567 = load i32, ptr %12, align 1
  %568 = tail call i32 @llvm.bswap.i32(i32 %567) #10
  %ack_status.i.i.i = getelementptr inbounds %struct.wmi_tx_status_event, ptr %12, i32 0, i32 1
  %569 = ptrtoint ptr %ack_status.i.i.i to i32
  call void @__asan_load1_noabort(i32 %569)
  %570 = load i8, ptr %ack_status.i.i.i, align 1
  %conv.i198.i.i = zext i8 %570 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.272, i32 noundef %568, i32 noundef %conv.i198.i.i) #10
  %last_mgmt_tx_frame.i.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 10
  %571 = ptrtoint ptr %last_mgmt_tx_frame.i.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %last_mgmt_tx_frame.i.i.i, align 4
  %tobool.not.i199.i.i = icmp eq ptr %572, null
  br i1 %tobool.not.i199.i.i, label %if.end.i200.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.then2.i202.i.i

if.end.i200.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end.i200.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.then2.i202.i.i:                                ; preds = %if.end.i200.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %wdev.i201.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 1
  %conv3.i.i.i = zext i32 %568 to i64
  %last_mgmt_tx_frame_len.i.i.i = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 11
  %573 = ptrtoint ptr %last_mgmt_tx_frame_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %last_mgmt_tx_frame_len.i.i.i, align 4
  %575 = ptrtoint ptr %ack_status.i.i.i to i32
  call void @__asan_load1_noabort(i32 %575)
  %576 = load i8, ptr %ack_status.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %576)
  %tobool6.i.i.i = icmp ne i8 %576, 0
  tail call void @cfg80211_mgmt_tx_status(ptr noundef %wdev.i201.i.i, i64 noundef %conv3.i.i.i, ptr noundef nonnull %572, i32 noundef %574, i1 noundef zeroext %tobool6.i.i.i, i32 noundef 2592) #10
  %577 = ptrtoint ptr %last_mgmt_tx_frame.i.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %last_mgmt_tx_frame.i.i.i, align 4
  tail call void @kfree(ptr noundef %578) #10
  %579 = ptrtoint ptr %last_mgmt_tx_frame.i.i.i to i32
  call void @__asan_store4_noabort(i32 %579)
  store ptr null, ptr %last_mgmt_tx_frame.i.i.i, align 4
  %580 = ptrtoint ptr %last_mgmt_tx_frame_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 0, ptr %last_mgmt_tx_frame_len.i.i.i, align 4
  br label %ath6kl_wmi_proc_events.exit

sw.bb34.i.i:                                      ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.256) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp.i204.i.i = icmp ult i32 %14, 6
  br i1 %cmp.i204.i.i, label %sw.bb34.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i208.i.i

sw.bb34.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i208.i.i:                                  ; preds = %sw.bb34.i.i
  %581 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %581, i32 4)
  %582 = load i32, ptr %12, align 1
  %583 = tail call i32 @llvm.bswap.i32(i32 %582) #10
  %len2.i.i.i = getelementptr inbounds %struct.wmi_p2p_rx_probe_req_event, ptr %12, i32 0, i32 1
  %584 = ptrtoint ptr %len2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %584, i32 2)
  %585 = load i16, ptr %len2.i.i.i, align 1
  %586 = tail call i16 @llvm.bswap.i16(i16 %585) #10
  %add.ptr.i205.i.i = getelementptr i8, ptr %12, i32 %14
  %data.i.i.i = getelementptr inbounds %struct.wmi_p2p_rx_probe_req_event, ptr %12, i32 0, i32 2
  %conv.i206.i.i = zext i16 %586 to i32
  %add.ptr3.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %conv.i206.i.i
  %cmp4.i207.i.i = icmp ult ptr %add.ptr.i205.i.i, %add.ptr3.i.i.i
  br i1 %cmp4.i207.i.i, label %if.then6.i209.i.i, label %if.end8.i.i.i

if.then6.i209.i.i:                                ; preds = %if.end.i208.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.273, i32 noundef %14, i32 noundef %conv.i206.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

if.end8.i.i.i:                                    ; preds = %if.end.i208.i.i
  %probe_req_report.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 34
  %587 = ptrtoint ptr %probe_req_report.i.i.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %probe_req_report.i.i.i, align 4, !range !588
  %589 = zext i8 %588 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.274, i32 noundef %conv.i206.i.i, i32 noundef %583, i32 noundef %589) #10
  %590 = ptrtoint ptr %probe_req_report.i.i.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %probe_req_report.i.i.i, align 4, !range !588
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %591)
  %tobool12.not.i.i.i = icmp eq i8 %591, 0
  br i1 %tobool12.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end8.i.i.i.if.then17.i.i.i_crit_edge

if.end8.i.i.i.if.then17.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end8.i.i.i
  %nw_type.i210.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 17
  %592 = ptrtoint ptr %nw_type.i210.i.i to i32
  call void @__asan_load1_noabort(i32 %592)
  %593 = load i8, ptr %nw_type.i210.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %593)
  %cmp15.i.i.i = icmp eq i8 %593, 16
  br i1 %cmp15.i.i.i, label %lor.lhs.false.i.i.i.if.then17.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge

lor.lhs.false.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

lor.lhs.false.i.i.i.if.then17.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17.i.i.i

if.then17.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.if.then17.i.i.i_crit_edge, %if.end8.i.i.i.if.then17.i.i.i_crit_edge
  %wdev.i211.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 1
  %mul.i.i212.i.i = mul i32 %583, 1000
  %call.i.i213.i.i = tail call zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %wdev.i211.i.i, i32 noundef %mul.i.i212.i.i, i32 noundef 0, ptr noundef %data.i.i.i, i32 noundef %conv.i206.i.i, i32 noundef 0) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb36.i.i:                                      ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.257) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp.i215.i.i = icmp ult i32 %14, 6
  br i1 %cmp.i215.i.i, label %sw.bb36.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i222.i.i

sw.bb36.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i222.i.i:                                  ; preds = %sw.bb36.i.i
  %len2.i216.i.i = getelementptr inbounds %struct.wmi_rx_action_event, ptr %12, i32 0, i32 1
  %594 = ptrtoint ptr %len2.i216.i.i to i32
  call void @__asan_loadN_noabort(i32 %594, i32 2)
  %595 = load i16, ptr %len2.i216.i.i, align 1
  %596 = tail call i16 @llvm.bswap.i16(i16 %595) #10
  %add.ptr.i217.i.i = getelementptr i8, ptr %12, i32 %14
  %data.i218.i.i = getelementptr inbounds %struct.wmi_rx_action_event, ptr %12, i32 0, i32 2
  %conv.i219.i.i = zext i16 %596 to i32
  %add.ptr3.i220.i.i = getelementptr i8, ptr %data.i218.i.i, i32 %conv.i219.i.i
  %cmp4.i221.i.i = icmp ult ptr %add.ptr.i217.i.i, %add.ptr3.i220.i.i
  br i1 %cmp4.i221.i.i, label %if.then6.i223.i.i, label %if.end8.i227.i.i

if.then6.i223.i.i:                                ; preds = %if.end.i222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.275, i32 noundef %14, i32 noundef %conv.i219.i.i) #10
  br label %ath6kl_wmi_proc_events.exit

if.end8.i227.i.i:                                 ; preds = %if.end.i222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %597 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %597, i32 4)
  %598 = load i32, ptr %12, align 1
  %599 = tail call i32 @llvm.bswap.i32(i32 %598) #10
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.276, i32 noundef %conv.i219.i.i, i32 noundef %599) #10
  %wdev.i224.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 1
  %mul.i.i225.i.i = mul i32 %599, 1000
  %call.i.i226.i.i = tail call zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %wdev.i224.i.i, i32 noundef %mul.i.i225.i.i, i32 noundef 0, ptr noundef %data.i218.i.i, i32 noundef %conv.i219.i.i, i32 noundef 0) #10
  br label %ath6kl_wmi_proc_events.exit

sw.bb38.i.i:                                      ; preds = %if.end.i261.i
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.258) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp.i229.i.i = icmp ult i32 %14, 8
  br i1 %cmp.i229.i.i, label %sw.bb38.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end.i232.i.i

sw.bb38.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %sw.bb38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end.i232.i.i:                                  ; preds = %sw.bb38.i.i
  %nw_type.i230.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 17
  %600 = ptrtoint ptr %nw_type.i230.i.i to i32
  call void @__asan_load1_noabort(i32 %600)
  %601 = load i8, ptr %nw_type.i230.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %601)
  %cmp1.not.i231.i.i = icmp eq i8 %601, 1
  br i1 %cmp1.not.i231.i.i, label %lor.lhs.false.i234.i.i, label %if.end.i232.i.i.ath6kl_wmi_proc_events.exit_crit_edge

if.end.i232.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end.i232.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

lor.lhs.false.i234.i.i:                           ; preds = %if.end.i232.i.i
  %ar.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 3
  %602 = ptrtoint ptr %ar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %ar.i.i.i, align 8
  %fw_capabilities.i.i.i = getelementptr inbounds %struct.ath6kl, ptr %603, i32 0, i32 87
  %604 = ptrtoint ptr %fw_capabilities.i.i.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load volatile i32, ptr %fw_capabilities.i.i.i, align 4
  %606 = and i32 %605, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %606)
  %tobool.not.i233.i.i = icmp eq i32 %606, 0
  br i1 %tobool.not.i233.i.i, label %lor.lhs.false.i234.i.i.ath6kl_wmi_proc_events.exit_crit_edge, label %if.end4.i.i.i

lor.lhs.false.i234.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %lor.lhs.false.i234.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end4.i.i.i:                                    ; preds = %lor.lhs.false.i234.i.i
  %sme_state.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 29
  %607 = ptrtoint ptr %sme_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %sme_state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %608)
  %cmp5.not.i.i.i = icmp eq i32 %608, 2
  br i1 %cmp5.not.i.i.i, label %if.end8.i237.i.i, label %if.end4.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge

if.end4.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_wmi_proc_events.exit

if.end8.i237.i.i:                                 ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %609 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %609, i32 4)
  %610 = load i32, ptr %12, align 1
  %611 = tail call i32 @llvm.bswap.i32(i32 %610) #10
  %pkts10.i.i.i = getelementptr inbounds %struct.wmi_txe_notify_event, ptr %12, i32 0, i32 1
  %612 = ptrtoint ptr %pkts10.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %612, i32 4)
  %613 = load i32, ptr %pkts10.i.i.i, align 1
  %614 = tail call i32 @llvm.bswap.i32(i32 %613) #10
  %bssid.i235.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 18
  %txe_intvl.i.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 38
  %615 = ptrtoint ptr %txe_intvl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %txe_intvl.i.i.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.277, ptr noundef %bssid.i235.i.i, i32 noundef %611, i32 noundef %614, i32 noundef %616) #10
  %ndev.i236.i.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif.0.i.i.i, i32 0, i32 2
  %617 = ptrtoint ptr %ndev.i236.i.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %ndev.i236.i.i, align 4
  %619 = ptrtoint ptr %txe_intvl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %txe_intvl.i.i.i, align 4
  tail call void @cfg80211_cqm_txe_notify(ptr noundef %618, ptr noundef %bssid.i235.i.i, i32 noundef %614, i32 noundef %611, i32 noundef %620, i32 noundef 3264) #10
  br label %ath6kl_wmi_proc_events.exit

sw.default.i269.i:                                ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1024, ptr noundef nonnull @.str.223, i32 noundef %conv4.i) #10
  br label %ath6kl_wmi_proc_events.exit

ath6kl_wmi_proc_events.exit:                      ; preds = %sw.default.i269.i, %if.end8.i237.i.i, %if.end4.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %lor.lhs.false.i234.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end.i232.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb38.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end8.i227.i.i, %if.then6.i223.i.i, %sw.bb36.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then17.i.i.i, %lor.lhs.false.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then6.i209.i.i, %sw.bb34.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then2.i202.i.i, %if.end.i200.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb32.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end11.i.i.i, %if.then2.i189.i.i, %sw.bb30.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end3.i.i.i, %if.then2.i.i.i, %sw.bb28.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb26.i.i, %sw.bb24.i.i, %sw.bb22.i.i, %sw.bb20.i.i, %if.end.i167.i.i, %sw.bb18.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then69.i.i.i, %if.then47.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then37.critedge.i.i.i, %for.inc.14.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then13.i.i.i, %land.lhs.true.i158.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end6.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then3.i157.i.i, %sw.bb16.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb14.i.i, %sw.bb12.i.i, %for.body.i151.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then3.i147.i.i, %for.cond.preheader.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb10.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then104.i.i.i, %land.lhs.true101.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end96.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end70.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end25.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end.i134.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb8.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end.i126.i.i, %sw.bb6.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end.i123.i.i, %sw.bb4.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %while.end.i.i.i, %if.else.i.i.i, %if.then6.i.i.i, %sw.bb.i262.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then.i260.i, %if.end32.i.i, %if.end17.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then12.i248.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end9.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then2.i243.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb53.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end.i236.i, %sw.bb51.i.ath6kl_wmi_proc_events.exit_crit_edge, %for.body.i233.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb49.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb48.i, %sw.bb47.i, %sw.bb46.i, %sw.bb45.i, %if.end.i225.i, %sw.bb43.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb42.i, %if.end.i220.i, %sw.bb40.i.ath6kl_wmi_proc_events.exit_crit_edge, %for.body.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end10.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end.i216.i.ath6kl_wmi_proc_events.exit_crit_edge, %lor.lhs.false.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb38.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb37.i, %if.then143.i.i, %ath6kl_wmi_send_snr_threshold_params.exit.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb35.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb34.i, %if.end.i173.i, %sw.bb32.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb30.i, %sw.bb29.i, %sw.bb28.i, %sw.default.i.i, %sw.bb5.i.i, %if.end.i.i.i, %sw.bb.i167.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.then.i163.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %if.then209.i.i, %ath6kl_wmi_send_rssi_threshold_params.exit.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb20.i.ath6kl_wmi_proc_events.exit_crit_edge, %ath6kl_wmi_error_event_rx.exit.i, %if.end6.i.i, %if.then3.i.i, %sw.bb16.i.ath6kl_wmi_proc_events.exit_crit_edge, %ath6kl_wmi_regdomain_event.exit.i, %cleanup.sink.split.i.i, %if.end.i137.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb13.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end.i134.i, %sw.bb11.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end.i129.i, %sw.bb9.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end.i125.i, %sw.bb7.i.ath6kl_wmi_proc_events.exit_crit_edge, %if.end50.i.i, %if.then17.i.i, %land.rhs.i.i.ath6kl_wmi_proc_events.exit_crit_edge, %sw.bb.i.ath6kl_wmi_proc_events.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %sw.bb48.i ], [ 0, %sw.bb47.i ], [ 0, %sw.bb46.i ], [ 0, %sw.bb45.i ], [ 0, %sw.bb42.i ], [ 0, %sw.bb37.i ], [ 0, %sw.bb34.i ], [ 0, %sw.bb30.i ], [ 0, %sw.bb29.i ], [ 0, %sw.bb28.i ], [ %call.i.i, %sw.bb24.i ], [ 0, %sw.bb23.i ], [ 0, %sw.bb22.i ], [ 0, %ath6kl_wmi_error_event_rx.exit.i ], [ 0, %ath6kl_wmi_regdomain_event.exit.i ], [ 0, %if.end50.i.i ], [ -22, %sw.bb.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %if.then17.i.i ], [ -22, %land.rhs.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end.i125.i ], [ -22, %sw.bb7.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end.i129.i ], [ -22, %sw.bb9.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end.i134.i ], [ -22, %sw.bb11.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %sw.bb13.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end.i137.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %cleanup.sink.split.i.i ], [ -22, %if.then3.i.i ], [ 0, %if.end6.i.i ], [ -22, %sw.bb16.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -5, %if.then209.i.i ], [ -22, %sw.bb20.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %ath6kl_wmi_send_rssi_threshold_params.exit.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %if.then.i163.i ], [ -22, %sw.default.i.i ], [ 0, %sw.bb5.i.i ], [ 0, %sw.bb.i167.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end.i.i.i ], [ 0, %if.end.i173.i ], [ -22, %sw.bb32.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -5, %if.then143.i.i ], [ -22, %sw.bb35.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %ath6kl_wmi_send_snr_threshold_params.exit.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %lor.lhs.false.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %sw.bb38.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %if.end.i216.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end10.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end.i220.i ], [ -22, %sw.bb40.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %sw.bb43.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ %..i.i, %if.end.i225.i ], [ 0, %sw.bb49.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end.i236.i ], [ -22, %sw.bb51.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %sw.bb53.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end9.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end32.i.i ], [ -22, %if.then2.i243.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %if.then12.i248.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %if.end17.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %sw.default.i269.i ], [ 0, %sw.bb26.i.i ], [ 0, %sw.bb24.i.i ], [ 0, %sw.bb22.i.i ], [ 0, %sw.bb20.i.i ], [ 0, %sw.bb14.i.i ], [ 0, %sw.bb12.i.i ], [ -22, %if.then.i260.i ], [ 0, %while.end.i.i.i ], [ -22, %sw.bb.i262.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.else.i.i.i ], [ 0, %if.then6.i.i.i ], [ 0, %if.end.i123.i.i ], [ -22, %sw.bb4.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end.i126.i.i ], [ -22, %sw.bb6.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %sw.bb8.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end.i134.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %if.end25.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -12, %if.end70.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.then104.i.i.i ], [ 0, %land.lhs.true101.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end96.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %if.then3.i147.i.i ], [ -22, %sw.bb10.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %if.then3.i157.i.i ], [ -22, %sw.bb16.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.then37.critedge.i.i.i ], [ 0, %if.then47.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.then69.i.i.i ], [ 0, %if.then13.i.i.i ], [ 0, %land.lhs.true.i158.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end6.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %for.inc.14.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end.i167.i.i ], [ -22, %sw.bb18.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end3.i.i.i ], [ -22, %if.then2.i.i.i ], [ -22, %sw.bb28.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end11.i.i.i ], [ -22, %if.then2.i189.i.i ], [ -22, %sw.bb30.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %sw.bb32.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.then2.i202.i.i ], [ 0, %if.end.i200.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %if.then6.i209.i.i ], [ -22, %sw.bb34.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.then17.i.i.i ], [ 0, %lor.lhs.false.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -22, %if.then6.i223.i.i ], [ 0, %if.end8.i227.i.i ], [ -22, %sw.bb36.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %if.end8.i237.i.i ], [ -22, %sw.bb38.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -95, %lor.lhs.false.i234.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -95, %if.end.i232.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ -107, %if.end4.i.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %for.body.i151.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %for.body.i.i.ath6kl_wmi_proc_events.exit_crit_edge ], [ 0, %for.body.i233.i.ath6kl_wmi_proc_events.exit_crit_edge ]
  call void @consume_skb(ptr noundef nonnull %skb) #10
  br label %return

return:                                           ; preds = %ath6kl_wmi_proc_events.exit, %if.then23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then23 ], [ %ret.0.i, %ath6kl_wmi_proc_events.exit ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath6kl_wmi_event(ptr noundef %buf, i32 noundef %buf_len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_wmi_event, i32 0, i32 1), ptr blockaddress(@trace_ath6kl_wmi_event, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !590

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !577) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !589

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !577) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !591
  %call42 = tail call i32 @__traceiter_ath6kl_wmi_event(ptr noundef null, ptr noundef %buf, i32 noundef %buf_len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !592
  %13 = tail call i32 @llvm.read_register.i32(metadata !577) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !577) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !589

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !577) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !593
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_wmi_event, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_wmi_event, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath6kl_wmi_event.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ath6kl_wmi_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 83, ptr noundef nonnull @.str.40) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !594
  %31 = tail call i32 @llvm.read_register.i32(metadata !577) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_wmi_reset(ptr noundef %wmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %fat_pipe_exist = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 1
  %0 = ptrtoint ptr %fat_pipe_exist to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %fat_pipe_exist, align 4
  %1 = ptrtoint ptr %wmi to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %wmi, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath6kl_wmi_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 164) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @ath6kl_wmi_init.__key, i16 noundef signext 3) #10
  %parent_dev = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %parent_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %parent_dev, align 4
  %pwr_mode = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %pwr_mode, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %fat_pipe_exist.i = getelementptr inbounds %struct.wmi, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fat_pipe_exist.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fat_pipe_exist.i, align 8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %call7.i.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_wmi_shutdown(ptr noundef %wmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wmi, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last_mgmt_tx_frame = getelementptr inbounds %struct.wmi, ptr %wmi, i32 0, i32 10
  %0 = ptrtoint ptr %last_mgmt_tx_frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_mgmt_tx_frame, align 4
  tail call void @kfree(ptr noundef %1) #10
  tail call void @kfree(ptr noundef nonnull %wmi) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_buf_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath6kl_wmi_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_wakeup_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_txpwr_rx_evt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_ready_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_debug_roam_tbl_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_debug_fwlog_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_recovery_hb_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_tm_rx_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_connect_ap_mode_bss(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_connect_ap_mode_sta(ptr noundef, i16 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_connect_event(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_disconnect_event(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_tkip_micerr_event(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_pmksa_candidate_notify(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_scan_complete_evt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_tgt_stats_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_pspoll_event(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dtimexpiry_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aggr_recv_addba_req_evt(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aggr_recv_delba_req_evt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ready_on_channel(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cqm_txe_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 284)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 284)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575}
!llvm.named.register.sp = !{!577}
!llvm.module.flags = !{!578, !579, !580, !581, !582, !583, !584, !585}
!llvm.ident = !{!586}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 125, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 181, i32 7}
!4 = !{ptr @__func__.ath6kl_wmi_dix_2_dot3, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 181, i32 47}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 797, i32 29}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 849, i32 29}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1796, i32 29}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1798, i32 45}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1863, i32 6}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1867, i32 40}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1914, i32 29}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1939, i32 29}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2091, i32 29}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2092, i32 15}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2092, i32 28}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2315, i32 6}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2576, i32 7}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2589, i32 6}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2640, i32 14}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2645, i32 14}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2664, i32 7}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2670, i32 6}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2890, i32 14}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2935, i32 14}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3210, i32 6}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3262, i32 15}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3406, i32 6}
!52 = !{ptr @__func__.ath6kl_wmi_ap_profile_commit, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3407, i32 6}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3427, i32 29}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3567, i32 6}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3590, i32 29}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3612, i32 29}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3630, i32 29}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3762, i32 6}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3783, i32 29}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3800, i32 29}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3810, i32 29}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4128, i32 14}
!74 = !{ptr @ath6kl_wmi_init.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4156, i32 2}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @up_to_ac, !78, !"up_to_ac", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 112, i32 17}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2794, i32 6}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 2844, i32 6}
!83 = !{ptr @wmi_rate_tbl_mcs15, !84, !"wmi_rate_tbl_mcs15", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 62, i32 18}
!85 = !{ptr @wmi_rate_tbl, !86, !"wmi_rate_tbl", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 29, i32 18}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3707, i32 6}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath6kl/trace.h", i32 62, i32 1}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!93 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!96 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3990, i32 29}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3991, i32 45}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3996, i32 30}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4000, i32 30}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4004, i32 30}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4008, i32 30}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4012, i32 30}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4016, i32 30}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4020, i32 30}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4024, i32 30}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4028, i32 30}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4032, i32 30}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4035, i32 30}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4039, i32 30}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4043, i32 30}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4047, i32 30}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4050, i32 30}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4053, i32 30}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4057, i32 30}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4061, i32 30}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4064, i32 30}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4068, i32 30}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4071, i32 30}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4075, i32 30}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4079, i32 30}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4082, i32 30}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4086, i32 30}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4089, i32 30}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4093, i32 7}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4097, i32 7}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4100, i32 30}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4104, i32 30}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 4108, i32 30}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1211, i32 29}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1215, i32 7}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1055, i32 30}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1058, i32 30}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1002, i32 31}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1005, i32 16}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1015, i32 30}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 302, i32 26}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 303, i32 28}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 304, i32 30}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 305, i32 30}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 306, i32 31}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 307, i32 30}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 308, i32 28}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 309, i32 31}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 311, i32 30}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 312, i32 33}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 313, i32 29}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 314, i32 29}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 315, i32 32}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 316, i32 30}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 317, i32 30}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 318, i32 30}
!209 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 319, i32 31}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 320, i32 28}
!213 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 321, i32 28}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 322, i32 29}
!217 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 323, i32 34}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 324, i32 28}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 325, i32 39}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 326, i32 31}
!225 = !{ptr @.str.105, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 327, i32 31}
!227 = !{ptr @.str.106, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 328, i32 27}
!229 = !{ptr @.str.107, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 330, i32 27}
!231 = !{ptr @.str.108, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 331, i32 27}
!233 = !{ptr @.str.109, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 333, i32 32}
!235 = !{ptr @.str.110, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 334, i32 30}
!237 = !{ptr @.str.111, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 335, i32 29}
!239 = !{ptr @.str.112, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 336, i32 28}
!241 = !{ptr @.str.113, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 337, i32 30}
!243 = !{ptr @.str.114, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 338, i32 39}
!245 = !{ptr @.str.115, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 339, i32 29}
!247 = !{ptr @.str.116, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 340, i32 28}
!249 = !{ptr @.str.117, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 341, i32 33}
!251 = !{ptr @.str.118, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 342, i32 30}
!253 = !{ptr @.str.119, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 343, i32 30}
!255 = !{ptr @.str.120, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 344, i32 29}
!257 = !{ptr @.str.121, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 345, i32 30}
!259 = !{ptr @.str.122, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 346, i32 30}
!261 = !{ptr @.str.123, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 347, i32 29}
!263 = !{ptr @.str.124, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 348, i32 32}
!265 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 349, i32 28}
!267 = !{ptr @.str.126, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 350, i32 25}
!269 = !{ptr @.str.127, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 351, i32 30}
!271 = !{ptr @.str.128, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 352, i32 28}
!273 = !{ptr @.str.129, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 353, i32 30}
!275 = !{ptr @.str.130, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 354, i32 31}
!277 = !{ptr @.str.131, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 355, i32 30}
!279 = !{ptr @.str.132, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 356, i32 30}
!281 = !{ptr @.str.133, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 357, i32 27}
!283 = !{ptr @.str.134, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 358, i32 32}
!285 = !{ptr @.str.135, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 359, i32 26}
!287 = !{ptr @.str.136, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 360, i32 30}
!289 = !{ptr @.str.137, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 361, i32 29}
!291 = !{ptr @.str.138, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 362, i32 28}
!293 = !{ptr @.str.139, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 363, i32 29}
!295 = !{ptr @.str.140, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 365, i32 26}
!297 = !{ptr @.str.141, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 424, i32 29}
!299 = !{ptr @.str.142, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 425, i32 33}
!301 = !{ptr @.str.143, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 426, i32 27}
!303 = !{ptr @.str.144, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 427, i32 33}
!305 = !{ptr @.str.145, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 428, i32 31}
!307 = !{ptr @.str.146, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 429, i32 32}
!309 = !{ptr @.str.147, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 430, i32 32}
!311 = !{ptr @.str.148, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 431, i32 33}
!313 = !{ptr @.str.149, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 432, i32 29}
!315 = !{ptr @.str.150, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 433, i32 29}
!317 = !{ptr @.str.151, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 434, i32 30}
!319 = !{ptr @.str.152, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 435, i32 36}
!321 = !{ptr @.str.153, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 436, i32 32}
!323 = !{ptr @.str.154, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 437, i32 33}
!325 = !{ptr @.str.155, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 438, i32 27}
!327 = !{ptr @.str.156, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 439, i32 32}
!329 = !{ptr @.str.157, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 440, i32 30}
!331 = !{ptr @.str.158, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 441, i32 28}
!333 = !{ptr @.str.159, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 442, i32 32}
!335 = !{ptr @.str.160, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 443, i32 27}
!337 = !{ptr @.str.161, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 444, i32 29}
!339 = !{ptr @.str.162, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 445, i32 33}
!341 = !{ptr @.str.163, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 446, i32 29}
!343 = !{ptr @.str.164, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 447, i32 27}
!345 = !{ptr @.str.165, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 448, i32 34}
!347 = !{ptr @.str.166, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 449, i32 43}
!349 = !{ptr @.str.167, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 450, i32 33}
!351 = !{ptr @.str.168, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 451, i32 30}
!353 = !{ptr @.str.169, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 452, i32 29}
!355 = !{ptr @.str.170, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 453, i32 26}
!357 = !{ptr @.str.171, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 454, i32 31}
!359 = !{ptr @.str.172, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 455, i32 27}
!361 = !{ptr @.str.173, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 456, i32 38}
!363 = !{ptr @.str.174, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 457, i32 30}
!365 = !{ptr @.str.175, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 458, i32 26}
!367 = !{ptr @.str.176, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 459, i32 33}
!369 = !{ptr @.str.177, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 460, i32 29}
!371 = !{ptr @.str.178, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 461, i32 31}
!373 = !{ptr @.str.179, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 462, i32 32}
!375 = !{ptr @.str.180, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 463, i32 27}
!377 = !{ptr @.str.181, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 464, i32 30}
!379 = !{ptr @.str.182, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 465, i32 29}
!381 = !{ptr @.str.183, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 466, i32 35}
!383 = !{ptr @.str.184, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 467, i32 29}
!385 = !{ptr @.str.185, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 468, i32 40}
!387 = !{ptr @.str.186, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 469, i32 31}
!389 = !{ptr @.str.187, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 470, i32 31}
!391 = !{ptr @.str.188, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 471, i32 31}
!393 = !{ptr @.str.189, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 472, i32 34}
!395 = !{ptr @.str.190, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 473, i32 28}
!397 = !{ptr @.str.191, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 474, i32 31}
!399 = !{ptr @.str.192, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 475, i32 29}
!401 = !{ptr @.str.193, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 476, i32 34}
!403 = !{ptr @.str.194, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 477, i32 28}
!405 = !{ptr @.str.195, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 478, i32 27}
!407 = !{ptr @.str.196, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 479, i32 30}
!409 = !{ptr @.str.197, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 480, i32 30}
!411 = !{ptr @.str.198, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 481, i32 39}
!413 = !{ptr @.str.199, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 482, i32 30}
!415 = !{ptr @.str.200, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 483, i32 29}
!417 = !{ptr @.str.201, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 484, i32 28}
!419 = !{ptr @.str.202, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 485, i32 30}
!421 = !{ptr @.str.203, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 486, i32 26}
!423 = !{ptr @.str.204, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 487, i32 37}
!425 = !{ptr @.str.205, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 488, i32 34}
!427 = !{ptr @.str.206, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 494, i32 40}
!429 = !{ptr @.str.207, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 495, i32 29}
!431 = !{ptr @.str.208, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 496, i32 31}
!433 = !{ptr @.str.209, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 497, i32 31}
!435 = !{ptr @.str.210, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 498, i32 31}
!437 = !{ptr @.str.211, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 499, i32 28}
!439 = !{ptr @.str.212, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 500, i32 31}
!441 = !{ptr @allCountries, !442, !"allCountries", i1 false, i1 false}
!442 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 301, i32 39}
!443 = !{ptr @regDomainPairs, !444, !"regDomainPairs", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/ath/ath6kl/../regd_common.h", i32 165, i32 36}
!445 = !{ptr @.str.213, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1325, i32 21}
!447 = !{ptr @.str.214, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1331, i32 10}
!449 = !{ptr @.str.215, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1334, i32 10}
!451 = !{ptr @.str.216, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1337, i32 10}
!453 = !{ptr @.str.217, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1341, i32 29}
!455 = !{ptr @.str.218, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1437, i32 8}
!457 = !{ptr @.str.219, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1461, i32 8}
!459 = !{ptr @.str.220, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1497, i32 14}
!461 = !{ptr @.str.221, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3868, i32 30}
!463 = !{ptr @.str.222, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3872, i32 30}
!465 = !{ptr @.str.223, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3876, i32 15}
!467 = !{ptr @.str.224, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1691, i32 8}
!469 = !{ptr @.str.225, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1709, i32 8}
!471 = !{ptr @.str.226, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1738, i32 6}
!473 = !{ptr @.str.227, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1744, i32 14}
!475 = !{ptr @.str.228, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1766, i32 6}
!477 = !{ptr @.str.229, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1774, i32 30}
!479 = !{ptr @.str.230, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 487, i32 29}
!481 = !{ptr @.str.231, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 495, i32 30}
!483 = !{ptr @.str.232, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 637, i32 29}
!485 = !{ptr @.str.233, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 678, i32 29}
!487 = !{ptr @.str.234, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 685, i32 30}
!489 = !{ptr @.str.235, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 694, i32 30}
!491 = !{ptr @.str.236, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 703, i32 30}
!493 = !{ptr @.str.237, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 705, i32 24}
!495 = !{ptr @.str.238, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 705, i32 33}
!497 = !{ptr @.str.239, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3898, i32 7}
!499 = !{ptr @.str.240, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3905, i32 30}
!501 = !{ptr @.str.241, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3908, i32 30}
!503 = !{ptr @.str.242, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3911, i32 30}
!505 = !{ptr @.str.243, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3914, i32 30}
!507 = !{ptr @.str.244, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3917, i32 30}
!509 = !{ptr @.str.245, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3921, i32 30}
!511 = !{ptr @.str.246, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3924, i32 30}
!513 = !{ptr @.str.247, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3927, i32 30}
!515 = !{ptr @.str.248, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3930, i32 30}
!517 = !{ptr @.str.249, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3933, i32 30}
!519 = !{ptr @.str.250, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3936, i32 30}
!521 = !{ptr @.str.251, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3939, i32 30}
!523 = !{ptr @.str.252, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3943, i32 7}
!525 = !{ptr @.str.253, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3946, i32 30}
!527 = !{ptr @.str.254, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3950, i32 7}
!529 = !{ptr @.str.255, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3954, i32 30}
!531 = !{ptr @.str.256, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3957, i32 30}
!533 = !{ptr @.str.257, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3960, i32 30}
!535 = !{ptr @.str.258, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 3963, i32 30}
!537 = !{ptr @.str.259, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 870, i32 8}
!539 = !{ptr @__func__.ath6kl_wmi_connect_event_rx, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 871, i32 8}
!541 = !{ptr @.str.260, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 877, i32 8}
!543 = !{ptr @.str.261, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 899, i32 6}
!545 = !{ptr @.str.262, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1032, i32 6}
!547 = !{ptr @.str.263, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1103, i32 6}
!549 = distinct !{null, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!551 = !{ptr @.str.265, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1298, i32 7}
!553 = !{ptr @.str.266, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1303, i32 30}
!555 = !{ptr @.str.267, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1518, i32 14}
!557 = !{ptr @.str.268, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 519, i32 29}
!559 = !{ptr @.str.269, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 524, i32 7}
!561 = !{ptr @.str.270, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 553, i32 6}
!563 = !{ptr @.str.271, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 558, i32 7}
!565 = !{ptr @.str.272, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 584, i32 29}
!567 = !{ptr @.str.273, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 613, i32 14}
!569 = !{ptr @.str.274, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 618, i32 6}
!571 = !{ptr @.str.275, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 656, i32 14}
!573 = !{ptr @.str.276, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 660, i32 29}
!575 = !{ptr @.str.277, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/net/wireless/ath/ath6kl/wmi.c", i32 1598, i32 29}
!577 = !{!"sp"}
!578 = !{i32 1, !"wchar_size", i32 2}
!579 = !{i32 1, !"min_enum_size", i32 4}
!580 = !{i32 8, !"branch-target-enforcement", i32 0}
!581 = !{i32 8, !"sign-return-address", i32 0}
!582 = !{i32 8, !"sign-return-address-all", i32 0}
!583 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!584 = !{i32 7, !"uwtable", i32 1}
!585 = !{i32 7, !"frame-pointer", i32 2}
!586 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!587 = !{!"branch_weights", i32 1, i32 2000}
!588 = !{i8 0, i8 2}
!589 = !{!"branch_weights", i32 2000, i32 1}
!590 = !{i64 2148940520, i64 2148940525, i64 2148940538, i64 2148940582, i64 2148940616, i64 2148940637}
!591 = !{i64 2157393077}
!592 = !{i64 2157393296}
!593 = !{i64 2149763901}
!594 = !{i64 2149764937}
