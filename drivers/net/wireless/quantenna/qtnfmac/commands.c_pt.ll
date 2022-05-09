; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/quantenna/qtnfmac/commands.c_pt.bc'
source_filename = "../drivers/net/wireless/quantenna/qtnfmac/commands.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cfg80211_ap_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, i32, i32, ptr, i32, i32, %struct.cfg80211_crypto_settings, i8, i32, i32, i32, i8, i8, ptr, i8, %struct.cfg80211_bitrate_mask, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.cfg80211_fils_discovery, %struct.cfg80211_unsol_bcast_probe_resp, %struct.cfg80211_mbssid_config }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.154] }
%struct.anon.154 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.cfg80211_fils_discovery = type { i32, i32, i32, ptr }
%struct.cfg80211_unsol_bcast_probe_resp = type { i32, i32, ptr }
%struct.cfg80211_mbssid_config = type { ptr, i8, i8 }
%struct.cfg80211_acl_data = type { i32, i32, [0 x %struct.mac_address] }
%struct.mac_address = type { [6 x i8] }
%struct.qtnf_vif = type { %struct.wireless_dev, [6 x i8], [6 x i8], i8, i8, i8, i16, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.qtnf_sta_list, i32, i32 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.151, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.151 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.152 }
%union.anon.152 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.qtnf_sta_list = type { %struct.list_head, %struct.atomic_t }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.qlink_msg_header = type { i16, i16 }
%struct.qlink_cmd = type { %struct.qlink_msg_header, i16, i16, i8, i8, [2 x i8] }
%struct.qlink_cmd_start_ap = type { %struct.qlink_cmd, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, %struct.qlink_auth_encr, %struct.qlink_sr_params, i8, [3 x i8], [0 x i8] }
%struct.qlink_auth_encr = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i16, i8, i8, i8, i8, [2 x i8] }
%struct.qlink_sr_params = type { i8, i8, i8, i8 }
%struct.qlink_tlv_hdr = type { i16, i16, [0 x i8] }
%struct.qlink_tlv_chandef = type { %struct.qlink_tlv_hdr, %struct.qlink_chandef }
%struct.qlink_chandef = type { %struct.qlink_channel, i16, i16, i8, [3 x i8] }
%struct.qlink_channel = type { i16, i16, i32, i8, i8, i8, i8, i32, i8, i8, [2 x i8] }
%struct.qlink_tlv_ie_set = type { %struct.qlink_tlv_hdr, i8, i8, [2 x i8], [0 x i8] }
%struct.qlink_tlv_ext_ie = type { %struct.qlink_tlv_hdr, i8, [3 x i8], [0 x i8] }
%struct.qtnf_wmac = type { i8, i8, [6 x i8], ptr, %struct.qtnf_mac_info, [8 x %struct.qtnf_vif], ptr, %struct.mutex, %struct.delayed_work, ptr, ptr }
%struct.qtnf_mac_info = type <{ i8, i8, i8, i8, i16, [2 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [2 x i8], ptr, i32, ptr, ptr, i8, [3 x i8], ptr }>
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.qlink_cmd_mgmt_frame_register = type { %struct.qlink_cmd, i16, i8, [1 x i8] }
%struct.qlink_cmd_frame_tx = type { %struct.qlink_cmd, i32, i16, i16, [0 x i8] }
%struct.qlink_cmd_get_sta_info = type { %struct.qlink_cmd, [6 x i8], [2 x i8] }
%struct.qlink_resp_get_sta_info = type { %struct.qlink_resp, [6 x i8], [2 x i8], [0 x i8] }
%struct.qlink_resp = type { %struct.qlink_msg_header, i16, i16, i16, i8, i8 }
%struct.qlink_sta_stats = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qlink_sta_info_state, %struct.qlink_sta_info_rate, %struct.qlink_sta_info_rate, i16, i16, i8, i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct.qlink_sta_info_state = type { i32, i32 }
%struct.qlink_sta_info_rate = type { i16, i8, i8, i8, i8 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.qlink_cmd_manage_intf = type { %struct.qlink_cmd, %struct.qlink_intf_info }
%struct.qlink_intf_info = type { i16, i16, [6 x i8], i8, [1 x i8] }
%struct.qlink_resp_manage_intf = type { %struct.qlink_resp, %struct.qlink_intf_info }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.qlink_cmd_band_info_get = type { %struct.qlink_cmd, i8, [3 x i8] }
%struct.qlink_resp_band_info_get = type { %struct.qlink_resp, i8, i8, i8, [1 x i8], [0 x i8] }
%struct.qlink_resp_get_mac_info = type { %struct.qlink_resp, [6 x i8], i8, i8, %struct.ieee80211_vht_cap, %struct.ieee80211_ht_cap, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.ieee80211_regdomain = type { %struct.callback_head, i32, [3 x i8], i32, [0 x %struct.ieee80211_reg_rule] }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }
%struct.qlink_iface_limit_record = type { i16, i8, i8, [0 x %struct.qlink_iface_limit] }
%struct.qlink_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.qlink_resp_get_hw_info = type { %struct.qlink_resp, i32, i32, i32, i32, i8, i8, i8, i8, [0 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.qlink_tlv_iftype_data = type { %struct.qlink_tlv_hdr, i8, [3 x i8], [0 x %struct.qlink_sband_iftype_data] }
%struct.qlink_sband_iftype_data = type <{ i16, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.148 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.148 = type { ptr, i32 }
%struct.qlink_cmd_init_fw = type { %struct.qlink_cmd, i32, [0 x i8] }
%struct.qlink_resp_init_fw = type { %struct.qlink_resp, i32 }
%struct.qlink_cmd_add_key = type { %struct.qlink_cmd, i8, i8, [6 x i8], i32, i16, [2 x i8], [0 x i8] }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.qlink_cmd_del_key = type { %struct.qlink_cmd, i8, i8, [6 x i8] }
%struct.qlink_cmd_set_def_key = type { %struct.qlink_cmd, i8, i8, i8, [1 x i8] }
%struct.qlink_cmd_set_def_mgmt_key = type { %struct.qlink_cmd, i8, [3 x i8] }
%struct.qlink_cmd_change_sta = type { %struct.qlink_cmd, %struct.qlink_sta_info_state, i16, i16, [6 x i8], [2 x i8] }
%struct.station_parameters = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, i8, i8, i32, i16, ptr, i8, ptr, i8, ptr, i8, i8, i8, i32, ptr, i8, i16, %struct.sta_txpwr, ptr }
%struct.sta_txpwr = type { i16, i32 }
%struct.qlink_cmd_del_sta = type { %struct.qlink_cmd, i16, [6 x i8], i8, [3 x i8] }
%struct.station_del_parameters = type { ptr, i8, i16 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.qlink_cmd_scan = type <{ %struct.qlink_cmd, i64, i16, i16, i16, i16, i16, [6 x i8], i8, [3 x i8], [0 x i8] }>
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.qlink_tlv_channel = type { %struct.qlink_tlv_hdr, %struct.qlink_channel }
%struct.qlink_cmd_connect = type { %struct.qlink_cmd, [6 x i8], [6 x i8], [6 x i8], i16, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, %struct.qlink_auth_encr, i8, i8, [2 x i8], [0 x i8] }
%struct.qlink_cmd_external_auth = type { %struct.qlink_cmd, [6 x i8], i16, [0 x i8] }
%struct.cfg80211_external_auth_params = type { i32, [6 x i8], %struct.cfg80211_ssid, i32, i16, ptr }
%struct.qlink_cmd_disconnect = type { %struct.qlink_cmd, i16, [2 x i8] }
%struct.qlink_cmd_updown = type { %struct.qlink_cmd, i8, [3 x i8] }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.qlink_cmd_reg_notify = type { %struct.qlink_cmd, [2 x i8], i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.150, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.150 = type { i64, i64, i8 }
%struct.qlink_cmd_get_chan_stats = type { %struct.qlink_cmd, i32 }
%struct.qlink_resp_get_chan_stats = type { %struct.qlink_resp, i32, [0 x i8] }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.qlink_chan_stats = type <{ i64, i64, i64, i64, i64, i64, i8, [3 x i8] }>
%struct.cfg80211_csa_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, ptr, ptr, i32, i32, %struct.cfg80211_beacon_data, i8, i8, i8 }
%struct.qlink_cmd_chan_switch = type <{ %struct.qlink_cmd, %struct.qlink_chandef, i64, i32, i32, i8, [3 x i8] }>
%struct.qlink_resp_channel_get = type { %struct.qlink_resp, %struct.qlink_chandef }
%struct.qlink_cmd_start_cac = type { %struct.qlink_cmd, %struct.qlink_chandef, i32 }
%struct.qlink_cmd_pm_set = type { %struct.qlink_cmd, i32, i8, [3 x i8] }
%struct.qlink_cmd_txpwr = type { %struct.qlink_cmd, i32, i8, i8, [2 x i8] }
%struct.qlink_resp_txpwr = type { %struct.qlink_resp, i32 }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.cfg80211_pkt_pattern = type { ptr, ptr, i32, i32 }
%struct.qlink_cmd_wowlan_set = type { %struct.qlink_cmd, i32, [0 x i8] }
%struct.qlink_cmd_ndev_event = type { %struct.qlink_cmd, i16, [2 x i8] }
%struct.qlink_cmd_ndev_changeupper = type <{ %struct.qlink_cmd_ndev_event, i64, i32, i32, i16, i8, [1 x i8] }>
%struct.cfg80211_update_owe_info = type { [6 x i8], i16, ptr, i32 }
%struct.qlink_cmd_update_owe = type { %struct.qlink_cmd, [6 x i8], i16, [0 x i8] }

@qtnf_cmd_send_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014qtnfmac: %s: VIF%u.%u: frame is too big: %zu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qtnf_cmd_send_frame\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/wireless/quantenna/qtnfmac/commands.c\00", [46 x i8] zeroinitializer }, align 32
@qtnf_cmd_send_frame._entry_ptr = internal global ptr @qtnf_cmd_send_frame._entry, section ".printk_index", align 4
@qtnf_cmd_send_mgmt_set_appie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014qtnfmac: %s: VIF%u.%u: %u frame is too big: %zu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qtnf_cmd_send_mgmt_set_appie\00", [35 x i8] zeroinitializer }, align 32
@qtnf_cmd_send_mgmt_set_appie._entry_ptr = internal global ptr @qtnf_cmd_send_mgmt_set_appie._entry, section ".printk_index", align 4
@qtnf_cmd_get_sta_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013qtnfmac: %s: VIF%u.%u: wrong mac in reply: %pM != %pM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qtnf_cmd_get_sta_info\00", [42 x i8] zeroinitializer }, align 32
@qtnf_cmd_get_sta_info._entry_ptr = internal global ptr @qtnf_cmd_get_sta_info._entry, section ".printk_index", align 4
@qtnf_cmd_send_del_intf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014qtnfmac: %s: VIF%u.%u: unsupported iftype %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qtnf_cmd_send_del_intf\00", [41 x i8] zeroinitializer }, align 32
@qtnf_cmd_send_del_intf._entry_ptr = internal global ptr @qtnf_cmd_send_del_intf._entry, section ".printk_index", align 4
@qtnf_cmd_band_info_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013qtnfmac: %s: MAC%u: reply band %u != cmd band %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qtnf_cmd_band_info_get\00", [41 x i8] zeroinitializer }, align 32
@qtnf_cmd_band_info_get._entry_ptr = internal global ptr @qtnf_cmd_band_info_get._entry, section ".printk_index", align 4
@qtnf_cmd_send_change_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013qtnfmac: %s: unsupported iftype %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qtnf_cmd_send_change_sta\00", [39 x i8] zeroinitializer }, align 32
@qtnf_cmd_send_change_sta._entry_ptr = internal global ptr @qtnf_cmd_send_change_sta._entry, section ".printk_index", align 4
@qtnf_cmd_send_scan.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 1, i8 -4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qtnfmac\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qtnf_cmd_send_scan\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[MAC%u] scan chan=%d, freq=%d, flags=%#x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"qtnfmac: %s: [MAC%u] scan chan=%d, freq=%d, flags=%#x\0A\00", [41 x i8] zeroinitializer }, align 32
@qtnf_cmd_send_scan.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 2, i8 1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[MAC%u] %s scan dwell active=%u passive=%u duration=%u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"qtnfmac: %s: [MAC%u] %s scan dwell active=%u passive=%u duration=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mandatory\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@qtnf_cmd_send_scan.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.21, i8 2, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[MAC%u] scan with random addr=%pM, mask=%pM\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"qtnfmac: %s: [MAC%u] scan with random addr=%pM, mask=%pM\0A\00", [38 x i8] zeroinitializer }, align 32
@qtnf_cmd_get_chan_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 2436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013qtnfmac: %s: [MAC%u] channel stats freq %u != requested %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qtnf_cmd_get_chan_stats\00", [40 x i8] zeroinitializer }, align 32
@qtnf_cmd_get_chan_stats._entry_ptr = internal global ptr @qtnf_cmd_get_chan_stats._entry, section ".printk_index", align 4
@qtnf_cmd_netdev_changeupper.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 2, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qtnf_cmd_netdev_changeupper\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[VIF%u.%u] set broadcast domain to %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"qtnfmac: %s: [VIF%u.%u] set broadcast domain to %d\0A\00", [44 x i8] zeroinitializer }, align 32
@qtnf_cmd_netdev_changeupper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 2729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013qtnfmac: %s: [VIF%u.%u] failed to set broadcast domain\0A\00", [38 x i8] zeroinitializer }, align 32
@qtnf_cmd_netdev_changeupper._entry_ptr = internal global ptr @qtnf_cmd_netdev_changeupper._entry, section ".printk_index", align 4
@qtnf_cmd_send_update_owe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 2743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014qtnfmac: %s: VIF%u.%u: OWE update IEs too big: %zu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qtnf_cmd_send_update_owe\00", [39 x i8] zeroinitializer }, align 32
@qtnf_cmd_send_update_owe._entry_ptr = internal global ptr @qtnf_cmd_send_update_owe._entry, section ".printk_index", align 4
@qtnf_cmd_start_ap_can_fit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013qtnfmac: %s: VIF%u.%u: can not fit AP settings: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qtnf_cmd_start_ap_can_fit\00", [38 x i8] zeroinitializer }, align 32
@qtnf_cmd_start_ap_can_fit._entry_ptr = internal global ptr @qtnf_cmd_start_ap_can_fit._entry, section ".printk_index", align 4
@qtnf_cmd_alloc_new_cmdskb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013qtnfmac: %s: VIF%u.%u CMD %u: alloc failed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qtnf_cmd_alloc_new_cmdskb\00", [38 x i8] zeroinitializer }, align 32
@qtnf_cmd_alloc_new_cmdskb._entry_ptr = internal global ptr @qtnf_cmd_alloc_new_cmdskb._entry, section ".printk_index", align 4
@qtnf_cmd_send_with_reply.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qtnf_cmd_send_with_reply\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VIF%u.%u cmd=0x%.4X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qtnfmac: %s: VIF%u.%u cmd=0x%.4X\0A\00", [62 x i8] zeroinitializer }, align 32
@qtnf_cmd_send_with_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014qtnfmac: %s: VIF%u.%u: drop cmd 0x%.4X in fw state %d\0A\00", [39 x i8] zeroinitializer }, align 32
@qtnf_cmd_send_with_reply._entry_ptr = internal global ptr @qtnf_cmd_send_with_reply._entry, section ".printk_index", align 4
@qtnf_cmd_send_with_reply._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014qtnfmac: %s: VIF%u.%u: cmd 0x%.4X failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@qtnf_cmd_send_with_reply._entry_ptr.41 = internal global ptr @qtnf_cmd_send_with_reply._entry.39, section ".printk_index", align 4
@qtnf_cmd_check_reply_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014qtnfmac: %s: VIF%u.%u CMD%x: bad cmd_id in response: 0x%.4X\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qtnf_cmd_check_reply_header\00", [36 x i8] zeroinitializer }, align 32
@qtnf_cmd_check_reply_header._entry_ptr = internal global ptr @qtnf_cmd_check_reply_header._entry, section ".printk_index", align 4
@qtnf_cmd_check_reply_header._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014qtnfmac: %s: VIF%u.%u CMD%x: bad MAC in response: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@qtnf_cmd_check_reply_header._entry_ptr.46 = internal global ptr @qtnf_cmd_check_reply_header._entry.44, section ".printk_index", align 4
@qtnf_cmd_check_reply_header._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014qtnfmac: %s: VIF%u.%u CMD%x: bad VIF in response: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@qtnf_cmd_check_reply_header._entry_ptr.49 = internal global ptr @qtnf_cmd_check_reply_header._entry.47, section ".printk_index", align 4
@qtnf_cmd_check_reply_header._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014qtnfmac: %s: VIF%u.%u CMD%x: bad response size %u < %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@qtnf_cmd_check_reply_header._entry_ptr.52 = internal global ptr @qtnf_cmd_check_reply_header._entry.50, section ".printk_index", align 4
@qtnf_cmd_sta_info_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013qtnfmac: %s: Malformed TLV buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qtnf_cmd_sta_info_parse\00", [40 x i8] zeroinitializer }, align 32
@qtnf_cmd_sta_info_parse._entry_ptr = internal global ptr @qtnf_cmd_sta_info_parse._entry, section ".printk_index", align 4
@qtnf_cmd_send_add_change_intf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013qtnfmac: %s: VIF%u.%u: unsupported type %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qtnf_cmd_send_add_change_intf\00", [34 x i8] zeroinitializer }, align 32
@qtnf_cmd_send_add_change_intf._entry_ptr = internal global ptr @qtnf_cmd_send_add_change_intf._entry, section ".printk_index", align 4
@qtnf_cmd_resp_proc_mac_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013qtnfmac: %s: could not get valid base vif\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qtnf_cmd_resp_proc_mac_info\00", [36 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_proc_mac_info._entry_ptr = internal global ptr @qtnf_cmd_resp_proc_mac_info._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qtnf_parse_variable_mac_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014qtnfmac: %s: MAC%u: no combinations advertised\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qtnf_parse_variable_mac_info\00", [35 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry_ptr = internal global ptr @qtnf_parse_variable_mac_info._entry, section ".printk_index", align 4
@qtnf_parse_variable_mac_info._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014qtnfmac: %s: MAC%u: combinations count exceeded\0A\00", [45 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry_ptr.63 = internal global ptr @qtnf_parse_variable_mac_info._entry.61, section ".printk_index", align 4
@qtnf_parse_variable_mac_info._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014qtnfmac: %s: MAC%u: record %zu size mismatch\0A\00", [48 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry_ptr.66 = internal global ptr @qtnf_parse_variable_mac_info._entry.64, section ".printk_index", align 4
@qtnf_parse_variable_mac_info.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.60, ptr @.str.2, ptr @.str.67, i8 1, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MAC%u: comb[%zu]: MAX:%u TYPES:%.4X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"qtnfmac: %s: MAC%u: comb[%zu]: MAX:%u TYPES:%.4X\0A\00", [46 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.60, ptr @.str.2, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014qtnfmac: %s: MAC%u: skip empty WoWLAN data\0A\00", [50 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry_ptr.71 = internal global ptr @qtnf_parse_variable_mac_info._entry.69, section ".printk_index", align 4
@qtnf_parse_variable_mac_info._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.60, ptr @.str.2, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014qtnfmac: %s: MAC%u: WoWLAN data size mismatch\0A\00", [47 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry_ptr.74 = internal global ptr @qtnf_parse_variable_mac_info._entry.72, section ".printk_index", align 4
@qtnf_parse_variable_mac_info._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.60, ptr @.str.2, i32 1146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014qtnfmac: %s: unexpected number of rules: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry_ptr.77 = internal global ptr @qtnf_parse_variable_mac_info._entry.75, section ".printk_index", align 4
@qtnf_parse_variable_mac_info._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.60, ptr @.str.2, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014qtnfmac: %s: malformed TLV 0x%.2X; LEN: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry_ptr.80 = internal global ptr @qtnf_parse_variable_mac_info._entry.78, section ".printk_index", align 4
@qtnf_parse_variable_mac_info._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.60, ptr @.str.2, i32 1162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014qtnfmac: %s: MAC%u: unknown TLV type %u\0A\00", [53 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry_ptr.83 = internal global ptr @qtnf_parse_variable_mac_info._entry.81, section ".printk_index", align 4
@qtnf_parse_variable_mac_info._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.60, ptr @.str.2, i32 1168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry_ptr.85 = internal global ptr @qtnf_parse_variable_mac_info._entry.84, section ".printk_index", align 4
@qtnf_parse_variable_mac_info._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.60, ptr @.str.2, i32 1174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013qtnfmac: %s: MAC%u: combination mismatch: reported=%zu parsed=%zu\0A\00", [59 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry_ptr.88 = internal global ptr @qtnf_parse_variable_mac_info._entry.86, section ".printk_index", align 4
@qtnf_parse_variable_mac_info._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.60, ptr @.str.2, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013qtnfmac: %s: MAC%u: ext_capa/_mask lengths mismatch: %u != %u\0A\00", [63 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry_ptr.91 = internal global ptr @qtnf_parse_variable_mac_info._entry.89, section ".printk_index", align 4
@qtnf_parse_variable_mac_info._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.60, ptr @.str.2, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014qtnfmac: %s: unexpected number of rules: expected %u got %u\0A\00", [33 x i8] zeroinitializer }, align 32
@qtnf_parse_variable_mac_info._entry_ptr.94 = internal global ptr @qtnf_parse_variable_mac_info._entry.92, section ".printk_index", align 4
@qtnf_parse_wowlan_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014qtnfmac: %s: MAC%u: unsupported WoWLAN version 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qtnf_parse_wowlan_info\00", [41 x i8] zeroinitializer }, align 32
@qtnf_parse_wowlan_info._entry_ptr = internal global ptr @qtnf_parse_wowlan_info._entry, section ".printk_index", align 4
@qtnf_cmd_resp_proc_hw_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.97, ptr @.str.2, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qtnf_cmd_resp_proc_hw_info\00", [37 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_proc_hw_info._entry_ptr = internal global ptr @qtnf_cmd_resp_proc_hw_info._entry, section ".printk_index", align 4
@qtnf_cmd_resp_proc_hw_info._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.2, i32 966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [396 x i8], [116 x i8] } { [396 x i8] c"\016qtnfmac: %s: \0ABuild name:            %s\0ABuild revision:        %s\0ABuild type:            %s\0ABuild label:           %s\0ABuild timestamp:       %lu\0APlatform ID:           %lu\0AHardware ID:           %s\0ACalibration version:   %s\0AU-Boot version:        %s\0AHardware version:      0x%08x\0AQlink ver:             %u.%u\0AMACs map:              %#x\0AChains Rx-Tx:          %ux%u\0AFW version:            0x%x\0A\00", [116 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_proc_hw_info._entry_ptr.100 = internal global ptr @qtnf_cmd_resp_proc_hw_info._entry.98, section ".printk_index", align 4
@qtnf_cmd_resp_fill_band_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013qtnfmac: %s: invalid channel TLV len %zu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qtnf_cmd_resp_fill_band_info\00", [35 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_fill_band_info._entry_ptr = internal global ptr @qtnf_cmd_resp_fill_band_info._entry, section ".printk_index", align 4
@qtnf_cmd_resp_fill_band_info._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 1408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013qtnfmac: %s: too many channel TLVs\0A\00", [58 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_fill_band_info._entry_ptr.105 = internal global ptr @qtnf_cmd_resp_fill_band_info._entry.103, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qtnf_cmd_resp_fill_band_info.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.102, ptr @.str.2, ptr @.str.106, i8 1, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"chan=%d flags=%#x max_pow=%d max_reg_pow=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"qtnfmac: %s: chan=%d flags=%#x max_pow=%d max_reg_pow=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_fill_band_info._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.102, ptr @.str.2, i32 1480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013qtnfmac: %s: bad HTCAP TLV len %zu\0A\00", [58 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_fill_band_info._entry_ptr.110 = internal global ptr @qtnf_cmd_resp_fill_band_info._entry.108, section ".printk_index", align 4
@qtnf_cmd_resp_fill_band_info._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.102, ptr @.str.2, i32 1489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013qtnfmac: %s: bad VHTCAP TLV len %zu\0A\00", [57 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_fill_band_info._entry_ptr.113 = internal global ptr @qtnf_cmd_resp_fill_band_info._entry.111, section ".printk_index", align 4
@qtnf_cmd_resp_fill_band_info._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.102, ptr @.str.2, i32 1503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014qtnfmac: %s: unknown TLV type: %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_fill_band_info._entry_ptr.116 = internal global ptr @qtnf_cmd_resp_fill_band_info._entry.114, section ".printk_index", align 4
@qtnf_cmd_resp_fill_band_info._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.102, ptr @.str.2, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_fill_band_info._entry_ptr.118 = internal global ptr @qtnf_cmd_resp_fill_band_info._entry.117, section ".printk_index", align 4
@qtnf_cmd_resp_fill_band_info._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.102, ptr @.str.2, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013qtnfmac: %s: channel count mismatch: reported=%d, parsed=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_fill_band_info._entry_ptr.121 = internal global ptr @qtnf_cmd_resp_fill_band_info._entry.119, section ".printk_index", align 4
@qtnf_cmd_band_fill_iftype._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013qtnfmac: %s: bad IFTYPE_DATA TLV len %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qtnf_cmd_band_fill_iftype\00", [38 x i8] zeroinitializer }, align 32
@qtnf_cmd_band_fill_iftype._entry_ptr = internal global ptr @qtnf_cmd_band_fill_iftype._entry, section ".printk_index", align 4
@qtnf_cmd_resp_proc_chan_stat_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 2349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016qtnfmac: %s: Unknown TLV type: %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qtnf_cmd_resp_proc_chan_stat_info\00", [62 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_proc_chan_stat_info._entry_ptr = internal global ptr @qtnf_cmd_resp_proc_chan_stat_info._entry, section ".printk_index", align 4
@qtnf_cmd_resp_proc_chan_stat_info._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.125, ptr @.str.2, i32 2355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qtnf_cmd_resp_proc_chan_stat_info._entry_ptr.127 = internal global ptr @qtnf_cmd_resp_proc_chan_stat_info._entry.126, section ".printk_index", align 4
@switch.table.qtnf_cmd_get_sta_info = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\02\00\00\03\04\00\05", [24 x i8] zeroinitializer }, align 32
@switch.table.qtnf_cmd_get_sta_info.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\02\00\00\03\04\00\05", [24 x i8] zeroinitializer }, align 32
@switch.table.qtnf_cmd_send_with_reply = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 -22, i32 -524, i32 -2, i32 -114, i32 -98, i32 -99, i32 -16], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 529, i64 530]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.131 = internal global [7 x i64] [i64 5, i64 16, i64 127, i64 519, i64 532, i64 774, i64 1040]
@__sancov_gen_cov_switch_values.132 = internal global [10 x i64] [i64 8, i64 16, i64 529, i64 1025, i64 1026, i64 1027, i64 1028, i64 1029, i64 1030, i64 1031]
@__sancov_gen_cov_switch_values.133 = internal global [6 x i64] [i64 4, i64 16, i64 45, i64 191, i64 527, i64 1048]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 16, i64 529, i64 534]
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 420, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 455, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 728, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 856, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1618, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1898, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2030, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2050, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2057, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2435, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2715, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2728, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2742, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 214, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 157, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 98, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 101, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 136, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 26, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 32, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 38, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 44, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 609, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 773, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1232, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1064, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1070, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1080, i32 5 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1102, i32 5 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1127, i32 5 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1134, i32 5 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1145, i32 5 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1151, i32 5 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1161, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1168, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1173, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1179, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1185, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 998, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 940, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 944, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1402, i32 5 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1408, i32 5 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1473, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1480, i32 5 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1489, i32 5 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1503, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1509, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1514, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1331, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2349, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.515 = private constant [53 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/commands.c\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2355, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant [35 x i8] c"switch.table.qtnf_cmd_get_sta_info\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [39 x i8] c"switch.table.qtnf_cmd_get_sta_info.128\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [38 x i8] c"switch.table.qtnf_cmd_send_with_reply\00", align 1
@llvm.compiler.used = appending global [175 x ptr] [ptr @qtnf_cmd_alloc_new_cmdskb._entry, ptr @qtnf_cmd_alloc_new_cmdskb._entry_ptr, ptr @qtnf_cmd_band_fill_iftype._entry, ptr @qtnf_cmd_band_fill_iftype._entry_ptr, ptr @qtnf_cmd_band_info_get._entry, ptr @qtnf_cmd_band_info_get._entry_ptr, ptr @qtnf_cmd_check_reply_header._entry, ptr @qtnf_cmd_check_reply_header._entry.44, ptr @qtnf_cmd_check_reply_header._entry.47, ptr @qtnf_cmd_check_reply_header._entry.50, ptr @qtnf_cmd_check_reply_header._entry_ptr, ptr @qtnf_cmd_check_reply_header._entry_ptr.46, ptr @qtnf_cmd_check_reply_header._entry_ptr.49, ptr @qtnf_cmd_check_reply_header._entry_ptr.52, ptr @qtnf_cmd_get_chan_stats._entry, ptr @qtnf_cmd_get_chan_stats._entry_ptr, ptr @qtnf_cmd_get_sta_info._entry, ptr @qtnf_cmd_get_sta_info._entry_ptr, ptr @qtnf_cmd_netdev_changeupper._entry, ptr @qtnf_cmd_netdev_changeupper._entry_ptr, ptr @qtnf_cmd_resp_fill_band_info._entry, ptr @qtnf_cmd_resp_fill_band_info._entry.103, ptr @qtnf_cmd_resp_fill_band_info._entry.108, ptr @qtnf_cmd_resp_fill_band_info._entry.111, ptr @qtnf_cmd_resp_fill_band_info._entry.114, ptr @qtnf_cmd_resp_fill_band_info._entry.117, ptr @qtnf_cmd_resp_fill_band_info._entry.119, ptr @qtnf_cmd_resp_fill_band_info._entry_ptr, ptr @qtnf_cmd_resp_fill_band_info._entry_ptr.105, ptr @qtnf_cmd_resp_fill_band_info._entry_ptr.110, ptr @qtnf_cmd_resp_fill_band_info._entry_ptr.113, ptr @qtnf_cmd_resp_fill_band_info._entry_ptr.116, ptr @qtnf_cmd_resp_fill_band_info._entry_ptr.118, ptr @qtnf_cmd_resp_fill_band_info._entry_ptr.121, ptr @qtnf_cmd_resp_proc_chan_stat_info._entry, ptr @qtnf_cmd_resp_proc_chan_stat_info._entry.126, ptr @qtnf_cmd_resp_proc_chan_stat_info._entry_ptr, ptr @qtnf_cmd_resp_proc_chan_stat_info._entry_ptr.127, ptr @qtnf_cmd_resp_proc_hw_info._entry, ptr @qtnf_cmd_resp_proc_hw_info._entry.98, ptr @qtnf_cmd_resp_proc_hw_info._entry_ptr, ptr @qtnf_cmd_resp_proc_hw_info._entry_ptr.100, ptr @qtnf_cmd_resp_proc_mac_info._entry, ptr @qtnf_cmd_resp_proc_mac_info._entry_ptr, ptr @qtnf_cmd_send_add_change_intf._entry, ptr @qtnf_cmd_send_add_change_intf._entry_ptr, ptr @qtnf_cmd_send_change_sta._entry, ptr @qtnf_cmd_send_change_sta._entry_ptr, ptr @qtnf_cmd_send_del_intf._entry, ptr @qtnf_cmd_send_del_intf._entry_ptr, ptr @qtnf_cmd_send_frame._entry, ptr @qtnf_cmd_send_frame._entry_ptr, ptr @qtnf_cmd_send_mgmt_set_appie._entry, ptr @qtnf_cmd_send_mgmt_set_appie._entry_ptr, ptr @qtnf_cmd_send_update_owe._entry, ptr @qtnf_cmd_send_update_owe._entry_ptr, ptr @qtnf_cmd_send_with_reply._entry, ptr @qtnf_cmd_send_with_reply._entry.39, ptr @qtnf_cmd_send_with_reply._entry_ptr, ptr @qtnf_cmd_send_with_reply._entry_ptr.41, ptr @qtnf_cmd_sta_info_parse._entry, ptr @qtnf_cmd_sta_info_parse._entry_ptr, ptr @qtnf_cmd_start_ap_can_fit._entry, ptr @qtnf_cmd_start_ap_can_fit._entry_ptr, ptr @qtnf_parse_variable_mac_info._entry, ptr @qtnf_parse_variable_mac_info._entry.61, ptr @qtnf_parse_variable_mac_info._entry.64, ptr @qtnf_parse_variable_mac_info._entry.69, ptr @qtnf_parse_variable_mac_info._entry.72, ptr @qtnf_parse_variable_mac_info._entry.75, ptr @qtnf_parse_variable_mac_info._entry.78, ptr @qtnf_parse_variable_mac_info._entry.81, ptr @qtnf_parse_variable_mac_info._entry.84, ptr @qtnf_parse_variable_mac_info._entry.86, ptr @qtnf_parse_variable_mac_info._entry.89, ptr @qtnf_parse_variable_mac_info._entry.92, ptr @qtnf_parse_variable_mac_info._entry_ptr, ptr @qtnf_parse_variable_mac_info._entry_ptr.63, ptr @qtnf_parse_variable_mac_info._entry_ptr.66, ptr @qtnf_parse_variable_mac_info._entry_ptr.71, ptr @qtnf_parse_variable_mac_info._entry_ptr.74, ptr @qtnf_parse_variable_mac_info._entry_ptr.77, ptr @qtnf_parse_variable_mac_info._entry_ptr.80, ptr @qtnf_parse_variable_mac_info._entry_ptr.83, ptr @qtnf_parse_variable_mac_info._entry_ptr.85, ptr @qtnf_parse_variable_mac_info._entry_ptr.88, ptr @qtnf_parse_variable_mac_info._entry_ptr.91, ptr @qtnf_parse_variable_mac_info._entry_ptr.94, ptr @qtnf_parse_wowlan_info._entry, ptr @qtnf_parse_wowlan_info._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @switch.table.qtnf_cmd_get_sta_info, ptr @switch.table.qtnf_cmd_get_sta_info.128, ptr @switch.table.qtnf_cmd_send_with_reply], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_send_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_send_mgmt_set_appie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_get_sta_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_send_del_intf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_band_info_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_send_change_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_get_chan_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_netdev_changeupper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_send_update_owe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_start_ap_can_fit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_alloc_new_cmdskb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_send_with_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_send_with_reply._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_check_reply_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_check_reply_header._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_check_reply_header._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_check_reply_header._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_sta_info_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_send_add_change_intf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_resp_proc_mac_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_variable_mac_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_variable_mac_info._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_variable_mac_info._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_variable_mac_info._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_variable_mac_info._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_variable_mac_info._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_variable_mac_info._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_variable_mac_info._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_variable_mac_info._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_variable_mac_info._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_variable_mac_info._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_variable_mac_info._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_parse_wowlan_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_resp_proc_hw_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_resp_proc_hw_info._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_resp_fill_band_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_resp_fill_band_info._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_resp_fill_band_info._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_resp_fill_band_info._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_resp_fill_band_info._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_resp_fill_band_info._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_resp_fill_band_info._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_band_fill_iftype._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_resp_proc_chan_stat_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cmd_resp_proc_chan_stat_info._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qtnf_cmd_get_sta_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qtnf_cmd_get_sta_info.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qtnf_cmd_send_with_reply to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_start_ap(ptr nocapture noundef readonly %vif, ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ssid_len.i = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 5
  %0 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ssid_len.i, align 4
  %sub.i = add i32 %1, -1
  %or.i = or i32 %sub.i, 3
  %head_len.i = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %head_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head_len.i, align 4
  %sub2.i = add i32 %3, -1
  %or3.i = or i32 %sub2.i, 3
  %add4.i = add i32 %or3.i, %or.i
  %tail_len.i = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %tail_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail_len.i, align 4
  %sub7.i = add i32 %5, -1
  %or8.i = or i32 %sub7.i, 3
  %add9.i = add i32 %add4.i, %or8.i
  %beacon_ies_len.i = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %beacon_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %beacon_ies_len.i, align 4
  %sub12.i = add i32 %7, -1
  %or13.i = or i32 %sub12.i, 3
  %add14.i = add i32 %add9.i, %or13.i
  %proberesp_ies_len.i = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 1, i32 13
  %8 = ptrtoint ptr %proberesp_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %proberesp_ies_len.i, align 4
  %sub17.i = add i32 %9, -1
  %or18.i = or i32 %sub17.i, 3
  %add19.i = add i32 %add14.i, %or18.i
  %assocresp_ies_len.i = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 1, i32 14
  %10 = ptrtoint ptr %assocresp_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %assocresp_ies_len.i, align 4
  %sub22.i = add i32 %11, -1
  %or23.i = or i32 %sub22.i, 3
  %add24.i = add i32 %add19.i, %or23.i
  %probe_resp_len.i = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 1, i32 15
  %12 = ptrtoint ptr %probe_resp_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %probe_resp_len.i, align 4
  %sub27.i = add i32 %13, -1
  %or28.i = or i32 %sub27.i, 3
  %add29.i = add i32 %add24.i, %or28.i
  %call.i = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %s) #8
  %spec.select.v.i = select i1 %call.i, i32 123, i32 91
  %spec.select.i = add i32 %add29.i, %spec.select.v.i
  %acl.i = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 14
  %14 = ptrtoint ptr %acl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %acl.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %entry.if.end40.i_crit_edge, label %if.then32.i

entry.if.end40.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then32.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %n_acl_entries.i = getelementptr inbounds %struct.cfg80211_acl_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %n_acl_entries.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_acl_entries.i, align 4
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 6) #8
  %19 = extractvalue { i32, i1 } %18, 1
  %20 = extractvalue { i32, i1 } %18, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %20, i32 8) #8
  %spec.select.i.op.i = add i32 %spec.select.i.i, -1
  %spec.select.i.op.op.i = or i32 %spec.select.i.op.i, 3
  %spec.select.i.op.op.op.i = add i32 %spec.select.i.op.op.i, 5
  %add38.i = select i1 %19, i32 4, i32 %spec.select.i.op.op.op.i
  %add39.i = add i32 %add38.i, %spec.select.i
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then32.i, %entry.if.end40.i_crit_edge
  %len.1.i = phi i32 [ %add39.i, %if.then32.i ], [ %spec.select.i, %entry.if.end40.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2060, i32 %len.1.i)
  %cmp.i = icmp ugt i32 %len.1.i, 2060
  %mac.i = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %21 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  br i1 %cmp.i, label %qtnf_cmd_start_ap_can_fit.exit, label %if.end

qtnf_cmd_start_ap_can_fit.exit:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %24 to i32
  %vifid.i = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %25 = ptrtoint ptr %vifid.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %vifid.i, align 4
  %conv42.i = zext i8 %26 to i32
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %conv.i, i32 noundef %conv42.i, i32 noundef %len.1.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end40.i
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %27 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i273 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i273, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end3, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i274 = zext i8 %24 to i32
  %conv4.i = zext i8 %28 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i274, i32 noundef %conv4.i, i32 noundef 33) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 84) #8
  %29 = call ptr @memset(ptr %call.i25.i, i32 0, i32 84)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %33 to i16
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %31, i32 0, i32 1
  %35 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %len9.i, align 1
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 256, ptr %31, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %31, i32 0, i32 1
  %37 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 8448, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %31, i32 0, i32 3
  %38 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %24, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %31, i32 0, i32 4
  %39 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %28, ptr %vifid12.i, align 1
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %dtim_period = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 3
  %42 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dtim_period, align 4
  %conv = trunc i32 %43 to i8
  %dtim_period4 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %dtim_period4 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv, ptr %dtim_period4, align 1
  %beacon_interval = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 2
  %45 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %beacon_interval, align 4
  %conv5 = trunc i32 %46 to i16
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv5)
  %beacon_interval6 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 1
  %48 = ptrtoint ptr %beacon_interval6 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %beacon_interval6, align 1
  %hidden_ssid = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 6
  %49 = ptrtoint ptr %hidden_ssid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hidden_ssid, align 4
  %call7 = tail call i32 @qlink_hidden_ssid_nl2q(i32 noundef %50) #8
  %conv8 = trunc i32 %call7 to i8
  %hidden_ssid9 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 4
  %51 = ptrtoint ptr %hidden_ssid9 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv8, ptr %hidden_ssid9, align 1
  %inactivity_timeout = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 11
  %52 = ptrtoint ptr %inactivity_timeout to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %inactivity_timeout, align 4
  %conv10 = trunc i32 %53 to i16
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv10)
  %inactivity_timeout11 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 2
  %55 = ptrtoint ptr %inactivity_timeout11 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %inactivity_timeout11, align 1
  %smps_mode = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 10
  %56 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %smps_mode, align 4
  %conv12 = trunc i32 %57 to i8
  %smps_mode13 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 5
  %58 = ptrtoint ptr %smps_mode13 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv12, ptr %smps_mode13, align 1
  %p2p_ctwindow = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 12
  %59 = ptrtoint ptr %p2p_ctwindow to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %p2p_ctwindow, align 4
  %p2p_ctwindow14 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 6
  %61 = ptrtoint ptr %p2p_ctwindow14 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %p2p_ctwindow14, align 1
  %p2p_opp_ps = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 13
  %62 = ptrtoint ptr %p2p_opp_ps to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %p2p_opp_ps, align 1, !range !241
  %p2p_opp_ps17 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 7
  %64 = ptrtoint ptr %p2p_opp_ps17 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %p2p_opp_ps17, align 1
  %pbss = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 15
  %65 = ptrtoint ptr %pbss to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %pbss, align 4, !range !241
  %pbss20 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 8
  %67 = ptrtoint ptr %pbss20 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %pbss20, align 1
  %ht_required = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 21
  %68 = ptrtoint ptr %ht_required to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ht_required, align 4, !range !241
  %ht_required23 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 9
  %70 = ptrtoint ptr %ht_required23 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %ht_required23, align 1
  %vht_required = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 22
  %71 = ptrtoint ptr %vht_required to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %vht_required, align 1, !range !241
  %vht_required26 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 10
  %73 = ptrtoint ptr %vht_required26 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %vht_required26, align 1
  %twt_responder = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 25
  %74 = ptrtoint ptr %twt_responder to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %twt_responder, align 4, !range !241
  %twt_responder29 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 13
  %76 = ptrtoint ptr %twt_responder29 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %twt_responder29, align 1
  %he_obss_pd = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 27
  %77 = ptrtoint ptr %he_obss_pd to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %he_obss_pd, align 4, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool30.not = icmp eq i8 %78, 0
  br i1 %tobool30.not, label %if.end3.if.end38_crit_edge, label %if.then31

if.end3.if.end38_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then31:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %sr_params = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 12
  %79 = ptrtoint ptr %sr_params to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %sr_params, align 1
  %81 = or i8 %80, 8
  store i8 %81, ptr %sr_params, align 1
  %min_offset = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 27, i32 3
  %82 = ptrtoint ptr %min_offset to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %min_offset, align 1
  %srg_obss_pd_min_offset = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 12, i32 2
  %84 = ptrtoint ptr %srg_obss_pd_min_offset to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %srg_obss_pd_min_offset, align 1
  %max_offset = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 27, i32 4
  %85 = ptrtoint ptr %max_offset to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %max_offset, align 4
  %srg_obss_pd_max_offset = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 12, i32 3
  %87 = ptrtoint ptr %srg_obss_pd_max_offset to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %srg_obss_pd_max_offset, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then31, %if.end3.if.end38_crit_edge
  %aen39 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11
  %auth_type = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 9
  %88 = ptrtoint ptr %auth_type to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %auth_type, align 4
  %conv40 = trunc i32 %89 to i8
  %auth_type41 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 7
  %90 = ptrtoint ptr %auth_type41 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv40, ptr %auth_type41, align 1
  %privacy = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 8
  %91 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %privacy, align 4, !range !241
  %privacy45 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 8
  %93 = ptrtoint ptr %privacy45 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %privacy45, align 1
  %crypto = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7
  %94 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %crypto, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %97 = ptrtoint ptr %aen39 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %96, ptr %aen39, align 1
  %cipher_group = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 1
  %98 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cipher_group, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  %cipher_group48 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 1
  %101 = ptrtoint ptr %cipher_group48 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %100, ptr %cipher_group48, align 1
  %n_ciphers_pairwise = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 2
  %102 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %n_ciphers_pairwise, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %n_ciphers_pairwise50 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 2
  %105 = ptrtoint ptr %n_ciphers_pairwise50 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %n_ciphers_pairwise50, align 1
  %arrayidx = getelementptr %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 3, i32 0
  %106 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  %arrayidx54 = getelementptr %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 3, i32 0
  %109 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %arrayidx54, align 1
  %arrayidx.1 = getelementptr %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 3, i32 1
  %110 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.1, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  %arrayidx54.1 = getelementptr %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 3, i32 1
  %113 = ptrtoint ptr %arrayidx54.1 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %arrayidx54.1, align 1
  %arrayidx.2 = getelementptr %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 3, i32 2
  %114 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.2, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %arrayidx54.2 = getelementptr %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 3, i32 2
  %117 = ptrtoint ptr %arrayidx54.2 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 %116, ptr %arrayidx54.2, align 1
  %arrayidx.3 = getelementptr %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 3, i32 3
  %118 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.3, align 4
  %120 = tail call i32 @llvm.bswap.i32(i32 %119)
  %arrayidx54.3 = getelementptr %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 3, i32 3
  %121 = ptrtoint ptr %arrayidx54.3 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %120, ptr %arrayidx54.3, align 1
  %arrayidx.4 = getelementptr %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 3, i32 4
  %122 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.4, align 4
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  %arrayidx54.4 = getelementptr %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 3, i32 4
  %125 = ptrtoint ptr %arrayidx54.4 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %124, ptr %arrayidx54.4, align 1
  %n_akm_suites = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 4
  %126 = ptrtoint ptr %n_akm_suites to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %n_akm_suites, align 4
  %128 = tail call i32 @llvm.bswap.i32(i32 %127)
  %n_akm_suites56 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 4
  %129 = ptrtoint ptr %n_akm_suites56 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %128, ptr %n_akm_suites56, align 1
  %arrayidx62 = getelementptr %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 5, i32 0
  %130 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx62, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131)
  %arrayidx64 = getelementptr %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 5, i32 0
  %133 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %132, ptr %arrayidx64, align 1
  %arrayidx62.1 = getelementptr %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 5, i32 1
  %134 = ptrtoint ptr %arrayidx62.1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx62.1, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %arrayidx64.1 = getelementptr %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 5, i32 1
  %137 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 %136, ptr %arrayidx64.1, align 1
  %control_port = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 6
  %138 = ptrtoint ptr %control_port to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %control_port, align 4, !range !241
  %control_port71 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 9
  %140 = ptrtoint ptr %control_port71 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %control_port71, align 1
  %control_port_no_encrypt = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 8
  %141 = ptrtoint ptr %control_port_no_encrypt to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %control_port_no_encrypt, align 4, !range !241
  %control_port_no_encrypt75 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 10
  %143 = ptrtoint ptr %control_port_no_encrypt75 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %control_port_no_encrypt75, align 1
  %control_port_ethertype = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 7, i32 7
  %144 = ptrtoint ptr %control_port_ethertype to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %control_port_ethertype, align 2
  %146 = tail call i16 @llvm.bswap.i16(i16 %145)
  %control_port_ethertype77 = getelementptr inbounds %struct.qlink_cmd_start_ap, ptr %41, i32 0, i32 11, i32 6
  %147 = ptrtoint ptr %control_port_ethertype77 to i32
  call void @__asan_storeN_noabort(i32 %147, i32 2)
  store i16 %146, ptr %control_port_ethertype77, align 1
  %ssid = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 4
  %148 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ssid, align 4
  %tobool78.not = icmp eq ptr %149, null
  br i1 %tobool78.not, label %if.end38.if.end88_crit_edge, label %land.lhs.true

if.end38.if.end88_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

land.lhs.true:                                    ; preds = %if.end38
  %150 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ssid_len.i, align 4
  %152 = add i32 %151, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %152)
  %153 = icmp ult i32 %152, 32
  br i1 %153, label %if.then85, label %land.lhs.true.if.end88_crit_edge

land.lhs.true.if.end88_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then85:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %or.i277 = or i32 %152, 3
  %add1.i = add i32 %or.i277, 5
  %call.i278 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i) #8
  %154 = ptrtoint ptr %call.i278 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 0, ptr %call.i278, align 1
  %conv.i279 = trunc i32 %151 to i16
  %155 = tail call i16 @llvm.bswap.i16(i16 %conv.i279) #8
  %len.i280 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i278, i32 0, i32 1
  %156 = ptrtoint ptr %len.i280 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 2)
  store i16 %155, ptr %len.i280, align 1
  %val.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i278, i32 0, i32 2
  %157 = call ptr @memcpy(ptr %val.i, ptr %149, i32 %151)
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %land.lhs.true.if.end88_crit_edge, %if.end38.if.end88_crit_edge
  %call89 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %s) #8
  br i1 %call89, label %if.then90, label %if.end88.if.end94_crit_edge

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %call91 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 32) #8
  %158 = ptrtoint ptr %call91 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 2)
  store i16 4098, ptr %call91, align 1
  %len = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call91, i32 0, i32 1
  %159 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 7168, ptr %len, align 1
  %chdef = getelementptr inbounds %struct.qlink_tlv_chandef, ptr %call91, i32 0, i32 1
  tail call void @qlink_chandef_cfg2q(ptr noundef %s, ptr noundef %chdef) #8
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.end88.if.end94_crit_edge
  %beacon = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 1
  %160 = ptrtoint ptr %beacon to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %beacon, align 4
  %162 = ptrtoint ptr %head_len.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %head_len.i, align 4
  %sub.i281 = add i32 %163, -1
  %or.i282 = or i32 %sub.i281, 3
  %add1.i283 = add i32 %or.i282, 9
  %call.i284 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i283) #8
  %164 = ptrtoint ptr %call.i284 to i32
  call void @__asan_storeN_noabort(i32 %164, i32 2)
  store i16 1283, ptr %call.i284, align 1
  %165 = trunc i32 %163 to i16
  %conv.i285 = add i16 %165, 4
  %166 = tail call i16 @llvm.bswap.i16(i16 %conv.i285) #8
  %len5.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i284, i32 0, i32 1
  %167 = ptrtoint ptr %len5.i to i32
  call void @__asan_storeN_noabort(i32 %167, i32 2)
  store i16 %166, ptr %len5.i, align 1
  %type6.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i284, i32 0, i32 1
  %168 = ptrtoint ptr %type6.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 5, ptr %type6.i, align 1
  %flags.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i284, i32 0, i32 2
  %169 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.not.i286 = icmp eq i32 %163, 0
  %tobool7.not.i = icmp eq ptr %161, null
  %or.cond.i = or i1 %tobool7.not.i, %tobool.not.i286
  br i1 %or.cond.i, label %if.end94.qtnf_cmd_tlv_ie_set_add.exit_crit_edge, label %if.then.i

if.end94.qtnf_cmd_tlv_ie_set_add.exit_crit_edge:  ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %qtnf_cmd_tlv_ie_set_add.exit

if.then.i:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %ie_data.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i284, i32 0, i32 4
  %170 = call ptr @memcpy(ptr %ie_data.i, ptr %161, i32 %163)
  br label %qtnf_cmd_tlv_ie_set_add.exit

qtnf_cmd_tlv_ie_set_add.exit:                     ; preds = %if.then.i, %if.end94.qtnf_cmd_tlv_ie_set_add.exit_crit_edge
  %tail = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 1, i32 1
  %171 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %tail, align 4
  %173 = ptrtoint ptr %tail_len.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %tail_len.i, align 4
  %sub.i288 = add i32 %174, -1
  %or.i289 = or i32 %sub.i288, 3
  %add1.i290 = add i32 %or.i289, 9
  %call.i291 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i290) #8
  %175 = ptrtoint ptr %call.i291 to i32
  call void @__asan_storeN_noabort(i32 %175, i32 2)
  store i16 1283, ptr %call.i291, align 1
  %176 = trunc i32 %174 to i16
  %conv.i292 = add i16 %176, 4
  %177 = tail call i16 @llvm.bswap.i16(i16 %conv.i292) #8
  %len5.i293 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i291, i32 0, i32 1
  %178 = ptrtoint ptr %len5.i293 to i32
  call void @__asan_storeN_noabort(i32 %178, i32 2)
  store i16 %177, ptr %len5.i293, align 1
  %type6.i294 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i291, i32 0, i32 1
  %179 = ptrtoint ptr %type6.i294 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 6, ptr %type6.i294, align 1
  %flags.i295 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i291, i32 0, i32 2
  %180 = ptrtoint ptr %flags.i295 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %flags.i295, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not.i296 = icmp eq i32 %174, 0
  %tobool7.not.i297 = icmp eq ptr %172, null
  %or.cond.i298 = or i1 %tobool7.not.i297, %tobool.not.i296
  br i1 %or.cond.i298, label %qtnf_cmd_tlv_ie_set_add.exit.qtnf_cmd_tlv_ie_set_add.exit302_crit_edge, label %if.then.i300

qtnf_cmd_tlv_ie_set_add.exit.qtnf_cmd_tlv_ie_set_add.exit302_crit_edge: ; preds = %qtnf_cmd_tlv_ie_set_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %qtnf_cmd_tlv_ie_set_add.exit302

if.then.i300:                                     ; preds = %qtnf_cmd_tlv_ie_set_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ie_data.i299 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i291, i32 0, i32 4
  %181 = call ptr @memcpy(ptr %ie_data.i299, ptr %172, i32 %174)
  br label %qtnf_cmd_tlv_ie_set_add.exit302

qtnf_cmd_tlv_ie_set_add.exit302:                  ; preds = %if.then.i300, %qtnf_cmd_tlv_ie_set_add.exit.qtnf_cmd_tlv_ie_set_add.exit302_crit_edge
  %beacon_ies = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 1, i32 2
  %182 = ptrtoint ptr %beacon_ies to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %beacon_ies, align 4
  %184 = ptrtoint ptr %beacon_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %beacon_ies_len.i, align 4
  %sub.i303 = add i32 %185, -1
  %or.i304 = or i32 %sub.i303, 3
  %add1.i305 = add i32 %or.i304, 9
  %call.i306 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i305) #8
  %186 = ptrtoint ptr %call.i306 to i32
  call void @__asan_storeN_noabort(i32 %186, i32 2)
  store i16 1283, ptr %call.i306, align 1
  %187 = trunc i32 %185 to i16
  %conv.i307 = add i16 %187, 4
  %188 = tail call i16 @llvm.bswap.i16(i16 %conv.i307) #8
  %len5.i308 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i306, i32 0, i32 1
  %189 = ptrtoint ptr %len5.i308 to i32
  call void @__asan_storeN_noabort(i32 %189, i32 2)
  store i16 %188, ptr %len5.i308, align 1
  %type6.i309 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i306, i32 0, i32 1
  %190 = ptrtoint ptr %type6.i309 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 7, ptr %type6.i309, align 1
  %flags.i310 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i306, i32 0, i32 2
  %191 = ptrtoint ptr %flags.i310 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %flags.i310, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool.not.i311 = icmp eq i32 %185, 0
  %tobool7.not.i312 = icmp eq ptr %183, null
  %or.cond.i313 = or i1 %tobool7.not.i312, %tobool.not.i311
  br i1 %or.cond.i313, label %qtnf_cmd_tlv_ie_set_add.exit302.qtnf_cmd_tlv_ie_set_add.exit317_crit_edge, label %if.then.i315

qtnf_cmd_tlv_ie_set_add.exit302.qtnf_cmd_tlv_ie_set_add.exit317_crit_edge: ; preds = %qtnf_cmd_tlv_ie_set_add.exit302
  call void @__sanitizer_cov_trace_pc() #10
  br label %qtnf_cmd_tlv_ie_set_add.exit317

if.then.i315:                                     ; preds = %qtnf_cmd_tlv_ie_set_add.exit302
  call void @__sanitizer_cov_trace_pc() #10
  %ie_data.i314 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i306, i32 0, i32 4
  %192 = call ptr @memcpy(ptr %ie_data.i314, ptr %183, i32 %185)
  br label %qtnf_cmd_tlv_ie_set_add.exit317

qtnf_cmd_tlv_ie_set_add.exit317:                  ; preds = %if.then.i315, %qtnf_cmd_tlv_ie_set_add.exit302.qtnf_cmd_tlv_ie_set_add.exit317_crit_edge
  %probe_resp = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 1, i32 5
  %193 = ptrtoint ptr %probe_resp to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %probe_resp, align 4
  %195 = ptrtoint ptr %probe_resp_len.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %probe_resp_len.i, align 4
  %sub.i318 = add i32 %196, -1
  %or.i319 = or i32 %sub.i318, 3
  %add1.i320 = add i32 %or.i319, 9
  %call.i321 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i320) #8
  %197 = ptrtoint ptr %call.i321 to i32
  call void @__asan_storeN_noabort(i32 %197, i32 2)
  store i16 1283, ptr %call.i321, align 1
  %198 = trunc i32 %196 to i16
  %conv.i322 = add i16 %198, 4
  %199 = tail call i16 @llvm.bswap.i16(i16 %conv.i322) #8
  %len5.i323 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i321, i32 0, i32 1
  %200 = ptrtoint ptr %len5.i323 to i32
  call void @__asan_storeN_noabort(i32 %200, i32 2)
  store i16 %199, ptr %len5.i323, align 1
  %type6.i324 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i321, i32 0, i32 1
  %201 = ptrtoint ptr %type6.i324 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 8, ptr %type6.i324, align 1
  %flags.i325 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i321, i32 0, i32 2
  %202 = ptrtoint ptr %flags.i325 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %flags.i325, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.not.i326 = icmp eq i32 %196, 0
  %tobool7.not.i327 = icmp eq ptr %194, null
  %or.cond.i328 = or i1 %tobool7.not.i327, %tobool.not.i326
  br i1 %or.cond.i328, label %qtnf_cmd_tlv_ie_set_add.exit317.qtnf_cmd_tlv_ie_set_add.exit332_crit_edge, label %if.then.i330

qtnf_cmd_tlv_ie_set_add.exit317.qtnf_cmd_tlv_ie_set_add.exit332_crit_edge: ; preds = %qtnf_cmd_tlv_ie_set_add.exit317
  call void @__sanitizer_cov_trace_pc() #10
  br label %qtnf_cmd_tlv_ie_set_add.exit332

if.then.i330:                                     ; preds = %qtnf_cmd_tlv_ie_set_add.exit317
  call void @__sanitizer_cov_trace_pc() #10
  %ie_data.i329 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i321, i32 0, i32 4
  %203 = call ptr @memcpy(ptr %ie_data.i329, ptr %194, i32 %196)
  br label %qtnf_cmd_tlv_ie_set_add.exit332

qtnf_cmd_tlv_ie_set_add.exit332:                  ; preds = %if.then.i330, %qtnf_cmd_tlv_ie_set_add.exit317.qtnf_cmd_tlv_ie_set_add.exit332_crit_edge
  %proberesp_ies = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 1, i32 3
  %204 = ptrtoint ptr %proberesp_ies to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %proberesp_ies, align 4
  %206 = ptrtoint ptr %proberesp_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %proberesp_ies_len.i, align 4
  %sub.i333 = add i32 %207, -1
  %or.i334 = or i32 %sub.i333, 3
  %add1.i335 = add i32 %or.i334, 9
  %call.i336 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i335) #8
  %208 = ptrtoint ptr %call.i336 to i32
  call void @__asan_storeN_noabort(i32 %208, i32 2)
  store i16 1283, ptr %call.i336, align 1
  %209 = trunc i32 %207 to i16
  %conv.i337 = add i16 %209, 4
  %210 = tail call i16 @llvm.bswap.i16(i16 %conv.i337) #8
  %len5.i338 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i336, i32 0, i32 1
  %211 = ptrtoint ptr %len5.i338 to i32
  call void @__asan_storeN_noabort(i32 %211, i32 2)
  store i16 %210, ptr %len5.i338, align 1
  %type6.i339 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i336, i32 0, i32 1
  %212 = ptrtoint ptr %type6.i339 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 9, ptr %type6.i339, align 1
  %flags.i340 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i336, i32 0, i32 2
  %213 = ptrtoint ptr %flags.i340 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %flags.i340, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.not.i341 = icmp eq i32 %207, 0
  %tobool7.not.i342 = icmp eq ptr %205, null
  %or.cond.i343 = or i1 %tobool7.not.i342, %tobool.not.i341
  br i1 %or.cond.i343, label %qtnf_cmd_tlv_ie_set_add.exit332.qtnf_cmd_tlv_ie_set_add.exit347_crit_edge, label %if.then.i345

qtnf_cmd_tlv_ie_set_add.exit332.qtnf_cmd_tlv_ie_set_add.exit347_crit_edge: ; preds = %qtnf_cmd_tlv_ie_set_add.exit332
  call void @__sanitizer_cov_trace_pc() #10
  br label %qtnf_cmd_tlv_ie_set_add.exit347

if.then.i345:                                     ; preds = %qtnf_cmd_tlv_ie_set_add.exit332
  call void @__sanitizer_cov_trace_pc() #10
  %ie_data.i344 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i336, i32 0, i32 4
  %214 = call ptr @memcpy(ptr %ie_data.i344, ptr %205, i32 %207)
  br label %qtnf_cmd_tlv_ie_set_add.exit347

qtnf_cmd_tlv_ie_set_add.exit347:                  ; preds = %if.then.i345, %qtnf_cmd_tlv_ie_set_add.exit332.qtnf_cmd_tlv_ie_set_add.exit347_crit_edge
  %assocresp_ies = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 1, i32 4
  %215 = ptrtoint ptr %assocresp_ies to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %assocresp_ies, align 4
  %217 = ptrtoint ptr %assocresp_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %assocresp_ies_len.i, align 4
  %sub.i348 = add i32 %218, -1
  %or.i349 = or i32 %sub.i348, 3
  %add1.i350 = add i32 %or.i349, 9
  %call.i351 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i350) #8
  %219 = ptrtoint ptr %call.i351 to i32
  call void @__asan_storeN_noabort(i32 %219, i32 2)
  store i16 1283, ptr %call.i351, align 1
  %220 = trunc i32 %218 to i16
  %conv.i352 = add i16 %220, 4
  %221 = tail call i16 @llvm.bswap.i16(i16 %conv.i352) #8
  %len5.i353 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i351, i32 0, i32 1
  %222 = ptrtoint ptr %len5.i353 to i32
  call void @__asan_storeN_noabort(i32 %222, i32 2)
  store i16 %221, ptr %len5.i353, align 1
  %type6.i354 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i351, i32 0, i32 1
  %223 = ptrtoint ptr %type6.i354 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 2, ptr %type6.i354, align 1
  %flags.i355 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i351, i32 0, i32 2
  %224 = ptrtoint ptr %flags.i355 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %flags.i355, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool.not.i356 = icmp eq i32 %218, 0
  %tobool7.not.i357 = icmp eq ptr %216, null
  %or.cond.i358 = or i1 %tobool7.not.i357, %tobool.not.i356
  br i1 %or.cond.i358, label %qtnf_cmd_tlv_ie_set_add.exit347.qtnf_cmd_tlv_ie_set_add.exit362_crit_edge, label %if.then.i360

qtnf_cmd_tlv_ie_set_add.exit347.qtnf_cmd_tlv_ie_set_add.exit362_crit_edge: ; preds = %qtnf_cmd_tlv_ie_set_add.exit347
  call void @__sanitizer_cov_trace_pc() #10
  br label %qtnf_cmd_tlv_ie_set_add.exit362

if.then.i360:                                     ; preds = %qtnf_cmd_tlv_ie_set_add.exit347
  call void @__sanitizer_cov_trace_pc() #10
  %ie_data.i359 = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i351, i32 0, i32 4
  %225 = call ptr @memcpy(ptr %ie_data.i359, ptr %216, i32 %218)
  br label %qtnf_cmd_tlv_ie_set_add.exit362

qtnf_cmd_tlv_ie_set_add.exit362:                  ; preds = %if.then.i360, %qtnf_cmd_tlv_ie_set_add.exit347.qtnf_cmd_tlv_ie_set_add.exit362_crit_edge
  %ht_cap = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 17
  %226 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ht_cap, align 4
  %tobool106.not = icmp eq ptr %227, null
  br i1 %tobool106.not, label %qtnf_cmd_tlv_ie_set_add.exit362.if.end112_crit_edge, label %if.then107

qtnf_cmd_tlv_ie_set_add.exit362.if.end112_crit_edge: ; preds = %qtnf_cmd_tlv_ie_set_add.exit362
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then107:                                       ; preds = %qtnf_cmd_tlv_ie_set_add.exit362
  call void @__sanitizer_cov_trace_pc() #10
  %call108 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 32) #8
  %228 = ptrtoint ptr %call108 to i32
  call void @__asan_storeN_noabort(i32 %228, i32 2)
  store i16 11520, ptr %call108, align 1
  %len110 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call108, i32 0, i32 1
  %229 = ptrtoint ptr %len110 to i32
  call void @__asan_storeN_noabort(i32 %229, i32 2)
  store i16 6656, ptr %len110, align 1
  %val = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call108, i32 0, i32 2
  %230 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ht_cap, align 4
  %232 = call ptr @memcpy(ptr %val, ptr %231, i32 26)
  br label %if.end112

if.end112:                                        ; preds = %if.then107, %qtnf_cmd_tlv_ie_set_add.exit362.if.end112_crit_edge
  %vht_cap = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 18
  %233 = ptrtoint ptr %vht_cap to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %vht_cap, align 4
  %tobool113.not = icmp eq ptr %234, null
  br i1 %tobool113.not, label %if.end112.if.end122_crit_edge, label %if.then114

if.end112.if.end122_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  %call116 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %235 = ptrtoint ptr %call116 to i32
  call void @__asan_storeN_noabort(i32 %235, i32 2)
  store i16 -16640, ptr %call116, align 1
  %len118 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call116, i32 0, i32 1
  %236 = ptrtoint ptr %len118 to i32
  call void @__asan_storeN_noabort(i32 %236, i32 2)
  store i16 3072, ptr %len118, align 1
  %val119 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call116, i32 0, i32 2
  %237 = ptrtoint ptr %vht_cap to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %vht_cap, align 4
  %239 = call ptr @memcpy(ptr %val119, ptr %238, i32 12)
  br label %if.end122

if.end122:                                        ; preds = %if.then114, %if.end112.if.end122_crit_edge
  %he_cap = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %s, i32 0, i32 19
  %240 = ptrtoint ptr %he_cap to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %he_cap, align 4
  %tobool123.not = icmp eq ptr %241, null
  br i1 %tobool123.not, label %if.end122.if.end126_crit_edge, label %qtnf_cmd_tlv_ie_ext_add.exit

if.end122.if.end126_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

qtnf_cmd_tlv_ie_ext_add.exit:                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %call.i363 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 25) #8
  %242 = ptrtoint ptr %call.i363 to i32
  call void @__asan_storeN_noabort(i32 %242, i32 2)
  store i16 -256, ptr %call.i363, align 1
  %len3.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i363, i32 0, i32 1
  %243 = ptrtoint ptr %len3.i to i32
  call void @__asan_storeN_noabort(i32 %243, i32 2)
  store i16 5376, ptr %len3.i, align 1
  %eid_ext4.i = getelementptr inbounds %struct.qlink_tlv_ext_ie, ptr %call.i363, i32 0, i32 1
  %244 = ptrtoint ptr %eid_ext4.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 35, ptr %eid_ext4.i, align 1
  %ie_data.i364 = getelementptr inbounds %struct.qlink_tlv_ext_ie, ptr %call.i363, i32 0, i32 3
  %245 = call ptr @memcpy(ptr %ie_data.i364, ptr %241, i32 17)
  br label %if.end126

if.end126:                                        ; preds = %qtnf_cmd_tlv_ie_ext_add.exit, %if.end122.if.end126_crit_edge
  %246 = ptrtoint ptr %acl.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %acl.i, align 4
  %tobool127.not = icmp eq ptr %247, null
  br i1 %tobool127.not, label %if.end126.if.end141_crit_edge, label %if.then128

if.end126.if.end141_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %n_acl_entries = getelementptr inbounds %struct.cfg80211_acl_data, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %n_acl_entries to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %n_acl_entries, align 4
  %250 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %249, i32 6) #8
  %251 = extractvalue { i32, i1 } %250, 1
  %252 = extractvalue { i32, i1 } %250, 0
  %spec.select.i367 = tail call i32 @llvm.uadd.sat.i32(i32 %252, i32 8) #8
  %retval.0.i = select i1 %251, i32 -1, i32 %spec.select.i367
  %sub = add i32 %retval.0.i, -1
  %or132 = or i32 %sub, 3
  %add133 = add i32 %or132, 5
  %call134 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add133) #8
  %253 = ptrtoint ptr %call134 to i32
  call void @__asan_storeN_noabort(i32 %253, i32 2)
  store i16 1795, ptr %call134, align 1
  %conv136 = trunc i32 %retval.0.i to i16
  %254 = tail call i16 @llvm.bswap.i16(i16 %conv136)
  %len137 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call134, i32 0, i32 1
  %255 = ptrtoint ptr %len137 to i32
  call void @__asan_storeN_noabort(i32 %255, i32 2)
  store i16 %254, ptr %len137, align 1
  %256 = ptrtoint ptr %acl.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %acl.i, align 4
  %val139 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call134, i32 0, i32 2
  tail call void @qlink_acl_data_cfg2q(ptr noundef %257, ptr noundef %val139) #8
  br label %if.end141

if.end141:                                        ; preds = %if.then128, %if.end126.if.end141_crit_edge
  %258 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %mac.i, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %259, i32 0, i32 3
  %260 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %261, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %262 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mac.i, align 4
  %bus144 = getelementptr inbounds %struct.qtnf_wmac, ptr %263, i32 0, i32 3
  %264 = ptrtoint ptr %bus144 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %bus144, align 4
  %call.i368 = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %265, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i368)
  %tobool146.not = icmp eq i32 %call.i368, 0
  br i1 %tobool146.not, label %if.end148, label %if.end141.out_crit_edge

if.end141.out_crit_edge:                          ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end148:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 7
  %266 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %netdev, align 4
  tail call void @netif_carrier_on(ptr noundef %267) #8
  br label %out

out:                                              ; preds = %if.end148, %if.end141.out_crit_edge
  %268 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mac.i, align 4
  %bus150 = getelementptr inbounds %struct.qtnf_wmac, ptr %269, i32 0, i32 3
  %270 = ptrtoint ptr %bus150 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %bus150, align 4
  %bus_lock.i272 = getelementptr inbounds %struct.qtnf_bus, ptr %271, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i272) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %qtnf_cmd_alloc_new_cmdskb.exit.thread, %qtnf_cmd_start_ap_can_fit.exit
  %retval.0 = phi i32 [ %call.i368, %out ], [ -7, %qtnf_cmd_start_ap_can_fit.exit ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlink_hidden_ssid_nl2q(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlink_chandef_cfg2q(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlink_acl_data_cfg2q(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_stop_ap(ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 34) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 12)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 8704, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %20, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac, align 4
  %bus3 = getelementptr inbounds %struct.qtnf_wmac, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bus3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus3, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %24, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %25 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac, align 4
  %bus6 = getelementptr inbounds %struct.qtnf_wmac, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %bus6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus6, align 4
  %bus_lock.i13 = getelementptr inbounds %struct.qtnf_bus, ptr %28, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_register_mgmt(ptr nocapture noundef readonly %vif, i16 noundef zeroext %frame_type, i1 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 16)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 768, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %frombool = zext i1 %reg to i8
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %20, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %frame_type)
  %frame_type2 = getelementptr inbounds %struct.qlink_cmd_mgmt_frame_register, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %frame_type2 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %frame_type2, align 1
  %do_register = getelementptr inbounds %struct.qlink_cmd_mgmt_frame_register, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %do_register to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %do_register, align 1
  %26 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mac, align 4
  %bus5 = getelementptr inbounds %struct.qtnf_wmac, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %bus5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus5, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %29, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %30 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mac, align 4
  %bus8 = getelementptr inbounds %struct.qtnf_wmac, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %bus8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus8, align 4
  %bus_lock.i18 = getelementptr inbounds %struct.qtnf_bus, ptr %33, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_frame(ptr nocapture noundef readonly %vif, i32 noundef %cookie, i16 noundef zeroext %flags, i16 noundef zeroext %freq, ptr noundef readonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %len, -2029
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2049, i32 %0)
  %cmp = icmp ult i32 %0, -2049
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %1 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mac, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %4 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %5 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vifid, align 4
  %conv1 = zext i8 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv1, i32 noundef %len) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %vifid4 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %7 = ptrtoint ptr %vifid4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vifid4, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end7, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %4 to i32
  %conv4.i = zext i8 %8 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 4) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %9 = call ptr @memset(ptr %call.i25.i, i32 0, i32 20)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %len9.i, align 1
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 256, ptr %11, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 1024, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %4, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %8, ptr %vifid12.i, align 1
  %20 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %23, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %cookie)
  %cookie9 = getelementptr inbounds %struct.qlink_cmd_frame_tx, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %cookie9 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %cookie9, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %freq)
  %freq10 = getelementptr inbounds %struct.qlink_cmd_frame_tx, ptr %25, i32 0, i32 2
  %29 = ptrtoint ptr %freq10 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %freq10, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %flags)
  %flags11 = getelementptr inbounds %struct.qlink_cmd_frame_tx, ptr %25, i32 0, i32 3
  %31 = ptrtoint ptr %flags11 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %flags11, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool12.not = icmp eq i32 %len, 0
  %tobool13.not = icmp eq ptr %buf, null
  %or.cond = or i1 %tobool13.not, %tobool12.not
  br i1 %or.cond, label %if.end7.if.end15_crit_edge, label %if.then14

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i39 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %len) #8
  %32 = call ptr @memcpy(ptr %call.i.i39, ptr %buf, i32 %len)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end7.if.end15_crit_edge
  %33 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mac, align 4
  %bus17 = getelementptr inbounds %struct.qtnf_wmac, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %bus17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus17, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %36, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %37 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mac, align 4
  %bus20 = getelementptr inbounds %struct.qtnf_wmac, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %bus20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus20, align 4
  %bus_lock.i38 = getelementptr inbounds %struct.qtnf_bus, ptr %40, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i38) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %qtnf_cmd_alloc_new_cmdskb.exit.thread, %do.end
  %retval.0 = phi i32 [ -7, %do.end ], [ %call.i, %if.end15 ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_mgmt_set_appie(ptr nocapture noundef readonly %vif, i8 noundef zeroext %frame_type, ptr noundef readonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %len)
  %cmp = icmp ugt i32 %len, 2048
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %conv1 = zext i8 %5 to i32
  %conv2 = zext i8 %frame_type to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %len) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %vifid5 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %6 = ptrtoint ptr %vifid5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid5, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end8, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %7 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 5) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #8
  %8 = call ptr @memset(ptr %call.i25.i, i32 0, i32 12)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %len9.i, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 256, ptr %10, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 1280, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 4
  %18 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %7, ptr %vifid12.i, align 1
  %sub.i = add nsw i32 %len, -1
  %or.i = or i32 %sub.i, 3
  %add1.i = add i32 %or.i, 9
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i) #8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 1283, ptr %call.i, align 1
  %20 = trunc i32 %len to i16
  %conv.i28 = add nuw nsw i16 %20, 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv.i28) #8
  %len5.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %len5.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %len5.i, align 1
  %type6.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %type6.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frame_type, ptr %type6.i, align 1
  %flags.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not.i29 = icmp eq i32 %len, 0
  %tobool7.not.i = icmp eq ptr %buf, null
  %or.cond.i = or i1 %tobool7.not.i, %tobool.not.i29
  br i1 %or.cond.i, label %if.end8.qtnf_cmd_tlv_ie_set_add.exit_crit_edge, label %if.then.i

if.end8.qtnf_cmd_tlv_ie_set_add.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %qtnf_cmd_tlv_ie_set_add.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %ie_data.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i, i32 0, i32 4
  %25 = call ptr @memcpy(ptr %ie_data.i, ptr %buf, i32 %len)
  br label %qtnf_cmd_tlv_ie_set_add.exit

qtnf_cmd_tlv_ie_set_add.exit:                     ; preds = %if.then.i, %if.end8.qtnf_cmd_tlv_ie_set_add.exit_crit_edge
  %26 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %29, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %30 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mac, align 4
  %bus11 = getelementptr inbounds %struct.qtnf_wmac, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %bus11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus11, align 4
  %call.i31 = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %33, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %34 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mac, align 4
  %bus14 = getelementptr inbounds %struct.qtnf_wmac, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %bus14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus14, align 4
  %bus_lock.i27 = getelementptr inbounds %struct.qtnf_bus, ptr %37, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i27) #8
  br label %cleanup

cleanup:                                          ; preds = %qtnf_cmd_tlv_ie_set_add.exit, %qtnf_cmd_alloc_new_cmdskb.exit.thread, %do.end
  %retval.0 = phi i32 [ -7, %do.end ], [ %call.i31, %qtnf_cmd_tlv_ie_set_add.exit ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_get_sta_info(ptr nocapture noundef readonly %vif, ptr noundef %sta_mac, ptr noundef %sinfo) local_unnamed_addr #0 align 64 {
entry:
  %resp_skb = alloca ptr, align 4
  %var_resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_skb) #8
  %0 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %resp_skb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var_resp_len) #8
  %1 = ptrtoint ptr %var_resp_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %var_resp_len, align 4
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %5 to i32
  %conv4.i = zext i8 %7 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 48) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %8 = call ptr @memset(ptr %call.i25.i, i32 0, i32 20)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %len9.i, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 256, ptr %10, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 12288, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %5, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 4
  %18 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %7, ptr %vifid12.i, align 1
  %19 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %22, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %sta_addr = getelementptr inbounds %struct.qlink_cmd_get_sta_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %sta_mac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sta_mac, align 4
  %27 = ptrtoint ptr %sta_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sta_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %sta_mac, i32 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qlink_cmd_get_sta_info, ptr %24, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %add.ptr1.i, align 2
  %31 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mac, align 4
  %bus3 = getelementptr inbounds %struct.qtnf_wmac, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %bus3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus3, align 4
  %call4 = call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %34, ptr noundef nonnull %call.i.i, ptr noundef nonnull %resp_skb, i32 noundef 20, ptr noundef nonnull %var_resp_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end
  %35 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resp_skb, align 4
  %data8 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data8, align 4
  %sta_addr9 = getelementptr inbounds %struct.qlink_resp_get_sta_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %sta_mac to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sta_mac, align 4
  %41 = ptrtoint ptr %sta_addr9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sta_addr9, align 4
  %xor.i = xor i32 %42, %40
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i44 = getelementptr %struct.qlink_resp_get_sta_info, ptr %38, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %add.ptr1.i44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr1.i44, align 2
  %xor37.i = xor i16 %46, %44
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mac, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %conv = zext i8 %50 to i32
  %51 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %vifid, align 4
  %conv16 = zext i8 %52 to i32
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv16, ptr noundef %sta_addr9, ptr noundef %sta_mac) #11
  br label %out

if.end20:                                         ; preds = %if.end7
  %info = getelementptr inbounds %struct.qlink_resp_get_sta_info, ptr %38, i32 0, i32 3
  %53 = ptrtoint ptr %var_resp_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %var_resp_len, align 4
  %add.ptr.i45 = getelementptr i8, ptr %info, i32 %54
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i45 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp360.i = icmp sgt i32 %54, 3
  br i1 %cmp360.i, label %if.end20.land.rhs.i_crit_edge, label %if.end20.for.end.i_crit_edge

if.end20.for.end.i_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end20.land.rhs.i_crit_edge:                    ; preds = %if.end20
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.end20.land.rhs.i_crit_edge
  %sub.ptr.sub367.i = phi i32 [ %sub.ptr.sub.i, %for.inc.i.land.rhs.i_crit_edge ], [ %54, %if.end20.land.rhs.i_crit_edge ]
  %tlv.0365.i = phi ptr [ %add.ptr19.i, %for.inc.i.land.rhs.i_crit_edge ], [ %info, %if.end20.land.rhs.i_crit_edge ]
  %stats_len.0364.i = phi i32 [ %stats_len.1.i, %for.inc.i.land.rhs.i_crit_edge ], [ 0, %if.end20.land.rhs.i_crit_edge ]
  %map_len.0363.i = phi i32 [ %map_len.1.i, %for.inc.i.land.rhs.i_crit_edge ], [ 0, %if.end20.land.rhs.i_crit_edge ]
  %map.0362.i = phi ptr [ %map.1.i, %for.inc.i.land.rhs.i_crit_edge ], [ null, %if.end20.land.rhs.i_crit_edge ]
  %stats.0361.i = phi ptr [ %stats.1.i, %for.inc.i.land.rhs.i_crit_edge ], [ null, %if.end20.land.rhs.i_crit_edge ]
  %len.i46 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0365.i, i32 0, i32 1
  %55 = ptrtoint ptr %len.i46 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %len.i46, align 1
  %57 = call i16 @llvm.bswap.i16(i16 %56) #8
  %conv.i47 = zext i16 %57 to i32
  %add.i = add nuw nsw i32 %conv.i47, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub367.i, i32 %add.i)
  %cmp5.not.i = icmp ult i32 %sub.ptr.sub367.i, %add.i
  br i1 %cmp5.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  %58 = ptrtoint ptr %tlv.0365.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %tlv.0365.i, align 1
  %60 = call i16 @llvm.bswap.i16(i16 %59) #8
  %61 = zext i16 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i16 %60, label %for.body.i.for.inc.i_crit_edge [
    i16 529, label %sw.bb.i
    i16 530, label %sw.bb10.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %val.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0365.i, i32 0, i32 2
  br label %for.inc.i

sw.bb10.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %val12.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0365.i, i32 0, i32 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb10.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge
  %stats.1.i = phi ptr [ %stats.0361.i, %for.body.i.for.inc.i_crit_edge ], [ %val12.i, %sw.bb10.i ], [ %stats.0361.i, %sw.bb.i ]
  %map.1.i = phi ptr [ %map.0362.i, %for.body.i.for.inc.i_crit_edge ], [ %map.0362.i, %sw.bb10.i ], [ %val.i, %sw.bb.i ]
  %map_len.1.i = phi i32 [ %map_len.0363.i, %for.body.i.for.inc.i_crit_edge ], [ %map_len.0363.i, %sw.bb10.i ], [ %conv.i47, %sw.bb.i ]
  %stats_len.1.i = phi i32 [ %stats_len.0364.i, %for.body.i.for.inc.i_crit_edge ], [ %conv.i47, %sw.bb10.i ], [ %stats_len.0364.i, %sw.bb.i ]
  %val14.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0365.i, i32 0, i32 2
  %sub.i = add nsw i32 %conv.i47, -1
  %or.i48 = or i32 %sub.i, 3
  %add18.i = add nsw i32 %or.i48, 1
  %add.ptr19.i = getelementptr i8, ptr %val14.i, i32 %add18.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr19.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i49 = icmp sgt i32 %sub.ptr.sub.i, 3
  br i1 %cmp.i49, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge, %if.end20.for.end.i_crit_edge
  %stats.0.lcssa.i = phi ptr [ null, %if.end20.for.end.i_crit_edge ], [ %stats.0361.i, %land.rhs.i.for.end.i_crit_edge ], [ %stats.1.i, %for.inc.i.for.end.i_crit_edge ]
  %map.0.lcssa.i = phi ptr [ null, %if.end20.for.end.i_crit_edge ], [ %map.0362.i, %land.rhs.i.for.end.i_crit_edge ], [ %map.1.i, %for.inc.i.for.end.i_crit_edge ]
  %map_len.0.lcssa.i = phi i32 [ 0, %if.end20.for.end.i_crit_edge ], [ %map_len.0363.i, %land.rhs.i.for.end.i_crit_edge ], [ %map_len.1.i, %for.inc.i.for.end.i_crit_edge ]
  %stats_len.0.lcssa.i = phi i32 [ 0, %if.end20.for.end.i_crit_edge ], [ %stats_len.0364.i, %land.rhs.i.for.end.i_crit_edge ], [ %stats_len.1.i, %for.inc.i.for.end.i_crit_edge ]
  %tlv.0.lcssa.i = phi ptr [ %info, %if.end20.for.end.i_crit_edge ], [ %tlv.0365.i, %land.rhs.i.for.end.i_crit_edge ], [ %add.ptr19.i, %for.inc.i.for.end.i_crit_edge ]
  %sub20.i = add i32 %54, -1
  %or21.i = or i32 %sub20.i, 3
  %add22.i = add i32 %or21.i, 1
  %add.ptr23.i = getelementptr i8, ptr %info, i32 %add22.i
  %cmp24.i = icmp eq ptr %tlv.0.lcssa.i, %add.ptr23.i
  br i1 %cmp24.i, label %if.end.i52, label %do.end.i50

do.end.i50:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #11
  br label %out

if.end.i52:                                       ; preds = %for.end.i
  %tobool.not.i51 = icmp eq ptr %map.0.lcssa.i, null
  %tobool26.not.i = icmp eq ptr %stats.0.lcssa.i, null
  %or.cond.i = select i1 %tobool.not.i51, i1 true, i1 %tobool26.not.i
  br i1 %or.cond.i, label %if.end.i52.out_crit_edge, label %if.end28.i

if.end.i52.out_crit_edge:                         ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end28.i:                                       ; preds = %if.end.i52
  %call29.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 1, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %stats_len.0.lcssa.i)
  %cmp31.i = icmp ugt i32 %stats_len.0.lcssa.i, 47
  %or.cond308.i = select i1 %call29.i, i1 %cmp31.i, i1 false
  br i1 %or.cond308.i, label %if.then33.i, label %if.end28.i.if.end36.i_crit_edge

if.end28.i.if.end36.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %sinfo, align 8
  %or34.i = or i64 %63, 2
  store i64 %or34.i, ptr %sinfo, align 8
  %inactive_time.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 6
  %64 = ptrtoint ptr %inactive_time.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %inactive_time.i, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65) #8
  %inactive_time35.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 2
  %67 = ptrtoint ptr %inactive_time35.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %inactive_time35.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.end28.i.if.end36.i_crit_edge
  %call37.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 0, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %stats_len.0.lcssa.i)
  %cmp40.i = icmp ugt i32 %stats_len.0.lcssa.i, 43
  %or.cond309.i = select i1 %call37.i, i1 %cmp40.i, i1 false
  br i1 %or.cond309.i, label %if.then42.i, label %if.end36.i.if.end46.i_crit_edge

if.end36.i.if.end46.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %sinfo, align 8
  %or44.i = or i64 %69, 65536
  store i64 %or44.i, ptr %sinfo, align 8
  %connected_time.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 5
  %70 = ptrtoint ptr %connected_time.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %connected_time.i, align 8
  %72 = call i32 @llvm.bswap.i32(i32 %71) #8
  %connected_time45.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 1
  %73 = ptrtoint ptr %connected_time45.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %connected_time45.i, align 8
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %if.end36.i.if.end46.i_crit_edge
  %call47.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 8, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %stats_len.0.lcssa.i)
  %cmp50.i = icmp ugt i32 %stats_len.0.lcssa.i, 105
  %or.cond310.i = select i1 %call47.i, i1 %cmp50.i, i1 false
  br i1 %or.cond310.i, label %if.then52.i, label %if.end46.i.if.end59.i_crit_edge

if.end46.i.if.end59.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i

if.then52.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %sinfo, align 8
  %or54.i = or i64 %75, 128
  store i64 %or54.i, ptr %sinfo, align 8
  %signal.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 24
  %76 = ptrtoint ptr %signal.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %signal.i, align 1
  %sub56.i = add i8 %77, -120
  %signal58.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %78 = ptrtoint ptr %signal58.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %sub56.i, ptr %signal58.i, align 1
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then52.i, %if.end46.i.if.end59.i_crit_edge
  %call60.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 9, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %stats_len.0.lcssa.i)
  %cmp63.i = icmp ugt i32 %stats_len.0.lcssa.i, 106
  %or.cond311.i = select i1 %call60.i, i1 %cmp63.i, i1 false
  br i1 %or.cond311.i, label %if.then65.i, label %if.end59.i.if.end72.i_crit_edge

if.end59.i.if.end72.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.then65.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %sinfo, align 8
  %or67.i = or i64 %80, 8192
  store i64 %or67.i, ptr %sinfo, align 8
  %signal_avg.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 25
  %81 = ptrtoint ptr %signal_avg.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %signal_avg.i, align 2
  %sub69.i = add i8 %82, -120
  %signal_avg71.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 10
  %83 = ptrtoint ptr %signal_avg71.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %sub69.i, ptr %signal_avg71.i, align 2
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then65.i, %if.end59.i.if.end72.i_crit_edge
  %call73.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 10, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %stats_len.0.lcssa.i)
  %cmp76.i = icmp ugt i32 %stats_len.0.lcssa.i, 95
  %or.cond312.i = select i1 %call73.i, i1 %cmp76.i, i1 false
  br i1 %or.cond312.i, label %if.then78.i, label %if.end72.i.if.end82.i_crit_edge

if.end72.i.if.end82.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.then78.i:                                      ; preds = %if.end72.i
  %84 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %sinfo, align 8
  %or80.i = or i64 %85, 16384
  store i64 %or80.i, ptr %sinfo, align 8
  %rxrate.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 15
  %rxrate81.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 16
  %86 = ptrtoint ptr %rxrate81.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %rxrate81.i, align 1
  %88 = call i16 @llvm.bswap.i16(i16 %87) #8
  %mul.i.i = mul i16 %88, 10
  %legacy.i.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 15, i32 2
  %89 = ptrtoint ptr %legacy.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %mul.i.i, ptr %legacy.i.i, align 2
  %mcs.i.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 16, i32 2
  %90 = ptrtoint ptr %mcs.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mcs.i.i, align 1
  %mcs2.i.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 15, i32 1
  %92 = ptrtoint ptr %mcs2.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %mcs2.i.i, align 1
  %nss.i.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 16, i32 3
  %93 = ptrtoint ptr %nss.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %nss.i.i, align 1
  %nss3.i.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 15, i32 3
  %95 = ptrtoint ptr %nss3.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %nss3.i.i, align 2
  %96 = ptrtoint ptr %rxrate.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %rxrate.i, align 2
  %bw.i.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 16, i32 4
  %97 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %bw.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %98)
  %99 = icmp ult i8 %98, 8
  br i1 %99, label %switch.lookup, label %if.then78.i.sw.epilog.i.i_crit_edge

if.then78.i.sw.epilog.i.i_crit_edge:              ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = sext i8 %98 to i32
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.qtnf_cmd_get_sta_info, i32 0, i32 %100
  %101 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %101)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %if.then78.i.sw.epilog.i.i_crit_edge
  %.sink.i.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.then78.i.sw.epilog.i.i_crit_edge ]
  %bw16.i.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 15, i32 4
  %102 = ptrtoint ptr %bw16.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %.sink.i.i, ptr %bw16.i.i, align 1
  %flags17.i.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 16, i32 1
  %103 = ptrtoint ptr %flags17.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %flags17.i.i, align 1
  %conv18.i.i = zext i8 %104 to i32
  %and.i.i = and i32 %conv18.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %sw.epilog.i.i.if.end42.sink.split.i.i_crit_edge

sw.epilog.i.i.if.end42.sink.split.i.i_crit_edge:  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split.i.i

if.else.i.i:                                      ; preds = %sw.epilog.i.i
  %and24.i.i = and i32 %conv18.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.else31.i.i, label %if.else.i.i.if.end42.sink.split.i.i_crit_edge

if.else.i.i.if.end42.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split.i.i

if.else31.i.i:                                    ; preds = %if.else.i.i
  %and34.i.i = and i32 %conv18.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.else31.i.i.if.end42.i.i_crit_edge, label %if.else31.i.i.if.end42.sink.split.i.i_crit_edge

if.else31.i.i.if.end42.sink.split.i.i_crit_edge:  ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split.i.i

if.else31.i.i.if.end42.i.i_crit_edge:             ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i.i

if.end42.sink.split.i.i:                          ; preds = %if.else31.i.i.if.end42.sink.split.i.i_crit_edge, %if.else.i.i.if.end42.sink.split.i.i_crit_edge, %sw.epilog.i.i.if.end42.sink.split.i.i_crit_edge
  %.sink74.i.i = phi i8 [ 1, %sw.epilog.i.i.if.end42.sink.split.i.i_crit_edge ], [ 2, %if.else.i.i.if.end42.sink.split.i.i_crit_edge ], [ 16, %if.else31.i.i.if.end42.sink.split.i.i_crit_edge ]
  %105 = ptrtoint ptr %rxrate.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %.sink74.i.i, ptr %rxrate.i, align 2
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.end42.sink.split.i.i, %if.else31.i.i.if.end42.i.i_crit_edge
  %106 = ptrtoint ptr %flags17.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %flags17.i.i, align 1
  %108 = and i8 %107, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool46.not.i.i = icmp eq i8 %108, 0
  br i1 %tobool46.not.i.i, label %if.end42.i.i.if.end82.i_crit_edge, label %if.then47.i.i

if.end42.i.i.if.end82.i_crit_edge:                ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.then47.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %rxrate.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %rxrate.i, align 2
  %111 = or i8 %110, 4
  store i8 %111, ptr %rxrate.i, align 2
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then47.i.i, %if.end42.i.i.if.end82.i_crit_edge, %if.end72.i.if.end82.i_crit_edge
  %call83.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 11, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 89, i32 %stats_len.0.lcssa.i)
  %cmp86.i = icmp ugt i32 %stats_len.0.lcssa.i, 89
  %or.cond313.i = select i1 %call83.i, i1 %cmp86.i, i1 false
  br i1 %or.cond313.i, label %if.then88.i, label %if.end82.i.if.end92.i_crit_edge

if.end82.i.if.end92.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i

if.then88.i:                                      ; preds = %if.end82.i
  %112 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %sinfo, align 8
  %or90.i = or i64 %113, 256
  store i64 %or90.i, ptr %sinfo, align 8
  %txrate.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  %txrate91.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 15
  %114 = ptrtoint ptr %txrate91.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %txrate91.i, align 1
  %116 = call i16 @llvm.bswap.i16(i16 %115) #8
  %mul.i324.i = mul i16 %116, 10
  %legacy.i325.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %117 = ptrtoint ptr %legacy.i325.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %mul.i324.i, ptr %legacy.i325.i, align 2
  %mcs.i326.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 15, i32 2
  %118 = ptrtoint ptr %mcs.i326.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %mcs.i326.i, align 1
  %mcs2.i327.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 1
  %120 = ptrtoint ptr %mcs2.i327.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %mcs2.i327.i, align 1
  %nss.i328.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 15, i32 3
  %121 = ptrtoint ptr %nss.i328.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %nss.i328.i, align 1
  %nss3.i329.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 3
  %123 = ptrtoint ptr %nss3.i329.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %nss3.i329.i, align 2
  %124 = ptrtoint ptr %txrate.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %txrate.i, align 2
  %bw.i330.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 15, i32 4
  %125 = ptrtoint ptr %bw.i330.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %bw.i330.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %126)
  %127 = icmp ult i8 %126, 8
  br i1 %127, label %switch.lookup53, label %if.then88.i.sw.epilog.i343.i_crit_edge

if.then88.i.sw.epilog.i343.i_crit_edge:           ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i343.i

switch.lookup53:                                  ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #10
  %128 = sext i8 %126 to i32
  %switch.gep54 = getelementptr inbounds [8 x i8], ptr @switch.table.qtnf_cmd_get_sta_info.128, i32 0, i32 %128
  %129 = ptrtoint ptr %switch.gep54 to i32
  call void @__asan_load1_noabort(i32 %129)
  %switch.load55 = load i8, ptr %switch.gep54, align 1
  br label %sw.epilog.i343.i

sw.epilog.i343.i:                                 ; preds = %switch.lookup53, %if.then88.i.sw.epilog.i343.i_crit_edge
  %.sink.i337.i = phi i8 [ %switch.load55, %switch.lookup53 ], [ 0, %if.then88.i.sw.epilog.i343.i_crit_edge ]
  %bw16.i338.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 4
  %130 = ptrtoint ptr %bw16.i338.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %.sink.i337.i, ptr %bw16.i338.i, align 1
  %flags17.i339.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 15, i32 1
  %131 = ptrtoint ptr %flags17.i339.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %flags17.i339.i, align 1
  %conv18.i340.i = zext i8 %132 to i32
  %and.i341.i = and i32 %conv18.i340.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i341.i)
  %tobool.not.i342.i = icmp eq i32 %and.i341.i, 0
  br i1 %tobool.not.i342.i, label %if.else.i346.i, label %sw.epilog.i343.i.if.end42.sink.split.i351.i_crit_edge

sw.epilog.i343.i.if.end42.sink.split.i351.i_crit_edge: ; preds = %sw.epilog.i343.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split.i351.i

if.else.i346.i:                                   ; preds = %sw.epilog.i343.i
  %and24.i344.i = and i32 %conv18.i340.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i344.i)
  %tobool25.not.i345.i = icmp eq i32 %and24.i344.i, 0
  br i1 %tobool25.not.i345.i, label %if.else31.i349.i, label %if.else.i346.i.if.end42.sink.split.i351.i_crit_edge

if.else.i346.i.if.end42.sink.split.i351.i_crit_edge: ; preds = %if.else.i346.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split.i351.i

if.else31.i349.i:                                 ; preds = %if.else.i346.i
  %and34.i347.i = and i32 %conv18.i340.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i347.i)
  %tobool35.not.i348.i = icmp eq i32 %and34.i347.i, 0
  br i1 %tobool35.not.i348.i, label %if.else31.i349.i.if.end42.i353.i_crit_edge, label %if.else31.i349.i.if.end42.sink.split.i351.i_crit_edge

if.else31.i349.i.if.end42.sink.split.i351.i_crit_edge: ; preds = %if.else31.i349.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split.i351.i

if.else31.i349.i.if.end42.i353.i_crit_edge:       ; preds = %if.else31.i349.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i353.i

if.end42.sink.split.i351.i:                       ; preds = %if.else31.i349.i.if.end42.sink.split.i351.i_crit_edge, %if.else.i346.i.if.end42.sink.split.i351.i_crit_edge, %sw.epilog.i343.i.if.end42.sink.split.i351.i_crit_edge
  %.sink74.i350.i = phi i8 [ 1, %sw.epilog.i343.i.if.end42.sink.split.i351.i_crit_edge ], [ 2, %if.else.i346.i.if.end42.sink.split.i351.i_crit_edge ], [ 16, %if.else31.i349.i.if.end42.sink.split.i351.i_crit_edge ]
  %133 = ptrtoint ptr %txrate.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %.sink74.i350.i, ptr %txrate.i, align 2
  br label %if.end42.i353.i

if.end42.i353.i:                                  ; preds = %if.end42.sink.split.i351.i, %if.else31.i349.i.if.end42.i353.i_crit_edge
  %134 = ptrtoint ptr %flags17.i339.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %flags17.i339.i, align 1
  %136 = and i8 %135, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool46.not.i352.i = icmp eq i8 %136, 0
  br i1 %tobool46.not.i352.i, label %if.end42.i353.i.if.end92.i_crit_edge, label %if.then47.i354.i

if.end42.i353.i.if.end92.i_crit_edge:             ; preds = %if.end42.i353.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i

if.then47.i354.i:                                 ; preds = %if.end42.i353.i
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %txrate.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %txrate.i, align 2
  %139 = or i8 %138, 4
  store i8 %139, ptr %txrate.i, align 2
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then47.i354.i, %if.end42.i353.i.if.end92.i_crit_edge, %if.end82.i.if.end92.i_crit_edge
  %call93.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 16, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %stats_len.0.lcssa.i)
  %cmp96.i = icmp ugt i32 %stats_len.0.lcssa.i, 83
  %or.cond314.i = select i1 %call93.i, i1 %cmp96.i, i1 false
  br i1 %or.cond314.i, label %if.then98.i, label %if.end92.i.if.end102.i_crit_edge

if.end92.i.if.end102.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.then98.i:                                      ; preds = %if.end92.i
  %140 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %sinfo, align 8
  %or100.i = or i64 %141, 131072
  store i64 %or100.i, ptr %sinfo, align 8
  %sta_flags.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 22
  %sta_flags101.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 14
  %142 = ptrtoint ptr %sta_flags.i to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 0, ptr %sta_flags.i, align 1
  %set.i.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 22, i32 1
  %143 = ptrtoint ptr %set.i.i to i32
  call void @__asan_storeN_noabort(i32 %143, i32 4)
  store i32 0, ptr %set.i.i, align 1
  %144 = ptrtoint ptr %sta_flags101.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %sta_flags101.i, align 1
  %146 = call i32 @llvm.bswap.i32(i32 %145) #8
  %value3.i.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 14, i32 1
  %147 = ptrtoint ptr %value3.i.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %148 = load i32, ptr %value3.i.i, align 1
  %149 = call i32 @llvm.bswap.i32(i32 %148) #8
  %and.i356.i = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i356.i)
  %tobool.not.i357.i = icmp eq i32 %and.i356.i, 0
  br i1 %tobool.not.i357.i, label %if.then98.i.if.end10.i.i_crit_edge, label %if.then.i.i

if.then98.i.if.end10.i.i_crit_edge:               ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.then98.i
  %150 = ptrtoint ptr %sta_flags.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 2, ptr %sta_flags.i, align 1
  %and5.i.i = and i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then.i.i.if.end10.i.i_crit_edge, label %if.then7.i.i

if.then.i.i.if.end10.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %set.i.i to i32
  call void @__asan_storeN_noabort(i32 %151, i32 4)
  store i32 2, ptr %set.i.i, align 1
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then7.i.i, %if.then.i.i.if.end10.i.i_crit_edge, %if.then98.i.if.end10.i.i_crit_edge
  %and11.i.i = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end10.i.i.if.end22.i.i_crit_edge, label %if.then13.i.i

if.end10.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  %152 = ptrtoint ptr %sta_flags.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %sta_flags.i, align 1
  %or15.i.i = or i32 %153, 4
  store i32 %or15.i.i, ptr %sta_flags.i, align 1
  %and16.i.i = and i32 %149, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.then13.i.i.if.end22.i.i_crit_edge, label %if.then18.i.i

if.then13.i.i.if.end22.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

if.then18.i.i:                                    ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %154 = ptrtoint ptr %set.i.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %set.i.i, align 1
  %or20.i.i = or i32 %155, 4
  store i32 %or20.i.i, ptr %set.i.i, align 1
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then18.i.i, %if.then13.i.i.if.end22.i.i_crit_edge, %if.end10.i.i.if.end22.i.i_crit_edge
  %and23.i.i = and i32 %146, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end22.i.i.if.end34.i.i_crit_edge, label %if.then25.i.i

if.end22.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i

if.then25.i.i:                                    ; preds = %if.end22.i.i
  %156 = ptrtoint ptr %sta_flags.i to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %sta_flags.i, align 1
  %or27.i.i = or i32 %157, 8
  store i32 %or27.i.i, ptr %sta_flags.i, align 1
  %and28.i.i = and i32 %149, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.then25.i.i.if.end34.i.i_crit_edge, label %if.then30.i.i

if.then25.i.i.if.end34.i.i_crit_edge:             ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i

if.then30.i.i:                                    ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %158 = ptrtoint ptr %set.i.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %set.i.i, align 1
  %or32.i.i = or i32 %159, 8
  store i32 %or32.i.i, ptr %set.i.i, align 1
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then30.i.i, %if.then25.i.i.if.end34.i.i_crit_edge, %if.end22.i.i.if.end34.i.i_crit_edge
  %and35.i.i = and i32 %146, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end34.i.i.if.end46.i.i_crit_edge, label %if.then37.i.i

if.end34.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i.i

if.then37.i.i:                                    ; preds = %if.end34.i.i
  %160 = ptrtoint ptr %sta_flags.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %sta_flags.i, align 1
  %or39.i.i = or i32 %161, 16
  store i32 %or39.i.i, ptr %sta_flags.i, align 1
  %and40.i.i = and i32 %149, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.then37.i.i.if.end46.i.i_crit_edge, label %if.then42.i.i

if.then37.i.i.if.end46.i.i_crit_edge:             ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i.i

if.then42.i.i:                                    ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %set.i.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %set.i.i, align 1
  %or44.i.i = or i32 %163, 16
  store i32 %or44.i.i, ptr %set.i.i, align 1
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then42.i.i, %if.then37.i.i.if.end46.i.i_crit_edge, %if.end34.i.i.if.end46.i.i_crit_edge
  %and47.i.i = and i32 %146, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end46.i.i.if.end58.i.i_crit_edge, label %if.then49.i.i

if.end46.i.i.if.end58.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i.i

if.then49.i.i:                                    ; preds = %if.end46.i.i
  %164 = ptrtoint ptr %sta_flags.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %sta_flags.i, align 1
  %or51.i.i = or i32 %165, 32
  store i32 %or51.i.i, ptr %sta_flags.i, align 1
  %and52.i.i = and i32 %149, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i)
  %tobool53.not.i.i = icmp eq i32 %and52.i.i, 0
  br i1 %tobool53.not.i.i, label %if.then49.i.i.if.end58.i.i_crit_edge, label %if.then54.i.i

if.then49.i.i.if.end58.i.i_crit_edge:             ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i.i

if.then54.i.i:                                    ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %set.i.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %set.i.i, align 1
  %or56.i.i = or i32 %167, 32
  store i32 %or56.i.i, ptr %set.i.i, align 1
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %if.then54.i.i, %if.then49.i.i.if.end58.i.i_crit_edge, %if.end46.i.i.if.end58.i.i_crit_edge
  %and59.i.i = and i32 %146, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i)
  %tobool60.not.i.i = icmp eq i32 %and59.i.i, 0
  br i1 %tobool60.not.i.i, label %if.end58.i.i.if.end70.i.i_crit_edge, label %if.then61.i.i

if.end58.i.i.if.end70.i.i_crit_edge:              ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i.i

if.then61.i.i:                                    ; preds = %if.end58.i.i
  %168 = ptrtoint ptr %sta_flags.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %sta_flags.i, align 1
  %or63.i.i = or i32 %169, 64
  store i32 %or63.i.i, ptr %sta_flags.i, align 1
  %and64.i.i = and i32 %149, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i.i)
  %tobool65.not.i.i = icmp eq i32 %and64.i.i, 0
  br i1 %tobool65.not.i.i, label %if.then61.i.i.if.end70.i.i_crit_edge, label %if.then66.i.i

if.then61.i.i.if.end70.i.i_crit_edge:             ; preds = %if.then61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i.i

if.then66.i.i:                                    ; preds = %if.then61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %170 = ptrtoint ptr %set.i.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %set.i.i, align 1
  %or68.i.i = or i32 %171, 64
  store i32 %or68.i.i, ptr %set.i.i, align 1
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %if.then66.i.i, %if.then61.i.i.if.end70.i.i_crit_edge, %if.end58.i.i.if.end70.i.i_crit_edge
  %and71.i.i = and i32 %146, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i.i)
  %tobool72.not.i.i = icmp eq i32 %and71.i.i, 0
  br i1 %tobool72.not.i.i, label %if.end70.i.i.if.end102.i_crit_edge, label %if.then73.i.i

if.end70.i.i.if.end102.i_crit_edge:               ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.then73.i.i:                                    ; preds = %if.end70.i.i
  %172 = ptrtoint ptr %sta_flags.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %173 = load i32, ptr %sta_flags.i, align 1
  %or75.i.i = or i32 %173, 128
  store i32 %or75.i.i, ptr %sta_flags.i, align 1
  %and76.i.i = and i32 %149, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i.i)
  %tobool77.not.i.i = icmp eq i32 %and76.i.i, 0
  br i1 %tobool77.not.i.i, label %if.then73.i.i.if.end102.i_crit_edge, label %if.then78.i.i

if.then73.i.i.if.end102.i_crit_edge:              ; preds = %if.then73.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.then78.i.i:                                    ; preds = %if.then73.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %174 = ptrtoint ptr %set.i.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %set.i.i, align 1
  %or80.i.i = or i32 %175, 128
  store i32 %or80.i.i, ptr %set.i.i, align 1
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then78.i.i, %if.then73.i.i.if.end102.i_crit_edge, %if.end70.i.i.if.end102.i_crit_edge, %if.end92.i.if.end102.i_crit_edge
  %call103.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 2, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %stats_len.0.lcssa.i)
  %cmp106.i = icmp ugt i32 %stats_len.0.lcssa.i, 7
  %or.cond315.i = select i1 %call103.i, i1 %cmp106.i, i1 false
  br i1 %or.cond315.i, label %if.then108.i, label %if.end102.i.if.end112.i_crit_edge

if.end102.i.if.end112.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112.i

if.then108.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %sinfo, align 8
  %or110.i = or i64 %177, 4
  store i64 %or110.i, ptr %sinfo, align 8
  %178 = ptrtoint ptr %stats.0.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %stats.0.lcssa.i, align 8
  %180 = call i64 @llvm.bswap.i64(i64 %179) #8
  %rx_bytes111.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 4
  %181 = ptrtoint ptr %rx_bytes111.i to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %180, ptr %rx_bytes111.i, align 8
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then108.i, %if.end102.i.if.end112.i_crit_edge
  %call113.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 3, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %stats_len.0.lcssa.i)
  %cmp116.i = icmp ugt i32 %stats_len.0.lcssa.i, 15
  %or.cond316.i = select i1 %call113.i, i1 %cmp116.i, i1 false
  br i1 %or.cond316.i, label %if.then118.i, label %if.end112.i.if.end122.i_crit_edge

if.end112.i.if.end122.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122.i

if.then118.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %sinfo, align 8
  %or120.i = or i64 %183, 8
  store i64 %or120.i, ptr %sinfo, align 8
  %tx_bytes.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 1
  %184 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %tx_bytes.i, align 8
  %186 = call i64 @llvm.bswap.i64(i64 %185) #8
  %tx_bytes121.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 5
  %187 = ptrtoint ptr %tx_bytes121.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %186, ptr %tx_bytes121.i, align 8
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then118.i, %if.end112.i.if.end122.i_crit_edge
  %call123.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 4, i32 noundef %map_len.0.lcssa.i) #8
  %or.cond317.i = select i1 %call123.i, i1 %cmp106.i, i1 false
  br i1 %or.cond317.i, label %if.then128.i, label %if.end122.i.if.end133.i_crit_edge

if.end122.i.if.end133.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133.i

if.then128.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  %188 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %sinfo, align 8
  %or130.i = or i64 %189, 8388608
  store i64 %or130.i, ptr %sinfo, align 8
  %190 = ptrtoint ptr %stats.0.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %stats.0.lcssa.i, align 8
  %192 = call i64 @llvm.bswap.i64(i64 %191) #8
  %rx_bytes132.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 4
  %193 = ptrtoint ptr %rx_bytes132.i to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %192, ptr %rx_bytes132.i, align 8
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then128.i, %if.end122.i.if.end133.i_crit_edge
  %call134.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 5, i32 noundef %map_len.0.lcssa.i) #8
  %or.cond318.i = select i1 %call134.i, i1 %cmp116.i, i1 false
  br i1 %or.cond318.i, label %if.then139.i, label %if.end133.i.if.end144.i_crit_edge

if.end133.i.if.end144.i_crit_edge:                ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144.i

if.then139.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #10
  %194 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %sinfo, align 8
  %or141.i = or i64 %195, 16777216
  store i64 %or141.i, ptr %sinfo, align 8
  %tx_bytes142.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 1
  %196 = ptrtoint ptr %tx_bytes142.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %tx_bytes142.i, align 8
  %198 = call i64 @llvm.bswap.i64(i64 %197) #8
  %tx_bytes143.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 5
  %199 = ptrtoint ptr %tx_bytes143.i to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %198, ptr %tx_bytes143.i, align 8
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then139.i, %if.end133.i.if.end144.i_crit_edge
  %call145.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 12, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %stats_len.0.lcssa.i)
  %cmp148.i = icmp ugt i32 %stats_len.0.lcssa.i, 51
  %or.cond319.i = select i1 %call145.i, i1 %cmp148.i, i1 false
  br i1 %or.cond319.i, label %if.then150.i, label %if.end144.i.if.end154.i_crit_edge

if.end144.i.if.end154.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154.i

if.then150.i:                                     ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #10
  %200 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %sinfo, align 8
  %or152.i = or i64 %201, 512
  store i64 %or152.i, ptr %sinfo, align 8
  %rx_packets.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 7
  %202 = ptrtoint ptr %rx_packets.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %rx_packets.i, align 8
  %204 = call i32 @llvm.bswap.i32(i32 %203) #8
  %rx_packets153.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 16
  %205 = ptrtoint ptr %rx_packets153.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %rx_packets153.i, align 4
  br label %if.end154.i

if.end154.i:                                      ; preds = %if.then150.i, %if.end144.i.if.end154.i_crit_edge
  %call155.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 13, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %stats_len.0.lcssa.i)
  %cmp158.i = icmp ugt i32 %stats_len.0.lcssa.i, 55
  %or.cond320.i = select i1 %call155.i, i1 %cmp158.i, i1 false
  br i1 %or.cond320.i, label %if.then160.i, label %if.end154.i.if.end164.i_crit_edge

if.end154.i.if.end164.i_crit_edge:                ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164.i

if.then160.i:                                     ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  %206 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %sinfo, align 8
  %or162.i = or i64 %207, 1024
  store i64 %or162.i, ptr %sinfo, align 8
  %tx_packets.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 8
  %208 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %tx_packets.i, align 4
  %210 = call i32 @llvm.bswap.i32(i32 %209) #8
  %tx_packets163.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 17
  %211 = ptrtoint ptr %tx_packets163.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %tx_packets163.i, align 8
  br label %if.end164.i

if.end164.i:                                      ; preds = %if.then160.i, %if.end154.i.if.end164.i_crit_edge
  %call165.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 7, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %stats_len.0.lcssa.i)
  %cmp168.i = icmp ugt i32 %stats_len.0.lcssa.i, 23
  %or.cond321.i = select i1 %call165.i, i1 %cmp168.i, i1 false
  br i1 %or.cond321.i, label %if.then170.i, label %if.end164.i.if.end174.i_crit_edge

if.end164.i.if.end174.i_crit_edge:                ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174.i

if.then170.i:                                     ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #10
  %212 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %sinfo, align 8
  %or172.i = or i64 %213, 536870912
  store i64 %or172.i, ptr %sinfo, align 8
  %rx_beacon.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 2
  %214 = ptrtoint ptr %rx_beacon.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %rx_beacon.i, align 8
  %216 = call i64 @llvm.bswap.i64(i64 %215) #8
  %rx_beacon173.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 34
  %217 = ptrtoint ptr %rx_beacon173.i to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 %216, ptr %rx_beacon173.i, align 8
  br label %if.end174.i

if.end174.i:                                      ; preds = %if.then170.i, %if.end164.i.if.end174.i_crit_edge
  %call175.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 6, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %stats_len.0.lcssa.i)
  %cmp178.i = icmp ugt i32 %stats_len.0.lcssa.i, 67
  %or.cond322.i = select i1 %call175.i, i1 %cmp178.i, i1 false
  br i1 %or.cond322.i, label %if.then180.i, label %if.end174.i.if.end184.i_crit_edge

if.end174.i.if.end184.i_crit_edge:                ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184.i

if.then180.i:                                     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #10
  %218 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %sinfo, align 8
  %or182.i = or i64 %219, 268435456
  store i64 %or182.i, ptr %sinfo, align 8
  %rx_dropped_misc.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 11
  %220 = ptrtoint ptr %rx_dropped_misc.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %rx_dropped_misc.i, align 8
  %222 = call i32 @llvm.bswap.i32(i32 %221) #8
  %rx_dropped_misc183.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 20
  %223 = ptrtoint ptr %rx_dropped_misc183.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %rx_dropped_misc183.i, align 4
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.then180.i, %if.end174.i.if.end184.i_crit_edge
  %call185.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 15, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %stats_len.0.lcssa.i)
  %cmp188.i = icmp ugt i32 %stats_len.0.lcssa.i, 63
  %or.cond323.i = select i1 %call185.i, i1 %cmp188.i, i1 false
  br i1 %or.cond323.i, label %if.then190.i, label %if.end184.i.out_crit_edge

if.end184.i.out_crit_edge:                        ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then190.i:                                     ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #10
  %224 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %sinfo, align 8
  %or192.i = or i64 %225, 4096
  store i64 %or192.i, ptr %sinfo, align 8
  %tx_failed.i = getelementptr inbounds %struct.qlink_sta_stats, ptr %stats.0.lcssa.i, i32 0, i32 10
  %226 = ptrtoint ptr %tx_failed.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %tx_failed.i, align 4
  %228 = call i32 @llvm.bswap.i32(i32 %227) #8
  %tx_failed193.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 19
  %229 = ptrtoint ptr %tx_failed193.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %tx_failed193.i, align 8
  br label %out

out:                                              ; preds = %if.then190.i, %if.end184.i.out_crit_edge, %if.end.i52.out_crit_edge, %do.end.i50, %do.end, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ -22, %do.end ], [ 0, %do.end.i50 ], [ 0, %if.end.i52.out_crit_edge ], [ 0, %if.end184.i.out_crit_edge ], [ 0, %if.then190.i ]
  %230 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %mac, align 4
  %bus23 = getelementptr inbounds %struct.qtnf_wmac, ptr %231, i32 0, i32 3
  %232 = ptrtoint ptr %bus23 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %bus23, align 4
  %bus_lock.i42 = getelementptr inbounds %struct.qtnf_bus, ptr %233, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %bus_lock.i42) #8
  %234 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %resp_skb, align 4
  call void @consume_skb(ptr noundef %235) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var_resp_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_skb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %bus, ptr noundef %cmd_skb, ptr noundef writeonly %response_skb, i32 noundef %const_resp_size, ptr noundef writeonly %var_resp_size) unnamed_addr #0 align 64 {
entry:
  %resp_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_skb) #8
  %0 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %resp_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %cmd_skb, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %cmd_id1 = getelementptr inbounds %struct.qlink_cmd, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %cmd_id1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %cmd_id1, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %macid = getelementptr inbounds %struct.qlink_cmd, ptr %2, i32 0, i32 3
  %6 = ptrtoint ptr %macid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %macid, align 1
  %vifid = getelementptr inbounds %struct.qlink_cmd, ptr %2, i32 0, i32 4
  %8 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vifid, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %cmd_skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %conv = trunc i32 %11 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %len2 = getelementptr inbounds %struct.qlink_msg_header, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %len2 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %len2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_cmd_send_with_reply.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_cmd_send_with_reply, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !242

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv5 = zext i8 %7 to i32
  %conv6 = zext i8 %9 to i32
  %conv7 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_cmd_send_with_reply.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fw_state.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 1
  %14 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_state.i, align 4
  %16 = and i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %17 = icmp eq i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %4)
  %cmp.not = icmp eq i16 %4, 256
  %or.cond = select i1 %17, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end20, label %do.end14

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv9 = zext i16 %5 to i32
  %conv16 = zext i8 %7 to i32
  %conv17 = zext i8 %9 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35, i32 noundef %conv16, i32 noundef %conv17, i32 noundef %conv9, i32 noundef %15) #11
  tail call void @consume_skb(ptr noundef %cmd_skb) #8
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %call21 = call i32 @qtnf_trans_send_cmd_with_resp(ptr noundef %bus, ptr noundef %cmd_skb, ptr noundef nonnull %resp_skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end24:                                         ; preds = %if.end20
  %18 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resp_skb, align 4
  %tobool25.not = icmp eq ptr %19, null
  br i1 %tobool25.not, label %if.end24.do.end45_crit_edge, label %lor.rhs

if.end24.do.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

lor.rhs:                                          ; preds = %if.end24
  %data26 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %data26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data26, align 4
  %tobool27.not = icmp eq ptr %21, null
  br i1 %tobool27.not, label %lor.rhs.do.end45_crit_edge, label %if.end61, !prof !240

lor.rhs.do.end45_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

do.end45:                                         ; preds = %lor.rhs.do.end45_crit_edge, %if.end24.do.end45_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 111, i32 noundef 9, ptr noundef null) #8
  br label %out

if.end61:                                         ; preds = %lor.rhs
  %result = getelementptr inbounds %struct.qlink_resp, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %result to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %result, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %cmd_id1.i = getelementptr inbounds %struct.qlink_resp, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %cmd_id1.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %cmd_id1.i, align 1
  %conv2.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %4)
  %cmp.not.i = icmp eq i16 %26, %4
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i, !prof !243

do.end.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %27 = call i16 @llvm.bswap.i16(i16 %26) #8
  %conv.i = zext i16 %27 to i32
  %conv5.i = zext i8 %7 to i32
  %conv6.i = zext i8 %9 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv2.i, i32 noundef %conv.i) #11
  br label %out

if.end.i:                                         ; preds = %if.end61
  %macid.i = getelementptr inbounds %struct.qlink_resp, ptr %21, i32 0, i32 4
  %28 = ptrtoint ptr %macid.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %macid.i, align 1
  %conv11.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %7)
  %cmp12.not.i = icmp eq i8 %29, %7
  br i1 %cmp12.not.i, label %if.end30.i, label %do.end22.i, !prof !243

do.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv10.i = zext i8 %29 to i32
  %conv25.i = zext i8 %9 to i32
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %conv11.i, i32 noundef %conv25.i, i32 noundef %conv2.i, i32 noundef %conv10.i) #11
  br label %out

if.end30.i:                                       ; preds = %if.end.i
  %vifid.i = getelementptr inbounds %struct.qlink_resp, ptr %21, i32 0, i32 5
  %30 = ptrtoint ptr %vifid.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vifid.i, align 1
  %conv32.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %9)
  %cmp33.not.i = icmp eq i8 %31, %9
  br i1 %cmp33.not.i, label %if.end51.i, label %do.end43.i, !prof !243

do.end43.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.i = zext i8 %31 to i32
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.43, i32 noundef %conv11.i, i32 noundef %conv32.i, i32 noundef %conv2.i, i32 noundef %conv31.i) #11
  br label %out

if.end51.i:                                       ; preds = %if.end30.i
  %len.i = getelementptr inbounds %struct.qlink_msg_header, ptr %21, i32 0, i32 1
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %len.i, align 1
  %34 = call i16 @llvm.bswap.i16(i16 %33) #8
  %conv52.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52.i, i32 %const_resp_size)
  %cmp53.i = icmp ult i32 %conv52.i, %const_resp_size
  br i1 %cmp53.i, label %do.end63.i, label %if.end67, !prof !240

do.end63.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.43, i32 noundef %conv11.i, i32 noundef %conv32.i, i32 noundef %conv2.i, i32 noundef %conv52.i, i32 noundef %const_resp_size) #11
  br label %out

if.end67:                                         ; preds = %if.end51.i
  %tobool68.not = icmp eq ptr %response_skb, null
  %tobool70.not = icmp eq ptr %var_resp_size, null
  %or.cond127 = or i1 %tobool68.not, %tobool70.not
  br i1 %or.cond127, label %if.end67.out_crit_edge, label %out.thread

if.end67.out_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out.thread:                                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %len.i, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %conv74 = zext i16 %37 to i32
  %sub = sub i32 %conv74, %const_resp_size
  %38 = ptrtoint ptr %var_resp_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %var_resp_size, align 4
  %resp_res.0135 = zext i16 %24 to i32
  br label %if.then77

out:                                              ; preds = %if.end67.out_crit_edge, %do.end63.i, %do.end43.i, %do.end22.i, %do.end.i, %do.end45, %if.end20.out_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end20.out_crit_edge ], [ -14, %do.end45 ], [ 0, %if.end67.out_crit_edge ], [ -28, %do.end63.i ], [ -22, %do.end43.i ], [ -22, %do.end22.i ], [ -22, %do.end.i ]
  %resp_res.0.shrunk = phi i16 [ 0, %if.end20.out_crit_edge ], [ 0, %do.end45 ], [ %24, %if.end67.out_crit_edge ], [ %24, %do.end63.i ], [ %24, %do.end43.i ], [ %24, %do.end22.i ], [ %24, %do.end.i ]
  %resp_res.0 = zext i16 %resp_res.0.shrunk to i32
  %tobool76.not = icmp eq ptr %response_skb, null
  br i1 %tobool76.not, label %if.else, label %out.if.then77_crit_edge

out.if.then77_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77

if.then77:                                        ; preds = %out.if.then77_crit_edge, %out.thread
  %resp_res.0140 = phi i32 [ %resp_res.0135, %out.thread ], [ %resp_res.0, %out.if.then77_crit_edge ]
  %ret.0138 = phi i32 [ 0, %out.thread ], [ %ret.0, %out.if.then77_crit_edge ]
  %39 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resp_skb, align 4
  %41 = ptrtoint ptr %response_skb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %response_skb, align 4
  br label %if.end78

if.else:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resp_skb, align 4
  call void @consume_skb(ptr noundef %43) #8
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then77
  %resp_res.0139 = phi i32 [ %resp_res.0, %if.else ], [ %resp_res.0140, %if.then77 ]
  %ret.0137 = phi i32 [ %ret.0, %if.else ], [ %ret.0138, %if.then77 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0137)
  %tobool79.not = icmp eq i32 %ret.0137, 0
  br i1 %tobool79.not, label %if.then80, label %do.end85

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %resp_res.0139)
  %44 = icmp ult i32 %resp_res.0139, 8
  br i1 %44, label %switch.lookup, label %if.then80.cleanup_crit_edge

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %conv87 = zext i8 %7 to i32
  %conv88 = zext i8 %9 to i32
  %conv89 = zext i16 %5 to i32
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.35, i32 noundef %conv87, i32 noundef %conv88, i32 noundef %conv89, i32 noundef %ret.0137) #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.qtnf_cmd_send_with_reply, i32 0, i32 %resp_res.0139
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end85, %if.then80.cleanup_crit_edge, %do.end14
  %retval.0 = phi i32 [ %ret.0137, %do.end85 ], [ -19, %do.end14 ], [ %switch.load, %switch.lookup ], [ -14, %if.then80.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_skb) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_add_intf(ptr nocapture noundef %vif, i32 noundef %iftype, i32 noundef %use4addr, ptr noundef %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qtnf_cmd_send_add_change_intf(ptr noundef %vif, i32 noundef %iftype, i32 noundef %use4addr, ptr noundef %mac_addr, i32 noundef 21)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_cmd_send_add_change_intf(ptr nocapture noundef %vif, i32 noundef %iftype, i32 noundef %use4addr, ptr noundef readonly %mac_addr, i32 noundef %cmd_type) unnamed_addr #0 align 64 {
entry:
  %resp_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_skb) #8
  %0 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %resp_skb, align 4
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %1 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mac, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %5 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %4 to i32
  %conv4.i = zext i8 %6 to i32
  %conv5.i = and i32 %cmd_type, 65535
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef %conv5.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %cmd_type to i16
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #8
  %7 = call ptr @memset(ptr %call.i25.i, i32 0, i32 24)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %11 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %len9.i, align 1
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 256, ptr %9, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %9, i32 0, i32 3
  %17 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %4, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %9, i32 0, i32 4
  %18 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %6, ptr %vifid12.i, align 1
  %19 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %22, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %conv2 = trunc i32 %use4addr to i8
  %intf_info = getelementptr inbounds %struct.qlink_cmd_manage_intf, ptr %24, i32 0, i32 1
  %use4addr3 = getelementptr inbounds %struct.qlink_cmd_manage_intf, ptr %24, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %use4addr3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv2, ptr %use4addr3, align 1
  %26 = zext i32 %iftype to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %iftype, label %do.end [
    i32 3, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mac, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv10 = zext i8 %30 to i32
  %31 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %vifid, align 4
  %conv12 = zext i8 %32 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %iftype) #11
  br label %out

sw.epilog:                                        ; preds = %sw.bb5, %if.end.sw.epilog_crit_edge
  %storemerge = phi i16 [ 512, %sw.bb5 ], [ 256, %if.end.sw.epilog_crit_edge ]
  %33 = ptrtoint ptr %intf_info to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %storemerge, ptr %intf_info, align 1
  %tobool14.not = icmp eq ptr %mac_addr, null
  %mac_addr19 = getelementptr inbounds %struct.qlink_cmd_manage_intf, ptr %24, i32 0, i32 1, i32 2
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mac_addr, align 4
  %36 = ptrtoint ptr %mac_addr19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %mac_addr19, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qlink_cmd_manage_intf, ptr %24, i32 0, i32 1, i32 2, i32 4
  %39 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %add.ptr1.i, align 2
  br label %if.end21

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %40 = call ptr @memset(ptr %mac_addr19, i32 0, i32 6)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15
  %41 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mac, align 4
  %bus23 = getelementptr inbounds %struct.qtnf_wmac, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %bus23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus23, align 4
  %call24 = call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %44, ptr noundef nonnull %call.i.i, ptr noundef nonnull %resp_skb, i32 noundef 24, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resp_skb, align 4
  %data28 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data28, align 4
  %mac_addr29 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 2
  %mac_addr32 = getelementptr inbounds %struct.qlink_resp_manage_intf, ptr %48, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %mac_addr32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mac_addr32, align 4
  %51 = ptrtoint ptr %mac_addr29 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %mac_addr29, align 4
  %add.ptr.i57 = getelementptr %struct.qlink_resp_manage_intf, ptr %48, i32 0, i32 1, i32 2, i32 4
  %52 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i57, align 2
  %add.ptr1.i58 = getelementptr %struct.qtnf_vif, ptr %vif, i32 0, i32 2, i32 4
  %54 = ptrtoint ptr %add.ptr1.i58 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %add.ptr1.i58, align 2
  br label %out

out:                                              ; preds = %if.end27, %if.end21.out_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call24, %if.end21.out_crit_edge ], [ 0, %if.end27 ]
  %55 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mac, align 4
  %bus35 = getelementptr inbounds %struct.qtnf_wmac, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %bus35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus35, align 4
  %bus_lock.i56 = getelementptr inbounds %struct.qtnf_bus, ptr %58, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %bus_lock.i56) #8
  %59 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %resp_skb, align 4
  call void @consume_skb(ptr noundef %60) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_skb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_change_intf_type(ptr nocapture noundef %vif, i32 noundef %iftype, i32 noundef %use4addr, ptr noundef %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qtnf_cmd_send_add_change_intf(ptr noundef %vif, i32 noundef %iftype, i32 noundef %use4addr, ptr noundef %mac_addr, i32 noundef 23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %iftype1 = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %0 = ptrtoint ptr %iftype1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iftype1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %iftype)
  %cmp2.not = icmp eq i32 %1, %iftype
  br i1 %cmp2.not, label %land.lhs.true.if.end10_crit_edge, label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %priv_to_wiphy.exit, !prof !240

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #8, !srcloc !244
  unreachable

priv_to_wiphy.exit:                               ; preds = %if.then
  %arrayidx = getelementptr i8, ptr %3, i32 -1104
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %priv_to_wiphy.exit.for.inc_crit_edge, label %if.end

priv_to_wiphy.exit.for.inc_crit_edge:             ; preds = %priv_to_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %priv_to_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac, align 4
  %call9 = tail call i32 @qtnf_cmd_band_info_get(ptr noundef %7, ptr noundef nonnull %5)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %priv_to_wiphy.exit.for.inc_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %3, i32 -1100
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac, align 4
  %call9.1 = tail call i32 @qtnf_cmd_band_info_get(ptr noundef %11, ptr noundef nonnull %9)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %3, i32 -1096
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %13, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac, align 4
  %call9.2 = tail call i32 @qtnf_cmd_band_info_get(ptr noundef %15, ptr noundef nonnull %13)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr i8, ptr %3, i32 -1092
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %17, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mac, align 4
  %call9.3 = tail call i32 @qtnf_cmd_band_info_get(ptr noundef %19, ptr noundef nonnull %17)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr i8, ptr %3, i32 -1088
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %21, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mac, align 4
  %call9.4 = tail call i32 @qtnf_cmd_band_info_get(ptr noundef %23, ptr noundef nonnull %21)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr i8, ptr %3, i32 -1084
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %25, null
  br i1 %tobool.not.5, label %for.inc.4.if.end10_crit_edge, label %if.end.5

for.inc.4.if.end10_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mac, align 4
  %call9.5 = tail call i32 @qtnf_cmd_band_info_get(ptr noundef %27, ptr noundef nonnull %25)
  br label %if.end10

if.end10:                                         ; preds = %if.end.5, %for.inc.4.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_band_info_get(ptr nocapture noundef readonly %mac, ptr nocapture noundef %band) local_unnamed_addr #0 align 64 {
entry:
  %resp_skb = alloca ptr, align 4
  %info_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_skb) #8
  %0 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %resp_skb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info_len) #8
  %1 = ptrtoint ptr %info_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %info_len, align 4
  %band1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 2
  %2 = ptrtoint ptr %band1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %band1, align 4
  %call = tail call i32 @qlink_utils_band_cfg2q(i32 noundef %3) #8
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef 0, i32 noundef 26) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 16)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 6656, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %5, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %vifid12.i, align 1
  %conv = trunc i32 %call to i8
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %band3 = getelementptr inbounds %struct.qlink_cmd_band_info_get, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %band3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %band3, align 1
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 3
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %21, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %call5 = call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %23, ptr noundef nonnull %call.i.i, ptr noundef nonnull %resp_skb, i32 noundef 16, ptr noundef nonnull %info_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %if.end
  %24 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resp_skb, align 4
  %data9 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data9, align 4
  %band10 = getelementptr inbounds %struct.qlink_resp_band_info_get, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %band10 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %band10, align 1
  %conv11 = zext i8 %29 to i32
  %conv12 = and i32 %call, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12, i32 %conv11)
  %cmp.not = icmp eq i32 %conv12, %conv11
  br i1 %cmp.not, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mac, align 4
  %conv16 = zext i8 %31 to i32
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %conv16, i32 noundef %conv11, i32 noundef %conv12) #11
  br label %out

if.end21:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %info_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %info_len, align 4
  %call22 = call fastcc i32 @qtnf_cmd_resp_fill_band_info(ptr noundef %band, ptr noundef %27, i32 noundef %33)
  br label %out

out:                                              ; preds = %if.end21, %do.end, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end.out_crit_edge ], [ -22, %do.end ], [ %call22, %if.end21 ]
  %34 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus, align 4
  %bus_lock.i42 = getelementptr inbounds %struct.qtnf_bus, ptr %35, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %bus_lock.i42) #8
  %36 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %resp_skb, align 4
  call void @consume_skb(ptr noundef %37) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_skb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_del_intf(ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 22) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 24)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 5632, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %20, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %23 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iftype, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %24, label %do.end [
    i32 3, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mac, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %conv = zext i8 %29 to i32
  %30 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vifid, align 4
  %conv8 = zext i8 %31 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv8, i32 noundef %24) #11
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #8
  br label %out

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %.sink = phi i16 [ 512, %sw.bb2 ], [ 256, %if.end.sw.epilog_crit_edge ]
  %intf_info3 = getelementptr inbounds %struct.qlink_cmd_manage_intf, ptr %22, i32 0, i32 1
  %32 = ptrtoint ptr %intf_info3 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %.sink, ptr %intf_info3, align 1
  %mac_addr = getelementptr inbounds %struct.qlink_cmd_manage_intf, ptr %22, i32 0, i32 1, i32 2
  %33 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  %34 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mac, align 4
  %bus14 = getelementptr inbounds %struct.qtnf_wmac, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %bus14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus14, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %37, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  br label %out

out:                                              ; preds = %sw.epilog, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call.i, %sw.epilog ]
  %38 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mac, align 4
  %bus20 = getelementptr inbounds %struct.qtnf_wmac, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %bus20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus20, align 4
  %bus_lock.i36 = getelementptr inbounds %struct.qtnf_bus, ptr %41, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i36) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_get_mac_info(ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  %resp_skb = alloca ptr, align 4
  %var_data_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_skb) #8
  %0 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %resp_skb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var_data_len) #8
  %1 = ptrtoint ptr %var_data_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %var_data_len, align 4
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef 255, i32 noundef 20) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #8
  %4 = call ptr @memset(ptr %call.i25.i, i32 0, i32 12)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %8 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %len9.i, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 256, ptr %6, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 5120, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %6, i32 0, i32 4
  %14 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %vifid12.i, align 1
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 3
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %16, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %call2 = call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %18, ptr noundef nonnull %call.i.i, ptr noundef nonnull %resp_skb, i32 noundef 128, ptr noundef nonnull %var_data_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.end
  %19 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resp_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  call void @qtnf_mac_iface_comb_free(ptr noundef %mac) #8
  %macinfo.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4
  %bands_cap.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 37
  %23 = ptrtoint ptr %bands_cap.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bands_cap.i, align 1
  %25 = ptrtoint ptr %macinfo.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %macinfo.i, align 4
  %macaddr.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 2
  %dev_mac.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %dev_mac.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev_mac.i, align 4
  %28 = ptrtoint ptr %macaddr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %macaddr.i, align 4
  %add.ptr.i.i = getelementptr %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %add.ptr1.i.i, align 2
  %call.i = call ptr @qtnf_mac_get_base_vif(ptr noundef %mac) #8
  %tobool.not.i26 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i26, label %do.end.i28, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %mac_addr.i = getelementptr inbounds %struct.qtnf_vif, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %macaddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %macaddr.i, align 4
  %34 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %mac_addr.i, align 4
  %35 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr1.i.i, align 2
  %add.ptr1.i64.i = getelementptr %struct.qtnf_vif, ptr %call.i, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %add.ptr1.i64.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %add.ptr1.i64.i, align 2
  br label %if.end.i30

do.end.i28:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #11
  br label %if.end.i30

if.end.i30:                                       ; preds = %do.end.i28, %if.then.i
  %num_tx_chain.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 2
  %38 = ptrtoint ptr %num_tx_chain.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_tx_chain.i, align 1
  %num_tx_chain7.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %num_tx_chain7.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %num_tx_chain7.i, align 1
  %num_rx_chain.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 3
  %41 = ptrtoint ptr %num_rx_chain.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_rx_chain.i, align 1
  %num_rx_chain8.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 2
  %43 = ptrtoint ptr %num_rx_chain8.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %num_rx_chain8.i, align 2
  %max_ap_assoc_sta.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 6
  %44 = ptrtoint ptr %max_ap_assoc_sta.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %max_ap_assoc_sta.i, align 1
  %46 = call i16 @llvm.bswap.i16(i16 %45) #8
  %max_ap_assoc_sta9.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 4
  %47 = ptrtoint ptr %max_ap_assoc_sta9.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %max_ap_assoc_sta9.i, align 4
  %radar_detect_widths.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 11
  %48 = ptrtoint ptr %radar_detect_widths.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %radar_detect_widths.i, align 1
  %50 = call i16 @llvm.bswap.i16(i16 %49) #8
  %call10.i = call zeroext i8 @qlink_chan_width_mask_to_nl(i16 noundef zeroext %50) #8
  %radar_detect_widths11.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 11
  %51 = ptrtoint ptr %radar_detect_widths11.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %call10.i, ptr %radar_detect_widths11.i, align 1
  %max_acl_mac_addrs.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 13
  %52 = ptrtoint ptr %max_acl_mac_addrs.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %max_acl_mac_addrs.i, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53) #8
  %max_acl_mac_addrs12.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 14
  %55 = ptrtoint ptr %max_acl_mac_addrs12.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %max_acl_mac_addrs12.i, align 2
  %frag_threshold.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 14
  %56 = ptrtoint ptr %frag_threshold.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %frag_threshold.i, align 1
  %58 = call i32 @llvm.bswap.i32(i32 %57) #8
  %frag_thr.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 6
  %59 = ptrtoint ptr %frag_thr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %frag_thr.i, align 4
  %rts_threshold.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 15
  %60 = ptrtoint ptr %rts_threshold.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %rts_threshold.i, align 1
  %62 = call i32 @llvm.bswap.i32(i32 %61) #8
  %rts_thr.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 7
  %63 = ptrtoint ptr %rts_thr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %rts_thr.i, align 4
  %retry_short.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 16
  %64 = ptrtoint ptr %retry_short.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %retry_short.i, align 1
  %sretry_limit.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 9
  %66 = ptrtoint ptr %sretry_limit.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %sretry_limit.i, align 1
  %retry_long.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 17
  %67 = ptrtoint ptr %retry_long.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %retry_long.i, align 1
  %lretry_limit.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 8
  %69 = ptrtoint ptr %lretry_limit.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %lretry_limit.i, align 4
  %coverage_class.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 18
  %70 = ptrtoint ptr %coverage_class.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %coverage_class.i, align 1
  %coverage_class13.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 10
  %72 = ptrtoint ptr %coverage_class13.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %coverage_class13.i, align 2
  %max_scan_ssids.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 19
  %73 = ptrtoint ptr %max_scan_ssids.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %max_scan_ssids.i, align 1
  %max_scan_ssids14.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 12
  %75 = ptrtoint ptr %max_scan_ssids14.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %max_scan_ssids14.i, align 4
  %ht_cap_mod_mask.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 15
  %ht_cap_mod_mask15.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 5
  %76 = call ptr @memcpy(ptr %ht_cap_mod_mask.i, ptr %ht_cap_mod_mask15.i, i32 26)
  %vht_cap_mod_mask.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 16
  %vht_cap_mod_mask16.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 4
  %77 = call ptr @memcpy(ptr %vht_cap_mod_mask.i, ptr %vht_cap_mod_mask16.i, i32 12)
  %n_iface_combinations.i = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %22, i32 0, i32 35
  %78 = ptrtoint ptr %n_iface_combinations.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %n_iface_combinations.i, align 1
  %conv.i29 = zext i8 %79 to i32
  %n_if_comb.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 19
  %80 = ptrtoint ptr %n_if_comb.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i29, ptr %n_if_comb.i, align 4
  %81 = mul nuw nsw i32 %conv.i29, 20
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %81, i32 noundef 3520) #12
  %if_comb.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 18
  %82 = ptrtoint ptr %if_comb.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call8.i.i.i, ptr %if_comb.i, align 4
  %tobool22.not.i.not = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool22.not.i.not, label %if.end.i30.out_crit_edge, label %if.end9

if.end.i30.out_crit_edge:                         ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9:                                          ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %var_data_len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %var_data_len, align 4
  %call10 = call fastcc i32 @qtnf_parse_variable_mac_info(ptr noundef %mac, ptr noundef %22, i32 noundef %84)
  br label %out

out:                                              ; preds = %if.end9, %if.end.i30.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ -12, %if.end.i30.out_crit_edge ], [ %call10, %if.end9 ]
  %85 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bus, align 4
  %bus_lock.i25 = getelementptr inbounds %struct.qtnf_bus, ptr %86, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %bus_lock.i25) #8
  %87 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %resp_skb, align 4
  call void @consume_skb(ptr noundef %88) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var_data_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_skb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_parse_variable_mac_info(ptr noundef %mac, ptr noundef %resp, i32 noundef %tlv_buf_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %if_comb = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 18
  %0 = ptrtoint ptr %if_comb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_comb, align 4
  %n_reg_rules = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %resp, i32 0, i32 39
  %2 = ptrtoint ptr %n_reg_rules to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %n_reg_rules, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %3)
  %cmp = icmp ugt i8 %3, -128
  br i1 %cmp, label %do.end, label %if.end8.i.i, !prof !240

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1029, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %conv24 = zext i8 %3 to i32
  %4 = mul nuw nsw i32 %conv24, 96
  %spec.select.i519 = or i32 %4, 20
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i519, i32 noundef 3520) #12
  %rd = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 9
  %5 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i, ptr %rd, align 4
  %tobool27.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool27.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end29

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end8.i.i
  %6 = ptrtoint ptr %n_reg_rules to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %n_reg_rules, align 1
  %conv31 = zext i8 %7 to i32
  %n_reg_rules33 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %n_reg_rules33 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv31, ptr %n_reg_rules33, align 8
  %alpha2 = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %resp, i32 0, i32 38
  %9 = ptrtoint ptr %alpha2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %alpha2, align 1
  %alpha235 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %alpha235 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %alpha235, align 4
  %arrayidx38 = getelementptr %struct.qlink_resp_get_mac_info, ptr %resp, i32 0, i32 38, i32 1
  %12 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx38, align 1
  %arrayidx41 = getelementptr %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx41, align 1
  %dfs_region = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %resp, i32 0, i32 40
  %15 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dfs_region, align 1
  %switch.tableidx = add i8 %16, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %17 = icmp ult i8 %switch.tableidx, 3
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1
  %.sink = select i1 %17, i32 %switch.offset, i32 0
  %dfs_region53 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %call9.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %dfs_region53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %dfs_region53, align 16
  %var_info = getelementptr inbounds %struct.qlink_resp_get_mac_info, ptr %resp, i32 0, i32 42
  %add.ptr = getelementptr i8, ptr %var_info, i32 %tlv_buf_size
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tlv_buf_size)
  %cmp56573 = icmp sgt i32 %tlv_buf_size, 3
  br i1 %cmp56573, label %land.rhs.lr.ph, label %if.end29.for.end296_crit_edge

if.end29.for.end296_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end296

land.rhs.lr.ph:                                   ; preds = %if.end29
  %wowlan247 = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 24
  %tobool70.not = icmp eq ptr %1, null
  %n_if_comb = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 19
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc289.land.rhs_crit_edge, %land.rhs.lr.ph
  %sub.ptr.sub584 = phi i32 [ %tlv_buf_size, %land.rhs.lr.ph ], [ %sub.ptr.sub, %for.inc289.land.rhs_crit_edge ]
  %n_comb.0582 = phi i32 [ 0, %land.rhs.lr.ph ], [ %n_comb.1, %for.inc289.land.rhs_crit_edge ]
  %tlv.0579 = phi ptr [ %var_info, %land.rhs.lr.ph ], [ %add.ptr295, %for.inc289.land.rhs_crit_edge ]
  %ext_capa.0578 = phi ptr [ null, %land.rhs.lr.ph ], [ %ext_capa.1, %for.inc289.land.rhs_crit_edge ]
  %ext_capa_mask.0577 = phi ptr [ null, %land.rhs.lr.ph ], [ %ext_capa_mask.1, %for.inc289.land.rhs_crit_edge ]
  %ext_capa_len.0576 = phi i8 [ 0, %land.rhs.lr.ph ], [ %ext_capa_len.1, %for.inc289.land.rhs_crit_edge ]
  %ext_capa_mask_len.0575 = phi i8 [ 0, %land.rhs.lr.ph ], [ %ext_capa_mask_len.1, %for.inc289.land.rhs_crit_edge ]
  %rule_idx.0574 = phi i32 [ 0, %land.rhs.lr.ph ], [ %rule_idx.1, %for.inc289.land.rhs_crit_edge ]
  %len = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0579, i32 0, i32 1
  %19 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %len, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv64 = zext i16 %21 to i32
  %add = add nuw nsw i32 %conv64, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub584, i32 %add)
  %cmp65.not = icmp ult i32 %sub.ptr.sub584, %add
  br i1 %cmp65.not, label %land.rhs.for.end296_crit_edge, label %for.body

land.rhs.for.end296_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end296

for.body:                                         ; preds = %land.rhs
  %22 = ptrtoint ptr %tlv.0579 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %tlv.0579, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.131)
  switch i16 %24, label %do.end282 [
    i16 532, label %sw.bb69
    i16 127, label %sw.bb174
    i16 774, label %sw.bb189
    i16 1040, label %sw.bb204
    i16 519, label %sw.bb250
  ]

sw.bb69:                                          ; preds = %for.body
  br i1 %tobool70.not, label %do.end82, label %if.end86, !prof !240

do.end82:                                         ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mac, align 4
  %conv84 = zext i8 %27 to i32
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %conv84) #11
  br label %cleanup

if.end86:                                         ; preds = %sw.bb69
  %28 = ptrtoint ptr %n_if_comb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_if_comb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n_comb.0582, i32 %29)
  %cmp88.not = icmp ult i32 %n_comb.0582, %29
  br i1 %cmp88.not, label %if.end98, label %do.end93

do.end93:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mac, align 4
  %conv96 = zext i8 %31 to i32
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef %conv96) #11
  %inc = add i32 %n_comb.0582, 1
  br label %for.inc289

if.end98:                                         ; preds = %if.end86
  %val = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0579, i32 0, i32 2
  %n_limits = getelementptr inbounds %struct.qlink_iface_limit_record, ptr %val, i32 0, i32 2
  %32 = ptrtoint ptr %n_limits to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %n_limits, align 1
  %conv100.tr = zext i8 %33 to i32
  %34 = shl nuw nsw i32 %conv100.tr, 2
  %conv102 = add nuw nsw i32 %34, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv102, i32 %conv64)
  %cmp105.not = icmp eq i32 %conv102, %conv64
  br i1 %cmp105.not, label %if.end7.i.i, label %do.end116, !prof !243

do.end116:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mac, align 4
  %conv119 = zext i8 %36 to i32
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef %conv119, i32 noundef %n_comb.0582) #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end98
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #12
  %tobool125.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool125.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end127

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end127:                                        ; preds = %if.end7.i.i
  %num_different_channels = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0579, i32 1, i32 1
  %37 = ptrtoint ptr %num_different_channels to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_different_channels, align 1
  %conv128 = zext i8 %38 to i32
  %arrayidx129 = getelementptr %struct.ieee80211_iface_combination, ptr %1, i32 %n_comb.0582
  %num_different_channels130 = getelementptr %struct.ieee80211_iface_combination, ptr %1, i32 %n_comb.0582, i32 1
  %39 = ptrtoint ptr %num_different_channels130 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv128, ptr %num_different_channels130, align 4
  %40 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %val, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %max_interfaces132 = getelementptr %struct.ieee80211_iface_combination, ptr %1, i32 %n_comb.0582, i32 2
  %43 = ptrtoint ptr %max_interfaces132 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %max_interfaces132, align 4
  %44 = ptrtoint ptr %n_limits to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %n_limits, align 1
  %n_limits135 = getelementptr %struct.ieee80211_iface_combination, ptr %1, i32 %n_comb.0582, i32 3
  %46 = ptrtoint ptr %n_limits135 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %n_limits135, align 2
  %47 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i, ptr %arrayidx129, align 4
  %48 = load i8, ptr %n_limits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp141569.not = icmp eq i8 %48, 0
  br i1 %cmp141569.not, label %if.end127.for.end_crit_edge, label %for.body143.lr.ph

if.end127.for.end_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body143.lr.ph:                                ; preds = %if.end127
  %limits144 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0579, i32 2
  br label %for.body143

for.body143:                                      ; preds = %for.inc.for.body143_crit_edge, %for.body143.lr.ph
  %i.0570 = phi i32 [ 0, %for.body143.lr.ph ], [ %inc172, %for.inc.for.body143_crit_edge ]
  %arrayidx145 = getelementptr [0 x %struct.qlink_iface_limit], ptr %limits144, i32 0, i32 %i.0570
  %49 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %arrayidx145, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %arrayidx146 = getelementptr %struct.ieee80211_iface_limit, ptr %call8.i.i, i32 %i.0570
  %52 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %arrayidx146, align 4
  %type147 = getelementptr inbounds %struct.qlink_iface_limit, ptr %arrayidx145, i32 0, i32 1
  %53 = ptrtoint ptr %type147 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %type147, align 1
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  %call148 = tail call zeroext i16 @qlink_iface_type_to_nl_mask(i16 noundef zeroext %55) #8
  %types = getelementptr %struct.ieee80211_iface_limit, ptr %call8.i.i, i32 %i.0570, i32 1
  %56 = ptrtoint ptr %types to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %call148, ptr %types, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_parse_variable_mac_info.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_parse_variable_mac_info, %if.then160)) #8
          to label %for.inc [label %if.then160], !srcloc !242

if.then160:                                       ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %mac, align 4
  %conv162 = zext i8 %58 to i32
  %59 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx146, align 4
  %conv165 = zext i16 %60 to i32
  %61 = ptrtoint ptr %types to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %types, align 2
  %conv168 = zext i16 %62 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_parse_variable_mac_info.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i32 noundef %conv162, i32 noundef %n_comb.0582, i32 noundef %conv165, i32 noundef %conv168) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then160, %for.body143
  %inc172 = add nuw nsw i32 %i.0570, 1
  %63 = ptrtoint ptr %n_limits to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %n_limits, align 1
  %conv140 = zext i8 %64 to i32
  %cmp141 = icmp ult i32 %inc172, %conv140
  br i1 %cmp141, label %for.inc.for.body143_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body143_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body143

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end127.for.end_crit_edge
  %inc173 = add i32 %n_comb.0582, 1
  br label %for.inc289

sw.bb174:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %21)
  %cmp176 = icmp ugt i16 %21, 255
  br i1 %cmp176, label %sw.bb174.cleanup_crit_edge, label %if.end185, !prof !240

sw.bb174.cleanup_crit_edge:                       ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end185:                                        ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #10
  %val186 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0579, i32 0, i32 2
  %conv188 = trunc i16 %21 to i8
  br label %for.inc289

sw.bb189:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %21)
  %cmp191 = icmp ugt i16 %21, 255
  br i1 %cmp191, label %sw.bb189.cleanup_crit_edge, label %if.end200, !prof !240

sw.bb189.cleanup_crit_edge:                       ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end200:                                        ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #10
  %val201 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0579, i32 0, i32 2
  %conv203 = trunc i16 %21 to i8
  br label %for.inc289

sw.bb204:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %21)
  %cmp206 = icmp ult i16 %21, 4
  br i1 %cmp206, label %sw.bb204.cleanup_crit_edge, label %if.end209

sw.bb204.cleanup_crit_edge:                       ; preds = %sw.bb204
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end209:                                        ; preds = %sw.bb204
  %val210 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0579, i32 0, i32 2
  %len212 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0579, i32 1, i32 1
  %65 = ptrtoint ptr %len212 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %len212, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool213.not = icmp eq i16 %66, 0
  br i1 %tobool213.not, label %do.end217, label %if.end222

do.end217:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %mac, align 4
  %conv220 = zext i8 %68 to i32
  %call221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.60, i32 noundef %conv220) #11
  br label %for.inc289

if.end222:                                        ; preds = %if.end209
  %69 = tail call i16 @llvm.bswap.i16(i16 %66)
  %add225 = add i16 %69, 4
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %add225)
  %cmp229.not = icmp eq i16 %21, %add225
  br i1 %cmp229.not, label %if.end245, label %do.end240, !prof !243

do.end240:                                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %mac, align 4
  %conv243 = zext i8 %71 to i32
  %call244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.60, i32 noundef %conv243) #11
  br label %cleanup

if.end245:                                        ; preds = %if.end222
  %72 = ptrtoint ptr %wowlan247 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wowlan247, align 4
  tail call void @kfree(ptr noundef %73) #8
  %74 = ptrtoint ptr %wowlan247 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %wowlan247, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i511 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 28) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i511, null
  br i1 %tobool.not.i, label %if.end245.for.inc289_crit_edge, label %if.end.i

if.end245.for.inc289_crit_edge:                   ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc289

if.end.i:                                         ; preds = %if.end245
  %76 = ptrtoint ptr %val210 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %val210, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %77)
  %cond.i = icmp eq i16 %77, 256
  br i1 %cond.i, label %sw.bb.i, label %do.end.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0579, i32 2
  %78 = ptrtoint ptr %call7.i.i.i511 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 6, ptr %call7.i.i.i511, align 8
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %data.i, align 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #8
  %n_patterns1.i = getelementptr inbounds %struct.wiphy_wowlan_support, ptr %call7.i.i.i511, i32 0, i32 1
  %82 = ptrtoint ptr %n_patterns1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %n_patterns1.i, align 4
  %pattern_max_len.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0579, i32 3
  %83 = ptrtoint ptr %pattern_max_len.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %pattern_max_len.i, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #8
  %pattern_max_len2.i = getelementptr inbounds %struct.wiphy_wowlan_support, ptr %call7.i.i.i511, i32 0, i32 2
  %86 = ptrtoint ptr %pattern_max_len2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %pattern_max_len2.i, align 8
  %pattern_min_len.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0579, i32 4
  %87 = ptrtoint ptr %pattern_min_len.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %pattern_min_len.i, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #8
  %pattern_min_len3.i = getelementptr inbounds %struct.wiphy_wowlan_support, ptr %call7.i.i.i511, i32 0, i32 3
  %90 = ptrtoint ptr %pattern_min_len3.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %pattern_min_len3.i, align 4
  %91 = ptrtoint ptr %wowlan247 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i.i511, ptr %wowlan247, align 4
  br label %for.inc289

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = tail call i16 @llvm.bswap.i16(i16 %77) #8
  %conv.i = zext i16 %92 to i32
  %93 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mac, align 4
  %conv5.i = zext i8 %94 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef %conv5.i, i32 noundef %conv.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i511) #8
  br label %for.inc289

sw.bb250:                                         ; preds = %for.body
  %95 = ptrtoint ptr %n_reg_rules to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %n_reg_rules, align 1
  %conv252 = zext i8 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rule_idx.0574, i32 %conv252)
  %cmp253.not = icmp ult i32 %rule_idx.0574, %conv252
  br i1 %cmp253.not, label %if.end263, label %do.end258

do.end258:                                        ; preds = %sw.bb250
  call void @__sanitizer_cov_trace_pc() #10
  %conv252.le = zext i8 %96 to i32
  %call262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.60, i32 noundef %conv252.le) #11
  br label %cleanup

if.end263:                                        ; preds = %sw.bb250
  call void @__sanitizer_cov_trace_const_cmp2(i16 7168, i16 %20)
  %cmp265.not = icmp eq i16 %20, 7168
  br i1 %cmp265.not, label %if.end275, label %do.end270

do.end270:                                        ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  %call274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.60, i32 noundef 519, i32 noundef %conv64) #11
  br label %cleanup

if.end275:                                        ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rd, align 4
  %inc277 = add nuw i32 %rule_idx.0574, 1
  %arrayidx278 = getelementptr %struct.ieee80211_regdomain, ptr %98, i32 0, i32 4, i32 %rule_idx.0574
  tail call void @qlink_utils_regrule_q2nl(ptr noundef %arrayidx278, ptr noundef %tlv.0579) #8
  br label %for.inc289

do.end282:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv68 = zext i16 %24 to i32
  %99 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %mac, align 4
  %conv285 = zext i8 %100 to i32
  %call287 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.60, i32 noundef %conv285, i32 noundef %conv68) #11
  br label %for.inc289

for.inc289:                                       ; preds = %do.end282, %if.end275, %do.end.i, %sw.bb.i, %if.end245.for.inc289_crit_edge, %do.end217, %if.end200, %if.end185, %for.end, %do.end93
  %rule_idx.1 = phi i32 [ %rule_idx.0574, %do.end282 ], [ %inc277, %if.end275 ], [ %rule_idx.0574, %do.end217 ], [ %rule_idx.0574, %if.end200 ], [ %rule_idx.0574, %if.end185 ], [ %rule_idx.0574, %do.end93 ], [ %rule_idx.0574, %for.end ], [ %rule_idx.0574, %if.end245.for.inc289_crit_edge ], [ %rule_idx.0574, %sw.bb.i ], [ %rule_idx.0574, %do.end.i ]
  %ext_capa_mask_len.1 = phi i8 [ %ext_capa_mask_len.0575, %do.end282 ], [ %ext_capa_mask_len.0575, %if.end275 ], [ %ext_capa_mask_len.0575, %do.end217 ], [ %conv203, %if.end200 ], [ %ext_capa_mask_len.0575, %if.end185 ], [ %ext_capa_mask_len.0575, %do.end93 ], [ %ext_capa_mask_len.0575, %for.end ], [ %ext_capa_mask_len.0575, %if.end245.for.inc289_crit_edge ], [ %ext_capa_mask_len.0575, %sw.bb.i ], [ %ext_capa_mask_len.0575, %do.end.i ]
  %ext_capa_len.1 = phi i8 [ %ext_capa_len.0576, %do.end282 ], [ %ext_capa_len.0576, %if.end275 ], [ %ext_capa_len.0576, %do.end217 ], [ %ext_capa_len.0576, %if.end200 ], [ %conv188, %if.end185 ], [ %ext_capa_len.0576, %do.end93 ], [ %ext_capa_len.0576, %for.end ], [ %ext_capa_len.0576, %if.end245.for.inc289_crit_edge ], [ %ext_capa_len.0576, %sw.bb.i ], [ %ext_capa_len.0576, %do.end.i ]
  %ext_capa_mask.1 = phi ptr [ %ext_capa_mask.0577, %do.end282 ], [ %ext_capa_mask.0577, %if.end275 ], [ %ext_capa_mask.0577, %do.end217 ], [ %val201, %if.end200 ], [ %ext_capa_mask.0577, %if.end185 ], [ %ext_capa_mask.0577, %do.end93 ], [ %ext_capa_mask.0577, %for.end ], [ %ext_capa_mask.0577, %if.end245.for.inc289_crit_edge ], [ %ext_capa_mask.0577, %sw.bb.i ], [ %ext_capa_mask.0577, %do.end.i ]
  %ext_capa.1 = phi ptr [ %ext_capa.0578, %do.end282 ], [ %ext_capa.0578, %if.end275 ], [ %ext_capa.0578, %do.end217 ], [ %ext_capa.0578, %if.end200 ], [ %val186, %if.end185 ], [ %ext_capa.0578, %do.end93 ], [ %ext_capa.0578, %for.end ], [ %ext_capa.0578, %if.end245.for.inc289_crit_edge ], [ %ext_capa.0578, %sw.bb.i ], [ %ext_capa.0578, %do.end.i ]
  %n_comb.1 = phi i32 [ %n_comb.0582, %do.end282 ], [ %n_comb.0582, %if.end275 ], [ %n_comb.0582, %do.end217 ], [ %n_comb.0582, %if.end200 ], [ %n_comb.0582, %if.end185 ], [ %inc, %do.end93 ], [ %inc173, %for.end ], [ %n_comb.0582, %if.end245.for.inc289_crit_edge ], [ %n_comb.0582, %sw.bb.i ], [ %n_comb.0582, %do.end.i ]
  %val290 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0579, i32 0, i32 2
  %101 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %len, align 1
  %103 = tail call i16 @llvm.bswap.i16(i16 %102)
  %conv293 = zext i16 %103 to i32
  %sub = add nsw i32 %conv293, -1
  %or = or i32 %sub, 3
  %add294 = add nsw i32 %or, 1
  %add.ptr295 = getelementptr i8, ptr %val290, i32 %add294
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr295 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp56 = icmp sgt i32 %sub.ptr.sub, 3
  br i1 %cmp56, label %for.inc289.land.rhs_crit_edge, label %for.inc289.for.end296_crit_edge

for.inc289.for.end296_crit_edge:                  ; preds = %for.inc289
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end296

for.inc289.land.rhs_crit_edge:                    ; preds = %for.inc289
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end296:                                       ; preds = %for.inc289.for.end296_crit_edge, %land.rhs.for.end296_crit_edge, %if.end29.for.end296_crit_edge
  %rule_idx.0.lcssa = phi i32 [ 0, %if.end29.for.end296_crit_edge ], [ %rule_idx.1, %for.inc289.for.end296_crit_edge ], [ %rule_idx.0574, %land.rhs.for.end296_crit_edge ]
  %ext_capa_mask_len.0.lcssa = phi i8 [ 0, %if.end29.for.end296_crit_edge ], [ %ext_capa_mask_len.1, %for.inc289.for.end296_crit_edge ], [ %ext_capa_mask_len.0575, %land.rhs.for.end296_crit_edge ]
  %ext_capa_len.0.lcssa = phi i8 [ 0, %if.end29.for.end296_crit_edge ], [ %ext_capa_len.1, %for.inc289.for.end296_crit_edge ], [ %ext_capa_len.0576, %land.rhs.for.end296_crit_edge ]
  %ext_capa_mask.0.lcssa = phi ptr [ null, %if.end29.for.end296_crit_edge ], [ %ext_capa_mask.1, %for.inc289.for.end296_crit_edge ], [ %ext_capa_mask.0577, %land.rhs.for.end296_crit_edge ]
  %ext_capa.0.lcssa = phi ptr [ null, %if.end29.for.end296_crit_edge ], [ %ext_capa.1, %for.inc289.for.end296_crit_edge ], [ %ext_capa.0578, %land.rhs.for.end296_crit_edge ]
  %tlv.0.lcssa = phi ptr [ %var_info, %if.end29.for.end296_crit_edge ], [ %add.ptr295, %for.inc289.for.end296_crit_edge ], [ %tlv.0579, %land.rhs.for.end296_crit_edge ]
  %n_comb.0.lcssa = phi i32 [ 0, %if.end29.for.end296_crit_edge ], [ %n_comb.1, %for.inc289.for.end296_crit_edge ], [ %n_comb.0582, %land.rhs.for.end296_crit_edge ]
  %sub299 = add i32 %tlv_buf_size, -1
  %or300 = or i32 %sub299, 3
  %add301 = add i32 %or300, 1
  %add.ptr302 = getelementptr i8, ptr %var_info, i32 %add301
  %cmp303 = icmp eq ptr %tlv.0.lcssa, %add.ptr302
  br i1 %cmp303, label %if.end311, label %do.end308

do.end308:                                        ; preds = %for.end296
  call void @__sanitizer_cov_trace_pc() #10
  %call310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.60) #11
  br label %cleanup

if.end311:                                        ; preds = %for.end296
  %n_if_comb313 = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 19
  %104 = ptrtoint ptr %n_if_comb313 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %n_if_comb313, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %n_comb.0.lcssa)
  %cmp314.not = icmp eq i32 %105, %n_comb.0.lcssa
  br i1 %cmp314.not, label %if.end326, label %do.end319

do.end319:                                        ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %mac, align 4
  %conv322 = zext i8 %107 to i32
  %call325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.60, i32 noundef %conv322, i32 noundef %105, i32 noundef %n_comb.0.lcssa) #11
  br label %cleanup

if.end326:                                        ; preds = %if.end311
  %conv327 = zext i8 %ext_capa_len.0.lcssa to i32
  %conv328 = zext i8 %ext_capa_mask_len.0.lcssa to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %ext_capa_len.0.lcssa, i8 %ext_capa_mask_len.0.lcssa)
  %cmp329.not = icmp eq i8 %ext_capa_len.0.lcssa, %ext_capa_mask_len.0.lcssa
  br i1 %cmp329.not, label %if.end341, label %do.end334

do.end334:                                        ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %mac, align 4
  %conv337 = zext i8 %109 to i32
  %call340 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.60, i32 noundef %conv337, i32 noundef %conv327, i32 noundef %conv328) #11
  br label %cleanup

if.end341:                                        ; preds = %if.end326
  %110 = ptrtoint ptr %n_reg_rules to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %n_reg_rules, align 1
  %conv343 = zext i8 %111 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rule_idx.0.lcssa, i32 %conv343)
  %cmp344.not = icmp eq i32 %rule_idx.0.lcssa, %conv343
  br i1 %cmp344.not, label %if.end354, label %do.end349

do.end349:                                        ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #10
  %call353 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.60, i32 noundef %conv343, i32 noundef %rule_idx.0.lcssa) #11
  br label %cleanup

if.end354:                                        ; preds = %if.end341
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ext_capa_mask_len.0.lcssa)
  %cmp356.not = icmp eq i8 %ext_capa_mask_len.0.lcssa, 0
  br i1 %cmp356.not, label %if.end354.if.end369_crit_edge, label %if.then358

if.end354.if.end369_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369

if.then358:                                       ; preds = %if.end354
  %call360 = tail call ptr @kmemdup(ptr noundef %ext_capa.0.lcssa, i32 noundef %conv327, i32 noundef 3264) #8
  %tobool361.not = icmp eq ptr %call360, null
  br i1 %tobool361.not, label %if.then358.cleanup_crit_edge, label %if.end363

if.then358.cleanup_crit_edge:                     ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end363:                                        ; preds = %if.then358
  %call365 = tail call ptr @kmemdup(ptr noundef %ext_capa_mask.0.lcssa, i32 noundef %conv328, i32 noundef 3264) #8
  %tobool366.not = icmp eq ptr %call365, null
  br i1 %tobool366.not, label %if.then367, label %if.end363.if.end369_crit_edge

if.end363.if.end369_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369

if.then367:                                       ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call360) #8
  br label %cleanup

if.end369:                                        ; preds = %if.end363.if.end369_crit_edge, %if.end354.if.end369_crit_edge
  %ext_capa_mask.2 = phi ptr [ %call365, %if.end363.if.end369_crit_edge ], [ null, %if.end354.if.end369_crit_edge ]
  %ext_capa.2 = phi ptr [ %call360, %if.end363.if.end369_crit_edge ], [ null, %if.end354.if.end369_crit_edge ]
  tail call void @qtnf_mac_ext_caps_free(ptr noundef %mac) #8
  %extended_capabilities = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 20
  %112 = ptrtoint ptr %extended_capabilities to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %ext_capa.2, ptr %extended_capabilities, align 4
  %extended_capabilities_mask = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 21
  %113 = ptrtoint ptr %extended_capabilities_mask to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %ext_capa_mask.2, ptr %extended_capabilities_mask, align 4
  %extended_capabilities_len = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 22
  %114 = ptrtoint ptr %extended_capabilities_len to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %ext_capa_mask_len.0.lcssa, ptr %extended_capabilities_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end369, %if.then367, %if.then358.cleanup_crit_edge, %do.end349, %do.end334, %do.end319, %do.end308, %do.end270, %do.end258, %do.end240, %sw.bb204.cleanup_crit_edge, %sw.bb189.cleanup_crit_edge, %sw.bb174.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %do.end116, %do.end82, %if.end8.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -7, %do.end ], [ -22, %do.end258 ], [ -22, %do.end270 ], [ -22, %do.end240 ], [ -22, %do.end82 ], [ -22, %do.end116 ], [ -22, %do.end319 ], [ -22, %do.end334 ], [ -22, %do.end349 ], [ 0, %if.end369 ], [ -12, %if.then367 ], [ -22, %do.end308 ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ -12, %if.then358.cleanup_crit_edge ], [ -22, %sw.bb204.cleanup_crit_edge ], [ -22, %sw.bb189.cleanup_crit_edge ], [ -22, %sw.bb174.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_get_hw_info(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %resp_skb = alloca ptr, align 4
  %info_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_skb) #8
  %0 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %resp_skb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info_len) #8
  %1 = ptrtoint ptr %info_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %info_len, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 255, i32 noundef 255, i32 noundef 19) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #8
  %2 = call ptr @memset(ptr %call.i25.i, i32 0, i32 12)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %6 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %len9.i, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 256, ptr %4, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 4864, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %4, i32 0, i32 4
  %12 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %vifid12.i, align 1
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %call1 = call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %bus, ptr noundef nonnull %call.i.i, ptr noundef nonnull %resp_skb, i32 noundef 32, ptr noundef nonnull %info_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  %13 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resp_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %info_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %info_len, align 4
  %hw_info.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7
  %num_mac.i = getelementptr inbounds %struct.qlink_resp_get_hw_info, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %num_mac.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_mac.i, align 1
  %num_mac1.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %num_mac1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %num_mac1.i, align 4
  %mac_bitmap.i = getelementptr inbounds %struct.qlink_resp_get_hw_info, ptr %16, i32 0, i32 6
  %22 = ptrtoint ptr %mac_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mac_bitmap.i, align 1
  %mac_bitmap2.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %mac_bitmap2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %mac_bitmap2.i, align 1
  %fw_ver.i = getelementptr inbounds %struct.qlink_resp_get_hw_info, ptr %16, i32 0, i32 1
  %25 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %fw_ver.i, align 1
  %27 = call i32 @llvm.bswap.i32(i32 %26) #8
  %fw_ver3.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 3
  %28 = ptrtoint ptr %fw_ver3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fw_ver3.i, align 4
  %total_tx_chain.i = getelementptr inbounds %struct.qlink_resp_get_hw_info, ptr %16, i32 0, i32 7
  %29 = ptrtoint ptr %total_tx_chain.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %total_tx_chain.i, align 1
  %total_tx_chain4.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 4
  %31 = ptrtoint ptr %total_tx_chain4.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %total_tx_chain4.i, align 4
  %total_rx_chain.i = getelementptr inbounds %struct.qlink_resp_get_hw_info, ptr %16, i32 0, i32 8
  %32 = ptrtoint ptr %total_rx_chain.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %total_rx_chain.i, align 1
  %total_rx_chain5.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 5
  %34 = ptrtoint ptr %total_rx_chain5.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %total_rx_chain5.i, align 1
  %bld_tmstamp6.i = getelementptr inbounds %struct.qlink_resp_get_hw_info, ptr %16, i32 0, i32 2
  %35 = ptrtoint ptr %bld_tmstamp6.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %bld_tmstamp6.i, align 1
  %37 = call i32 @llvm.bswap.i32(i32 %36) #8
  %plat_id7.i = getelementptr inbounds %struct.qlink_resp_get_hw_info, ptr %16, i32 0, i32 3
  %38 = ptrtoint ptr %plat_id7.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %plat_id7.i, align 1
  %40 = call i32 @llvm.bswap.i32(i32 %39) #8
  %hw_ver8.i = getelementptr inbounds %struct.qlink_resp_get_hw_info, ptr %16, i32 0, i32 4
  %41 = ptrtoint ptr %hw_ver8.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %hw_ver8.i, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42) #8
  %info.i = getelementptr inbounds %struct.qlink_resp_get_hw_info, ptr %16, i32 0, i32 9
  %add.ptr.i = getelementptr i8, ptr %info.i, i32 %18
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp141.i = icmp sgt i32 %18, 3
  br i1 %cmp141.i, label %land.rhs.lr.ph.i, label %if.end4.for.end.i_crit_edge

if.end4.for.end.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %if.end4
  %hw_capab.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %sub.ptr.sub151.i = phi i32 [ %18, %land.rhs.lr.ph.i ], [ %sub.ptr.sub.i, %for.inc.i.land.rhs.i_crit_edge ]
  %tlv.0149.i = phi ptr [ %info.i, %land.rhs.lr.ph.i ], [ %add.ptr52.i, %for.inc.i.land.rhs.i_crit_edge ]
  %uboot_ver.0148.i = phi ptr [ null, %land.rhs.lr.ph.i ], [ %uboot_ver.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %calibration_ver.0147.i = phi ptr [ null, %land.rhs.lr.ph.i ], [ %calibration_ver.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %hw_id.0146.i = phi ptr [ null, %land.rhs.lr.ph.i ], [ %hw_id.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %bld_label.0145.i = phi ptr [ null, %land.rhs.lr.ph.i ], [ %bld_label.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %bld_type.0144.i = phi ptr [ null, %land.rhs.lr.ph.i ], [ %bld_type.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %bld_rev.0143.i = phi ptr [ null, %land.rhs.lr.ph.i ], [ %bld_rev.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %bld_name.0142.i = phi ptr [ null, %land.rhs.lr.ph.i ], [ %bld_name.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %len.i16 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0149.i, i32 0, i32 1
  %44 = ptrtoint ptr %len.i16 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %len.i16, align 1
  %46 = call i16 @llvm.bswap.i16(i16 %45) #8
  %conv.i = zext i16 %46 to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub151.i, i32 %add.i)
  %cmp17.not.i = icmp ult i32 %sub.ptr.sub151.i, %add.i
  br i1 %cmp17.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  %47 = ptrtoint ptr %tlv.0149.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %tlv.0149.i, align 1
  %49 = call i16 @llvm.bswap.i16(i16 %48) #8
  %50 = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.132)
  switch i16 %49, label %for.body.i.for.inc.i_crit_edge [
    i16 1025, label %sw.bb.i
    i16 1026, label %sw.bb22.i
    i16 1027, label %sw.bb25.i
    i16 1028, label %sw.bb28.i
    i16 1029, label %sw.bb31.i
    i16 1030, label %sw.bb34.i
    i16 1031, label %sw.bb37.i
    i16 529, label %sw.bb40.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %val.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0149.i, i32 0, i32 2
  br label %for.inc.i

sw.bb22.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %val23.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0149.i, i32 0, i32 2
  br label %for.inc.i

sw.bb25.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %val26.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0149.i, i32 0, i32 2
  br label %for.inc.i

sw.bb28.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %val29.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0149.i, i32 0, i32 2
  br label %for.inc.i

sw.bb31.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %val32.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0149.i, i32 0, i32 2
  br label %for.inc.i

sw.bb34.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %val35.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0149.i, i32 0, i32 2
  br label %for.inc.i

sw.bb37.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %val38.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0149.i, i32 0, i32 2
  br label %for.inc.i

sw.bb40.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %val42.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0149.i, i32 0, i32 2
  %51 = call i16 @llvm.umin.i16(i16 %46, i16 2) #8
  %52 = zext i16 %51 to i32
  %53 = call ptr @memcpy(ptr %hw_capab.i, ptr %val42.i, i32 %52)
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb40.i, %sw.bb37.i, %sw.bb34.i, %sw.bb31.i, %sw.bb28.i, %sw.bb25.i, %sw.bb22.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge
  %bld_name.1.i = phi ptr [ %bld_name.0142.i, %for.body.i.for.inc.i_crit_edge ], [ %bld_name.0142.i, %sw.bb40.i ], [ %bld_name.0142.i, %sw.bb37.i ], [ %bld_name.0142.i, %sw.bb34.i ], [ %bld_name.0142.i, %sw.bb31.i ], [ %bld_name.0142.i, %sw.bb28.i ], [ %bld_name.0142.i, %sw.bb25.i ], [ %bld_name.0142.i, %sw.bb22.i ], [ %val.i, %sw.bb.i ]
  %bld_rev.1.i = phi ptr [ %bld_rev.0143.i, %for.body.i.for.inc.i_crit_edge ], [ %bld_rev.0143.i, %sw.bb40.i ], [ %bld_rev.0143.i, %sw.bb37.i ], [ %bld_rev.0143.i, %sw.bb34.i ], [ %bld_rev.0143.i, %sw.bb31.i ], [ %bld_rev.0143.i, %sw.bb28.i ], [ %bld_rev.0143.i, %sw.bb25.i ], [ %val23.i, %sw.bb22.i ], [ %bld_rev.0143.i, %sw.bb.i ]
  %bld_type.1.i = phi ptr [ %bld_type.0144.i, %for.body.i.for.inc.i_crit_edge ], [ %bld_type.0144.i, %sw.bb40.i ], [ %bld_type.0144.i, %sw.bb37.i ], [ %bld_type.0144.i, %sw.bb34.i ], [ %bld_type.0144.i, %sw.bb31.i ], [ %bld_type.0144.i, %sw.bb28.i ], [ %val26.i, %sw.bb25.i ], [ %bld_type.0144.i, %sw.bb22.i ], [ %bld_type.0144.i, %sw.bb.i ]
  %bld_label.1.i = phi ptr [ %bld_label.0145.i, %for.body.i.for.inc.i_crit_edge ], [ %bld_label.0145.i, %sw.bb40.i ], [ %bld_label.0145.i, %sw.bb37.i ], [ %bld_label.0145.i, %sw.bb34.i ], [ %bld_label.0145.i, %sw.bb31.i ], [ %val29.i, %sw.bb28.i ], [ %bld_label.0145.i, %sw.bb25.i ], [ %bld_label.0145.i, %sw.bb22.i ], [ %bld_label.0145.i, %sw.bb.i ]
  %hw_id.1.i = phi ptr [ %hw_id.0146.i, %for.body.i.for.inc.i_crit_edge ], [ %hw_id.0146.i, %sw.bb40.i ], [ %hw_id.0146.i, %sw.bb37.i ], [ %hw_id.0146.i, %sw.bb34.i ], [ %val32.i, %sw.bb31.i ], [ %hw_id.0146.i, %sw.bb28.i ], [ %hw_id.0146.i, %sw.bb25.i ], [ %hw_id.0146.i, %sw.bb22.i ], [ %hw_id.0146.i, %sw.bb.i ]
  %calibration_ver.1.i = phi ptr [ %calibration_ver.0147.i, %for.body.i.for.inc.i_crit_edge ], [ %calibration_ver.0147.i, %sw.bb40.i ], [ %calibration_ver.0147.i, %sw.bb37.i ], [ %val35.i, %sw.bb34.i ], [ %calibration_ver.0147.i, %sw.bb31.i ], [ %calibration_ver.0147.i, %sw.bb28.i ], [ %calibration_ver.0147.i, %sw.bb25.i ], [ %calibration_ver.0147.i, %sw.bb22.i ], [ %calibration_ver.0147.i, %sw.bb.i ]
  %uboot_ver.1.i = phi ptr [ %uboot_ver.0148.i, %for.body.i.for.inc.i_crit_edge ], [ %uboot_ver.0148.i, %sw.bb40.i ], [ %val38.i, %sw.bb37.i ], [ %uboot_ver.0148.i, %sw.bb34.i ], [ %uboot_ver.0148.i, %sw.bb31.i ], [ %uboot_ver.0148.i, %sw.bb28.i ], [ %uboot_ver.0148.i, %sw.bb25.i ], [ %uboot_ver.0148.i, %sw.bb22.i ], [ %uboot_ver.0148.i, %sw.bb.i ]
  %val47.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0149.i, i32 0, i32 2
  %54 = ptrtoint ptr %len.i16 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %len.i16, align 1
  %56 = call i16 @llvm.bswap.i16(i16 %55) #8
  %conv50.i = zext i16 %56 to i32
  %sub.i = add nsw i32 %conv50.i, -1
  %or.i = or i32 %sub.i, 3
  %add51.i = add nsw i32 %or.i, 1
  %add.ptr52.i = getelementptr i8, ptr %val47.i, i32 %add51.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr52.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i = icmp sgt i32 %sub.ptr.sub.i, 3
  br i1 %cmp.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge, %if.end4.for.end.i_crit_edge
  %bld_name.0.lcssa.i = phi ptr [ null, %if.end4.for.end.i_crit_edge ], [ %bld_name.0142.i, %land.rhs.i.for.end.i_crit_edge ], [ %bld_name.1.i, %for.inc.i.for.end.i_crit_edge ]
  %bld_rev.0.lcssa.i = phi ptr [ null, %if.end4.for.end.i_crit_edge ], [ %bld_rev.0143.i, %land.rhs.i.for.end.i_crit_edge ], [ %bld_rev.1.i, %for.inc.i.for.end.i_crit_edge ]
  %bld_type.0.lcssa.i = phi ptr [ null, %if.end4.for.end.i_crit_edge ], [ %bld_type.0144.i, %land.rhs.i.for.end.i_crit_edge ], [ %bld_type.1.i, %for.inc.i.for.end.i_crit_edge ]
  %bld_label.0.lcssa.i = phi ptr [ null, %if.end4.for.end.i_crit_edge ], [ %bld_label.0145.i, %land.rhs.i.for.end.i_crit_edge ], [ %bld_label.1.i, %for.inc.i.for.end.i_crit_edge ]
  %hw_id.0.lcssa.i = phi ptr [ null, %if.end4.for.end.i_crit_edge ], [ %hw_id.0146.i, %land.rhs.i.for.end.i_crit_edge ], [ %hw_id.1.i, %for.inc.i.for.end.i_crit_edge ]
  %calibration_ver.0.lcssa.i = phi ptr [ null, %if.end4.for.end.i_crit_edge ], [ %calibration_ver.0147.i, %land.rhs.i.for.end.i_crit_edge ], [ %calibration_ver.1.i, %for.inc.i.for.end.i_crit_edge ]
  %uboot_ver.0.lcssa.i = phi ptr [ null, %if.end4.for.end.i_crit_edge ], [ %uboot_ver.0148.i, %land.rhs.i.for.end.i_crit_edge ], [ %uboot_ver.1.i, %for.inc.i.for.end.i_crit_edge ]
  %tlv.0.lcssa.i = phi ptr [ %info.i, %if.end4.for.end.i_crit_edge ], [ %tlv.0149.i, %land.rhs.i.for.end.i_crit_edge ], [ %add.ptr52.i, %for.inc.i.for.end.i_crit_edge ]
  %sub55.i = add i32 %18, -1
  %or56.i = or i32 %sub55.i, 3
  %add57.i = add i32 %or56.i, 1
  %add.ptr58.i = getelementptr i8, ptr %info.i, i32 %add57.i
  %cmp59.i = icmp eq ptr %tlv.0.lcssa.i, %add.ptr58.i
  br i1 %cmp59.i, label %do.end64.i, label %do.end.i17

do.end.i17:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.97) #11
  br label %out

do.end64.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hw_info.i, align 8
  %shr.i = lshr i32 %58, 16
  %and69.i = and i32 %58, 65535
  %conv71.i = zext i8 %23 to i32
  %conv73.i = zext i8 %33 to i32
  %conv75.i = zext i8 %30 to i32
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.97, ptr noundef %bld_name.0.lcssa.i, ptr noundef %bld_rev.0.lcssa.i, ptr noundef %bld_type.0.lcssa.i, ptr noundef %bld_label.0.lcssa.i, i32 noundef %37, i32 noundef %40, ptr noundef %hw_id.0.lcssa.i, ptr noundef %calibration_ver.0.lcssa.i, ptr noundef %uboot_ver.0.lcssa.i, i32 noundef %43, i32 noundef %shr.i, i32 noundef %and69.i, i32 noundef %conv71.i, i32 noundef %conv73.i, i32 noundef %conv75.i, i32 noundef %27) #11
  %fw_version.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 6
  %call79.i = call i32 @strlcpy(ptr noundef %fw_version.i, ptr noundef %bld_label.0.lcssa.i, i32 noundef 32) #8
  %hw_version.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 7
  %59 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %43, ptr %hw_version.i, align 4
  br label %out

out:                                              ; preds = %do.end64.i, %do.end.i17, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ 0, %do.end64.i ], [ -22, %do.end.i17 ]
  call void @mutex_unlock(ptr noundef %bus_lock.i) #8
  %60 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %resp_skb, align 4
  call void @consume_skb(ptr noundef %61) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_skb) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlink_utils_band_cfg2q(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_cmd_resp_fill_band_info(ptr nocapture noundef %band, ptr noundef %resp, i32 noundef %payload_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ht_cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 5
  %0 = call ptr @memset(ptr %ht_cap, i32 0, i32 22)
  %vht_cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 6
  %1 = call ptr @memset(ptr %vht_cap, i32 0, i32 16)
  %2 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %band, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 3
  %4 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_channels, align 4
  %num_chans = getelementptr inbounds %struct.qlink_resp_band_info_get, ptr %resp, i32 0, i32 2
  %6 = ptrtoint ptr %num_chans to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_chans, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp eq i32 %5, %conv
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %5, 56
  %8 = call ptr @memset(ptr %3, i32 0, i32 %mul)
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %3) #8
  %9 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %n_channels, align 4
  %10 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %band, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2, %entry.if.end8_crit_edge
  %num_chans9 = getelementptr inbounds %struct.qlink_resp_band_info_get, ptr %resp, i32 0, i32 2
  %11 = ptrtoint ptr %num_chans9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_chans9, align 1
  %conv10 = zext i8 %12 to i32
  %n_channels11 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 3
  %13 = ptrtoint ptr %n_channels11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv10, ptr %n_channels11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp13 = icmp eq i8 %12, 0
  br i1 %cmp13, label %if.end8.cleanup_crit_edge, label %if.end16

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %band, align 4
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %if.end7.i.i, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end7.i.i:                                      ; preds = %if.end16
  %16 = mul nuw nsw i32 %conv10, 56
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #12
  %17 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i, ptr %band, align 4
  %tobool24.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool24.not, label %if.end7.i.i.cleanup.sink.split_crit_edge, label %if.end7.i.i.if.end27_crit_edge

if.end7.i.i.if.end27_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end7.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end7.i.i.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  %info = getelementptr inbounds %struct.qlink_resp_band_info_get, ptr %resp, i32 0, i32 5
  %add.ptr = getelementptr i8, ptr %info, i32 %payload_len
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %payload_len)
  %cmp30423 = icmp sgt i32 %payload_len, 3
  br i1 %cmp30423, label %land.rhs.lr.ph, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end27
  %iftype_data8.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 10
  %n_iftype_data12.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 9
  %cap.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 6, i32 1
  %vht_mcs.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 6, i32 2
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 5, i32 1
  %ampdu_factor.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 5, i32 2
  %ampdu_density.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 5, i32 3
  %mcs.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 5, i32 4
  %band64 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %sub.ptr.sub429 = phi i32 [ %payload_len, %land.rhs.lr.ph ], [ %sub.ptr.sub, %for.inc.land.rhs_crit_edge ]
  %tlv.0426 = phi ptr [ %info, %land.rhs.lr.ph ], [ %add.ptr239, %for.inc.land.rhs_crit_edge ]
  %chidx.0425 = phi i32 [ 0, %land.rhs.lr.ph ], [ %chidx.1, %for.inc.land.rhs_crit_edge ]
  %ret.0424 = phi i32 [ -22, %land.rhs.lr.ph ], [ %ret.1, %for.inc.land.rhs_crit_edge ]
  %len = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0426, i32 0, i32 1
  %18 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %len, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv38 = zext i16 %20 to i32
  %add = add nuw nsw i32 %conv38, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub429, i32 %add)
  %cmp39.not = icmp ult i32 %sub.ptr.sub429, %add
  br i1 %cmp39.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %21 = ptrtoint ptr %tlv.0426 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %tlv.0426, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.133)
  switch i16 %23, label %do.end229 [
    i16 527, label %sw.bb
    i16 45, label %sw.bb184
    i16 191, label %sw.bb203
    i16 1048, label %sw.bb222
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 5120, i16 %19)
  %cmp44.not = icmp eq i16 %19, 5120
  br i1 %cmp44.not, label %if.end50, label %do.end, !prof !243

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef %conv38) #11
  br label %error_ret

if.end50:                                         ; preds = %sw.bb
  %25 = ptrtoint ptr %n_channels11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_channels11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chidx.0425, i32 %26)
  %cmp52 = icmp eq i32 %chidx.0425, %26
  br i1 %cmp52, label %do.end57, label %if.end60

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102) #11
  br label %error_ret

if.end60:                                         ; preds = %if.end50
  %val = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0426, i32 0, i32 2
  %27 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %band, align 4
  %inc = add i32 %chidx.0425, 1
  %arrayidx = getelementptr %struct.ieee80211_channel, ptr %28, i32 %chidx.0425
  %flags = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0426, i32 2
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %flags, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %val, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %hw_value63 = getelementptr %struct.ieee80211_channel, ptr %28, i32 %chidx.0425, i32 3
  %35 = ptrtoint ptr %hw_value63 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %hw_value63, align 2
  %36 = ptrtoint ptr %band64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %band64, align 4
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx, align 4
  %center_freq = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0426, i32 1, i32 1
  %39 = ptrtoint ptr %center_freq to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %center_freq, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv66 = zext i16 %41 to i32
  %center_freq67 = getelementptr %struct.ieee80211_channel, ptr %28, i32 %chidx.0425, i32 1
  %42 = ptrtoint ptr %center_freq67 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv66, ptr %center_freq67, align 4
  %max_antenna_gain = getelementptr inbounds %struct.qlink_channel, ptr %val, i32 0, i32 4
  %43 = ptrtoint ptr %max_antenna_gain to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %max_antenna_gain, align 1
  %conv68 = zext i8 %44 to i32
  %max_antenna_gain69 = getelementptr %struct.ieee80211_channel, ptr %28, i32 %chidx.0425, i32 5
  %45 = ptrtoint ptr %max_antenna_gain69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv68, ptr %max_antenna_gain69, align 4
  %max_power = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0426, i32 3, i32 1
  %46 = ptrtoint ptr %max_power to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %max_power, align 1
  %conv70 = zext i8 %47 to i32
  %max_power71 = getelementptr %struct.ieee80211_channel, ptr %28, i32 %chidx.0425, i32 6
  %48 = ptrtoint ptr %max_power71 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv70, ptr %max_power71, align 4
  %max_reg_power = getelementptr inbounds %struct.qlink_channel, ptr %val, i32 0, i32 6
  %49 = ptrtoint ptr %max_reg_power to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %max_reg_power, align 1
  %conv72 = zext i8 %50 to i32
  %max_reg_power73 = getelementptr %struct.ieee80211_channel, ptr %28, i32 %chidx.0425, i32 7
  %51 = ptrtoint ptr %max_reg_power73 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv72, ptr %max_reg_power73, align 4
  %beacon_found = getelementptr inbounds %struct.qlink_channel, ptr %val, i32 0, i32 9
  %52 = ptrtoint ptr %beacon_found to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %beacon_found, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool74 = icmp ne i8 %53, 0
  %beacon_found75 = getelementptr %struct.ieee80211_channel, ptr %28, i32 %chidx.0425, i32 8
  %frombool = zext i1 %tobool74 to i8
  %54 = ptrtoint ptr %beacon_found75 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %frombool, ptr %beacon_found75, align 4
  %dfs_cac_ms = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0426, i32 4
  %55 = ptrtoint ptr %dfs_cac_ms to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %dfs_cac_ms, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %dfs_cac_ms76 = getelementptr %struct.ieee80211_channel, ptr %28, i32 %chidx.0425, i32 14
  %58 = ptrtoint ptr %dfs_cac_ms76 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %dfs_cac_ms76, align 4
  %flags77 = getelementptr %struct.ieee80211_channel, ptr %28, i32 %chidx.0425, i32 4
  %59 = and i32 %31, 3
  %60 = ptrtoint ptr %flags77 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %flags77, align 4
  %and88 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end60.if.end93_crit_edge, label %if.then90

if.end60.if.end93_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then90:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags77, align 4
  %or92 = or i32 %62, 16
  store i32 %or92, ptr %flags77, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end60.if.end93_crit_edge
  %and94 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end99_crit_edge, label %if.then96

if.end93.if.end99_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags77, align 4
  %or98 = or i32 %64, 32
  store i32 %or98, ptr %flags77, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end93.if.end99_crit_edge
  %and100 = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end105_crit_edge, label %if.then102

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags77, align 4
  %or104 = or i32 %66, 64
  store i32 %or104, ptr %flags77, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.end99.if.end105_crit_edge
  %and106 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end105.if.end111_crit_edge, label %if.then108

if.end105.if.end111_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags77, align 4
  %or110 = or i32 %68, 128
  store i32 %or110, ptr %flags77, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end105.if.end111_crit_edge
  %and112 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.if.end117_crit_edge, label %if.then114

if.end111.if.end117_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags77, align 4
  %or116 = or i32 %70, 256
  store i32 %or116, ptr %flags77, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.end111.if.end117_crit_edge
  %and118 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.if.end123_crit_edge, label %if.then120

if.end117.if.end123_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags77, align 4
  %or122 = or i32 %72, 512
  store i32 %or122, ptr %flags77, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %if.end117.if.end123_crit_edge
  %and124 = and i32 %31, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end123.if.end129_crit_edge, label %if.then126

if.end123.if.end129_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags77, align 4
  %or128 = or i32 %74, 1024
  store i32 %or128, ptr %flags77, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.end123.if.end129_crit_edge
  %and130 = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end129.if.end135_crit_edge, label %if.then132

if.end129.if.end135_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags77, align 4
  %or134 = or i32 %76, 2048
  store i32 %or134, ptr %flags77, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %if.end129.if.end135_crit_edge
  %and136 = and i32 %31, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.if.end141_crit_edge, label %if.then138

if.end135.if.end141_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags77, align 4
  %or140 = or i32 %78, 4096
  store i32 %or140, ptr %flags77, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.end135.if.end141_crit_edge
  %and142 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end141.do.body164_crit_edge, label %if.then144

if.end141.do.body164_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body164

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags77, align 4
  %or146 = or i32 %80, 8
  store i32 %or146, ptr %flags77, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %dfs_state_entered = getelementptr %struct.ieee80211_channel, ptr %28, i32 %chidx.0425, i32 13
  %82 = ptrtoint ptr %dfs_state_entered to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %dfs_state_entered, align 4
  %dfs_state = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0426, i32 5
  %83 = ptrtoint ptr %dfs_state to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %dfs_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %84)
  %switch.selectcmp = icmp eq i8 %84, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %switch.selectcmp471 = icmp eq i8 %84, 0
  %switch.select472 = select i1 %switch.selectcmp471, i32 0, i32 %switch.select
  %dfs_state158 = getelementptr %struct.ieee80211_channel, ptr %28, i32 %chidx.0425, i32 12
  %85 = ptrtoint ptr %dfs_state158 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %switch.select472, ptr %dfs_state158, align 4
  br label %do.body164

do.body164:                                       ; preds = %if.then144, %if.end141.do.body164_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_cmd_resp_fill_band_info.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_cmd_resp_fill_band_info, %if.then175)) #8
          to label %for.inc [label %if.then175], !srcloc !242

if.then175:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %hw_value63 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %hw_value63, align 2
  %conv177 = zext i16 %87 to i32
  %88 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags77, align 4
  %90 = ptrtoint ptr %max_power71 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_power71, align 4
  %92 = ptrtoint ptr %max_reg_power73 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_reg_power73, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_cmd_resp_fill_band_info.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.102, i32 noundef %conv177, i32 noundef %89, i32 noundef %91, i32 noundef %93) #8
  br label %for.inc

sw.bb184:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 6656, i16 %19)
  %cmp185.not = icmp eq i16 %19, 6656
  br i1 %cmp185.not, label %if.end199, label %do.end196, !prof !243

do.end196:                                        ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #10
  %call198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.102, i32 noundef %conv38) #11
  br label %error_ret

if.end199:                                        ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #10
  %val200 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0426, i32 0, i32 2
  %94 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %ht_supported.i, align 2
  %95 = ptrtoint ptr %val200 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %val200, align 1
  %97 = tail call i16 @llvm.bswap.i16(i16 %96) #8
  %98 = ptrtoint ptr %ht_cap to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %ht_cap, align 2
  %ampdu_params_info.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0426, i32 1, i32 1
  %99 = ptrtoint ptr %ampdu_params_info.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ampdu_params_info.i, align 1
  %101 = and i8 %100, 3
  %102 = ptrtoint ptr %ampdu_factor.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %ampdu_factor.i, align 1
  %103 = load i8, ptr %ampdu_params_info.i, align 1
  %104 = lshr i8 %103, 2
  %105 = and i8 %104, 7
  %106 = ptrtoint ptr %ampdu_density.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %ampdu_density.i, align 2
  %mcs6.i = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %val200, i32 0, i32 2
  %107 = call ptr @memcpy(ptr %mcs.i, ptr %mcs6.i, i32 16)
  br label %for.inc

sw.bb203:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %19)
  %cmp204.not = icmp eq i16 %19, 3072
  br i1 %cmp204.not, label %if.end218, label %do.end215, !prof !243

do.end215:                                        ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #10
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.102, i32 noundef %conv38) #11
  br label %error_ret

if.end218:                                        ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #10
  %val219 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0426, i32 0, i32 2
  %108 = ptrtoint ptr %vht_cap to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %vht_cap, align 4
  %109 = ptrtoint ptr %val219 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %val219, align 1
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #8
  %112 = ptrtoint ptr %cap.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %cap.i, align 4
  %supp_mcs.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0426, i32 2
  %113 = ptrtoint ptr %supp_mcs.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 8)
  %114 = load i64, ptr %supp_mcs.i, align 1
  %115 = ptrtoint ptr %vht_mcs.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 %114, ptr %vht_mcs.i, align 4
  br label %for.inc

sw.bb222:                                         ; preds = %for.body
  %n_iftype_data.i = getelementptr inbounds %struct.qlink_tlv_iftype_data, ptr %tlv.0426, i32 0, i32 1
  %116 = ptrtoint ptr %n_iftype_data.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %n_iftype_data.i, align 1
  %conv.i = zext i8 %117 to i16
  %mul.i = mul nuw nsw i16 %conv.i, 56
  %sub.i = or i16 %mul.i, 4
  %118 = tail call i16 @llvm.bswap.i16(i16 %sub.i) #8
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %118)
  %cmp.not.i = icmp eq i16 %19, %118
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i = zext i16 %19 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i32 noundef %conv1.i) #11
  br label %error_ret

if.end.i:                                         ; preds = %sw.bb222
  %119 = ptrtoint ptr %iftype_data8.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %iftype_data8.i, align 4
  tail call void @kfree(ptr noundef %120) #8
  %121 = ptrtoint ptr %iftype_data8.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %iftype_data8.i, align 4
  %122 = ptrtoint ptr %n_iftype_data.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %n_iftype_data.i, align 1
  %conv11.i = zext i8 %123 to i16
  %124 = ptrtoint ptr %n_iftype_data12.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv11.i, ptr %n_iftype_data12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp15.i = icmp eq i8 %123, 0
  br i1 %cmp15.i, label %if.end.i.for.inc_crit_edge, label %if.end7.i.i.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end7.i.i.i:                                    ; preds = %if.end.i
  %conv14.i = zext i8 %123 to i32
  %125 = mul nuw nsw i32 %conv14.i, 68
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %125, i32 noundef 3520) #12
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.then22.i, label %if.end24.i

if.then22.i:                                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %n_iftype_data12.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %n_iftype_data12.i, align 4
  br label %error_ret

if.end24.i:                                       ; preds = %if.end7.i.i.i
  %127 = ptrtoint ptr %iftype_data8.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call8.i.i.i, ptr %iftype_data8.i, align 4
  %128 = ptrtoint ptr %n_iftype_data12.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %n_iftype_data12.i, align 4
  %conv27.i = zext i16 %129 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %cmp2851.not.i = icmp eq i16 %129, 0
  br i1 %cmp2851.not.i, label %if.end24.i.for.inc_crit_edge, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  br label %for.body.i

if.end24.i.for.inc_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end24.i.for.body.i_crit_edge
  %i.053.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end24.i.for.body.i_crit_edge ]
  %iftype_data.052.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call8.i.i.i, %if.end24.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %iftype_data.052.i, i32 1
  %arrayidx.i = getelementptr %struct.qlink_tlv_iftype_data, ptr %tlv.0426, i32 0, i32 3, i32 %i.053.i
  %130 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 2)
  %131 = load i16, ptr %arrayidx.i, align 1
  %132 = tail call i16 @llvm.bswap.i16(i16 %131) #8
  %133 = ptrtoint ptr %iftype_data.052.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %iftype_data.052.i, align 4
  %he_cap.i.i = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %iftype_data.052.i, i32 0, i32 1
  %134 = ptrtoint ptr %he_cap.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %he_cap.i.i, align 2
  %he_cap_elem.i.i = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %iftype_data.052.i, i32 0, i32 1, i32 1
  %he_cap_elem3.i.i = getelementptr %struct.qlink_tlv_iftype_data, ptr %tlv.0426, i32 0, i32 3, i32 %i.053.i, i32 1
  %135 = call ptr @memcpy(ptr %he_cap_elem.i.i, ptr %he_cap_elem3.i.i, i32 17)
  %ppe_thres.i.i = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %iftype_data.052.i, i32 0, i32 1, i32 3
  %ppe_thres5.i.i = getelementptr %struct.qlink_tlv_iftype_data, ptr %tlv.0426, i32 0, i32 3, i32 %i.053.i, i32 3
  %136 = call ptr @memcpy(ptr %ppe_thres.i.i, ptr %ppe_thres5.i.i, i32 25)
  %he_mcs_nss_supp.i.i = getelementptr %struct.qlink_tlv_iftype_data, ptr %tlv.0426, i32 0, i32 3, i32 %i.053.i, i32 2
  %137 = ptrtoint ptr %he_mcs_nss_supp.i.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 2)
  %138 = load i16, ptr %he_mcs_nss_supp.i.i, align 1
  %he_mcs_nss_supp8.i.i = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %iftype_data.052.i, i32 0, i32 1, i32 2
  %139 = ptrtoint ptr %he_mcs_nss_supp8.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %he_mcs_nss_supp8.i.i, align 2
  %tx_mcs_80.i.i = getelementptr %struct.qlink_tlv_iftype_data, ptr %tlv.0426, i32 0, i32 3, i32 %i.053.i, i32 2, i32 1
  %140 = ptrtoint ptr %tx_mcs_80.i.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %tx_mcs_80.i.i, align 1
  %tx_mcs_8013.i.i = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %iftype_data.052.i, i32 0, i32 1, i32 2, i32 1
  %142 = ptrtoint ptr %tx_mcs_8013.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %tx_mcs_8013.i.i, align 2
  %rx_mcs_160.i.i = getelementptr %struct.qlink_tlv_iftype_data, ptr %tlv.0426, i32 0, i32 3, i32 %i.053.i, i32 2, i32 2
  %143 = ptrtoint ptr %rx_mcs_160.i.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 2)
  %144 = load i16, ptr %rx_mcs_160.i.i, align 1
  %rx_mcs_16017.i.i = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %iftype_data.052.i, i32 0, i32 1, i32 2, i32 2
  %145 = ptrtoint ptr %rx_mcs_16017.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %rx_mcs_16017.i.i, align 2
  %tx_mcs_160.i.i = getelementptr %struct.qlink_tlv_iftype_data, ptr %tlv.0426, i32 0, i32 3, i32 %i.053.i, i32 2, i32 3
  %146 = ptrtoint ptr %tx_mcs_160.i.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %147 = load i16, ptr %tx_mcs_160.i.i, align 1
  %tx_mcs_16021.i.i = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %iftype_data.052.i, i32 0, i32 1, i32 2, i32 3
  %148 = ptrtoint ptr %tx_mcs_16021.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %tx_mcs_16021.i.i, align 2
  %rx_mcs_80p80.i.i = getelementptr %struct.qlink_tlv_iftype_data, ptr %tlv.0426, i32 0, i32 3, i32 %i.053.i, i32 2, i32 4
  %149 = ptrtoint ptr %rx_mcs_80p80.i.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %150 = load i16, ptr %rx_mcs_80p80.i.i, align 1
  %rx_mcs_80p8025.i.i = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %iftype_data.052.i, i32 0, i32 1, i32 2, i32 4
  %151 = ptrtoint ptr %rx_mcs_80p8025.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %rx_mcs_80p8025.i.i, align 2
  %tx_mcs_80p80.i.i = getelementptr %struct.qlink_tlv_iftype_data, ptr %tlv.0426, i32 0, i32 3, i32 %i.053.i, i32 2, i32 5
  %152 = ptrtoint ptr %tx_mcs_80p80.i.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %153 = load i16, ptr %tx_mcs_80p80.i.i, align 1
  %tx_mcs_80p8029.i.i = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %iftype_data.052.i, i32 0, i32 1, i32 2, i32 5
  %154 = ptrtoint ptr %tx_mcs_80p8029.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %tx_mcs_80p8029.i.i, align 2
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv27.i
  br i1 %exitcond.not.i, label %for.body.i.for.inc_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end229:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv43 = zext i16 %23 to i32
  %call232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.102, i32 noundef %conv43) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end229, %for.body.i.for.inc_crit_edge, %if.end24.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %if.end218, %if.end199, %if.then175, %do.body164
  %ret.1 = phi i32 [ %ret.0424, %do.end229 ], [ %ret.0424, %if.end218 ], [ %ret.0424, %if.end199 ], [ %ret.0424, %if.then175 ], [ %ret.0424, %do.body164 ], [ 0, %if.end.i.for.inc_crit_edge ], [ 0, %if.end24.i.for.inc_crit_edge ], [ 0, %for.body.i.for.inc_crit_edge ]
  %chidx.1 = phi i32 [ %chidx.0425, %do.end229 ], [ %chidx.0425, %if.end218 ], [ %chidx.0425, %if.end199 ], [ %inc, %if.then175 ], [ %inc, %do.body164 ], [ %chidx.0425, %if.end.i.for.inc_crit_edge ], [ %chidx.0425, %if.end24.i.for.inc_crit_edge ], [ %chidx.0425, %for.body.i.for.inc_crit_edge ]
  %val233 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0426, i32 0, i32 2
  %155 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %len, align 1
  %157 = tail call i16 @llvm.bswap.i16(i16 %156)
  %conv236 = zext i16 %157 to i32
  %sub = add nsw i32 %conv236, -1
  %or237 = or i32 %sub, 3
  %add238 = add nsw i32 %or237, 1
  %add.ptr239 = getelementptr i8, ptr %val233, i32 %add238
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr239 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp30 = icmp sgt i32 %sub.ptr.sub, 3
  br i1 %cmp30, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end27.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ -22, %if.end27.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ], [ %ret.0424, %land.rhs.for.end_crit_edge ]
  %chidx.0.lcssa = phi i32 [ 0, %if.end27.for.end_crit_edge ], [ %chidx.1, %for.inc.for.end_crit_edge ], [ %chidx.0425, %land.rhs.for.end_crit_edge ]
  %tlv.0.lcssa = phi ptr [ %info, %if.end27.for.end_crit_edge ], [ %add.ptr239, %for.inc.for.end_crit_edge ], [ %tlv.0426, %land.rhs.for.end_crit_edge ]
  %sub242 = add i32 %payload_len, -1
  %or243 = or i32 %sub242, 3
  %add244 = add i32 %or243, 1
  %add.ptr245 = getelementptr i8, ptr %info, i32 %add244
  %cmp246 = icmp eq ptr %tlv.0.lcssa, %add.ptr245
  br i1 %cmp246, label %if.end254, label %do.end251

do.end251:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.102) #11
  br label %error_ret

if.end254:                                        ; preds = %for.end
  %158 = ptrtoint ptr %n_channels11 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %n_channels11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %chidx.0.lcssa)
  %cmp256.not = icmp eq i32 %159, %chidx.0.lcssa
  br i1 %cmp256.not, label %if.end254.cleanup_crit_edge, label %do.end261

if.end254.cleanup_crit_edge:                      ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end261:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #10
  %call264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.102, i32 noundef %159, i32 noundef %chidx.0.lcssa) #11
  br label %error_ret

error_ret:                                        ; preds = %do.end261, %do.end251, %if.then22.i, %do.end.i, %do.end215, %do.end196, %do.end57, %do.end
  %ret.2 = phi i32 [ %ret.0424, %do.end215 ], [ %ret.0424, %do.end196 ], [ %ret.0424, %do.end ], [ %ret.0424, %do.end57 ], [ %ret.0.lcssa, %do.end261 ], [ %ret.0.lcssa, %do.end251 ], [ -22, %do.end.i ], [ -12, %if.then22.i ]
  %160 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %band, align 4
  tail call void @kfree(ptr noundef %161) #8
  %162 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %band, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %error_ret, %if.end7.i.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.2, %error_ret ], [ -12, %if.end7.i.i.cleanup.sink.split_crit_edge ]
  %163 = ptrtoint ptr %n_channels11 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %n_channels11, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end254.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end254.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_update_phy_params(ptr noundef readonly %mac, i32 noundef %changed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %mac, null
  br i1 %tobool.not.i, label %do.body4.i, label %priv_to_wiphy.exit, !prof !240

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #8, !srcloc !244
  unreachable

priv_to_wiphy.exit:                               ; preds = %entry
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i47 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i47, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %priv_to_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %1 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef 0, i32 noundef 18) #11
  br label %cleanup

if.end:                                           ; preds = %priv_to_wiphy.exit
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #8
  %2 = call ptr @memset(ptr %call.i25.i, i32 0, i32 12)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %6 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %len9.i, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 256, ptr %4, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 4608, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %1, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %4, i32 0, i32 4
  %12 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %vifid12.i, align 1
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 3
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %14, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %and = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %frag_threshold = getelementptr i8, ptr %mac, i32 -1200
  %15 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frag_threshold, align 16
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 8) #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 258, ptr %call.i, align 1
  %len.i48 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %len.i48 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 1024, ptr %len.i48, align 1
  %val.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %17, ptr %val.i, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %rts_threshold = getelementptr i8, ptr %mac, i32 -1196
  %21 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rts_threshold, align 4
  %call.i49 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 8) #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %24 = ptrtoint ptr %call.i49 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 514, ptr %call.i49, align 1
  %len.i50 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i49, i32 0, i32 1
  %25 = ptrtoint ptr %len.i50 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 1024, ptr %len.i50, align 1
  %val.i51 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i49, i32 0, i32 2
  %26 = ptrtoint ptr %val.i51 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %23, ptr %val.i51, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %and9 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %coverage_class = getelementptr i8, ptr %mac, i32 -1192
  %27 = ptrtoint ptr %coverage_class to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %coverage_class, align 8
  %conv = zext i8 %28 to i32
  %call.i52 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 8) #8
  %29 = shl nuw i32 %conv, 24
  %30 = ptrtoint ptr %call.i52 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 4866, ptr %call.i52, align 1
  %len.i53 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i52, i32 0, i32 1
  %31 = ptrtoint ptr %len.i53 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 1024, ptr %len.i53, align 1
  %val.i54 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i52, i32 0, i32 2
  %32 = ptrtoint ptr %val.i54 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %29, ptr %val.i54, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %and13 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %retry_long = getelementptr i8, ptr %mac, i32 -1203
  %33 = ptrtoint ptr %retry_long to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %retry_long, align 1
  %conv16 = zext i8 %34 to i32
  %call.i55 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 8) #8
  %35 = shl nuw i32 %conv16, 24
  %36 = ptrtoint ptr %call.i55 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 1026, ptr %call.i55, align 1
  %len.i56 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i55, i32 0, i32 1
  %37 = ptrtoint ptr %len.i56 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 1024, ptr %len.i56, align 1
  %val.i57 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i55, i32 0, i32 2
  %38 = ptrtoint ptr %val.i57 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %35, ptr %val.i57, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %and18 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %retry_short = getelementptr i8, ptr %mac, i32 -1204
  %39 = ptrtoint ptr %retry_short to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %retry_short, align 4
  %conv21 = zext i8 %40 to i32
  %call.i58 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 8) #8
  %41 = shl nuw i32 %conv21, 24
  %42 = ptrtoint ptr %call.i58 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 770, ptr %call.i58, align 1
  %len.i59 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i58, i32 0, i32 1
  %43 = ptrtoint ptr %len.i59 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 1024, ptr %len.i59, align 1
  %val.i60 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i58, i32 0, i32 2
  %44 = ptrtoint ptr %val.i60 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %41, ptr %val.i60, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %45 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus, align 4
  %call.i61 = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %46, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus, align 4
  %bus_lock.i46 = getelementptr inbounds %struct.qtnf_bus, ptr %48, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i46) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i61, %if.end22 ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_init_fw(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %resp_skb = alloca ptr, align 4
  %info_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_skb) #8
  %0 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %resp_skb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info_len) #8
  %1 = ptrtoint ptr %info_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %info_len, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 255, i32 noundef 255, i32 noundef 1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %2 = call ptr @memset(ptr %call.i25.i, i32 0, i32 16)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %6 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %len9.i, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 256, ptr %4, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 256, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %4, i32 0, i32 4
  %12 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %vifid12.i, align 1
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %qlink_proto_ver = getelementptr inbounds %struct.qlink_cmd_init_fw, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %qlink_proto_ver to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 16781824, ptr %qlink_proto_ver, align 1
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %call1 = call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %bus, ptr noundef nonnull %call.i.i, ptr noundef nonnull %resp_skb, i32 noundef 16, ptr noundef nonnull %info_len)
  call void @mutex_unlock(ptr noundef %bus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resp_skb, align 4
  %data5 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data5, align 4
  %qlink_proto_ver6 = getelementptr inbounds %struct.qlink_resp_init_fw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %qlink_proto_ver6 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %qlink_proto_ver6, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %hw_info = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7
  %23 = ptrtoint ptr %hw_info to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %hw_info, align 8
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge
  %24 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resp_skb, align 4
  call void @consume_skb(ptr noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_skb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_cmd_send_deinit_fw(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 255, i32 noundef 255, i32 noundef 2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #8
  %0 = call ptr @memset(ptr %call.i25.i, i32 0, i32 12)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %4 to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %len9.i, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 256, ptr %2, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 512, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %2, i32 0, i32 4
  %10 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %vifid12.i, align 1
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %bus, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %bus_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_add_key(ptr nocapture noundef readonly %vif, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef readonly %mac_addr, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %pairwise to i8
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 64) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 28) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 28)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 16384, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %20, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %tobool2.not = icmp eq ptr %mac_addr, null
  %addr4 = getelementptr inbounds %struct.qlink_cmd_add_key, ptr %22, i32 0, i32 3
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mac_addr, align 4
  %25 = ptrtoint ptr %addr4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %addr4, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qlink_cmd_add_key, ptr %22, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i, align 2
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = call ptr @memset(ptr %addr4, i32 255, i32 6)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %cipher = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %30 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cipher, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %cipher7 = getelementptr inbounds %struct.qlink_cmd_add_key, ptr %22, i32 0, i32 4
  %33 = ptrtoint ptr %cipher7 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %cipher7, align 1
  %key_index8 = getelementptr inbounds %struct.qlink_cmd_add_key, ptr %22, i32 0, i32 1
  %34 = ptrtoint ptr %key_index8 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %key_index, ptr %key_index8, align 1
  %pairwise10 = getelementptr inbounds %struct.qlink_cmd_add_key, ptr %22, i32 0, i32 2
  %35 = ptrtoint ptr %pairwise10 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool, ptr %pairwise10, align 1
  %36 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %params, align 4
  %tobool11.not = icmp eq ptr %37, null
  br i1 %tobool11.not, label %if.end6.if.end16_crit_edge, label %land.lhs.true

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end6
  %key_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %38 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp sgt i32 %39, 0
  br i1 %cmp, label %if.then13, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i32 %39, -1
  %or.i = or i32 %sub.i, 3
  %add1.i = add i32 %or.i, 5
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i) #8
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 515, ptr %call.i, align 1
  %conv.i57 = trunc i32 %39 to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv.i57) #8
  %len.i58 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %len.i58 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %len.i58, align 1
  %val.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i, i32 0, i32 2
  %43 = call ptr @memcpy(ptr %val.i, ptr %37, i32 %39)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %seq = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 1
  %44 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %seq, align 4
  %tobool17.not = icmp eq ptr %45, null
  br i1 %tobool17.not, label %if.end16.if.end24_crit_edge, label %land.lhs.true18

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true18:                                  ; preds = %if.end16
  %seq_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %46 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %seq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp19 = icmp sgt i32 %47, 0
  br i1 %cmp19, label %if.then21, label %land.lhs.true18.if.end24_crit_edge

land.lhs.true18.if.end24_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i59 = add nsw i32 %47, -1
  %or.i60 = or i32 %sub.i59, 3
  %add1.i61 = add i32 %or.i60, 5
  %call.i62 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i61) #8
  %48 = ptrtoint ptr %call.i62 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 771, ptr %call.i62, align 1
  %conv.i63 = trunc i32 %47 to i16
  %49 = tail call i16 @llvm.bswap.i16(i16 %conv.i63) #8
  %len.i64 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i62, i32 0, i32 1
  %50 = ptrtoint ptr %len.i64 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %len.i64, align 1
  %val.i65 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i62, i32 0, i32 2
  %51 = call ptr @memcpy(ptr %val.i65, ptr %45, i32 %47)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %land.lhs.true18.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %52 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mac, align 4
  %bus26 = getelementptr inbounds %struct.qtnf_wmac, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %bus26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus26, align 4
  %call.i66 = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %55, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %56 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mac, align 4
  %bus29 = getelementptr inbounds %struct.qtnf_wmac, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %bus29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus29, align 4
  %bus_lock.i56 = getelementptr inbounds %struct.qtnf_bus, ptr %59, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i56) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i66, %if.end24 ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_del_key(ptr nocapture noundef readonly %vif, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef readonly %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %pairwise to i8
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 65) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 20)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 16640, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %20, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %tobool2.not = icmp eq ptr %mac_addr, null
  %addr4 = getelementptr inbounds %struct.qlink_cmd_del_key, ptr %22, i32 0, i32 3
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mac_addr, align 4
  %25 = ptrtoint ptr %addr4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %addr4, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qlink_cmd_del_key, ptr %22, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i, align 2
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = call ptr @memset(ptr %addr4, i32 255, i32 6)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %key_index7 = getelementptr inbounds %struct.qlink_cmd_del_key, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %key_index7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %key_index, ptr %key_index7, align 1
  %pairwise9 = getelementptr inbounds %struct.qlink_cmd_del_key, ptr %22, i32 0, i32 2
  %31 = ptrtoint ptr %pairwise9 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %pairwise9, align 1
  %32 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mac, align 4
  %bus11 = getelementptr inbounds %struct.qtnf_wmac, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %bus11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus11, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %35, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %36 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mac, align 4
  %bus14 = getelementptr inbounds %struct.qtnf_wmac, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %bus14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus14, align 4
  %bus_lock.i27 = getelementptr inbounds %struct.qtnf_bus, ptr %39, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i27) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end6 ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_set_default_key(ptr nocapture noundef readonly %vif, i8 noundef zeroext %key_index, i1 noundef zeroext %unicast, i1 noundef zeroext %multicast) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 66) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 16)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 16896, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %frombool1 = zext i1 %multicast to i8
  %frombool = zext i1 %unicast to i8
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %20, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %key_index3 = getelementptr inbounds %struct.qlink_cmd_set_def_key, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %key_index3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %key_index, ptr %key_index3, align 1
  %unicast5 = getelementptr inbounds %struct.qlink_cmd_set_def_key, ptr %22, i32 0, i32 2
  %24 = ptrtoint ptr %unicast5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %unicast5, align 1
  %multicast8 = getelementptr inbounds %struct.qlink_cmd_set_def_key, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %multicast8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool1, ptr %multicast8, align 1
  %26 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mac, align 4
  %bus10 = getelementptr inbounds %struct.qtnf_wmac, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %bus10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus10, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %29, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %30 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mac, align 4
  %bus13 = getelementptr inbounds %struct.qtnf_wmac, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %bus13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus13, align 4
  %bus_lock.i24 = getelementptr inbounds %struct.qtnf_bus, ptr %33, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_set_default_mgmt_key(ptr nocapture noundef readonly %vif, i8 noundef zeroext %key_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 67) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 16)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 17152, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %20, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %key_index2 = getelementptr inbounds %struct.qlink_cmd_set_def_mgmt_key, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %key_index2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %key_index, ptr %key_index2, align 1
  %24 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mac, align 4
  %bus4 = getelementptr inbounds %struct.qtnf_wmac, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %bus4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus4, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %27, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %28 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mac, align 4
  %bus7 = getelementptr inbounds %struct.qtnf_wmac, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %bus7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus7, align 4
  %bus_lock.i16 = getelementptr inbounds %struct.qtnf_bus, ptr %31, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_change_sta(ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %mac, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac1 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 81) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 32) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 32)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 20736, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %17 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac1, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %20, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %sta_addr = getelementptr inbounds %struct.qlink_cmd_change_sta, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mac, align 4
  %25 = ptrtoint ptr %sta_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sta_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qlink_cmd_change_sta, ptr %22, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i, align 2
  %sta_flags_mask = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 2
  %29 = ptrtoint ptr %sta_flags_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sta_flags_mask, align 4
  %31 = shl i32 %30, 23
  %32 = and i32 %31, 2130706432
  %flag_update = getelementptr inbounds %struct.qlink_cmd_change_sta, ptr %22, i32 0, i32 1
  %33 = ptrtoint ptr %flag_update to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %flag_update, align 1
  %sta_flags_set = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 3
  %34 = ptrtoint ptr %sta_flags_set to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sta_flags_set, align 4
  %36 = shl i32 %35, 23
  %37 = and i32 %36, 2130706432
  %value = getelementptr inbounds %struct.qlink_cmd_change_sta, ptr %22, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %value to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %value, align 1
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %39 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iftype, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %40, label %do.end [
    i32 3, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %40) #11
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #8
  br label %out

sw.epilog:                                        ; preds = %sw.bb6, %if.end.sw.epilog_crit_edge
  %.sink = phi i16 [ 512, %sw.bb6 ], [ 256, %if.end.sw.epilog_crit_edge ]
  %if_type7 = getelementptr inbounds %struct.qlink_cmd_change_sta, ptr %22, i32 0, i32 2
  %42 = ptrtoint ptr %if_type7 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %.sink, ptr %if_type7, align 1
  %43 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mac1, align 4
  %bus12 = getelementptr inbounds %struct.qtnf_wmac, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %bus12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus12, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %46, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  br label %out

out:                                              ; preds = %sw.epilog, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call.i, %sw.epilog ]
  %47 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mac1, align 4
  %bus15 = getelementptr inbounds %struct.qtnf_wmac, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %bus15 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus15, align 4
  %bus_lock.i32 = getelementptr inbounds %struct.qtnf_bus, ptr %50, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i32) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_del_sta(ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 82) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 24)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 20992, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %20, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %23 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %params, align 4
  %tobool3.not = icmp eq ptr %24, null
  %sta_addr6 = getelementptr inbounds %struct.qlink_cmd_del_sta, ptr %22, i32 0, i32 2
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = ptrtoint ptr %sta_addr6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sta_addr6, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qlink_cmd_del_sta, ptr %22, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %add.ptr1.i, align 2
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %31 = call ptr @memset(ptr %sta_addr6, i32 255, i32 6)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %subtype = getelementptr inbounds %struct.station_del_parameters, ptr %params, i32 0, i32 1
  %32 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %subtype, align 4
  %subtype9 = getelementptr inbounds %struct.qlink_cmd_del_sta, ptr %22, i32 0, i32 3
  %34 = ptrtoint ptr %subtype9 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %subtype9, align 1
  %reason_code = getelementptr inbounds %struct.station_del_parameters, ptr %params, i32 0, i32 2
  %35 = ptrtoint ptr %reason_code to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %reason_code, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %reason_code10 = getelementptr inbounds %struct.qlink_cmd_del_sta, ptr %22, i32 0, i32 1
  %38 = ptrtoint ptr %reason_code10 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %reason_code10, align 1
  %39 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mac, align 4
  %bus12 = getelementptr inbounds %struct.qtnf_wmac, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %bus12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus12, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %42, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %43 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mac, align 4
  %bus15 = getelementptr inbounds %struct.qtnf_wmac, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %bus15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus15, align 4
  %bus_lock.i30 = getelementptr inbounds %struct.qtnf_bus, ptr %46, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i30) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end8 ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_scan(ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_req1 = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 6
  %0 = ptrtoint ptr %scan_req1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_req1, align 4
  %wdev2 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %wdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdev2, align 8
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef 255, i32 noundef 83) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 40) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 40)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 21248, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %5, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %vifid12.i, align 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %duration = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %duration to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %duration, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool3.not = icmp eq i16 %20, 0
  br i1 %tobool3.not, label %if.else, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else:                                          ; preds = %if.end
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp = icmp eq i32 %22, 2
  br i1 %cmp, label %land.lhs.true, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 25
  %23 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %current_bss, align 4
  %tobool7.not = icmp eq ptr %24, null
  %spec.select = select i1 %tobool7.not, i16 90, i16 0
  %spec.select179 = select i1 %tobool7.not, i16 100, i16 0
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.else.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %dwell_active.0 = phi i16 [ 90, %if.else.if.end10_crit_edge ], [ %20, %if.end.if.end10_crit_edge ], [ %spec.select, %land.lhs.true ]
  %dwell_passive.0 = phi i16 [ 100, %if.else.if.end10_crit_edge ], [ %20, %if.end.if.end10_crit_edge ], [ %spec.select179, %land.lhs.true ]
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_ssids, align 4
  %conv = trunc i32 %26 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %n_ssids11 = getelementptr inbounds %struct.qlink_cmd_scan, ptr %18, i32 0, i32 2
  %28 = ptrtoint ptr %n_ssids11 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %n_ssids11, align 1
  %29 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp13208 = icmp sgt i32 %30, 0
  br i1 %cmp13208, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %count.0209 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr %struct.cfg80211_ssid, ptr %32, i32 %count.0209
  %ssid_len = getelementptr %struct.cfg80211_ssid, ptr %32, i32 %count.0209, i32 1
  %33 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ssid_len, align 1
  %conv17 = zext i8 %34 to i32
  %sub.i = add nsw i32 %conv17, -1
  %or.i = or i32 %sub.i, 3
  %add1.i = add nsw i32 %or.i, 5
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i) #8
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 0, ptr %call.i, align 1
  %conv.i188 = zext i8 %34 to i16
  %36 = shl nuw i16 %conv.i188, 8
  %len.i189 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %len.i189 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %len.i189, align 1
  %val.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i, i32 0, i32 2
  %38 = call ptr @memcpy(ptr %val.i, ptr %arrayidx, i32 %conv17)
  %inc = add nuw nsw i32 %count.0209, 1
  %39 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_ssids, align 4
  %cmp13 = icmp slt i32 %inc, %40
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp18.not = icmp eq i32 %42, 0
  br i1 %cmp18.not, label %for.end.if.end22_crit_edge, label %if.then20

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %for.end
  %ie = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ie, align 8
  %sub.i190 = add i32 %42, -1
  %or.i191 = or i32 %sub.i190, 3
  %add1.i192 = add i32 %or.i191, 9
  %call.i193 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i192) #8
  %45 = ptrtoint ptr %call.i193 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 1283, ptr %call.i193, align 1
  %46 = trunc i32 %42 to i16
  %conv.i194 = add i16 %46, 4
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv.i194) #8
  %len5.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i193, i32 0, i32 1
  %48 = ptrtoint ptr %len5.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %len5.i, align 1
  %type6.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i193, i32 0, i32 1
  %49 = ptrtoint ptr %type6.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %type6.i, align 1
  %flags.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i193, i32 0, i32 2
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %flags.i, align 1
  %tobool7.not.i = icmp eq ptr %44, null
  br i1 %tobool7.not.i, label %if.then20.if.end22_crit_edge, label %if.then.i

if.then20.if.end22_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %ie_data.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i193, i32 0, i32 4
  %51 = call ptr @memcpy(ptr %ie_data.i, ptr %44, i32 %42)
  br label %if.end22

if.end22:                                         ; preds = %if.then.i, %if.then20.if.end22_crit_edge, %for.end.if.end22_crit_edge
  %n_channels24 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %n_channels24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n_channels24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp25210.not = icmp eq i32 %53, 0
  br i1 %cmp25210.not, label %if.end22.for.end46_crit_edge, label %if.end22.for.body27_crit_edge

if.end22.for.body27_crit_edge:                    ; preds = %if.end22
  br label %for.body27

if.end22.for.end46_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end46

for.body27:                                       ; preds = %for.inc44.for.body27_crit_edge, %if.end22.for.body27_crit_edge
  %count.1212 = phi i32 [ %inc45, %for.inc44.for.body27_crit_edge ], [ 0, %if.end22.for.body27_crit_edge ]
  %n_channels.0211 = phi i32 [ %n_channels.1, %for.inc44.for.body27_crit_edge ], [ 0, %if.end22.for.body27_crit_edge ]
  %arrayidx28 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 22, i32 %count.1212
  %54 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx28, align 4
  %flags29 = getelementptr inbounds %struct.ieee80211_channel, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags29, align 4
  %and = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %do.body, label %for.body27.for.inc44_crit_edge

for.body27.for.inc44_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc44

do.body:                                          ; preds = %for.body27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_cmd_send_scan.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_cmd_send_scan, %if.then37)) #8
          to label %do.end [label %if.then37], !srcloc !242

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mac, align 4
  %conv39 = zext i8 %59 to i32
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %55, i32 0, i32 3
  %60 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %hw_value, align 2
  %conv40 = zext i16 %61 to i32
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %55, i32 0, i32 1
  %62 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %center_freq, align 4
  %64 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags29, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_cmd_send_scan.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef %conv39, i32 noundef %conv40, i32 noundef %63, i32 noundef %65) #8
  br label %do.end

do.end:                                           ; preds = %if.then37, %do.body
  %call.i.i197 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #8
  %66 = getelementptr inbounds i8, ptr %call.i.i197, i32 4
  %67 = call ptr @memset(ptr %66, i32 0, i32 20)
  %68 = ptrtoint ptr %call.i.i197 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 3842, ptr %call.i.i197, align 1
  %len.i198 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i.i197, i32 0, i32 1
  %69 = ptrtoint ptr %len.i198 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 5120, ptr %len.i198, align 1
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %55, i32 0, i32 1
  %70 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %center_freq.i, align 4
  %conv.i199 = trunc i32 %71 to i16
  %72 = tail call i16 @llvm.bswap.i16(i16 %conv.i199) #8
  %center_freq2.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i197, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %center_freq2.i, align 1
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %55, i32 0, i32 3
  %74 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %hw_value.i, align 2
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #8
  %77 = ptrtoint ptr %66 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %76, ptr %66, align 1
  %78 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %55, align 4
  %call4.i = tail call i32 @qlink_utils_band_cfg2q(i32 noundef %79) #8
  %conv5.i = trunc i32 %call4.i to i8
  %band6.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i197, i32 0, i32 1, i32 3
  %80 = ptrtoint ptr %band6.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv5.i, ptr %band6.i, align 1
  %max_power.i = getelementptr inbounds %struct.ieee80211_channel, ptr %55, i32 0, i32 6
  %81 = ptrtoint ptr %max_power.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_power.i, align 4
  %conv7.i = trunc i32 %82 to i8
  %max_power8.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i197, i32 0, i32 1, i32 5
  %83 = ptrtoint ptr %max_power8.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv7.i, ptr %max_power8.i, align 1
  %max_reg_power.i = getelementptr inbounds %struct.ieee80211_channel, ptr %55, i32 0, i32 7
  %84 = ptrtoint ptr %max_reg_power.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_reg_power.i, align 4
  %conv9.i = trunc i32 %85 to i8
  %max_reg_power10.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i197, i32 0, i32 1, i32 6
  %86 = ptrtoint ptr %max_reg_power10.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv9.i, ptr %max_reg_power10.i, align 1
  %max_antenna_gain.i = getelementptr inbounds %struct.ieee80211_channel, ptr %55, i32 0, i32 5
  %87 = ptrtoint ptr %max_antenna_gain.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_antenna_gain.i, align 4
  %conv11.i = trunc i32 %88 to i8
  %max_antenna_gain12.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i197, i32 0, i32 1, i32 4
  %89 = ptrtoint ptr %max_antenna_gain12.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv11.i, ptr %max_antenna_gain12.i, align 1
  %beacon_found.i = getelementptr inbounds %struct.ieee80211_channel, ptr %55, i32 0, i32 8
  %90 = ptrtoint ptr %beacon_found.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %beacon_found.i, align 4, !range !241
  %beacon_found14.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i197, i32 0, i32 1, i32 9
  %92 = ptrtoint ptr %beacon_found14.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %beacon_found14.i, align 1
  %dfs_state.i = getelementptr inbounds %struct.ieee80211_channel, ptr %55, i32 0, i32 12
  %93 = ptrtoint ptr %dfs_state.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dfs_state.i, align 4
  %call15.i = tail call i32 @qlink_utils_dfs_state_cfg2q(i32 noundef %94) #8
  %conv16.i = trunc i32 %call15.i to i8
  %dfs_state17.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i197, i32 0, i32 1, i32 8
  %95 = ptrtoint ptr %dfs_state17.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv16.i, ptr %dfs_state17.i, align 1
  %96 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags29, align 4
  %call18.i = tail call i32 @qlink_utils_chflags_cfg2q(i32 noundef %97) #8
  %98 = tail call i32 @llvm.bswap.i32(i32 %call18.i) #8
  %flags19.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i197, i32 0, i32 1, i32 2
  %99 = ptrtoint ptr %flags19.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %98, ptr %flags19.i, align 1
  %inc43 = add i32 %n_channels.0211, 1
  br label %for.inc44

for.inc44:                                        ; preds = %do.end, %for.body27.for.inc44_crit_edge
  %n_channels.1 = phi i32 [ %n_channels.0211, %for.body27.for.inc44_crit_edge ], [ %inc43, %do.end ]
  %inc45 = add nuw i32 %count.1212, 1
  %100 = ptrtoint ptr %n_channels24 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %n_channels24, align 8
  %cmp25 = icmp ult i32 %inc45, %101
  br i1 %cmp25, label %for.inc44.for.body27_crit_edge, label %for.inc44.for.end46_crit_edge

for.inc44.for.end46_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end46

for.inc44.for.body27_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body27

for.end46:                                        ; preds = %for.inc44.for.end46_crit_edge, %if.end22.for.end46_crit_edge
  %n_channels.0.lcssa = phi i32 [ 0, %if.end22.for.end46_crit_edge ], [ %n_channels.1, %for.inc44.for.end46_crit_edge ]
  %flags47 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 8
  %102 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags47, align 4
  %and48 = lshr i32 %103, 1
  %and48.lobit = and i32 %and48, 1
  %104 = zext i32 %and48.lobit to i64
  %duration_mandatory = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 7
  %105 = ptrtoint ptr %duration_mandatory to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %duration_mandatory, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool52.not = icmp eq i8 %106, 0
  %conv56 = trunc i32 %n_channels.0.lcssa to i16
  %107 = tail call i16 @llvm.bswap.i16(i16 %conv56)
  %n_channels57 = getelementptr inbounds %struct.qlink_cmd_scan, ptr %18, i32 0, i32 3
  %108 = ptrtoint ptr %n_channels57 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 %107, ptr %n_channels57, align 1
  %109 = tail call i16 @llvm.bswap.i16(i16 %dwell_active.0)
  %active_dwell = getelementptr inbounds %struct.qlink_cmd_scan, ptr %18, i32 0, i32 4
  %110 = ptrtoint ptr %active_dwell to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 %109, ptr %active_dwell, align 1
  %111 = tail call i16 @llvm.bswap.i16(i16 %dwell_passive.0)
  %passive_dwell = getelementptr inbounds %struct.qlink_cmd_scan, ptr %18, i32 0, i32 5
  %112 = ptrtoint ptr %passive_dwell to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 %111, ptr %passive_dwell, align 1
  %sample_duration = getelementptr inbounds %struct.qlink_cmd_scan, ptr %18, i32 0, i32 6
  %113 = ptrtoint ptr %sample_duration to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 0, ptr %sample_duration, align 1
  %114 = shl nuw nsw i64 %104, 56
  %115 = or i64 %114, 144115188075855872
  %116 = select i1 %tobool52.not, i64 %114, i64 %115
  %flags58 = getelementptr inbounds %struct.qlink_cmd_scan, ptr %18, i32 0, i32 1
  %117 = ptrtoint ptr %flags58 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 8)
  store i64 %116, ptr %flags58, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_cmd_send_scan.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_cmd_send_scan, %if.then71)) #8
          to label %do.end81 [label %if.then71], !srcloc !242

if.then71:                                        ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %mac, align 4
  %conv73 = zext i8 %119 to i32
  %120 = ptrtoint ptr %duration_mandatory to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %duration_mandatory, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool75.not = icmp eq i8 %121, 0
  %cond = select i1 %tobool75.not, ptr @.str.20, ptr @.str.19
  %conv77 = zext i16 %dwell_active.0 to i32
  %conv78 = zext i16 %dwell_passive.0 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_cmd_send_scan.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14, i32 noundef %conv73, ptr noundef nonnull %cond, i32 noundef %conv77, i32 noundef %conv78, i32 noundef 0) #8
  br label %do.end81

do.end81:                                         ; preds = %if.then71, %for.end46
  %122 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags47, align 4
  %and83 = and i32 %123, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.end81.if.end110_crit_edge, label %do.body86

do.end81.if.end110_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

do.body86:                                        ; preds = %do.end81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_cmd_send_scan.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_cmd_send_scan, %if.then98)) #8
          to label %do.end105 [label %if.then98], !srcloc !242

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %mac, align 4
  %conv100 = zext i8 %125 to i32
  %mac_addr = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11
  %mac_addr_mask = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_cmd_send_scan.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.14, i32 noundef %conv100, ptr noundef %mac_addr, ptr noundef %mac_addr_mask) #8
  br label %do.end105

do.end105:                                        ; preds = %if.then98, %do.body86
  %mac_addr106 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11
  %mac_addr_mask108 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12
  %call.i201 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %126 = ptrtoint ptr %call.i201 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 2052, ptr %call.i201, align 1
  %len.i202 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i201, i32 0, i32 1
  %127 = ptrtoint ptr %len.i202 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 2)
  store i16 3072, ptr %len.i202, align 1
  %val.i203 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i201, i32 0, i32 2
  %128 = call ptr @memcpy(ptr %val.i203, ptr %mac_addr106, i32 6)
  %mac_addr_mask3.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i201, i32 2, i32 1
  %129 = call ptr @memcpy(ptr %mac_addr_mask3.i, ptr %mac_addr_mask108, i32 6)
  br label %if.end110

if.end110:                                        ; preds = %do.end105, %do.end81.if.end110_crit_edge
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 3
  %130 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %131, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %132 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bus, align 4
  %call.i204 = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %133, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %134 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bus, align 4
  %bus_lock.i187 = getelementptr inbounds %struct.qtnf_bus, ptr %135, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i187) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i204, %if.end110 ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_connect(ptr nocapture noundef readonly %vif, ptr noundef readonly %sme) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 96) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 168) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 168)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 24576, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %bssid = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 1
  %bssid1 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 1
  %19 = ptrtoint ptr %bssid1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bssid1, align 4
  %21 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bssid, align 4
  %add.ptr.i = getelementptr %struct.qtnf_vif, ptr %vif, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qlink_cmd_connect, ptr %18, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr1.i, align 2
  %bssid_hint = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 3
  %25 = ptrtoint ptr %bssid_hint to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bssid_hint, align 4
  %tobool3.not = icmp eq ptr %26, null
  %bssid_hint8 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 2
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %bssid_hint8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %bssid_hint8, align 4
  %add.ptr.i195 = getelementptr i8, ptr %26, i32 4
  %30 = ptrtoint ptr %add.ptr.i195 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i195, align 2
  %add.ptr1.i196 = getelementptr %struct.qlink_cmd_connect, ptr %18, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %add.ptr1.i196 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %add.ptr1.i196, align 2
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %33 = call ptr @memset(ptr %bssid_hint8, i32 0, i32 6)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  %prev_bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 23
  %34 = ptrtoint ptr %prev_bssid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev_bssid, align 4
  %tobool11.not = icmp eq ptr %35, null
  %prev_bssid17 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 3
  br i1 %tobool11.not, label %if.else16, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = ptrtoint ptr %prev_bssid17 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %prev_bssid17, align 4
  %add.ptr.i197 = getelementptr i8, ptr %35, i32 4
  %39 = ptrtoint ptr %add.ptr.i197 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i197, align 2
  %add.ptr1.i198 = getelementptr %struct.qlink_cmd_connect, ptr %18, i32 0, i32 3, i32 4
  %41 = ptrtoint ptr %add.ptr1.i198 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %add.ptr1.i198, align 2
  br label %if.end19

if.else16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %42 = call ptr @memset(ptr %prev_bssid17, i32 0, i32 6)
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then12
  %bg_scan_period = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 16
  %43 = ptrtoint ptr %bg_scan_period to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bg_scan_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %44)
  %45 = icmp ult i32 %44, 32768
  %conv = trunc i32 %44 to i16
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %.sink = select i1 %45, i16 %46, i16 -1
  %47 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %.sink, ptr %47, align 1
  %flags = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 15
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %51 = shl i32 %50, 24
  %52 = and i32 %51, 117440512
  %flags43 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 5
  %53 = ptrtoint ptr %flags43 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %flags43, align 1
  %ht_capa = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 6
  %ht_capa44 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 17
  %54 = call ptr @memcpy(ptr %ht_capa, ptr %ht_capa44, i32 26)
  %ht_capa_mask = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 7
  %ht_capa_mask45 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 18
  %55 = call ptr @memcpy(ptr %ht_capa_mask, ptr %ht_capa_mask45, i32 26)
  %vht_capa = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 8
  %vht_capa46 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 19
  %56 = call ptr @memcpy(ptr %vht_capa, ptr %vht_capa46, i32 12)
  %vht_capa_mask = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 9
  %vht_capa_mask47 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 20
  %57 = call ptr @memcpy(ptr %vht_capa_mask, ptr %vht_capa_mask47, i32 12)
  %pbss = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 21
  %58 = ptrtoint ptr %pbss to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pbss, align 4, !range !241
  %pbss50 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 12
  %60 = ptrtoint ptr %pbss50 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %pbss50, align 1
  %aen51 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10
  %auth_type = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 6
  %61 = ptrtoint ptr %auth_type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %auth_type, align 4
  %conv52 = trunc i32 %62 to i8
  %auth_type53 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 7
  %63 = ptrtoint ptr %auth_type53 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv52, ptr %auth_type53, align 1
  %privacy = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 9
  %64 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %privacy, align 4, !range !241
  %privacy57 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 8
  %66 = ptrtoint ptr %privacy57 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %privacy57, align 1
  %mfp = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 10
  %67 = ptrtoint ptr %mfp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mfp, align 4
  %conv58 = trunc i32 %68 to i8
  %mfp59 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 11
  %69 = ptrtoint ptr %mfp59 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv58, ptr %mfp59, align 1
  %crypto = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11
  %70 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %crypto, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %aen51 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %72, ptr %aen51, align 1
  %cipher_group = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 1
  %74 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cipher_group, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %cipher_group62 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 1
  %77 = ptrtoint ptr %cipher_group62 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %cipher_group62, align 1
  %n_ciphers_pairwise = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 2
  %78 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %n_ciphers_pairwise, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %n_ciphers_pairwise64 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 2
  %81 = ptrtoint ptr %n_ciphers_pairwise64 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %n_ciphers_pairwise64, align 1
  %arrayidx = getelementptr %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 3, i32 0
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %arrayidx69 = getelementptr %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 3, i32 0
  %85 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %84, ptr %arrayidx69, align 1
  %arrayidx.1 = getelementptr %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 3, i32 1
  %86 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.1, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %arrayidx69.1 = getelementptr %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 3, i32 1
  %89 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %arrayidx69.1, align 1
  %arrayidx.2 = getelementptr %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 3, i32 2
  %90 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.2, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  %arrayidx69.2 = getelementptr %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 3, i32 2
  %93 = ptrtoint ptr %arrayidx69.2 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %92, ptr %arrayidx69.2, align 1
  %arrayidx.3 = getelementptr %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 3, i32 3
  %94 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.3, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %arrayidx69.3 = getelementptr %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 3, i32 3
  %97 = ptrtoint ptr %arrayidx69.3 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %96, ptr %arrayidx69.3, align 1
  %arrayidx.4 = getelementptr %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 3, i32 4
  %98 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.4, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  %arrayidx69.4 = getelementptr %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 3, i32 4
  %101 = ptrtoint ptr %arrayidx69.4 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %100, ptr %arrayidx69.4, align 1
  %n_akm_suites = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 4
  %102 = ptrtoint ptr %n_akm_suites to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %n_akm_suites, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %n_akm_suites71 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 4
  %105 = ptrtoint ptr %n_akm_suites71 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %n_akm_suites71, align 1
  %arrayidx77 = getelementptr %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 5, i32 0
  %106 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx77, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  %arrayidx79 = getelementptr %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 5, i32 0
  %109 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %arrayidx79, align 1
  %arrayidx77.1 = getelementptr %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 5, i32 1
  %110 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx77.1, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  %arrayidx79.1 = getelementptr %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 5, i32 1
  %113 = ptrtoint ptr %arrayidx79.1 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %arrayidx79.1, align 1
  %control_port = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 6
  %114 = ptrtoint ptr %control_port to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %control_port, align 4, !range !241
  %control_port86 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 9
  %116 = ptrtoint ptr %control_port86 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %control_port86, align 1
  %control_port_no_encrypt = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 8
  %117 = ptrtoint ptr %control_port_no_encrypt to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %control_port_no_encrypt, align 4, !range !241
  %control_port_no_encrypt90 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 10
  %119 = ptrtoint ptr %control_port_no_encrypt90 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %control_port_no_encrypt90, align 1
  %control_port_ethertype = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 7
  %120 = ptrtoint ptr %control_port_ethertype to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %control_port_ethertype, align 2
  %122 = tail call i16 @llvm.bswap.i16(i16 %121)
  %control_port_ethertype92 = getelementptr inbounds %struct.qlink_cmd_connect, ptr %18, i32 0, i32 10, i32 6
  %123 = ptrtoint ptr %control_port_ethertype92 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 %122, ptr %control_port_ethertype92, align 1
  %ssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %124 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ssid, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 5
  %126 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ssid_len, align 4
  %sub.i = add i32 %127, -1
  %or.i = or i32 %sub.i, 3
  %add1.i = add i32 %or.i, 5
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i) #8
  %128 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 2)
  store i16 0, ptr %call.i, align 1
  %conv.i199 = trunc i32 %127 to i16
  %129 = tail call i16 @llvm.bswap.i16(i16 %conv.i199) #8
  %len.i200 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i, i32 0, i32 1
  %130 = ptrtoint ptr %len.i200 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 %129, ptr %len.i200, align 1
  %val.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i, i32 0, i32 2
  %131 = call ptr @memcpy(ptr %val.i, ptr %125, i32 %127)
  %ie_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 8
  %132 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp93.not = icmp eq i32 %133, 0
  br i1 %cmp93.not, label %if.end19.if.end97_crit_edge, label %if.then95

if.end19.if.end97_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then95:                                        ; preds = %if.end19
  %ie = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 7
  %134 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ie, align 4
  %sub.i201 = add i32 %133, -1
  %or.i202 = or i32 %sub.i201, 3
  %add1.i203 = add i32 %or.i202, 9
  %call.i204 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i203) #8
  %136 = ptrtoint ptr %call.i204 to i32
  call void @__asan_storeN_noabort(i32 %136, i32 2)
  store i16 1283, ptr %call.i204, align 1
  %137 = trunc i32 %133 to i16
  %conv.i205 = add i16 %137, 4
  %138 = tail call i16 @llvm.bswap.i16(i16 %conv.i205) #8
  %len5.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i204, i32 0, i32 1
  %139 = ptrtoint ptr %len5.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 %138, ptr %len5.i, align 1
  %type6.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i204, i32 0, i32 1
  %140 = ptrtoint ptr %type6.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %type6.i, align 1
  %flags.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i204, i32 0, i32 2
  %141 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %flags.i, align 1
  %tobool7.not.i = icmp eq ptr %135, null
  br i1 %tobool7.not.i, label %if.then95.if.end97_crit_edge, label %if.then.i

if.then95.if.end97_crit_edge:                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then.i:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  %ie_data.i = getelementptr inbounds %struct.qlink_tlv_ie_set, ptr %call.i204, i32 0, i32 4
  %142 = call ptr @memcpy(ptr %ie_data.i, ptr %135, i32 %133)
  br label %if.end97

if.end97:                                         ; preds = %if.then.i, %if.then95.if.end97_crit_edge, %if.end19.if.end97_crit_edge
  %143 = ptrtoint ptr %sme to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sme, align 4
  %tobool98.not = icmp eq ptr %144, null
  br i1 %tobool98.not, label %if.end97.if.end101_crit_edge, label %if.then99

if.end97.if.end101_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then99:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i208 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #8
  %145 = getelementptr inbounds i8, ptr %call.i.i208, i32 4
  %146 = call ptr @memset(ptr %145, i32 0, i32 20)
  %147 = ptrtoint ptr %call.i.i208 to i32
  call void @__asan_storeN_noabort(i32 %147, i32 2)
  store i16 3842, ptr %call.i.i208, align 1
  %len.i209 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i.i208, i32 0, i32 1
  %148 = ptrtoint ptr %len.i209 to i32
  call void @__asan_storeN_noabort(i32 %148, i32 2)
  store i16 5120, ptr %len.i209, align 1
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %144, i32 0, i32 1
  %149 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %center_freq.i, align 4
  %conv.i210 = trunc i32 %150 to i16
  %151 = tail call i16 @llvm.bswap.i16(i16 %conv.i210) #8
  %center_freq2.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i208, i32 0, i32 1, i32 1
  %152 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 2)
  store i16 %151, ptr %center_freq2.i, align 1
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %144, i32 0, i32 3
  %153 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %hw_value.i, align 2
  %155 = tail call i16 @llvm.bswap.i16(i16 %154) #8
  %156 = ptrtoint ptr %145 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 2)
  store i16 %155, ptr %145, align 1
  %157 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %144, align 4
  %call4.i = tail call i32 @qlink_utils_band_cfg2q(i32 noundef %158) #8
  %conv5.i = trunc i32 %call4.i to i8
  %band6.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i208, i32 0, i32 1, i32 3
  %159 = ptrtoint ptr %band6.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv5.i, ptr %band6.i, align 1
  %max_power.i = getelementptr inbounds %struct.ieee80211_channel, ptr %144, i32 0, i32 6
  %160 = ptrtoint ptr %max_power.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %max_power.i, align 4
  %conv7.i = trunc i32 %161 to i8
  %max_power8.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i208, i32 0, i32 1, i32 5
  %162 = ptrtoint ptr %max_power8.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv7.i, ptr %max_power8.i, align 1
  %max_reg_power.i = getelementptr inbounds %struct.ieee80211_channel, ptr %144, i32 0, i32 7
  %163 = ptrtoint ptr %max_reg_power.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %max_reg_power.i, align 4
  %conv9.i = trunc i32 %164 to i8
  %max_reg_power10.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i208, i32 0, i32 1, i32 6
  %165 = ptrtoint ptr %max_reg_power10.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv9.i, ptr %max_reg_power10.i, align 1
  %max_antenna_gain.i = getelementptr inbounds %struct.ieee80211_channel, ptr %144, i32 0, i32 5
  %166 = ptrtoint ptr %max_antenna_gain.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %max_antenna_gain.i, align 4
  %conv11.i = trunc i32 %167 to i8
  %max_antenna_gain12.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i208, i32 0, i32 1, i32 4
  %168 = ptrtoint ptr %max_antenna_gain12.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv11.i, ptr %max_antenna_gain12.i, align 1
  %beacon_found.i = getelementptr inbounds %struct.ieee80211_channel, ptr %144, i32 0, i32 8
  %169 = ptrtoint ptr %beacon_found.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %beacon_found.i, align 4, !range !241
  %beacon_found14.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i208, i32 0, i32 1, i32 9
  %171 = ptrtoint ptr %beacon_found14.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %beacon_found14.i, align 1
  %dfs_state.i = getelementptr inbounds %struct.ieee80211_channel, ptr %144, i32 0, i32 12
  %172 = ptrtoint ptr %dfs_state.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %dfs_state.i, align 4
  %call15.i = tail call i32 @qlink_utils_dfs_state_cfg2q(i32 noundef %173) #8
  %conv16.i = trunc i32 %call15.i to i8
  %dfs_state17.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i208, i32 0, i32 1, i32 8
  %174 = ptrtoint ptr %dfs_state17.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv16.i, ptr %dfs_state17.i, align 1
  %flags.i211 = getelementptr inbounds %struct.ieee80211_channel, ptr %144, i32 0, i32 4
  %175 = ptrtoint ptr %flags.i211 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flags.i211, align 4
  %call18.i = tail call i32 @qlink_utils_chflags_cfg2q(i32 noundef %176) #8
  %177 = tail call i32 @llvm.bswap.i32(i32 %call18.i) #8
  %flags19.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i208, i32 0, i32 1, i32 2
  %178 = ptrtoint ptr %flags19.i to i32
  call void @__asan_storeN_noabort(i32 %178, i32 4)
  store i32 %177, ptr %flags19.i, align 1
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end97.if.end101_crit_edge
  %179 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %180, i32 0, i32 3
  %181 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %182, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %183 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %mac, align 4
  %bus104 = getelementptr inbounds %struct.qtnf_wmac, ptr %184, i32 0, i32 3
  %185 = ptrtoint ptr %bus104 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bus104, align 4
  %call.i212 = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %186, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %187 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mac, align 4
  %bus107 = getelementptr inbounds %struct.qtnf_wmac, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %bus107 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %bus107, align 4
  %bus_lock.i194 = getelementptr inbounds %struct.qtnf_bus, ptr %190, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i194) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i212, %if.end101 ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_external_auth(ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %auth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 102) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 20)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 26112, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %peer = getelementptr inbounds %struct.qlink_cmd_external_auth, ptr %18, i32 0, i32 1
  %bssid = getelementptr inbounds %struct.cfg80211_external_auth_params, ptr %auth, i32 0, i32 1
  %19 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bssid, align 4
  %21 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %peer, align 4
  %add.ptr.i = getelementptr %struct.cfg80211_external_auth_params, ptr %auth, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qlink_cmd_external_auth, ptr %18, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr1.i, align 2
  %status = getelementptr inbounds %struct.cfg80211_external_auth_params, ptr %auth, i32 0, i32 4
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %status, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %status2 = getelementptr inbounds %struct.qlink_cmd_external_auth, ptr %18, i32 0, i32 2
  %28 = ptrtoint ptr %status2 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %status2, align 1
  %29 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %32, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %33 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mac, align 4
  %bus5 = getelementptr inbounds %struct.qtnf_wmac, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %bus5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus5, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %36, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %37 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mac, align 4
  %bus8 = getelementptr inbounds %struct.qtnf_wmac, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %bus8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus8, align 4
  %bus_lock.i19 = getelementptr inbounds %struct.qtnf_bus, ptr %40, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i19) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_disconnect(ptr nocapture noundef readonly %vif, i16 noundef zeroext %reason_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 97) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 16)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 24832, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %20, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %reason_code)
  %reason = getelementptr inbounds %struct.qlink_cmd_disconnect, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %reason to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %reason, align 1
  %25 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac, align 4
  %bus3 = getelementptr inbounds %struct.qtnf_wmac, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %bus3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus3, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %28, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %29 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mac, align 4
  %bus6 = getelementptr inbounds %struct.qtnf_wmac, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %bus6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus6, align 4
  %bus_lock.i15 = getelementptr inbounds %struct.qtnf_bus, ptr %32, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_updown_intf(ptr nocapture noundef readonly %vif, i1 noundef zeroext %up) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 24) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 16)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 6144, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %conv = zext i1 %up to i8
  %if_up = getelementptr inbounds %struct.qlink_cmd_updown, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %if_up to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %if_up, align 1
  %20 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %23, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %24 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mac, align 4
  %bus5 = getelementptr inbounds %struct.qtnf_wmac, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %bus5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus5, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %27, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %28 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mac, align 4
  %bus8 = getelementptr inbounds %struct.qtnf_wmac, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %bus8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus8, align 4
  %bus_lock.i17 = getelementptr inbounds %struct.qtnf_bus, ptr %31, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_reg_notify(ptr noundef readonly %mac, ptr nocapture noundef readonly %req, i1 noundef zeroext %slave_radar, i1 noundef zeroext %dfs_offload) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %slave_radar to i8
  %frombool1 = zext i1 %dfs_offload to i8
  %tobool.not.i = icmp eq ptr %mac, null
  br i1 %tobool.not.i, label %do.body4.i, label %priv_to_wiphy.exit, !prof !240

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #8, !srcloc !244
  unreachable

priv_to_wiphy.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %mac, i32 -1408
  %bus2 = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 3
  %0 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus2, align 4
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i97 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i97, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %priv_to_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef 255, i32 noundef 25) #11
  br label %cleanup55

if.end:                                           ; preds = %priv_to_wiphy.exit
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %4 = call ptr @memset(ptr %call.i25.i, i32 0, i32 20)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %8 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %len9.i, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 256, ptr %6, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 6400, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %6, i32 0, i32 4
  %14 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %vifid12.i, align 1
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %alpha2 = getelementptr inbounds %struct.regulatory_request, ptr %req, i32 0, i32 4
  %17 = ptrtoint ptr %alpha2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %alpha2, align 4
  %alpha24 = getelementptr inbounds %struct.qlink_cmd_reg_notify, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %alpha24 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %alpha24, align 1
  %arrayidx7 = getelementptr %struct.regulatory_request, ptr %req, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr %struct.qlink_cmd_reg_notify, ptr %16, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx9, align 1
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %req, i32 0, i32 2
  %23 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.idx.cast = trunc i32 %24 to i8
  %initiator16 = getelementptr inbounds %struct.qlink_cmd_reg_notify, ptr %16, i32 0, i32 2
  %26 = ptrtoint ptr %initiator16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %switch.idx.cast, ptr %initiator16, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %user_reg_hint_type = getelementptr inbounds %struct.regulatory_request, ptr %req, i32 0, i32 3
  %27 = ptrtoint ptr %user_reg_hint_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %user_reg_hint_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %29 = icmp ult i32 %28, 3
  br i1 %29, label %switch.lookup106, label %sw.epilog.sw.epilog23_crit_edge

sw.epilog.sw.epilog23_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog23

switch.lookup106:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %switch.idx.cast107 = trunc i32 %28 to i8
  %user_reg_hint_type22 = getelementptr inbounds %struct.qlink_cmd_reg_notify, ptr %16, i32 0, i32 3
  %30 = ptrtoint ptr %user_reg_hint_type22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %switch.idx.cast107, ptr %user_reg_hint_type22, align 1
  br label %sw.epilog23

sw.epilog23:                                      ; preds = %switch.lookup106, %sw.epilog.sw.epilog23_crit_edge
  %dfs_region = getelementptr inbounds %struct.regulatory_request, ptr %req, i32 0, i32 5
  %31 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dfs_region, align 4
  %switch.tableidx = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %33 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.cast109 = trunc i32 %switch.tableidx to i8
  %switch.offset = add i8 %switch.idx.cast109, 1
  %.sink105 = select i1 %33, i8 %switch.offset, i8 0
  %dfs_region30 = getelementptr inbounds %struct.qlink_cmd_reg_notify, ptr %16, i32 0, i32 5
  %34 = ptrtoint ptr %dfs_region30 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink105, ptr %dfs_region30, align 1
  %slave_radar33 = getelementptr inbounds %struct.qlink_cmd_reg_notify, ptr %16, i32 0, i32 6
  %35 = ptrtoint ptr %slave_radar33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool, ptr %slave_radar33, align 1
  %dfs_offload36 = getelementptr inbounds %struct.qlink_cmd_reg_notify, ptr %16, i32 0, i32 7
  %36 = ptrtoint ptr %dfs_offload36 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool1, ptr %dfs_offload36, align 1
  %num_channels = getelementptr inbounds %struct.qlink_cmd_reg_notify, ptr %16, i32 0, i32 4
  %37 = ptrtoint ptr %num_channels to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %num_channels, align 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %sw.epilog23
  %band.0103 = phi i32 [ 0, %sw.epilog23 ], [ %inc52, %cleanup.for.body_crit_edge ]
  %arrayidx38 = getelementptr %struct.wiphy, ptr %add.ptr.i, i32 0, i32 53, i32 %band.0103
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %39, null
  br i1 %tobool39.not, label %for.body.cleanup_crit_edge, label %if.end41

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %for.body
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_channels, align 4
  %42 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_channels, align 1
  %44 = trunc i32 %41 to i8
  %conv44 = add i8 %43, %44
  store i8 %conv44, ptr %num_channels, align 1
  %45 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp47101.not = icmp eq i32 %45, 0
  br i1 %cmp47101.not, label %if.end41.cleanup_crit_edge, label %if.end41.for.body49_crit_edge

if.end41.for.body49_crit_edge:                    ; preds = %if.end41
  br label %for.body49

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %if.end41.for.body49_crit_edge
  %i.0102 = phi i32 [ %inc, %for.body49.for.body49_crit_edge ], [ 0, %if.end41.for.body49_crit_edge ]
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %39, align 4
  %arrayidx50 = getelementptr %struct.ieee80211_channel, ptr %47, i32 %i.0102
  %call.i.i98 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #8
  %48 = getelementptr inbounds i8, ptr %call.i.i98, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 20)
  %50 = ptrtoint ptr %call.i.i98 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 3842, ptr %call.i.i98, align 1
  %len.i99 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i.i98, i32 0, i32 1
  %51 = ptrtoint ptr %len.i99 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 5120, ptr %len.i99, align 1
  %center_freq.i = getelementptr %struct.ieee80211_channel, ptr %47, i32 %i.0102, i32 1
  %52 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %center_freq.i, align 4
  %conv.i100 = trunc i32 %53 to i16
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv.i100) #8
  %center_freq2.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i98, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %center_freq2.i, align 1
  %hw_value.i = getelementptr %struct.ieee80211_channel, ptr %47, i32 %i.0102, i32 3
  %56 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hw_value.i, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #8
  %59 = ptrtoint ptr %48 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %58, ptr %48, align 1
  %60 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx50, align 4
  %call4.i = tail call i32 @qlink_utils_band_cfg2q(i32 noundef %61) #8
  %conv5.i = trunc i32 %call4.i to i8
  %band6.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i98, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %band6.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv5.i, ptr %band6.i, align 1
  %max_power.i = getelementptr %struct.ieee80211_channel, ptr %47, i32 %i.0102, i32 6
  %63 = ptrtoint ptr %max_power.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_power.i, align 4
  %conv7.i = trunc i32 %64 to i8
  %max_power8.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i98, i32 0, i32 1, i32 5
  %65 = ptrtoint ptr %max_power8.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv7.i, ptr %max_power8.i, align 1
  %max_reg_power.i = getelementptr %struct.ieee80211_channel, ptr %47, i32 %i.0102, i32 7
  %66 = ptrtoint ptr %max_reg_power.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_reg_power.i, align 4
  %conv9.i = trunc i32 %67 to i8
  %max_reg_power10.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i98, i32 0, i32 1, i32 6
  %68 = ptrtoint ptr %max_reg_power10.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv9.i, ptr %max_reg_power10.i, align 1
  %max_antenna_gain.i = getelementptr %struct.ieee80211_channel, ptr %47, i32 %i.0102, i32 5
  %69 = ptrtoint ptr %max_antenna_gain.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_antenna_gain.i, align 4
  %conv11.i = trunc i32 %70 to i8
  %max_antenna_gain12.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i98, i32 0, i32 1, i32 4
  %71 = ptrtoint ptr %max_antenna_gain12.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv11.i, ptr %max_antenna_gain12.i, align 1
  %beacon_found.i = getelementptr %struct.ieee80211_channel, ptr %47, i32 %i.0102, i32 8
  %72 = ptrtoint ptr %beacon_found.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %beacon_found.i, align 4, !range !241
  %beacon_found14.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i98, i32 0, i32 1, i32 9
  %74 = ptrtoint ptr %beacon_found14.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %beacon_found14.i, align 1
  %dfs_state.i = getelementptr %struct.ieee80211_channel, ptr %47, i32 %i.0102, i32 12
  %75 = ptrtoint ptr %dfs_state.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dfs_state.i, align 4
  %call15.i = tail call i32 @qlink_utils_dfs_state_cfg2q(i32 noundef %76) #8
  %conv16.i = trunc i32 %call15.i to i8
  %dfs_state17.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i98, i32 0, i32 1, i32 8
  %77 = ptrtoint ptr %dfs_state17.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv16.i, ptr %dfs_state17.i, align 1
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %47, i32 %i.0102, i32 4
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i, align 4
  %call18.i = tail call i32 @qlink_utils_chflags_cfg2q(i32 noundef %79) #8
  %80 = tail call i32 @llvm.bswap.i32(i32 %call18.i) #8
  %flags19.i = getelementptr inbounds %struct.qlink_tlv_channel, ptr %call.i.i98, i32 0, i32 1, i32 2
  %81 = ptrtoint ptr %flags19.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %flags19.i, align 1
  %inc = add nuw i32 %i.0102, 1
  %82 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %n_channels, align 4
  %cmp47 = icmp ult i32 %inc, %83
  br i1 %cmp47, label %for.body49.for.body49_crit_edge, label %for.body49.cleanup_crit_edge

for.body49.cleanup_crit_edge:                     ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body49

cleanup:                                          ; preds = %for.body49.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc52 = add nuw nsw i32 %band.0103, 1
  %exitcond.not = icmp eq i32 %inc52, 6
  br i1 %exitcond.not, label %for.end53, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end53:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %1, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %bus_lock.i) #8
  br label %cleanup55

cleanup55:                                        ; preds = %for.end53, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %for.end53 ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_get_chan_stats(ptr nocapture noundef readonly %mac, i32 noundef %chan_freq, ptr nocapture noundef %survey) local_unnamed_addr #0 align 64 {
entry:
  %resp_skb = alloca ptr, align 4
  %var_data_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_skb) #8
  %0 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %resp_skb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var_data_len) #8
  %1 = ptrtoint ptr %var_data_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %var_data_len, align 4
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef 255, i32 noundef 84) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %4 = call ptr @memset(ptr %call.i25.i, i32 0, i32 16)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %8 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %len9.i, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 256, ptr %6, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 21504, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %6, i32 0, i32 4
  %14 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %vifid12.i, align 1
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %chan_freq)
  %channel_freq = getelementptr inbounds %struct.qlink_cmd_get_chan_stats, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %channel_freq to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %channel_freq, align 1
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 3
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %20, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %call2 = call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %22, ptr noundef nonnull %call.i.i, ptr noundef nonnull %resp_skb, i32 noundef 16, ptr noundef nonnull %var_data_len)
  %23 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus, align 4
  %bus_lock.i31 = getelementptr inbounds %struct.qtnf_bus, ptr %24, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %bus_lock.i31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %if.end
  %25 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resp_skb, align 4
  %data7 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data7, align 4
  %chan_freq8 = getelementptr inbounds %struct.qlink_resp_get_chan_stats, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %chan_freq8 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %chan_freq8, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %chan_freq)
  %cmp.not = icmp eq i32 %31, %chan_freq
  br i1 %cmp.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mac, align 4
  %conv = zext i8 %33 to i32
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %conv, i32 noundef %31, i32 noundef %chan_freq) #11
  br label %out

if.end13:                                         ; preds = %if.end6
  %info = getelementptr inbounds %struct.qlink_resp_get_chan_stats, ptr %28, i32 0, i32 2
  %34 = ptrtoint ptr %var_data_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %var_data_len, align 4
  %add.ptr.i = getelementptr i8, ptr %info, i32 %35
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp169.i = icmp sgt i32 %35, 3
  br i1 %cmp169.i, label %if.end13.land.rhs.i_crit_edge, label %if.end13.for.end.i_crit_edge

if.end13.for.end.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end13.land.rhs.i_crit_edge:                    ; preds = %if.end13
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.end13.land.rhs.i_crit_edge
  %sub.ptr.sub176.i = phi i32 [ %sub.ptr.sub.i, %for.inc.i.land.rhs.i_crit_edge ], [ %35, %if.end13.land.rhs.i_crit_edge ]
  %stats.0175.i = phi ptr [ %stats.1.i, %for.inc.i.land.rhs.i_crit_edge ], [ null, %if.end13.land.rhs.i_crit_edge ]
  %stats_len.0174.i = phi i32 [ %stats_len.1.i, %for.inc.i.land.rhs.i_crit_edge ], [ 0, %if.end13.land.rhs.i_crit_edge ]
  %map_len.0173.i = phi i32 [ %map_len.1.i, %for.inc.i.land.rhs.i_crit_edge ], [ 0, %if.end13.land.rhs.i_crit_edge ]
  %map.0172.i = phi ptr [ %map.1.i, %for.inc.i.land.rhs.i_crit_edge ], [ null, %if.end13.land.rhs.i_crit_edge ]
  %tlv.0170.i = phi ptr [ %add.ptr20.i, %for.inc.i.land.rhs.i_crit_edge ], [ %info, %if.end13.land.rhs.i_crit_edge ]
  %len.i32 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0170.i, i32 0, i32 1
  %36 = ptrtoint ptr %len.i32 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %len.i32, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37) #8
  %conv.i33 = zext i16 %38 to i32
  %add.i = add nuw nsw i32 %conv.i33, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub176.i, i32 %add.i)
  %cmp5.not.i = icmp ult i32 %sub.ptr.sub176.i, %add.i
  br i1 %cmp5.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  %39 = ptrtoint ptr %tlv.0170.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %tlv.0170.i, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40) #8
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.135)
  switch i16 %41, label %do.end.i35 [
    i16 529, label %sw.bb.i
    i16 534, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %val.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0170.i, i32 0, i32 2
  br label %for.inc.i

sw.bb10.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %val11.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0170.i, i32 0, i32 2
  br label %for.inc.i

do.end.i35:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i34 = zext i16 %41 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef %conv8.i34) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i35, %sw.bb10.i, %sw.bb.i
  %map.1.i = phi ptr [ %map.0172.i, %do.end.i35 ], [ %map.0172.i, %sw.bb10.i ], [ %val.i, %sw.bb.i ]
  %map_len.1.i = phi i32 [ %map_len.0173.i, %do.end.i35 ], [ %map_len.0173.i, %sw.bb10.i ], [ %conv.i33, %sw.bb.i ]
  %stats_len.1.i = phi i32 [ %stats_len.0174.i, %do.end.i35 ], [ %conv.i33, %sw.bb10.i ], [ %stats_len.0174.i, %sw.bb.i ]
  %stats.1.i = phi ptr [ %stats.0175.i, %do.end.i35 ], [ %val11.i, %sw.bb10.i ], [ %stats.0175.i, %sw.bb.i ]
  %val15.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %tlv.0170.i, i32 0, i32 2
  %43 = ptrtoint ptr %len.i32 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %len.i32, align 1
  %45 = call i16 @llvm.bswap.i16(i16 %44) #8
  %conv18.i = zext i16 %45 to i32
  %sub.i = add nsw i32 %conv18.i, -1
  %or.i = or i32 %sub.i, 3
  %add19.i = add nsw i32 %or.i, 1
  %add.ptr20.i = getelementptr i8, ptr %val15.i, i32 %add19.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr20.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i = icmp sgt i32 %sub.ptr.sub.i, 3
  br i1 %cmp.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge, %if.end13.for.end.i_crit_edge
  %tlv.0.lcssa.i = phi ptr [ %info, %if.end13.for.end.i_crit_edge ], [ %tlv.0170.i, %land.rhs.i.for.end.i_crit_edge ], [ %add.ptr20.i, %for.inc.i.for.end.i_crit_edge ]
  %map.0.lcssa.i = phi ptr [ null, %if.end13.for.end.i_crit_edge ], [ %map.0172.i, %land.rhs.i.for.end.i_crit_edge ], [ %map.1.i, %for.inc.i.for.end.i_crit_edge ]
  %map_len.0.lcssa.i = phi i32 [ 0, %if.end13.for.end.i_crit_edge ], [ %map_len.0173.i, %land.rhs.i.for.end.i_crit_edge ], [ %map_len.1.i, %for.inc.i.for.end.i_crit_edge ]
  %stats_len.0.lcssa.i = phi i32 [ 0, %if.end13.for.end.i_crit_edge ], [ %stats_len.0174.i, %land.rhs.i.for.end.i_crit_edge ], [ %stats_len.1.i, %for.inc.i.for.end.i_crit_edge ]
  %stats.0.lcssa.i = phi ptr [ null, %if.end13.for.end.i_crit_edge ], [ %stats.0175.i, %land.rhs.i.for.end.i_crit_edge ], [ %stats.1.i, %for.inc.i.for.end.i_crit_edge ]
  %sub21.i = add i32 %35, -1
  %or22.i = or i32 %sub21.i, 3
  %add23.i = add i32 %or22.i, 1
  %add.ptr24.i = getelementptr i8, ptr %info, i32 %add23.i
  %cmp25.i = icmp eq ptr %tlv.0.lcssa.i, %add.ptr24.i
  br i1 %cmp25.i, label %if.end.i37, label %do.end29.i

do.end29.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.125) #11
  br label %out

if.end.i37:                                       ; preds = %for.end.i
  %tobool.not.i36 = icmp eq ptr %map.0.lcssa.i, null
  %tobool32.not.i = icmp eq ptr %stats.0.lcssa.i, null
  %or.cond.i = select i1 %tobool.not.i36, i1 true, i1 %tobool32.not.i
  br i1 %or.cond.i, label %if.end.i37.out_crit_edge, label %if.end34.i

if.end.i37.out_crit_edge:                         ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end34.i:                                       ; preds = %if.end.i37
  %call35.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 0, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %stats_len.0.lcssa.i)
  %cmp37.i = icmp ugt i32 %stats_len.0.lcssa.i, 7
  %or.cond160.i = select i1 %call35.i, i1 %cmp37.i, i1 false
  br i1 %or.cond160.i, label %if.then39.i, label %if.end34.i.if.end41.i_crit_edge

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %filled.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %46 = ptrtoint ptr %filled.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %filled.i, align 8
  %or40.i = or i32 %47, 4
  store i32 %or40.i, ptr %filled.i, align 8
  %48 = ptrtoint ptr %stats.0.lcssa.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %stats.0.lcssa.i, align 1
  %50 = call i64 @llvm.bswap.i64(i64 %49) #8
  %time.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 1
  %51 = ptrtoint ptr %time.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %time.i, align 8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %if.end34.i.if.end41.i_crit_edge
  %call42.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 1, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %stats_len.0.lcssa.i)
  %cmp45.i = icmp ugt i32 %stats_len.0.lcssa.i, 15
  %or.cond161.i = select i1 %call42.i, i1 %cmp45.i, i1 false
  br i1 %or.cond161.i, label %if.then47.i, label %if.end41.i.if.end51.i_crit_edge

if.end41.i.if.end51.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then47.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %filled48.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %52 = ptrtoint ptr %filled48.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %filled48.i, align 8
  %or49.i = or i32 %53, 64
  store i32 %or49.i, ptr %filled48.i, align 8
  %time_tx.i = getelementptr inbounds %struct.qlink_chan_stats, ptr %stats.0.lcssa.i, i32 0, i32 1
  %54 = ptrtoint ptr %time_tx.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %time_tx.i, align 1
  %56 = call i64 @llvm.bswap.i64(i64 %55) #8
  %time_tx50.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 5
  %57 = ptrtoint ptr %time_tx50.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %time_tx50.i, align 8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then47.i, %if.end41.i.if.end51.i_crit_edge
  %call52.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 2, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %stats_len.0.lcssa.i)
  %cmp55.i = icmp ugt i32 %stats_len.0.lcssa.i, 23
  %or.cond162.i = select i1 %call52.i, i1 %cmp55.i, i1 false
  br i1 %or.cond162.i, label %if.then57.i, label %if.end51.i.if.end61.i_crit_edge

if.end51.i.if.end61.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.then57.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %filled58.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %58 = ptrtoint ptr %filled58.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %filled58.i, align 8
  %or59.i = or i32 %59, 32
  store i32 %or59.i, ptr %filled58.i, align 8
  %time_rx.i = getelementptr inbounds %struct.qlink_chan_stats, ptr %stats.0.lcssa.i, i32 0, i32 2
  %60 = ptrtoint ptr %time_rx.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %time_rx.i, align 1
  %62 = call i64 @llvm.bswap.i64(i64 %61) #8
  %time_rx60.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 4
  %63 = ptrtoint ptr %time_rx60.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %time_rx60.i, align 8
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then57.i, %if.end51.i.if.end61.i_crit_edge
  %call62.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 3, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %stats_len.0.lcssa.i)
  %cmp65.i = icmp ugt i32 %stats_len.0.lcssa.i, 31
  %or.cond163.i = select i1 %call62.i, i1 %cmp65.i, i1 false
  br i1 %or.cond163.i, label %if.then67.i, label %if.end61.i.if.end70.i_crit_edge

if.end61.i.if.end70.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i

if.then67.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %filled68.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %64 = ptrtoint ptr %filled68.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %filled68.i, align 8
  %or69.i = or i32 %65, 8
  store i32 %or69.i, ptr %filled68.i, align 8
  %cca_busy.i = getelementptr inbounds %struct.qlink_chan_stats, ptr %stats.0.lcssa.i, i32 0, i32 3
  %66 = ptrtoint ptr %cca_busy.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %cca_busy.i, align 1
  %68 = call i64 @llvm.bswap.i64(i64 %67) #8
  %time_busy.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 2
  %69 = ptrtoint ptr %time_busy.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %time_busy.i, align 8
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then67.i, %if.end61.i.if.end70.i_crit_edge
  %call71.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 4, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %stats_len.0.lcssa.i)
  %cmp74.i = icmp ugt i32 %stats_len.0.lcssa.i, 39
  %or.cond164.i = select i1 %call71.i, i1 %cmp74.i, i1 false
  br i1 %or.cond164.i, label %if.then76.i, label %if.end70.i.if.end79.i_crit_edge

if.end70.i.if.end79.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i

if.then76.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  %filled77.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %70 = ptrtoint ptr %filled77.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %filled77.i, align 8
  %or78.i = or i32 %71, 16
  store i32 %or78.i, ptr %filled77.i, align 8
  %cca_busy_ext.i = getelementptr inbounds %struct.qlink_chan_stats, ptr %stats.0.lcssa.i, i32 0, i32 4
  %72 = ptrtoint ptr %cca_busy_ext.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %cca_busy_ext.i, align 1
  %74 = call i64 @llvm.bswap.i64(i64 %73) #8
  %time_ext_busy.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 3
  %75 = ptrtoint ptr %time_ext_busy.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %time_ext_busy.i, align 8
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then76.i, %if.end70.i.if.end79.i_crit_edge
  %call80.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 5, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %stats_len.0.lcssa.i)
  %cmp83.i = icmp ugt i32 %stats_len.0.lcssa.i, 47
  %or.cond165.i = select i1 %call80.i, i1 %cmp83.i, i1 false
  br i1 %or.cond165.i, label %if.then85.i, label %if.end79.i.if.end89.i_crit_edge

if.end79.i.if.end89.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then85.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  %filled86.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %76 = ptrtoint ptr %filled86.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %filled86.i, align 8
  %or87.i = or i32 %77, 128
  store i32 %or87.i, ptr %filled86.i, align 8
  %time_scan.i = getelementptr inbounds %struct.qlink_chan_stats, ptr %stats.0.lcssa.i, i32 0, i32 5
  %78 = ptrtoint ptr %time_scan.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %time_scan.i, align 1
  %80 = call i64 @llvm.bswap.i64(i64 %79) #8
  %time_scan88.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 6
  %81 = ptrtoint ptr %time_scan88.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %time_scan88.i, align 8
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then85.i, %if.end79.i.if.end89.i_crit_edge
  %call90.i = call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef nonnull %map.0.lcssa.i, i32 noundef 6, i32 noundef %map_len.0.lcssa.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %stats_len.0.lcssa.i)
  %cmp93.i = icmp ugt i32 %stats_len.0.lcssa.i, 48
  %or.cond166.i = select i1 %call90.i, i1 %cmp93.i, i1 false
  br i1 %or.cond166.i, label %if.then95.i, label %if.end89.i.out_crit_edge

if.end89.i.out_crit_edge:                         ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then95.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  %filled96.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %82 = ptrtoint ptr %filled96.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %filled96.i, align 8
  %or97.i = or i32 %83, 1
  store i32 %or97.i, ptr %filled96.i, align 8
  %chan_noise.i = getelementptr inbounds %struct.qlink_chan_stats, ptr %stats.0.lcssa.i, i32 0, i32 6
  %84 = ptrtoint ptr %chan_noise.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %chan_noise.i, align 1
  %noise.i = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 9
  %86 = ptrtoint ptr %noise.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %noise.i, align 4
  br label %out

out:                                              ; preds = %if.then95.i, %if.end89.i.out_crit_edge, %if.end.i37.out_crit_edge, %do.end29.i, %do.end, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ -22, %do.end ], [ -22, %do.end29.i ], [ 0, %if.end.i37.out_crit_edge ], [ 0, %if.then95.i ], [ 0, %if.end89.i.out_crit_edge ]
  %87 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %resp_skb, align 4
  call void @consume_skb(ptr noundef %88) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var_data_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_skb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_chan_switch(ptr nocapture noundef readonly %vif, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac1 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %3 to i32
  %conv4.i = zext i8 %5 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 27) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 60) #8
  %6 = call ptr @memset(ptr %call.i25.i, i32 0, i32 60)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %len9.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 256, ptr %8, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 6912, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %3, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %vifid12.i, align 1
  %radar_required = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 7
  %17 = ptrtoint ptr %radar_required to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %radar_required, align 4, !range !241
  %19 = zext i8 %18 to i64
  %block_tx = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 8
  %20 = ptrtoint ptr %block_tx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %block_tx, align 1, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool5.not = icmp eq i8 %21, 0
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %channel = getelementptr inbounds %struct.qlink_cmd_chan_switch, ptr %23, i32 0, i32 1
  tail call void @qlink_chandef_cfg2q(ptr noundef %params, ptr noundef %channel) #8
  %24 = shl nuw nsw i64 %19, 56
  %25 = or i64 %24, 144115188075855872
  %26 = select i1 %tobool5.not, i64 %24, i64 %25
  %flags9 = getelementptr inbounds %struct.qlink_cmd_chan_switch, ptr %23, i32 0, i32 2
  %27 = ptrtoint ptr %flags9 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %flags9, align 1
  %count = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 9
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %count, align 2
  %beacon_count = getelementptr inbounds %struct.qlink_cmd_chan_switch, ptr %23, i32 0, i32 5
  %30 = ptrtoint ptr %beacon_count to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %beacon_count, align 1
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %32, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %33 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %34, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %bus_lock.i30 = getelementptr inbounds %struct.qtnf_bus, ptr %36, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i30) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_get_channel(ptr nocapture noundef readonly %vif, ptr noundef %chdef) local_unnamed_addr #0 align 64 {
entry:
  %resp_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %bus1 = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_skb) #8
  %4 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resp_skb, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %7 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %6 to i32
  %conv4.i = zext i8 %8 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 28) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #8
  %9 = call ptr @memset(ptr %call.i25.i, i32 0, i32 12)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %len9.i, align 1
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 256, ptr %11, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 7168, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %6, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %8, ptr %vifid12.i, align 1
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %call3 = call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %3, ptr noundef nonnull %call.i.i, ptr noundef nonnull %resp_skb, i32 noundef 40, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %if.end
  %20 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac, align 4
  %tobool.not.i21 = icmp eq ptr %21, null
  br i1 %tobool.not.i21, label %do.body4.i, label %priv_to_wiphy.exit, !prof !240

do.body4.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #8, !srcloc !244
  unreachable

priv_to_wiphy.exit:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resp_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 -1408
  %chan = getelementptr inbounds %struct.qlink_resp_channel_get, ptr %25, i32 0, i32 1
  call void @qlink_chandef_q2cfg(ptr noundef %add.ptr.i, ptr noundef %chan, ptr noundef %chdef) #8
  br label %out

out:                                              ; preds = %priv_to_wiphy.exit, %if.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %bus_lock.i) #8
  %26 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resp_skb, align 4
  call void @consume_skb(ptr noundef %27) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call3, %out ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_skb) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlink_chandef_q2cfg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_start_cac(ptr nocapture noundef readonly %vif, ptr noundef %chdef, i32 noundef %cac_time_ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %bus1 = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %5 to i32
  %conv4.i = zext i8 %7 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 29) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 44) #8
  %8 = call ptr @memset(ptr %call.i25.i, i32 0, i32 44)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %len9.i, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 256, ptr %10, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 7424, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %5, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 4
  %18 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %7, ptr %vifid12.i, align 1
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %cac_time_ms)
  %cac_time_ms3 = getelementptr inbounds %struct.qlink_cmd_start_cac, ptr %20, i32 0, i32 2
  %22 = ptrtoint ptr %cac_time_ms3 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %cac_time_ms3, align 1
  %chan = getelementptr inbounds %struct.qlink_cmd_start_cac, ptr %20, i32 0, i32 1
  tail call void @qlink_chandef_cfg2q(ptr noundef %chdef, ptr noundef %chan) #8
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %3, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %bus_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_set_mac_acl(ptr nocapture noundef readonly %vif, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %bus1 = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %n_acl_entries = getelementptr inbounds %struct.cfg80211_acl_data, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %n_acl_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_acl_entries, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %8 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %7 to i32
  %conv4.i = zext i8 %9 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 35) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 6) #8
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 8) #8
  %retval.0.i = select i1 %11, i32 -1, i32 %spec.select.i
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #8
  %13 = call ptr @memset(ptr %call.i25.i, i32 0, i32 12)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %17 to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %len9.i, align 1
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 256, ptr %15, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %15, i32 0, i32 1
  %21 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 8960, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %15, i32 0, i32 3
  %22 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %7, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %15, i32 0, i32 4
  %23 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %9, ptr %vifid12.i, align 1
  %sub = add i32 %retval.0.i, -1
  %or = or i32 %sub, 3
  %add4 = add i32 %or, 5
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add4) #8
  %24 = ptrtoint ptr %call5 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 1795, ptr %call5, align 1
  %conv = trunc i32 %retval.0.i to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %len = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call5, i32 0, i32 1
  %26 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %len, align 1
  %val = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call5, i32 0, i32 2
  tail call void @qlink_acl_data_cfg2q(ptr noundef %params, ptr noundef %val) #8
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %3, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %bus_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_pm_set(ptr nocapture noundef readonly %vif, i8 noundef zeroext %pm_mode, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %bus1 = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %5 to i32
  %conv4.i = zext i8 %7 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 98) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %8 = call ptr @memset(ptr %call.i25.i, i32 0, i32 20)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %len9.i, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 256, ptr %10, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 25088, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %5, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 4
  %18 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %7, ptr %vifid12.i, align 1
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %pm_mode3 = getelementptr inbounds %struct.qlink_cmd_pm_set, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %pm_mode3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %pm_mode, ptr %pm_mode3, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %timeout)
  %pm_standby_timer = getelementptr inbounds %struct.qlink_cmd_pm_set, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %pm_standby_timer to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %pm_standby_timer, align 1
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %3, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %bus_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_get_tx_power(ptr nocapture noundef readonly %vif, ptr nocapture noundef writeonly %dbm) local_unnamed_addr #0 align 64 {
entry:
  %resp_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %bus1 = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_skb) #8
  %4 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resp_skb, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %7 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %6 to i32
  %conv4.i = zext i8 %8 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 103) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %9 = call ptr @memset(ptr %call.i25.i, i32 0, i32 20)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %len9.i, align 1
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 256, ptr %11, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 26368, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %6, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %8, ptr %vifid12.i, align 1
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %op_type = getelementptr inbounds %struct.qlink_cmd_txpwr, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %op_type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %op_type, align 1
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %call3 = call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %3, ptr noundef nonnull %call.i.i, ptr noundef nonnull %resp_skb, i32 noundef 16, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resp_skb, align 4
  %data7 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data7, align 4
  %txpwr = getelementptr inbounds %struct.qlink_resp_txpwr, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %txpwr to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %txpwr, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %div = udiv i32 %29, 100
  %30 = ptrtoint ptr %dbm to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div, ptr %dbm, align 4
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %bus_lock.i) #8
  %31 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resp_skb, align 4
  call void @consume_skb(ptr noundef %32) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call3, %out ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_skb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_set_tx_power(ptr nocapture noundef readonly %vif, i32 noundef %type, i32 noundef %mbm) local_unnamed_addr #0 align 64 {
entry:
  %resp_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %bus1 = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_skb) #8
  %4 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %resp_skb, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %7 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %6 to i32
  %conv4.i = zext i8 %8 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 103) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %9 = call ptr @memset(ptr %call.i25.i, i32 0, i32 20)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %len9.i, align 1
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 256, ptr %11, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 26368, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %6, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %8, ptr %vifid12.i, align 1
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %op_type = getelementptr inbounds %struct.qlink_cmd_txpwr, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %op_type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %op_type, align 1
  %conv = trunc i32 %type to i8
  %txpwr_setting = getelementptr inbounds %struct.qlink_cmd_txpwr, ptr %21, i32 0, i32 2
  %23 = ptrtoint ptr %txpwr_setting to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %txpwr_setting, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %mbm)
  %txpwr = getelementptr inbounds %struct.qlink_cmd_txpwr, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %txpwr to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %txpwr, align 1
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %call3 = call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %3, ptr noundef nonnull %call.i.i, ptr noundef nonnull %resp_skb, i32 noundef 16, ptr noundef null)
  call void @mutex_unlock(ptr noundef %bus_lock.i) #8
  %26 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resp_skb, align 4
  call void @consume_skb(ptr noundef %27) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_skb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_wowlan_set(ptr nocapture noundef readonly %vif, ptr noundef readonly %wowl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %bus1 = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %5 to i32
  %conv4.i = zext i8 %7 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 99) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %8 = call ptr @memset(ptr %call.i25.i, i32 0, i32 16)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %len9.i, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 256, ptr %10, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 25344, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %5, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 4
  %18 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %7, ptr %vifid12.i, align 1
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %tobool3.not = icmp eq ptr %wowl, null
  br i1 %tobool3.not, label %if.end.if.end21_crit_edge, label %if.then4

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then4:                                         ; preds = %if.end
  %disconnect = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowl, i32 0, i32 1
  %21 = ptrtoint ptr %disconnect to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %disconnect, align 1, !range !241
  %23 = zext i8 %22 to i32
  %magic_pkt = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowl, i32 0, i32 2
  %24 = ptrtoint ptr %magic_pkt to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %magic_pkt, align 2, !range !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool8.not = icmp eq i8 %25, 0
  %or10 = or i32 %23, 2
  %triggers.1 = select i1 %tobool8.not, i32 %23, i32 %or10
  %n_patterns = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowl, i32 0, i32 9
  %26 = ptrtoint ptr %n_patterns to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_patterns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.not = icmp eq i32 %27, 0
  br i1 %tobool12.not, label %if.then4.if.end21_crit_edge, label %land.lhs.true

if.then4.if.end21_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then4
  %patterns = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowl, i32 0, i32 7
  %28 = ptrtoint ptr %patterns to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %patterns, align 4
  %tobool13.not = icmp eq ptr %29, null
  br i1 %tobool13.not, label %land.lhs.true.if.end21_crit_edge, label %if.then14

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then14:                                        ; preds = %land.lhs.true
  %or15 = or i32 %triggers.1, 4
  %30 = ptrtoint ptr %n_patterns to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_patterns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp53 = icmp sgt i32 %31, 0
  br i1 %cmp53, label %if.then14.while.body_crit_edge, label %if.then14.if.end21_crit_edge

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then14.while.body_crit_edge:                   ; preds = %if.then14
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then14.while.body_crit_edge
  %count.054 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.then14.while.body_crit_edge ]
  %32 = ptrtoint ptr %patterns to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %patterns, align 4
  %pattern = getelementptr %struct.cfg80211_pkt_pattern, ptr %33, i32 %count.054, i32 1
  %34 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pattern, align 4
  %pattern_len = getelementptr %struct.cfg80211_pkt_pattern, ptr %33, i32 %count.054, i32 2
  %36 = ptrtoint ptr %pattern_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pattern_len, align 4
  %sub.i = add i32 %37, -1
  %or.i = or i32 %sub.i, 3
  %add1.i = add i32 %or.i, 5
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add1.i) #8
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 4356, ptr %call.i, align 1
  %conv.i50 = trunc i32 %37 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv.i50) #8
  %len.i51 = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %len.i51 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %len.i51, align 1
  %val.i = getelementptr inbounds %struct.qlink_tlv_hdr, ptr %call.i, i32 0, i32 2
  %41 = call ptr @memcpy(ptr %val.i, ptr %35, i32 %37)
  %inc = add nuw nsw i32 %count.054, 1
  %42 = ptrtoint ptr %n_patterns to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_patterns, align 4
  %cmp = icmp slt i32 %inc, %43
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.if.end21_crit_edge

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end21:                                         ; preds = %while.body.if.end21_crit_edge, %if.then14.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.then4.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %triggers.2 = phi i32 [ %triggers.1, %land.lhs.true.if.end21_crit_edge ], [ %triggers.1, %if.then4.if.end21_crit_edge ], [ 0, %if.end.if.end21_crit_edge ], [ %or15, %if.then14.if.end21_crit_edge ], [ %or15, %while.body.if.end21_crit_edge ]
  %44 = tail call i32 @llvm.bswap.i32(i32 %triggers.2)
  %triggers22 = getelementptr inbounds %struct.qlink_cmd_wowlan_set, ptr %20, i32 0, i32 1
  %45 = ptrtoint ptr %triggers22 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %triggers22, align 1
  %call.i52 = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %3, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %bus_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i52, %if.end21 ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_netdev_changeupper(ptr nocapture noundef readonly %vif, i32 noundef %br_domain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 4
  %bus1 = getelementptr inbounds %struct.qtnf_wmac, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %do.body, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %5 to i32
  %conv4.i = zext i8 %7 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 85) #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 36) #8
  %8 = call ptr @memset(ptr %call.i25.i, i32 0, i32 36)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %len9.i, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 256, ptr %10, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 21760, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %5, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %10, i32 0, i32 4
  %18 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %7, ptr %vifid12.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_cmd_netdev_changeupper.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_cmd_netdev_changeupper, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !242

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mac, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4
  %conv = zext i8 %22 to i32
  %23 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vifid, align 4
  %conv11 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_cmd_netdev_changeupper.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv11, i32 noundef %br_domain) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %event = getelementptr inbounds %struct.qlink_cmd_ndev_event, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %event to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 0, ptr %event, align 1
  %upper_type = getelementptr inbounds %struct.qlink_cmd_ndev_changeupper, ptr %26, i32 0, i32 5
  %28 = ptrtoint ptr %upper_type to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %upper_type, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %br_domain)
  %br_domain13 = getelementptr inbounds %struct.qlink_cmd_ndev_changeupper, ptr %26, i32 0, i32 2
  %30 = ptrtoint ptr %br_domain13 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %br_domain13, align 1
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %3, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %bus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %do.end.cleanup_crit_edge, label %do.end19

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mac, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv23 = zext i8 %34 to i32
  %35 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %vifid, align 4
  %conv25 = zext i8 %36 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, i32 noundef %conv23, i32 noundef %conv25) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end.cleanup_crit_edge, %qtnf_cmd_alloc_new_cmdskb.exit.thread
  %retval.0 = phi i32 [ %call.i, %do.end19 ], [ 0, %do.end.cleanup_crit_edge ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_cmd_send_update_owe(ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %owe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ie_len = getelementptr inbounds %struct.cfg80211_update_owe_info, ptr %owe, i32 0, i32 3
  %0 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ie_len, align 4
  %2 = add i32 %1, -2029
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2049, i32 %2)
  %cmp = icmp ult i32 %2, -2049
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 8
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mac, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %6 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %7 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vifid, align 4
  %conv1 = zext i8 %8 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %conv1, i32 noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %vifid5 = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 3
  %9 = ptrtoint ptr %vifid5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vifid5, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2060, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %qtnf_cmd_alloc_new_cmdskb.exit.thread, label %if.end8, !prof !240

qtnf_cmd_alloc_new_cmdskb.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %6 to i32
  %conv4.i = zext i8 %10 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef 104) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i25.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %11 = call ptr @memset(ptr %call.i25.i, i32 0, i32 20)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %conv8.i = trunc i32 %15 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %len9.i = getelementptr inbounds %struct.qlink_msg_header, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %len9.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %len9.i, align 1
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 256, ptr %13, align 1
  %cmd_id.i = getelementptr inbounds %struct.qlink_cmd, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 26624, ptr %cmd_id.i, align 1
  %macid11.i = getelementptr inbounds %struct.qlink_cmd, ptr %13, i32 0, i32 3
  %20 = ptrtoint ptr %macid11.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %6, ptr %macid11.i, align 1
  %vifid12.i = getelementptr inbounds %struct.qlink_cmd, ptr %13, i32 0, i32 4
  %21 = ptrtoint ptr %vifid12.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %10, ptr %vifid12.i, align 1
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %peer = getelementptr inbounds %struct.qlink_cmd_update_owe, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %owe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %owe, align 4
  %26 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %peer, align 4
  %add.ptr.i = getelementptr i8, ptr %owe, i32 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qlink_cmd_update_owe, ptr %23, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %add.ptr1.i, align 2
  %status = getelementptr inbounds %struct.cfg80211_update_owe_info, ptr %owe, i32 0, i32 1
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %status, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %status11 = getelementptr inbounds %struct.qlink_cmd_update_owe, ptr %23, i32 0, i32 2
  %33 = ptrtoint ptr %status11 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %status11, align 1
  %34 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool13.not = icmp eq i32 %35, 0
  br i1 %tobool13.not, label %if.end8.if.end18_crit_edge, label %land.lhs.true

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end8
  %ie = getelementptr inbounds %struct.cfg80211_update_owe_info, ptr %owe, i32 0, i32 2
  %36 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ie, align 4
  %tobool14.not = icmp eq ptr %37, null
  br i1 %tobool14.not, label %land.lhs.true.if.end18_crit_edge, label %if.then15

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i46 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %35) #8
  %38 = call ptr @memcpy(ptr %call.i.i46, ptr %37, i32 %35)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true.if.end18_crit_edge, %if.end8.if.end18_crit_edge
  %39 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mac, align 4
  %bus = getelementptr inbounds %struct.qtnf_wmac, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus, align 4
  %bus_lock.i = getelementptr inbounds %struct.qtnf_bus, ptr %42, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #8
  %43 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mac, align 4
  %bus21 = getelementptr inbounds %struct.qtnf_wmac, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %bus21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus21, align 4
  %call.i = tail call fastcc i32 @qtnf_cmd_send_with_reply(ptr noundef %46, ptr noundef nonnull %call.i.i, ptr noundef null, i32 noundef 12, ptr noundef null) #8
  %47 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mac, align 4
  %bus24 = getelementptr inbounds %struct.qtnf_wmac, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %bus24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus24, align 4
  %bus_lock.i45 = getelementptr inbounds %struct.qtnf_bus, ptr %50, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %bus_lock.i45) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %qtnf_cmd_alloc_new_cmdskb.exit.thread, %do.end
  %retval.0 = phi i32 [ -7, %do.end ], [ %call.i, %if.end18 ], [ -12, %qtnf_cmd_alloc_new_cmdskb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_trans_send_cmd_with_resp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qtnf_utils_is_bit_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_mac_iface_comb_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_mac_get_base_vif(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @qlink_chan_width_mask_to_nl(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qlink_iface_type_to_nl_mask(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlink_utils_regrule_q2nl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_mac_ext_caps_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlink_utils_dfs_state_cfg2q(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlink_utils_chflags_cfg2q(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !228, !230}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 420, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qtnf_cmd_send_frame._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qtnf_cmd_send_frame._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 455, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @qtnf_cmd_send_mgmt_set_appie._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @qtnf_cmd_send_mgmt_set_appie._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 728, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @qtnf_cmd_get_sta_info._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @qtnf_cmd_get_sta_info._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 856, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @qtnf_cmd_send_del_intf._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @qtnf_cmd_send_del_intf._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1618, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @qtnf_cmd_band_info_get._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @qtnf_cmd_band_info_get._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1898, i32 3}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qtnf_cmd_send_change_sta._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @qtnf_cmd_send_change_sta._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 2030, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @qtnf_cmd_send_scan.__UNIQUE_ID_ddebug468, !32, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!36 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 2050, i32 2}
!39 = !{ptr @qtnf_cmd_send_scan.__UNIQUE_ID_ddebug469, !38, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!40 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 2057, i32 3}
!45 = !{ptr @qtnf_cmd_send_scan.__UNIQUE_ID_ddebug470, !44, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!46 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 2435, i32 3}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @qtnf_cmd_get_chan_stats._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @qtnf_cmd_get_chan_stats._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 2715, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @qtnf_cmd_netdev_changeupper.__UNIQUE_ID_ddebug471, !53, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!56 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 2728, i32 3}
!59 = !{ptr @qtnf_cmd_netdev_changeupper._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @qtnf_cmd_netdev_changeupper._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 2742, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @qtnf_cmd_send_update_owe._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @qtnf_cmd_send_update_owe._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 214, i32 3}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @qtnf_cmd_start_ap_can_fit._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @qtnf_cmd_start_ap_can_fit._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 157, i32 3}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @qtnf_cmd_alloc_new_cmdskb._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @qtnf_cmd_alloc_new_cmdskb._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 98, i32 2}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @qtnf_cmd_send_with_reply.__UNIQUE_ID_ddebug463, !77, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!80 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 101, i32 3}
!83 = !{ptr @qtnf_cmd_send_with_reply._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @qtnf_cmd_send_with_reply._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 136, i32 2}
!87 = !{ptr @qtnf_cmd_send_with_reply._entry.39, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @qtnf_cmd_send_with_reply._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 26, i32 3}
!91 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qtnf_cmd_check_reply_header._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qtnf_cmd_check_reply_header._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 32, i32 3}
!96 = !{ptr @qtnf_cmd_check_reply_header._entry.44, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qtnf_cmd_check_reply_header._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 38, i32 3}
!100 = !{ptr @qtnf_cmd_check_reply_header._entry.47, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qtnf_cmd_check_reply_header._entry_ptr.49, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 44, i32 3}
!104 = !{ptr @qtnf_cmd_check_reply_header._entry.50, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @qtnf_cmd_check_reply_header._entry_ptr.52, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 609, i32 3}
!108 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @qtnf_cmd_sta_info_parse._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @qtnf_cmd_sta_info_parse._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 773, i32 3}
!113 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @qtnf_cmd_send_add_change_intf._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @qtnf_cmd_send_add_change_intf._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1232, i32 3}
!118 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @qtnf_cmd_resp_proc_mac_info._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @qtnf_cmd_resp_proc_mac_info._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1064, i32 5}
!123 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @qtnf_parse_variable_mac_info._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @qtnf_parse_variable_mac_info._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1070, i32 5}
!128 = !{ptr @qtnf_parse_variable_mac_info._entry.61, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @qtnf_parse_variable_mac_info._entry_ptr.63, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1080, i32 5}
!132 = !{ptr @qtnf_parse_variable_mac_info._entry.64, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @qtnf_parse_variable_mac_info._entry_ptr.66, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1102, i32 5}
!136 = !{ptr @qtnf_parse_variable_mac_info.__UNIQUE_ID_ddebug466, !135, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!137 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1127, i32 5}
!140 = !{ptr @qtnf_parse_variable_mac_info._entry.69, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @qtnf_parse_variable_mac_info._entry_ptr.71, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1134, i32 5}
!144 = !{ptr @qtnf_parse_variable_mac_info._entry.72, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @qtnf_parse_variable_mac_info._entry_ptr.74, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1145, i32 5}
!148 = !{ptr @qtnf_parse_variable_mac_info._entry.75, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @qtnf_parse_variable_mac_info._entry_ptr.77, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1151, i32 5}
!152 = !{ptr @qtnf_parse_variable_mac_info._entry.78, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @qtnf_parse_variable_mac_info._entry_ptr.80, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1161, i32 4}
!156 = !{ptr @qtnf_parse_variable_mac_info._entry.81, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @qtnf_parse_variable_mac_info._entry_ptr.83, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @qtnf_parse_variable_mac_info._entry.84, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1168, i32 3}
!160 = !{ptr @qtnf_parse_variable_mac_info._entry_ptr.85, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1173, i32 3}
!163 = !{ptr @qtnf_parse_variable_mac_info._entry.86, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @qtnf_parse_variable_mac_info._entry_ptr.88, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1179, i32 3}
!167 = !{ptr @qtnf_parse_variable_mac_info._entry.89, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @qtnf_parse_variable_mac_info._entry_ptr.91, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1185, i32 3}
!171 = !{ptr @qtnf_parse_variable_mac_info._entry.92, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @qtnf_parse_variable_mac_info._entry_ptr.94, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 998, i32 3}
!175 = !{ptr @.str.96, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @qtnf_parse_wowlan_info._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @qtnf_parse_wowlan_info._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.97, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 940, i32 3}
!180 = !{ptr @qtnf_cmd_resp_proc_hw_info._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @qtnf_cmd_resp_proc_hw_info._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 944, i32 2}
!184 = !{ptr @qtnf_cmd_resp_proc_hw_info._entry.98, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @qtnf_cmd_resp_proc_hw_info._entry_ptr.100, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.101, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1402, i32 5}
!188 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @qtnf_cmd_resp_fill_band_info._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @qtnf_cmd_resp_fill_band_info._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.104, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1408, i32 5}
!193 = !{ptr @qtnf_cmd_resp_fill_band_info._entry.103, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @qtnf_cmd_resp_fill_band_info._entry_ptr.105, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.106, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1473, i32 4}
!197 = !{ptr @qtnf_cmd_resp_fill_band_info.__UNIQUE_ID_ddebug467, !196, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!198 = !{ptr @.str.107, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.109, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1480, i32 5}
!201 = !{ptr @qtnf_cmd_resp_fill_band_info._entry.108, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @qtnf_cmd_resp_fill_band_info._entry_ptr.110, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.112, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1489, i32 5}
!205 = !{ptr @qtnf_cmd_resp_fill_band_info._entry.111, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @qtnf_cmd_resp_fill_band_info._entry_ptr.113, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.115, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1503, i32 4}
!209 = !{ptr @qtnf_cmd_resp_fill_band_info._entry.114, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @qtnf_cmd_resp_fill_band_info._entry_ptr.116, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @qtnf_cmd_resp_fill_band_info._entry.117, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1509, i32 3}
!213 = !{ptr @qtnf_cmd_resp_fill_band_info._entry_ptr.118, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.120, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1514, i32 3}
!216 = !{ptr @qtnf_cmd_resp_fill_band_info._entry.119, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @qtnf_cmd_resp_fill_band_info._entry_ptr.121, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.122, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 1331, i32 3}
!220 = !{ptr @.str.123, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @qtnf_cmd_band_fill_iftype._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @qtnf_cmd_band_fill_iftype._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.124, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 2349, i32 4}
!225 = !{ptr @.str.125, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @qtnf_cmd_resp_proc_chan_stat_info._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @qtnf_cmd_resp_proc_chan_stat_info._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @qtnf_cmd_resp_proc_chan_stat_info._entry.126, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/quantenna/qtnfmac/commands.c", i32 2355, i32 3}
!230 = !{ptr @qtnf_cmd_resp_proc_chan_stat_info._entry_ptr.127, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!240 = !{!"branch_weights", i32 1, i32 2000}
!241 = !{i8 0, i8 2}
!242 = !{i64 2148901739, i64 2148901744, i64 2148901757, i64 2148901801, i64 2148901835, i64 2148901856}
!243 = !{!"branch_weights", i32 2000, i32 1}
!244 = !{i64 2157044340, i64 2157044828, i64 2157044377, i64 2157044433, i64 2157044467, i64 2157044491, i64 2157044532, i64 2157044553, i64 2157044581, i64 2157044615}
